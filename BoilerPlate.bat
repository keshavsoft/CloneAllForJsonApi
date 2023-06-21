git clone -c core.longpaths=true https://github.com/keshavsoft/JSONDataSupply
git clone -c core.longpaths=true https://github.com/keshavsoft/AdminApi
git clone -c core.longpaths=true https://github.com/keshavsoft/StaticWithInclude

git clone -c core.longpaths=true https://github.com/keshavsoft/JsonApi
git clone -c core.longpaths=true https://github.com/keshavsoft/JSONUser
git clone -c core.longpaths=true https://github.com/keshavsoft/JSONUtility
git clone -c core.longpaths=true https://github.com/keshavsoft/JSONReports

ROBOCOPY JSONDataSupply\DataSupply JsonApi\DataSupply\ /MIR

xcopy AdminApi\Projects\JSONAdminApi JsonApi\Projects\JSONAdminApi\ /s /e /Y
xcopy JSONReports\Projects\JSONReports JsonApi\Projects\JSONReports\ /s /e /Y
xcopy JSONUser\Projects\JSONUser JsonApi\Projects\JSONUser\ /s /e /Y
xcopy JSONUtility\Projects\JSONUtility JsonApi\Projects\JSONUtility\ /s /e /Y

call npm install




cd StaticWithInclude
node start
cd..


xcopy StaticWithInclude\public\Projects\JSONAdminApi JsonApi\public\JSONAdminApi\  /s /e /Y
xcopy StaticWithInclude\public\Projects\JSONUser JsonApi\public\JSONUser\  /s /e /Y
xcopy StaticWithInclude\public\Projects\JSONApi  JsonApi\public\JSONApi\  /s /e /Y
xcopy StaticWithInclude\public\Projects\Garments  JsonApi\public\Garments\  /s /e /Y


if exist "JsonApi\KeshavSoft\BoilerPlate\Empty\" (
    if exist "JsonApi\KData\" (
        echo Yes 
    ) else (
        ROBOCOPY JsonApi\KeshavSoft\BoilerPlate\Empty\KData JsonApi\KData /MIR
    )
)
