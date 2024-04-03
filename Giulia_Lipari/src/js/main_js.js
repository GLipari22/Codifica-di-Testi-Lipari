function myFunction() {
    var x = document.getElementById("myTopnav");
    if (x.className === "topnav") {
      x.className += " responsive";
    } else {
      x.className = "topnav";
    }
  }

$(document).ready(function(){

        //caratteristiche
        $(".inside_desc").hide();
        $("#car1").click(function(){
         $(".inside_desc").toggle("slow");
        });
            
        //descrizione fisica
        $(".inside_desc_fis").hide();
        $("#car2 ").click(function(){
        $(".inside_desc_fis").toggle("slow");
        });
        
        //storia editoriale
        $(".hist").hide();
        $("#car3 ").click(function(){
        $(".hist").toggle("slow");
        });

    // Normalizzazioni
   
    $(".normalizzata").click(function(){

        if($(".normalizzata").hasClass("attivato")){

            $(".orig").addClass("nascosto");
            $(".orig").removeClass("visible");
            $(".orig").css("background-color", "#FFFFF0");

        $(".reg").removeClass("nascosto");

        }else{

            $(".orig").removeClass("nascosto");
            $(".orig").addClass("visible");
            $(".orig").css("background-color", "#FF7F50");

        $(".reg").addClass("nascosto");

        }

        $(".normalizzata").toggleClass("attivato");
    
    });

 // Cancellature
 
    $(".cancellature").click(function(){

        if($(".cancellature").hasClass("attivato")){

            $(".del").addClass("nascosto");
            $(".del").removeClass("visible");
            $(".del").css("text-decoration", "none");
            $(".del").css("background-color", "#FFFFF0");


            $(".gap").removeClass("nascosto");
            $(".gap").addClass("visible");

        }else{

            $(".del").removeClass("nascosto");
            $(".del").addClass("visible");
            $(".del").css("text-decoration", "line-through");
            $(".del").css("background-color", "#EEB4B4");


            $(".gap").removeClass("nascosto");
            $(".gap").addClass("visible");

        }

        $(".cancellature").toggleClass("attivato");
        
    });

    // Persona

    $(".persone").click(function(){

        if($(".persone").hasClass("attivato")){

            $(".class_persona").css("background-color", "#FFFFF0");
            $(".class_persona").css("padding", "0px");

        }else{
            
            $(".class_persona").css("background-color", "#CD6090");
            $(".class_persona").css("padding", "4px");

        }

        $(".persone").toggleClass("attivato");

    });

    // BOTTONE PER MOSTRARE LA FORMA ERRATA

    $(".correzioni").click(function(){

        if($(".correzioni").hasClass("attivato")){

            $(".sic").addClass("nascosto");
            $(".sic").removeClass("visible");
            $(".sic").css("background-color", "#FFFFF0");

            $(".corr").addClass("visible");
            $(".corr").removeClass("nascosto");

        }else{

            $(".sic").removeClass("nascosto");
            $(".sic").addClass("visible");
            $(".sic").css("background-color", "#B0171F");

            $(".corr").removeClass("visible");
            $(".corr").addClass("nascosto");

        }      

        $(".correzioni").toggleClass("attivato");

    });

    // Espandi abbreviazioni
    $(".abbreviazioni").click(function(){

        if($(".abbreviazioni").hasClass("attivato")){

            $(".abbr").removeClass("nascosto");

            $(".expan").addClass("nascosto");
            $(".expan").removeClass("visible");
            $(".expan").css("background-color", "#FFFFF0");

        }else{

            $(".abbr").addClass("nascosto");

            $(".expan").removeClass("nascosto");
            $(".expan").addClass("visible");
            $(".expan").css("background-color", "#CD8500 ");

        }

        

        $(".abbreviazioni").toggleClass("attivato");
        
    });
    // Aggiunte
    $(".aggiunte").click(function(){

        if($(".aggiunte").hasClass("attivato")){

            $(".add").css("background-color", "#FFFFF0");

        }else{

            $(".add").css("background-color", "#A9A9A9");

        }

        

        $(".aggiunte").toggleClass("attivato");
        
    });
    // BOTTONE PER MOSTRARE LE AGGIUNTE IN FASE DI CODIFICA

    $(".testoAgg").click(function(){

        if($(".testoAgg").hasClass("attivato")){

            $(".supplied").css("background-color", "#FFFFF0");

        }else{

            $(".supplied").css("background-color", "#8DB6CD");

        }

        $(".testoAgg").toggleClass("attivato");
    
    });
    // BOTTONE PER EVIDENZIARE I LUOGHI

    $(".luoghi").click(function(){

        if($(".luoghi").hasClass("attivato")){

            $(".placeName").css("background-color", "#FFFFF0");
            $(".placeName").css("padding", "0px");

        }else{

            $(".placeName").css("background-color", "#548B54");
            $(".placeName").css("padding", "4px");

        }

        $(".luoghi").toggleClass("attivato");

    });


    /*note persona*/
   $(".note_p").css("display", "none");
   var note_persone=$(".note_p").toArray();
   var i;
   
   $(".person_of_list").click(function(){
       var index_clicked= $(".person_of_list").index(this);
       for (i=0; i<note_persone.length; i++){
           note_persone[i].style.display = "none";
       }
       note_persone[index_clicked].style.display = "block";
   });

   /*note luogo*/
   $(".note_l").css("display", "none");
   var note_luogo=$(".note_l").toArray();
   var j;
   
   $(".place_of_list").click(function(){
       var index_clicked2= $(".place_of_list").index(this);
       for (j=0; j<note_luogo.length; j++){
           note_luogo[j].style.display = "none";
       }
       note_luogo[index_clicked2].style.display = "block";
   });


})

    // EVIDENZIA NUMERO RIGA

    function evidenzia() {
        $(".areaRiga").mouseover(function(){
            var idRiga=this.id;
            
            idRiga="#"+idRiga;
            document.getElementById(idRiga).classList.add("evidenziata");
            
            });  

    
        $(".areaRiga").mouseout(function(){
            var idRiga=this.id;
            
            idRiga="#"+idRiga;
                document.getElementById(idRiga).classList.remove("evidenziata");
            
        });
    };