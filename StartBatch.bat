git clone -c core.longpaths=true https://github.com/keshavsoft/JSONDataSupply

gh repo clone keshavsoft/AdminApi

git clone -c core.longpaths=true https://github.com/keshavsoft/StaticWithInclude

gh repo clone keshavsoft/JsonApi
gh repo clone keshavsoft/JSONUser
gh repo clone keshavsoft/JSONUtility
gh repo clone keshavsoft/JSONReports


ROBOCOPY JSONDataSupply\DataSupply JsonApi\DataSupply\ /MIR

xcopy AdminApi\Projects\JSONAdminApi JsonApi\Projects\JSONAdminApi\ /s /e /Y
xcopy JSONReports\Projects\JSONReports JsonApi\Projects\JSONReports\ /s /e /Y
xcopy JSONUser\Projects\JSONUser JsonApi\Projects\JSONUser\ /s /e /Y
xcopy JSONUtility\Projects\JSONUtility JsonApi\Projects\JSONUtility\ /s /e /Y


npm i


