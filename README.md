# reactphp-x-tts

## install
```bash
composer require reactphp-x/tts -vvv
```

## Usage
```php
require __DIR__ . "/vendor/autoload.php";

use ReactphpX\Tts\Tts;

(new Tts(getenv('X_LIMIT') ?: 10, getenv('X_PUBLIC_PATH') ?: __DIR__ . '/public/'))->run();

```

## run

```
X_LISTEN=0.0.0.0:8080 php tts.php
```


## api

### get /voices

### post or get /tts

{
    "text": "hello world",
    "voice": "zh-CN-shaanxi-XiaoniNeural"
}

### get /voices/{voice}


## docker

```bash
docker build -t reactphp-x-tts .
docker run -it --rm -p 8012:8080 -e X_LISTEN=0.0.0.0:8080 -e X_LIMIT=10 -e X_PUBLIC_PATH=/var/www/examples/public/ reactphp-x-tts php /var/www/examples/01.php
```


## License
MIT
