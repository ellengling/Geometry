//Stacking 5 layers of Si, total dimensions 10cm x 10cm x 12.0645cm

///// Uncomment these lines to run standalone
//SurroundingSphere 100.0 0.0 0.0 0.0 100.0
//Include ../materials/Materials.geo
/////

Include SiStripLayer.geo
Include PassiveRibs.geo

//This builds one tower of the SiStrip Detector
Volume SiStripTower
SiStripTower.Material Vacuum
SiStripTower.Visibility 0
SiStripTower.Shape BRIK 5.0 5.0 0.503225

SiStripLayer.Position 0. 0. 0.
SiStripLayer.Mother MiddleFrameWindow

For I 5 -4.8258 +2.4129
    PassiveFrame_Volume.Copy PassiveFrame_%I
    PassiveFrame_%I.Position 0.0 0.0 $I
    //Print %I $I
    PassiveFrame_%I.Mother SiStripDetector
Done

//Adds the towers to build the detector
Volume SiStripDetector
SiStripDetector.Material Vacuum
SiStripDetector.Visibility 0
SiStripDetector.Shape BRIK 5.0 5.0 6.03225
//SiStripDetector.Mother 0

SiStripTower.Mother SiStripDetector
