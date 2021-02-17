if (!hasInterface) exitWith {};
waitUntil {!isNull player};

/*
modifiers, links, and font options
<marker name='marker_name'>text with link</marker>
<img image='Image file name jpeg or paa' />
<font color='#FF0000' size='14' face='vbs2_digital'>Text you want in this font</font>
<br><br/> New Line

http://www.w3schools.com/colors/colors_picker.asp

https://community.bistudio.com/wikidata/images/archive/0/0e/20140217182059%21Arma3Fonts.png
*/

player createDiaryRecord ["Diary",["Medical System","The current system allows all players to administer blood transfusions in order to keep players alive. However the medic role while not as essential as it was performs medical procedures (bandaging, autoinjectors etc) faster and is the only role qualified to administer Epinephrine leading to much quicker revival of team mates. The medic is also the only role capable of using the surgical kits to stitch wounds in the field, and now is also qualified to use the Personal Aid Kit to fully heal a team mate while in a medic vehicle or facility.<br><br/><br><br/>Note surgical kits are one use while PAK's are multi use."]];

player createDiaryRecord ["Diary",["Supports","The following supports require the JTAC to carry a long range radio pack.<br><br/><br><br/>3 x M109 Paladins<br><br/>MQ-9 Reaper Drone<br><br/>AC-130 Spooky II Gunship<br><br/>A-10 - GAU-8 Gun and AGM65D MAvericks<br><br/>F-35 Lightning - GBU-39 500lb SDB, GBU-12 500lb Paveway LGB and GBU-32 1000lb GPS guided JDAM.<br><br/>AH-64 Apache equipped with Hellfires, rockets and 30mm chaingun.<br><br/><br><br/>The following supports only require a PRC-152 radio<br><br/><br><br/>Transport Helicopters - MH6 Littlebirds and UH-60 Blackhawks<br><br/>Heavy Lift Chopper - CH-47F Chinook<br><br/>MEDEVAC - ACE medical equipped UH-60 Blackhawk<br><br/>C-130 cargo supply drop."]];