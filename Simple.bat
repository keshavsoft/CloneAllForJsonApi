git clone -c core.longpaths=true https://github.com/keshavsoft/JSONDataSupply

git clone -c core.longpaths=true https://github.com/keshavsoft/JsonApi
git clone -c core.longpaths=true https://github.com/keshavsoft/JSONUser

ROBOCOPY JSONDataSupply\DataSupply JsonApi\DataSupply\ /MIR

xcopy JSONUser\Projects\JSONUser JsonApi\Projects\JSONUser\ /s /e /Y

call npm install




cd StaticWithInclude
call node ForJsonApi
cd..


robocopy public\Projects\JSONApi  ..\JsonApi\public\JSONApi\  /MIR

if exist "JsonApi\KeshavSoft\BoilerPlate\Empty\" (
    if exist "JsonApi\KData\" (
        echo Yes 
    ) else (
        ROBOCOPY JsonApi\KeshavSoft\BoilerPlate\Empty\KData JsonApi\KData /MIR
    )
)
