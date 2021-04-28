const
  express = require( "express" ),
  app = express(),
  neo4j = require( "neo4j-driver" ),
  driver = neo4j.driver( 'bolt://neo4j', neo4j.auth.basic('neo4j', 'password') ),
  session = driver.session({ defaultAccessMode: neo4j.session.READ })

app.listen( httpPort, () => {
  console.log("Serving HTTP on port: " + httpPort )
})

process.on("exit", function () {
  console.info( "About to exit, waiting for remaining connections to complete");
  app.close();
  driver.close()
});