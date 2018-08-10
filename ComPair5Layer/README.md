# Geometry/ComPair5Layer
Location of the geometry files for ComPair

use: >>geomega -g ComPair5Layer.geo.setup

This geometry model has 5 layers of DSSDs with passive carriers on top of a CZT calorimeter and CSI calorimeter. There are side CZT detectors, but no ACD.
#File Structure

While working on simulations please maintain the same structure indicated below so as to allow for easy comparison between models:

Each detector subsystem has 3 separate files: *Layer.geo, *Detector.geo, *Properties.det where * is the name of the subsystem. 

-The .det file contains the physical properties of the detector such as whether the detector is made of strips or voxels etc, strip pitch, trigger threshold so on 
-The *Layer.geo file constructs both the individual wafers/logs and then places those structures into segments. It then places those segments into a single detector layer.
-The *Detector.geo file then takes the individual layers and stacks them (in the z axis) to form a complete detector subsystem.

The "ComPair5Layer.geo.setup" file combines all the single detector subsystems into a whole instrument. It only has to include reference to the individual *Detector.geo files as it effectively treats the subsystems as monolithic units that can be placed at different locations.

