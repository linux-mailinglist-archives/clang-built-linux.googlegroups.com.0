Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBCEI5TUQKGQEBK7563I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C3EA76898
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 15:45:45 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id k20sf33015470pgg.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 06:45:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564148744; cv=pass;
        d=google.com; s=arc-20160816;
        b=LYXZNEOMyPxByggEGYOGV/58s5QVHlQ7aKFHynQMp/ZqP0ltr6NNPV2vAwg4rF4kgp
         bnnX4rzc3LzFZvaz9ncu8S8H79v22/JX6SVbYmVS6mRTMAwkk80hSXb7nKwq+2T6MvRG
         JZrYqyfT+3bdviKfyJxCjUx9wouYxKUpa6EjpPbK9wyTBiUpyejWtZyPJchc11McKglD
         kI2ezUF5jTXAdR1hSmvcxkBiSMfy5W7BoYtkQe+doa9EXZyh8hKa9V+ldEmj+y8VDeq1
         v8tJsYdsiERhhTTVEbYZRsGJ/93Zqz4JEktX7hLsG8d1bBW/H1Gz6d/OIKv1lHcPI96J
         XThQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=iQ3dOsxJMdJqsmF19g4HQyYGgxKpODpO0Te58jF5aiE=;
        b=Q4VWPX1wobKj9ifR4eSaS+6kqbhEt2AeZZrD8oa/p8mqPJRBYp74bJg/05gkAccgRU
         rur8NEqAQHjrp+yhESWnh9g1/JJWck2sJBZH9LyKcj+7WyTiEOZZFjN+hpnZrWRM5BDq
         IcLPtcnGf50KC+VJ81f12JVZatyhGkzEI6Lk0bEciaKE/6+7odGa2TG0Qj4A2dNqjjKX
         NZJmYw2XcDaYmfTpuJHg1brbxM7FDs4sqKI5/N/he12Ge0GVLFVPDdggLrbdQ1l0xQWi
         V7Mf0tGNuzG217CqQkuyckeeUqpmvqWt+EY1tdAppoftQRCw3iydhBq3ybC/CsU0JlpR
         34Ow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="v/5ihOjd";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iQ3dOsxJMdJqsmF19g4HQyYGgxKpODpO0Te58jF5aiE=;
        b=Cezb35N9vnoj4FAzUQFs4LDi3iG+OdnMAfz5m+XGGy3eKErPK/KCLLoGxpX2x6kUuH
         teX5XrrOnqQG8xPZPz8D5nNyFSi2tce9GbpHQ+gmju10S1DOxPrApNwJGBM9nIW+geas
         0PXZsTs24/7TKiMZZNZDuktxdWc1VNZtlHNMzy9DLBwCKhopStaZpSc7BpHLK4uW+zV3
         y/x6oY2rCLaqPMBMotIS8UuXETB015pUL5xzFf9LNeheR7fet3wOVVv0hqmej5yXeyLH
         4D2fCrQGBeXTcSeMmoCQYNaksGl/EzsTILMdhVHnYja6XiLFJmuH+38yuBzKEpZ4QYPk
         L3Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iQ3dOsxJMdJqsmF19g4HQyYGgxKpODpO0Te58jF5aiE=;
        b=pvEXQe5AUWkfaW+w0/8xGkC5bg+o2sL+HC3WndATuhTNUvO2P0mf/TfPnSpAhsCg7l
         ggi2SLp3C4DabrHnPrbb3UpnqhS4FLrKlrSMZquINob8wHNKG0lgKgliBTCkqYaNWfIy
         vYNXRdtnvE65XO5Nzt72lcOnzm9mSigSKOJATxvP8UHlBDZrgKupTaetFXl1uGtmxOhT
         mj8KQ71JL2zY7Lf9q3eU/1iKlf6omj4mfUWy7tUENs3adLfuEYwirecSOStAA2gg3Jcg
         ct1x3SDgIebzq6iyQ6qGmxq8Vap6tsDdX/0Nqi6Dqb74FuT+FI/Yss/blIYdySLFdowF
         xvBg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXs0/n3z1W8PtF5VFUNLnTbt1jeEMiYjFuZnqJHi+1xzXwZjE3/
	4LLrklY+Z+htlGCvIf0nnKY=
X-Google-Smtp-Source: APXvYqz1XOaF8X2C/taM5euqbbhwjbnr6PSQqacHD/0B0waKCw0mZ/r5u59PxYhSVOR6HKNgNR04HA==
X-Received: by 2002:a17:902:ba96:: with SMTP id k22mr98809339pls.44.1564148744072;
        Fri, 26 Jul 2019 06:45:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:680d:: with SMTP id h13ls12483952plk.13.gmail; Fri,
 26 Jul 2019 06:45:43 -0700 (PDT)
X-Received: by 2002:a17:902:a413:: with SMTP id p19mr97182718plq.134.1564148743796;
        Fri, 26 Jul 2019 06:45:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564148743; cv=none;
        d=google.com; s=arc-20160816;
        b=Fg5iNpG8R6yTDZ5v5rl1FMRM1NLZN3zLT7stBlbE0KdVRR+YFrY8RGTdupSjEUq54d
         lkh6azdAgHmZq2+qT0TNOYxPb4rFoXfY5AS0woR29yzo0tRMced5lN2ZnskCqPIr+F9k
         TifH1St4WsEkRg1uYI6/UMGvec5NwZr1g9fcYqtQgLmdE7ZZkZ+CLlvdeK8cK2x7C9r8
         W+kLCKMcURBdeIpbaX5kxmUSoy8UVq0yFmxfe7KexqJ6QUZpKhtfPQHeGHk2Gd/bZBMn
         UaVug40VJ6DD1PjO7Bg0nyCVClMQ/vyFtqvyKkInFrL/iAlXxDakrjfF8U/IGEGYiIJC
         KxhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=L+vQflhJ3+3b4nNs8Nv9Ho+2L06M3yoTiMmHSlbsWQQ=;
        b=Y3zjKUiiw2UQcRRXf2KHOC0yB227a00A+K3Yr9OXH44hdeDvdrRLrba7PxsMJoU+fJ
         313n+0aMx9xonDsworn12BydpUJsb5H7GjMt5kTWcIB4Uhz+hdY1elTJrEizJHf/ge/v
         3VKMAAc00GqknO7kF5M3BlId1ffovBa/V5BU3cZ0wK0KMuDAG/UP130dYzo9htKL9xum
         5wlPWGtistHjBS3oakjTV4iNSKRKpLJ2UQIBz/MX4vV0+xO7NjMFyoVw1NybF15/Z5sV
         QMmxBjkeZmXyFazAJ9QXLgu8dCAo+NmCRhqViXMHqf+QzyjIiVHDCPLqUFjLq0y6IOPa
         fJQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="v/5ihOjd";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m23si1753949pls.5.2019.07.26.06.45.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Jul 2019 06:45:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 948F622DCC;
	Fri, 26 Jul 2019 13:45:42 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.4 10/23] ACPI: fix false-positive -Wuninitialized warning
Date: Fri, 26 Jul 2019 09:45:09 -0400
Message-Id: <20190726134522.13308-10-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190726134522.13308-1-sashal@kernel.org>
References: <20190726134522.13308-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="v/5ihOjd";       spf=pass
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
index 3672893b275e..6a30f1e03aa9 100644
--- a/include/linux/acpi.h
+++ b/include/linux/acpi.h
@@ -226,7 +226,10 @@ void acpi_set_irq_model(enum acpi_irq_model_id model,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190726134522.13308-10-sashal%40kernel.org.
