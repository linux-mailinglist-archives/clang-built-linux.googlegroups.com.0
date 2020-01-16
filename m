Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBTWCQLYQKGQEDKHUAAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E9E513EAB2
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 18:45:51 +0100 (CET)
Received: by mail-vk1-xa37.google.com with SMTP id y28sf8511384vkl.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 09:45:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579196750; cv=pass;
        d=google.com; s=arc-20160816;
        b=LYU7GaLY39dOsljjikh6htxMQHxg0azyANbByCeeCbcO6SZpRmLEVkVB0OWGJrsYc6
         H5jUyCCezPv/wO1R2Tg4CkdZdssaWIEfGpgUI6YxaQFvKhXMAw5Kr4dwGY82JYvIce8C
         Dl2rLJ6zebbok/k8BR1KWLJOM9Sd3si9pv3XN2kMdlSIwC40dPHlR2dV7MnppBZiVrpI
         9s4Y7uC79siNGbXhJF/rPOmrkDefaF0KWlUxAfo/KPkHP5Midkpjm+/3xBszIpTDIzm4
         TE0Mph4FZ7yU0Rx1SFA/+MT0XZBTfdgxrAX400nQk8BdsLg6x+hyrMLlV6EGPgxEy+UF
         wnXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=AF+Ufcd1M0yThl+G/KAWqjkcOxnBya4iRCG1J/GMlgQ=;
        b=vE/X9CR+pjcXqRMEF9M9ud4O7wRzur+zUmxxoVhu9fZYGupuP0L24aTlGSmSKo7kc2
         z5dJ6PNr6SjpU2RnzGqQnsw7mVma1bGu5YZtnuzU0P25pPnRCOOep9BS7Nx6rMnWAU3K
         q/MIY8K7EDgP0Z58uaOMtPIkK1o6y6VFdCmTda4ka/k6+x2OiHhd4/QNlhII90LBFIu2
         1kM5lleIqf/Y7Jh7xOw4cI4n3FUQX5FSHnPNVzAZV6CxWlnJMxhvJNeu4LZ9VPoUxZSH
         zbykqAlGp/RXQ94BBpcwkVvBLr68vDETbSFrFHNEo75N+L/ZENPdV4j97IjYdOi4s/XI
         aj2A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=zagp9Lxl;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AF+Ufcd1M0yThl+G/KAWqjkcOxnBya4iRCG1J/GMlgQ=;
        b=V4qZxKrsmwiVUuLQN6GM3z0X6oyPSe8oyeRyVm9rpIx4fJJRFC+cnrg2QSVCML6PYo
         QrorK5D3SfgBwxVGy+7PnBQfXecawC75tCZNlPBWdfN1YQwQOyslHlPlV2fVQ7OjWA3m
         0iJH4Rroe9x9pAWOcP5huuD6y0unlUHQbIvQiQj6eMZQr0srfz0I1GbqM5D7bP1TBqox
         4+d3B3iONqAUwN3CJ5ocZfLC4FqL2OHCpq/q34GiE/kkizzFlDkgobDcBUH5M59NnPwX
         8r8XmGV173ILkTV+uX8LS25CO5btOwvmsBtJRabSyFuWfIOjgVmRSupcb5UkfbTXESiU
         jWUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AF+Ufcd1M0yThl+G/KAWqjkcOxnBya4iRCG1J/GMlgQ=;
        b=askE28lCW57xnsqcQfd6OJsmRHOEZp1UzmF5idPWidxab66+t3/1Ha75bgJIg94OHW
         3uu5ipsUm8mNF4IuXE+jaZunGFIASb+CynJx4jiviCuR8vDZlbn5op9oxJl3K+mUwdje
         NccFJzVIajZjrp0k8o+8NFXvXTgGEazpTTdJvc/9vIL6g7ayWbOfI1q0lckq8nEg33xc
         7H314dR+N2+Qxs0rGHiFNcm1SuP//crCrGdLm+bpu0/k5lR9qI2rmNAVlrfh4O2fqMmm
         voEF4pywb3XVucDMLoLmrg9nekPnvdOkJ+bgZYKr98kCnnAAzshthEGBk5BU2CEz+b9R
         Dqcg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWwtMHWBss3qCQajwvRBF2rvViZ1dgLBOz2htYAsRoUFWnm/0vi
	HwcqPuVziZdTq4fjsluc7eE=
X-Google-Smtp-Source: APXvYqwWfp0buQdIHwBwG4lMs6duaTKJBi52qyE3GqpH1x+IHD4qE8HzYNCPiC4URpWjCOVoX3rLAQ==
X-Received: by 2002:ab0:1c51:: with SMTP id o17mr4588050uaj.63.1579196750527;
        Thu, 16 Jan 2020 09:45:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac5:c92b:: with SMTP id u11ls977087vkl.2.gmail; Thu, 16 Jan
 2020 09:45:50 -0800 (PST)
X-Received: by 2002:a1f:94c1:: with SMTP id w184mr18220825vkd.40.1579196750149;
        Thu, 16 Jan 2020 09:45:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579196750; cv=none;
        d=google.com; s=arc-20160816;
        b=yi+2l5i/F2DGR/akWr+bLJ6oy8wqbzSxcZ5Hgk6YGEGNbQgcCYziqQn4vDvnnq/Yqb
         LjQlDS7Xc//6nsg9/iRujNAI67k3RG/GuDINW7QxCemo873Uhby9aeJ/kN+FQowN/5u8
         mqE6maOlowIqQz0WJatsRKGMGJ6UHc7cZ8SMm/Ur7n5zzGrsynmg+XnDwyV0KZ/PvByP
         gUlO5lAUE5Jtq54uOH4HE16Lg3vchivSKfOMTYEQM1UffMWVclsyEsbh9MpqUBosyCq4
         sKrEKGpvaVg481nzVRP2ciZDf7QfGPDASPX4dE7CkAacPFzv1R6Z2Va32AQZuI2HKLgy
         wzsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ka9TujIH0Yip1rxYjk203vW96f/3+a0Z6dKijLdGekM=;
        b=YGkAiX+4Thuxdb/BgInpzJMJ7cqbAp6J0E2p2H2uS7o3w3YF4HlsOJmVWmibgQ31Ux
         KFKGZWTrFA5M3kCeXgeCZZNY8ewE4yaSvDW95LPdzfAHEhY3RLnQCAXtP6bsGhIc2E6W
         GEVVU9DFyFL44r0NpdQMn+DZpKve5rWcWvPsw/KfGEEKHq48hMEn3yUO1YnciFSm5+Dt
         VM4viM114LoO4GPyk2F01qRaGc3i1MraIYZx5a7vDqH7/VA+08pOJ8qGU0OZMw4nG6Zo
         aOE6h5s794zDKl0CYTufQt2gyx5TgETuurXorPjZSCNWORAligmqA8YCNaSjANyZwtYg
         kJ7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=zagp9Lxl;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h7si915804vsm.1.2020.01.16.09.45.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:45:50 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4DE5A2081E;
	Thu, 16 Jan 2020 17:45:47 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Eli Friedman <efriedma@quicinc.com>,
	Paul Burton <paul.burton@mips.com>,
	ralf@linux-mips.org,
	jhogan@kernel.org,
	"Maciej W . Rozycki" <macro@linux-mips.org>,
	Hassan Naveed <hnaveed@wavecomp.com>,
	Stephen Kitt <steve@sk2.org>,
	Serge Semin <fancer.lancer@gmail.com>,
	Mike Rapoport <rppt@linux.ibm.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Michal Hocko <mhocko@suse.com>,
	linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH AUTOSEL 4.4 126/174] mips: avoid explicit UB in assignment of mips_io_port_base
Date: Thu, 16 Jan 2020 12:42:03 -0500
Message-Id: <20200116174251.24326-126-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116174251.24326-1-sashal@kernel.org>
References: <20200116174251.24326-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=zagp9Lxl;       spf=pass
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

From: Nick Desaulniers <ndesaulniers@google.com>

[ Upstream commit 12051b318bc3ce5b42d6d786191008284b067d83 ]

The code in question is modifying a variable declared const through
pointer manipulation.  Such code is explicitly undefined behavior, and
is the lone issue preventing malta_defconfig from booting when built
with Clang:

If an attempt is made to modify an object defined with a const-qualified
type through use of an lvalue with non-const-qualified type, the
behavior is undefined.

LLVM is removing such assignments. A simple fix is to not declare
variables const that you plan on modifying.  Limiting the scope would be
a better method of preventing unwanted writes to such a variable.

Further, the code in question mentions "compiler bugs" without any links
to bug reports, so it is difficult to know if the issue is resolved in
GCC. The patch was authored in 2006, which would have been GCC 4.0.3 or
4.1.1. The minimal supported version of GCC in the Linux kernel is
currently 4.6.

For what its worth, there was UB before the commit in question, it just
added a barrier and got lucky IRT codegen. I don't think there's any
actual compiler bugs related, just runtime bugs due to UB.

Link: https://github.com/ClangBuiltLinux/linux/issues/610
Fixes: 966f4406d903 ("[MIPS] Work around bad code generation for <asm/io.h>.")
Reported-by: Nathan Chancellor <natechancellor@gmail.com>
Debugged-by: Nathan Chancellor <natechancellor@gmail.com>
Suggested-by: Eli Friedman <efriedma@quicinc.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Paul Burton <paul.burton@mips.com>
Cc: ralf@linux-mips.org
Cc: jhogan@kernel.org
Cc: Maciej W. Rozycki <macro@linux-mips.org>
Cc: Hassan Naveed <hnaveed@wavecomp.com>
Cc: Stephen Kitt <steve@sk2.org>
Cc: Serge Semin <fancer.lancer@gmail.com>
Cc: Mike Rapoport <rppt@linux.ibm.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Michal Hocko <mhocko@suse.com>
Cc: linux-mips@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: clang-built-linux@googlegroups.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/mips/include/asm/io.h | 14 ++------------
 arch/mips/kernel/setup.c   |  2 +-
 2 files changed, 3 insertions(+), 13 deletions(-)

diff --git a/arch/mips/include/asm/io.h b/arch/mips/include/asm/io.h
index ab1df19b0957..60604b26fa72 100644
--- a/arch/mips/include/asm/io.h
+++ b/arch/mips/include/asm/io.h
@@ -60,21 +60,11 @@
  * instruction, so the lower 16 bits must be zero.  Should be true on
  * on any sane architecture; generic code does not use this assumption.
  */
-extern const unsigned long mips_io_port_base;
+extern unsigned long mips_io_port_base;
 
-/*
- * Gcc will generate code to load the value of mips_io_port_base after each
- * function call which may be fairly wasteful in some cases.  So we don't
- * play quite by the book.  We tell gcc mips_io_port_base is a long variable
- * which solves the code generation issue.  Now we need to violate the
- * aliasing rules a little to make initialization possible and finally we
- * will need the barrier() to fight side effects of the aliasing chat.
- * This trickery will eventually collapse under gcc's optimizer.  Oh well.
- */
 static inline void set_io_port_base(unsigned long base)
 {
-	* (unsigned long *) &mips_io_port_base = base;
-	barrier();
+	mips_io_port_base = base;
 }
 
 /*
diff --git a/arch/mips/kernel/setup.c b/arch/mips/kernel/setup.c
index 4f9f1ae49213..fadc946b306d 100644
--- a/arch/mips/kernel/setup.c
+++ b/arch/mips/kernel/setup.c
@@ -80,7 +80,7 @@ static char __initdata builtin_cmdline[COMMAND_LINE_SIZE] = CONFIG_CMDLINE;
  * mips_io_port_base is the begin of the address space to which x86 style
  * I/O ports are mapped.
  */
-const unsigned long mips_io_port_base = -1;
+unsigned long mips_io_port_base = -1;
 EXPORT_SYMBOL(mips_io_port_base);
 
 static struct resource code_resource = { .name = "Kernel code", };
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116174251.24326-126-sashal%40kernel.org.
