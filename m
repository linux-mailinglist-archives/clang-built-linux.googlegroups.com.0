Return-Path: <clang-built-linux+bncBDYJPJO25UGBB2GJ232QKGQERMNYRIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 47BC51CB72F
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 May 2020 20:28:57 +0200 (CEST)
Received: by mail-vk1-xa3d.google.com with SMTP id w79sf1200374vkw.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 May 2020 11:28:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588962536; cv=pass;
        d=google.com; s=arc-20160816;
        b=a9YkEhbNXNbuqWuYnmXm1GfEFTyfHggdso39gBnm84C0IBhTxNQrU3+zCo1bISooFL
         ry6V6BeWH9Cm312d9lKJwZB/jEwIvj1HFbkoDir4XNPsOz/sySpBgcnY3ufjVDbQRWTJ
         r/nZAHBsSdoKk+9rCEHDc5sKjpco0P0IPSmFdFc3RuBNXxT03kRvxvcJhu+LbkYcCbZg
         xYs2ZaaLccpWBYXUK0tVnBDu6indegGWQzjXg82FtUq8OHYpCG/MSbrpHgDLgLb2bYQl
         XTzbBk1YH/yu5iRlP9IGcnqphMsNaqKz3E+5du5ODXmIJYkS6cLrOoM3TP4Mdg8ZlQD9
         uHUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=ApfWj5LPmq+jBpXEgLdjiNRCZSNMysLJzzJuxqr7WW8=;
        b=rpXVbt1pQFICvZ2IXnhkVDEcrE0HQIxvhRkAY04t09M+DnkTHkaPfvmjKqteXPW1hu
         X8bjhSV4IZS7NXXWczMkY9dqwiQzaPM3wD9XtOZ+ROevie8njAa5FqD68SyX2r3FqEa+
         NNKYHcue2bhb20UW6EJkPZBayOnvcksyJt9X+OY++klZ9cB5DagJ3A+HBZ4pJ3RzfAYm
         lUz/WvZdhm5uep6XsHj6gWEwmZvnntSJqXOww2oBwdm84EbuY/tZ2+sQh2IKtXba5qRe
         58B5bHCgI6tFG8RpMJsvsmsI2dCKJRlkV4y6RXMC4hOX6LeBwRmi63xd+ki0iBDat0SR
         EshA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rjvUB1eL;
       spf=pass (google.com: domain of 356s1xgwkaaqrhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=356S1XgwKAAQrhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ApfWj5LPmq+jBpXEgLdjiNRCZSNMysLJzzJuxqr7WW8=;
        b=Ymo74L541ueSa/8Fks/nQaqVPNlTvcxDcIiIHDlZpkt8ztMJlav2UnuapJ477D1saJ
         7mYMal4XRouYGq5Gum1dhyN5B5K8dz0q+41oGbAXpkXw50KspkOHQiGU0yil4K8IZ5Lj
         56WN8uMbE+og1cZ6C/KhWeh5vaB+Ih5xsF7kWH34CzvyaRV7R56rSIUgpG3dxqUQT7GW
         31Om1p3VNL81sLhPax2xtdQJbCBfs1/fKJP911KcpFajueK9d+Lc/5NANaSqyIVrPPN+
         +aHDhd4gl3J+Ff/0+KHnbp/4uAQpCghiZ/7dx6kYxb24jBA72HxQszGoqEVq++D04Lcq
         Bb6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ApfWj5LPmq+jBpXEgLdjiNRCZSNMysLJzzJuxqr7WW8=;
        b=GL7oKn73VuuDNYrsxRyQf/E8HrHM/Ap8TPXEqCrdPJWEOjj/0ri42LTZJnUr99O3i8
         p+DEtgwKf0pNGb6se5zEPqB8G3w2WIDD1uD6/YKXkvTE+m84Dh4PRcMT+6FkygTUDPl7
         upfn91yXiLHAEwYap7rjdCJPhkGC6WYXvyNp/9JmWB0DNW1sqTn3YSgaars5zxvqRcwU
         dq+GJu/HbHGlHqzezbEhWqXHnmsSGClT7C1mpqigpfN5TOYSlMX0fnmuGilYVgw0+FiR
         3M7TYewdLALR8VJR40iKoQ0nHvROdQpIqoaWhhb05EoR8OZFnFQlD5I5LoYopHeR7iWR
         LFbw==
X-Gm-Message-State: AGi0PubpWszmAa76Fj7fziDyUhNOAbi14yPTF0fH4Tuwl5TlYuIMauy6
	uIptW31M1asmt24A1gnHHRs=
X-Google-Smtp-Source: APiQypKc/ezIaBZ1s6MELQ3jRWjXgaCiQqaPbOd/SSPU20l4Fa+uFRMQ9vmy7c9Gs1YjaDs63RPqAQ==
X-Received: by 2002:a67:ec8e:: with SMTP id h14mr3538003vsp.5.1588962536230;
        Fri, 08 May 2020 11:28:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f605:: with SMTP id k5ls455558vso.2.gmail; Fri, 08 May
 2020 11:28:55 -0700 (PDT)
X-Received: by 2002:a67:dd98:: with SMTP id i24mr3528461vsk.239.1588962535726;
        Fri, 08 May 2020 11:28:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588962535; cv=none;
        d=google.com; s=arc-20160816;
        b=jEdW5tVSmeLXCieyt1K2n7+7Q+dx304sEgDaOuK3we7/v2J0Qm3eEy0V3HbcmW5dx/
         Rsswo4rl4yMxH/R1IigdFE+7CAuPeXorFLnucUmxQmEXkHEi/qtHXTq/tWmmyKXiSmtl
         HjRnn9GpWnPjBTa5fHLgiBtVRxT6EOFh112FUC4FFXr8+kVrW+5ggqee7Nq+2OzhoJOG
         nID7rFUoum4Kfeiqa1Uo/1DNSCTjAinnQnm4kAtQPhjHBFnq9S0fMyumvrKT3VEvttG6
         AlRMOSbsCdvb/zLyZfbTovxbZ9ZDEGyNQ6lFMfXvL1Jn120Gx117zLpsrR39TfCy+OyU
         Prxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=gHn/2PDn6yjgb3WH2Lc+VyVXY4H0phF5Pi1gV5PCjZk=;
        b=0+sgt1ExGVfAy9zG4OUbpQlP5hzxizG1TuZ3jr7C02raQ0Mx6zJ/50/p83mAZj1PTM
         2vnP+jadykpj/0f3l5/dlyfGK9wdYIqwKLX+5AjdRlsXTeHySupWXxytb+GIN+a1AbNu
         bfR0JvgMFKsNPTcyZnhq5Rhq9W34tMmZa1xgIXBJnMyJFj0Vll7ChRC9/Mwdq62GpJNY
         mK+2DkhVskgOzWGeNDCmJ6jRxJ+ZXA6jKwjKwqQLb1fb4+hkDKW60iIbSNLK8i1MeINS
         Dsv1vc0AUVpm/KUnoOHtgdaQcl/2wVO1YLWULWD/8CiXlwAEy21m5zgDoSh+khNWO300
         XbxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rjvUB1eL;
       spf=pass (google.com: domain of 356s1xgwkaaqrhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=356S1XgwKAAQrhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id y11si206470vkc.3.2020.05.08.11.28.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 May 2020 11:28:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of 356s1xgwkaaqrhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id p31so2930439qte.1
        for <clang-built-linux@googlegroups.com>; Fri, 08 May 2020 11:28:55 -0700 (PDT)
X-Received: by 2002:a0c:f1d1:: with SMTP id u17mr4080224qvl.146.1588962535235;
 Fri, 08 May 2020 11:28:55 -0700 (PDT)
Date: Fri,  8 May 2020 11:28:35 -0700
In-Reply-To: <CAMzpN2ix+Ltu2_4ORaeqD0_6VmDUxTRDVbvaJ+Q9D8s-5p7Bhw@mail.gmail.com>
Message-Id: <20200508182835.228107-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <CAMzpN2ix+Ltu2_4ORaeqD0_6VmDUxTRDVbvaJ+Q9D8s-5p7Bhw@mail.gmail.com>
X-Mailer: git-send-email 2.26.2.645.ge9eca65c58-goog
Subject: [PATCH v4] x86: bitops: fix build regression
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Jesse Brandeburg <jesse.brandeburg@intel.com>, 
	Sedat Dilek <sedat.dilek@gmail.com>, "kernelci . org bot" <bot@kernelci.org>, 
	Andy Shevchenko <andriy.shevchenko@intel.com>, Brian Gerst <brgerst@gmail.com>, 
	"H . Peter Anvin" <hpa@zytor.com>, Ilie Halip <ilie.halip@gmail.com>, x86@kernel.org, 
	Marco Elver <elver@google.com>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Andrew Morton <akpm@linux-foundation.org>, Daniel Axtens <dja@axtens.net>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, 
	"Peter Zijlstra (Intel)" <peterz@infradead.org>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rjvUB1eL;       spf=pass
 (google.com: domain of 356s1xgwkaaqrhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=356S1XgwKAAQrhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

This is easily reproducible via CC=clang+CONFIG_STAGING=y+CONFIG_VT6656=m.

It turns out that if your config tickles __builtin_constant_p via
differences in choices to inline or not, these statements produce
invalid assembly:

$ cat foo.c
long a(long b, long c) {
  asm("orb\t%1, %0" : "+q"(c): "r"(b));
  return c;
}
$ gcc foo.c
foo.c: Assembler messages:
foo.c:2: Error: `%rax' not allowed with `orb'

Use the `%b` "x86 Operand Modifier" to instead force register allocation
to select a lower-8-bit GPR operand.

The "q" constraint only has meaning on -m32 otherwise is treated as
"r". Not all GPRs have low-8-bit aliases for -m32.

Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/961
Link: https://lore.kernel.org/lkml/20200504193524.GA221287@google.com/
Link: https://gcc.gnu.org/onlinedocs/gcc/Extended-Asm.html#x86Operandmodifiers
Fixes: 1651e700664b4 ("x86: Fix bitops.h warning with a moved cast")
Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Reported-by: kernelci.org bot <bot@kernelci.org>
Suggested-by: Andy Shevchenko <andriy.shevchenko@intel.com>
Suggested-by: Brian Gerst <brgerst@gmail.com>
Suggested-by: H. Peter Anvin <hpa@zytor.com>
Suggested-by: Ilie Halip <ilie.halip@gmail.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Changes V3 -> V4:
* drop (u8) cast from arch_change_bit() as well.

Changes V2 -> V3:
* use `%b` "x86 Operand Modifier" instead of bitwise op then cast.
* reword commit message.
* add Brian and HPA suggested by tags
* drop Nathan & Sedat Tested by/reviewed by tags (new patch is different
  enough).
* Take over authorship.

Changes V1 -> V2:
* change authorship/signed-off-by to Ilie
* add Nathan's Tested by/reviewed by
* update commit message slightly with info sent to HPA.

 arch/x86/include/asm/bitops.h | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/x86/include/asm/bitops.h b/arch/x86/include/asm/bitops.h
index b392571c1f1d..8a8b7bb9677b 100644
--- a/arch/x86/include/asm/bitops.h
+++ b/arch/x86/include/asm/bitops.h
@@ -52,9 +52,9 @@ static __always_inline void
 arch_set_bit(long nr, volatile unsigned long *addr)
 {
 	if (__builtin_constant_p(nr)) {
-		asm volatile(LOCK_PREFIX "orb %1,%0"
+		asm volatile(LOCK_PREFIX "orb %b1,%0"
 			: CONST_MASK_ADDR(nr, addr)
-			: "iq" (CONST_MASK(nr) & 0xff)
+			: "iq" (CONST_MASK(nr))
 			: "memory");
 	} else {
 		asm volatile(LOCK_PREFIX __ASM_SIZE(bts) " %1,%0"
@@ -72,9 +72,9 @@ static __always_inline void
 arch_clear_bit(long nr, volatile unsigned long *addr)
 {
 	if (__builtin_constant_p(nr)) {
-		asm volatile(LOCK_PREFIX "andb %1,%0"
+		asm volatile(LOCK_PREFIX "andb %b1,%0"
 			: CONST_MASK_ADDR(nr, addr)
-			: "iq" (CONST_MASK(nr) ^ 0xff));
+			: "iq" (~CONST_MASK(nr)));
 	} else {
 		asm volatile(LOCK_PREFIX __ASM_SIZE(btr) " %1,%0"
 			: : RLONG_ADDR(addr), "Ir" (nr) : "memory");
@@ -125,7 +125,7 @@ arch_change_bit(long nr, volatile unsigned long *addr)
 	if (__builtin_constant_p(nr)) {
 		asm volatile(LOCK_PREFIX "xorb %1,%0"
 			: CONST_MASK_ADDR(nr, addr)
-			: "iq" ((u8)CONST_MASK(nr)));
+			: "iq" (CONST_MASK(nr)));
 	} else {
 		asm volatile(LOCK_PREFIX __ASM_SIZE(btc) " %1,%0"
 			: : RLONG_ADDR(addr), "Ir" (nr) : "memory");
-- 
2.26.2.645.ge9eca65c58-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200508182835.228107-1-ndesaulniers%40google.com.
