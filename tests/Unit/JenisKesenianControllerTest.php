<?php

namespace Tests\Unit;

use Tests\TestCase;
use Illuminate\Foundation\Testing\RefreshDatabase;

class JenisKesenianControllerTest extends TestCase
{
    use RefreshDatabase;

    /** @test */
    public function it_can_show_create_view()
    {
        // Panggil route untuk menampilkan view create
        $response = $this->get('/jenis-seni-create');

        // Periksa apakah respons adalah 200 (OK)
        $response->assertStatus(200);

        // Periksa apakah view yang dikembalikan adalah jenis-seni-create
        $response->assertViewIs('jenis-seni-create');

        // Periksa apakah view memiliki data 'title' dengan nilai 'Jenis-Kesenian-Create'
        $response->assertViewHas('title', 'Jenis-Kesenian-Create');
    }
}
