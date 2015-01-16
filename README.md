# Effects of Event-Free Noise Signals on Continuous-Time Simulation Performance

[Franciscus L. J. van der Linden](https://github.com/fvanderlinden),  [Andreas Klöckner](https://github.com/akloeckner) and [Dirk Zimmer](https://github.com/dzimmer). Effects of Event-Free Noise Signals on Continuous-Time Simulation Perfomance. *8th Vienna International Conference on Mathematical Modelling*, **in press**

## BibTeX Reference

```
@INPROCEEDINGS{linden2015effects,
  author = {van der Linden, Franciscus L. J. and Kl{\"o}ckner, Andreas and Zimmer,
                Dirk},
  title = {Effects of Event-Free Noise Signals on Continuous-Time Simulation
                Perfomance},
  booktitle = {8th Vienna International Conference on Mathematical Modelling},
  year = {in press},
  address = {Vienna, Austria},
}
```

# Howto

1. Check out [Noise 0.2](https://github.com/DLR-SR/Noise/releases/tag/v0.2.0)
2. Load Noise version 0.2
3. Clone or download this repository to your computer
4. Load the Modelica package NoiseSimulationsProcessing into Dymola
5. Run NoiseSimulationsProcessing.Batches.NoiseContinuousTimePerformance to execute all simulations
6. Copy the simulation results from the working directory to linden2015effects/2_Plots/Data
   * Note: these files are also available in the repository
7. Run 2_Plots/GeneratePlots.m to generate the plots used in the paper.
8. The plots can be found in 2_Plots/Figures
   * Note: these files are also available in the repository
