Return-Path: <clang-built-linux+bncBC5JXFXXVEGRB7HH2GBQMGQEZVSLWFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id 144AD35CB00
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Apr 2021 18:23:25 +0200 (CEST)
Received: by mail-qv1-xf40.google.com with SMTP id g9sf3965870qvi.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Apr 2021 09:23:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618244604; cv=pass;
        d=google.com; s=arc-20160816;
        b=KmtpWTNWMnMgdIpLy9Fb/s1C3lC6+IjkFja7hKD6VxW8UaPQBif6Roo+wLoLm5pVKR
         HIQrdZ7wvtHti7vpgEnSJMwGCrJBDfOW/MSwXu1eesaKr3pZd2Gu33uPzqNKMLpEFjyQ
         fIVMCj8SVGsazLbZ2ewFZdPUuqwHK/M0u8fWj064H8Bf8BguFN3e4o/gcf6pvPdcTzjA
         95+jOLhwZXkLDFlyN8hdws8v9KQgI7DjqVU9sb7AiCi71bPlv7fatU4ku0XhZK4U0TL2
         sVUZyKSHNc7AL8JZzuYpl6lRQU59NP425Lvqw6lwarXVTpXeygDA0A/GkVPlZN+9+RPu
         DTbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=O3hSfNV8FInLg34Ukcu6F0fykQG9QltNsFaSzJwAPQc=;
        b=jEEKlA8JAczZldmTnxdZN0fj26hnWr/y3QV96Pnyr7+BtRGEC5U4GfdFaQoRT6Jf8k
         XCD3kULocD7l54/lyA2DNg/rD9KxJWDV5aQzvgaRq30/qAWDNSAAomhi73NGUcsWausv
         zPrjAB5UlBCmLBm80976f/nSXptAjgJ+vSVDELv5El0q3D3HzyVMTgd5GuARmIl2bpVY
         TmFbw4zEPoP2BnKKgxVgYXAkPn/1C/eOt8gT4RIaDqBV6RgesQtHPq7a9t5mg+yQO6O/
         C10QEWeztfJaESzR+zt6EXd2EHM4/+9zMurGT3elWhl8HWRvuqqD+e6LaRa9Dy2waZOC
         /aaQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="d/1pgvgl";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=O3hSfNV8FInLg34Ukcu6F0fykQG9QltNsFaSzJwAPQc=;
        b=FIGVgi6A4rf88wGDHgSCuRNv62w3l1Fgbd6I0l5F4ZN3t/IMYhz28SkA+/RLippJmJ
         o6vJemuJZ4WXLs8vmriVTF7HeF9QgDxxoBLP8YQdm+cAL54p/if+yJfG+4NTvOoHB0MW
         djcZ0hpQ2CLCImdhps08EX4R1aaS5ycLbl2Q3EF+9ON3bR/7GFsJ7EZv5lzWzpUY7muU
         bUcaxWxvBgN7uppa3c6Wp400AlOawQWsT3lJGX+TpZ+ldFiEXZh8cs90xNnWpNWNVxzY
         peUzzrivtrzDN4Sf5lN7HyH/n7zJRcKMWq20239gD6LjK2IVPpXuqJHV6N5viehW4xHQ
         zY7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=O3hSfNV8FInLg34Ukcu6F0fykQG9QltNsFaSzJwAPQc=;
        b=OwaLe59IzHhUzhWGETgWdGGntIujGojhuDeWN0tHbZ5o7iJ5M0Coeo16zpj6CpFD+q
         xn7yf+mQsCetmwyeswKAaoZNPbwD8qdNXAACnrBDjNCdGCVQGU5xkf5vQd9YQWHlLNYa
         QhaBXeJEObK33ebG6VmktiOx+7538g+8sw9EjrCssIMMGwLmz/JYApk+uo5n+J7lslh8
         tM/KlNLFRWB14AtiNMbF2PPGqMOP/NQSionQcy+VYABhAwA4mIgruha+U4khTfGsLOZp
         MwSvEQkwcet/Bl2aLM7e8KXARf88OPZ7O9DlR4DdA3vntRWeLph1N3rCn2fMUWI9cH1k
         CKSA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531fmBxaXyfh0a2H8Elxu918oHyvv793lYDL7S1fNIano81+63v7
	Y/Rr+bLlPIKXL4aqqve1G0s=
X-Google-Smtp-Source: ABdhPJwY+Q6wNiF0fLtJJl4ZalEXCynAFrTj9jjmbUpnTTpfdcNBE2cLtAlG+F2qqxxLppMaFiVTNw==
X-Received: by 2002:a37:93c2:: with SMTP id v185mr19575823qkd.179.1618244604193;
        Mon, 12 Apr 2021 09:23:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:622a:606:: with SMTP id z6ls4007226qta.0.gmail; Mon, 12
 Apr 2021 09:23:23 -0700 (PDT)
X-Received: by 2002:a05:622a:134f:: with SMTP id w15mr25769748qtk.162.1618244603724;
        Mon, 12 Apr 2021 09:23:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618244603; cv=none;
        d=google.com; s=arc-20160816;
        b=S0s4yHJJynl5tVyrLDUiAvtsXR21OxeR5GWA6duUHe+AYwqiTvyN5OSzBRW27+bHVR
         7M+QPvclDD3h2zidIroq2jpGBAjiAbh5nVjH/k6L1xSz9zJPeA8nlyPEmMgCeGp80ZMX
         sReVSJ5b1A4oWN8xPAmDzaAvMegAYCV/9Wk8YfNLBNuNsVcta0klMz/cwceRKeQSBd6N
         gtu4ZiuzGzFFV7+p5EGq4+SNc5UWas7j0wKUF4s3AFpu4XIv7LbcZPxHpk7zl/FSIJIE
         uAieE17AuXDVx42VNujqd2wOoh0AIf+/ggZoockNRIOuj0oFjX6okML3CNoimCOmyERn
         bAQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=RaDl9JEIWgVAFZL3gEUyzg4YZfcDec31NPrL6udkmaM=;
        b=bn9ddg9eSv4dobaVawA78tuFDztCTPE5rGsyvzlt7aj67i8hpXSr2t5Q0pHsfrbT/K
         rGzgQ9KpjatN5Ts1qh5+EDvoayYUAdA/7Bg5QramIZNaB69EbMSkWbh/f5uKImm2kW/P
         stubwyseIL4L0aeipxG/yrNTF/n9sLTIdfuLC89ofSIspREJMt3BZPT9X7p3aL7/abDj
         Q9cbqqcNO8leWj7D2IBtln7noBboXJ9BaWhKIjODtp1qWjqLv+JI/C2wxgDM5tyB45jx
         CpvclpxhCE0XyUXWY3mu2sLSviIyPi2fQG9UWyDbp9iuKIF0y/B5ngsH0VTMccfcz3Jd
         Hw9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="d/1pgvgl";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k1si1392668qtg.2.2021.04.12.09.23.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Apr 2021 09:23:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 16EC160FD7;
	Mon, 12 Apr 2021 16:23:22 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Tony Lindgren <tony@atomide.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-omap@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.11 21/51] ARM: omap1: fix building with clang IAS
Date: Mon, 12 Apr 2021 12:22:26 -0400
Message-Id: <20210412162256.313524-21-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210412162256.313524-1-sashal@kernel.org>
References: <20210412162256.313524-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="d/1pgvgl";       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210412162256.313524-21-sashal%40kernel.org.
