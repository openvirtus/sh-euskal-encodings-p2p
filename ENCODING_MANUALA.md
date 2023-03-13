Euskal Encodings - P2P taldea - Encoding Manuala
================================================

Manual txiki honek ikus entzunezko materiala IPFS bitartez nola
elkarbanatu esplikatzen du. Segitu beharreko pausoak 3 dira:

1.- Extraitu edukia, eduki hau ".webm" formatuan egon behar du.
2.- Elkarbanatu fitxategia IPFS bitartez, pauso honez gero lotura
    bat lortuko duzu honako itxura duena:
    
    https://ipfs.io/ipfs/HASH-BAT?filename=FITXATEGIA.webm

3.- Igo lotura euskal-encodings web horrialdera. Mantendu pizturik
    zure ordenagailua egun batzuk beste pareek fitxategia jaso arte.
    
    https://www.euskal-encodings.eus/smf/

## "Mahaigain IPFS" programaren instalazioa.

Lehenik "Mahaigain IPFS" (ingelesez IPFS Desktop) instalatu behar
duzu. Nahi izan ezkero manualki egin dzakezu honako estekatik:

    https://docs.ipfs.tech/install/ipfs-desktop/

Bestela, gure komando lerro herraminta erabili dezakezu:

    (1) Joan fitxategi honen karpetara.
    (2) Exekutatu "terminala.bat".
    (3) Exekutatu "ee-ipfs-instalatu".
    (4) Exekutatu "ipfs-desktop" zerbitzaria abiatzeko.

Behin instalaturik abio automatikoa ahalbidetzea. Horretarako egin
klik beheko ikonoari, "ezarpenak", "abio automatikoa".

## "FFMPEG" programaren instalazioa (opzionala).

Sartu terminalean eta exekutatu:

    > ee-ffmpeg-instalatu

Honek FFMPEG deskargatu eta instalatuko dizu. Behin instalaturik
edukia erraz birkodifika dezakezu "webm" formatura "ee-birkodifikatu"
erabiliz.

    > ee-birkodifikatu FITXATEGIA

## Zergatik erabili behar da webm formatua?

IPFS-en streaming egiteko "webm" formatua behar da, informazio gehiago
honako estekan irakurri dezakezu:

https://ipfs.video/

## Nola konpartitzen da IPFS bitartez?

Arrastratu edukia aplikaziora, saguaren ezker klik, "Ezarri pina", "nodo
lokala". Behin hori eginda saguaren ezker klik, "konpartitu".

Komando lerrotik ere egin daiteke, gogoratu "add" bitartez sartutako
fitxategiak automatikoki pineatzen direla.

    > ipfs files mkdir -p /ee                 : /ee karpeta sortu IPFS lokalean. 
    > ipfs add FITXATEGIA.webm --to-files /ee : Sartu fitxategia IPFS lokalean.
    > ipfs files ls /ee                       : Bistaratu fitxategiak.

## Txertatu dezaket edukia web orri batean?

Bai jakina, emen adibidea:

    <!DOCTYPE html>
    <html>
      <head>
        <meta charset="UTF-8">
      </head>
      <body>
        <center>
          <video controls height="100%">
            <source src="https://ipfs.io/ipfs/QmdtJR4jSCSkQ4P6q3gx3PmbJJZgT6vXRuVTnJs5LpNHmx?filename=eu--Lukas_Ahatea--Ahate_Bizien_Gauan--EuskalEncodings.webm">
          </video>
        </center>
      </body>
    </html>
