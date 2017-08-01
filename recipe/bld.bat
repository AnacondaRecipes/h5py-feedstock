:: hdf5 env var provided by conda-build 3 variant
python setup.py configure --hdf5="%LIBRARY_PREFIX%"  --hdf5-version=%hdf5%
if errorlevel 1 exit 1

python setup.py install --single-version-externally-managed --record record.txt
if errorlevel 1 exit 1
