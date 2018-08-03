//Build single layer of Si Strips, each segment is 1 silicon wafer and carrier

/////Use these lines to run geometry as standalone
//SurroundingSphere 100.0  0.0  0.0  0.0  100.0
//Include ../materials/Materials.geo
///////

// One Si wafer, 10.0 cm x 10.0 cm x 0.05cm
Volume Wafer
Wafer.Material Silicon
Wafer.Visibility 1
Wafer.Color 2
Wafer.Shape BOX 5.0 5.0 0.025

// Build One Layer of Segment, this volume also includes the passive frame 14.4 x 14.4 x 2.4129 cm
Volume SiStripLayer
SiStripLayer.Material Vacuum
SiStripLayer.Visibility 0
SiStripLayer.Shape BOX 7.2 7.2 1.20645

// NEEDS THIS LINE TO VIEW ALONE:

//Placing Wafer into the layer of the segment

Wafer.Position 0.0 0.0 0.0
Wafer.Mother SiStripLayer
