# Selphie
A simple window-wise and morph/wise screenshot maker for Pharo 12

# Install

On Pharo 12/13,
```
Metacello new
		onConflictUseLoaded;
		onWarningLog;
		repository: 'github://tomooda/Selphie:main/';
		baseline: 'Selphie';
		load
```

# How to use

#### Window-wise screenshot

1. select "Selphie" in the window menu of the window you want to take a screenshot,
    <br><img alt="Selphie menu" src="https://github.com/tomooda/Selphie/assets/836308/a62451c7-b79e-44fa-b25f-a8dd1b15aa52" width="50%">

2. and choose a file path to save the captured image,
    <br><img alt="Selphie-FileDialog" src="https://github.com/tomooda/Selphie/assets/836308/06434ee3-207d-4c59-8d94-1e1315ad1e2e" width="50%">

3. then you have a PNG file.
    <br><img alt="Selphie-captured" src="https://github.com/tomooda/Selphie/assets/836308/018ec02e-47d3-4eee-b56e-23a89e834b9c" width="50%">

#### Morph-wise screenshot

1. bring the halo of the morph you want to screenshot,

2. and click on the right-center halo with camera icon,
   <br><img alt="Selphie-Halo" src="https://github.com/tomooda/Selphie/assets/836308/c60740b5-66cb-49ae-b326-6d9fa88efcaa" width="50%">

3. then you choose a file path to save a PNG file.
