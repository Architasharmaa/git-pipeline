sli ={
    guid = "NDQzODI3N3xTWU5USHxNT05JVE9SfDlhMTU5M2I2LTAxY2ItNGEyMS04Mjc5LTRhMzE0ZTE2NDI2Zg"
    name = "new"
    description = "Proportion of requests that are served faster than a threshold."
    events ={
        # account_id = 4438277
        valid_events = {
            from = "Transaction"
            where = "appName = 'Example application' AND (transactionType='Web')"
        }
        good_events = {
            from = "Transaction"
            where = "appName = 'Example application' AND (transactionType= 'Web') AND duration < 0.1"
        }
    }
    objective ={
        target = 99.00
        rolling ={
            count = 7
            unit = "DAY"
        }
    }

account_id = 4438277
api_key = "NRAK-E3GS6X7HIYRIFPH0Z6PAX2RRTW3"




}
# account_id = 4438277
