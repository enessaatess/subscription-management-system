-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 28 Nis 2022, 07:42:44
-- Sunucu sürümü: 10.4.21-MariaDB
-- PHP Sürümü: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `app`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `devices`
--

CREATE TABLE `devices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `appId` int(11) NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `operating_system` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `devices`
--

INSERT INTO `devices` (`id`, `uid`, `appId`, `language`, `operating_system`, `expire_date`, `created_at`, `updated_at`) VALUES
(1, '12345678', 12, 'tr', 'ios-appstore', NULL, '2022-04-26 03:56:24', '2022-04-27 12:02:56'),
(2, '12345678', 13, 'tr', 'ios-appstore', '2022-04-27 16:02:56', '2022-04-26 03:58:30', '2022-04-27 12:02:56');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, 'c6100da0-168c-438f-881e-d68252cfc9d8', 'redis', 'default', '{\"uuid\":\"c6100da0-168c-438f-881e-d68252cfc9d8\",\"displayName\":\"App\\\\Jobs\\\\CheckSubsciption\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\CheckSubsciption\",\"command\":\"O:25:\\\"App\\\\Jobs\\\\CheckSubsciption\\\":11:{s:6:\\\"device\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Device\\\";s:2:\\\"id\\\";i:2;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"},\"id\":\"FwSaEIQvicVKoR67RgWs2aUuVutAADDv\",\"attempts\":0}', 'GuzzleHttp\\Exception\\ConnectException: cURL error 7: Failed to connect to 127.0.0.1 port 8001 after 2 ms: Connection refused (see https://curl.haxx.se/libcurl/c/libcurl-errors.html) for http://127.0.0.1:8001/api/ios_control in /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/guzzlehttp/guzzle/src/Handler/CurlFactory.php:210\nStack trace:\n#0 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/guzzlehttp/guzzle/src/Handler/CurlFactory.php(158): GuzzleHttp\\Handler\\CurlFactory::createRejection(Object(GuzzleHttp\\Handler\\EasyHandle), Array)\n#1 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/guzzlehttp/guzzle/src/Handler/CurlFactory.php(110): GuzzleHttp\\Handler\\CurlFactory::finishError(Object(GuzzleHttp\\Handler\\CurlHandler), Object(GuzzleHttp\\Handler\\EasyHandle), Object(GuzzleHttp\\Handler\\CurlFactory))\n#2 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/guzzlehttp/guzzle/src/Handler/CurlHandler.php(47): GuzzleHttp\\Handler\\CurlFactory::finish(Object(GuzzleHttp\\Handler\\CurlHandler), Object(GuzzleHttp\\Handler\\EasyHandle), Object(GuzzleHttp\\Handler\\CurlFactory))\n#3 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/guzzlehttp/guzzle/src/Handler/Proxy.php(28): GuzzleHttp\\Handler\\CurlHandler->__invoke(Object(GuzzleHttp\\Psr7\\Request), Array)\n#4 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/guzzlehttp/guzzle/src/Handler/Proxy.php(48): GuzzleHttp\\Handler\\Proxy::GuzzleHttp\\Handler\\{closure}(Object(GuzzleHttp\\Psr7\\Request), Array)\n#5 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Http/Client/PendingRequest.php(944): GuzzleHttp\\Handler\\Proxy::GuzzleHttp\\Handler\\{closure}(Object(GuzzleHttp\\Psr7\\Request), Array)\n#6 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Http/Client/PendingRequest.php(914): Illuminate\\Http\\Client\\PendingRequest->Illuminate\\Http\\Client\\{closure}(Object(GuzzleHttp\\Psr7\\Request), Array)\n#7 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Http/Client/PendingRequest.php(900): Illuminate\\Http\\Client\\PendingRequest->Illuminate\\Http\\Client\\{closure}(Object(GuzzleHttp\\Psr7\\Request), Array)\n#8 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/guzzlehttp/guzzle/src/PrepareBodyMiddleware.php(64): Illuminate\\Http\\Client\\PendingRequest->Illuminate\\Http\\Client\\{closure}(Object(GuzzleHttp\\Psr7\\Request), Array)\n#9 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/guzzlehttp/guzzle/src/Middleware.php(37): GuzzleHttp\\PrepareBodyMiddleware->__invoke(Object(GuzzleHttp\\Psr7\\Request), Array)\n#10 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/guzzlehttp/guzzle/src/RedirectMiddleware.php(71): GuzzleHttp\\Middleware::GuzzleHttp\\{closure}(Object(GuzzleHttp\\Psr7\\Request), Array)\n#11 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/guzzlehttp/guzzle/src/Middleware.php(61): GuzzleHttp\\RedirectMiddleware->__invoke(Object(GuzzleHttp\\Psr7\\Request), Array)\n#12 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/guzzlehttp/guzzle/src/HandlerStack.php(75): GuzzleHttp\\Middleware::GuzzleHttp\\{closure}(Object(GuzzleHttp\\Psr7\\Request), Array)\n#13 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/guzzlehttp/guzzle/src/Client.php(331): GuzzleHttp\\HandlerStack->__invoke(Object(GuzzleHttp\\Psr7\\Request), Array)\n#14 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/guzzlehttp/guzzle/src/Client.php(168): GuzzleHttp\\Client->transfer(Object(GuzzleHttp\\Psr7\\Request), Array)\n#15 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/guzzlehttp/guzzle/src/Client.php(187): GuzzleHttp\\Client->requestAsync(\'POST\', Object(GuzzleHttp\\Psr7\\Uri), Array)\n#16 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Http/Client/PendingRequest.php(767): GuzzleHttp\\Client->request(\'POST\', \'http://127.0.0....\', Array)\n#17 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Http/Client/PendingRequest.php(698): Illuminate\\Http\\Client\\PendingRequest->sendRequest(\'POST\', \'http://127.0.0....\', Array)\n#18 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Support/helpers.php(234): Illuminate\\Http\\Client\\PendingRequest->Illuminate\\Http\\Client\\{closure}(1)\n#19 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Http/Client/PendingRequest.php(712): retry(0, Object(Closure), 100, NULL)\n#20 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Http/Client/PendingRequest.php(595): Illuminate\\Http\\Client\\PendingRequest->send(\'POST\', \'http://127.0.0....\', Array)\n#21 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Http/Client/Factory.php(392): Illuminate\\Http\\Client\\PendingRequest->post(\'http://127.0.0....\', Array)\n#22 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Support/Facades/Facade.php(261): Illuminate\\Http\\Client\\Factory->__call(\'post\', Array)\n#23 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/app/Jobs/CheckSubsciption.php(69): Illuminate\\Support\\Facades\\Facade::__callStatic(\'post\', Array)\n#24 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/app/Jobs/CheckSubsciption.php(42): App\\Jobs\\CheckSubsciption->iosControle(73017964)\n#25 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): App\\Jobs\\CheckSubsciption->handle()\n#26 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Container/Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#27 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#28 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#29 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Container/Container.php(653): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#30 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#31 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\CheckSubsciption))\n#32 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\CheckSubsciption))\n#33 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#34 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(120): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\CheckSubsciption), false)\n#35 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\CheckSubsciption))\n#36 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\CheckSubsciption))\n#37 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#38 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\RedisJob), Object(App\\Jobs\\CheckSubsciption))\n#39 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\RedisJob), Array)\n#40 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(428): Illuminate\\Queue\\Jobs\\Job->fire()\n#41 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(378): Illuminate\\Queue\\Worker->process(\'redis\', Object(Illuminate\\Queue\\Jobs\\RedisJob), Object(Illuminate\\Queue\\WorkerOptions))\n#42 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(172): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\RedisJob), \'redis\', Object(Illuminate\\Queue\\WorkerOptions))\n#43 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'redis\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#44 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'redis\', \'default\')\n#45 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/horizon/src/Console/WorkCommand.php(51): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#46 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Laravel\\Horizon\\Console\\WorkCommand->handle()\n#47 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Container/Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#48 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#49 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#50 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Container/Container.php(653): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#51 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Console/Command.php(136): Illuminate\\Container\\Container->call(Array)\n#52 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/symfony/console/Command/Command.php(298): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#53 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#54 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/symfony/console/Application.php(1015): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#55 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/symfony/console/Application.php(299): Symfony\\Component\\Console\\Application->doRunCommand(Object(Laravel\\Horizon\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#56 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/symfony/console/Application.php(171): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#57 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Console/Application.php(94): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#58 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#59 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#60 {main}\n\nNext Illuminate\\Http\\Client\\ConnectionException: cURL error 7: Failed to connect to 127.0.0.1 port 8001 after 2 ms: Connection refused (see https://curl.haxx.se/libcurl/c/libcurl-errors.html) for http://127.0.0.1:8001/api/ios_control in /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Http/Client/PendingRequest.php:710\nStack trace:\n#0 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Support/helpers.php(234): Illuminate\\Http\\Client\\PendingRequest->Illuminate\\Http\\Client\\{closure}(1)\n#1 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Http/Client/PendingRequest.php(712): retry(0, Object(Closure), 100, NULL)\n#2 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Http/Client/PendingRequest.php(595): Illuminate\\Http\\Client\\PendingRequest->send(\'POST\', \'http://127.0.0....\', Array)\n#3 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Http/Client/Factory.php(392): Illuminate\\Http\\Client\\PendingRequest->post(\'http://127.0.0....\', Array)\n#4 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Support/Facades/Facade.php(261): Illuminate\\Http\\Client\\Factory->__call(\'post\', Array)\n#5 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/app/Jobs/CheckSubsciption.php(69): Illuminate\\Support\\Facades\\Facade::__callStatic(\'post\', Array)\n#6 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/app/Jobs/CheckSubsciption.php(42): App\\Jobs\\CheckSubsciption->iosControle(73017964)\n#7 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): App\\Jobs\\CheckSubsciption->handle()\n#8 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Container/Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#9 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#10 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#11 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Container/Container.php(653): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#12 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#13 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\CheckSubsciption))\n#14 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\CheckSubsciption))\n#15 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#16 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(120): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\CheckSubsciption), false)\n#17 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\CheckSubsciption))\n#18 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\CheckSubsciption))\n#19 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#20 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\RedisJob), Object(App\\Jobs\\CheckSubsciption))\n#21 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\RedisJob), Array)\n#22 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(428): Illuminate\\Queue\\Jobs\\Job->fire()\n#23 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(378): Illuminate\\Queue\\Worker->process(\'redis\', Object(Illuminate\\Queue\\Jobs\\RedisJob), Object(Illuminate\\Queue\\WorkerOptions))\n#24 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(172): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\RedisJob), \'redis\', Object(Illuminate\\Queue\\WorkerOptions))\n#25 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'redis\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#26 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'redis\', \'default\')\n#27 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/horizon/src/Console/WorkCommand.php(51): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#28 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Laravel\\Horizon\\Console\\WorkCommand->handle()\n#29 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Container/Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#30 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#31 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#32 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Container/Container.php(653): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#33 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Console/Command.php(136): Illuminate\\Container\\Container->call(Array)\n#34 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/symfony/console/Command/Command.php(298): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#35 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#36 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/symfony/console/Application.php(1015): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#37 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/symfony/console/Application.php(299): Symfony\\Component\\Console\\Application->doRunCommand(Object(Laravel\\Horizon\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#38 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/symfony/console/Application.php(171): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#39 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Console/Application.php(94): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 {main}', '2022-04-27 11:45:29'),
(2, 'e5e69a8d-c972-4529-9c05-0f694aa21c0a', 'redis', 'default', '{\"uuid\":\"e5e69a8d-c972-4529-9c05-0f694aa21c0a\",\"displayName\":\"App\\\\Jobs\\\\CheckSubsciption\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\CheckSubsciption\",\"command\":\"O:25:\\\"App\\\\Jobs\\\\CheckSubsciption\\\":11:{s:6:\\\"device\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Device\\\";s:2:\\\"id\\\";i:2;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"},\"id\":\"e5e69a8d-c972-4529-9c05-0f694aa21c0a\",\"attempts\":0,\"type\":\"job\",\"tags\":[\"App\\\\Models\\\\Device:2\"],\"pushedAt\":\"1651088979.1428\"}', 'ErrorException: Trying to access array offset on value of type null in /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/app/Jobs/CheckSubsciption.php:46\nStack trace:\n#0 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/app/Jobs/CheckSubsciption.php(46): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'Trying to acces...\', \'/Applications/X...\', 46)\n#1 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): App\\Jobs\\CheckSubsciption->handle()\n#2 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Container/Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#3 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#4 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#5 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Container/Container.php(653): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#6 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#7 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\CheckSubsciption))\n#8 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\CheckSubsciption))\n#9 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#10 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(120): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\CheckSubsciption), false)\n#11 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\CheckSubsciption))\n#12 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\CheckSubsciption))\n#13 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#14 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\RedisJob), Object(App\\Jobs\\CheckSubsciption))\n#15 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\RedisJob), Array)\n#16 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(428): Illuminate\\Queue\\Jobs\\Job->fire()\n#17 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(378): Illuminate\\Queue\\Worker->process(\'redis\', Object(Illuminate\\Queue\\Jobs\\RedisJob), Object(Illuminate\\Queue\\WorkerOptions))\n#18 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(172): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\RedisJob), \'redis\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'redis\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'redis\', \'default\')\n#21 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/horizon/src/Console/WorkCommand.php(51): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#22 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Laravel\\Horizon\\Console\\WorkCommand->handle()\n#23 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Container/Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#24 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#25 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#26 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Container/Container.php(653): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#27 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Console/Command.php(136): Illuminate\\Container\\Container->call(Array)\n#28 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/symfony/console/Command/Command.php(298): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#29 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#30 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/symfony/console/Application.php(1015): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/symfony/console/Application.php(299): Symfony\\Component\\Console\\Application->doRunCommand(Object(Laravel\\Horizon\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/symfony/console/Application.php(171): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Console/Application.php(94): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 /Applications/XAMPP/xamppfiles/htdocs/subscription-management-system/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#36 {main}', '2022-04-27 11:49:40');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_04_24_114504_create_devices_table', 1),
(6, '2022_04_25_154901_create_subscriptions_table', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Device', 1, 'ios-appstore', '08f5982f871afb9285e26874a810555a925c2a7a4a61d84d453c284ac94f0f84', '[\"*\"]', NULL, '2022-04-26 03:56:24', '2022-04-26 03:56:24'),
(2, 'App\\Models\\Device', 1, 'ios-appstore', '450a939c21de0a4804389d0c4564835021ff206c4f6c48963b95790a0b31bd0a', '[\"*\"]', NULL, '2022-04-26 03:57:01', '2022-04-26 03:57:01'),
(3, 'App\\Models\\Device', 2, 'ios-appstore', '49332af7efe79eab50dc643cbbcffdcf8f69db00ac575fc5b9f8f41c62a4d14b', '[\"*\"]', '2022-04-27 15:36:42', '2022-04-26 03:58:30', '2022-04-27 15:36:42');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `device_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('started','renewed','canceled','failed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'started',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `device_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'started', '2022-04-26 07:00:50', '2022-04-26 07:00:50'),
(2, 2, 'started', '2022-04-26 07:01:53', '2022-04-26 07:01:53'),
(3, 2, 'started', '2022-04-26 07:07:53', '2022-04-26 07:07:53'),
(4, 2, 'started', '2022-04-26 07:08:10', '2022-04-26 07:08:10'),
(5, 2, 'started', '2022-04-26 07:09:09', '2022-04-26 07:09:09'),
(6, 2, 'renewed', '2022-04-26 07:10:09', '2022-04-26 07:10:09'),
(7, 2, 'started', '2022-04-27 02:40:25', '2022-04-27 02:40:25'),
(8, 2, 'started', '2022-04-27 02:41:40', '2022-04-27 02:41:40'),
(9, 2, 'started', '2022-04-27 02:41:41', '2022-04-27 02:41:41'),
(10, 2, 'renewed', '2022-04-27 05:16:46', '2022-04-27 05:16:46'),
(11, 2, 'started', '2022-04-27 05:26:20', '2022-04-27 05:26:20'),
(12, 2, 'renewed', '2022-04-27 11:57:44', '2022-04-27 11:57:44'),
(13, 1, 'canceled', '2022-04-27 12:02:56', '2022-04-27 12:02:56'),
(14, 2, 'renewed', '2022-04-27 12:02:56', '2022-04-27 12:02:56');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `devices_expire_date_index` (`expire_date`);

--
-- Tablo için indeksler `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Tablo için indeksler `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Tablo için indeksler `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `devices`
--
ALTER TABLE `devices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
