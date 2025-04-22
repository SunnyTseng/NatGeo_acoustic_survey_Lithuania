# Acoustic Survey in Lithuania - NatGeo Early Career Project
A project that funded by National Geographic for collecting and documenting bird sounds in Lithuania. Here is the documentation for the fieldwork preparation.


## Equipment

ARU type (10 song mini & 24 AudioMoth)
equipment sheet

Apps and computer softwares
- AudioMoth configuration software
- AudioMoth flash software
- AudioMoth time chime app
- SongMeter mini app


## Audio recording schedule & audio settings



## Firmware update

### Audio Moth (version 1.11.0)

None of the AudioMoth units, especially those loaned from National Geographic, had the latest firmware. All devices were updated using the steps below:

1. Launch the AudioMoth Flash App, available from the [OpenAcoustic website](https://www.openacousticdevices.info/applications).
2. Ensure the AudioMoth is in USB/Off mode. Connect it to a computer via a micro USB cable (no batteries or microSD card are required).
3. The "Flash" button should turn green when the unit is successfully detected. If not, follow the on-screen instructions to manually enter flash mode.
4. Select the desired firmware version and click "Flash".
5. Once flashing is complete, unplug the unit.


### Song Meter Mini (version 4.6)
All Song Meter Mini units from Birds Canada had outdated firmware, as indicated by warning messages when connecting via the mobile app. The firmware was updated using the following steps:

1. Download the latest firmware from the Wildlife [WildAcoustic website](https://www.wildlifeacoustics.com/account/downloads) (registration required).
2. Copy the firmware file (sys-4.6.smm) onto an empty, formatted SD card.
3. Insert 4 AA batteries and the SD card with the firmware file into the Song Meter Mini unit, then switch the power on.
4. The LED should light up green. Press the Function button until the green LED is aligned with "Load", then long-press the Function button until the green LED begins blinking.
5. Wait for the firmware to load, which may take up to 1 minute.
6. Optionally, connect to the mobile app to verify that the firmware update was successful Finally, switch the unit off.




## Study location and sites
I used Google My Maps to create a site map indicating the locations of the ARUs. To generate evenly spaced grids (1 km for Žuvintas Lake and 3 km for Curonian Spit National Park), I used QGIS, and then imported the resulting KML files into Google My Maps. The grid size was chosen based on the heterogeneity of the habitat in each area.

Site locations were selected to represent the full bird community by considering the following criteria (I found it difficult to assess habitat diversity and accessibility remotely. It's best to consult with local collaborators upon arrival to refine site selection.):

- Positioned at the center of each grid cell
- Accessible by road
- Covering as diverse a range of habitats as possible

Maps can be found here:

- [Zuvintas Lake Biosphere](https://www.google.com/maps/d/edit?mid=1pH6OkkHuZ27Fp8bWOTNObME3h0irAlg&usp=sharing)
- [Curonian Spit National Park](https://www.google.com/maps/d/edit?mid=1Rzk47qVNdNqXr9cCmbVpNEYCmcsJY5Q&usp=sharing)

## Deployment

- Batteries 
- SD cards
- Desiccant pack
- Elastic band
- Zip lock bags
- Tape
- Zip ties
- Buckle straps 


![alt text](<WhatsApp Image 2025-04-17 at 16.14.43_ac44281a.jpg>)
#### Before field (AudioMoth)
1. Insert 3 Energizer batteries and a microSD card into the unit.
2. Secure the unit with an elastic band, taking care not to cover:
    - The white switch
    - The SD card slot
    - The microphone
3. Place the unit into a plastic bag with two desiccant packs, positioning the microphone at the bottom of the bag.
4. Use duct tape to create a loop at the top of the bag for mounting.


#### In the field (AudioMoth)
5. Choose a deployment location with the following in mind:
    - Avoid direct sunlight
    - Seek camouflage (e.g., attach to an intermediate-sized tree)
    - Maintain a consistent height from the ground (about 1.5 m)
    - Avoid locations near moving water, strong wind, vegetation contact, roads, or mechanical noise
6. Thread a zip tie or strap through the loop. Attach the bag to the tree by tighten the zip tie. 
7. Switch the AudioMoth to CUSTOM mode. The red light should turn on, and the green light should blink.
8. Use the phone app to chime the unit and synchronize the correct time. The light should be blinking ONLY green (waiting to record), or blinking ONLY red (recording).
9. Deployment complete.

![alt text](<WhatsApp Image 2025-04-17 at 16.14.46_9951aa0e.jpg>)

#### Before field (SongMini)
1. Insert 4 Energizer AA batteries and a 256 GB SD card into the unit.
2. Turn on the unit and press PAIR to connect it with the mobile app.
3. Use the app to update the configuration, including:
    - Location (for accurate sunrise/sunset times)
    - Device time
    - Unpair the unit and turn it off.

#### In the field (SongMini)
5. Open and turn on the unit, press PAIR to connect.
6. Check the configuration (location, time, schedule, and recoerding until when), and status (SD card, battery). Unpair the unit. 
7. Thread a ziptie or buckled strap to secure the unit on a tree. 
8. Deployment complete.




## Battery/SD card swap

- Date: Between June 9 - 13
- Required equipment: Fresh microSD cards (12 + 1 backup), AA batteries (3 * 12 + 4 * 5 = 55), AudioMoth Chime app (on phone), Paper bags (for used SD cards), Pen, Extra ziplock bags, Zip ties

#### AudioMoth

1. Remove unit from its bag, check LED light status, and switch the white toggle to “USB/OFF”.
2. Remove and replace batteries.
3. Remove the old microSD card and insert a new one. Place the old microSD card in a paper bag. Label the bag with:
    - Date and time
    - Site name
    - LED light status 
    - Old and new microSD card numbers
4. Switch the white toggle to “CUSTOM”. The LED should blink green with stable red.
5. Play the Chime using the AudioMoth app to synchronize time. The red LED should turn off after successful calibration.
6. Secure the unit back into the bag and onto the tree or mounting location. Check completed. 


#### SongMini

1. Open the lid and switch the white toggle to “OFF”.
2. Replace batteries quickly (within 5 minutes to avoid clock reset).
3. Switch the white toggle to “ON”. The Load and Defaults LEDs should both light up green.
4. Close the lid and secure the unit. Check completed

