#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include "application_opengl.h"


#include <GL/glew.h>
#include "external/glfw/include/GLFW/glfw3.h"

//Define and set the GLFW window to null. 


struct Application {
    struct ApplicationSpecification specification;
    bool running;
    bool customTitleBar;
    GLFWwindow* windowHandle;
};


//Additonal Nuklear setup.


#define NK_INCLUDE_FIXED_TYPES
#define NK_INCLUDE_STANDARD_IO
#define NK_INCLUDE_DEFAULT_ALLOCATOR
#define NK_INCLUDE_VERTEX_BUFFER_OUTPUT
#define NK_INCLUDE_FONT_BAKING
#define NK_INCLUDE_DEFAULT_FONT
#define NK_INCLUDE_COMMAND_USERDATA
#define NK_IMPLEMENTATION
#include "external/Nuklear/nuklear.h"

#define NK_VULKAN_IMPLEMENTATION
#include "external/Nuklear/nuklear_glfw_gl3.h"


struct nk_allocator allocator = { 0 }; // Uncomment to use NK, Can't get it to link so don't worry bout it.


extern GLFWwindow *g_Window; 


 // Note: Uncomment to use Nuklear, I can't get it to link so dont worry bout it for now.
 
struct nk_context *ctx; 
struct nk_font_atlas *atlas;
struct nk_glfw glfw;

void init_nuklear(GLFWwindow* window) {
    ctx = nk_glfw3_init(&glfw, window, NK_GLFW3_INSTALL_CALLBACKS);

    /* Load Fonts */
    struct nk_font_atlas *atlas;
    nk_glfw3_font_stash_begin(&glfw, &atlas);
    /* If you have a ttf file, you can add it here */
    /* E.g., struct nk_font *droid = nk_font_atlas_add_from_file(atlas, "path/to/your/font.ttf", 14, 0); */
    nk_glfw3_font_stash_end(&glfw);
}


//*/

// Function to initialize OpenGL





void init_opengl() {
    // Initialize GLFW
    if (!glfwInit()) {
        const char* error_description;
        glfwGetError(&error_description);
        printf("GLFW Initialization failed: %s\n", error_description);
        exit(EXIT_FAILURE);
    }

    // Set GLFW window hints before window creation
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE); // Uncomment this and the change the context minor to 3.3 to use the newest version.
	
    #ifdef __APPLE__
        glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
    #endif

    // Create GLFW window 
    g_Window = glfwCreateWindow(800, 600, "RoofNut application", NULL, NULL);
	
    if (!g_Window) {
	const char* error_description; 
	glfwGetError(&error_description);
        printf("Failed to create GLFW window, %s\n", error_description);
        glfwTerminate();
        exit(EXIT_FAILURE);
    }

    // Make the OpenGL context current BEFORE initializing GLEW
    glfwMakeContextCurrent(g_Window);

    // Enable vsync (optional but recommended)
    glfwSwapInterval(1);

    // Initialize GLEW
    GLenum err = glewInit();
    if (err != GLEW_OK) {
        printf("Failed to initialize GLEW: %s\n", glewGetErrorString(err));
        glfwDestroyWindow(g_Window);
        glfwTerminate();
        exit(EXIT_FAILURE);
    }

    // Now that GLEW is initialized, we can safely check OpenGL version
    printf("OpenGL version: %s\n", glGetString(GL_VERSION));
    printf("GLEW version: %s\n", glewGetString(GLEW_VERSION));

    // Set the viewport
    int width, height;
    glfwGetFramebufferSize(g_Window, &width, &height);
    glViewport(0, 0, width, height);

 
}


void RoofNut_Loop();
    init_nuklear(g_Window);
    

	//Note: OPENGL version does NOT support Nuklear..

	while (!glfwWindowShouldClose(g_Window)) {
        // Poll for and process events
        glfwPollEvents();
		
	
        // Render here
        glClear(GL_COLOR_BUFFER_BIT);
		

        nk_glfw3_new_frame(&glfw);
	if (nk_begin(ctx, specification->name, nk_rect(50, 50, 230, 250),
                 NK_WINDOW_BORDER | NK_WINDOW_MOVABLE | NK_WINDOW_SCALABLE |
                 NK_WINDOW_MINIMIZABLE | NK_WINDOW_TITLE)) { UiRender() }
        nk_end(ctx);

	nk_glfw3_render(NK_ANTI_ALIASING_ON, MAX_VERTEX_MEMORY, MAX_ELEMENT_MEMORY);
		
        
		

	
        // Swap front and back buffers
        glfwSwapBuffers(g_Window);
		
    	}
}

void DestroyOpenGl() {
	//No code here rn.
}



struct Application* Application_Create(const struct ApplicationSpecification* specification) {

    struct Application* app = (struct Application*)malloc(sizeof(struct Application));
    if (!app) {
        printf("Allocation of Application failed\n");
        return NULL;
    }

    // Copy specification
    memcpy(&app->specification, specification, sizeof(struct ApplicationSpecification));
    
    // Initialize OpenGL (this will create the window and set up GLEW)
    init_opengl();
    
    // Store the window handle
    app->windowHandle = g_Window;
    app->running = true;
    
    return app;
}


void Application_Destroy(struct Application* app) {
    if (!app) return;
    


	
    DestroyOpenGl();

    glfwDestroyWindow(app->windowHandle);
    glfwTerminate();

}
