#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/dingo/DingoQuadruped/dingo_ws/src/dingo_hardware_interfacing/dingo_servo_interfacing"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/dingo/DingoQuadruped/dingo_ws/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/dingo/DingoQuadruped/dingo_ws/install/lib/python3/dist-packages:/home/dingo/DingoQuadruped/dingo_ws/build/dingo_servo_interfacing/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/dingo/DingoQuadruped/dingo_ws/build/dingo_servo_interfacing" \
    "/usr/bin/python3" \
    "/home/dingo/DingoQuadruped/dingo_ws/src/dingo_hardware_interfacing/dingo_servo_interfacing/setup.py" \
     \
    build --build-base "/home/dingo/DingoQuadruped/dingo_ws/build/dingo_servo_interfacing" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/dingo/DingoQuadruped/dingo_ws/install" --install-scripts="/home/dingo/DingoQuadruped/dingo_ws/install/bin"
