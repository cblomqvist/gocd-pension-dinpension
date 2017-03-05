#!/usr/bin/env bash
set -e
mkdir -p output
INPUT=upstream/output
INKOMSTPENSION=$(cat ${INPUT}/inkomstpension.txt)
PREMIEPENSION=$(cat ${INPUT}/premiepension.txt)
TJANSTEPENSION=$(cat ${INPUT}/tjanstepension.txt)
PRIVATPENSION=$(cat ${INPUT}/privatpension.txt)
TOTALT=$(echo "scale=0; (${INKOMSTPENSION} + ${PREMIEPENSION} + ${TJANSTEPENSION} + ${PRIVATPENSION}) / 1" | bc -l)

echo "
<html>
<body>
<h1>Din pension</h1>
<table>
<tbody>
<tr>
<td>Inkomstpension</td>
<td>${INKOMSTPENSION}</td>
</tr>
<tr>
<td>Premiepension</td>
<td>${PREMIEPENSION}</td>
</tr>
<tr>
<td>Tj&auml;nstepension</td>
<td>${TJANSTEPENSION}</td>
</tr>
<tr>
<td>Privatpension</td>
<td>${PRIVATPENSION}</td>
</tr>
<tr>
<td>Totalt</td>
<td>${TOTALT}</td>
</tr>
</tbody>
</table>
</body>
</html>
" > output/dinpension.html

