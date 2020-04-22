@echo off
set "_path=%%cd%%"
for %%a in ("%_path%") do set "p_dir=%%~dpa"
for %%a in (%p_dir:~0,-1%) do set "p2_dir=%%~dpa"
for %%a in (%p2_dir:~0,-1%) do set "p3_dir=%%~dpa"
docker run -v %p3_dir%:/work -w /work/src/ontology --rm -ti obolibrary/odkfull %*
