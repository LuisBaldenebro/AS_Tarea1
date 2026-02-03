#!/bin/bash

echo "Diagnostico del Sistema"
echo "Nombre del Sistema"
hostname

echo ""
echo "Direccion IP"
ip -4 addr show | grep inet | grep -v 127.0.0.1 | awk '{print $2}'

echo ""
echo "Espacio en el Disco"
df -h /
