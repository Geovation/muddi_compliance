# MUDDI Compliance
Project for the development of validation techniques to ensure ingress and egress of data is MUDDI (Model for Underground Data Definition and Integration) compliant.

## Database
We sought to examine how a schema that conformed to MUDDI could be created to support the ingestion of typical utility source data. We organised the OGC code sprint work into creation of a backend to store MUDDI-compliant data and a front end to display it. To facilitate the task, we had to transform open utility data into MUDDI-compliant data.

The datasets we chose to ingest in this example are referenced [here](https://github.com/opengeospatial/developer-events/wiki/muddi%E2%80%90overview#:~:text=A%20number%20of%20datasets%20a%20freely%20available%20on%20open%20data%20portals%2C%20operated%20by%20certain%20network%20utility%20operators%2C%20please%20download%20these%20directly).

The conceptual schema is a direct interpretation of the MUDDI conceptual model as a database entity relationship diagram. Each feature type in the model is represented by a table in the conceptual schema.

However in the conceptual model there are both ‘real’ feature types and ‘abstract’ feature types.  Real feature types are represented as tables in the logical schema, and these tables inherit attribution from the abstract feature types above them in the conceptual model. The logical schema illustrates the minimum attribution required for MUDDI compliance, and it is expected that any implementation would introduce additional attribution as required for their individual use case.

## JSON-FG
The aim of the JSON-FG work was to investigate creating a MUDDI compliant method for supporting the exchange of underground asset data between trusted parties. Using JSON-FG we could support a MUDDI schema while retaining the correct EPSG code.