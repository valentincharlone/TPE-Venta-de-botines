"use strict"

document.addEventListener("DOMContentLoaded",getComentarios);
document.getElementById("agregarComentario").addEventListener("click",insertComment);
let estrellas =0;

const API_URL = "api/comentarios/botin/";
const BorrarComentario= "api/comentarios/";


let app = new Vue({
    el: "#app",
    data: {
        titulo: "Comentarios",
        comentarios: [],
        promedioPuntaje:0,
        admin: document.getElementById("esAdmin").value 
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

