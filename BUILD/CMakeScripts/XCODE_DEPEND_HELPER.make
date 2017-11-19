# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.glad.Debug:
/Users/aakanni/Documents/Graphics/rayTracing/BUILD/Debug/libglad.a:
	/bin/rm -f /Users/aakanni/Documents/Graphics/rayTracing/BUILD/Debug/libglad.a


PostBuild.raytracer.Debug:
PostBuild.glfw.Debug: /Users/aakanni/Documents/Graphics/rayTracing/BUILD/Debug/raytracer.app/Contents/MacOS/raytracer
PostBuild.glad.Debug: /Users/aakanni/Documents/Graphics/rayTracing/BUILD/Debug/raytracer.app/Contents/MacOS/raytracer
PostBuild.pngdecode.Debug: /Users/aakanni/Documents/Graphics/rayTracing/BUILD/Debug/raytracer.app/Contents/MacOS/raytracer
PostBuild.glad.Debug: /Users/aakanni/Documents/Graphics/rayTracing/BUILD/Debug/raytracer.app/Contents/MacOS/raytracer
PostBuild.glfw.Debug: /Users/aakanni/Documents/Graphics/rayTracing/BUILD/Debug/raytracer.app/Contents/MacOS/raytracer
/Users/aakanni/Documents/Graphics/rayTracing/BUILD/Debug/raytracer.app/Contents/MacOS/raytracer:\
	/Users/aakanni/Documents/Graphics/rayTracing/BUILD/glfw-3.2/src/Debug/libglfw3.a\
	/Users/aakanni/Documents/Graphics/rayTracing/BUILD/Debug/libglad.a\
	/Users/aakanni/Documents/Graphics/rayTracing/BUILD/pngdecode/Debug/libpngdecode.a\
	/Users/aakanni/Documents/Graphics/rayTracing/BUILD/Debug/libglad.a\
	/Users/aakanni/Documents/Graphics/rayTracing/BUILD/glfw-3.2/src/Debug/libglfw3.a
	/bin/rm -f /Users/aakanni/Documents/Graphics/rayTracing/BUILD/Debug/raytracer.app/Contents/MacOS/raytracer


PostBuild.glfw.Debug:
/Users/aakanni/Documents/Graphics/rayTracing/BUILD/glfw-3.2/src/Debug/libglfw3.a:
	/bin/rm -f /Users/aakanni/Documents/Graphics/rayTracing/BUILD/glfw-3.2/src/Debug/libglfw3.a


PostBuild.pngdecode.Debug:
/Users/aakanni/Documents/Graphics/rayTracing/BUILD/pngdecode/Debug/libpngdecode.a:
	/bin/rm -f /Users/aakanni/Documents/Graphics/rayTracing/BUILD/pngdecode/Debug/libpngdecode.a


PostBuild.glad.Release:
/Users/aakanni/Documents/Graphics/rayTracing/BUILD/Release/libglad.a:
	/bin/rm -f /Users/aakanni/Documents/Graphics/rayTracing/BUILD/Release/libglad.a


PostBuild.raytracer.Release:
PostBuild.glfw.Release: /Users/aakanni/Documents/Graphics/rayTracing/BUILD/Release/raytracer.app/Contents/MacOS/raytracer
PostBuild.glad.Release: /Users/aakanni/Documents/Graphics/rayTracing/BUILD/Release/raytracer.app/Contents/MacOS/raytracer
PostBuild.pngdecode.Release: /Users/aakanni/Documents/Graphics/rayTracing/BUILD/Release/raytracer.app/Contents/MacOS/raytracer
PostBuild.glad.Release: /Users/aakanni/Documents/Graphics/rayTracing/BUILD/Release/raytracer.app/Contents/MacOS/raytracer
PostBuild.glfw.Release: /Users/aakanni/Documents/Graphics/rayTracing/BUILD/Release/raytracer.app/Contents/MacOS/raytracer
/Users/aakanni/Documents/Graphics/rayTracing/BUILD/Release/raytracer.app/Contents/MacOS/raytracer:\
	/Users/aakanni/Documents/Graphics/rayTracing/BUILD/glfw-3.2/src/Release/libglfw3.a\
	/Users/aakanni/Documents/Graphics/rayTracing/BUILD/Release/libglad.a\
	/Users/aakanni/Documents/Graphics/rayTracing/BUILD/pngdecode/Release/libpngdecode.a\
	/Users/aakanni/Documents/Graphics/rayTracing/BUILD/Release/libglad.a\
	/Users/aakanni/Documents/Graphics/rayTracing/BUILD/glfw-3.2/src/Release/libglfw3.a
	/bin/rm -f /Users/aakanni/Documents/Graphics/rayTracing/BUILD/Release/raytracer.app/Contents/MacOS/raytracer


PostBuild.glfw.Release:
/Users/aakanni/Documents/Graphics/rayTracing/BUILD/glfw-3.2/src/Release/libglfw3.a:
	/bin/rm -f /Users/aakanni/Documents/Graphics/rayTracing/BUILD/glfw-3.2/src/Release/libglfw3.a


PostBuild.pngdecode.Release:
/Users/aakanni/Documents/Graphics/rayTracing/BUILD/pngdecode/Release/libpngdecode.a:
	/bin/rm -f /Users/aakanni/Documents/Graphics/rayTracing/BUILD/pngdecode/Release/libpngdecode.a


PostBuild.glad.MinSizeRel:
/Users/aakanni/Documents/Graphics/rayTracing/BUILD/MinSizeRel/libglad.a:
	/bin/rm -f /Users/aakanni/Documents/Graphics/rayTracing/BUILD/MinSizeRel/libglad.a


PostBuild.raytracer.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/aakanni/Documents/Graphics/rayTracing/BUILD/MinSizeRel/raytracer.app/Contents/MacOS/raytracer
PostBuild.glad.MinSizeRel: /Users/aakanni/Documents/Graphics/rayTracing/BUILD/MinSizeRel/raytracer.app/Contents/MacOS/raytracer
PostBuild.pngdecode.MinSizeRel: /Users/aakanni/Documents/Graphics/rayTracing/BUILD/MinSizeRel/raytracer.app/Contents/MacOS/raytracer
PostBuild.glad.MinSizeRel: /Users/aakanni/Documents/Graphics/rayTracing/BUILD/MinSizeRel/raytracer.app/Contents/MacOS/raytracer
PostBuild.glfw.MinSizeRel: /Users/aakanni/Documents/Graphics/rayTracing/BUILD/MinSizeRel/raytracer.app/Contents/MacOS/raytracer
/Users/aakanni/Documents/Graphics/rayTracing/BUILD/MinSizeRel/raytracer.app/Contents/MacOS/raytracer:\
	/Users/aakanni/Documents/Graphics/rayTracing/BUILD/glfw-3.2/src/MinSizeRel/libglfw3.a\
	/Users/aakanni/Documents/Graphics/rayTracing/BUILD/MinSizeRel/libglad.a\
	/Users/aakanni/Documents/Graphics/rayTracing/BUILD/pngdecode/MinSizeRel/libpngdecode.a\
	/Users/aakanni/Documents/Graphics/rayTracing/BUILD/MinSizeRel/libglad.a\
	/Users/aakanni/Documents/Graphics/rayTracing/BUILD/glfw-3.2/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/aakanni/Documents/Graphics/rayTracing/BUILD/MinSizeRel/raytracer.app/Contents/MacOS/raytracer


PostBuild.glfw.MinSizeRel:
/Users/aakanni/Documents/Graphics/rayTracing/BUILD/glfw-3.2/src/MinSizeRel/libglfw3.a:
	/bin/rm -f /Users/aakanni/Documents/Graphics/rayTracing/BUILD/glfw-3.2/src/MinSizeRel/libglfw3.a


PostBuild.pngdecode.MinSizeRel:
/Users/aakanni/Documents/Graphics/rayTracing/BUILD/pngdecode/MinSizeRel/libpngdecode.a:
	/bin/rm -f /Users/aakanni/Documents/Graphics/rayTracing/BUILD/pngdecode/MinSizeRel/libpngdecode.a


PostBuild.glad.RelWithDebInfo:
/Users/aakanni/Documents/Graphics/rayTracing/BUILD/RelWithDebInfo/libglad.a:
	/bin/rm -f /Users/aakanni/Documents/Graphics/rayTracing/BUILD/RelWithDebInfo/libglad.a


PostBuild.raytracer.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/aakanni/Documents/Graphics/rayTracing/BUILD/RelWithDebInfo/raytracer.app/Contents/MacOS/raytracer
PostBuild.glad.RelWithDebInfo: /Users/aakanni/Documents/Graphics/rayTracing/BUILD/RelWithDebInfo/raytracer.app/Contents/MacOS/raytracer
PostBuild.pngdecode.RelWithDebInfo: /Users/aakanni/Documents/Graphics/rayTracing/BUILD/RelWithDebInfo/raytracer.app/Contents/MacOS/raytracer
PostBuild.glad.RelWithDebInfo: /Users/aakanni/Documents/Graphics/rayTracing/BUILD/RelWithDebInfo/raytracer.app/Contents/MacOS/raytracer
PostBuild.glfw.RelWithDebInfo: /Users/aakanni/Documents/Graphics/rayTracing/BUILD/RelWithDebInfo/raytracer.app/Contents/MacOS/raytracer
/Users/aakanni/Documents/Graphics/rayTracing/BUILD/RelWithDebInfo/raytracer.app/Contents/MacOS/raytracer:\
	/Users/aakanni/Documents/Graphics/rayTracing/BUILD/glfw-3.2/src/RelWithDebInfo/libglfw3.a\
	/Users/aakanni/Documents/Graphics/rayTracing/BUILD/RelWithDebInfo/libglad.a\
	/Users/aakanni/Documents/Graphics/rayTracing/BUILD/pngdecode/RelWithDebInfo/libpngdecode.a\
	/Users/aakanni/Documents/Graphics/rayTracing/BUILD/RelWithDebInfo/libglad.a\
	/Users/aakanni/Documents/Graphics/rayTracing/BUILD/glfw-3.2/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/aakanni/Documents/Graphics/rayTracing/BUILD/RelWithDebInfo/raytracer.app/Contents/MacOS/raytracer


PostBuild.glfw.RelWithDebInfo:
/Users/aakanni/Documents/Graphics/rayTracing/BUILD/glfw-3.2/src/RelWithDebInfo/libglfw3.a:
	/bin/rm -f /Users/aakanni/Documents/Graphics/rayTracing/BUILD/glfw-3.2/src/RelWithDebInfo/libglfw3.a


PostBuild.pngdecode.RelWithDebInfo:
/Users/aakanni/Documents/Graphics/rayTracing/BUILD/pngdecode/RelWithDebInfo/libpngdecode.a:
	/bin/rm -f /Users/aakanni/Documents/Graphics/rayTracing/BUILD/pngdecode/RelWithDebInfo/libpngdecode.a




# For each target create a dummy ruleso the target does not have to exist
/Users/aakanni/Documents/Graphics/rayTracing/BUILD/Debug/libglad.a:
/Users/aakanni/Documents/Graphics/rayTracing/BUILD/MinSizeRel/libglad.a:
/Users/aakanni/Documents/Graphics/rayTracing/BUILD/RelWithDebInfo/libglad.a:
/Users/aakanni/Documents/Graphics/rayTracing/BUILD/Release/libglad.a:
/Users/aakanni/Documents/Graphics/rayTracing/BUILD/glfw-3.2/src/Debug/libglfw3.a:
/Users/aakanni/Documents/Graphics/rayTracing/BUILD/glfw-3.2/src/MinSizeRel/libglfw3.a:
/Users/aakanni/Documents/Graphics/rayTracing/BUILD/glfw-3.2/src/RelWithDebInfo/libglfw3.a:
/Users/aakanni/Documents/Graphics/rayTracing/BUILD/glfw-3.2/src/Release/libglfw3.a:
/Users/aakanni/Documents/Graphics/rayTracing/BUILD/pngdecode/Debug/libpngdecode.a:
/Users/aakanni/Documents/Graphics/rayTracing/BUILD/pngdecode/MinSizeRel/libpngdecode.a:
/Users/aakanni/Documents/Graphics/rayTracing/BUILD/pngdecode/RelWithDebInfo/libpngdecode.a:
/Users/aakanni/Documents/Graphics/rayTracing/BUILD/pngdecode/Release/libpngdecode.a:
