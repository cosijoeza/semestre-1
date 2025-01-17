# Base de Datos
El ambiente de trabajo que nos ayudará a ejecutar nuestros proyectos está exportado en el archivo `databases.yml`

Para crear este ambiente ejecutamos:

```
conda env export -n databases -f databases.yml
```
Activamos el ambiente
```
conda activate databases
```

Exportar nuestro ambiente
```
conda env create -f databases.yml
```
[more info...](https://docs.conda.io/projects/conda/en/latest/commands/env/create.html)