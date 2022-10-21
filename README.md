# Cell-averaging-constant-false-alarm-rate-CFAR-

# Project Objective
Constant false alarm rate (CFAR) detection refers to a common form of adaptive algorithm used in radar systems to detect target returns against a background of noise, clutter and interference.

# Cell-averaging CFAR [WikiPedia]
In most simple CFAR detection schemes, the threshold level is calculated by estimating the level of the noise floor around the cell under test (CUT). This can be found by taking a block of cells around the CUT and calculating the average power level. To avoid corrupting this estimate with power from the CUT itself, cells immediately adjacent to the CUT are normally ignored (and referred to as "guard cells"). A target is declared present in the CUT if it is both greater than all its adjacent cells and greater than the local average power level. The estimate of the local power level may sometimes be increased slightly to allow for the limited sample size. This simple approach is called a cell-averaging CFAR (CA-CFAR).

Other related approaches calculate separate averages for the cells to the left and right of the CUT, and then use the greatest-of or least-of these two power levels to define the local power level. These are referred to as greatest-of CFAR (GO-CFAR) and least-of CFAR (LO-CFAR) respectively, and can improve detection when immediately adjacent to areas of clutter.

