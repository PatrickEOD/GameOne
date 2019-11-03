# GameOne - simple api-based game

## Modules
### Database
#### Description
Database for storing all data
#### Details
Postgresql v. 12.0

### Config-server

### Universe-management

### Count-down-management

### Planet-management

### Fleet-management

### User-account-management

### Backend-for-frontend

### Desktop-frontend-app

## Technical
### Ports used
<table>
    <tr>
		<th>Module</th>
		<th>Origin port</th>
		<th>Destination port</th>
		<th>Dependencies</th>
		<th>Deployment</th>
    </tr>
	<tr>
	    <th>database</th>
	    <td>5432</td>
	    <td>9000</td>
	    <td>none</td>
	    <td>`docker-compose up`</td>
	</tr>
</table>

