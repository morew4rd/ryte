/* HEADER ONLY LIB CONFIG AND IMPLEMENTATIONS */

/*
    sokol_gfx.h
    sokol_gp.h
*/

#define SOKOL_IMPL

#if defined(__EMSCRIPTEN__)
#define SOKOL_GLES3
#define GLFW_INCLUDE_ES3
#else
// #define SOKOL_GLCORE33
#define SOKOL_GLCORE
#endif

#include "sokol_log.h"

#include "sokol_gfx.h"
#include "sokol_gfx_ext.h" /* from edubart, modified by mg */
#include "sokol_fetch.h"
#include "sokol_args.h"
#include "sokol_gp.h"


#if defined(__APPLE__)
#include <opengl/gl.h>
#define GLFW_INCLUDE_GLCOREARB
// #elif defined(_WIN32)
//  #include <glad/gl.h>
// #define GL_VIEWPORT 0x0BA2
// void glReadPixels(GLint   x, GLint   y, GLsizei   width, GLsizei   height, GLenum   format, GLenum   type, void * pixels);
#else
#define GLFW_INCLUDE_NONE
#endif



#define STB_IMAGE_IMPLEMENTATION
#include "stb_image.h"
#define STB_IMAGE_WRITE_IMPLEMENTATION
#include "stb_image_write.h"



#define FONTSTASH_IMPLEMENTATION
#define FONS_USE_FREETYPE
#include "fontstash.h"

