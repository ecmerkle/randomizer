library(ggplot2)
library(gganimate)

nms <- c('greg', 'peter', 'bobby', 'marsha', 'jan', 'cindy')
npts <- 5
idx <- seq(0, 1, length.out = npts)
idx2 <- seq(0, 1, length.out = npts*length(nms))

dat <- cbind.data.frame(idx=idx2, nms=rep(nms, each=npts), x=5, y=rep(idx, length(nms)))

p <- ggplot(dat, aes(x=x, y=y, label=nms)) + geom_text() + transition_states(idx, transition_length = 0) + ease_aes('bounce-in')
anim_save('tst.gif', p)
