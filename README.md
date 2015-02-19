After Effects Scripting Sublime Text Package
============================================

Sublime Text package for After Effects. 

## Build System

The build system will : 

1. Copy your current .jsx file in your AfterEffects Scripts folder so you don't have to develop in that folder.
2. Run the script in After Effects.

## Installation

### Git clone

`git clone https://github.com/seblavoie/After-Effects-Scripting-Sublime-Text-Package.git AfterEffects`

### With zip file

- Download and unzip in your Sublime Text 2 packages folder.
- Rename the folder to `AfterEffects`.

The "Packages" directory is located at:

- OS X

  <pre>~/Library/Application Support/Sublime Text 2/Packages</pre>

- Linux

  <pre>~/.config/sublime-text-2/Packages/</pre>

- Windows

  <pre>%APPDATA%/Sublime Text 2/Packages/</pre>


## Usage

Open Sublime Text and go `Tools > Build System > AfterEffectScripting` and build with `⌘ + B` (OS X) `CTRL + B` (Windows)


## Settings(OS X)

Go `Sublime Text > Preferences > Settings - User` and add following attributes.

```
{
	...
	"build_env": {
		"AE_VERSION": "CC 2014",
		"AE_SUBDIR": "User"
	}
}
```