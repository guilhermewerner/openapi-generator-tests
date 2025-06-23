#!/usr/bin/env pwsh

$header = @"
// Copyright (c) Tribufu. All Rights Reserved.
// SPDX-License-Identifier: MIT

"@

$lines = Get-Content $args[0] -Raw
$linesArray = $lines -split "`r`n|`n"
$updatedContent = $header + "`n" + ($linesArray[12..$linesArray.Length] -join "`n")

$updatedContent | Set-Content $args[0] -NoNewline
