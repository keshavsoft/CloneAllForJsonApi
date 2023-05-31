cd KStaticFiles
node start
cd..


xcopy KStaticFiles\public\Projects\ClientLogin JsonApi\public\ClientLogin\  /s /e /Y
xcopy KStaticFiles\public\Projects\JSONAdminApi JsonApi\public\JSONAdminApi\  /s /e /Y
xcopy KStaticFiles\public\Projects\JSONReports JsonApi\public\JSONReports\  /s /e /Y
xcopy KStaticFiles\public\Projects\JSONUser JsonApi\public\JSONUser\  /s /e /Y
xcopy KStaticFiles\public\Projects\JSONUtility JsonApi\public\JSONUtility\  /s /e /Y

xcopy KStaticFiles\src\public\ClientLogin JsonApi\public\ClientLogin\  /s /e /Y
xcopy KStaticFiles\src\public\JSONAdminApi JsonApi\public\JSONAdminApi\  /s /e /Y
xcopy KStaticFiles\src\public\JSONReports JsonApi\public\JSONReports\  /s /e /Y
xcopy KStaticFiles\src\public\JSONUser JsonApi\public\JSONUser\  /s /e /Y
xcopy KStaticFiles\src\public\JSONUtility JsonApi\public\JSONUtility\  /s /e /Y
xcopy KStaticFiles\src\public\Garments JsonApi\public\Garments\  /s /e /Y



xcopy JsonApi\KeshavSoft\KData JsonApi\KData\ /s /e /Y
