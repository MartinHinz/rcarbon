#' @title Radiocarbon dates from the EUROEVOL database
#' @description Radiocarbon dates (n=14,053) and site coordinates (n=4,213) from the EUROEVOL project database. Sites without radiocarbon dates (n=544), phase-codes, and other data have been omitted (the complete dataset can be found on \url{http://discovery.ucl.ac.uk/1469811/}).  

#' @format A data.frame with the following variables:
#' \describe{
#' \item{\code{C14ID}}{ID of each radiocarbon date}
#' \item{\code{C14Age}}{Radiocarbon age in 14C years BP}
#' \item{\code{C14SD}}{Radiocarbon age error}
#' \item{\code{LabCode}}{Labcode of the radiocarbon date}
#' \item{\code{Material}}{Material of the dated sample}
#' \item{\code{SiteID}}{ID of the site from which the sample has been recovered}
#' \item{\code{Latitude}}{Latitude of the sampling site in decimal degrees}
#' \item{\code{Longitude}}{Longitude of the sampling site in decimal degrees}
#' \item{\code{Country}}{Country where the sampling site is located}
#'}
#' @source Manning, K., Colledge, S., Crema, E., Shennan, S., Timpson, A., 2016. The Cultural Evolution of Neolithic Europe. EUROEVOL Dataset 1: Sites, Phases and Radiocarbon Data. Journal of Open Archaeology Data 5. doi:10.5334/joad.40
#' @references
#' Shennan, S., Downey, S.S., Timpson, A., Edinborough, K., Colledge, S., Kerig, T., Manning, K., Thomas, M.G., 2013. Regional population collapse followed initial agriculture booms in mid-Holocene Europe. Nature Communications 4, ncomms3486. doi:10.1038/ncomms3486
#'
#' Timpson, A., Colledge, S., Crema, E., Edinborough, K., Kerig, T., Manning, K., Thomas, M.G., Shennan, S., 2014. Reconstructing regional population fluctuations in the European Neolithic using radiocarbon dates: a new case-study using an improved method. Journal of Archaeological Science 52, 549–557. doi:10.1016/j.jas.2014.08.011
#'
#' @examples
#' data(euroevol)
#' Ireland <- subset(euroevol,Country=="Ireland")
#' bins <- binPrep(Ireland$SiteID,Ireland$C14Age,h=200)
#' x <- calibrate(Ireland$C14Age,Ireland$C14SD)
#' spd.ireland <- spd(x,bins=bins,runm=200,timeRange=c(8000,4000))
#' plot(spd.ireland)
"euroevol"