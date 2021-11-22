"use strict"

    document.addEventListener("DOMContentLoaded",getComentarios);
if(document.getElementById("agregarComentario")){
    document.getElementById("agregarComentario").addEventListener("click",insertComment);
}
    document.getElementById("filtrarComentarios").addEventListener("click",getComentariosByOrder);
    document.getElementById("comentariosPorEstrellas").addEventListener("click",getComentariosByStars);
let estrellas =0;
let id_botin=0;

const API_URL = "api/comentarios/botin/";
const BorrarComentario= "api/comentarios/";


let app = new Vue({
    el: "#app",
    data: {
        titulo: "Comentarios",
        comentarios: [],
        promedioPuntaje:0,
        admin: document.getElementById("esAdmin").value,
        error:"",
    },
    methods: {
        deleteComment: async function(id) {
            try {
                let response = await fetch(BorrarComentario+id,{
                    "method": "DELETE"
                });
                if (response.ok) {
                    console.log("Comentario eliminado con exito");
                }
            }
            catch (e) {
                console.log(e);
            }
            getComentarios();
        }
    }, 
    
});

async function getComentarios() {
    let puntaje = document.querySelectorAll(".puntaje");
    for (let valor of puntaje) {
        valor.addEventListener("click",obtenerValor);
    }
     let id_botin = document.getElementById("id_botin").value;
  
        try {
            let response = await fetch(API_URL+id_botin);
            
            if (response.ok) {
                let comentarios = await response.json();
                app.comentarios = comentarios;
                console.log(comentarios);
                for (const puntaje of comentarios) {
                   app.promedioPuntaje += parseInt(puntaje.puntaje)/comentarios.length;
                }
                console.log(app.promedioPuntaje);
            }
            else {
                console.log("Todavia no hay comentarios en este botin");
                app.error="Todavia no hay comentarios en este botin";
            }
        }

        catch (e) {
            console.log(e);
        }
    }

    function obtenerValor() {
        estrellas= event.currentTarget.value;
    }

 async function insertComment() {
     let id_botin_fk = document.getElementById("id_botin").value;
     let usuario = document.querySelector(".nameUsuario").value;
     let fotoPerfil = document.querySelector(".foto-perfil").value;
     let comentario = document.getElementById("comentario").value;

     let comentarioNuevo = {
         "id_botin_fk":id_botin_fk,
         "usuario":usuario,
         "fotoPerfil":fotoPerfil,
         "comentario":comentario,
         "puntaje":estrellas
     }
     try {
        let response = await fetch(API_URL+id_botin_fk,{
            "method": "POST",
            "headers": {"Content-type": "application/json"},
            "body": JSON.stringify(comentarioNuevo)

        });
        if (response.ok) {
            console.log("Comentario añadido con exito");
        }
     }
     catch (e) {
         console.log(e);
     }     
     getComentarios();
    }

    async function getComentariosByOrder() {
        let id_botin = document.getElementById("id_botin").value;
        let orden= document.getElementById("order").value;
        console.log("ORDEN: "+orden);
        console.log("ID BOTIN: "+id_botin);

        try {
            let response = await fetch(API_URL+id_botin+'/'+orden);
            
            if (response.ok) {
                let comentarios = await response.json();
                app.comentarios = comentarios;
                console.log(comentarios);
                app.promedioPuntaje=0;
                for (const puntaje of comentarios) {
                   app.promedioPuntaje += parseInt(puntaje.puntaje)/comentarios.length;
                }
                console.log("PROMEDIO PUNAJE: "+app.promedioPuntaje);
            }
            else {
                console.log("No hay comentarios en este botin");
                app.error="❌No hay comentarios en este botin para ordenar❌";
            }
        }
        catch (e) {
            console.log(e);
        }
    }
    async function getComentariosByStars() {
        let id_botin = document.getElementById("id_botin").value;
        let puntaje= document.getElementById("puntaje").value;
        console.log("PUNTAJE: "+puntaje);
        console.log("ID BOTIN: "+ id_botin);

        try {
            let response = await fetch('api/coments/botin/'+id_botin+'/'+puntaje);
            if (response.ok) {
                let comentarios = await response.json();
                    app.comentarios = comentarios;
             
                }
                else {
                    console.log("No hay comentarios con ese puntaje");
                    app.error="❌No hay comentarios con ese puntaje❌";
                }
            }
        catch (e) {
            console.log(e);
        }
    }

