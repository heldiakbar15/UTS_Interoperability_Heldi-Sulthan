<?php

namespace App\Http\Controllers;

use App\Models\Motor;
use Illuminate\Http\Request;

class MotorController extends Controller
{
    public function index(Request $request)
    {
        $motor = Motor::OrderBy("brand_id", "ASC")->paginate(2)->toArray();
        $response = [
            "total_count" => $motor["total"],
            "limit" => $motor["per_page"],
            "pagination" => [
                "next_page" => $motor["next_page_url"],
                "current_page" => $motor["current_page"]
            ],
            "data" => $motor["data"],
        ];
        return response()->json($response, 200);
    }

    public function store(Request $request)
    {
        $input = $request->all();
        $validationRules = [
            'nama_motor' => 'required',
            'harga' => 'required',
            'harga' => 'required',
            'gambar' => 'required',
            'brand_id' => 'required|exists:brand,id'
        ];

        $validator = \Validator::make($input, $validationRules);

        if ($validator->fails()) {
            return response()->json($validator->errors(), 400);
        }
        $motor = Motor::create($input);
        return response()->json($motor, 200);
    }

    public function show(Request $request, $id)
    {
        $acceptHeader = $request->header('Accept');

        if ($acceptHeader === 'application/json' || $acceptHeader === 'application/xml') {
            $contentTypeHeader = $request->header('Content-Type');

            if ($contentTypeHeader === 'application/json') {
                $motor = Motor::find($id);

                if (!$motor) {
                    abort(404);
                }

                return response()->json($motor, 200);
            } else {
                return response('Tipe Media Tidak Mendukung!', 415);
            }
        } else {
            return response('Tidak Bisa Diterima!', 406);
        }
    }

    public function update(Request $request, $id)
    {
        $input = $request->all();

        $motor = Motor::find($id);

        if (!$motor) {
            abort(404);
        }

        $validationRules = [
            'nama_motor' => 'required',
            'harga' => 'required',
            'harga' => 'required',
            'gambar' => 'required',
            'brand_id' => 'required|exists:brand,id'
        ];

        $validator = \Validator::make($input, $validationRules);

        if ($validator->fails()) {
            return response()->json($validator->errors(), 400);
        }

        $motor->fill($input);
        $motor->save();

        return response()->json($motor, 200);
    }

    public function destroy(Request $request, $id)
    {
        $acceptHeader = $request->header('Accept');

        if ($acceptHeader === 'application/json' || $acceptHeader === 'application/xml') {
            $contentTypeHeader = $request->header('Content-Type');

            if ($contentTypeHeader === 'application/json') {
                $motor = Motor::find($id);

                if (!$motor) {
                    abort(404);
                }

                $motor->delete();
                $message = ['message' => 'delete akun berhasil', 'motor_id' => $id];

                return response()->json($message, 200);
            } else {
                return response('Tipe Media Tidak Mendukung!', 415);
            }
        } else {
            return response('Tidak Bisa Diterima!', 406);
        }
    }
}
