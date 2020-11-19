# Oklahoma_Injection_Earthquake_Deltas
Exploring pressures within the deep primary Oil and Gas injection zone, the Arbuckle Formation 

I'm looking for when the Arbuckle began to "fill up" as the system reached equilibrium. Beyond equilibrium, the formation starts to push back against the injectors. It is at this point where problems start occurring. Faults are under immense stress and when formation pressures push fluids in between fault planes, they act as lubrication due to the incompressibility of water. This lubricity changes a system that was at equilibrium and increases stress along the fault plane above and below the fluid invasion zones. The reason for the increased stress is because the fluid is causing slippage already but is undetectable: the fault is slipping aseismically! There are no earthquakes associated with this slippage. The earthquake will come from the unlubricated locations above and below on the fault plane and it is at these locations where we see the seismicity as they finally slip.

For some background, a fault does not move all at once. They act more like a millipede where slippage occurs along the plane in isolated locations but are still part of a mechanical ecosystem. A slippage at point A will create increased stress at Point B and C. If point C can't handle the additional stress over time, it slips as well, increasing stress at point B even further. Point B can't handle the double stress increase and slips as well creating new stress at a point D etc etc.



SELECT api, sum("Volume_BPD") AS total_volume, min("Pressure_PSI") AS minimum_psi, 
max("Pressure_PSI") AS maximum_psi, round(avg("Pressure_PSI")) AS average_psi, count("Volume_BPD") AS total_well_reports,
"Latitude" AS latitude, "Longitude" as longitude

FROM Injection1214

		WHERE "Pressure_PSI">5
		AND "Volume_BPD">100
		AND "Directive_Status" != 'NOT AN ARBUCKLE WELL'
		GROUP BY api, latitude, longitude

This is my SQL code to clean the data up. I'm excluding erroneous data points (-999 table values) and low volume injectors (volume_BPD > 100).

Additionally, I'm not interested in PSI values of less than 5. The Arbuckle formation was favored as an injection zone because it was a vacuum allowing limitless injection volumes. Due to this negative pressure, values of 0 psi are not uncommon.
