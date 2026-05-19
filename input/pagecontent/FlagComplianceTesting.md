
### SearchFlag testing

<h4>Search Flags tests</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th>Reference</th>
<th>Purpose – Demonstrate that the</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th>
<th>Notes</th></tr>

<tr>
<td>Flag-Search 1 – NCCI flag<br /> CSC</td>
<td>application can display a flag and make it apparent to the end user.

</td>
<td>NHI</td>
<td>Output:NCCI Flag displayed on screen in an area apparent to the user of the system</td>
<td>Mandatory </td>
<td></td>
</tr>

<tr>
<td>Flag-Search 2 – NCCI details<br /> CSC</td>
<td>Application can make the information from the link easily available to the end user.

</td>
<td>NHI</td>
<td>Output: Link information is made easily available to the end user (E.g. User can click on the website url and the information is made available, or the application cache the information, makes it available and refreshes every 24 hours.</td>
<td>Mandatory </td>
<td></td>
</tr>

<tr>
<td>Flag-Search 3 – NCCI period<br /> CSC</td>
<td>Application can make all other flag information available to the end user.
<ul>
  <li>Period start</li>
  <li>Period end</li>
 
</ul>

</td>
<td>NHI</td>
<td>Output: Link information is made easily available to the end user (E.g. User can click on the website url and the information is made available, or the application cache the information, makes it available and refreshes every 24 hours.</td>
<td>Mandatory </td>
<td></td>
</tr>

<tr>
<td>Flag-Search 4 – no flag<br /> CSC</td>
<td>Application can gracefully handle scenarios where a patient has no flags
</td>
<td>NHI</td>
<td>Output: No Flag information returned.</td>
<td>Mandatory </td>
<td></td>
</tr>

<tr>
<td>Flag-Search 5 – Error1<br /> CSC</td>
<td>Application can alert the user that the Flag service cannot be reached.
</td>
<td>NHI</td>
<td>Output: An error message is returned that clearly articulates that the service is unavailable.</td>
<td>Mandatory </td>
<td></td>
</tr>


<tr>
<td>Flag-Search 6 – Error2<br /> CSC</td>
<td>Application can alert the user that the NHI was not found..
</td>
<td>NHI</td>
<td>Output: An error message is returned that clearly articulates that the NHI is invalid or is not found in the NHI. (EM02002 - Cannot be found) </td>
<td>Mandatory </td>
<td></td>
</tr>

<tr>
<td>Flag Search-2 multiple flags<br /> CSC</td>
<td>application can display all flags returned by the service and make them apparent to the end user.
</td>
<td>NHI</td>
<td>Output: Multiple Flags are displayed on screen in an area apparent to the user of the system.</td>
<td>Mandatory – Future scope
Show us how the system is being designed to be extensible.
 </td>
<td></td>
</tr>


</table>
