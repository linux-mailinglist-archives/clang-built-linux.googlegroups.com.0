Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBHUH5TUQKGQEBXNVWLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id BAD8876852
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 15:43:59 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id a21sf26124741pgv.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 06:43:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564148638; cv=pass;
        d=google.com; s=arc-20160816;
        b=bEAPcQChll1pauRoYIv75bOIKYArcKr/B5IbWOv2LMnm6UmeVTKDu0bDHzl0Wqi3zx
         Uk6U/JU5g++cJIrXAfw0DL7nmZ8lhDJLQmzohdeit/OhuOUujfse24jbXwjIMelOl8+r
         4/rLxIoLo6pL+P/b+qtOeDq7Q5vVZrZyUhwgR+DmxQl+dNSxP4tIAHDINZHFGP6ycaZw
         o6ROTVfN3vKRiJ6pgIoy3/7t8TJM1NDJbZLR9F8x9aHuEOV7sayWCjumUU52PAeWjaRs
         m92wjFwc+0gVEYUhRNRRBIhHRETCV4IVf9oT8RQ4rIgK5M+k2mgx/vXXyWFwRuoJ+uks
         PZqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=IxoF2xMsAR3bv/2SLPj3Mm+tm8BHb3vSXFJLkAyUtJk=;
        b=Zl/2j2vTrtGy4ODn/41HJw6C2994L5LnRGhUc9QaVfrywS2AUTTg3GVkIl6nwXxYx9
         KVvZL+e9v0JZJwzce2dAof1O9bL9AU7UhwEdVGww0pc+jh+RFQFkSenMxPqPWxlnv6Jw
         PD5iiHiWo28T1pzfHeN9njyjCPoR/5ikysXDWBSMzWszt4o4nQju3Lb2KM1t7CfScIJW
         UpgiPE/vBjDOr2atj/VWu/S9OELWyIUAX6uCeIr+EuZ/vW/qxzeY4vqrq4dnGm4JvXM1
         6NyybXn2F0KxS9o04BhdTdVRqnzcAxM/F+JLMD3jUCaGyt4ZgPvVdLGl5d+t3q9OtuTc
         HBuQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=aEiCCJAK;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IxoF2xMsAR3bv/2SLPj3Mm+tm8BHb3vSXFJLkAyUtJk=;
        b=CLEEWgbxLAFhUF72AXmLdygBKJ4GxnIQdv9Tf2/KigalocB494RelV9Gz60X2OyFqd
         K2jIZ3Qv5mqLEqkDDX8SVM+kiMmxlnJSshuDU/ZzjNafv+3Uqla8uX73XGO79GsMHjzi
         cS457i3VnmriaWf5pWxNeND08qJhLk9Kcx8Vq5dnQ55JSBTvWMRk8ZyWpLHi5Bd2cBW5
         pA8MSvzmlvE+xNKHXHW+yqk0tvmZ8crUxjf+/NeNByqrDAq1aiet2ZXmnEaK+PgCE129
         Xg/9m9qzy0UIkRUGERikbZx+h93kZt9S4OpP4L1/llIM9/16MqL+9/xY5I2SVPm16lX2
         qPGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IxoF2xMsAR3bv/2SLPj3Mm+tm8BHb3vSXFJLkAyUtJk=;
        b=bzo2zteeC74Sb4p3QbT57gVFRkcyVXCkTo4a2p+JPE9ynNUIm7ETwRBMUULZ2LGqos
         AQwj5jozQwK5CCFuAYXp6wes3hVXe8KLxm/3BS32Jn6cCopSWD3Q2Kow+17tc0DCN1Is
         qSNr4EpYpmNC7/rO2OviB3h+QtbWIlEBASAKkqUUjgnlfugfTEiY17WnlKSOhw0LTTwh
         A/W9x1xqEwmKxK4pgMzZqsNZXnwH8ETvccZv/2fTHTPU3uO8OKb4SnYSlrQ6/11vpR65
         jNtwbnlOKBPOVL/TD1iwGxA02kHNyaSZOEMtIcvwP98OJdP68z31O2Q9zJ1QOJkFDV37
         SgnA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXrEOS18fd2sW3KRWnASmkG9WzFAGnNPnMBEB/5pr+Vn7pgw+1m
	LFmbV2SwnAAAKvhu+8Oa8YQ=
X-Google-Smtp-Source: APXvYqzOvzk4RNyJh5IQalD71k8OPlO7OLFDPVUtbh4W6td123IVzie23gjpAV0sFzVsSbxvFc6GWw==
X-Received: by 2002:a17:902:9a06:: with SMTP id v6mr93946141plp.71.1564148638509;
        Fri, 26 Jul 2019 06:43:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:34e:: with SMTP id 75ls8633525pgd.11.gmail; Fri, 26 Jul
 2019 06:43:58 -0700 (PDT)
X-Received: by 2002:a63:3ec7:: with SMTP id l190mr94259274pga.334.1564148636556;
        Fri, 26 Jul 2019 06:43:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564148636; cv=none;
        d=google.com; s=arc-20160816;
        b=XoJs9SEnezKwwuBYh9EsblR+Fpq1HvZ2wvvs0R+pn1ZPjgkEU++9eoAXG3L5rMTyyE
         j5do3MammtMeTpXCjYFPbQN/86Gx94GNnjihyAIUIEphvYxmXQ3bshjQLYyMOeNKZerK
         YkTf0C/SN1Dh4HVENaNIZUloFtNVtbFOJaz72zMp4FAn9jOsJJaov1ctsfGaa16NmKRM
         0YFHzDeCCeT+dgoRfOEb+Gox+xCRNh0l+LpPVRygqffHmjd1Q4KcfhhocANeMiQqoZTj
         GmvbXnUsIsGrzofNg4Htg+FdKW0HGW6/mJ+KV/9ef7gp+LTlaTTsgB6IkkEdvCR1T3f/
         rHsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ABkbKUyZlA7i4fJuokrSNfUVYAQ2p7YSBH1weO97TKY=;
        b=K9FibWmWYVMpPkypQRIKSAMEGjmUhA2wSlLn5lENxNJoKdr/xSZnXA8qqBUOyw3cmS
         qxYA/DVkixe8MgQuS1nqjYssO6+k3OUWEJF77y/FL5BvVmeEAjzvCFjVhZ6/ssLO8Q64
         VZeprxYEG9MPO4BvNGtzaQQvpdI2Z1YFrY3zW1bg0UNjq1gPUvSY0zqUsythLEpikcyh
         NOdPrQ989G/4lmncySx1vjrmZW5YuDDutZqrC0a3aY5e4vHzs+FXWsNo+cN3/9b46l8l
         VkXmPP58F8qvevBmRTGtsKgZ7ZaHs7sVEPwl0fJoZR7FsBTmcM5BTCycYs5DHGCOuKDa
         bcWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=aEiCCJAK;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j6si2473032pjt.0.2019.07.26.06.43.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Jul 2019 06:43:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6863E22CD0;
	Fri, 26 Jul 2019 13:43:55 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	"Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-acpi@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 18/37] ACPI: fix false-positive -Wuninitialized warning
Date: Fri, 26 Jul 2019 09:43:13 -0400
Message-Id: <20190726134332.12626-18-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190726134332.12626-1-sashal@kernel.org>
References: <20190726134332.12626-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=aEiCCJAK;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Arnd Bergmann <arnd@arndb.de>

[ Upstream commit dfd6f9ad36368b8dbd5f5a2b2f0a4705ae69a323 ]

clang gets confused by an uninitialized variable in what looks
to it like a never executed code path:

arch/x86/kernel/acpi/boot.c:618:13: error: variable 'polarity' is uninitialized when used here [-Werror,-Wuninitialized]
        polarity = polarity ? ACPI_ACTIVE_LOW : ACPI_ACTIVE_HIGH;
                   ^~~~~~~~
arch/x86/kernel/acpi/boot.c:606:32: note: initialize the variable 'polarity' to silence this warning
        int rc, irq, trigger, polarity;
                                      ^
                                       = 0
arch/x86/kernel/acpi/boot.c:617:12: error: variable 'trigger' is uninitialized when used here [-Werror,-Wuninitialized]
        trigger = trigger ? ACPI_LEVEL_SENSITIVE : ACPI_EDGE_SENSITIVE;
                  ^~~~~~~
arch/x86/kernel/acpi/boot.c:606:22: note: initialize the variable 'trigger' to silence this warning
        int rc, irq, trigger, polarity;
                            ^
                             = 0

This is unfortunately a design decision in clang and won't be fixed.

Changing the acpi_get_override_irq() macro to an inline function
reliably avoids the issue.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 include/linux/acpi.h | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/include/linux/acpi.h b/include/linux/acpi.h
index 13c105121a18..d7a9700b9333 100644
--- a/include/linux/acpi.h
+++ b/include/linux/acpi.h
@@ -324,7 +324,10 @@ void acpi_set_irq_model(enum acpi_irq_model_id model,
 #ifdef CONFIG_X86_IO_APIC
 extern int acpi_get_override_irq(u32 gsi, int *trigger, int *polarity);
 #else
-#define acpi_get_override_irq(gsi, trigger, polarity) (-1)
+static inline int acpi_get_override_irq(u32 gsi, int *trigger, int *polarity)
+{
+	return -1;
+}
 #endif
 /*
  * This function undoes the effect of one call to acpi_register_gsi().
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190726134332.12626-18-sashal%40kernel.org.
