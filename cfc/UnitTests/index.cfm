<cfinvoke component="mxunit.runner.DirectoryTestSuite"
          method="run"
          directory="#expandPath('/cfc/UnitTests')#"
          componentPath="UnitTests"
          recurse="true"
          excludes=""
          returnvariable="results" />

<!--- <cfdump var="#results#"> --->

<cfset pathBase = "/mxunit/">

<cfoutput>
	<link rel="stylesheet" type="text/css" href="<cfoutput>#pathBase#</cfoutput>resources/theme/960.css">
	<link rel="stylesheet" type="text/css" href="<cfoutput>#pathBase#</cfoutput>resources/jquery/tablesorter/green/style.css">
	<link rel="stylesheet" type="text/css" href="<cfoutput>#pathBase#</cfoutput>resources/theme/styles.css">
	<link rel="stylesheet" type="text/css" href="<cfoutput>#pathBase#</cfoutput>resources/theme/results.css">
	<link rel="stylesheet" type="text/css" href="<cfoutput>#pathBase#</cfoutput>resources/jquery/tipsy/stylesheets/tipsy.css">
</cfoutput>

<div>
	<cfoutput>
		#results.getResultsOutput('rawhtml')#
	</cfoutput>
</div>