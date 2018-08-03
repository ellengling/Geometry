// Setup file for the AMEGO prototype

//this assumes that the outer shell of the frame is 14.4 x 14.4 x 2.4129 cm
//the wafers take up 10.0 x 10.0 x 0.05 cm

///// Uncomment these lines to run standalone
//SurroundingSphere 100.0 0.0 0.0 0.0 100.0
//Include ../materials/Materials.geo

// The Mother Volume of one Si Detector & Carrier Layer (of 5):
Volume PassiveFrame_Volume
PassiveFrame_Volume.Material Vacuum
PassiveFrame_Volume.Visibility 0
PassiveFrame_Volume.Shape BRIK 7.2 7.2 1.20645

//Top Frame
Volume TopFrame
TopFrame.Material Peek
TopFrame.Shape BRIK 5.6125 5.6125 0.603225
TopFrame.Mother PassiveFrame_Volume
TopFrame.Position 0.0 0.0 0.603225
TopFrame.Visibility 1
TopFrame.Color 13

//TopFrameWindow
Volume TopFrameWindow
TopFrameWindow.Material Vacuum
TopFrameWindow.Shape BRIK 4.6 4.6 0.603225
TopFrameWindow.Mother TopFrame
TopFrameWindow.Position 0.0 0.0 0.0
TopFrameWindow.Visibility 1
TopFrameWindow.Color 13

//MiddleFrame
Volume MiddleFrame
MiddleFrame.Material Peek
MiddleFrame.Mother PassiveFrame_Volume
MiddleFrame.Shape BRIK 5.6125 5.6125 0.503225
MiddleFrame.Position 0.0 0.0 -0.603225
MiddleFrame.Color 13
MiddleFrame.Visibility 1

//MiddleFrameWindow

Volume MiddleFrameWindow
MiddleFrameWindow.Material Vacuum
MiddleFrameWindow.Mother MiddleFrame
MiddleFrameWindow.Shape BRIK 5.0 5.0 0.503225
MiddleFrameWindow.Position 0.0 0.0 0.0
MiddleFrameWindow.Color 13
MiddleFrameWindow.Visibility 1

//PCB

Volume PCBLayer
PCBLayer.Material PCB
PCBLayer.Shape BRIK 7.2 5.6125 0.05
PCBLayer.Visibility 1
PCBLayer.Color 3

Volume PCBWindow
PCBWindow.Mother PCBLayer
PCBWindow.Material Vacuum
PCBWindow.Shape BRIK 4.6 4.6 0.05
PCBWindow.Position 0.0 0.0 0.0
PCBWindow.Color 3
PCBWindow.Visibility 1

//Top and Bottom PCB

PCBLayer.Copy TopPCB
TopPCB.Mother PassiveFrame_Volume
TopPCB.Position 0.0 0.0 -0.05
TopPCB.Rotation 180.0 0.0 90.0
TopPCB.Color 3

PCBLayer.Copy BottomPCB
BottomPCB.Mother PassiveFrame_Volume
BottomPCB.Position 0.0 0.0 -1.15645
Bottom.Color 3

// Connector

Volume Connector
Connector.Material PCB
Connector.Shape BRIK 0.5 5.0 0.5
Connector.Visibility 1

// LeftBottom, RightBottom, LeftTop, RightTop Connector

Connector.Copy LeftBottom
LeftBottom.Mother PassiveFrame_Volume
LeftBottom.Position -6.7 0.0 -0.60645
LeftBottom.Color 20

Connector.Copy RightBottom
RightBottom.Mother PassiveFrame_Volume
RightBottom.Position 6.7 0.0 -0.60645
RightBottom.Color 20

Connector.Copy LeftTop
LeftTop.Rotation 0.0 0.0 90.0
LeftTop.Mother PassiveFrame_Volume
LeftTop.Position 0.0 -6.7 -0.6
LeftTop.Color 20

Connector.Copy RightTop
RightTop.Rotation 0.0 0.0 90.0
RightTop.Mother PassiveFrame_Volume
RightTop.Position 0.0 6.7 -0.6
RightTop.Color 20
