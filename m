Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBDHOYX2QKGQE254RWNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D891C5949
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 16:24:13 +0200 (CEST)
Received: by mail-wr1-x43d.google.com with SMTP id 30sf1266885wrp.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 07:24:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588688653; cv=pass;
        d=google.com; s=arc-20160816;
        b=IM4GBQamC8drAvinUCbpi9kbr+fvWgYuktDRgHScQl8vyTISOwwstEpKcGIQ+3CSAr
         Bzy+LyoEQTVE4snlJ6dGQC7VP2gtVcvWCjJGKkysgug6MxTCdc+uDgjC8IGGGfRxRvCV
         qwtXLl6MVsI2bOpmA5xDEGwxurH1UleqpLglulvNv/UD6an+et32Rdn7ABV9EVcKm8q+
         WbMQgrwZTdY7ONQ7lUccP10Z0vypV7d9ZA894TWKoxrPFcvtCLf5rlfyu8J6WPjO7Hnh
         0cdFzkFjHKh9lQ4np1cVrUJSpv2MWlfVH3Hgm/xVPrABucMtF1p9QzyhClNpfB+uxiVn
         vcSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=xqoMA7lkpZBu9YPgegMLJqELSfkWfXWohT0G98BL9Zg=;
        b=vhZbOReodUw5f9n/G71/uAHVJy4scuqgSR1D/2IRQeCcLcVKzBEfm9a5dYwWuLBHeW
         keFRZhJjk+YkzVShXotFXz1lq0gNDj8LDzU+NoXaKExUPJ48pwnXMp/R6UulyipuSmpy
         lA2ZKJiYVOruyXTFan//rutvefoMJk838Bf/ddCe3HwIccDSBVqEU005rO8KI8mX/mzv
         qw6Bjit2ytxDeLri19TYDj0S16dY4dzvgL1CCCzD/DmGo4/ubicdfyf7scHIARqtt6BO
         3ADPC6pvcH0qeMYfV428PN3fRW5ati10HARDMpxno5c6m7MGe5OlxXZYrfoQxACW4/VZ
         L+eg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xqoMA7lkpZBu9YPgegMLJqELSfkWfXWohT0G98BL9Zg=;
        b=nIsAxwsNcdaIQUFGyI0A9HbnaQmyzIjVnt1Ov5xHl4+a9ERolLeqIsxfB7gH9qZPZU
         C+c66oIbzwHJRshFl2k6SRXUbg1F2AhI+W/E0KJ6wcfa4ankpppZtcU1I21WFJYspyH/
         6YgzipGohI1ZrZ6aK9ADP5yZKH6J7/mkzOaGJF0aFrg3G8jixdO/McIaX9T7CK5429F6
         MOyuyQYQJptrIFeGffmfJMx4TvKxk2i2azUlWDBuSNMRxsX9s7crTAQP8NRUtazIxYQZ
         BhMQVQYSEX+p1s9NWIJb/g9Lb7K+hG2f79Mjnxdjx8GXoETW4RoGLn6Mj3zYkVO3KFS/
         3Oiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xqoMA7lkpZBu9YPgegMLJqELSfkWfXWohT0G98BL9Zg=;
        b=m+9xaCmNGkljddP0WwFDwWq8uqHkJ/pTUwQnAhlCKgJwfc/LnLhkIUJ2GRDloUcNR4
         2xHjZJl9nOVoo+x/IDvKmYtUjPkh51ffyRPt29oKGUumROMHIDwtPndI6xn220CRfnqi
         rnrvIS29AmfH6eYPgjDM6vfzUG4B9dqpP3hYuemjgKIGdppC/BbQ3+7h+vEEHmcUs/it
         Rgt5xdNjuNjHDnoMkqbfwYN6aJ038crBGqcLKq8/cdLL/NNJz06C4QPdYoZmMA1s/1Bl
         uoMbAHAw8dJZc3RpGcpoSCtjv3QkcHaBJdbRec/6/1Mq0NxCOKd4e/6SWCPSWUGfw0iK
         oALA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZQig2dUhxfar0bA09kH/vB6KTNWCUnjiwJjctEhVKqL82VhcB7
	Yx/buFOPdAg9VWJ0OABqpRc=
X-Google-Smtp-Source: APiQypKJp7LmenCs18XrOg14bNxOG2KRUYysRT1J1MRAc1hW+p+lC2hH9z17NxDudEF2T9adcr09lw==
X-Received: by 2002:a7b:c190:: with SMTP id y16mr3889607wmi.50.1588688652869;
        Tue, 05 May 2020 07:24:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:618f:: with SMTP id j15ls4326519wru.3.gmail; Tue, 05 May
 2020 07:24:12 -0700 (PDT)
X-Received: by 2002:adf:a1cb:: with SMTP id v11mr2188496wrv.39.1588688652529;
        Tue, 05 May 2020 07:24:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588688652; cv=none;
        d=google.com; s=arc-20160816;
        b=UGA+08d9xIGCY6fD1qatXi7w+tF9rxZ4Fv1rXrUhqiYzSwqRPVn8C4l9wcVeRU1UFu
         +z3k9fffVpKGC4HhA21Si2nKHA0XZa65YmxWQw2FTSslzuUmZ70YKF28U3UEHHly3p6p
         s79zbxTMRSDLuGGUu9R8jD2YG4j2x/53Sg2GU+v+D6Wx3f3ZW52H3Og2SC+GndRGTykb
         5prfnIt0hQT08iygP4hgLiuwaNXwlV4KsovZ1aW3QxMDrxmMymDGDs78RtK1QaojBnHe
         uSwhSmAqFWDnsGBMeOHO3h3DeAqDRFvU+uzJFPx8YuviQ3G202sjYXMmmf2hrIT63bIf
         Ws2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=R98aMQSUEdwaV69Y9hVXtVXcfjzcs/XiYZhumYyzZgw=;
        b=afPPiLX4+M5cWSomttjG6xvn+r6LgqXLbBMfehjZoPA4uGTGpOVmVkLXf6M3vIQbAp
         3pVYxKfYojCjrvr3V19O/rzNCrvvLyMwPZHYf0dXd4jkShfgYf6vd8X97/Ywjxyjv+vd
         hPozVFQTP+0IkOJnoJGrip+lKfTrL0u21fcbFQpfNHYzQ6B4czCGBCGCeC5mV+M7Lqwh
         xW5bS7qZxd0GjYDVPGXJQocujgI/MGZ6t1FcNP3+XMdwzHinQZL3aThBBRLBmHY4nI0C
         nNfhcQzgC86cFm1YOZdrAdFJuC0euYv7kxvpIDvwHI5JZ14Eoz0hY3bPHJCXjz7dNdrN
         Bo2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.187])
        by gmr-mx.google.com with ESMTPS id x11si109386wmi.1.2020.05.05.07.24.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 May 2020 07:24:12 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.187;
Received: from localhost.localdomain ([149.172.19.189]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MY5wD-1jdHa241VN-00YOBN; Tue, 05 May 2020 16:24:12 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Dragos Bogdan <dragos.bogdan@analog.com>,
	Beniamin Bia <beniamin.bia@analog.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Jonathan Cameron <Jonathan.Cameron@huawei.com>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] iio: adc: ad7476: fix clang -Wpointer-bool-conversion warning
Date: Tue,  5 May 2020 16:23:58 +0200
Message-Id: <20200505142408.1113763-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:vBk959c9QorF7QsCYU41aH9goxp0ICkrLgIuIDeOigWieoPf80S
 ROZMpyWePeM9q+THfBXanGEvcMubL4WRB0dY5oSyb2hadPzuAt/HHY7qPK2o9UI1vO8F7X1
 xmxjCheC8aoKCybULo0fC9vvxeo9/KZaM9rlVaAruelm+Ics8NSygUbL0S7wSY4Xa4AMNNT
 JBVof8OBtVXU+lwRCwzAg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:eRPxKtH3rQU=:O5EVI4xC2GZ/gUmRfA8SEw
 WLMV/tRzDP8/jZ6j93yp6zKZkNqaZi6ho0ZD0mmcnWTHb8unGGHG8p17UjfC/QAqxuL+OepH+
 pNpsruObntEUuGQRs6KSvo6ALNTlFYsbMqrGlkCg2iVU905tHTatj0KyMUk8En0aPLdsr8xQh
 lBiy2yQ1dsRatPxPSpRg0aOBQaLodxFN90PH7+NRnsQq0jKhwIMfElbK3UTWC/8CE67Q0BDN0
 7Jk4DTlcFuLPq+1/PevJMHNqCUfEFiEeo0mCMzzQju4QxZtuRD0PtHmGs96mp3w8KdFap+TzK
 dH+PLMKxwmAF1SD2CcN8ZJxkiEJnWJ8ysQ8mhQcstzm6usepW6GhYLgh+JGvTx0fASzoGGMIu
 jrdERlp623EKOL8Zc8tt0wEkfMjef84zrN9OskqN84Fx8+O4sUNZ/7dXuZmW/unOKhZm5opXu
 Fo1JIgmr1XOJeQrDZWof3OPiD4JT6zK+K5vWY9n+o0l+ZkWm4LRwsvdUTh/+MZ/mybkQcoz8I
 YAUfjbr331qFqmlQt2+gTT3ewvYzdf3qXGtRN45rDcah7kZyAu+sCp8quakIQZp7NAc8eb+vR
 8bUQSGMnLpUX2kuUov+7dYYZtjVSFPXwKDqMyiCnPtSFkMhWi807hkXer7YgHXk4CO4Tlkztl
 cdihF7m2ELTFKb1QsMKcporA0fPiTqiEh7UnEBBST7iCEgCPtse8w0ibaZABCa8MrD7lWkSNa
 QRyeIc5krxE2JiAqQVO8ZJlryNOauUaEI3FVNWJ3Pxxv4PwcYoiIidVaqXbnSAF4OlUsHC0wP
 +1bS0ize47c3VMZNnhnurkFpWS9RcICVxk4/n7TrsbcC2IlAZ0=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.187 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

Checking the pointer value of st->chip_info->convst_channel is pointless
since this this an array inside of a struct: even if st->chip_info is NULL,
the pointer is non-zero. Clang warns about this:

drivers/iio/adc/ad7476.c:312:40: warning: address of array 'st->chip_info->convst_channel' will always evaluate to 'true' [-Wpointer-bool-conversion]
        if (st->convst_gpio && st->chip_info->convst_channel)
                            ~~ ~~~~~~~~~~~~~~~^~~~~~~~~~~~~~

I could not come up with a sane way to check whether the entry
is valid, so just remove the check and keep the behavior as it
is today but without the warning.

Fixes: 3a6af93dd66e ("iio: adc: ad7476: Add IIO_CHAN_INFO_RAW for AD7091R")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/iio/adc/ad7476.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/iio/adc/ad7476.c b/drivers/iio/adc/ad7476.c
index e9984a38fc4c..4e816d714ad2 100644
--- a/drivers/iio/adc/ad7476.c
+++ b/drivers/iio/adc/ad7476.c
@@ -309,7 +309,7 @@ static int ad7476_probe(struct spi_device *spi)
 	indio_dev->num_channels = 2;
 	indio_dev->info = &ad7476_info;
 
-	if (st->convst_gpio && st->chip_info->convst_channel)
+	if (st->convst_gpio)
 		indio_dev->channels = st->chip_info->convst_channel;
 	/* Setup default message */
 
-- 
2.26.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200505142408.1113763-1-arnd%40arndb.de.
