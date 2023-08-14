<?php
    class Square {
        public $w;
        public $h;

        public function setSquare($w,$h) {
            $this->w = $w;
            $this->h = $h;
        }
        public function getArea() {
            $area = $this->w * $this->h;
            return $area;
        } 
    }

    $result = new Square();
    $result->setSquare(5,8);

    echo "(1) 첫번째<br>";  
    echo "가로 : ".$result->w."<br>";
    echo "세로 : ".$result->h."<br>";
    echo "넓이 : ".$result->getArea();
?>