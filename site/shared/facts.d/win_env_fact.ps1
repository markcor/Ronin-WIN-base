# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

# Creates useful facts based off of system environment variables

$programdata     = $env:programdata.replace("\","\\")
$programfiles    = $env:ProgramW6432.replace("\","\\")
$programfilesx86 = "$env:ProgramFiles(x86)".replace("\","\\")


write-host "systemdrive=$env:systemdrive\\"
write-host "programdata=$programdata\\"
write-host "programfiles=$programfiles\\"
write-host "programfilesx86=$programfilesx86\\"
