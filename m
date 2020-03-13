Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBB6VV3ZQKGQEFFRDLGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D440184B33
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 16:45:11 +0100 (CET)
Received: by mail-ed1-x539.google.com with SMTP id p17sf8581639edt.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 08:45:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584114311; cv=pass;
        d=google.com; s=arc-20160816;
        b=YCzfav7iF90NPlmtgXqvd5CORV7J3KlFy+XtLsH/wwUligKgwYcNyqBXnJDbEY7Ib+
         eNx8KdH6F0aVp2bZmi6DG2w0IwpvFRErxYE9Ao4MJE+4GYDmsWvXUaXYIHbPxRWMW5Ia
         8lFsQmg25oYUXi8/4wkqPsX5Hq9ADov7CXHVczDQ7ArUOHhqKVOmo7wRh3QbNnaXHEsl
         jICRoVeq18pikkfVcDTGlXgnaGkS46UkVnu5G7JTbZlaeJMEGCK4OdaRt3/9cbSkbZth
         FuNU2xlPWRuCcgE8KFlfNUzD9wOMIqHIL0IVHuNr/xRAw5Mq6ZYFsD0+Bw6mAYdFw84d
         ml8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=jJeqFnGWEJ3Z41R9KkFDt/82NgT38riJvLF/l4+SN6M=;
        b=qb6E7iR0fChfEKvgcx+YmLea2iDpZT8Db+zMNOr0gG0DHkb6txkw2Z4Lp29nDdmQta
         ZllswGWiKsw07ydsyy5haI9j6pQBIoFywVOH6ExYZtbjMx0jIRHq+P6kKM2ky7cPHlip
         jCxlYvt2hvX+fiFahJl07h/APA5cW3Di2J43yqT8cv7R9Ic3dbBLc4qpCGYPgMu7/SLD
         C4Bl+KwITIQmyPLsKY4uEp5CQkhH31wa8Dm2mS7ZAc6ZgYnPzFgUe3fWAtMmPAHBlk5U
         5pux4U4Sc83C/Rtb/yPLanbmHWfSZUAYESEt2uvi2UKIHYFo2b14NuWZcujwPXHRBxaE
         s/og==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jJeqFnGWEJ3Z41R9KkFDt/82NgT38riJvLF/l4+SN6M=;
        b=Bj2RMUg3I+bBBpAWDGt95RtBxka//aT+n5dtrqlGL1ljnsW4EZsTV66ZCB3jOGaWPk
         RPu6DFZS3e2j+YsiceywdaaIfYhv5TZhXp1Jf64TM4eFkjdc0snEdz6AHOkoRuJtZM8O
         MD2h2wCTVgh+zvNgSkNq24msfjLMWbThlYHYFMd1LHeIWY0lxoqIuaYknWLZcvwPZMwC
         Bqp2RxWMgaIM4IH+gXxFYYUpAFwtXM23V25BJtHVGwnzRB8g3TcX5zPykrQYF5r472Sk
         ADWaAwZpXwm7tyP0JZHb+08GCGgqy68is3dDeikMSMefXIzIyeVzDlea+jYUZwXJXVJJ
         OPcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jJeqFnGWEJ3Z41R9KkFDt/82NgT38riJvLF/l4+SN6M=;
        b=tK5e927zFB6B+ros4dUqd3MjJHVtuM1JI1ACTTZUYNBGNJ0fG9bvjzLkfYd5luT/OI
         DuMXPktMmEXpH4BS44D9LkpR1tNJyJWWwQMAe5s4MQsXWZ5jnOgDwXZF8GpZ9/b9h+fo
         NU2BajvGFu0JQnZHQEGRM8zR9gP5ALMyUlZG+1isl9iTpQKDDUzbSQ73J7LrjngmrkJ4
         Lt5s1upPh1/g5ZNZGn8JRWezI0uAFTujukMVScB4y1uHlAteM38QZ7MNFKUCQqEpYtZW
         3y6gj+tGGllqLfs8NFESU1EOHtqpr3vJfA3wuPAse+W7qia+NPwUhDo1tzC99GoHCJv3
         Rz8A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1eOgwMWinrOWmfIxZG0+FcjeM8V1ncoIhbNAUs4kL9juQXzb9+
	7dNF/jt85XZMB0ThnppkGJg=
X-Google-Smtp-Source: ADFU+vs829PY7msdXWmnqyMb/jwdXWDT/3/ip6D9zsIl2YNY2OI1nmSIm9avo2j+0lpIu/CpRR68Jw==
X-Received: by 2002:a17:906:8509:: with SMTP id i9mr12183305ejx.61.1584114311286;
        Fri, 13 Mar 2020 08:45:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:cac4:: with SMTP id l4ls6558962edt.4.gmail; Fri, 13 Mar
 2020 08:45:10 -0700 (PDT)
X-Received: by 2002:a05:6402:292:: with SMTP id l18mr14499419edv.307.1584114310733;
        Fri, 13 Mar 2020 08:45:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584114310; cv=none;
        d=google.com; s=arc-20160816;
        b=vhnUJOCcA8MGbV2DZ5Wmts4p6upYzBjXE1+ikYzVTVexn2traXUjfxQYdwUB+f77xB
         9Pn1Ln1Nh4VAQXIKg1cuIyNyEvkdF0hwdJreUPVNGetQK5aCQmyXKf1Cy6qoUuWhCqjk
         tVkYN2LUQNXm2fZgSmWC/HecIa00l9LD7mgmHCJgnf24MMl0Xqdb4o7DMIEsSkQXnse7
         XM/2tuppRIEyrm8nxpdZ2ZOyFp+SO5+eRQHwHvErtH5ws6kVXznV8HIQTAI+j1EP3jAV
         ZaBe0LKCtT8DDlaZ93uZLzVCnEmeIh0FX3x9DwmCiUIuvpDqyQPYdhDwmzzDHryVQ266
         KRoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=Ghu6d1cx4K92Bt+j2AOswZdkOa4VAxuo2gyY9GmE1H8=;
        b=lm2jQInNFoP0wuq/925l+/HIYUjpo2ON9CeIMkOiLtZck695Thq+kbZ+rQJFwP1HV2
         hWlEI8cV/fhxifG61rVD340UIDF3y6bKvBlejR/hapj9n9Gg4s0evthMP+Ddt9OyObN/
         +d5SLh3e9AjyZtDe/TPy2PewIpU9CaJ76cuZaJDaln9NmXSek5DRDqLbXzNyQ1ORm03C
         F8Bu/dwxEZeFB6hF/+owlkQxnWrSvAcln3eL+kmt/8L9xps6LNKkfdqkjXZK+tnobYxG
         nyfTTkoxbyOzDY0OTYFI/6n3fgaYyhXkobLeL3EB3Z5ILxzhJcgA6jncpX4hg/Mzs1WL
         ZUSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id e19si289724edr.3.2020.03.13.08.45.10
        for <clang-built-linux@googlegroups.com>;
        Fri, 13 Mar 2020 08:45:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 23C70FEC;
	Fri, 13 Mar 2020 08:45:10 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 119473F67D;
	Fri, 13 Mar 2020 08:45:06 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	x86@kernel.org
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will.deacon@arm.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Russell King <linux@armlinux.org.uk>,
	Paul Burton <paul.burton@mips.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Andy Lutomirski <luto@kernel.org>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	Stephen Boyd <sboyd@kernel.org>,
	Mark Salyzyn <salyzyn@android.com>,
	Kees Cook <keescook@chromium.org>,
	Peter Collingbourne <pcc@google.com>,
	Dmitry Safonov <0x7f454c46@gmail.com>,
	Andrei Vagin <avagin@openvz.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Marc Zyngier <maz@kernel.org>,
	Mark Rutland <Mark.Rutland@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH v3 20/26] arm64: vdso32: Include common headers in the vdso library
Date: Fri, 13 Mar 2020 15:43:39 +0000
Message-Id: <20200313154345.56760-21-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200313154345.56760-1-vincenzo.frascino@arm.com>
References: <20200313154345.56760-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-Original-Sender: vincenzo.frascino@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172
 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
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

The vDSO library should only include the necessary headers required for
a userspace library (UAPI and a minimal set of kernel headers). To make
this possible it is necessary to isolate from the kernel headers the
common parts that are strictly necessary to build the library.

Refactor the vdso32 implementation to include common headers.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/arm64/include/asm/vdso/compat_gettimeofday.h | 2 +-
 arch/arm64/kernel/vdso32/vgettimeofday.c          | 3 ---
 2 files changed, 1 insertion(+), 4 deletions(-)

diff --git a/arch/arm64/include/asm/vdso/compat_gettimeofday.h b/arch/arm64/include/asm/vdso/compat_gettimeofday.h
index 81b0c394f1d8..8d8d1c006a68 100644
--- a/arch/arm64/include/asm/vdso/compat_gettimeofday.h
+++ b/arch/arm64/include/asm/vdso/compat_gettimeofday.h
@@ -8,7 +8,7 @@
 #ifndef __ASSEMBLY__
 
 #include <asm/unistd.h>
-#include <uapi/linux/time.h>
+#include <asm/errno.h>
 
 #include <asm/vdso/compat_barrier.h>
 
diff --git a/arch/arm64/kernel/vdso32/vgettimeofday.c b/arch/arm64/kernel/vdso32/vgettimeofday.c
index 54fc1c2ce93f..9366ceb635a1 100644
--- a/arch/arm64/kernel/vdso32/vgettimeofday.c
+++ b/arch/arm64/kernel/vdso32/vgettimeofday.c
@@ -5,9 +5,6 @@
  * Copyright (C) 2018 ARM Limited
  *
  */
-#include <linux/time.h>
-#include <linux/types.h>
-
 int __vdso_clock_gettime(clockid_t clock,
 			 struct old_timespec32 *ts)
 {
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200313154345.56760-21-vincenzo.frascino%40arm.com.
