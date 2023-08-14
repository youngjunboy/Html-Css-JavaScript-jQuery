<?php
    class Square{
        private $w;
        private $h;

        public function __construct($w,$h) {
            $this->w = $w;
            $this->h = $h;
        }

        public function getArea() {
            $area = $this->w * $this->h;
            return "가로 : ".$this->w."<br>세로 : ".$this->h."<br>넓이 : ". $area;
        } 
    }

    $result = new Square(5,8);

    echo "(3) 세번째<br>";  
    echo $result->getArea();
?>