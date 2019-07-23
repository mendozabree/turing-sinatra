require './app/controllers/application_controller'
require './app/controllers/departments_controller'
require './app/controllers/categories_controller'

use DepartmentsController
use CategoriesController
run ApplicationController
