gh repo clone keshavsoft/JSONDataSupply

gh repo clone keshavsoft/AdminApi
gh repo clone keshavsoft/KStaticFiles
gh repo clone keshavsoft/JsonApi
gh repo clone keshavsoft/JSONUser
gh repo clone keshavsoft/JSONUtility
gh repo clone keshavsoft/JSONReports


xcopy JSONDataSupply\DataSupply JsonApi\DataSupply\ /s /e /Y

xcopy AdminApi\Projects\JSONAdminApi JsonApi\Projects\JSONAdminApi\ /s /e /Y
xcopy JSONReports\Projects\JSONReports JsonApi\Projects\JSONReports\ /s /e /Y
xcopy JSONUser\Projects\JSONUser JsonApi\Projects\JSONUser\ /s /e /Y
xcopy JSONUtility\Projects\JSONUtility JsonApi\Projects\JSONUtility\ /s /e /Y


npm i


