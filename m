Return-Path: <clang-built-linux+bncBDYJPJO25UGBBFV7232QKGQEUEJLFAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6072D1CB6AC
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 May 2020 20:06:15 +0200 (CEST)
Received: by mail-io1-xd3f.google.com with SMTP id a11sf2617813ioq.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 May 2020 11:06:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588961174; cv=pass;
        d=google.com; s=arc-20160816;
        b=a2ITcImP83/ttyb+pBXmYRLkh5ia9D6Yy5LAUfBy9xgSMh7Cyw+g68+TE5fm2rpxgZ
         VzPul33yhilG9zefiyQ3Nw6/F/BshjV6dciDQiUPmPGF80qJrU9uWsasy0x7YlEGTCCo
         UFR+aS6CYTucJao9WRgfbHiIRtYV8HPR44RQmLIFOFWR55Fxd2AcSIomkQUUux78HBbg
         XM5hITBPnZWXzkhXLsp8gTpsRtFHG+DkGflFPZn9YQUW29ichh9GTvY4+qUlj07JiQM6
         5yPgKN4AqhdL0su0z9fhTMK6Ay3M/u4GiMFT/rSTLMwmrf+TLBW1ouZOuS46+0dJBFRJ
         BVHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=u5lLFOpy217iV5OkRvQt0zHGzkdjuVknbi45937SqPs=;
        b=cUeCE+MJDPryTtbGUER3eUPlLeMenJj0x8M8c1mpIBoW5Rw9NjfGlQqj23ZNITAOqk
         WYW8xjVeJWCuvm3+GRamzBvrXbK0hHUE+Zc2DKOFzQkBTQ0byjK4kdNCcawbRTX/CWI/
         KR3adnbf0w/qtYonc3PWjYWb56RKLRTGHHGgwZueHyRzXDRT9gYIeQRoz6fizW/Z1Spo
         YPZOhHUMMXloRwLELu6zvRHqqs9ICwnPuhbB8VTAgruFIAHt6zrAlsqXvQDlyaKWJnYm
         VUfTh7OCydaVXPIZu0bSSt0R0lqNnVcg+QhuY+eM2rb0TW2xYw2ComFyU5X2B+Zu8zGf
         Z/9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KSRXMR3d;
       spf=pass (google.com: domain of 3lj-1xgwkakusijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3lJ-1XgwKAKUSIJXFZQSNJWXLTTLQJ.HTR@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u5lLFOpy217iV5OkRvQt0zHGzkdjuVknbi45937SqPs=;
        b=Q3OfAFwdRQXEPDeDYD1bVtuYojPCjFvHQdUUUzlyb39TzvLB8Gj0y78w4ATjo/Jh6t
         iSK/BRWlXN/kMkI0+mWk3Nbv+N5ip7Eb+VkYJ+LU3q9pcwKUJIbOvFaCqnnUYqmymn0d
         QUZOj2SvgTab5Bc87XOtMmkjegl17U+wk+HdKFZPxFYIMag1dRwtz0A5g6L+LgMcjSuo
         vqRXFvBFEvWby+eUGa2wipsLWfDBBUkAaqCZI6dzvcFLeLIaVOYkBF4J0zWKK5dOOH27
         omxW3bTbMKBhmPBZrqepCVGjKI5DDA93jk6pXYThKONt66myxWPFqfpe6E8W74H/QZbY
         7R1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u5lLFOpy217iV5OkRvQt0zHGzkdjuVknbi45937SqPs=;
        b=f1Xp/FW2QEvfvuEIsaJwbpO4J4EsaxWf9YGQJbdT5NBE25PTMnXGwvQA7VFrDwJKwJ
         2i2xBWh3K/7OeThzRBDLOpahFl/D3KS5QpAZBlZ6fIxkBlvKWJ8kOXpM+Ki4ldyOHnDd
         6WRVrsI2NFdMFsbTYXFGtInGTyWxJgJsZGqUlfVTm9B9+g9Hn5YSWN2MK13r+7K976Yq
         T6HySsRz64a9BY6uPnxDXFn4tRgmi95Qfhd+/w92cd4lVllJ4H1vWcsVEgUH9mipueQr
         C9AmCL1j7B3Tlz4Z68hvSyVrFWNfkw9pHiGMnTEGoLaheF9Sb1eSrLgf8OzF7RV672jj
         TXFw==
X-Gm-Message-State: AGi0PubvU/3frvmlug4CNceyTsZITkU4IhPJYoSSRzmFvhrQ29LcVLtY
	vT5t4SBRzIamAl25EdT4Oys=
X-Google-Smtp-Source: APiQypIkZQsXkVAwDb4CprNCiXxwLklFI2+zdFT1KMt9+YKUzJWStGSDz8mWlSQSXZcvty2SlIzW7w==
X-Received: by 2002:a02:6d44:: with SMTP id e4mr3686429jaf.82.1588961174242;
        Fri, 08 May 2020 11:06:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:ce4c:: with SMTP id a12ls975991ilr.8.gmail; Fri, 08 May
 2020 11:06:13 -0700 (PDT)
X-Received: by 2002:a92:3652:: with SMTP id d18mr4097900ilf.212.1588961173562;
        Fri, 08 May 2020 11:06:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588961173; cv=none;
        d=google.com; s=arc-20160816;
        b=0giKEJSUPx2nn3yuwDoqR2T7WyRm2OM3mOpKbWJRgLZESJxqGxaHmoVx/mrq/5gYio
         sxV0uMQTy49qw3XUhq4oZKLhH2+EokxRUSHPVvE7Xkj+NGgZy718rgzBA/36l6pp8yLe
         6NVpKfMTDEkZRgWhH69D5lo7gwopS9eZsCKNqyiRXHMw3bKre7wDpg5oured1tzxJF+2
         GKlMUm4lUuc0/KmFvjVy8xMI4jrvRoNND1tGpm4vcVVAv6+pvYjQ9AmJQcTDEabp3161
         OpvisA+6RhtJmFTk3oTNhWMPAvAU4VTHgWyCdzZ0KAcKHi8N1c+NqFX8EZ980sXSci1u
         GEPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=+Seq80qMnpV5lUbkXBM+vOtEwBiiBytr6Pd0tsbHxHk=;
        b=cZCVqQWfgTzKbUfndS1hGje5e4s9d2t/s2kqoMTfhpwqF7nikzZq2LpbwYmQFooTJs
         4bQ62ZY+ewj1R4uWfr0vwiM9YILuVoBy1cOSUZIE8VtXCJYLZ6OGGo7k3pRXhAPp0Akz
         Par/LOm+DydWd0bGIVxFzBBh+IC2lunxbMx41HKRQIUbVwSJ7JQg7joTxMfWSZb8qR1o
         IXBsSKLerNIFxym7MPFuHbhHE4RxKL3hKsn07A1l4pOA84SrwfHz+EYJ1fowEsv/li05
         xS+v/moP1949IJQyyq+H1w30QWHWtHnJUWNce76aihcqXakuIyc/2Cx3/SjQn6ce51Pm
         5+rg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KSRXMR3d;
       spf=pass (google.com: domain of 3lj-1xgwkakusijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3lJ-1XgwKAKUSIJXFZQSNJWXLTTLQJ.HTR@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id g5si156787ioq.3.2020.05.08.11.06.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 May 2020 11:06:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3lj-1xgwkakusijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id h1so2821342qtu.13
        for <clang-built-linux@googlegroups.com>; Fri, 08 May 2020 11:06:13 -0700 (PDT)
X-Received: by 2002:a0c:b601:: with SMTP id f1mr3695594qve.99.1588961172818;
 Fri, 08 May 2020 11:06:12 -0700 (PDT)
Date: Fri,  8 May 2020 11:05:48 -0700
In-Reply-To: <8f53b69e-86cc-7ff9-671e-5e0a67ff75a2@zytor.com>
Message-Id: <20200508180549.212957-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <8f53b69e-86cc-7ff9-671e-5e0a67ff75a2@zytor.com>
X-Mailer: git-send-email 2.26.2.645.ge9eca65c58-goog
Subject: [PATCH v3] x86: bitops: fix build regression
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Jesse Brandeburg <jesse.brandeburg@intel.com>, 
	Sedat Dilek <sedat.dilek@gmail.com>, "kernelci . org bot" <bot@kernelci.org>, 
	Andy Shevchenko <andriy.shevchenko@intel.com>, Brian Gerst <brgerst@gmail.com>, 
	"H . Peter Anvin" <hpa@zytor.com>, Ilie Halip <ilie.halip@gmail.com>, x86@kernel.org, 
	Marco Elver <elver@google.com>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Andrey Ryabinin <aryabinin@virtuozzo.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, Daniel Axtens <dja@axtens.net>, 
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, 
	"Peter Zijlstra (Intel)" <peterz@infradead.org>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=KSRXMR3d;       spf=pass
 (google.com: domain of 3lj-1xgwkakusijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3lJ-1XgwKAKUSIJXFZQSNJWXLTTLQJ.HTR@flex--ndesaulniers.bounces.google.com;
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
Changes V2 -> V3:
* use `%b` "x86 Operand Modifier" instead of bitwise op then cast.
* reword commit message.
* add Brian and HPA suggested by tags
* drop Nathan & Sedat Tested by/reviewed by tags (new patch is different
  enough).

Changes V1 -> V2:
* change authorship/signed-off-by to Ilie
* add Nathan's Tested by/reviewed by
* update commit message slightly with info sent to HPA.

 arch/x86/include/asm/bitops.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/x86/include/asm/bitops.h b/arch/x86/include/asm/bitops.h
index b392571c1f1d..03e24286e4eb 100644
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
-- 
2.26.2.645.ge9eca65c58-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200508180549.212957-1-ndesaulniers%40google.com.
