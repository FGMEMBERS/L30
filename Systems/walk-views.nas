###############################################################################
##
## Zeppelin LZ 121 "Nordstern" airship for FlightGear.
## Walk view configuration.
##
##  Copyright (C) 2010 - 2011  Anders Gidenstam  (anders(at)gidenstam.org)
##  This file is licensed under the GPL license v2 or later.
##
###############################################################################

# Constraints
var TopConstraint =
    walkview.makeUnionConstraint(
        [
         walkview.makePolylinePath(
             [
				[26.4483, 0.45, 10.3297],
				[26.3, 0.0, 10.1943],
				[23.4299, 0.0, 10.1943],
				[21.65, 0.0, 10.1943],
             ],
             0.4),
         walkview.makePolylinePath(
             [
				[24.9361, 0.59, 10.1943],
				[24.9361, -0.59, 10.1943],
             ],
             0.4)
        ]);

var carBConstraint =
    walkview.makeUnionConstraint(
        [
         walkview.makePolylinePath(
             [
				[115.4, 0.0, -15.0541],
				[119.5, 0.0, -15.0541],
             ],
             0.44),
         walkview.makePolylinePath(
             [
				[119.5, 0.0, -15.0541],
				[123.0, 0.0, -15.0541],
             ],
             0.9)
        ]);

var carLConstraint =
    walkview.makeUnionConstraint(
        [
        walkview.SlopingYAlignedPlane.new([81.3, -6.85, -13.6562],
                                          [83.1, -6.15, -13.6562]),
        ]);

var carRConstraint =
    walkview.makeUnionConstraint(
        [
        walkview.SlopingYAlignedPlane.new([81.3, 6.15, -13.6562],
                                          [83.1, 6.85, -13.6562]),
        ]);

var carConstraint =
    walkview.makeUnionConstraint(
        [
         walkview.makePolylinePath(
             [
				[27.7401, -0.55, -14.6143],
				[27.7401,  0.43, -14.6143],
             ],
             0.50),
         walkview.makePolylinePath(
             [
				[26.0178, -0.45, -14.6143],
				[24.0000, -0.45, -14.6143],
				[24.0000,  0.43, -14.6143],
				[30.9000,  0.43, -14.6143],
				[33.4500,  0.00, -14.6143],
             ],
             0.50)
        ]);
	
var keelConstraint =
    walkview.makeUnionConstraint(
        [
         walkview.makePolylinePath(
             [
				[82.92005, 6.95341, -9.55054],
				[82.92005, 0.25000, -11.69660],
				[82.92005, -0.25000, -11.69660],
				[82.92005, -6.95341, -9.55054],
             ],
             0.50),
         walkview.makePolylinePath(
             [
				[85.70000, 0.00000, -11.69658],
				[86.30000, 0.85000, -11.69656],
				[91.30000, 0.85000, -11.69656],
				[91.90003, 0.00000, -11.69656],
             ],
             0.50),
         walkview.makePolylinePath(
             [
				[85.70000, 0.00000, -11.69658],
				[86.30000, -0.85000, -11.69656],
				[91.30000, -0.85000, -11.69656],
				[91.90003, 0.00000, -11.69656],
             ],
             0.50),
         walkview.makePolylinePath(
             [
				[16.33376, 0.00000, -8.44124],
				[21.32683, 0.00000, -9.39397],
				[26.31978, 0.00000, -10.13034],
				[31.31486, 0.00000, -10.63162],
				[36.31109, 0.00000, -11.05633],
				[41.30768, 0.00000, -11.32153],
				[46.30473, 0.00000, -11.53358],
				[51.30263, 0.00000, -11.61505],
				[56.30131, 0.00000, -11.69657],
				[61.30000, 0.00000, -11.69656],
				[66.30000, 0.00000, -11.69656],
				[71.30000, 0.00000, -11.69656],
				[76.30000, 0.00000, -11.69656],
				[81.30000, 0.00000, -11.69658],
				[85.70000, 0.00000, -11.69658],
             ],
             0.50),
         walkview.makePolylinePath(
             [
				[91.90003, 0.00000, -11.69656],
				[96.30000, 0.00000, -11.69656],
				[101.30000, 0.00000, -11.69656],
				[106.29897, 0.00000, -11.69656],
				[111.29746, 0.00000, -11.63202],
				[116.29548, 0.00000, -11.53902],
				[121.29300, 0.00000, -11.35111],
				[126.29098, 0.00000, -11.10348],
				[131.28836, 0.00000, -10.79025],
				[136.28607, 0.00000, -10.37885],
				[141.28415, 0.00000, -9.92228],
             ],
             0.50)
        ]);

var ladderPosition = [26.0178, -0.45, 0.0];
var ladderPosition2 = [82.4826, -6.55103, 0.0];
var ladderPosition3 = [82.4826,  6.55103, 0.0];
var ladderPosition4 = [121.022,  -0.45, 0.0];
var ladderPosition5 = [26.8079,  0.45, 0.0];

var climbLadder = func
{
    var walker = walkview.active_walker();
    if (walker != nil)
	{
        var p = walker.get_pos();
        if (math.abs(p[0] - ladderPosition[0]) < 0.5 and math.abs(p[1] - ladderPosition[1]) < 0.5)
		{
            
            if (walker.get_constraints() == keelConstraint)
			{
                walker.set_constraints(carConstraint);
            }
            else
			{
                walker.set_constraints(keelConstraint);
            }
            return;
        }
        if (math.abs(p[0] - ladderPosition2[0]) < 0.5 and math.abs(p[1] - ladderPosition2[1]) < 0.5)
		{
            
            if (walker.get_constraints() == keelConstraint)
			{
                walker.set_constraints(carLConstraint);
            }
            else
			{
                walker.set_constraints(keelConstraint);
            }
            return;
        }
        if (math.abs(p[0] - ladderPosition3[0]) < 0.5 and math.abs(p[1] - ladderPosition3[1]) < 0.5)
		{
            
            if (walker.get_constraints() == keelConstraint)
			{
                walker.set_constraints(carRConstraint);
            }
            else
			{
                walker.set_constraints(keelConstraint);
            }
            return;
        }
        if (math.abs(p[0] - ladderPosition4[0]) < 0.5 and math.abs(p[1] - ladderPosition4[1]) < 0.5)
		{
            
            if (walker.get_constraints() == keelConstraint)
			{
                walker.set_constraints(carBConstraint);
            }
            else
			{
                walker.set_constraints(keelConstraint);
            }
            return;
        }
        if (math.abs(p[0] - ladderPosition5[0]) < 1.0 and math.abs(p[1] - ladderPosition5[1]) < 0.5)
		{
            
            if (walker.get_constraints() == keelConstraint)
			{
                walker.set_constraints(TopConstraint);
            }
            else
			{
                walker.set_constraints(keelConstraint);
            }
        }
    }
}

var rigger_walker = walkview.Walker.new("Watch Officer View", carConstraint, [walkview.JSBSimPointmass.new(12)]);


