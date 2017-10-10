#!/bin/sh
echo "# vtk DataFile Version 3.0" > paraview.vtk
echo "paraview" >> paraview.vtk
echo "ASCII" >> paraview.vtk
echo "DATASET STRUCTURED_POINTS" >> paraview.vtk
echo "DIMENSIONS 5 5 5" >> paraview.vtk
echo "ORIGIN 0.0 0.0 0.0" >> paraview.vtk
echo "ASPECT_RATIO 1.0 1.0 1.0" >> paraview.vtk
echo "POINT_DATA 125" >> paraview.vtk
echo "SCALARS scalars float" >> paraview.vtk
echo "LOOKUP_TABLE default" >> paraview.vtk
cat raw.dat >> paraview.vtk
