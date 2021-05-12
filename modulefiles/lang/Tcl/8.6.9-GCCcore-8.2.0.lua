help([==[

Description
===========
Tcl (Tool Command Language) is a very powerful but easy to learn dynamic
 programming language, suitable for a very wide range of uses, including web
 and desktop applications, networking, administration, testing and many more.


More information
================
 - Homepage: http://www.tcl.tk/
]==])

whatis([==[Description: 
 Tcl (Tool Command Language) is a very powerful but easy to learn dynamic
 programming language, suitable for a very wide range of uses, including web
 and desktop applications, networking, administration, testing and many more.
]==])
whatis([==[Homepage: http://www.tcl.tk/]==])
whatis([==[URL: http://www.tcl.tk/]==])

local root = "/home/software/EasyBuild/software/Tcl/8.6.9-GCCcore-8.2.0"

conflict("lang/Tcl")

if not ( isloaded("gcc/8.2.0") ) then
    load("gcc/8.2.0")
end

if not ( isloaded("lib/zlib/1.2.11-GCCcore-8.2.0") ) then
    load("lib/zlib/1.2.11-GCCcore-8.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTTCL", root)
setenv("EBVERSIONTCL", "8.6.9")
setenv("EBDEVELTCL", pathJoin(root, "easybuild/lang-Tcl-8.6.9-GCCcore-8.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.0
