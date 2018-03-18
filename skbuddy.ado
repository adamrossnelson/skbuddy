// Program to prepare feature matrix and target vector for
// use in SciKit Learn. Last variable specified will be 
// exported as a target vector while those preceeding the last
// will be exprotd as a feature matrix.

program skbuddy, rclass byable(recall)
	version 15
	
	syntax varlist(min=2) [if] [in] [, fstub(string) floc(string) jnum replace]
	
	// Tokenize to remove the common after the `1' `2' style varlist references.
	tokenize `varlist'
	
	// Mark the observations matching if or in conditions.
	marksample touse
	// Check that observations remain after apply if or in conditions.
	quietly count if `touse'
	if `r(N)' == 0 {
		di as error "If and In specifications result in no observations."
		error 2000
	}
	
	// Count the number of variables in varlist.
	local nvar : word count `varlist'
	// Count the number of features in the varlist.
	local fcoutn = `nvar' - 1
	// Build list of features.
	forvalues i = 1/`fcoutn' {
		// Iteratively concatenate the list of features.
		local the_features = "`the_features' ``i''"
	}
	// Declare local to hold target vector variables.
	local the_target = "``nvar''"
	
	// Check if file location (fstub) option provided. If not declare.
	if "`fstub'" == "" {
		local fstub = "skbuddy"
	}
	
	if "`jnum'" == "jnum" {
		local nolabels = "nolabel"
	}
	
	// Check if file location (floc) option specified.
	// If specified replace backslashes with forward slashes.
	// Also check if user provided last slash, if not then add one.
	if "`floc'" != "" {
		local floc = subinstr("`floc'","\","/",.)
		if strpos(strreverse("`floc'"),"/") != 1 {
			local floc = "`floc'/"
		}
	}
	// di "`floc'"

	// Export feature matrix.
	export delimited `the_features' using `floc'`fstub'_X.csv if `touse', `nolabels' `replace'
	di as result "Exported `the_features' as a feature matrix to: `floc'`fstub'_X.csv"
	
	export delimited `the_target' using `floc'`fstub'_y.csv if `touse', `nolabels' `replace'
	di as result "Exported `the_target' as a target vector to: `floc'`fstub'_y.csv"

end
