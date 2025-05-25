<?php

namespace App\Http\Controllers;

use App\Http\Requests\ProfileUpdateRequest;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use Illuminate\View\View;

class ProfileController extends Controller
{
    /**
     * Display the user's profile form.
     */
    public function edit(Request $request): View
    {
        return view('profile.edit', [
            'user' => $request->user(),
        ]);
    }

    /**
     * Update the user's profile information.
     */
    public function update(ProfileUpdateRequest $request): RedirectResponse{
        // Validar y actualizar los datos del usuario
        $request->user()->fill([
            'name' => $request->validated()['name'],
            'email' => $request->validated()['email'],
            'description' => $request->input('description'),
            'urlfacebook' => $request->input('urlfacebook'),
            'urlinstagram' => $request->input('urlinstagram'),
            'urlx' => $request->input('urlx'),
        ]);

        // Si el correo cambia, marcarlo como no verificado
        if ($request->user()->isDirty('email')) {
            $request->user()->email_verified_at = null;
        }

        // Actualizar contraseña si se proporciona
        if ($request->filled('password')) {
            $request->user()->password = bcrypt($request->input('password'));
        }

        $request->user()->save();

        return Redirect::route('profile.edit')->with('status', 'Perfil actualizado correctamente.');
    }

    /**
     * Delete the user's account.
     */
    public function destroy(Request $request): RedirectResponse
    {
        $request->validateWithBag('userDeletion', [
            'password' => ['required', 'current_password'],
        ]);

        $user = $request->user();

        Auth::logout();

        $user->delete();

        $request->session()->invalidate();
        $request->session()->regenerateToken();

        return Redirect::to('/');
    }
}
