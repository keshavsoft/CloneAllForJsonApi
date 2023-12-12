git clone -c core.longpaths=true https://github.com/keshavsoft/JSONDataSupply
git clone -c core.longpaths=true https://github.com/keshavsoft/AdminApi
git clone -c core.longpaths=true https://github.com/keshavsoft/StaticWithInclude

git clone -c core.longpaths=true https://github.com/keshavsoft/JsonApi
git clone -c core.longpaths=true https://github.com/keshavsoft/JSONUser
git clone -c core.longpaths=true https://github.com/keshavsoft/JSONUtility
git clone -c core.longpaths=true https://github.com/keshavsoft/JSONReports
git clone -c core.longpaths=true https://github.com/keshavsoft/JSONImport

ROBOCOPY JSONDataSupply\DataSupply JsonApi\DataSupply\ /MIR

xcopy AdminApi\Projects\JSONAdminApi JsonApi\Projects\JSONAdminApi\ /s /e /Y
xcopy JSONReports\Projects\JSONReports JsonApi\Projects\JSONReports\ /s /e /Y
xcopy JSONUser\Projects\JSONUser JsonApi\Projects\JSONUser\ /s /e /Y
xcopy JSONUtility\Projects\JSONUtility JsonApi\Projects\JSONUtility\ /s /e /Y
xcopy JSONImport\Projects\JSONImport JsonApi\Projects\JSONImport\ /s /e /Y
xcopy JSONImport\Projects\Tally JsonApi\Projects\Tally\ /s /e /Y



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
