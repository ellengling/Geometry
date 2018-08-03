//Stacking 10 layers of Si and Carriers, total dimensions 14.4 x 14.4 x 24.129cm

///// Uncomment these lines to run standalone
//SurroundingSphere 100.0 0.0 0.0 0.0 100.0
//Include ../materials/Materials.geo
/////

Include SiStripLayer.geo
Include PassiveRibs.geo

//This builds one tower of the SiStrip Detector
Volume SiStripDetector
SiStripDetector.Material Vacuum
SiStripDetector.Visibility 0
SiStripDetector.Shape BRIK 7.2 7.2 60.3225
// NEEDS THIS LINE TO VIEW ALONE:
//SiStripDetector.Mother 0

SiStripLayer.Position 0. 0. 0.
SiStripLayer.Mother MiddleFrameWindow

For I 50 -59.11605 +2.4129
    PassiveFrame_Volume.Copy PassiveFrame_%I
    PassiveFrame_%I.Position 0.0 0.0 $I
    //Print %I $I
    PassiveFrame_%I.Mother SiStripDetector
Done
