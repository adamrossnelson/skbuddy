{smcl}

{title:Title}

{phang}
{bf:skbuddy} {hline 2} Stata package designed to quickly export feature and target matrices as CSV for use with SciKit Learn.

{marker syntax}
{title:Syntax}

{p 8 17 2}
{cmdab:skbuddy} [{it:varlist}] [if] [in] [, options]

{p 8 17 2} Where the first variable in [{it:varlist}] is a binary reference result. Subsequent variables in [{it:varlist}] are predictions. This command compares [{it:varlist}]'s 2nd throgh kth variable with [{it:varlist}]'s first variable and tabulates the results.

{synoptset 16 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:Main}
{synopt:{opt fstub}}Provide a filename stub. Default stub is "skbuddy".{p_end}
{synopt:{opt floc}}Provide a file location for output csv files.{p_end}
{synopt:{opt jnum}}Replace value lables with values in output.{p_end}
{synopt:{opt replace}}Overwrite existing file if there is one.{p_end}

{marker description}
{title:Description}

{pstd}
{cmd:skbuddy} is a Stata package designed to quickly export feature and target matrices as CSV for use with SciKit Learn.

{marker author}
{title:Author}

{phang}     Adam Ross Nelson, JD PhD{p_end}
{phang}     {browse "https://github.com/adamrossnelson"}{p_end}
