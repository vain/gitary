Gitary
======

Gitary is a diary based on Git. You take notes in your favorite editor
and the script will auto-commit it into a Git repository. Every day, a
new file will be created.

Using Git as a backend allows you to easily share your notes between a
desktop pc and your laptop. Plus it's quite safe and entries don't get
lost.

Further help and command line options:

	$ gitary --help

You may also want to have a look at the example configuration file.


Syntax
------

A diary entry should look like this:

	=== Topics of today ===
	tags: linux git

	Today I discovered Git. It rocks. Can be downloaded from [1].
	
	Some code:
	---8<---
	$ git init whatever
	$ touch hello
	$ git add hello && git ci -m 'Initial'
	---8<---

	[1] http://git-scm.com/

	Some further references:
	-- http://en.wikiquote.org/wiki/Einstein
	-- http://en.wikiquote.org/wiki/Monty_Python%27s_Flying_Circus


The headline and the tagline are the only elements which you need to
use, so the script will know where single entries begin and end. This
(as well as tags, of course) is essential for the search routine.

Vim syntax files are also available. Those are able to brighten up your
gitary life.

When writing code, you can add the name of language after the opening
`---8<---` tag, for example:

	This will be highlighted as a regular bash script:
	---8<---bash
	for i in *
	do
		echo "<$i>"
	done
	---8<---

	That's a python script:
	---8<---python
	print "Hello world."
	---8<---


Currently, there's support for Bash, Python, Ruby, Java, C, Lua and Vim
script. Feel free to extend this list or provide a generic solution.


Blobs
-----

Be aware that everything in your data directory will get tracked by git.
This means that you could create a sub directory named "blobs" (or
whatever you like) in which you can place pictures or any other "binary"
files.


Dependencies
------------

* [bash](http://www.gnu.org/software/bash/bash.html)
* [gawk](http://www.gnu.org/directory/GNU/gawk.html) for searching your
  entries.
* [groff](http://www.gnu.org/software/groff/groff.html) for the help
  page. You also need [less](http://www.greenwoodsoftware.com/less) to
  show the help page but you really should have that one installed
  anyway.
* [git](http://git-scm.com/). Whoa.


TODO
----

* Special support for searching for URLs.
* Clean up Vim files.
