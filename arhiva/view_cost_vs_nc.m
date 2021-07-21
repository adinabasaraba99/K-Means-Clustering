function view_cost_vs_nc(file_points)
		% TODO compute cost for NC = [1..10] and plot 
  
  
    cost = zeros(1,10);
  points = load(file_points);
  points = points.points;
  
    for i = 1:10
      centroids = clustering_pc(points,i);
      cost(1,i) = compute_cost_pc(points, centroids);
    end
    plot([1:10],cost);
    %xlabel('Cost')
    %ylabel('Cluster count')
    %title("Costul solutiei in functie de numarul de clustere");
   
end