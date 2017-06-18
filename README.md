Quick outline of what's in the repository:

I worked on the code, I uploaded all of it to GitHub, but here’s a quick summary of the pages:
-DrawStim.java is Julian's original code
-drawable_OriginalCode is just the original code changed  around a little so that it  draws
    it does but it tapers off at the end

-Then I wanted to make sure they all worked together in the intended way (with the end coordinates from one function passing into the beginning coordinates of the next function. 
    -But it wouldn’t work because somewhere in the original curve function it passes a NaN (not a real number) as the Y coordinate, so I tried to fix it by changing the update condition in the For loop (see ROYKA_REVISION). It works; the function no longer passes a NaN and draws the same figure, but it didn’t fix the tapering problem. (edited)

-Then ALL_FUNCTIONS has all the basic functions working and draws pretty picture with all eight of them

-CreatesAllPaths is jje's code with the additional functions in the swtich statement and the fourth loop. Draws all paths and saves each as an inidvdual file with a unique name. 

-DrawsAllPaths outputs all paths to the same sketchpad without saving them as separate files just as a check that the code works.
