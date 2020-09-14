# Sample FOV/Line of Sight solution

Written for Godot 3.2 by RisingThumb. Subject to the MIT License. Credit appreciated but not necessary.

# Why

Godot Light2D has issues with using mix and mask modes. Godot Light2D also has issues with performance in large quantities. As a result I wrote my own field of view system inspired heavily by Teleglitch. I think it's particularly elegant as it takes advantage of the convex hull algorithm, and some simple usage of vector mathematics.

# How

There are 3 scenes provides in this. Wall.tscn with its related Wall.gd containing a single function to get an array of vectors. LightCaster.tscn with its related LightCaster.gd containing 3 functions. A process function to handle updating and redrawing. A ready function to get all the vector Objects that will be used, and a draw function that does the heavy lifing and computation.
