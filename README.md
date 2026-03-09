# 2D Heat Transfer Model with Smoothed Step Function

## Description
This notebook implements a 2D heat transfer simulation in a rectangular domain with time-dependent boundary conditions using a smoothed step function. The model includes conduction, convection, and radiation effects, with interactive controls for all parameters.

## Key Features
- **Interactive Interface**: Real-time manipulation of all parameters via sliders
- **Smoothed Step Function**: Time-dependent boundary condition with adjustable transition time and smoothness
- **Multiple Visualizations**: 
  - 2D temperature field (DensityPlot)
  - 3D temperature surface (Plot3D)
  - Temperature history at center point
  - Boundary temperature evolution
- **Physics Included**:
  - Heat conduction (Fourier's law)
  - Convection at top boundary

## Parameters
- **Step Function**: 
  - fmin (initial temperature)
  - fmax (final temperature)
  - ts (transition time)
  - m (smoothness factor)
- **Material**: k (thermal conductivity)
- **Boundary Conditions**: 
  - Tamb (ambient temperature)
  - h (convection coefficient)
 
## Usage
1. Ensure Mathematica with FEM package is installed
2. Open the notebook file (.nb)
3. Execute all cells
4. Use the interactive sliders to explore parameter effects
5. Export as CDF for web deployment

## Requirements
- Mathematica 10.0 or higher
- NDSolve`FEM` package (included with Mathematica)
- For web version: Wolfram CDF Player (free)

## Examples
- Ramp heating from 323K to 1173K over 300 seconds
- Effect of convection coefficient on cooling rate
- Comparison of smooth vs. step transitions

## License
This project is licensed under the MIT License.
