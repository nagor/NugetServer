1. Uses .nuget/nuget.exe for building package
2. Build TestLib project
   - post build event: 
   $(SolutionDir).nuget\nuget.exe pack $(ProjectPath) -o $(ProjectDir)output
3. Package is available in Output directory
4. For update version: AssemlyInfo.cs AssemblyInformationalVersion
