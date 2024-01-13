# mass_filter.sh

A bash script to filter a range of mass-to-charge ratios resulting from mass spectrometry. The design case were files generated with the JEOL Accutof DART MS (aka DART-TOFMS). Test data are mass spectra derived from Acer macrophyllum wood cores. Cores were collected by the Adventure Scientists. Spectra were generated for Kristen Finch by Erin McClure Price of the USFS-IP Wood Identification and Screening Center in August 2020. 

The script was generated using ChatGPT! :) 

### Usage

```
./mass_filter.sh <input_directory> <mass_lower_bound=INT> <mass_upper_bound=INT> <output_directory> 
```

Don't forget to make the file executable. 

The filtering will be applied to all files in the input directory. The output directory will be created. This program only removes one range of mass-to-charge ratios at one time. To remove multiple ranges, the first output directory becomes the input directory and a new filtering range is applied to it and so on. 

Works well with Mac and Linux. Options to run in Windows are install a Linux distribution or with GitBash. 

#### Using Example Data

```
./mass_filter.sh exmaple_data/ 100 200 filtered_data/ 
```
