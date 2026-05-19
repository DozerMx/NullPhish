
# NullPhish v2.2  

**Copyright © 2023 HackPurgatory. Todos los derechos reservados.**

## Descripción  
NullPhish v2.2 es una herramienta de phishing que incluye:

- Captura **real** de credenciales con registro detallado  
- Servidor HTTP embebido en Python  
- Túnel automático vía Cloudflare sin cuenta  
- Geolocalización extendida por IP (tres APIs combinadas)  
- Detección de VPN, proxy, Tor y IPs abusivas  
- Datos ASN enriquecidos (ISP, WHOIS, dominio, rango)  
- Mapa directo con coordenadas (Google Maps)  
- Selección automática de puerto libre  
- Menú interactivo para plantillas (Facebook / Instagram)  
- Consola enriquecida con arte ASCII y colorama  
- Autodetección de plataforma víctima (Windows, Android, iOS...)  
- Instalación automática de dependencias requeridas  
- Acortador de URLs integrado

## Instalación Básica  

```bash
git clone https://github.com/DozerMx/NullPhish.git
cd NullPhish
python3 NullPhishV2.py
```

> Asegúrate de tener `cloudflared` instalado en tu sistema.  
> Si faltan dependencias, NullPhish puede instalarlas por ti automáticamente.

---

## Ejemplo de salida en consola  

[*] NullPhish v2.2 - Phishing Tool
[*] Use responsibly for educational purposes only
[*] Created by: @DozerMx - Null Signal Network

------------------------------------------------------------
*             Información de la Víctima                  *
------------------------------------------------------------

[+] Fecha y Hora: 2025-07-21 03:33:47
[+] IP: 186.28.xxx.xxx

-------------------- UBICACIÓN --------------------
[+] País: Colombia
[+] Región: Bogotá D.C.
[+] Ciudad: Bogotá
[+] Código Postal: 111111
[+] Zona Horaria: America/Bogota
[+] Coordenadas: 4.6097,-74.0817
[+] Mapa: https://www.google.com/maps?q=4.6097,-74.0817

---------------- INFORMACIÓN DE RED ----------------
[+] ISP: Claro Colombia
[+] ASN: AS10620
[+] Proxy: No
[+] VPN: No
[+] Tor: No
[+] Abuser: No

---------------- DATOS ECONÓMICOS ----------------
[+] Moneda: COP
[+] Tasa de Cambio: 3924.52

---------------- CREDENCIALES ----------------
[+] Correo/Usuario: victima@gmail.com
[+] Contraseña: password123

----------- INFORMACIÓN DEL DISPOSITIVO -----------
[+] User-Agent: Mozilla/5.0 (Linux; Android 13; ...)
[+] Plataforma: Android

[*] Credenciales capturadas
[*] Ruta de almacenamiento: /.../NullPhish/credentials.txt
------------------------------------------------------------

## Autor  

- Desarrollado por: **DozerMx**
- Proyecto de: **Null Signal Network**
- GitHub: https://github.com/DozerMx

---

NullPhish v2.2
