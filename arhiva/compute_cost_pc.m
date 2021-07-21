% computes a clustering solution total cost
function cost = compute_cost_pc(points, centroids)
	cost = 0; 
	% TODO compute clustering solution cost
  
  vector = [];
  for i = 1:rows(points)
    ind = 1;
    l1 = sum((centroids(1,:) - points(i,:)).^2);
    for j = 2:rows(centroids)
      l2 = sum((centroids(j,:) - points(i,:)).^2);
      if l2 < l1
        l1 = l2;
        ind = j;
      endif
    endfor
    vector(i) = ind;
  endfor
   
  suma = 0;
  for i=1:rows(centroids)
    for j=1:rows(points)
      if vector(j) == i
        dist = sqrt(sum((centroids(i,:) - points(j,:)).^2));
        suma = suma + dist;
      endif
    end
  end
  cost = suma;
endfunction