<?php

require __DIR__ . "/../vendor/autoload.php";

use ReactphpX\Tts\Tts;

(new Tts(getenv('X_LIMIT') ?: 10, getenv('X_PUBLIC_PATH') ?: __DIR__ . '/public/'))->run();




