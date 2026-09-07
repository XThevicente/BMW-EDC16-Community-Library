BMW EDC16 Suite - Biblioteca

La carpeta library/profiles contiene perfiles de mapas validados.
No se suben BIN completos automáticamente.

Para sincronización comunitaria, configura library/config.json:
  manifest_url = URL HTTPS de un manifest.json
El manifest debe contener profiles[] con sw, url y sha256. Cada perfil remoto debe ser JSON con sw, hw, family, version, exact y maps[].

La Suite actualiza la biblioteca automáticamente al arrancar cuando auto_update=true y manifest_url está configurada.
