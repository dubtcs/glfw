
project "GLFW"
    kind "StaticLib"
    language "C"

    targetdir("bin/"..output"/%{proj.name}")
    objdir("bin-int/"..output"/%{proj.name}")

    files {
        "include/GLFW/glfw3.h",
		"include/GLFW/glfw3native.h",
		"src/glfw_config.h",
		"src/context.c",
		"src/init.c",
		"src/input.c",
		"src/monitor.c",
    }

    filter "system:windows"
        systemversion "latest"
        saticruntime "On"

        files {
            "src/win32_init.c",
			"src/win32_joystick.c",
			"src/win32_module.c",
			"src/win32_monitor.c",
			"src/win32_time.c",
			"src/win32_thread.c",
			"src/win32_window.c",
			"src/wgl_context.c",
			"src/egl_context.c",
			"src/osmesa_context.c"
        }

        --buildoptions "/MT"