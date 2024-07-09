#!/bin/bash

# Pedir al usuario que ingrese la ID del video
echo "Por favor, ingresa la ID del video de Wistia:"
read video_id

# Comando para descargar el video usando la ID proporcionada
wget -qO- "http://fast.wistia.net/embed/iframe/$video_id" \
| sed -n -e 's#^\s*W\.iframeInit(\(.*\), {[^}]*});\s*$#\1#p' \
| jq -r '."assets"[0]."url" | sub("\\.bin$"; ".mp4")' \
| xargs curl -O

echo "Descarga completada."
