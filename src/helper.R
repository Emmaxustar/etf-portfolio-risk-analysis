# Helper functions for portfolio risk analysis

annualize_return <- function(monthly_return) {
  return((1 + monthly_return)^12 - 1)
}

annualize_volatility <- function(monthly_sd) {
  return(monthly_sd * sqrt(12))
}

sharpe_ratio <- function(portfolio_return, risk_free_rate, portfolio_sd) {
  return((portfolio_return - risk_free_rate) / portfolio_sd)
}
