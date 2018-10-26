#generating pop
population = zeros(15,100);
for i = 1:columns(population)
population(:,i) = randi([1,25],[15,1]);
valid_119(population(:,i))
end

#crossover function
function crossover = crossover(mate1, mate2, pc)

end


load('para119.mat');
addpath matpower4.1
functionevals = 0;

#pseudocode selection
for every individual in population
  check feasibility
  if feasible


while (functionevals < eval_budget)

  functionevals += 1

endwhile
