dldir="JsonApi/KData"

git clone -c core.longpaths=true https://github.com/keshavsoft/JSONDataSupply
git clone -c core.longpaths=true https://github.com/keshavsoft/AdminApi
git clone -c core.longpaths=true https://github.com/keshavsoft/StaticWithInclude

git clone -c core.longpaths=true https://github.com/keshavsoft/JsonApi
git clone -c core.longpaths=true https://github.com/keshavsoft/JSONUser
git clone -c core.longpaths=true https://github.com/keshavsoft/JSONUtility
git clone -c core.longpaths=true https://github.com/keshavsoft/JSONReports
git clone -c core.longpaths=true https://github.com/keshavsoft/JSONImport

cp -r JSONDataSupply/DataSupply/. JsonApi/DataSupply

cp -r AdminApi/Projects/JSONAdminApi/. JsonApi/Projects/JSONAdminApi
cp -r JSONReports/Projects/JSONReports/. JsonApi/Projects/JSONReports
cp -r JSONUser/Projects/JSONUser/. JsonApi/Projects/JSONUser
cp -r JSONUtility/Projects/JSONUtility/. JsonApi/Projects/JSONUtility
cp -r JSONUtility/Projects/JSONUtility/. JsonApi/Projects/JSONUtility
cp -r JSONImport/Projects/JSONImport/. JsonApi/Projects/JSONImport
cp -r JSONImport/Projects/Tally /. JsonApi/Projects/Tally

npm install

cd StaticWithInclude
node start
cd -

cp -r StaticWithInclude/public/Projects/JSONAdminApi/. JsonApi/public/JSONAdminApi
cp -r StaticWithInclude/public/Projects/JSONUser/. JsonApi/public/JSONUser
cp -r StaticWithInclude/public/Projects/JSONApi/. JsonApi/public/JSONApi
cp -r StaticWithInclude/public/Projects/Garments/. JsonApi/public/Garments
cp -r StaticWithInclude/public/Projects/JSONUtility/. JsonApi/public/JSONUtility
cp -r StaticWithInclude/public/Projects/JSONReports/. JsonApi/public/JSONReports

[ ! -d "$dldir" ] && cp -r JsonApi/KeshavSoft/BoilerPlate/Empty/KData/. "$dldir"
