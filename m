Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBWUG5TUQKGQEDHYODGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F2997682A
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 15:42:52 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id q11sf28389348pll.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 06:42:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564148570; cv=pass;
        d=google.com; s=arc-20160816;
        b=qgTtFbwKEP/5VuOB/XMzh3vrzDB6Jc9/NJrbVJmF6nAoazC2fqi/Ssh3UJsllQCq+H
         geYEKwIq61/jjOSJ+H4J/+S1NGD+BR8q2NdAWqVF7SzpJO+IQ8hlJZWo0s9TE+UHoe+k
         ZRQ9L2nuSoPZZvFYMik7B6UUB49haW4tExDtwji0HtwQg6Hz+2TYlhLT7On76ap6CwSB
         PfaqnK3DQgF+rbgx1VlhC/7QPB/jj2M0eiw1vB5OgTUglSmX+2igCLm84sl1VRRuF48c
         XO8cx9JJOJ6Lgw6Ikd1JbIG17hOJeDBYUDqM7hv1NTANjKGRl+bxBtgmHBi16YRWxxmG
         hMdA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=jK9VrMYpJyltVub1lJNn6ZRiOtXdTzxMuTmOR/FUFy4=;
        b=Xs0B9Md+M4IAExbo4cwXR/hDX7mKLcDqul+qmJcYLgk8a6W7rh7r8VboS9WOd1eHG/
         dNTK1HpYtJIYE1DoLs2d+88mgzn6Y5nzddnGb0N+4trNwkcGSAOKAraXgCTwk4wDlsSM
         nvVaLsCiOLsrgKeEcAO/5s4wciuoBMlH8yu41lLRdEqAj8Xv+I3mLC3SPGJvwyFIeZyo
         Mb6DJ+1R7fxK+TthBUjjtBXCaLg9GAgIhWYTYv6b16NuqSk4jebTsUdWE7eo13hwl62f
         er+uYZyTsbwNhm5rUMnuIBVV2znNOMf/o9616ZrlfHxWtB88v/IDGSD7tH30ss4ZXkQh
         OTwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=oXxlcfIs;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jK9VrMYpJyltVub1lJNn6ZRiOtXdTzxMuTmOR/FUFy4=;
        b=QARmG5OJiQOToP8as4PDXw7ytqPK0AU+7i3qA+BcfMOhC1LVLp7ABm0AjIKsqJNZuR
         9miRma+8mk25K6U00obFvInBr3Y7gKTsAvjiYNpR6IX7nnZj8KEky6pRYJwsrDFNtDVL
         Oba9G1uyUF6v381X2Z/8V5Jqf30ykg8FMOi8R2y2pZDjL7ptHSTaGR2c+I8MBFMka/Nk
         q89p1SSVnm0mOSmMRoC3zXZCht34cn4nQyG/rs0PyOUdMdvG6uayvsMZETlD3nL3vl9I
         uHm5JA5t/q/1gAAMKkTs1hMFMZ2f2AwfQ8+xe/OVG4PxnjPG3g5CWZoY7favpkHTMPAN
         SH0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jK9VrMYpJyltVub1lJNn6ZRiOtXdTzxMuTmOR/FUFy4=;
        b=OWO9QYZ1Ks/4KAqCNjYw5CQxBILTWYyCVCMyKpZbXtImQfZVJqH1m6f4j/kKeWacdD
         ZR2ZHpVs7VRbDjhlYVubrXvGiH5KG9QbTvVj26qc6uYd1HYBdX6jE9ktX1qEiZ4zn3R9
         nIy4LotaHe5DdLJNQG5Iu1XTyOpr7dbcUybcmTmjfqkhKWGiOnpQRCyocBZVil4d5q9M
         bavXn1PswGYMpRYv00oh9AiC48nokPyx5Y+tB+eU43Z+jRmcl3JVreUrwj07VpwKsc2b
         dq+5yybWKdDi1z7PnATlAbjvSUAXiFENm1E0qUX3AsZsGwizsQYT3A5SFAWMIOqkQexL
         iQgQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV3EHQ4lU2XO0vbtKR77sQEZ94ByjQPU1H3CuJ0Q5i8u9Mh8eWU
	sEpqw2j4CRqXb2QcSrgoMz0=
X-Google-Smtp-Source: APXvYqwFjRpoSJJ5YBoGQPO4NUocyddz1kis5gfAtclofDgqUa40cxm4QLlMq7OQ85GK3/VBXVyA0w==
X-Received: by 2002:aa7:8dcc:: with SMTP id j12mr22503584pfr.137.1564148570818;
        Fri, 26 Jul 2019 06:42:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:90:: with SMTP id 138ls5168999pga.1.gmail; Fri, 26 Jul
 2019 06:42:50 -0700 (PDT)
X-Received: by 2002:a65:62d7:: with SMTP id m23mr91490424pgv.358.1564148570489;
        Fri, 26 Jul 2019 06:42:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564148570; cv=none;
        d=google.com; s=arc-20160816;
        b=cAT/pBJe+PiXxYyHq7FJJfUDvzq+0pwSbpev5Pw6SyQ5BtI8oPa0II7WSDEUwaplDD
         3MkduQQKDbc+J8L6+sRABzuSjTWCy1des3pO9vimE8Pa6Eu77I5DzwOgEjRr8R4rCKUc
         kcnxQdz3w0OziTEOlDmuV+rnWvhyYZnC5ve0yy5n8UrNtqHqUeAh5gkg4s5mhn6OnMSQ
         Ldbagk4lfPP/j0jF/9zKG4D3yuOEl4/yu81JEfV0lp4x7O/46hgsfhf7tt7B1Cbs4K5Z
         jrY/P6IzS+O3BOGsqSJxSCzr7gE8CSr/hiKf4lb/9GaXgRbMtMlz/G/C8j7YQphkhX3P
         q2hQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=PmNLGlE8DFqQyvkia4QByp+ZL1IvEeeaGlHSJWaicQc=;
        b=M3nlOpTjcvttJTeMx9ojA4tBqps0DYUm2LKqTB0wTHoIT0cWFgVAwJ8KmjXbif9cPq
         vEeyryKzLAJ7R/vN8FdkJ1JY9uWj9NGVzyCMPt//b/t0cgaIabHw4oj3Xh6juiNNDkME
         Tl0MfW9lndjICzq16dj9dytF1PUZbE4VE7p7zKOz7Jcqz966xKa4bbROIeIsNVsA77Ns
         5/sFCfTe2Elc5CB6unubxpgkjauIs+zom0tPCn3GF6E1HKw2YItKdtrRRZXzIn6APrvE
         m1LCcOiqlNfoxw8jsvGFfPcRHXwlJ7ou5/gDqtf6iB02jkQkOIAn6ltRHNVfprWmLOK5
         E2DQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=oXxlcfIs;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b12si970392pfd.4.2019.07.26.06.42.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Jul 2019 06:42:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5916122CC0;
	Fri, 26 Jul 2019 13:42:49 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.19 25/47] ACPI: fix false-positive -Wuninitialized warning
Date: Fri, 26 Jul 2019 09:41:48 -0400
Message-Id: <20190726134210.12156-25-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190726134210.12156-1-sashal@kernel.org>
References: <20190726134210.12156-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=oXxlcfIs;       spf=pass
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
index de8d3d3fa651..b4d23b3a2ef2 100644
--- a/include/linux/acpi.h
+++ b/include/linux/acpi.h
@@ -326,7 +326,10 @@ void acpi_set_irq_model(enum acpi_irq_model_id model,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190726134210.12156-25-sashal%40kernel.org.
