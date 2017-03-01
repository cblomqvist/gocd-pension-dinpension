set -e
INKOMSTPENSION=$(cat target/inkomstpension.txt)
PREMIEPENSION=$(cat target/premiepension.txt)
TJANSTEPENSION=$(cat target/tjanstepension.txt)
PRIVATPENSION=$(cat target/privatpension.txt)
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
<td>Tjänstepension</td>
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
" > target/dinpension.html

