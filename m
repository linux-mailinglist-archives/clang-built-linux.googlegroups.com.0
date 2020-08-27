Return-Path: <clang-built-linux+bncBC6JD5V23ENBBNUFUD5AKGQEPUBF4WY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BDC0254DAB
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 21:00:08 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id l6sf3902634pgm.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 12:00:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598554806; cv=pass;
        d=google.com; s=arc-20160816;
        b=ieI+HeiCKw4B+V4cJDmIHIIX/7L4j3ocMKZFMAhO4wA91+TkZ3EyPWBbcHvTntkKcG
         dztjGowvCucLKHrWqoc7kKWeKjTlEAvOeS3y7GCv7a8Fka/UhQA9jOYIKCAAQKVZYniF
         ACIhdsMLZpV5NoOB4HMmjZRkslDzOvr/cyxrXMkV5PsuC/jQgihbWiI60uqipU7ALs8+
         5kf4kHCv8e5eBDcgxVgD+6m/bQewRl7USZFh3mk8EvB0aQ1WR/oDBnlzmx9slzgYjrlf
         8zD2Q2KhMRgYPPnZDOCtVCUljTQufGk+o/91Xwl4ZJUBQzsPfb9dsCgHqmMRds3ZTdeK
         SNUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=p5dxQDfI+1tjcodSqpZKspaOMBfrU1ycROQHIAh2b84=;
        b=iNuK1ek282ASyK3DOqtqfpQo1HteeWiXEGrJ7Gm70lhAdJB/JZBsW9A715ORFzoEQx
         tKGcgAoVIYPsAN6u67gURzCpZBVpd+P7JlP50InTPJrTh87OAoQVYrsEVzyM/fQUnSSX
         csBxSQQtIlkCM0gQu56WZTaSTPWg5UuAqSHe7Ogtp3T3ZUMSK5ix+uRZV0GdIBcFF6p5
         7u5TZuXX4M7cIc/Gbr9O16cwQV3K9G5Uqh73I27BGL6ZlTZrpkXCCU1G8vBPOcC9u7lK
         VsiOxXtsZruoE8MyLT0Ji31ZpMYTd4JNF4sMbNTC7/wyO9+jxyTbGHyFNFo0SyF3YDKI
         iOPw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=zkF6n24l;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p5dxQDfI+1tjcodSqpZKspaOMBfrU1ycROQHIAh2b84=;
        b=qOfpDlLsWWXov33NYziB9JIjG/1F75Gnu3K506OkhDO33cTXm+D/wcw0FabzffgHmK
         v3JLDEXgD+/tFyjHgMx9JsNGAHNy+g5KR5r4mljWixMvVFkY/dprNhxcxtlDRVK2XrMs
         NfWjumcJCRtIvG9HF1Kg2O1UhpNBuGsWa0l4fLs/u0bjXZeFZGr5r6lyIZljFrsdFirf
         isKuDwrnK9YZZp/WFimT6KvhTUPVf7BwYGdbSL2NtnAsSEymTsa3hzyzOQqTL6vkQHlL
         lVQK31Jd1ChRTqrE+0Cjw0WIkUNvc9BANPWsra/zZZSPzUDM3Y6rUiDsjAn7A85MDLG0
         wYhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p5dxQDfI+1tjcodSqpZKspaOMBfrU1ycROQHIAh2b84=;
        b=FnkqzrW9kERE53v7zw+ZAmIn3T8zwg1bQMveUjsU3RSVSK2hxt7RIaO7Kx5RkVX00q
         jiPnPsH3bgz4IOQp6CV3FDrdsn83iSVbLcWTnk0RdTQNIQNT38vlryKcN8l74c+ZAY73
         YKHQIykgyZ+rfbT3vwl0t04NwiYYJZwvRFENJuVrhyQ7Nu0SIx1xFzbrQnm2sKhg6XzQ
         ZeqaVpGqdQj0E0bjur6q53NelWPIltLNCxWUXoohRbRPTMgdtJHU7aLwLxLxiqkrOIa7
         8tx9UMKpUqZZu+6nwpLeL1QL2SpSomOCAn2NjYU+UVHlHfZRicMRme5VDSaH6PJ4A3P0
         J+/Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Z5Sx/tvVuRPpLV1EWHQ+EgOOSzbXU7QQqvugS1LQwdO7PAfF9
	CVkZuSojEXg82yl+BaPs8wU=
X-Google-Smtp-Source: ABdhPJz8xkAAQ/q15q8ucfIkcY/6g26YpkStq1WJomy//4b+D7xYBuTw2TtP0PPWXlo2pb/hy6I+wA==
X-Received: by 2002:aa7:92d7:: with SMTP id k23mr17353184pfa.295.1598554806738;
        Thu, 27 Aug 2020 12:00:06 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:3502:: with SMTP id ls2ls1340851pjb.1.canary-gmail;
 Thu, 27 Aug 2020 12:00:06 -0700 (PDT)
X-Received: by 2002:a17:902:b110:: with SMTP id q16mr16697554plr.276.1598554806247;
        Thu, 27 Aug 2020 12:00:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598554806; cv=none;
        d=google.com; s=arc-20160816;
        b=MhKBSdXoEqgbAKkZZ6zc8rDx/7RLBUkvOHOnD7yG1sLOPf552cGMR10hLo74pSKTkq
         cdobM0fAnVBBFr8zW9/cyWmwOJsi9XrvFG/Moa9UNz9iuEhzfkZkK/5DSQniHdODoc5p
         hjDs3w9tjxwLp6OfwQUqfrMC+071iQf3wnOQUmtCw8TK8hkC1j1J53pAIOAWQ2uLapyT
         t4D73Re5hOpgDN8J6cLUTuZEQ0gbN9mMQZW69pgYfPXyHaEhq7g5mnm/gSSOtn+67oBT
         t2vPzdrLEcT/b+CyvM9Cbn2k9cCOs77arSf+Dv853fMB12jU5me4fFd/ChVtbmYlGiQo
         FZcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=os1IfjdxlABNWPLPhnZ6+0Q6QOQ9kkbjdTQnbzHd1wU=;
        b=RoukBccOJ3r9uQw0Fl2bTtScaFxJ7WcrjDBXIutYj5BNkhdCjWAAHanAQR8T9Eh243
         y/uYiaZ0VRrYTEkCq10O0bh4NfGAFUEXzkZX4MT2jVHtAYsXHo6/P5JqTNVa1kewcvc2
         17PF1B5iOnAniY6TQkrC2VLRIMnqj9lR40EHM+BtnnR7q5lofipYSbXoC2xQD2CsvDK0
         mki5zeizVK+dWUWLloTNzmhgOaJ7P6vG2T2xVPqF+gikw9FaHG4iU4hjLedv/WU66h5s
         DZ4JJ31nj1WcCJw6qFu2xkpK0YGZZPNCZgXQOhJWY27035/diLP4XO4a0v0ezkG8Obws
         ZnSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=zkF6n24l;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u204si209861pfc.1.2020.08.27.12.00.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 27 Aug 2020 12:00:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [194.230.155.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2B4F922CBE;
	Thu, 27 Aug 2020 19:00:02 +0000 (UTC)
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
Subject: [PATCH v3 25/27] Input: gpio_keys - Simplify with dev_err_probe()
Date: Thu, 27 Aug 2020 20:58:27 +0200
Message-Id: <20200827185829.30096-26-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200827185829.30096-1-krzk@kernel.org>
References: <20200827185829.30096-1-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=zkF6n24l;       spf=pass
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
dev_err_probe() and devm_fwnode_gpiod_get_optional().   Less code and
the error value gets printed.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
Reviewed-by: Hans de Goede <hdegoede@redhat.com>
Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>

---

Changes since v2:
1. Preserve comment,
2. Include <device.h> to fix warning on clang (reported by kbuild),
3. Fix use of uninitialized "error" variable.

Changes since v1:
1. Use devm_fwnode_gpiod_get_optional
---
 drivers/input/keyboard/gpio_keys.c | 25 ++++++++-----------------
 1 file changed, 8 insertions(+), 17 deletions(-)

diff --git a/drivers/input/keyboard/gpio_keys.c b/drivers/input/keyboard/gpio_keys.c
index f2d4e4daa818..160d94b1c2c0 100644
--- a/drivers/input/keyboard/gpio_keys.c
+++ b/drivers/input/keyboard/gpio_keys.c
@@ -18,6 +18,7 @@
 #include <linux/sysctl.h>
 #include <linux/proc_fs.h>
 #include <linux/delay.h>
+#include <linux/device.h>
 #include <linux/platform_device.h>
 #include <linux/input.h>
 #include <linux/gpio_keys.h>
@@ -494,23 +495,13 @@ static int gpio_keys_setup_key(struct platform_device *pdev,
 	spin_lock_init(&bdata->lock);
 
 	if (child) {
-		bdata->gpiod = devm_fwnode_gpiod_get(dev, child,
-						     NULL, GPIOD_IN, desc);
-		if (IS_ERR(bdata->gpiod)) {
-			error = PTR_ERR(bdata->gpiod);
-			if (error == -ENOENT) {
-				/*
-				 * GPIO is optional, we may be dealing with
-				 * purely interrupt-driven setup.
-				 */
-				bdata->gpiod = NULL;
-			} else {
-				if (error != -EPROBE_DEFER)
-					dev_err(dev, "failed to get gpio: %d\n",
-						error);
-				return error;
-			}
-		}
+		/*
+		 * GPIO is optional, we may be dealing with purely
+		 * interrupt-driven setup.
+		 */
+		bdata->gpiod = devm_fwnode_gpiod_get_optional(dev, child, NULL, GPIOD_IN, desc);
+		if (IS_ERR(bdata->gpiod))
+			return dev_err_probe(dev, PTR_ERR(bdata->gpiod), "failed to get gpio\n");
 	} else if (gpio_is_valid(button->gpio)) {
 		/*
 		 * Legacy GPIO number, so request the GPIO here and
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200827185829.30096-26-krzk%40kernel.org.
