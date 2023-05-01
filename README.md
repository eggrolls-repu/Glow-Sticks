# Glow-Sticks

![Glow Sticks](https://media.discordapp.net/attachments/805660223020072973/1102448440467783750/Glow_Sticks.png)

First of all, I didn't create this addon, the two people that created this are [Nakotuhin](https://steamcommunity.com/profiles/76561198000792947) and [boat gf.](https://steamcommunity.com/profiles/76561198008697129). Here is the [orginal workshop link](https://steamcommunity.com/sharedfiles/filedetails/?id=121438260).

I edited this addon because I was bored and because it's a neat addon, and lua errors are annoying. I added more customization options. I worked pretty hard to get this working for a person that has little lua knowledge. I hope some people enjoy this and please feel free to make a pull request, open a new issue, or comment on the [steam workshop page](https://steamcommunity.com/sharedfiles/filedetails/?id=2969753480). I am always willing to help when I have the time.

<p align="center">
  <br>
  <img src="https://media.discordapp.net/attachments/805660223020072973/1102451911552159744/Text_layer_1.png">
  <br>
  <img src="https://media.discordapp.net/attachments/805660223020072973/1102455276856164402/Screenshot_2023-04-30_213122.png">
  <br>
  sv_glowstickliveforever       // Should Glow Sticks live forever (0-1)<br>
  sv_glowsticklifetime          // Glow Stick lifetime in seconds (Def. 25)<br>
  sv_glowstickthrowforce        // Glow Stick throw force (Def. 12)<br>
  sv_glowstickthrowdelay        // Glow Stick throw delay in seconds (Def. 2)<br>
  sv_glowstickdropdelay         // Glow Stick drop delay in seconds (Def. 2)<br>
  sv_glowstickfullauto          // Full auto Glow Sticks!?!? (Min. 0 Max 1)<br>
  sv_glowstickammo              // Default amount of Glow Sticks players spawn with (Def. 5)<br>
  sv_glowstickdroppedbrightness // Glow Stick brightness when dropped, can go negative (Min. -10 Max 10 Def. 0)<br>
  sv_glowstickbrightness        // Glow Stick brightness when held, can go negative (Min. -10 Max 10 Default 0)<br>
  <br> 
  <img src="https://media.discordapp.net/attachments/805660223020072973/1102460921818906704/Text_layer_1.png">
  <br>
</p>

[![Video 1 of the mod in action](https://img.youtube.com/vi/kkcDjL3PImI/0.jpg)](https://www.youtube.com/watch?v=kkcDjL3PImI)
[![Video 2 of the mod in action](https://img.youtube.com/vi/MJugLm7j-uc/0.jpg)](https://www.youtube.com/watch?v=MJugLm7j-uc)


<details>
  <summary>(For google searches) Fixed these errors</summary>

  [glow-sticks] lua/includes/extensions/entity.lua:192: attempt to index local 'col' (a number value)
    1. SetColor - lua/includes/extensions/entity.lua:192
     2. unknown - addons/glow-sticks/lua/weapons/weapon_glowstick_blue/shared.lua:66
      3. SelectWeapon - [C]:-1
       4. unknown - gamemodes/sandbox/gamemode/commands.lua:853
        5. unknown - lua/includes/modules/concommand.lua:54

  Giving Here lies Eggroll's Eggrolls a weapon_glowstick_blue

  [glow-sticks] Trying to remove server entity ent_glowstick_glow_blue#325 on client!
    1. unknown - addons/glow-sticks/lua/weapons/weapon_glowstick_blue/shared.lua:144 (x2)

  [Here lies Eggroll's Eggrolls|3|STEAM_0:0:38357989] Lua Error:

  [glow-sticks] Trying to remove server entity ent_glowstick_glow_blue#325 on client!
    1. unknown - addons/glow-sticks/lua/weapons/weapon_glowstick_blue/shared.lua:144


  [Here lies Eggroll's Eggrolls|3|STEAM_0:0:38357989] Lua Error:

  [glow-sticks] Trying to remove server entity ent_glowstick_glow_blue#325 on client!
    1. unknown - addons/glow-sticks/lua/weapons/weapon_glowstick_blue/shared.lua:144

</details>
