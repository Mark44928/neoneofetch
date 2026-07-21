#!/usr/bin/env bash

# Auto-detect Termux
if [[ -d /data/data/com.termux ]]; then
    PREFIX="${PREFIX:-/data/data/com.termux/files/usr}"
else
    PREFIX=/usr
fi

DESTDIR=

while [[ "$1" ]]; do
    case "$1" in
        --prefix)  PREFIX="$2";  shift 2 ;;
        --destdir) DESTDIR="$2"; shift 2 ;;
        --help|-h)
            echo "Usage: $0 [--prefix <dir>] [--destdir <dir>]"
            exit 0
        ;;
        *) echo "Unknown option: $1"; exit 1 ;;
    esac
done

MANDIR="${PREFIX}/share/man"

echo "Installing neoneofetch to ${DESTDIR}${PREFIX}/bin/..."
mkdir -p "${DESTDIR}${PREFIX}/bin"
mkdir -p "${DESTDIR}${MANDIR}/man1"
cp -p neoneofetch "${DESTDIR}${PREFIX}/bin/neoneofetch"

# Fix shebang for systems without Termux bash path
if [[ ! -f /data/data/com.termux/files/usr/bin/bash ]]; then
    sed -i.bak '1s|^#!/data/data/com.termux/files/usr/bin/bash$|#!/usr/bin/env bash|' \
        "${DESTDIR}${PREFIX}/bin/neoneofetch"
    rm -f "${DESTDIR}${PREFIX}/bin/neoneofetch.bak"
fi

[[ -f neoneofetch.1 ]] && cp -p neoneofetch.1 "${DESTDIR}${MANDIR}/man1"
chmod 755 "${DESTDIR}${PREFIX}/bin/neoneofetch"
echo "Done."
