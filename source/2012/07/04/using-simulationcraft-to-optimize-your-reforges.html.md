---
title: Using SimulationCraft to Optimize Your Reforges
date: 2012-07-04 21:29 -05:00
tags: ['theorycraft']
---

![SimulationCraft Logo ~right](/images/2012/07/04/using-simulationcraft-to-optimize-your-reforges/simc.png)

[SimulationCraft](http://simulationcraft.org/) is a raid simulator for World of Warcraft. It can be used to determine your scale factors: how much one rating of any stat will benefit your DPS. These scale factors can then be plugged into a reforging tool, such as [WoW Reforge](http://wowreforge.com), to optimize your reforges. Here's a quick look at how that's done.

Downloading SimulationCraft
===========================

Download the latest version of SimulationCraft from [simulationcraft.org](http://simulationcraft.org/). The download is not an installer, but a zip file containing the application's files. Extract them from the zip file using a tool like [7zip](http://7zip.org) or [WinRAR](http://www.rarlab.com/), and then run `SimulationCraft.exe` (**not** `simc.exe`!)

Configuration
=============

Upon opening SimulationCraft, switch to the Options tab at the top of the screen. The default global options are fine in most cases; however, you can increase the number of iterations to 50,000 for slightly increased accuracy while increasing the time it takes to run the simulation. You should also try to match the number of threads to the number of CPU cores you have.

The things you want to change are in the Buffs, Debuffs and Scaling tabs. Things like [spell:80398] strongly affect your haste scale factor, so, if you don't routinely get [spell:80398], consider disabling it. Under scaling, analyze only hit rating, crit rating, haste rating and mastery rating. Other stats, like intellect, cannot be reforged; and WoW Reforge implicitly uses hit rating's scale factor for spirit.

Importing Your Character
========================

Switch to the Import tab. You can import a character from several locations, like [CharDev](http://chardev.org), but we're going to use the armory. Drop your armory link in the text box at the bottom and click "Import." SimulationCraft will then download your character and translate it to a daunting `.simc` file. Don't worry, you don't need to touch this at all: just click Simulate at the bottom and wait for it to run. Depending on how powerful your computer is, this might take a while!

![SimulationCraft results ~right](/images/2012/07/04/using-simulationcraft-to-optimize-your-reforges/results.png)

Using WoW Reforge
=================

After the simulation is done, you'll be presented with a page showing your character's DPS among (a lot of) other useful information. You can save this file with the text box at the bottom, but all we're looking for is your scale factors. They're in a table near the top.

It might be tempting to click the WoW Reforge link beneath them, but we want to open WoW Reforge in your browser of choice instead. Enter your character name and realm, then scroll to the bottom. Edit your stat weights to match the ones given to you by SimulationCraft, but **make sure spirit is set to 0.01.** WoW Reforge will then treat spirit as a single point better than hit rating.

![WoW Reforge demo](/images/2012/07/04/using-simulationcraft-to-optimize-your-reforges/wowreforge.png)

The first cap, shown below the scale factors and results, should default to at least 1742 Hit, with a stat weight of 0 beyond that. After you've checked, click Optimize on the bottom. Your new, optimized reforges will appear in the table!

WoW Reforge Doesn't Work!
-------------------------

WoW Reforge is powered by [Microsoft Silverlight](http://www.silverlight.net/), a platform similar to Flash. You'll need it installed in your browser to use WoW Reforge. If you're having trouble downloading Silverlight through your browser, trying [getting it from Microsoft](http://www.silverlight.net/downloads). You want the Silverlight 5 Developer Runtime for Windows.

If your problem is unrelated to Silverlight, take a look at their [support forum](http://wowreforge.com/portal/Forums/ForumView.aspx?pageid=0&mid=2&ItemID=5) or [FAQ](http://wowreforge.com/portal/faqs.aspx).
