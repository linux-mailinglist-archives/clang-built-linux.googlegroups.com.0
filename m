Return-Path: <clang-built-linux+bncBC6JD5V23ENBBZUEUD5AKGQE5QIMXCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 14C67254D57
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 20:58:48 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id l90sf1045018qte.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 11:58:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598554727; cv=pass;
        d=google.com; s=arc-20160816;
        b=qKtEfxst9l7QmiWHsyxbywypjKsiYqIRVgDcTf98skfqGU+cw1RMNlfxHfbC+RAU8J
         LcQVByRtWzOrYansbdvzMDgxCpaEVG3gnkohpyIEpwht1ySl9IKBSfQqWWLpysfZgFBd
         cHOGj+dY0ch8eUbfHJCpAMP5hJi3oNKZOuvY4VyHTNVEGS3nL4IM5SLHZDBVJRwlW81d
         25dBXcSO5l/NhTu/B+6LOqm68KrjcJ1nK02hJe5XXhlBeGnX7iqoJwv2kpeTRvJ85PoE
         gfrxDMTI3IQ7d9WiXAWueBklDInJCWFdSiG9wWfj7TMz18/K3IKgqqCj+h3B2m1oLhue
         zrew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=ThC0nzNJ0XYKAHH1FWUdbmcwuvKcj+SuF7/23Vlqbco=;
        b=e/GA0zgFqgUvSgx3Y5otnxDeiTVzgrml7CKkzBQ62V9ZmhJbD1X2JIKEm0F9fETR8R
         NHEVBJCjCacCTBUUXndyNU42PzKwtWOBYc5j6YGpal8Le22b+dBbpx7NICq1D1YfMQMe
         ZeLJfttfz3SuvaPHROsAudAWFVUF2hei+6tAxRmCCAnw1oBNkxezi0qjeQebitlJIFWh
         8qIM1JP285MWc4dG6ndZAeWcgkxL0ZN1/ZMuJglOUJbUs3G91n4K9K0yACaarZrg7H6i
         pSLMOHKUzg/Re6zuWst1L8mGR2w1HUwEFz274snxrBE4My/UEy2gQbKnmu8cv2AlEOos
         pixA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=q7NQXndY;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ThC0nzNJ0XYKAHH1FWUdbmcwuvKcj+SuF7/23Vlqbco=;
        b=ElxlSBK+0fhXt3xiHHLdHp37zAg9iu5RkgoFNc0fIGsanWgEvK/IrWXBC6YLz9LmCy
         LZoi1hAeqyT7VjpXUNykWxw7H3zn3CKSgsCuEeR0S4gfsbDX+r07DeEWyiPZuvi5RPR6
         mekNcJRRAsG38zHX2EkFKIk+vqTHeXlkqlW2HM946X/actE6aCW5mlYDhoI4sXpNStIM
         Vvbg9V4u/rYyaR6MQ+pg4A5bghp9i9tnBhHNVQSyPsciBgrZtHRnJsi699qYIF/rhQfV
         SzDhkanvQY+RkWIHmHAr2mX17C7qft7tcMe+me1G/tgfJs7ezimP6XY0jyF2VOe7usu6
         HK0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ThC0nzNJ0XYKAHH1FWUdbmcwuvKcj+SuF7/23Vlqbco=;
        b=eAtbqIpkMIhOflZICpQ7xlcLYWiyAzwgEaE3Jdd/FnhSHy+12w4mGyheOdDrHLRxV+
         YJVumqBlZFlyU+or+5NjpW0wLGfvxzGWcE2bmV2e0kSZIyr1tm+gIyr1phVuz4XghGOk
         7OqQBouGLyhftN+gFxYJC+Po5d48oQAfERA/fcqzpqkOVlOxquhU+ylSucYi9N8FkUWK
         ZiaSBAD5jVqKdGPSDi3wG0O/zcsEm31/V/wTannTFL54UWnTTwjw0hqT3ZDsddFlZAik
         /vAcu0hwaLNc7+UIHlQcRrqg/FLqC7x6iGMv8aBWbntb39HMOgdUBKec8SymW01PmNwQ
         3P6Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533YaGZTcvGyrXjbNxVihTQKvShb1so7c/xY97uETQ34gSmY8oLT
	JIq2ZdWsVksV5Xu3No076zM=
X-Google-Smtp-Source: ABdhPJy5/aHZI3CY6oEp+r2USPJS8OHlqwbFPeweGC10W4CgTELv/S+rNDy8mVim20Vjv4O0Us8Myg==
X-Received: by 2002:a05:620a:2f0:: with SMTP id a16mr2197379qko.143.1598554726895;
        Thu, 27 Aug 2020 11:58:46 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:18cb:: with SMTP id cy11ls105249qvb.7.gmail; Thu,
 27 Aug 2020 11:58:46 -0700 (PDT)
X-Received: by 2002:a05:6214:1454:: with SMTP id b20mr20405877qvy.35.1598554726539;
        Thu, 27 Aug 2020 11:58:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598554726; cv=none;
        d=google.com; s=arc-20160816;
        b=gbbuLWsXLou37OtYlMFiAkW0GqXzg4720+4qdK5SaeQvGRgS/wqbUdZqxY89wdu/Cu
         ktaKwIv256ntPGEITnWoOdFigMxFRrjRFUszH1cmywPgwD8FcHGMhwVzEMmvRZ59RQSv
         ntv6fuizTOqg7oi+nnLAk6XkUuz4hdqiRImAWuRDt0LPQ536h93emxWgfxgWfvmE2WKr
         anrNKR2QBvyUe7Sfx5X7TUlbqYFaoIEus1Rw7ZoA4jDN3dsps1RBGz+5LmhPOqsFZmFe
         Wrl8T71EaQ9AVXK+vodEPOhA7lDTlk2I9S4UIZejQ0m0NNHlafOkyzldQQQdwvqne/ir
         kf3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=tllm8+pi39ylvNN1zdCwAOnk/7oFsVBESWMwBr1SLjo=;
        b=lRcBjzQFRzIWoAT7eIMueSTMRBA3eUB6Uyw/gNVb1m5ASUPBm021HPkfZajYwUp4Vr
         84yywkGHkOb9YZgaKVeEk2Nudbacus9J9VeOvTCHQ6hic1E5YZ+dPuBg1x2YE4RGZkaP
         9YSjZEIGzgPM1Am3qZ6ks45TTgo2gu/VLA3qQhjor6CxXBdsafRchPaiHHA/O697hqao
         xfnx7PmavdG2ETemmqaTOmsoDI5dynvtFLQy7hic3j48mICAZrlg4He3MUXj1TG6t9cx
         1fxOAxcBwonndQJlJqriTd9c94IR6x/QAf8uqwY+snE9mkHouOc65MhRMcCrUtLsYHya
         E7Ug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=q7NQXndY;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m13si129567qtn.0.2020.08.27.11.58.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 27 Aug 2020 11:58:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [194.230.155.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 98B1F22BEB;
	Thu, 27 Aug 2020 18:58:42 +0000 (UTC)
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
Subject: [PATCH v3 01/27] Input: gpio_keys_polled - Simplify with dev_err_probe()
Date: Thu, 27 Aug 2020 20:58:03 +0200
Message-Id: <20200827185829.30096-2-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200827185829.30096-1-krzk@kernel.org>
References: <20200827185829.30096-1-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=q7NQXndY;       spf=pass
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
 drivers/input/keyboard/gpio_keys_polled.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/input/keyboard/gpio_keys_polled.c b/drivers/input/keyboard/gpio_keys_polled.c
index c3937d2fc744..ba00ecfbd343 100644
--- a/drivers/input/keyboard/gpio_keys_polled.c
+++ b/drivers/input/keyboard/gpio_keys_polled.c
@@ -299,13 +299,9 @@ static int gpio_keys_polled_probe(struct platform_device *pdev)
 							     NULL, GPIOD_IN,
 							     button->desc);
 			if (IS_ERR(bdata->gpiod)) {
-				error = PTR_ERR(bdata->gpiod);
-				if (error != -EPROBE_DEFER)
-					dev_err(dev,
-						"failed to get gpio: %d\n",
-						error);
 				fwnode_handle_put(child);
-				return error;
+				return dev_err_probe(dev, PTR_ERR(bdata->gpiod),
+						     "failed to get gpio\n");
 			}
 		} else if (gpio_is_valid(button->gpio)) {
 			/*
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200827185829.30096-2-krzk%40kernel.org.
