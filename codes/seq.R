seq(-5, 5, by=.2) -> s3
s4 <- seq(length=51, from=-5, by=.2)

## Repeat ?rep
rep(1:4, 2)
rep(1:4, each = 2)
## note the difference above

rep(1:4, c(2,2,2,2))     # same as second
rep(1:4, c(2,1,2,1))     # repeat for elements in vector
rep(1:4, each = 2, length.out = 4)    # first 4 only
rep(1:4, each = 2, length.out = 10)   # 8 integers plus two recycled 1's (seems like loop)
rep(1:4, each = 2, times = 3)         # length 24, 3 complete replications
