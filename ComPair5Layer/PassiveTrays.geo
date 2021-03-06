// Setup file for the ComPair prototype

// Include section
// NEEDS THIS LINE TO VIEW ALONE:
//SurroundingSphere 100.0  0.0  0.0  0.0  100.0
//Include ../materials/Materials.geo
////////

//this assumes that the outer shell of the frame is 11x11x2 cm
//the logs take up 10 x 10.02 x 1.67 cm

// The Mother Volume of the Detector Configuration:
// Note: Don't use Virtual volumes
Volume PassiveTray_Volume
PassiveTray_Volume.Material Vacuum
PassiveTray_Volume.Visibility 0
PassiveTray_Volume.Shape BOX 5.5 5.5 1.0
// NEEDS THIS LINE TO VIEW ALONE:
//PassiveTray_Volume.Mother 0

// One big block from which parts are cut away later
Volume PassiveTray_Block
PassiveTray_Block.Material Peek
#PassiveTray_Block.Material Vacuum
PassiveTray_Block.Shape BOX 5.5 5.5 1.0
PassiveTray_Block.Position 0. 0. 0.
PassiveTray_Block.Color 1
PassiveTray_Block.Visibility 1
PassiveTray_Block.Mother PassiveTray_Volume

// Cut out center block where 10. x 10.02 x 1.67 is CsI logs in 11 x 11 x 2 frame
//Volume PassiveTray_Hole
//PassiveTray_Hole.Material Vacuum
//PassiveTray_Hole.Shape BOX 5.0 5.01 0.835
//PassiveTray_Hole.Position 0. 0. 0.0
//PassiveTray_Hole.Color 1
//PassiveTray_Hole.Visibility 1
//PassiveTray_Hole.Mother PassiveTray_Block
