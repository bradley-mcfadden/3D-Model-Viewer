# 3D Model Viewer

A project by:

Bradley McFadden,
Joy McGibbon,
and Mathieu Carriere

Computer Graphics Project

April 2022

---

This is a 4th year computer graphics project. My colleagues and I decided to recreate non-photorealistic rendering effects by implementing our own model viewer and shaders. It's written in LWJGL and Java Swing. The project paper can be read at https://github.com/bradley-mcfadden/3D-Model-Viewer/blob/main/LaTeX/COSC4306-Final%20Report.pdf for further information.

## Sample screenshots
![space-skull w contour](https://github.com/bradley-mcfadden/3D-Model-Viewer/blob/main/LaTeX/img/Combined/SpaceSkull.png?raw=true "Skull Rendered with Swapped Texture, Contours, and Diffuse Lighting")

![high poly cel shading](https://github.com/bradley-mcfadden/3D-Model-Viewer/blob/main/LaTeX/img/cel-shading-highpoly-n18.png?raw=true)

![low poly cel shading](https://github.com/bradley-mcfadden/3D-Model-Viewer/blob/main/LaTeX/img/cel-shading-n2.png?raw=true)


## Instructions for running the code of our project

```
// Compiling all files
.\compile.bat or ./compile.sh
```

```
// Running the project
.\run.bat or ./run.sh
```

```
// Using different models with the program
.\run.bat <path-to-obj> <name-of-object>
```

## Examples

```
// Loading the skull model
.\run.bat /data/skull/skull.obj skull 

// Loading the teapot model
.\run.bat /data/teapot/teapot.obj teapot

// Loading the teddy model
.\run.bat /data/teddy/teddy.obj teddy
```

## Keyboard controls for the program

left/right - Rotate camera about y axis
up/down - Rotate camera about z axis
W - Move camera forward
A - Move camera left
S - Move camera backward
D - Move camera right
Z - Move camera upward
X - Move camera down
= - Zoom in camera 
- - Zoom out camera

## Changing the material on an object
Click select under "Material" group, and choose any png image.
Sample images are available under data/textures.
