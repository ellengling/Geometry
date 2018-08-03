//Build single layer of CsI, 6 logs each 10.0 cm x 1.67 cm x 1.67 cm

/////Use these lines to run geometry as standalone
//SurroundingSphere 100.0  0.0  0.0  0.0  100.0
//Include ../materials/Materials.geo
///////

// Single log 10.0 cm x 1.67 cm x 1.67 cm
Volume CSILog
CSILog.Material CsI
CSILog.Visibility 1
CSILog.Color 2
CSILog.Shape BOX 5.0 0.835 0.835

//Build Single Segment (Tray) of 6 logs 10.0 cm x 10.02 cm x 1.67 cm
Volume CSISegment
CSISegment.Material Vacuum
CSISegment.Visibility 0
CSISegment.Shape BOX 5.0 5.01 0.835
//Include this for stand-alone
//CSISegment.Mother 0

//Fill Segment with 6 logs
For I 6 -4.175 1.67
    CSILog.Copy CSILog_%I
    CSILog_%I.Position 0.0 $I 0.0
    CSILog_%I.Mother CSISegment
Done
