<?php
    class Square {
        private $w;
        private $h;

        public function setSquare($w,$h) {
            $this->w = $w;
            $this->h = $h;
        }

        public function getArea() {
            $area = $this->w * $this->h;
            return "가로 : ".$this->w."<br>세로 : ".$this->h."<br>넓이 : ".$area;
        } 
    }

    $result = new Square();
    $result->setSquare(5,8);

    echo "(2) 두번째<br>";  
    echo $result->getArea();
?>