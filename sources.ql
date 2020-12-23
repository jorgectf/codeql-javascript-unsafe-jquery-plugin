import javascript

predicate isSource(DataFlow::Node source) {
    exists(DataFlow::FunctionNode func | 
        func = jquery().getAPropertyRead("fn").getAPropertySource() and
        source = func.getLastParameter()
    )
}

from DataFlow::Node node
where isSource(node)
select node