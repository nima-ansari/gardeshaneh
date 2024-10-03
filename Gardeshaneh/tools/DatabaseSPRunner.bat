pushd %~dp0

HA.DatabaseGenerator\HA.DatabaseGenerator.exe -rs "Server=(local);Database=SimorghArt;Trusted_Connection=True;Encrypt=False" "..\..\Infrastructure\Persistence\DatabaseScripts\Procedures"

pause