<div align="center">

# Zhaba-Shot: Frog Photographer

<img src="/sprites/beach.png">

[![Play on itch.io](https://img.shields.io/badge/Play_it-on_itch.io-FA5C5C?style=for-the-badge&logo=itchdotio&logoColor=white)](https://cocotrilo.itch.io/zhaba-shot)
![Godot](https://img.shields.io/badge/Godot-478CBF?style=for-the-badge&logo=godotengine&logoColor=white)
![GDScript](https://img.shields.io/badge/GDScript-355570?style=for-the-badge&logo=godotengine&logoColor=white)

You are a frog photojournalist living in the sewers beneath ZhaboGrad the king needs proof of whats poisoning the city a blinding beach, a dark alley with toxic water and the city nuclear food facility grab your camera nail the shot, and show him the truth!

</div>

## Table of Contents
- [Features](#features)
- [Controls](#controls)
- [How It was Made](#how-it-was-made)
- [The reason behind this project](#the-reason-behind-this-project)

## Features

- Top-down view of the polluted zhabograd city
- Real camera mechanics: Rule of thirds framing, full exposure triangle(aperture, shutter speed, ISO )
- Each Mission teaches a different real photography lesson (overexposure, underexposure, motion)
- Randomized camera settings every time you enter a mission, no memorizing one pattern
- Custom GLSL shaders for brightness, blur, film grain, built from SCRATCH
- pixel art, original sprites!, and free copyright music

## Controls 
- **Arrow keys / WASD** — move around
- **Walk into a photo spot** — enters camera mode
- **Drag the frame** — compose your shot using the rule of thirds
- **Sliders** — adjust aperture, shutter speed, and ISO to get the right exposure
- **Shoot button** — take the photo and see your score

## How it was made

Built in Godot 4 with GDSscript. The exposure effects (Brightness, motion blur, and ISO grain ) are custom shaders written in GSLS - so it was made with no external photo libraries, everything is calculated per-pixel in real TIME im super proud of that, also the photo scoring system compares the player framing, and exposure settings against an IDEAL value set per mission

## The reason behind this project

This project was bult for hack club darkroom ysws, After building two photo editing tools ( a live photo wall and a face blurring app) I really wanted to try teaching photography itself, not through filters, but through gameplay
instead of processing images, this time the player has to actually learn what aperture, shutter speed and ISO do, one polluted photo at a time! and I was watching GOT, so this idea of kingslanding and flea bottom crossed my mind so why not, and also I was watching frogs and yeah it was a mix...


## Special thanks

Thanks to [Trulle1234](https://github.com/Trulle1234) and the [HackClub](https://hackclub.com) [DarkRoom](https://darkroom.hackclub.com) community for making this possible.

## You might also like

Check out some of my other projects:
- [BobaBashPhotoWall](https://github.com/Cocotrilito/BobaBashPhotoWall) - A live, shared photo wall for boba bash events world wide!
- [BlurryProject](https://github.com/Cocotrilito/BlurryProject) - A privacy tool that automatically detects and censors faces in photos!