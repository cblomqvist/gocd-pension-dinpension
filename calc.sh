#!/usr/bin/env bash
set -e
mkdir -p output
INKOMSTPENSION=$(cat input/inkomstpension/res.txt)
PREMIEPENSION=$(cat input/premiepension/res.txt)
TJANSTEPENSION=$(cat input/tjanstepension/res.txt)
PRIVATPENSION=$(cat input/privatpension/res.txt)
TOTALT=$(echo "scale=0; (${INKOMSTPENSION} + ${PREMIEPENSION} + ${TJANSTEPENSION} + ${PRIVATPENSION}) / 1" | bc -l)

echo "
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
" > output/dinpension.html

