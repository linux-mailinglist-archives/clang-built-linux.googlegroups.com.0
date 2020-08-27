Return-Path: <clang-built-linux+bncBC6JD5V23ENBBY4EUD5AKGQEEGEPCLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id A3AFD254D55
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 20:58:44 +0200 (CEST)
Received: by mail-yb1-xb3c.google.com with SMTP id o8sf8598549ybg.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 11:58:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598554723; cv=pass;
        d=google.com; s=arc-20160816;
        b=aOKrtjJRj51RUBWMKZN1X8rPHLr/rZaF3TyFU4/0Tc4R3UnVR4YsuNyPGiJi7o0bVI
         COXXRREwPfbsmlowZ+JEotjPkIbeeoVMFzU5X973nXAM3KQ7fsDE36Z5y/zi8GLXY/vw
         fCYiuxB/aGDDq8B1fAq0WLHjUY3fljzFSI+rwbpQtEOHbVwjawIKv+oO3ZTPpmM13kZ7
         4GaJ9UDyv9i8CFF1bZhvyYjfAikkeVLLoic+LTa+4h5vNjTlqDoutMgWkMjIJ77TGfgA
         OaYO28xkuY/bPbIos/WOnyj4vwMKn+JD5wIvrQiTvJLLw94y0FJf6LmcwsX+mSQAQPx2
         s5ow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=+nRndRH14QGmk8OErmfTKzKwwKDLthETlTzRcFBDG0s=;
        b=Qo83uwYS1X9oUaT3NRLY7DqH0V5gkhysISdgFW6P5gt8NEoCQZc+DubyN4FcMDrxdP
         cudxHZgXbx0/8obe4LCnqpFbm8lbXhEiQ/snM6okmWQ+1domfJdMqgqlJ21XQhNOrZFO
         eJGkac539KHoF2+rsWxzDEaHfHHEMwf8e/C/tY9TESqNEG64d51rlQXPWdlF0oywGVne
         m11mJEv99kmPWOs/pNwC20akIS/jPekBIIuatzqLsPwLfXBYT+QSqI+uNERRNSCxB5yF
         dlr/FXPzkJqplmYGuSPkNdKqlriczOUtxt2rYI1UmmI+nDPwnZHkjywAk7qLK31X2JTR
         Lpuw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=HW69Dhah;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+nRndRH14QGmk8OErmfTKzKwwKDLthETlTzRcFBDG0s=;
        b=chj5FJbfioaTLAJ4tAjVcnZHtp5rnoGyL+ufrDqLfktpBQ9MJwp1V4Yyy60otrxHpB
         O5wVySIy1ZNOL9eTRc3pwfKOxTt4WWtQivvK38Ac4VqTPbzIvf7Wxo2FN//nIlLiHqru
         BYlvQAcwSWbOVeKbDJSW0b6CrSJkgNchbE6yQhspx840TJEBj/BDCNp65LF3GQmkphkQ
         SiTcmk/JEDNwsYIGFLvjk5+BeCFsYvFCiHVOLjeaTDr/1I64U1NKdHG/a/4fWUSuj1pE
         1uXnSXutwcGy+zKJCR5Ea0fsGHxAqFyS/x+guaHM3CTW2UqfOaHt06aiSNcnV408iE2n
         io8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+nRndRH14QGmk8OErmfTKzKwwKDLthETlTzRcFBDG0s=;
        b=geKHK4d4q2OhoOQB+9QnT6XChTHgQa329CaLokVdw2z6x0ykj0xrhxQqgZRk4rJ5RI
         hrjAfSERFISGif8Q//4IEDjyRdi62ZhbOjPilqt4XJl/8/c9z9ynCWU9ky/5oO3HtZXg
         YxIsonk8zIjaLjGx840dlUUUvb4tdLynlZRvzZYqV4zqjUNfjnvjjj9SUzi9tHPzF73b
         XIuze1XpeYIa1Y2vfwjs8ALKNSJTb8NrGpwiOIp1bXZEQO4sFRN8rJZKPs5c23Q1YsSH
         2tgo6PnTq7iPr7IEbqPnH75DP2EJnom9HY6sI2iDp/9Uw/XAjFQ3YLmMx/RFP+TfUg7b
         J4wA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532zM2XMq/BQBlkVwdBAT53BRBBG5f92vRM7PuPGUZuNz3xH/uvv
	bXUfzrjjNp751b6jNw7rMDQ=
X-Google-Smtp-Source: ABdhPJzjPjUebSGiLvSMLNs0L9lCPzbK/ZfDt4Gitn4LHu4p/XG+fFLuGaEothHKJXQX5Ca/3SuejQ==
X-Received: by 2002:a25:dac2:: with SMTP id n185mr31040417ybf.396.1598554723511;
        Thu, 27 Aug 2020 11:58:43 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:5755:: with SMTP id l82ls1451291ybb.5.gmail; Thu, 27 Aug
 2020 11:58:43 -0700 (PDT)
X-Received: by 2002:a25:bcce:: with SMTP id l14mr32861662ybm.467.1598554723159;
        Thu, 27 Aug 2020 11:58:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598554723; cv=none;
        d=google.com; s=arc-20160816;
        b=YOZvCZlU/9XHYDk365h5M3s4YSS6nmFlFZdX4Ho0RppYYT7CX67o5/EjzxJIZYkQ4r
         pLUr4tUkJ0rGSbXT37L0k+iM3Hhyh+cXCI0UeQvKX6es/9C/ajGztXFOR+dOeqZkdtx/
         4nSiatzl4wEui3pvtCYn9YuKofRtAWi+dewd3IlLE6cTx0sjO/6sErLv2FIi9c9l+ikM
         mD115vEMtFC6oOfJfPWwV9etCSZSXw/PTtTafcoAIb6wBCVE2oX1sIFmUzDsWvES9MFk
         /OStJPfMvNPfPbpOsAyS3DNp0q4WHK8PlwJPCpQRNtOld6+pQDJxUl96Kjl3XW+nQ1FW
         ubJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=klwYxNWOjsfMCGIHz7gILgAAc5dmJh8z2t1PwEFM8hU=;
        b=nLZb9B8J+u/nt06RcLK7qe8sM4RCxN75xECVbwvivsI81bPc6CRPlgC4FHW7i8Dbo+
         5qjEVT3ISdGtW0fup+na7jaQrZESdeZmL7liYo1JnZoflv0SWg74rBUc7MJzMSlAWVci
         RsMuM3njmgwATR7UDjWQZtWfbzQJsdg6Ksh70kv8hxmmH7nCrTdbLqKH/p6FduSHVjTq
         64NKzjuuS9nZibNpl4XtriSSm0YdKjc9zBPtfFpboiERlKnsPFMZqfRY5oDVQuKC8Hdp
         mSZVa98DapnGutEl9UAizJXMa+hX/1eCAVMtRQOd+MYAd84fv5pCxZATPvobbMiCIq17
         H6+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=HW69Dhah;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o14si145500ybm.5.2020.08.27.11.58.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 27 Aug 2020 11:58:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [194.230.155.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0AD122087E;
	Thu, 27 Aug 2020 18:58:38 +0000 (UTC)
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <bgolaszewski@baylibre.com>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Hans de Goede <hdegoede@redhat.com>,
	Bastien Nocera <hadess@hadess.net>,
	Sangwon Jee <jeesw@melfas.com>,
	Eugen Hristev <eugen.hristev@microchip.com>,
	Andy Shevchenko <andy.shevchenko@gmail.com>,
	linux-gpio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-input@vger.kernel.org,
	platform-driver-x86@vger.kernel.org,
	clang-built-linux@googlegroups.com
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH v3 01/27] Input: Simplify with dev_err_probe()
Date: Thu, 27 Aug 2020 20:58:02 +0200
Message-Id: <20200827185829.30096-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=HW69Dhah;       spf=pass
 (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=krzk@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

Hi,

Changes since v2:
1. Add review tags,
2. Fixes after review (see individual patches).
3. Two new patches - 26 and 27.


Best regards,
Krzysztof



Krzysztof Kozlowski (27):
  Input: gpio_keys_polled - Simplify with dev_err_probe()
  Input: gpio-vibra - Simplify with dev_err_probe()
  Input: pwm-beeper - Simplify with dev_err_probe()
  Input: pwm-vibra - Simplify with dev_err_probe()
  Input: rotary_encoder - Simplify with dev_err_probe()
  Input: elan_i2c - Simplify with dev_err_probe()
  Input: bu21013_ts - Simplify with dev_err_probe()
  Input: bu21029_ts - Simplify with dev_err_probe()
  Input: chipone_icn8318 - Simplify with dev_err_probe()
  Input: cy8ctma140 - Simplify with dev_err_probe()
  Input: edf-ft5x06 - Simplify with dev_err_probe()
  Input: ektf2127 - Simplify with dev_err_probe()
  Input: elants_i2c - Simplify with dev_err_probe()
  Input: goodix - Simplify with dev_err_probe()
  Input: melfas_mip4 - Simplify with dev_err_probe()
  Input: pixcir_i2c_ts - Simplify with dev_err_probe()
  Input: raydium_i2c_ts - Simplify with dev_err_probe()
  Input: resistive-adc-touch - Simplify with dev_err_probe()
  Input: silead - Simplify with dev_err_probe()
  Input: sis_i2c - Simplify with dev_err_probe()
  Input: surface3_spi - Simplify with dev_err_probe()
  Input: sx8643 - Simplify with dev_err_probe()
  Input: bcm-keypad - Simplify with dev_err_probe()
  gpio: Add devm_fwnode_gpiod_get_optional() helpers
  Input: gpio_keys - Simplify with dev_err_probe()
  Input: bu21013_ts - Use local 'client->dev' variable in probe()
  Input: bu21029_ts - Use local 'client->dev' variable in probe()

 drivers/gpio/gpiolib-devres.c                 | 71 ++++++++++++++++++
 drivers/input/keyboard/bcm-keypad.c           | 14 ++--
 drivers/input/keyboard/gpio_keys.c            | 25 +++----
 drivers/input/keyboard/gpio_keys_polled.c     |  8 +--
 drivers/input/misc/gpio-vibra.c               | 20 ++----
 drivers/input/misc/pwm-beeper.c               | 19 ++---
 drivers/input/misc/pwm-vibra.c                | 20 ++----
 drivers/input/misc/rotary_encoder.c           |  8 +--
 drivers/input/mouse/elan_i2c_core.c           |  9 +--
 drivers/input/touchscreen/bu21013_ts.c        | 72 ++++++++-----------
 drivers/input/touchscreen/bu21029_ts.c        | 53 ++++++--------
 drivers/input/touchscreen/chipone_icn8318.c   |  8 +--
 drivers/input/touchscreen/cy8ctma140.c        |  8 +--
 drivers/input/touchscreen/edt-ft5x06.c        | 10 +--
 drivers/input/touchscreen/ektf2127.c          |  8 +--
 drivers/input/touchscreen/elants_i2c.c        | 22 ++----
 drivers/input/touchscreen/goodix.c            | 40 +++--------
 drivers/input/touchscreen/melfas_mip4.c       |  9 +--
 drivers/input/touchscreen/pixcir_i2c_ts.c     | 38 ++++------
 drivers/input/touchscreen/raydium_i2c_ts.c    | 30 +++-----
 .../input/touchscreen/resistive-adc-touch.c   |  8 +--
 drivers/input/touchscreen/silead.c            |  8 +--
 drivers/input/touchscreen/sis_i2c.c           | 20 ++----
 drivers/input/touchscreen/surface3_spi.c      | 13 +---
 drivers/input/touchscreen/sx8654.c            | 10 +--
 include/linux/gpio/consumer.h                 | 30 ++++++++
 26 files changed, 253 insertions(+), 328 deletions(-)

-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200827185829.30096-1-krzk%40kernel.org.
