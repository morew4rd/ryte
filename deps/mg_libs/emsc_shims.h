/* emscripten shims */
#ifndef EMSC_SHIMS_H_
#define EMSC_SHIMS_H_

#if defined(__EMSCRIPTEN__)

enum {
    EMSC_NONE = 0,
    EMSC_TRY_WEBGL2 = (1<<0),
    EMSC_ANTIALIAS = (1<<1)
};


void emsc_init(const char* canvas_name, int flags);
int emsc_width();
int emsc_height();
int emsc_webgl_fallback();
void emsc_run_js(const char *js);


// IMPLEMENTATION

#ifdef EMSC_SHIMS_IMPL

/* common emscripten platform helper functions */

#include <string.h>

#include <emscripten/emscripten.h>
#include <emscripten/html5.h>


static const char* _emsc_canvas_name = 0;
static bool _emsc_is_webgl2 = false;
static double _emsc_width = 0;
static double _emsc_height = 0;


/* track CSS element size changes and update the WebGL canvas size */
static EM_BOOL _emsc_size_changed(int event_type, const EmscriptenUiEvent* ui_event, void* user_data) {
    (void)event_type;
    (void)ui_event;
    (void)user_data;
    emscripten_get_element_css_size(_emsc_canvas_name, &_emsc_width, &_emsc_height);
    emscripten_set_canvas_element_size(_emsc_canvas_name, _emsc_width, _emsc_height);
    return true;
}

/* initialize WebGL context and canvas */
void emsc_init(const char* canvas_name, int flags) {
    _emsc_canvas_name = canvas_name;
    _emsc_is_webgl2 = false;
    emscripten_get_element_css_size(canvas_name, &_emsc_width, &_emsc_height);
    emscripten_set_canvas_element_size(canvas_name, _emsc_width, _emsc_height);
    emscripten_set_resize_callback(EMSCRIPTEN_EVENT_TARGET_WINDOW, 0, false, _emsc_size_changed);
    EMSCRIPTEN_WEBGL_CONTEXT_HANDLE ctx;
    EmscriptenWebGLContextAttributes attrs;
    emscripten_webgl_init_context_attributes(&attrs);
    attrs.antialias = flags & EMSC_ANTIALIAS;
    if (flags & EMSC_TRY_WEBGL2) {
        attrs.majorVersion = 2;
    }
    ctx = emscripten_webgl_create_context(canvas_name, &attrs);
    if ((flags & EMSC_TRY_WEBGL2) && ctx) {
        _emsc_is_webgl2 = true;
    }
    if (!ctx) {
        /* WebGL2 not supported, fall back to WebGL */
        attrs.majorVersion = 1;
        ctx = emscripten_webgl_create_context(canvas_name, &attrs);
    }
    emscripten_webgl_make_context_current(ctx);
}

int emsc_width() {
    return (int) _emsc_width;
}

int emsc_height() {
    return (int) _emsc_height;
}

int emsc_webgl_fallback() {
    return !_emsc_is_webgl2;
}

void emsc_run_js(const char *js) {
    EM_ASM({
        let ptr = $0;
        let size = $1;
        let buf = HEAPU8.subarray(ptr, ptr + size);
        let str = new TextDecoder().decode(buf);
        // console.log("ptr: " + $0 + ", sz: " + size);
        // console.log("TO RUN: " + str);
        eval(str);
    }, js, strlen(js));
}

/* TODO: remove KyteBlob and make it pointer + length
void k_emsc_send_file_save(KyteBlob *blob, Bool download) {
    const char *name = blob->name;
    ISize name_size = strlen(name);
    EM_ASM({
        let buf = $0;
        let sz = $1;
        let name_ptr = $2;
        let name_size = $3;
        let name_buf = HEAPU8.subarray(name_ptr, name_ptr + name_size);
        let name_str = new TextDecoder().decode(name_buf);
        // console.log("downloading(" + name_str + ")");
        let download = $4;
        let blob = new Blob([HEAPU8.subarray(buf, buf + sz)], {type: 'application/octet-stream'});
        let url = URL.createObjectURL(blob);
        let link = document.createElement('a');
        link.href = url;
        link.download = name_str;
        link.innerText = 'download ' + name_str;
        if (download) { link.click(); }
    }, blob->buffer, blob->size, name, name_size, download);
}
*/

#endif // EMSC_SHIMS_IMPL

#endif /* __EMSCRIPTEN__ */

#endif // EMSC_SHIMS_H_