
#include <Rcpp.h>
#include <random>
using namespace Rcpp;

//' Propensity score match from Rcpp
//' @name ps_matchCPP
//' @return A list with two vectors (`match_id`, `match_x`).
//' @param x a numeric vector
//' @examples
//' ps_matchCPP(runif(10, 0.0, 1.0))
//' @export
 // [[Rcpp::export]]
List ps_matchCPP(const NumericVector & x){
  const int n = x.size(); //Individuals
  IntegerVector match_id(n); //Matched indices
  NumericVector match_x(n); //Matched values

  //Outer loop j
  for(int j=0; j<n; ++j){
    double value = std::numeric_limits<double>::max(); //Start large distance
    int index = 0;

    //Inner loop i: Only need to go up to j
    for(int i=j+1; i<n; ++i){
      if (std::abs(x[j] - x[i]) < value) {
        value = std::abs(x[j] - x[i]); // Update value
        index = i; // Update index
      }
    }

    //Store

    match_id[j] = index + 1;
    match_x[j] = x[index];

  }

  //Return list
  return List::create(
    Named("match_id") = match_id,
    Named("match_x") = match_x
  );
}


