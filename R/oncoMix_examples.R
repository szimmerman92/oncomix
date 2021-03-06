
#' Creating an ideal oncoMix gene
#'
#' This function allows you to generate a plot
#' @param oe_means Set the difference between parameter means for the overexpressed (oe) group. Defaults to c(3,7)
#' @keywords oncoMix, idealized, theoretical
#' @export
#' @examples
#' oncoMixIdeal(oe_means = c(3,10))
#' oncoMixIdeal(oe_means = c(2,18.5))

oncoMixIdeal <- function(oe_means=c(3,7)){
  ggplot(data.frame(cbind(expr = c(rnorm(113, 3), c(rnorm(56,3), rnorm(57, mean =6)))), type=c(rep(2, 113), rep(1,113))),
         aes(x=expr, color=as.factor(type), fill=as.factor(type), group=as.factor(type))) +
  theme_classic() +
  theme(axis.title.y=element_blank(), axis.text.y=element_blank(), axis.ticks.y=element_blank(),
        legend.position = "none", plot.title = element_text(size = 12), axis.text=element_text(size=8),
        axis.title=element_text(size=8), axis.title.x=element_blank(), axis.text.x=element_blank(),
        axis.ticks.x=element_blank()) +
  ggtitle("Theoretical") + xlim(oe_means[1]-3.2,oe_means[2] + 3) +
  stat_function(fun = dnorm, colour = "#F8766D", args = list(mean = 3.1, sd=0.7), size=3) +
  stat_function(fun = dnorm, colour = "#F8766D", args = list(mean=2.9, sd=0.7), size = 3) +
  stat_function(fun = dnorm, colour = "#00BFC4", args = list(mean = oe_means[1], sd=1), size = 3) +
  stat_function(fun = dnorm, colour = "#00BFC4", args = list(mean = oe_means[2], sd=1), size = 3)
}

#' Creating an schematic of a 2-component mixture model
#'
#' This function allows you to generate a plot
#' @param means Set the values for the difference between parameter means
#' @keywords oncoMix, idealized, theoretical
#' @export
#' @examples
#' oncoMixBimodal(means = c(3,7))
#' oncoMixBimodal(means = c(3,10))

oncoMixBimodal <- function(oe_means=c(3,7)){
  #library(ggplot2)
  ggplot(data.frame(cbind(expr = c(rnorm(113, 3), c(rnorm(56,3), rnorm(57, mean =6)))), type=c(rep(2, 113), rep(1,113))), aes(x=expr, color=as.factor(type), fill=as.factor(type), group=as.factor(type))) + theme_classic() + theme(axis.title.y=element_blank(), axis.text.y=element_blank(), axis.ticks.y=element_blank(),legend.position = "none", plot.title = element_text(size = 12), axis.text=element_text(size=8), axis.title=element_text(size=8), axis.title.x=element_blank(), axis.text.x=element_blank(), axis.ticks.x=element_blank())+ ggtitle("Theoretical") + xlim(-0.2,10) +
    #stat_function(fun = dnorm, colour = "#F8766D", args = list(mean = 3.1, sd=0.7), size=5) +
    #stat_function(fun = dnorm, colour = "#F8766D", args = list(mean=2.9, sd=0.7), size = 5) +
    stat_function(fun = dnorm, colour = "#00BFC4", args = list(mean = oe_means[1], sd=1), size = 5) +
    stat_function(fun = dnorm, colour = "#00BFC4", args = list(mean = oe_means[2], sd=1), size = 5)
}

#' Creating an schematic of a traditional differential expression experiment
#'
#' This function allows you to generate a schematic of the assumptions of a traditional DE
#' expermiment between two known groups.
#' @param means Set the values for the difference between parameter means
#' @keywords oncoMix, idealized, theoretical, differential expression
#' @export
#' @examples
#' oncoMixBimodal(means = c(3,7))
#' oncoMixBimodal(means = c(3,10))

oncoMixTraditionalDE <- function(means=c(3,7)){
  ggplot(data.frame(cbind(expr = c(rnorm(113, 3), c(rnorm(56,3), rnorm(57, mean =6)))), type=c(rep(2, 113), rep(1,113))), aes(x=expr, color=as.factor(type), fill=as.factor(type), group=as.factor(type))) + theme_classic() + theme(axis.title.y=element_blank(), axis.text.y=element_blank(), axis.ticks.y=element_blank(),legend.position = "none", plot.title = element_text(size = 12), axis.text=element_text(size=8), axis.title=element_text(size=8), axis.title.x=element_blank(), axis.text.x=element_blank(), axis.ticks.x=element_blank())+ ggtitle("Theoretical") + xlim(-0.2,10) +
    stat_function(fun = dnorm, colour = "#F8766D", args = list(mean=means[1], sd=1), size = 5) +
    stat_function(fun = dnorm, colour = "#00BFC4", args = list(mean = means[2], sd=1), size = 5) #+
}
