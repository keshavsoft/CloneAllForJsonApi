if exist "JsonApi\KeshavSoft\BoilerPate\Empty\" (
    if exist "JsonApi\KData\" (
        echo Yes 
    ) else (
        ROBOCOPY JsonApi\KeshavSoft\BoilerPate\Empty\KData JsonApi\KData /MIR
    )
)
