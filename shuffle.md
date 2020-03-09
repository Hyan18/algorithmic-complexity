# Shuffle

Bad shuffle using costly array delete operation which leads to exponential growth
![](images/shuffle/bad-shuffle.png)

Fisher-Yates which does not use array delete looks to be linear in growth
![](images/shuffle/fisher-yates.png)

Inside-out, a variant of Fisher-Yates, the growth does look to be more linar but does not seem to do better in this case
![](images/shuffle/inside-out.png)

Comparison of Ruby, Fisher-Yates, and Inside-out shuffle
![](images/shuffle/shuffle-comparison.png)
