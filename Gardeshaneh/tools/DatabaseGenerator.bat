pushd %~dp0

HA.DatabaseGenerator\HA.DatabaseGenerator.exe -d "Server=(local);Database=SimorghArt;Trusted_Connection=True;Encrypt=False" "Infrastructure.Persistence" "..\..\Infrastructure\Persistence\DapperRepositoryMethods.cs"

pause