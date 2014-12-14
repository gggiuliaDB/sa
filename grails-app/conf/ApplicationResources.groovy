modules = {
    application {
        resource url:'js/application.js'
    }
    bootstrap {
        dependsOn 'jquery'
        resource url:'js/bootstrap.min.js', disposition: 'head'
//        resource url:'css/bootstrap.css'        
    }
//    core {
//        resource url:'css/main.css'
//        resource url:'css/mobile.css'
//        resource url:'css/sa.css'             
//    }    
    
}