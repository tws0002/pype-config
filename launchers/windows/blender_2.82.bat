set __app__="Blender"
set __exe__="C:\Program Files\Blender Foundation\Blender 2.82\blender.exe" --python-use-system-env
if not exist %__exe__% goto :missing_app

start %__app__% %__exe__% %*

goto :eof

:missing_app
    echo ERROR: %__app__% not found in %__exe__%
    exit /B 1
