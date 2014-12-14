class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        //"/"(view:"/index")
        "/" (controller:"prodotto")
        "500"(view:'/error')
        //"/prodotto"(action:"index", controller:"prodotto")
        //"/prodotto/"(action:"index", controller:"prodotto")
	}
}
