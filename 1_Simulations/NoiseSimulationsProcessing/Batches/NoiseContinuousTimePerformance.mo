within NoiseSimulationsProcessing.Batches;
function NoiseContinuousTimePerformance
  "Batch Processing for Effects of Event-Free Noise Signals on Continuous-Time Simulation Perfomance"
  input String[:] getSimulationProperties={"Number of (successful) steps","time for integration",
      "Number of F-evaluations"};
  input Real Tolerances[:]={1e-1,1e-2,1e-3,1e-4,1e-5,1e-6,1e-7,1e-8};
  input Real Amplitudes[:]={1e-8,1e-7,1e-6,1e-5,1e-4,1e-3,1e-2,1e-1,1e-0};
  input Real stopTime = 5000 "Simulation stop time";
  input Integer ReferenceSamples = integer(stopTime)*500
    "Number of sampled to compare reference simulation";
protected
  String method;
  String ReferenceState;

algorithm
     ReferenceState := "integrator.y";
     method :="dassl";
  NoiseSimulationsProcessing.Utilities.batchSimulateWithLogReader(
    "NoiseSimulationsProcessing.Examples.NoInterpolationIntegratorSampleFree",
    stopTime,
    method,
    "Res_NoInterpolationIntegratorSampleFree.mat",
    getSimulationProperties,
    Tolerances,
    ReferenceState=ReferenceState,
    ReferenceSamples=ReferenceSamples);
  NoiseSimulationsProcessing.Utilities.batchSimulateWithLogReader(
    "NoiseSimulationsProcessing.Examples.LinInterpolationIntegratorSampleFree",
    stopTime,
    method,
    "Res_LinInterpolationIntegratorSampleFree.mat",
    getSimulationProperties,
    Tolerances,
    ReferenceState=ReferenceState,
    ReferenceSamples=ReferenceSamples);
  NoiseSimulationsProcessing.Utilities.batchSimulateWithLogReader(
    "NoiseSimulationsProcessing.Examples.SincInterpolationIntegratorSampleFree",
    stopTime,
    method,
    "Res_SincInterpolationIntegratorSampleFree.mat",
    getSimulationProperties,
    Tolerances,
    ReferenceState=ReferenceState,
    ReferenceSamples=ReferenceSamples);
  NoiseSimulationsProcessing.Utilities.batchSimulateWithLogReader(
    "NoiseSimulationsProcessing.Examples.NoInterpolationIntegratorSampled",
    stopTime,
    method,
    "Res_NoInterpolationIntegratorSampled.mat",
    getSimulationProperties,
    Tolerances,
    ReferenceState=ReferenceState,
    ReferenceSamples=ReferenceSamples);
  NoiseSimulationsProcessing.Utilities.batchSimulateWithLogReader(
    "NoiseSimulationsProcessing.Examples.LinInterpolationIntegratorSampled",
    stopTime,
    method,
    "Res_LinInterpolationIntegratorSampled.mat",
    getSimulationProperties,
    Tolerances,
    ReferenceState=ReferenceState,
    ReferenceSamples=ReferenceSamples);
  NoiseSimulationsProcessing.Utilities.batchSimulateWithLogReader(
    "NoiseSimulationsProcessing.Examples.SincInterpolationIntegratorSampled",
    stopTime,
    method,
    "Res_SincInterpolationIntegratorSampled.mat",
    getSimulationProperties,
    Tolerances,
    ReferenceState=ReferenceState,
    ReferenceSamples=ReferenceSamples);

     method :="Radau";
  NoiseSimulationsProcessing.Utilities.batchSimulateWithLogReader(
    "NoiseSimulationsProcessing.Examples.NoInterpolationIntegratorSampleFree",
    stopTime,
    method,
    "Res_RadauNoInterpolationIntegratorSampleFree.mat",
    getSimulationProperties,
    Tolerances,
    ReferenceState=ReferenceState,
    ReferenceSamples=ReferenceSamples);
  NoiseSimulationsProcessing.Utilities.batchSimulateWithLogReader(
    "NoiseSimulationsProcessing.Examples.LinInterpolationIntegratorSampleFree",
    stopTime,
    method,
    "Res_RadauLinInterpolationIntegratorSampleFree.mat",
    getSimulationProperties,
    Tolerances,
    ReferenceState=ReferenceState,
    ReferenceSamples=ReferenceSamples);
  NoiseSimulationsProcessing.Utilities.batchSimulateWithLogReader(
    "NoiseSimulationsProcessing.Examples.SincInterpolationIntegratorSampleFree",
    stopTime,
    method,
    "Res_RadauSincInterpolationIntegratorSampleFree.mat",
    getSimulationProperties,
    Tolerances,
    ReferenceState=ReferenceState,
    ReferenceSamples=ReferenceSamples);
  NoiseSimulationsProcessing.Utilities.batchSimulateWithLogReader(
    "NoiseSimulationsProcessing.Examples.NoInterpolationIntegratorSampled",
    stopTime,
    method,
    "Res_RadauNoInterpolationIntegratorSampled.mat",
    getSimulationProperties,
    Tolerances,
    ReferenceState=ReferenceState,
    ReferenceSamples=ReferenceSamples);
  NoiseSimulationsProcessing.Utilities.batchSimulateWithLogReader(
    "NoiseSimulationsProcessing.Examples.LinInterpolationIntegratorSampled",
    stopTime,
    method,
    "Res_RadauLinInterpolationIntegratorSampled.mat",
    getSimulationProperties,
    Tolerances,
    ReferenceState=ReferenceState,
    ReferenceSamples=ReferenceSamples);
  NoiseSimulationsProcessing.Utilities.batchSimulateWithLogReader(
    "NoiseSimulationsProcessing.Examples.SincInterpolationIntegratorSampled",
    stopTime,
    method,
    "Res_RadauSincInterpolationIntegratorSampled.mat",
    getSimulationProperties,
    Tolerances,
    ReferenceState=ReferenceState,
    ReferenceSamples=ReferenceSamples);

     ReferenceState := "criticalDamping.y";
     method :="dassl";
  NoiseSimulationsProcessing.Utilities.batchSimulateWithLogReader(
    "NoiseSimulationsProcessing.Examples.NoInterpolationCriticalDamping50SampleFree",
    stopTime,
    method,
    "Res_NoInterpolationCriticalDamping50SampleFree.mat",
    getSimulationProperties,
    Tolerances,
    ReferenceState=ReferenceState,
    ReferenceSamples=ReferenceSamples);
  NoiseSimulationsProcessing.Utilities.batchSimulateWithLogReader(
    "NoiseSimulationsProcessing.Examples.LinInterpolationCriticalDamping50SampleFree",
    stopTime,
    method,
    "Res_LinInterpolationCriticalDamping50SampleFree.mat",
    getSimulationProperties,
    Tolerances,
    ReferenceState=ReferenceState,
    ReferenceSamples=ReferenceSamples);
  NoiseSimulationsProcessing.Utilities.batchSimulateWithLogReader(
    "NoiseSimulationsProcessing.Examples.SincInterpolationCriticalDamping50SampleFree",
    stopTime,
    method,
    "Res_SincInterpolationCriticalDamping50SampleFree.mat",
    getSimulationProperties,
    Tolerances,
    ReferenceState=ReferenceState,
    ReferenceSamples=ReferenceSamples);
  NoiseSimulationsProcessing.Utilities.batchSimulateWithLogReader(
    "NoiseSimulationsProcessing.Examples.NoInterpolationCriticalDamping50Sampled",
    stopTime,
    method,
    "Res_NoInterpolationCriticalDamping50Sampled.mat",
    getSimulationProperties,
    Tolerances,
    ReferenceState=ReferenceState,
    ReferenceSamples=ReferenceSamples);
  NoiseSimulationsProcessing.Utilities.batchSimulateWithLogReader(
    "NoiseSimulationsProcessing.Examples.LinInterpolationCriticalDamping50Sampled",
    stopTime,
    method,
    "Res_LinInterpolationCriticalDamping50Sampled.mat",
    getSimulationProperties,
    Tolerances,
    ReferenceState=ReferenceState,
    ReferenceSamples=ReferenceSamples);
  NoiseSimulationsProcessing.Utilities.batchSimulateWithLogReader(
    "NoiseSimulationsProcessing.Examples.SincInterpolationCriticalDamping50Sampled",
    stopTime,
    method,
    "Res_SincInterpolationCriticalDamping50Sampled.mat",
    getSimulationProperties,
    Tolerances,
    ReferenceState=ReferenceState,
    ReferenceSamples=ReferenceSamples);

    method :="Radau";
  NoiseSimulationsProcessing.Utilities.batchSimulateWithLogReader(
    "NoiseSimulationsProcessing.Examples.NoInterpolationCriticalDamping50SampleFree",
    stopTime,
    method,
    "Res_RadauNoInterpolationCriticalDamping50SampleFree.mat",
    getSimulationProperties,
    Tolerances,
    ReferenceState=ReferenceState,
    ReferenceSamples=ReferenceSamples);
  NoiseSimulationsProcessing.Utilities.batchSimulateWithLogReader(
    "NoiseSimulationsProcessing.Examples.LinInterpolationCriticalDamping50SampleFree",
    stopTime,
    method,
    "Res_RadauLinInterpolationCriticalDamping50SampleFree.mat",
    getSimulationProperties,
    Tolerances,
    ReferenceState=ReferenceState,
    ReferenceSamples=ReferenceSamples);
  NoiseSimulationsProcessing.Utilities.batchSimulateWithLogReader(
    "NoiseSimulationsProcessing.Examples.SincInterpolationCriticalDamping50SampleFree",
    stopTime,
    method,
    "Res_RadauSincInterpolationCriticalDamping50SampleFree.mat",
    getSimulationProperties,
    Tolerances,
    ReferenceState=ReferenceState,
    ReferenceSamples=ReferenceSamples);
  NoiseSimulationsProcessing.Utilities.batchSimulateWithLogReader(
    "NoiseSimulationsProcessing.Examples.NoInterpolationCriticalDamping50Sampled",
    stopTime,
    method,
    "Res_RadauNoInterpolationCriticalDamping50Sampled.mat",
    getSimulationProperties,
    Tolerances,
    ReferenceState=ReferenceState,
    ReferenceSamples=ReferenceSamples);
  NoiseSimulationsProcessing.Utilities.batchSimulateWithLogReader(
    "NoiseSimulationsProcessing.Examples.LinInterpolationCriticalDamping50Sampled",
    stopTime,
    method,
    "Res_RadauLinInterpolationCriticalDamping50Sampled.mat",
    getSimulationProperties,
    Tolerances,
    ReferenceState=ReferenceState,
    ReferenceSamples=ReferenceSamples);
  NoiseSimulationsProcessing.Utilities.batchSimulateWithLogReader(
    "NoiseSimulationsProcessing.Examples.SincInterpolationCriticalDamping50Sampled",
    stopTime,
    method,
    "Res_RadauSincInterpolationCriticalDamping50Sampled.mat",
    getSimulationProperties,
    Tolerances,
    ReferenceState=ReferenceState,
    ReferenceSamples=ReferenceSamples);

    method :="dassl";
  NoiseSimulationsProcessing.Utilities.batchSimulateWithLogReaderNoiseAmplitudeChange(
    "NoiseSimulationsProcessing.Examples.TestSignalToNoise",
    stopTime,
    method,
    "Res_TestSignalToNoise.mat",
    getSimulationProperties,
    Amplitudes);

  NoiseSimulationsProcessing.Utilities.batchSimulateWithLogReaderNoiseAmplitudeChange(
    "NoiseSimulationsProcessing.Examples.TestSignalToNoiseSampled",
    stopTime,
    method,
    "Res_TestSignalToNoiseSampled.mat",
    getSimulationProperties,
    Amplitudes);

   method :="Radau";
  NoiseSimulationsProcessing.Utilities.batchSimulateWithLogReaderNoiseAmplitudeChange(
    "NoiseSimulationsProcessing.Examples.TestSignalToNoise",
    stopTime,
    method,
    "Res_RadauTestSignalToNoise.mat",
    getSimulationProperties,
    Amplitudes);

  NoiseSimulationsProcessing.Utilities.batchSimulateWithLogReaderNoiseAmplitudeChange(
    "NoiseSimulationsProcessing.Examples.TestSignalToNoiseSampled",
    stopTime,
    method,
    "Res_RadauTestSignalToNoiseSampled.mat",
    getSimulationProperties,
    Amplitudes);

  annotation (Documentation(info="<html>
<p>Batch Processing for Effects of Event-Free Noise Signals on Continuous-Time Simulation Perfomance</p>
</html>"));
end NoiseContinuousTimePerformance;
