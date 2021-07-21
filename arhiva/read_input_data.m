% reads cluster count and points from input files 
function [NC points] = read_input_data(file_params, file_points)
	
	% set these values correctly
	%NC = 0;
	%points = [];

	% TODO read NC
	% TODO read points
   
  file  = fopen(file_params, 'r');
  NC = fscanf(file, "%d");
  %save read_input_data  NC;
  fclose(file_params);
  %points = dlmread(file_points, '',5,0);
  points = load(file_points);
  points = points.points;
  %save read_input_data points;
end

