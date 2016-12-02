<?php
require 'vendor/autoload.php';
include 'lib.php';

use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;
use \Slim\App as App;
use \Slim\Container as Container;
use Slim\Views\PhpRenderer as PhpRenderer;
use Slim\Views\Twig as Twig;



$configuration = [
		'settings' => [
				'displayErrorDetails' => true,
		],
		'renderer' => new Twig("./templates")
];
$container = new Container($configuration);
$app = new App($container);


$app->get('/', function (Request $request, Response $response) {
	return $this->renderer->render($response, "/programmes.phtml");
});



$app->get("/api/programmes/{id}", function(Request $request, Response $response){
	$val = $request->getAttribute('id');
	$programmes = getAllProgrammes($val);
	
	$response = $response->withJson($programmes);
	return $response;
});

$app->get("/api/data/{id}", function(Request $request, Response $response){
	$val = $request->getAttribute('id');
	$datas = getAllData($val);
	
	$response = $response->withJson($datas);
	return $response;
});

$app->get("/api/data2/{id}", function(Request $request, Response $response){
	$val = $request->getAttribute('id');
	$datas = getAllData2($val);
	
	$response = $response->withJson($datas);
	return $response;
});

$app->run();

?>


