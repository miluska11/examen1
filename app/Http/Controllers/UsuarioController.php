<?php

namespace App\Http\Controllers;
use App\Models\Usuario;
use Illuminate\Http\Request;

class UsuarioController extends Controller
{
    
    public function index()
    {
       $usuarios = Usuario::all();
        return $usuarios;
    }


    public function create()
    {
        // Puedes mostrar un formulario de creación aquí si es necesario
    }

    
    public function store(Request $request)
    {
       $usuarios = new Usuario;
    $usuarios->nombre = $request->nombre;
        $usuarios->apellido = $request->apellido;
        $usuarios->correo_electronico = $request->correo_electronico;
         $usuarios->fecha_registro = $request->fecha_registro;
         $usuarios->save();

       // return "Registro Guardado Correctamente";
    }

    
    public function show($id)
    {
         $usuario = Usuario::find($id);
         return $usuario;
    }

    
    public function edit(Usuario $usuario)
    {
        // Puedes mostrar un formulario de edición aquí si es necesario
    }

    
    public function update(Request $request, Usuario $usuario)
    {
        
         $usuario->nombre = $request->nombre;
         $usuario->apellido = $request->apellido;
         $usuario->correo_electronico = $request->correo_electronico;
         $usuario->fecha_registro = $request->fecha_registro;
         $usuario->save();

         return "Registro Actualizado Correctamente";
    }

    
    public function destroy(string $id)
    {
         $usuario = Usuario::find($id);
         $usuario->delete();
         return "Eliminado correctamente";
    }
}
