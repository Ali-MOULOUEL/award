uint32 id            # unique identifier of the track
float32[] state      # state
float32[] covariance # covariance
label label            # type of the track
extent extent        # extent model for the track shape representation
float64 uptime
float64 misstime
float32 box_center_x # box center
float32 box_center_y # box center
float32 axis_1x      # main axis of the box
float32 axis_1y      # main axis of the box
float32 axis_2x      # secondary axis of the box
float32 axis_2y       # secondary axis of the box
float32 dim1         # dimension of box along main axis or radius of the circle
float32 dim2         # dimension of box along secondary axis (or radius of the circle)
