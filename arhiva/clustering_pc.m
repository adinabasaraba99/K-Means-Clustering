% computes the NC centroids corresponding to the given points using K-Means
function centroids = clustering_pc(points, NC)
	centroids = [];
	% TODO K-Means code 
  
  while 1
    m = randi(rows(points));
    l = points(m,:);
    ok = 1;
    for i = 1:rows(centroids)
      if centroids(i,:) == l
        ok = 0;
        break;
      endif
    endfor
    
    if ok == 1
      centroids = [l; centroids];
      NC--;
    endif
    
    if NC == 0
      break;
    endif
        
 endwhile
 
matrice = centroids;
vector = [];
while 2
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
  
  %matrice = centroids;
  for i = 1:rows(centroids)
    nr = 1;
    for j = 1:rows(points)
      if vector(j) == i
        nr++;
        matrice(i,:) = points(j,:) + matrice(i,:);
      endif
    endfor
    matrice(i,:) = matrice(i,:)/nr; 
    %matrice = [ma; matrice];
  endfor
  %centroids;
  %matrice;
  if sum(abs(matrice - centroids)) == 0
    break;
  endif
  centroids = matrice;
endwhile

endfunction