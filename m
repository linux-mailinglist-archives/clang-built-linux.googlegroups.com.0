Return-Path: <clang-built-linux+bncBDYJPJO25UGBBRGL232QKGQEBW4CQEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 215D41CB740
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 May 2020 20:32:41 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id m138sf3112464ybf.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 May 2020 11:32:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588962760; cv=pass;
        d=google.com; s=arc-20160816;
        b=I8YJH0xDIKsykClu4e+1IxP9LubWTnVjbgGpGvm/6+tsIttcG3iTSAgycJOZGA8fZR
         6Bcet3AFB7J0Dsz8dtJbkwL/wLn8LyCtFKYmKsCgTJpN2RLdKhwycwUnDLQCDxaZP8ju
         wVkjOtOwvHtn9XL0OEmS04U/aQUFZderxuYJi4qUjxuG7k+w5f/x0UcstIt/PNuf65Km
         RKnOGO8mJyT0s4cFpVf3HhbyDvZzBMcWW0/g8Z8InmvKlp+VLSjRcGPqwOrMNEa83Xcr
         CPNHHASRXpkLyDHRkJPzj5CUJL4f2ilHJyEAZpOsjOQcEAJmER9z55I9NdAqqbpRCTzr
         DnWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=zmGkXoVK7tRKmp8cs1YKgJNkovqi8krWgw1tz7O8tSk=;
        b=XE1CCg97G87vw1auc0JcJm1Ej98EW1hikHHtPes56msKU4VIO3AgGu14f+oAjRfcXo
         ib3jWSGa8Wtv396A17STT1IDd90yMx69fdD58YzVUPQctZtWVT3Hlz8UrfUMjygUWHDy
         mbzuY12h3a4keycDqWxAkXAkWPpVmc9n61kzvr4dqow9cpvraOBWH2XFyDeVgV8HM/Qy
         uoVKW1Rov108CnCKhSBHMSN5GMPyBsYl3y46BDUHIRlSBmkB221N2cQeSPHKY4ciJfCw
         HStX/VBd16eX9RCtUQDEW61HEDAIxYY6dBxBZ2D6tj/mrdVXJNz7uuEbqNJuNQKez8r1
         RTQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fmHF58mR;
       spf=pass (google.com: domain of 3wqw1xgwkan8oeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::c4a as permitted sender) smtp.mailfrom=3wqW1XgwKAN8OEFTBVMOJFSTHPPHMF.DPN@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zmGkXoVK7tRKmp8cs1YKgJNkovqi8krWgw1tz7O8tSk=;
        b=FBIEhrwwHJWW+KKeMBlSeKTje/21UGgwhxcvny6+3erqAY/5CNDc4Vvrl82xqKbVV6
         rBIKFi6EXE4cTC1YWDCoY/jCSsWgO0FgXS9W2UfV0Ne5Dr6N4fI45Q3fOZLvI2hQRORx
         8vwfnvTerrkJ3Qno4VkKJ5lZKKliGpiTn4e6t/9B1UyDikUyRJEAnnXf+wm3qZ7dF39S
         WzEjBwfCtsvhYfoCUEv+WK6LbbvnCutmDRDs+aXg+jTpGWE70odQfLqvzcN9XyM5rcUj
         Pv4y2UHnwqb1ZpcHRwD/8Be4h0kM7yI05YNlGi1d1SD2WkUg5Yb7U6t0cALprQAIwu1k
         h1yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zmGkXoVK7tRKmp8cs1YKgJNkovqi8krWgw1tz7O8tSk=;
        b=r+8gK/ApX9TmNNh0TlfLKGEgfYHN+1Mo4Vpv2zeq3r4n5Be02K0Aos5B0cC1GNcuWj
         CXcSA0sVcevq7hXjMGZmszob26jEgZbcpxTNlqoC/dc75lzdhHnmg/EAY0/CqrgFmMXm
         dbKPSbMd1uy6jhOi+Oqbc58hGXUrJHBt6yskYie/Q3KRwcrKtYzz8LufmzcB8Qo8wv6m
         Kl6aJhdryz+922Hg1OhWHIP7/wEvyXKFfLxgkPgH48Dz1CrpROwyF7sd2/8lofn1CpuA
         i5S9VVWgNJPHsfdrQAaLctcFW+cPaueUL6wJtX9Was4lZG6TlCKKd4FAvziit9aPE01U
         MqTQ==
X-Gm-Message-State: AGi0PuaOJgbf/XdG7ci9B8KRAIPbPOs/NCQuvL7zV4y1fXaQpGCxp1jh
	HtgJXIgFClfir4j2r9bj4vk=
X-Google-Smtp-Source: APiQypJJQNu7a2iaq1o0WVMqbIgTZIVN2I3uqNsqmuxwsElwcrGgpTyy1l00ER9YinrqUcHYAh8KQQ==
X-Received: by 2002:a25:60d6:: with SMTP id u205mr6990389ybb.440.1588962756628;
        Fri, 08 May 2020 11:32:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2057:: with SMTP id g84ls977550ybg.7.gmail; Fri, 08 May
 2020 11:32:35 -0700 (PDT)
X-Received: by 2002:a25:7903:: with SMTP id u3mr6968649ybc.251.1588962755563;
        Fri, 08 May 2020 11:32:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588962755; cv=none;
        d=google.com; s=arc-20160816;
        b=sYSbmHD7VQJK7qWRm9iv6LaU39dUhpQbmxd8KQVTeH3jQfV+kHHN6StKKyaZe95ppm
         6VXe33L0VyDm3fyFXjKOXoZcFQ+b7r/p7y52UPEVtr9OuCJwKmX2kgpi4O4m/x9KLlmO
         PcZSQwWWDW4gD6Gg4PITAiSeUapHD8me3d7EOQsub7Pk3esfUaG76WGd7P3ORVE4UIgo
         2+/pVc8/nFJnbNx8virUOxOaOppKfonWtBsg2aZ0turY04cxfh7ft7cyGkae5S6pbI7c
         wZkpq7fqbflp2gy/7BcFH6TyGzwD05TFRcMaH9mAGLeIU38TKQmYQQt2li60TE+7ASlk
         BMEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=FPRqIEOz/J315Frt792WPRyPEbSrc7Yr875aFZ8nAdU=;
        b=Qlm9zQyU+xRpGWkMHb8ecEYM36659jqSYxs6LLsosm4bUUK238lXE/MLovANi2rRaY
         bItGgjtpFquXlciuIJdy8i+c+B8PcCDyU7i+AGHr9cb/EYL8xQ8I0CGP/nUla8iSCeTy
         oifD8bb4/LsbGE3mZVShWwPUhJU3YFSStFM8ppifF6DsD5GSMV5GSDF2/Gm4M0v4714N
         QPRBVgtDy44Z37RL7yqytDMwEKO8ZI0riAFRoPXWHP20+LwXLDivjTe5ZhTAV2xBYHSi
         LLOFt8R8qz5viFD9pg5LTZe1oKTE/x9i5d7bat0ob2SMIJl4wtVknJdlE3dQgklwd7iq
         cQkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fmHF58mR;
       spf=pass (google.com: domain of 3wqw1xgwkan8oeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::c4a as permitted sender) smtp.mailfrom=3wqW1XgwKAN8OEFTBVMOJFSTHPPHMF.DPN@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oo1-xc4a.google.com (mail-oo1-xc4a.google.com. [2607:f8b0:4864:20::c4a])
        by gmr-mx.google.com with ESMTPS id m9si134894ybc.3.2020.05.08.11.32.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 May 2020 11:32:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3wqw1xgwkan8oeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::c4a as permitted sender) client-ip=2607:f8b0:4864:20::c4a;
Received: by mail-oo1-xc4a.google.com with SMTP id l14so1950161ooq.3
        for <clang-built-linux@googlegroups.com>; Fri, 08 May 2020 11:32:35 -0700 (PDT)
X-Received: by 2002:a25:db87:: with SMTP id g129mr7075314ybf.491.1588962754640;
 Fri, 08 May 2020 11:32:34 -0700 (PDT)
Date: Fri,  8 May 2020 11:32:29 -0700
In-Reply-To: <20200508182835.228107-1-ndesaulniers@google.com>
Message-Id: <20200508183230.229464-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200508182835.228107-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.26.2.645.ge9eca65c58-goog
Subject: [PATCH v5] x86: bitops: fix build regression
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Jesse Brandeburg <jesse.brandeburg@intel.com>, 
	Sedat Dilek <sedat.dilek@gmail.com>, "kernelci . org bot" <bot@kernelci.org>, 
	Andy Shevchenko <andriy.shevchenko@intel.com>, Brian Gerst <brgerst@gmail.com>, 
	"H . Peter Anvin" <hpa@zytor.com>, Ilie Halip <ilie.halip@gmail.com>, x86@kernel.org, 
	Marco Elver <elver@google.com>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Andrey Ryabinin <aryabinin@virtuozzo.com>, Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Daniel Axtens <dja@axtens.net>, "Peter Zijlstra (Intel)" <peterz@infradead.org>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=fmHF58mR;       spf=pass
 (google.com: domain of 3wqw1xgwkan8oeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::c4a as permitted sender) smtp.mailfrom=3wqW1XgwKAN8OEFTBVMOJFSTHPPHMF.DPN@flex--ndesaulniers.bounces.google.com;
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
Changes V4 -> V5:
* actually use `%b` in arch_change_bit().

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
 arch/x86/include/asm/bitops.h | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/x86/include/asm/bitops.h b/arch/x86/include/asm/bitops.h
index b392571c1f1d..35460fef39b8 100644
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
@@ -123,9 +123,9 @@ static __always_inline void
 arch_change_bit(long nr, volatile unsigned long *addr)
 {
 	if (__builtin_constant_p(nr)) {
-		asm volatile(LOCK_PREFIX "xorb %1,%0"
+		asm volatile(LOCK_PREFIX "xorb %b1,%0"
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200508183230.229464-1-ndesaulniers%40google.com.
