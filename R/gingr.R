#' @title 
#' Material calculator to make gingerbread stuff...
#'   
#' @author 
#' Brandon Monier, \email{brandon.monier@sdstate.edu}
#' 
#' @description
#' This function will calculate the amount of material required to make a 
#' gingerbread related structure of any size! 
#'  
#' 
#' @details  
#' Using a propietary 'secret' formula of baking goods values 
#' (Monier et al. 20xx), this function will precisely
#' calculate the necessary materials to make anything out of gingerbread. All
#' you need to enter is the unit area your mega structure will cover and it will
#' give you an output of what you need with respective units.
#' 
#' @param area the numerical area you need
#' @param units the units you calculated the area in (in, ft, cm, m)
#' @param structure the type of gingerbread structure you wish to make 
#' 
#' @export
#' 
#' @examples
#' gingr()


gingr <- function(area, units, structure = NULL, ...) {
  
  unit = c('in', 'ft', 'cm', 'm')
  
  if(!is.numeric(area)) {
    stop('Please enter NUMERICAL data.')
  }
  if(!is.element(units, unit)) {
    stop('Please enter correct unit type (in, ft, cm, m).')
  }
  if(is.null(structure)) {
    structure = 'thing...'
  }
  
  tmp.material <- c('baking soda  ', 'brown sugar  ', 'butter       ', 
                    'cinnamon     ', 'eggs         ', 'flour        ', 
                    'ginger       ', 'ground cloves', 'molasses     ')
  
  tmp.unit <- c('tsp.    ', 'cup     ', 'cup     ', 'tblsp.  ', 'egg     ', 
                'cup     ', 'tblsp.  ', 'tsp.    ', 'cup     ')
  
  tmp.amount <- c(0.007191188, 0.005708062, 0.004651828, 0.006346201, 
                  0.004224936, 0.023360364, 0.007824928, 0.008674314, 
                  0.003382148)
  
  if(units == 'in') {
    n.area = area * tmp.amount
  }
  
  if(units == 'ft') {
    n.area = area * 12
    n.area = n.area * tmp.amount
  }
  
  if(units == 'cm') {
    n.area = area * 0.39370079
    n.area = n.area * tmp.amount
  }
  
  if(units == 'm') {
    n.area = area * 39.37
    n.area = n.area * tmp.amount
  }
  
  r.area = round(n.area, 2)
  
  message('\nHere is what you need for your gingerbread', structure, ':\n')
  cat('INGREDIENT   \t AMOUNT   UNIT\n')
  cat('-------------------------------\n')
  
  for(i in 1:length(r.area)) {
    cat(tmp.material[i], '\t', tmp.unit[i], r.area[i], '\n')
  }
  
  cat('\n')
  
}