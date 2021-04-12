Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBN7I2GBQMGQERFGUKQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 4315835CB6E
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Apr 2021 18:24:25 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id n23sf6485654pgl.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Apr 2021 09:24:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618244664; cv=pass;
        d=google.com; s=arc-20160816;
        b=mXVBcw6t0PgxYJ5NL0xxh3C/dmlAK+i3if9vNobYvl6mXToAhGv9QmDsCNATKrjr6g
         A6PxXLdB5UDz/tH7wx8ULrBnsd6/E9tNbVQBibFu54814TtveVky5hq2Yd3Ij/EjVSDU
         2iiQJFN1yw/q4Km1VpSGFW29LGnzQ850yZjNsmdm+F9p4VfaRCChucbzGQb0VYNwFUFO
         gednZpkvLdxNVfTLnI9NjaSlK6vp0/sN58LY99Q+XqVpf90I2uW+UGOXxSrEQNTEJJga
         ZZBMRhKxZgkBJtA7lkBxOUqPVC50PrauYOTY2SpvqcyYthBJjI4wAF+oeA1S5/1Y8iKf
         4cSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=tkwyNu01SjPZQ3zcWc/jWWtNFThTjDQGy+Blu3TEKFM=;
        b=V3krEQVyTrq502OkwobN3RxAq0tzzJ1caLJm/ZE3iLBHwiNCw/NIfROC6gkMo+UkVQ
         0Q7iZlt8p6EIlyyjYLagDcN3aUUmFTuVnrOBRTG2Ev/PzW0mdX2yAWFPFdA/U5ftUwyk
         +suUDiC0yRwd9vKjKd/NxOsVR8v8dYHCZ259kIWrxhJ6NxB1rimgbOfYU50qjK2hqsRn
         k1a4kvkMa9Yo4rjEClobdJkOyPvnoaCLUYwFLp/615s/ZvROl9rQDlhCF9K8dnHaB3/t
         1k7v8nFNWHwKzl3MWFTuFcjo8Zvwk7tUCWfH5X4ZlyhJzNFs4QVL8TzDfMrEJm3vkm7B
         6KWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=OGqFORcN;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tkwyNu01SjPZQ3zcWc/jWWtNFThTjDQGy+Blu3TEKFM=;
        b=fRdijoVP1UhkWz5DnsC0FeSjVZGDQr3jcSTK67yi2CnvhOXW8h+EWzDaYJNS8fWWgm
         TGL22BRYldgHWWWDjYHIQzjiEtjBuT1QJOcuH6bL6XztFYM9xJt9EG+NCk5xvygBylpq
         wkL7DgUfnBNVJbXfL4zw9dv2Wa/XmDlKZzNAnB3lDAjJW1bamc0A/ZRtLABNUnkXadSe
         zjNjNefKc/XcDoLPFIRH3Dv0zppKq4B7JKfp7NXBjjiMbZnVLPoEoyQiNu988cYO6qMq
         /7if0neXjiZhvQMSuKev10eLoRuY4aWwlu/IGdNtF2oz9PfEDLO3LUUPOgA0eun90P/i
         h65w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tkwyNu01SjPZQ3zcWc/jWWtNFThTjDQGy+Blu3TEKFM=;
        b=ZXEeB32HrRnEOMej56Ss8xBRPeO5kVtJt40Y2v5fuekd1B/K8Z8pSP1xKcxzehkvYa
         hzyChKbUUfOZ1A/BwvPPeyZjS4pLdr3yarHm1UEijHbS31KK+Pgt+xXXu2fKEPkQV2hD
         MucELOc28VJAzhoK45S0R6W+Nb3Ixk7f0261vL81A3vQknnAtPiAkZDfTNm8H/MKhT4Y
         yZnRSMm7X9KN07V2to+C54W4t/0CAIXh6RXjVbKI6WNRka6riQ7H5Vwb9vB9Sekot/0V
         C5/s2S868u/ruyOEt6LQUDAm8MB2QS1utDVcCNSZqTtc7BGlpPiHNlUiXqsN/7e7tFsK
         xh/w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532VJfZT5KDnQiAZgCpi+QNemHqv0xrIgMmwpYNyj2+dqwTAFAGb
	z79YgSsf7P1/yq+sp1GLZ20=
X-Google-Smtp-Source: ABdhPJyPpXMyZDyuP3rOOnmF0ES8qILEL/Kj6MFm8dxqLYCNVrRw4TvHYpfdajACZKB9z86BYqm4SA==
X-Received: by 2002:a17:90a:9b18:: with SMTP id f24mr28319637pjp.96.1618244663982;
        Mon, 12 Apr 2021 09:24:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:1062:: with SMTP id 34ls7472147pgq.6.gmail; Mon, 12 Apr
 2021 09:24:23 -0700 (PDT)
X-Received: by 2002:a63:c157:: with SMTP id p23mr21083696pgi.162.1618244663418;
        Mon, 12 Apr 2021 09:24:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618244663; cv=none;
        d=google.com; s=arc-20160816;
        b=xa655NbYyRH+pt4fCNCZnYYIAJgXpqf4IODn8leBayGcGsyRftkHu+0Gr4AW9Fd9V9
         LBHoqaNnaDFxzFtGIsl+ULB/BTkQ26T/A1Z+j0iT29DRLTv9IWGDjvuI9a43pKiUBloS
         hB664BV0t0y1YFvXD35VM5jMZq6jgIyCzA/+3ZP+7bw5afcNg3FK6cKRfqwTKiacFAxJ
         FKnGi6tDFKisiIrPAoeq0IzV1AYCxB9d1RGfCOn5JmTXuC+0+CSDKkTmnVsriKpfNnLO
         rQ0TRSraAUL2NuUrPa3e6I4OiA9njXftl4TxUzJODcg9FnOYDtRfYmk+GnMH4Laq9aRw
         yrVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=RaDl9JEIWgVAFZL3gEUyzg4YZfcDec31NPrL6udkmaM=;
        b=Rs/iO2hTyfWmMRrbPPJw76sruziDqUAYbKV/GtSCqO/36SDRTAvGOTi2+deFdqsh5K
         dPO6zs0EMTsmyDlUl9zleY18eVsgc6gpuu9NfaASp0pQXMzUgvpiBNSq3nmnrm7nYIwZ
         eEFG8vuArGOXcksGMDrNbOH0QqwZ+loEt3yC/jVbxzx00guzT+We9ZtqRN+ZsZmDJ1Zd
         hC8lijacvn+JzrMNJ7q6keMG6ouJLQrlb+vMtP4if5NoQXWIqIUUa2IuDN870Nfnipzt
         5AKOi3CIXF/Vkz48+3mvZcDGto9lG+NmDXy1haR5LKE1UZRf2wz2QOwBS+qTD7003noH
         fTXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=OGqFORcN;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w16si583353pjq.3.2021.04.12.09.24.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Apr 2021 09:24:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5950061288;
	Mon, 12 Apr 2021 16:24:22 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Tony Lindgren <tony@atomide.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-omap@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.10 17/46] ARM: omap1: fix building with clang IAS
Date: Mon, 12 Apr 2021 12:23:32 -0400
Message-Id: <20210412162401.314035-17-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210412162401.314035-1-sashal@kernel.org>
References: <20210412162401.314035-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=OGqFORcN;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210412162401.314035-17-sashal%40kernel.org.
