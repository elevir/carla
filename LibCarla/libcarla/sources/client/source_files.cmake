include(${CMAKE_CURRENT_LIST_DIR}/detail/source_files.cmake)

set(SOURCE_FILES ${SOURCE_FILES}
	${CMAKE_CURRENT_LIST_DIR}/Actor.cpp
	${CMAKE_CURRENT_LIST_DIR}/ActorAttribute.cpp
	${CMAKE_CURRENT_LIST_DIR}/ActorBlueprint.cpp
	${CMAKE_CURRENT_LIST_DIR}/ActorList.cpp
	${CMAKE_CURRENT_LIST_DIR}/BlueprintLibrary.cpp
	${CMAKE_CURRENT_LIST_DIR}/DebugHelper.cpp
	${CMAKE_CURRENT_LIST_DIR}/Junction.cpp
	${CMAKE_CURRENT_LIST_DIR}/LaneInvasionSensor.cpp
	${CMAKE_CURRENT_LIST_DIR}/Light.cpp
	${CMAKE_CURRENT_LIST_DIR}/LightManager.cpp
	${CMAKE_CURRENT_LIST_DIR}/Map.cpp
	${CMAKE_CURRENT_LIST_DIR}/ServerSideSensor.cpp
	${CMAKE_CURRENT_LIST_DIR}/TimeoutException.cpp
	${CMAKE_CURRENT_LIST_DIR}/TrafficLight.cpp
	${CMAKE_CURRENT_LIST_DIR}/TrafficSign.cpp
	${CMAKE_CURRENT_LIST_DIR}/Vehicle.cpp
	${CMAKE_CURRENT_LIST_DIR}/Walker.cpp
	${CMAKE_CURRENT_LIST_DIR}/WalkerAIController.cpp
	${CMAKE_CURRENT_LIST_DIR}/Waypoint.cpp
	${CMAKE_CURRENT_LIST_DIR}/World.cpp)
