"use strict"

let ID_botin=10;
const API_URL = "api/botin/"+ID_botin+"/comentarios";


let app = new Vue({
    el: "#app",
    data: {
        titulo: "Comentarios",
        comentarios: [],
    },
});

async function getComentarios() {
     
        try {
            let response = await fetch(API_URL);
            if (response.ok) {
                let comentarios = await response.json();
                app.comentarios=comentarios;
            }
        }
        catch (e) {
            console.log(e);
        }
 }
 getComentarios();
