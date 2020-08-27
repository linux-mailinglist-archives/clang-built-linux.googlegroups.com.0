Return-Path: <clang-built-linux+bncBC6JD5V23ENBB5EEUD5AKGQE4OU6Z6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id F4221254D68
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 20:59:01 +0200 (CEST)
Received: by mail-ua1-x93d.google.com with SMTP id n4sf1174839uaa.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 11:59:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598554741; cv=pass;
        d=google.com; s=arc-20160816;
        b=amS35jpxn/jS2HO+jul79J7AiqSKHKJhdVat1VzyLUw9iBw+Yn8wpBz/EblC4UUrmY
         MCi7ZWSkOTEdWVpt3LOB4s1hMuJY89F+2aCAiA04cbvVtK32CFec64tUhnHaY7QUa/1/
         3k3L1O6uEVmQZIqzpunKk4BR107hbSqZGosPoGp8OhHBo5Wfb3T/Q3Tg/0knhbmqJALw
         QFwHbX8B4Zu66wKJcZlhgSpBezg6aBrvFmP5pQyxRMCFqrrApmmrBaEjjv+ndN48tT1u
         RjVbStU6dkO9Gja4nZB8AqkAlNYVCRJEkOswX5OnqylXI9UuIqebwT1o2abzG/ARtfHv
         vhBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=0RlA0ollmNcqo0pG417UQFh7x4fGSDDailxDslngYQU=;
        b=JuNCcuxYLFpeEr/GOxy+7d6tbOkz1OkmqAgoTProiSGIfApxakUM2KymOjTanM05aA
         bz5V/7xaHwtsKWkKZQMS0UlAc0xZf4CmVhghSou0t/bqnatay22DzGSpaDgBfMuAyGkq
         /D5ozXcu6RpitoWwmkGdZxObdlNht5XmLuZ4U3t5wte+X56bVtZ0JsDp+AQlDrYZLnvx
         3YJfKYGWBH0dOx1jGfgWe4xLU9ghxgxqSPDgMQEa/fdDAWSwsY0eTSTMDfJzM3DJKiVV
         WUMWjLb+UaXEmQ5xcxvm1QpAhZE5lptd1N+JjRcHILsgWAYRqpxSYp/ljgTzMoSmNpQr
         hwsQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=iGQrB7o+;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0RlA0ollmNcqo0pG417UQFh7x4fGSDDailxDslngYQU=;
        b=BfpgXQypbBHnU/1Pf2x6r3XZDmy/h0c2fCkk3hnv40a0crDGhJFDn7ICJ2oIaXJh63
         AEdosRfPB+bGbySv6/8I39TucQKY30vwPwhX1/7BNUjSWDPsxyRoArVnktS5PhT169aM
         5IAeI/64EstxNbZcXr8azc4c6WyqDF+CvPronALpxTO+8IwwyVxjeqvgqTQrIlbDH3PH
         OzZMMCgu3OUOEKmOfRKEmH5zubvDrHv0HFKtQYT85d10bAyI4gy2ZLDCfc6+RDQKM7Eu
         fCZCk1AR48wIt62R0m0g8hNovz+t1fCmc+m1cQV41fMVFV8UadzuGRbI4IHWihCPLkja
         jroQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0RlA0ollmNcqo0pG417UQFh7x4fGSDDailxDslngYQU=;
        b=CzU4i+DI/tb6lWeJ/LkWIfyZ8Ab4uDltvp2nUkmwe8Co9uZ8l7UkWJRowWHW9Uzoig
         P2wOqByRr64bx26JIwI0ZfFsZB3fP2LgtJ0zmUY6G9s8yZDfcs55pMqhGuwnhGeXs1pM
         HVqGdg/SWzsawSoLL/4nG5kn8o2zmZipFSvuKFIKDMkhkPmvsEw5FGpIZmKSO7upoww+
         3OfWpwUPGUVNf64dTC6O6bv9QUtXDgrmasRrrP4sJdviY5TTE8TGqe4VYiUs9cDN0OGk
         UaZT0BZmE1iZQubb+tZ7sL7ZJL8kKkRdHjCdVHZHmazIQOghhW+VQfhL9Nwgv9BVA5nV
         Oseg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53044RmKKx51g4Ij0nyLvhNSwRFqYhcC3OXW2lagMoTbXmhWsM4K
	RakQMX1U6nF73u7Z7nNq2EY=
X-Google-Smtp-Source: ABdhPJxKixL1KjR2gXGhu9QbFRfqLnijg/JwmSSHetaHkzlrW/yx5hbPi1jW3qt8fQOUZGjPMN6PeA==
X-Received: by 2002:a1f:5c56:: with SMTP id q83mr1929727vkb.40.1598554740214;
        Thu, 27 Aug 2020 11:59:00 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f354:: with SMTP id p20ls417891vsm.6.gmail; Thu, 27 Aug
 2020 11:58:59 -0700 (PDT)
X-Received: by 2002:a67:ec47:: with SMTP id z7mr5606718vso.44.1598554739827;
        Thu, 27 Aug 2020 11:58:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598554739; cv=none;
        d=google.com; s=arc-20160816;
        b=PA8NDAbQMyBKRMhFBQ2e968dih6aYf6HHD2OEWs4WO7ISbblNyE+wX0xSX0ypg+dNB
         F+lghIYO9g/Re4lyuN/9sEiC1qPZbiofI+d5ZsbKNr3V8G8bhtnIJ9Sv+b6WyiWYa0yp
         qRi+ISIcyeE2Ei7pj3Fu1tVed77HW1ozqxVf/X1fvmmp86AJAVYhEwprXJkL/U3VlHhJ
         H5rRYvP9UnYfsx3zUdVu+uUuP71wf475CM9urxZswtFnzkMwPhsz3Qz+JX75FYBFtNMG
         FIMpIDUHZcVgR+krwikNYAa/Ixs7CxolC2bp0dN5KiHDX6zxrx2eUK5BxFZenQFz+AAv
         s5Gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=t5UoWLXy5KX9ucq0u9A5QLVy18mzpnCS0dIJExLZUlY=;
        b=IuU0EOGVQUN/veW6Atf+Nlj2sTrj7tHo1zLKxVzwR5+hVoMUzr3rY+D8H6pi363ANq
         S77MNB/Q9qPjUnQLhKM9xIOMOg5D9k1EDbzh0600Hihx+VIgkyruqdRWjmMXHkQZIdlv
         wIzorGHZLy00JudIDsXfC33VWR2aORv062ygQ4kG9ROsZFyHL+42Nx/WcNaNHtV4UcDq
         z1VueW2un+tpk/crNjxlomO6HCM7rKr4jpVz1dl6kreIWcKCnAUUnDfLqHUXEDZL38fT
         PW8oSGqu9z66PmTCUAjU7HdBLi/R0ek8lr5SxoQgnNwBvQQxgBeZCaYTFEWq3t2fMiuP
         V/pQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=iGQrB7o+;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q1si212017ual.0.2020.08.27.11.58.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 27 Aug 2020 11:58:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [194.230.155.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DC8A322BF3;
	Thu, 27 Aug 2020 18:58:55 +0000 (UTC)
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
Subject: [PATCH v3 05/27] Input: rotary_encoder - Simplify with dev_err_probe()
Date: Thu, 27 Aug 2020 20:58:07 +0200
Message-Id: <20200827185829.30096-6-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200827185829.30096-1-krzk@kernel.org>
References: <20200827185829.30096-1-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=iGQrB7o+;       spf=pass
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

Common pattern of handling deferred probe can be simplified with
dev_err_probe().  Less code and also it prints the error value.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
Reviewed-by: Hans de Goede <hdegoede@redhat.com>
Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>
---
 drivers/input/misc/rotary_encoder.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/input/misc/rotary_encoder.c b/drivers/input/misc/rotary_encoder.c
index 6d613f2a017c..ea56c9f4975a 100644
--- a/drivers/input/misc/rotary_encoder.c
+++ b/drivers/input/misc/rotary_encoder.c
@@ -236,12 +236,8 @@ static int rotary_encoder_probe(struct platform_device *pdev)
 		device_property_read_bool(dev, "rotary-encoder,relative-axis");
 
 	encoder->gpios = devm_gpiod_get_array(dev, NULL, GPIOD_IN);
-	if (IS_ERR(encoder->gpios)) {
-		err = PTR_ERR(encoder->gpios);
-		if (err != -EPROBE_DEFER)
-			dev_err(dev, "unable to get gpios: %d\n", err);
-		return err;
-	}
+	if (IS_ERR(encoder->gpios))
+		return dev_err_probe(dev, PTR_ERR(encoder->gpios), "unable to get gpios\n");
 	if (encoder->gpios->ndescs < 2) {
 		dev_err(dev, "not enough gpios found\n");
 		return -EINVAL;
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200827185829.30096-6-krzk%40kernel.org.
