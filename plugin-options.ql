import javascript

from DataFlow::FunctionNode func
where func = jquery().getAPropertyRead("fn").getAPropertySource()
select func, func.getLastParameter()