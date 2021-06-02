# Download ESA SNAP

Main page:
https://step.esa.int/main/download/snap-download/

## Update snap with command line:
1. Refresh
```bash
snap --nosplash --nogui --modules --list --refresh
```
2. Update
```bash
snap --nosplash --nogui --modules --update-all
```

## Resolve problems with download SRTM files Sentinel 1
Logs:
```bash
INFO: org.esa.snap.core.gpf.operators.tooladapter.ToolAdapterIO: Initializing external tool adapters
INFO: org.esa.s2tbx.dataio.gdal.GDALVersion: Incompatible GDAL 3.2.1 found on system. Internal GDAL 3.0.0 from distribution will be used.
INFO: org.esa.s2tbx.dataio.gdal.GDALVersion: Internal GDAL 3.0.0 set to be used by SNAP.
INFO: org.esa.snap.core.util.EngineVersionCheckActivator: Please check regularly for new updates for the best SNAP experience.
INFO: org.esa.s2tbx.dataio.gdal.GDALVersion: Internal GDAL 3.0.0 set to be used by SNAP.
Executing processing graph
INFO: org.hsqldb.persist.Logger: dataFileCache open start
Exception calling QC Rest API:  Connect to qc.sentinel1.eo.esa.int:443 [qc.sentinel1.eo.esa.int/131.176.235.71] failed: Connection timed out (Connection timed out)
WARNING: org.esa.s1tbx.sar.gpf.orbits.ApplyOrbitFileOp: Connect to qc.sentinel1.eo.esa.int:443 [qc.sentinel1.eo.esa.int/131.176.235.71] failed: Connection timed out (Connection timed out)
Exception calling QC Rest API:  Connect to qc.sentinel1.eo.esa.int:443 [qc.sentinel1.eo.esa.int/131.176.235.71] failed: Connection timed out (Connection timed out)
WARNING: org.esa.s1tbx.sar.gpf.orbits.ApplyOrbitFileOp: ApplyOrbit ignoring error and continuing: org.apache.http.conn.HttpHostConnectException: Connect to qc.sentinel1.eo.esa.int:443 [qc.sentinel1.eo.esa.int/131.176.235.71] failed: Connection timed out (Connection timed out)
SEVERE: org.esa.snap.core.dataop.dem.ElevationFile: java.lang.reflect.InvocationTargetException
INFO: org.esa.snap.core.dataop.dem.ElevationFile: http retrieving http://cgiar-csi-srtm.openterrain.org.s3.amazonaws.com/source/srtm_39_01.zip
INFO: org.esa.snap.core.dataop.dem.ElevationFile: http retrieving http://srtm.csi.cgiar.org/wp-content/uploads/files/srtm_5x5/TIFF/srtm_39_01.zip
SEVERE: org.esa.snap.core.dataop.dem.ElevationFile: java.lang.reflect.InvocationTargetException
INFO: org.esa.snap.core.dataop.dem.ElevationFile: http retrieving http://cgiar-csi-srtm.openterrain.org.s3.amazonaws.com/source/srtm_39_01.zip
INFO: org.esa.snap.core.dataop.dem.ElevationFile: http retrieving http://srtm.csi.cgiar.org/wp-content/uploads/files/srtm_5x5/TIFF/srtm_39_01.zip
```

Download SRTM manualy to:
```/home/${USER}/.snap/auxdata/dem/SRTM 3Sec```

or

```/home/root/.snap/auxdata/dem/SRTM 3Sec```

Script in repository:
[download-srtm.sh](download-srtm.sh)