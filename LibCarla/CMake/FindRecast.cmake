include(LibFindMacros)

libfind_pkg_detect(Recast Recast
	FIND_PATH Recast PATH_SUFFIXES recast
	FIND_LIBRARY recast)
libfind_pkg_detect(Detour Recast FIND_PATH DetourCommon.h PATH_SUFFIXES recast/Detour)
libfind_pkg_detect(DetourCrowd Recast FIND_PATH DetourCrowd.h PATH_SUFFIXES recast/DetourCrowd)
libfind_pkg_detect(DetourTileCache Recast FIND_PATH DetourTileCache.h PATH_SUFFIXES recast/DetourTileCache)

set(Recast_PROCESS_INCLUDES Recast_INCLUDE_DIR Detour_INCLUDE_DIR DetourCrowd_INCLUDE_DIR DetourTileCache_INCLUDE_DIR)
set(Recast_PROCESS_LIBS Recast_LIBRARY)
libfind_process(Recast)