if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    	export CLUTTER_BACKEND=wayland
	export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
	export QT_WAYLAND_FORCE_DPI=physical
	export ECORE_EVAS_EVAS_ENGINE=wayland_egl
	export ELM_ENGINE=wayland_egl
	export SDL_VIDEODRIVER=wayland
	export _JAVA_AWT_WM_NONREPARENTING=1
	export MOZ_ENABLE_WAYLAND=1
    	XKB_DEFAULT_LAYOUT=us exec sway
fi
