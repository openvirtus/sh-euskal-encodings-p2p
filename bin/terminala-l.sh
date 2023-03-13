#!/bin/sh -e
cd "${ROOTDIR}"
export Path="${USERPROFILE:-${HOME}}/.bin;${Path}"
cat <<-EOF
===================================================
= Ongietorri Euskal Encodings P2P lan ingurura.  ==
===================================================

EOF
if ! which ffmpeg >/dev/null 2>&1; then
    cat <<-EOF
	(*) FFMPEG instalatzeko honako komandoa exekutatu:
	    > ee-ffmpeg-instalatu
	EOF
fi
if ! which ipfs-desktop >/dev/null 2>&1; then
    cat <<-EOF
	(*) IPFS instalatzeko honako komandoa exekutatu:
	    > ee-ipfs-instalatu
	EOF
fi
cat <<-EOF
(*) Zerbitzari manuala: Proiektu honi lagundu nai badiozu zure
    ordenagailuaren almazenamendua eta internet sarearen bitartez
    irakurri honako manuala:
    > less ZERBITZARI_MANUALA.txt

(*) Encoding manuala: Edukia igo nai baduzu, irakurri honako manuala:
    > less ENCODING_MANUALA.txt

(*) Script-ak "ee-" rekin hasten dira. Denek "--help" argumentua
    jasotzen dute.

EOF
exec sh
