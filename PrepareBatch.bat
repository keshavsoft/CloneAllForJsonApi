cd StaticWithInclude
node start
cd..


xcopy StaticWithInclude\public\Projects\JSONAdminApi JsonApi\public\JSONAdminApi\  /s /e /Y
xcopy StaticWithInclude\public\Projects\JSONUser JsonApi\public\JSONUser\  /s /e /Y
