Return-Path: <clang-built-linux+bncBC6JD5V23ENBBH4FUD5AKGQE45RR5EQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B1FD254D8F
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 20:59:44 +0200 (CEST)
Received: by mail-ua1-x93f.google.com with SMTP id d89sf1268287uad.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 11:59:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598554783; cv=pass;
        d=google.com; s=arc-20160816;
        b=X7vnlnK4vrDns/gjiSmQysrqBjHsB+VHL1wd9ZQFuLVufF3lNysNQPYBCSNkJx6Flu
         4qgidx+kEUYOSWP1aehVZxlJu8bN6F6ZYKhVLgZqtX/1CXky6XixlEcfuxERjitOdZRR
         pNMY0ypZx32EbZ6CADHYsbLnhhVyvDiJu5aVKNsJ6AiCeMF5ZGYRXNjGQ1qoGHnj2n+k
         TdJVu1xjZL6nZTYrQsb4qVmf3WG8Y7a/qXYBf6TLUR8bjLUQPDcmaLFwrk2ohgETnLYI
         rVj2FT38AY4qCjteg2mcgiM2fz0IhmK2tRC5lvZ2tVDZ63a2mF/T3+4xmQPfUid7TGEy
         GQFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=diFlvDHPvEePIJv49bAsfswWsB2xO0xEjBGBH9sneuE=;
        b=uPsDLpqxhdbKiZuG0aK6yFHk3MQ1T/3ZghqJYrJBdGlrnYecprW2Z/96p9wgS4Drlf
         YxpinRamD6LeLVrX2Q5T1RdRnE0dagf7Cyb7i5Zy8vWxL99l375My3ZOy6ofOMzjN06w
         8AZkDfhu5nmsGBsgbb50o8Qt1kjJV7I86Ub2tKNNlLzzsZy3MpXnYmIPAst2x2mFmCRc
         j4cUrD5388Mwal8VvYQdyljx8Wm3+FSOYm96V4094P80A9t7Fjed26s9L2uC5JTeSFan
         prH0P672IWOhGVm3oeOmAPRVn6OfaU+3GMCecRdcdHfJ3Ern/BPerFtKyv+S6VrV4+s4
         88uA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=D+xiDIZj;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=diFlvDHPvEePIJv49bAsfswWsB2xO0xEjBGBH9sneuE=;
        b=EY+LZdfX7FAiKPAL0Zda6pE3bj2mKx4He47RQy58R/8VwPFHAR6ZQ9exA4PnxswZFc
         TUDaOt69h3kZ6teo/Db3dS/SZ0MKvanG0M3VBmJF6rCnJk2eJb3dcvak6nagVE4Bv22X
         6jEMCSbrn5wommxjj3AT+zg6Bgg1XMKVrkhxqh8pyxWsj/PYxCiagKk5YuCm+/qz/yAK
         W3536AEk76hdKBCJsQhO9dcP/xLcU2UgEyWSqlRzz3Lc8O03KA7XcfaS9KGGpT1nwwQp
         JgPvfcJGYDEUc5TZIqqBlWgwq5E1MsjpLuZk50KZBab0NC+HCIJoDNFPxbOZ58Yhw9d/
         xnLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=diFlvDHPvEePIJv49bAsfswWsB2xO0xEjBGBH9sneuE=;
        b=JG9xlpaI7jRl59NRKP3bAekW41F4wGWWN34fSMuFav+ELXvEiuLANjhbJBsfS8DRZP
         FPwaE996Pt8ybVo/y4DKXXDgjoi1nP5iAM11tltEQ5Qlg8N7gUq6ZTprkiWtNw0Ppapg
         h9//BdEaBhfjn33u225RQyvT6QqArBpz9Ar/sGl6zpz4GrdjYz5656s5fdP5CnbHYY42
         kvr+q0eFdJOjL7/EnGdWkPIogD0DriCbh+m19PD8ByEu08ME3xbnCjzhyL8vAe+XFVDb
         rRGBBcivsopSuJ9i8C1UnECM+O8DAcSgYsE1ZTEAV4dPNCAkdPPWLoHca+C20WAsGNbY
         H0AA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530htvqHZDRnTORmwBtnQWPVjs2UmD+FA4ieqQykn6cKlKxw9Gc7
	El7FJMp/uYMgm2t87neHV6g=
X-Google-Smtp-Source: ABdhPJxkcLfeO4xRmLLwCEXQKEFluLI2qZjK6xNhP165nrC/DfbfQP9rECB8pAtIfQzivmFxPatpCg==
X-Received: by 2002:ab0:1305:: with SMTP id g5mr12600937uae.93.1598554783611;
        Thu, 27 Aug 2020 11:59:43 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c797:: with SMTP id t23ls419858vsk.8.gmail; Thu, 27 Aug
 2020 11:59:43 -0700 (PDT)
X-Received: by 2002:a67:7c81:: with SMTP id x123mr13352338vsc.155.1598554783271;
        Thu, 27 Aug 2020 11:59:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598554783; cv=none;
        d=google.com; s=arc-20160816;
        b=rgMVWX/Kx0aiViDM+sI5wJCOIO6gRi9snPI7lcSHuJdmO7mQ0jg9BTUrRG5dbiSRJ8
         cLmhrO+cnUFlLsTOAOJz+eM/sKkymruuosIo8fuKc7/uRANnLfk41GGGiWW0cFzf1MBi
         jM/gqgqxBRL6SWqTJO5v7Py9u/qROuCPnc4Y+jWJ6G4tJEWx+TmICWYD7KyyKfJ57c0h
         Q+YcK1cQqPsPCG0uILh2xTrjbCPi63nbMZlRimVI3DVDBIwNMcHJELmMBSXAtZfxJOey
         YEO/Sc9Vj3R2xRn3jfe/mLGdVvfEJ0Hc+tUPPLjSOD3DlzWpCzajMSoZtv7wcbWdNWr8
         nezg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=J9VPVNxKDlhIvhbDu2n0UaDoaMcLx/xrf67soHIOfvE=;
        b=yKJJ6YNJFzCK3a7JyC/JrIcUolbOU8GmuhRBWdB3IHx/PpfpKC0W7uBLvOkE5ashJq
         OaFL635YDHLMw4oiNafYF8M24XoFXUnyDP1J8GJN+Lr+a1UvP3cRTTiJbd/tJvRR4OI5
         HtJhrD2+SWqqVLKazPz6rEGHPKvTsPP8U0nK94RUhfj9rrO+k3/fSfZzgGyVdT+DoYuj
         wruRdLIJYUPJUGkmu5f/f+Dwsj+BO1GVHAfXPYhEwCqcvtgzdv+gSCTrPwodO1Wg33ug
         m2NeTEklca+Rr6W4eyWlbPAoUt/Br8iblRIpHBOM0u66k8ezifProtrZORX6t6bT3sx2
         KQmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=D+xiDIZj;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c11si176326vsk.0.2020.08.27.11.59.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 27 Aug 2020 11:59:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [194.230.155.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 65D8022BEB;
	Thu, 27 Aug 2020 18:59:39 +0000 (UTC)
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
Subject: [PATCH v3 18/27] Input: resistive-adc-touch - Simplify with dev_err_probe()
Date: Thu, 27 Aug 2020 20:58:20 +0200
Message-Id: <20200827185829.30096-19-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200827185829.30096-1-krzk@kernel.org>
References: <20200827185829.30096-1-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=D+xiDIZj;       spf=pass
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
 drivers/input/touchscreen/resistive-adc-touch.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/input/touchscreen/resistive-adc-touch.c b/drivers/input/touchscreen/resistive-adc-touch.c
index cfc8bb4553f7..46b5a6caef84 100644
--- a/drivers/input/touchscreen/resistive-adc-touch.c
+++ b/drivers/input/touchscreen/resistive-adc-touch.c
@@ -108,12 +108,8 @@ static int grts_probe(struct platform_device *pdev)
 
 	/* get the channels from IIO device */
 	st->iio_chans = devm_iio_channel_get_all(dev);
-	if (IS_ERR(st->iio_chans)) {
-		error = PTR_ERR(st->iio_chans);
-		if (error != -EPROBE_DEFER)
-			dev_err(dev, "can't get iio channels.\n");
-		return error;
-	}
+	if (IS_ERR(st->iio_chans))
+		return dev_err_probe(dev, PTR_ERR(st->iio_chans), "can't get iio channels\n");
 
 	chan = &st->iio_chans[0];
 	st->pressure = false;
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200827185829.30096-19-krzk%40kernel.org.
