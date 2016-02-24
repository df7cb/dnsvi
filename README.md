dnsvi - edit dynamic DNS zones in vi
====================================

dnsvi is a frontend for nsupdate. Given a DNS zone name, it uses dig -t AXFR to
get all the records in a zone. It then spawns your favorite editor, and upon
completion, builds a list of "update add" and "update delete" statements to
feed to nsupdate.

Dependencies:

  * perl
  * Sort::Naturally (Debian: libsort-naturally-perl)
  * dig, nsupdate (Debian: dnsutils)
  * some $EDITOR (Default: sensible-editor)

Screenshot
----------

    $ dnsvi -k dyn.df7cb.de.key @ns.df7cb.de dyn.df7cb.de
    [...vi...]
    nsupdate commands queued:
    update delete fermi.dyn.df7cb.de. IN A 127.0.0.1
    update add    lehmann.dyn.df7cb.de. 600 IN A 127.0.0.1
    update add    volta.dyn.df7cb.de. 2419200 IN SSHFP 3 1 DC66C1C5E9ED611FBDF0A9E1F701B1F8C38A6C1D
    send
    answer

    [S]end, [e]dit, send and edit [a]gain, [q]uit: [s]

Author
------

Christoph Berg <myon@debian.org>
