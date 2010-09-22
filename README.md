Gitary
======

Gitary is a diary based on Git. You take notes in your favorite editor
and the script will auto-commit it into a Git repository. Every day, a
new file will be created.

Using Git as a backend allows you to easily share your notes between a
desktop pc and your laptop. Plus it's quite safe and entries don't get
lost.

Please have a look at the manpage for detailed instructions. If in
doubt, you can view it with:

	$ gitary --help

You may also want to have a look at the example configuration file.


Dependencies
------------

* [bash](http://www.gnu.org/software/bash/bash.html)
* [gawk](http://www.gnu.org/directory/GNU/gawk.html) for searching your
  entries.
* [man](http://www.nongnu.org/man-db/) which will also pull
  [groff](http://www.gnu.org/software/groff/groff.html) is needed to
  display the help page. You also need
  [less](http://www.greenwoodsoftware.com/less) to show the help page
  but you really should have that one installed anyway.
* [git](http://git-scm.com/). Whoa.


TODO
----

* Clean up Vim files.
