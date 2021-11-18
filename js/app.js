"use strict"

document.addEventListener("DOMContentLoaded",getComentarios);
document.getElementById("agregarComentario").addEventListener("click",insertComment);

const API_URL = "api/comentarios/botin/";


let app = new Vue({
    el: "#app",
    data: {
        titulo: "Comentarios",
        comentarios: [],
    },
});

async function getComentarios() {
    let puntaje = document.querySelectorAll(".puntaje");
    console.log(puntaje);
     let id_botin = document.getElementById("id_botin").value;
  
        try {
            let response = await fetch(API_URL+id_botin);
            if (response.ok) {
                let comentarios = await response.json();
                app.comentarios = comentarios;
            }
        }
        catch (e) {
            console.log(e);
        }
 }


 async function insertComment() {
     let id_botin_fk = document.querySelector(".id_botin").value;
     let usuario = document.querySelector("nameUsuario").value;
     let fotoPerfil = document.querySelector(".foto-perfil").value;
     let comentario = document.getElementById("comentario").value;
     let puntaje = document.querySelectorAll(".puntaje");
     for (const valor of puntaje) {
        valor.addEventListener
     }

     let comentarioNuevo = {
         "id_botin_fk":id_botin_fk,
         "usuario":usuario,
         "fotoPerfil":fotoPerfil,
         "comentario":comentario,
         "puntaje":puntaje
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
     


 }
