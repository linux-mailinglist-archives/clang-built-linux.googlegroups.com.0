Return-Path: <clang-built-linux+bncBAABBRORXHZAKGQE2GRLFDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id A9BE1165C75
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 Feb 2020 12:08:54 +0100 (CET)
Received: by mail-pf1-x437.google.com with SMTP id r127sf2196199pfc.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Feb 2020 03:08:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582196933; cv=pass;
        d=google.com; s=arc-20160816;
        b=eNUoi7SAr562yEXNhHizlWpxGSLrV4CQekkKdyXnpG66Jf7ndb9VZF9ZkxPRY0c9sM
         Ur/750cH2n+KNcugK25dwxRPlc9g+W4jWDyFaTCUSLdbMIasv0BTOSZCfLNqO7chUn8S
         uGeaOWo6nIlyGxcIJdvvVw9cGJWUoEuBeOiYFahruvdBaqp3u/p6o+pUpCNmM1/BTRwH
         BjFohGWTLa/38dfmIj6MxF2NpULJNZ/j88532Zcl0ygNE3aMXn1vDrSNpBKfuLK+/jCT
         F+BBtL93AGyZrB5W0JBJKiPWaZ6woGzMWamKdWY7SBaTnseT2jyMtnQeYWaNwp5D4XFu
         wjMg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :dkim-filter:mime-version:sender:dkim-signature;
        bh=wfx9Hesbu8Wb9LzcIsWxGXlDiHDuUEwSYNP9xyVC9p8=;
        b=BRJQGNozXx8N+bITBA3esu1Tk+V/lX2AGx8jK6/dIphWiZBEhVpqZdIJ1bAzicJxmj
         g39fvwbhFql1gv1vsd6Se7A6WPUCVqRgkoI3xJEFQQ/acYcnmkH851Rt6PtSxjobEN7C
         TRSR5JpyiZ9xbnh1pJw050tQcJHvh6Z645E84/GCZ0XBpqaervetQbZJS1GV3dqjCE0q
         ooUBcfbnAs59KfkA9jeDchaBdIdWdPQUVn7Q88orwvqQkYu847lm8F5iaKLemz+CgIkJ
         bWHILbX7Hsv2O6LjaP396RtAa8l+9y4TAG+uK8K1CpjJrZcjF2pBQf771Gs8vTm45nkC
         x8Yg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=ohxozsMk;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.74 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wfx9Hesbu8Wb9LzcIsWxGXlDiHDuUEwSYNP9xyVC9p8=;
        b=hVaTzKgut8fHLp+7cnwUb5nE7bRDKdD9npTMM/nHVhQJwFQSGc2d4QYXJpeeleDLcy
         rGL2LipXEr3RufQKXRtziZAjqTEnf/3dUF16zaDYfLbfPhADwLBwt0vhSYkWr8fHMaEP
         A9L5SFMUH2T08mNOMkziDjhW7Tw8e5GFuFUdSSsbrjnRyh+JiBvqfbFBz52mlSwOw1B4
         to/pIz7Yif6iHlLe5bGS+T7fDU232d9QKPIayjZODAkexIVr7QbAKOw4vwgUILtZ/Sof
         U4VoV9zrCB+WW+76PerztDlzMlub+223xpOoNeOh7qF80OLXOKHV+Ip48F82icYf0Vs2
         dulA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wfx9Hesbu8Wb9LzcIsWxGXlDiHDuUEwSYNP9xyVC9p8=;
        b=WQpieLSTmLXQ1rs1v+dqlJRLWXx3ec3vS4BwO6PnuvG/AgoXxQmr7Q5m8rtEgzILZt
         zlyYlq1mZl1s0wn/FmgvajKwmgi/BxGJyJZjD+4APPpGB5DqVc/+R1RFoYLWrU6SrByg
         FcpF2Ftnclz5DQ+G5KSh/OcOw7ztSn80dIkuzgyUmtViHy0j8s31AuVgzCJXl5+sQltC
         8ztapicTSbnQC4TRU5M9lBv24C/SCJsN/Pabxxi03IJkBnDtfysNmJOu/BSW2oxJ3NjF
         IOhQK94ZJaKcWZwcm0KBOu6ylskV4iyxwVLZdL6HQxbdEPRDAqDbT5iSahaHSXw9UtEi
         6t6Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWxZv0oqSz+gYD2SdzZmS7oVkZepgpK4r4G73ilNo2p/XAg6gs0
	NmgDxah+H5nYcgFxZduoOig=
X-Google-Smtp-Source: APXvYqxYEUD8NxdY5IyWEGN8griR91Wg+qm5gvdpRNIyox2R4r6XiIR2J3X17+oxTCBD+Hf5s62Xxw==
X-Received: by 2002:a62:7bcb:: with SMTP id w194mr32198593pfc.216.1582196933093;
        Thu, 20 Feb 2020 03:08:53 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:d70b:: with SMTP id w11ls8763133ply.11.gmail; Thu,
 20 Feb 2020 03:08:52 -0800 (PST)
X-Received: by 2002:a17:902:7c95:: with SMTP id y21mr30092066pll.186.1582196932664;
        Thu, 20 Feb 2020 03:08:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582196932; cv=none;
        d=google.com; s=arc-20160816;
        b=ax4IBWLi5BqMj9cebzh1owjsFkTXFulmRL9EwVbXf80ZEPbdZmeLzY8ZIOmMoU/Eku
         qjoCO890obhwCUfJAuHp5NN0sa3ptxsnMzgXIrMSg7N/qLmR4pXdR08rWN6QTQH3/cL/
         QkVanO1Iua46siN1kMbpdgAgvtlEl3iCFnVfyKYHIGkMtmN2KtXeHuwX69JwaCQ00E3t
         rt+r+zRFr/7GO3+cjqGG7/a9cEWBfdToYyd87VYlwb6i+jVg1RVbt9UTBEqxmiXLRsBt
         7YSWNn6qngugN7XqLakIVstnhNhkwD+H978KDgpx17Vat7uScajs1W+ZneBirE8+H0HK
         9LoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=IDIlSd5PyoZKAMfckRhRo9czWMeumqnauQZkG16ECr0=;
        b=JvgYIL2V8vF9RjRaKJHn/b2xhgO1MdUH8P7gjn82vfwiwdN0bVyr9s+Omn4oYrMcaL
         q52VG0ceyKsisiYPD6XHLiBHRtcC1V8yGHth6eQSSDy1ILMA7hv2KKN73ZKntA7snjiB
         6CikARF6UgW6iW5EINP+7wabDZ2HAI8P1FaQISWedhd/AJck2+EVWmRZtasKL8bgTKsu
         J3S4+/nDWfVlYqbXrAQNJvPpHUZjAtmaicnw4K+OqvAPq97/JN1n60PRfAPMQhO64JdK
         phuezp6K8+kzPFQGWRKxog7/GzWMwnePJcNwiGcdp1Slx0gpncXDtkwGBX7hd3QNSIbz
         MZxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=ohxozsMk;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.74 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-07.nifty.com (conuserg-07.nifty.com. [210.131.2.74])
        by gmr-mx.google.com with ESMTPS id a4si61711pje.1.2020.02.20.03.08.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 Feb 2020 03:08:52 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.74 as permitted sender) client-ip=210.131.2.74;
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp [153.142.97.92]) (authenticated)
	by conuserg-07.nifty.com with ESMTP id 01KB8BM7031854;
	Thu, 20 Feb 2020 20:08:12 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-07.nifty.com 01KB8BM7031854
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <masahiroy@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Arnd Bergmann <arnd@arndb.de>, Ingo Molnar <mingo@redhat.com>,
        Thomas Gleixner <tglx@linutronix.de>, x86@kernel.org,
        clang-built-linux@googlegroups.com,
        Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
        sparclinux@vger.kernel.org, Masahiro Yamada <masahiroy@kernel.org>,
        Andy Lutomirski <luto@kernel.org>, Borislav Petkov <bp@alien8.de>,
        "David S. Miller" <davem@davemloft.net>,
        "H. Peter Anvin" <hpa@zytor.com>, linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] sparc,x86: vdso: remove meaningless undefining CONFIG_OPTIMIZE_INLINING
Date: Thu, 20 Feb 2020 20:08:06 +0900
Message-Id: <20200220110807.32534-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=ohxozsMk;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.74 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

The code, #undef CONFIG_OPTIMIZE_INLINING, is not working as expected
because <linux/compiler_types.h> is parsed before vclock_gettime.c
since 28128c61e08e ("kconfig.h: Include compiler types to avoid missed
struct attributes").

Since then, <linux/compiler_types.h> is included really early by
using the '-include' option. So, you cannot negate the decision of
<linux/compiler_types.h> in this way.

You can confirm it by checking the pre-processed code, like this:

  $ make arch/x86/entry/vdso/vdso32/vclock_gettime.i

There is no difference with/without CONFIG_CC_OPTIMIZE_FOR_SIZE.

It is about two years since 28128c61e08e. Nobody has reported a
problem (or, nobody has even noticed the fact that this code is not
working).

It is ugly and unreliable to attempt to undefine a CONFIG option from
C files, and anyway the inlining heuristic is up to the compiler.

Just remove the broken code.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Acked-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
---

Changes in v2:
  - fix a type
  - add Acked-by

 arch/sparc/vdso/vdso32/vclock_gettime.c     | 4 ----
 arch/x86/entry/vdso/vdso32/vclock_gettime.c | 4 ----
 2 files changed, 8 deletions(-)

diff --git a/arch/sparc/vdso/vdso32/vclock_gettime.c b/arch/sparc/vdso/vdso32/vclock_gettime.c
index 026abb3b826c..d7f99e6745ea 100644
--- a/arch/sparc/vdso/vdso32/vclock_gettime.c
+++ b/arch/sparc/vdso/vdso32/vclock_gettime.c
@@ -4,10 +4,6 @@
 
 #define	BUILD_VDSO32
 
-#ifndef	CONFIG_CC_OPTIMIZE_FOR_SIZE
-#undef	CONFIG_OPTIMIZE_INLINING
-#endif
-
 #ifdef	CONFIG_SPARC64
 
 /*
diff --git a/arch/x86/entry/vdso/vdso32/vclock_gettime.c b/arch/x86/entry/vdso/vdso32/vclock_gettime.c
index 9242b28418d5..3c26488db94d 100644
--- a/arch/x86/entry/vdso/vdso32/vclock_gettime.c
+++ b/arch/x86/entry/vdso/vdso32/vclock_gettime.c
@@ -1,10 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 #define BUILD_VDSO32
 
-#ifndef CONFIG_CC_OPTIMIZE_FOR_SIZE
-#undef CONFIG_OPTIMIZE_INLINING
-#endif
-
 #ifdef CONFIG_X86_64
 
 /*
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200220110807.32534-1-masahiroy%40kernel.org.
