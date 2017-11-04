---
layout: single
title:  "Broken-3D-Printer"
date:   2017-11-04 00:43:12 -0700
categories: projects
---

A couple of weeks ago my 3D printer, Monoprice Select Mini v1 has broken down. The x-axis motor has developed horrible grinding noise while it moves. My initial thought was to confirm the noise was caused by the x-axis stepper motor. I thought it was either the motor had gone bad, or the movement of the belt was causing some parts to grind and cause the noise. Through trial and error I managed to find the source of the noise.

The x-axis stepper motor was vibrating violently enough to make noise that would echo throughout the inside of the printer.

I jumped to conclusions and determined that the motor was bad. This was a mistake. After ordering a replacement motor. I fitted it on the new motor and the issue was still present. I then switch the circuitry of the x and the y axis motors and the issue jumped to the y-axis motor. It seems that the issue was not the motor, but some bad connections on the circuit board. 

I reheated some of the connections and each individual pin on the x-axis driver chip. I tested the motor and it was working again! But unfortunately a couple of print hours later the y axis motor started developing the same problem. I resoldered each individual pin on the y-axis driver and the motor issue was fixed. I put everything back together only to discover that the x axis limit switch was not detecting anymore. It seems that there was a cold solder on the ground pin of the limit switch. resoldered that and everything was functional again for another 30 hours of print time. Adn then the x-axis driver started developing the same issue again. I got fed up with chasing down problem on an obviously faulty circuit board and ordered a v2 circuit board.


