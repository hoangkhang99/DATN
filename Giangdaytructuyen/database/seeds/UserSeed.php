<?php

use Illuminate\Database\Seeder;

class UserSeed extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $items = [
            
            ['id' => 1, 'name' => 'Admin', 'email' => 'admin@admin.com', 'password' => '$2y$10$l4MghrLnKXTRUDlR07XQeesKHRIaAe7WzDf90g751BEf70AwnJ5m.', 'remember_token' => '',],
            ['id' => 2, 'name' => 'Giao vien', 'email' => 'giaovien@gmail.com', 'password' => '$2y$10$l4MghrLnKXTRUDlR07XQeesKHRIaAe7WzDf90g751BEf70AwnJ5m.', 'remember_token' => '',],
            ['id' => 3, 'name' => 'Hoc sinh', 'email' => 'hocsinh@gmail.com', 'password' => '$2y$10$l4MghrLnKXTRUDlR07XQeesKHRIaAe7WzDf90g751BEf70AwnJ5m.', 'remember_token' => '',],

        ];

        foreach ($items as $item) {
            \App\User::create($item);
        }
    }
}
