try {
    $uptime = (Get-CimInstance -ClassName Win32_PerfFormattedData_PerfOS_System).SystemUpTime
    if ($uptime) {
        $lastBootDate = (Get-Date).AddSeconds(-$uptime)
    } else {
        throw "Unable to retrieve system uptime."
    }

    $currentDate = Get-Date

    $daysSinceLastBoot = (New-TimeSpan -Start $lastBootDate -End $currentDate).TotalDays

    if ($daysSinceLastBoot -le 7) {
        $complianceState = "Compliant"
    } else {
        $complianceState = "NonCompliant"
    }

} catch {
    $complianceState = "Error"
    $daysSinceLastBoot = 0
    $lastBootDate = $null
}

$result = @{
    "odata.type" = "Microsoft.Intune.DeviceCompliance.StateResult";
    "state"      = $complianceState
    "data"       = @{
        "LastBootTime"      = if ($lastBootDate) { $lastBootDate.ToString("o") } else { "Unknown" }
        "DaysSinceLastBoot" = [math]::Round($daysSinceLastBoot, 2)
    }
}

$result | ConvertTo-Json -Compress
