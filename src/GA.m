addpath matpower4.1/
load('para119.mat')
functionevals = 0;

#selecting mates function
function parents = selectparents(candidates)
  losses = [];
  for i = 1:columns(candidates)
    losses = [losses, calculation_119(candidates(:,i))];
  end
  [S,I] = sort(losses(:));
  parent1 = candidates(:,I(1));
  parent2 = candidates(:,I(2));
  parents = [parent1, parent2];
end

#crossover function
function co_offspring = crossover(parents, pc)
  co_offspring = zeros(15,1);
  co_point = 7;
  co_offspring(1:co_point) = parents(1:co_point, 2);
  co_offspring(co_point+1:15) = parents(co_point+1:15, 1);
end

#


#create random population
initial = [25;17;15;21;18;12;11;16;12;17;20;18;12;16;20];

population = zeros(15,200);
for i = 1:columns(population)
  for j = 1:rows(population)
    population(j,i) = randi([1 initial(j)]);
  end
end

#validate
candidates = [];
for i = 1:columns(population)
  if valid_119(population(:,i)) == 1
    candidates = [candidates, population(:,i)];
  end
  functionevals++;
end

#begin GA

#selecting parents
parents = selectparents(candidates)

#crossover

