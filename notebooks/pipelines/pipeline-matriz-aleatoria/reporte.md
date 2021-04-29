# Pipelines - Primera implementación con Kale y Kubeflow



El propósito de este reporte es mostrar el primer _pipeline_ implementado con `kale` y `kuberflow` en la nube de computo de AWS.

## Preliminares

**Configuraciones del notebook de Kale**

El _notebook_ utilizado tiene las siguientes configuraciones en `Kale`:

![pipeline_confkale](./imgs/pipeline_confkale.png)



**_Pipeline_**

Este _pipeline_ tiene como objetivo crear una matriz de distancias aleatorias, realizar la búsqueda de los mejores hiperparámetros asociados al algoritmo ACO-TSP implementado, encontrar la mejor solución, visualizarla y guardarla en disco. 

- Imports y definición de paŕametros del _pipeline_

![pipeline_rdn_prelims](./imgs/pipeline_rdn_prelims.png)

- Pasos

![pipeline_rdn_steps](./imgs/pipeline_rdn_steps.png)



Al compilar el grafo direccionado del _pipeline_ obtenemos lo siguiente:

![pipeline_rdn_graph](./imgs/pipeline_rdn_graph.png)



**Crear experimento y ejecutar _pipeline_**

En `kuberflow` creamos un experimento con el _pipeline_ generado anteriormente:

![pipeline_experiment](./imgs/pipeline_experiment.png)



**Validación del experimento con el _pipeline_**



![pipeline_rdn_success](./imgs/pipeline_rdn_success.png)



## Referencias

- Repósitorio de Análisis Nuḿerico y Cómputo Científico (Wiki de Minikube y AWS):  https://github.com/ITAM-DS/analisis-numerico-computo-cientifico/wiki/6.Minikube-y-AWS

- Kubeflow Automated pipeLines Engine (KALE): https://github.com/kubeflow-kale/kale

  

