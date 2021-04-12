Return-Path: <clang-built-linux+bncBC5JXFXXVEGRB4HI2GBQMGQEWRTACWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 21CB935CB9E
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Apr 2021 18:25:21 +0200 (CEST)
Received: by mail-ot1-x339.google.com with SMTP id e109sf6761520ote.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Apr 2021 09:25:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618244720; cv=pass;
        d=google.com; s=arc-20160816;
        b=p/UUNqzXWMGXLIdZZ1+JJxS+nkPGaiVfsgjHnX6Vid0UtxM7bp8jqpUZSKALWQbpcy
         M2Rs3yOyCVt+9knuscYicCj+MNZg9J1o7hVDaGpbVZogNRhXprwPvpf6JstzLyh9jny6
         tFvlbL72o40ma43qxnfI7k0d/V/4uIFj+/BzG12LF3WUKjhH3BFwYQYVy8KROMCvELhC
         /zV+SdF1lqmewlgqojMZYlyND/oDG/P5hCAezPdlHcLgcTlu0ObIlcDuhH9+iesivEiu
         YSNMIqi7b/fvvVfuEgwmvT2h21WmeDhyjIACxURuMdFSqWxCn48g8aADVZ0IEC8+6SB4
         fo+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=miiHiKbVz6877o0CzNol6sHcJo7cfijeIMp3vCd/Ryg=;
        b=OoQxobKkeNBfJCqXHG2+WcATSPTSjVV1HY87JZBhO1Vr+4qC4DJLgLcqNx6D+Lzn0L
         +5UdX1ws9WqLVdnSdyF3b84K/Vp0AXYb47gb+czvtRbaxIbbYn97W6L5+Ei/vknxvORW
         MjnSRX1GcziREE2RK/hADPqYG/aUsvF102juxfUPpW7Xu63SZe0MzZc6Swb8cdGFHmTG
         EyLX/msH3fk3V+W0Ni5NRDFLVd+mtd8k1VLtW5fGpJvAlQMCViysexxdJHkIH5590EkC
         GKGDab7g26iYffKFO6IlZXa1CggKGMduHBSO+Sx9NFZTsVYQHuMf45pjoca8F2uL0xNK
         Woow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=jXtpbT4u;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=miiHiKbVz6877o0CzNol6sHcJo7cfijeIMp3vCd/Ryg=;
        b=HtGLhbN3pEwvC4bs3quQYpRICtZran5byJ30+w8yJFksPD2+nTa+kehIjHGAUX0Ucg
         ScSd7RDEL10CFQZHJ8S+Y3jZJu5l7f2dGejNUvKnAghkwizgorWr2UUxLXZf8KuNwWIL
         2XBIJMkxjIsXdQjt+0U+yLMNaoMd468FKKWd0ghaCCXn43u5auwGg7jSBn0efof08JFI
         Eui1fFeH9s3GQSl/BQLVXccx4Uv0smDGD4sCv0x0tWp57J4RWR1ZOdigMnnF5xx2O6Pg
         FpknI/pFS+ATVeCLsD1QJJeD6o9iU3yzjdfrN4NCtutQP9Q/tnrmiS5gZPuSkEG/FXrK
         g90w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=miiHiKbVz6877o0CzNol6sHcJo7cfijeIMp3vCd/Ryg=;
        b=sby3ZZ6FGmNizHgm4IyetqFJxz9kFPpOvb+fQuzVZfvnP7iHiDs5jot40B4lHmNORI
         5w/LW+xB9UHQejEpAvwt56vmDapRSDpnGEvCLhEKGI+A4ZeJAKNAzLt+m6Q87bu8yAaQ
         2MWyt8RXKLm44enR0A4P10pER6AS3okJlYePDH5iRTMbBoxH2FhwOmDxzqDK63xiHy9Z
         GCi2oiFPhyvFXU48CeAYTc76plBMYtKPXIa1OSp2ZIKhZkKzZAFEvlZEPV8v9q1P+ZKI
         z6IsDTILmR5fDwhVUF9ruUEe+brVag2jkhVZ8AddM76ktrvpm71yJ9FWSA5w4JzpGJ/i
         Ly6w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532XKj8unHZP9qqo0HGh+F417KBWJwUaOaKA8tnQmsHP6r73m9IT
	8IY4Qe6Qc6wH7Gb18IOJS80=
X-Google-Smtp-Source: ABdhPJz1OKaUlGacw7kqtqFH5ZLCf7TrK9qyVmiyJ3deis1w0N5k8pD4No0jKStHFAKvTiRvuGlD3w==
X-Received: by 2002:a05:6830:159:: with SMTP id j25mr15924046otp.92.1618244720119;
        Mon, 12 Apr 2021 09:25:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:dc45:: with SMTP id t66ls2688870oig.1.gmail; Mon, 12 Apr
 2021 09:25:19 -0700 (PDT)
X-Received: by 2002:a05:6808:f0a:: with SMTP id m10mr20989832oiw.48.1618244719685;
        Mon, 12 Apr 2021 09:25:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618244719; cv=none;
        d=google.com; s=arc-20160816;
        b=iDnuIdDgQAJJf8rIIXm4ZALyDxp8QrfKqXD+zLz+UrDMyPjZ4chsHe+xqGdMo4wMu2
         3aIT558SVXXVf7feDDS3SlU0YLfFZuDX/Yl1UwR5U/ZL3NyJSqffv2dXR2bt4UU216zO
         IS+hd7kmdv2xT9Mj4XdFNTyz1tT+81vzPgR1YAvD7cB74tJzxrc36fbaBGczrUQ4kkV1
         EiKrOK1XTMfTXs2dPmjwX+MXgCic8JL2WIKqPzTpsUVfIKg7fgeQ/FlTV1CfLD60DHAH
         OQlwNq6yTY6aBYoImD/GdPhZPiptUXkMHnEPwwFFoEtlADJTZOvaXV6TI0+6fm7LCCLm
         HFsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=RaDl9JEIWgVAFZL3gEUyzg4YZfcDec31NPrL6udkmaM=;
        b=KPszC3667cNM8jhwHMZvEo80i7tYycperhysTU+sA1emEJ/7OHDyBrqUIhKwUvJI+x
         Ee4AjlkplnkKpcxDWZZdMh+cR0XCVOcc398IZYJc1HTyd2wrrTaZNJFZ+Y/+BxNJnW2M
         Ynkgm1QL/eYktTFd2ub1uaK8yMP5/nUluRBVsl13TzOwvtaWH2GqAd4IY/92SYO4bJX0
         Akc2f3T8g1A+p3kRf3jpoQxsFXY6mKhACKBGADh5oBFpmuZjTV2ICdIuSeRsB60SKqz0
         7ivuCb03KBSvzu4/Erb9uMzpm8BzBgXRc1l5YiuNy1FPut61yiQyDhrXrEg7crJvR0iT
         mW3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=jXtpbT4u;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a12si838141oid.0.2021.04.12.09.25.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Apr 2021 09:25:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2543561397;
	Mon, 12 Apr 2021 16:25:18 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Tony Lindgren <tony@atomide.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-omap@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 13/39] ARM: omap1: fix building with clang IAS
Date: Mon, 12 Apr 2021 12:24:35 -0400
Message-Id: <20210412162502.314854-13-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210412162502.314854-1-sashal@kernel.org>
References: <20210412162502.314854-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=jXtpbT4u;       spf=pass
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

[ Upstream commit 28399a5a6d569c9bdb612345e4933046ca37cde5 ]

The clang integrated assembler fails to build one file with
a complex asm instruction:

arch/arm/mach-omap1/ams-delta-fiq-handler.S:249:2: error: invalid instruction, any one of the following would fix this:
 mov r10, #(1 << (((NR_IRQS_LEGACY + 12) - NR_IRQS_LEGACY) % 32)) @ set deferred_fiq bit
 ^
arch/arm/mach-omap1/ams-delta-fiq-handler.S:249:2: note: instruction requires: armv6t2
 mov r10, #(1 << (((NR_IRQS_LEGACY + 12) - NR_IRQS_LEGACY) % 32)) @ set deferred_fiq bit
 ^
arch/arm/mach-omap1/ams-delta-fiq-handler.S:249:2: note: instruction requires: thumb2
 mov r10, #(1 << (((NR_IRQS_LEGACY + 12) - NR_IRQS_LEGACY) % 32)) @ set deferred_fiq bit
 ^

The problem is that 'NR_IRQS_LEGACY' is not defined here. Apparently
gas does not care because we first add and then subtract this number,
leading to the immediate value to be the same regardless of the
specific definition of NR_IRQS_LEGACY.

Neither the way that 'gas' just silently builds this file, nor the
way that clang IAS makes nonsensical suggestions for how to fix it
is great. Fortunately there is an easy fix, which is to #include
the header that contains the definition.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Acked-by: Tony Lindgren <tony@atomide.com>
Link: https://lore.kernel.org/r/20210308153430.2530616-1-arnd@kernel.org'
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/mach-omap1/ams-delta-fiq-handler.S | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-omap1/ams-delta-fiq-handler.S b/arch/arm/mach-omap1/ams-delta-fiq-handler.S
index 14a6c3eb3298..f745a65d3bd7 100644
--- a/arch/arm/mach-omap1/ams-delta-fiq-handler.S
+++ b/arch/arm/mach-omap1/ams-delta-fiq-handler.S
@@ -15,6 +15,7 @@
 #include <linux/platform_data/gpio-omap.h>
 
 #include <asm/assembler.h>
+#include <asm/irq.h>
 
 #include "ams-delta-fiq.h"
 #include "board-ams-delta.h"
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210412162502.314854-13-sashal%40kernel.org.
