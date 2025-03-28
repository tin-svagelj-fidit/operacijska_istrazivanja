#show heading.where(level: 1): it => align(center, it)

#set par(justify: true)

= Primjer primjene operacijskog istraživanja u praksi
#linebreak()
*Student:* Tin Švagelj#linebreak()
*Smjer:* Informatika

= Optimizacija električne mikromreže

== KONTEKST

Mikromreže (engl. _micromesh_) temeljene na obnovljivim izvorima energije omogućuju dekarbonizaciju energetskog sektora uz ekološke i ekonomske. Ključna prednost je dijeljenje energije unutar energetske zajednice (engl. _Energy Community_, EC), gdje potrošači također postaju i proizvođači.

Cilj ovog istraživanja je bio složiti sustav koji određuje idealno vrijeme kupnje, prodaje, skladištenja i dijeljenja energije, kao i proizvodnih kapaciteta svakog vrha (engl. _node_).

Analiziran je stvarni slučaj u Austriji s devet sudionika povezanih na mrežu.

== KORIŠTENE METODE

Razvijen je napredni model koji koristi djelomično cjelobrojno linearno programiranje (engl. Mixed-Integer Linear Programming; MILP) za optimalno planiranje i upravljanje mikromrežom, uz prijenos energije među sudionicima (peer-to-peer).

Razmatrana su tri različita referentna slučaja i sukladni scenariji optimizacije i ulaganja u mikromrežu.

Prvi referentni slučaj odražava trenutno stanje, gdje višak energije iz postojećih fotonaponskih (engl. _photovoltaic_; PV) sustava može biti isporučen samo u mrežu. Optimizacijski scenarij istražuje koliko se vlastita potrošnja PV energije može povećati omogućavanjem prijenosa energije između sudionika, smanjujući tako ukupne godišnje troškove energije i emisije CO2.

Dva dodatna referentna slučaja su greenfield scenariji#footnote[ne oslanjaju se na postojeće infrastrukture], s različitim tarifnim modelima (bez i s tarifama za potrošnju snage). Optimizacija ovih slučajeva određuje optimalna ulaganja u nove PV tehnologije i tehnologije skladištenja energije.

== POSTIGNUĆA

Rezultati optimizacije pokazuju povećanje potrošnje vlastite energije unutar energetske zajednice, s 26.5% na 65.2% - jer se višak prenosi među sudionicima.

Većina proizvedene energije se mora vratiti u vanjsku energetsku mrežu jer nije potrebna članovima zajednice.

Dodatna kupnja obnovljive energije po povoljnijim tarifama smanjila je ukupne godišnje energetske troškove za 8,73%, dok su lokalne emisije CO2 smanjene za 14,7%.

== IZVORI INFORMACIJA

A. Cosic, M. Stadler, M. Mansoor, i M. Zellinger, „Mixed-integer linear programming based optimization strategies for renewable energy communities“, Energy, sv. 237. Elsevier BV, str. 121559, pros. 2021. doi: 10.1016/j.energy.2021.121559.  Dostupno: https://www.sciencedirect.com/science/article/pii/S0360544221018077 (20.03.2025.)