<?php
class Select_your_bike_model extends CI_Model{

    protected $table = 'select_your_bike';

    public function __construct() {
        parent::__construct();
    }

    public function get_count() {
        return $this->db->count_all($this->table);
    }

    
    public function get_select_your_bike($limit, $start) {
        $this->db->limit($limit, $start);
        $query = $this->db->get($this->table);

        return $query->result();
    }
}