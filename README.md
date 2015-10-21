# janitor-cli

> Herramienta CLI para truncar archivos .log (POSIX)

## Uso

Por ahora, el uso de janitor-cli es truncar archivos log (terminancion `.log`).

###### Arhivo especificos

```zsh
❯ build/janitor-cli truncate logs/parallels.log logs/FaceTime/FaceTime.log
Finished
```

###### Archivos multiples
```zsh
❯ build/janitor-cli truncate logs/*.log
Finished
```

###### Recursivamente
```zsh
❯ build/janitor-cli truncate logs/{**/,}*.log
Finished
```

## Licencia
MIT © 2015
