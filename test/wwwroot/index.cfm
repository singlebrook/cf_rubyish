<cfsetting showdebugoutput="no">

<cfinvoke component="mxunit.runner.DirectoryTestSuite"
          method="run"
          directory="#ExpandPath('test')#"
          componentPath="test"
          recurse="true"
          returnvariable="results" />

<cfoutput> #results.getResultsOutput('html')# </cfoutput>
