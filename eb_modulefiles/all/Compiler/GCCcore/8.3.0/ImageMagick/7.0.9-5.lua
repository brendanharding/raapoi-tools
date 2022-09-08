help([==[

Description
===========
ImageMagick is a software suite to create, edit, compose, or convert bitmap images


More information
================
 - Homepage: https://www.imagemagick.org/
]==])

whatis([==[Description: ImageMagick is a software suite to create, edit, compose, or convert bitmap images]==])
whatis([==[Homepage: https://www.imagemagick.org/]==])
whatis([==[URL: https://www.imagemagick.org/]==])

local root = "/home/software/EasyBuild/software/ImageMagick/7.0.9-5-GCCcore-8.3.0"

conflict("ImageMagick")

if not ( isloaded("bzip2/1.0.8") ) then
    load("bzip2/1.0.8")
end

if not ( isloaded("X11/20190717") ) then
    load("X11/20190717")
end

if not ( isloaded("Ghostscript/9.50") ) then
    load("Ghostscript/9.50")
end

if not ( isloaded("JasPer/2.0.14") ) then
    load("JasPer/2.0.14")
end

if not ( isloaded("libjpeg-turbo/2.0.3") ) then
    load("libjpeg-turbo/2.0.3")
end

if not ( isloaded("LibTIFF/4.0.10") ) then
    load("LibTIFF/4.0.10")
end

if not ( isloaded("LittleCMS/2.9") ) then
    load("LittleCMS/2.9")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTIMAGEMAGICK", root)
setenv("EBVERSIONIMAGEMAGICK", "7.0.9-5")
setenv("EBDEVELIMAGEMAGICK", pathJoin(root, "easybuild/Compiler-GCCcore-8.3.0-ImageMagick-7.0.9-5-easybuild-devel"))

setenv("MAGICK_HOME", "/home/software/EasyBuild/software/ImageMagick/7.0.9-5-GCCcore-8.3.0")
-- Built with EasyBuild version 4.3.4
