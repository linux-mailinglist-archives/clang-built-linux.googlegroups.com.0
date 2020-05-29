Return-Path: <clang-built-linux+bncBCV5TUXXRUIBB54CYX3AKGQEE7ILRAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id A38B41E8450
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 19:08:07 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id y7sf1287685wrd.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 10:08:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590772087; cv=pass;
        d=google.com; s=arc-20160816;
        b=rb94J8aps/sfpHfa5w8lEyeVKMTN7xN0JHjftbl7+JaRUE62GO17vuD2FaPzP4ppN8
         jD+XvhlAGoTxIFRwH6wRHoQ+XTqQN7s90Lj5/F3FsSc4S81hvDP3492ZrDm69sNtWPfD
         6LC/gYEzHdloS+X+QoY51bs5KXlfMBxA0gOn9Kg0F7tXTAQ4sLTs9qIqVFw5le3xRUjk
         7MkJYd9KSJi2FUhfgu/GjoNLBLqLFEPPwxSWXuV41DdLuFc7Qv7zAOdWio8sR02dpNKQ
         VhVnJFf6nl/8PU8YAZvzRUL1Ai/KkInK0BAdQU9lhBMANnCl/CGL/vJIBZkCtc6+nGjf
         ElZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=2fAlXuqI4/wuL7N8NXhOf6R9nfR9a2vsFBpIoF8eEWg=;
        b=uT8dUR5jKGUktBQ8zshLPDHC7iQ9ReyHYLjIAczpGqlrjEJLhVL13K4fAWRSyAaTA+
         jTyAistxxO9LM/xEpVLg2D2yLqkXjX28cr1NzTCSwwSdLveqU5VtPYk0RLIrPd0vi439
         3MzTUAipdO1ecWGghouVzl5YUuktOziQUOU0Z4mWCkZwlTesw4p2Uyd3Kpu8RH8UOyiR
         ic1EOUJ0WVlbs12crGsgYy9SmQ2hDKZjJe5IHLrUwtOpHefL93aMdHA6S3OL+KJXp39S
         4Ou/eW+JI2hEqPLMdVAaxVjtfp00v0iwLEvMp5WONBdXs1vWW9t12ThEBohj2mWa3nfr
         H0Ow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=MSosw5qP;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2fAlXuqI4/wuL7N8NXhOf6R9nfR9a2vsFBpIoF8eEWg=;
        b=XNgcxRUcIbYLKzRD8vsXM0HrRlx93fAzZnC/9qbny3z8y1PZxcZgWZVyn9UDREHOv/
         Fraz4imBwMP4+1Cex5zWe5SBknreOy8b8WoJzrz9HqRIeJYM12pnJFYaVz2gGqYIzVOr
         uZ4h8LVrbbVAB6LfSqnFSBjXtsDBsh0vvmMwR8MyD+5RhHULduqvv/Qd+/IJ/QbEMToN
         R5hZMT9mTLtKnLxEYRZOryvcg9QmRlAPBY+R8PuXKj1c4Z7d3UNWRTW+q+toqCa4Aw43
         TRcjhoiFpQ4+7Q6BIVYZhgYkQ1muj08pCcmkK4/0Txx6ARhyUgmAnwgl0Huv28nB15Tb
         LFRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2fAlXuqI4/wuL7N8NXhOf6R9nfR9a2vsFBpIoF8eEWg=;
        b=Z+cKg/k1ioaQzbXin6Ll+Pw3TnlaAV6m680EkNX883p8lFscNSqHcnvmoMlZCJL98P
         hBI9r60P6uLb6LQt7U4S3O8UduJfrWtsQuYhSBbk+Bbm7ypM6sF9QYLU/msycATIk37o
         3AjErQhhkCGefc3+K6J9w7I1YK1pVv80y0+lMQ+/s5B1FKQtj4+qUIG0U/DPa8Z1/v+y
         /v9dQVyK/7psTNPMITx2t5Xywj0/9CeVEyMUBDCco9szFL/wibgc79aHQAtc2q6EbU7h
         irj1Xijquc0tQw4EstCwSIs4Mkm9/FaKB3n2xzGGaWF/4T4+yutaXUwhN3pVLmA0ptb1
         /r1A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532HZKPTt61QaKaJgw8ux7VneXAXCToJcWqHy4Vgjush9jAL6vyq
	uOx8uu46oNHEQh8un+TLlY4=
X-Google-Smtp-Source: ABdhPJxV2wuC/PtZCS6rmXhTyu5VgQHk2H2FlZU57gcxAgP0pRY4dKDViFagayTlgydabCqmiqVljA==
X-Received: by 2002:a1c:4008:: with SMTP id n8mr7658505wma.118.1590772087344;
        Fri, 29 May 2020 10:08:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c959:: with SMTP id i25ls3489812wml.2.gmail; Fri, 29 May
 2020 10:08:06 -0700 (PDT)
X-Received: by 2002:a7b:ce01:: with SMTP id m1mr9600709wmc.116.1590772086754;
        Fri, 29 May 2020 10:08:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590772086; cv=none;
        d=google.com; s=arc-20160816;
        b=Wau9p9UGFQYrYGoTme5wQ5CLlGtPjnlYifSmcCdvuK04FS69BOXDovtblmmrviaz7B
         FT1g7o7ctV9EfnZgwD2gMDnCfdSuTdWaiANrU7vJ3BAepJMCmBlOMnAR4qkS4CHFOgTq
         LFyDG7zEOpm/giTVTKdeNbuK0duVZ3bVA8VUztpXutgOdjw4hwaGp3FixBjt6r9DsPYO
         nTxLV7FqMABEMbbCsOAh+zLPASkA3NFTyu3EcRQb1LDpc3JFdvTUtv/CQYdIXnlzf2u9
         LqhIeRoYOYnJeLUDFG8/501hP+VAIPXHYjWJ5IUswQ2wTZ2c8uxPljnvYY7QS1Eddqvp
         z69Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=TFvRXAcR53qFccB0D5t7OoqWfRiUV7I+frw7I0E1gOo=;
        b=LP1xD1OAT0H0N6+k4UKYN6zGHusLbMokYD9/ACpAh4+LjoesLeJfMyJZCfkUX+FY6y
         8tzdUfXNFr/gZQ2o6a9Sjw4NKmqSqG8DjmWcGIx52BA/jN0U/47iyJJoADbk3eND4ivB
         eWEGZm2m68jSDy3cCczwF/j/tn8pESTpmiWhvR74Raq6Hn0k4kD19pCyTiT2sc7A8QHr
         mb3PKacJi/hzA6d8xspNl+AmYkpu5Y8lZzl1aJ2gd7a1ZDAfl46y/r39TgIqIX2Sh4Ql
         67Cmk5dyUS6ZdiqryXCjbVUBda/sZdUpIjtiBhiSLsSTWyS93+32poh2SPH5kuPnANQj
         UJyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=MSosw5qP;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id w126si14251wma.4.2020.05.29.10.08.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 May 2020 10:08:06 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeiUA-0001rc-PT; Fri, 29 May 2020 17:07:59 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id C01BD3011FF;
	Fri, 29 May 2020 19:07:55 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id AC7DB2BB51407; Fri, 29 May 2020 19:07:55 +0200 (CEST)
Date: Fri, 29 May 2020 19:07:55 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Marco Elver <elver@google.com>
Cc: paulmck@kernel.org, dvyukov@google.com, glider@google.com,
	andreyknvl@google.com, kasan-dev@googlegroups.com,
	linux-kernel@vger.kernel.org, tglx@linutronix.de, mingo@kernel.org,
	will@kernel.org, clang-built-linux@googlegroups.com, bp@alien8.de
Subject: Re: [PATCH -tip v3 05/11] kcsan: Remove 'noinline' from
 __no_kcsan_or_inline
Message-ID: <20200529170755.GN706495@hirez.programming.kicks-ass.net>
References: <20200521142047.169334-1-elver@google.com>
 <20200521142047.169334-6-elver@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200521142047.169334-6-elver@google.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=MSosw5qP;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Thu, May 21, 2020 at 04:20:41PM +0200, Marco Elver wrote:
> Some compilers incorrectly inline small __no_kcsan functions, which then
> results in instrumenting the accesses. For this reason, the 'noinline'
> attribute was added to __no_kcsan_or_inline. All known versions of GCC
> are affected by this. Supported version of Clang are unaffected, and
> never inlines a no_sanitize function.
> 
> However, the attribute 'noinline' in __no_kcsan_or_inline causes
> unexpected code generation in functions that are __no_kcsan and call a
> __no_kcsan_or_inline function.
> 
> In certain situations it is expected that the __no_kcsan_or_inline
> function is actually inlined by the __no_kcsan function, and *no* calls
> are emitted. By removing the 'noinline' attribute we give the compiler
> the ability to inline and generate the expected code in __no_kcsan
> functions.


Doesn't this mean we can do the below?

---
 Documentation/dev-tools/kcsan.rst |  6 ------
 arch/x86/include/asm/bitops.h     |  6 +-----
 include/linux/compiler_types.h    | 14 ++++----------
 kernel/kcsan/kcsan-test.c         |  4 ++--
 4 files changed, 7 insertions(+), 23 deletions(-)

diff --git a/Documentation/dev-tools/kcsan.rst b/Documentation/dev-tools/kcsan.rst
index ce4bbd918648..b38379f06194 100644
--- a/Documentation/dev-tools/kcsan.rst
+++ b/Documentation/dev-tools/kcsan.rst
@@ -114,12 +114,6 @@ functions, compilation units, or entire subsystems.  For static blacklisting,
   To dynamically limit for which functions to generate reports, see the
   `DebugFS interface`_ blacklist/whitelist feature.
 
-  For ``__always_inline`` functions, replace ``__always_inline`` with
-  ``__no_kcsan_or_inline`` (which implies ``__always_inline``)::
-
-    static __no_kcsan_or_inline void foo(void) {
-        ...
-
 * To disable data race detection for a particular compilation unit, add to the
   ``Makefile``::
 
diff --git a/arch/x86/include/asm/bitops.h b/arch/x86/include/asm/bitops.h
index 35460fef39b8..0367efdc5b7a 100644
--- a/arch/x86/include/asm/bitops.h
+++ b/arch/x86/include/asm/bitops.h
@@ -201,12 +201,8 @@ arch_test_and_change_bit(long nr, volatile unsigned long *addr)
 	return GEN_BINARY_RMWcc(LOCK_PREFIX __ASM_SIZE(btc), *addr, c, "Ir", nr);
 }
 
-static __no_kcsan_or_inline bool constant_test_bit(long nr, const volatile unsigned long *addr)
+static __always_inline bool constant_test_bit(long nr, const volatile unsigned long *addr)
 {
-	/*
-	 * Because this is a plain access, we need to disable KCSAN here to
-	 * avoid double instrumentation via instrumented bitops.
-	 */
 	return ((1UL << (nr & (BITS_PER_LONG-1))) &
 		(addr[nr >> _BITOPS_LONG_SHIFT])) != 0;
 }
diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
index 4e4982d6f3b0..6a2c0f857ac3 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -118,10 +118,6 @@ struct ftrace_likely_data {
 #define notrace			__attribute__((__no_instrument_function__))
 #endif
 
-/* Section for code which can't be instrumented at all */
-#define noinstr								\
-	noinline notrace __attribute((__section__(".noinstr.text")))
-
 /*
  * it doesn't make sense on ARM (currently the only user of __naked)
  * to trace naked functions because then mcount is called without
@@ -192,17 +188,15 @@ struct ftrace_likely_data {
 #endif
 
 #define __no_kcsan __no_sanitize_thread
-#ifdef __SANITIZE_THREAD__
-# define __no_kcsan_or_inline __no_kcsan notrace __maybe_unused
-# define __no_sanitize_or_inline __no_kcsan_or_inline
-#else
-# define __no_kcsan_or_inline __always_inline
-#endif
 
 #ifndef __no_sanitize_or_inline
 #define __no_sanitize_or_inline __always_inline
 #endif
 
+/* Section for code which can't be instrumented at all */
+#define noinstr								\
+	noinline notrace __attribute((__section__(".noinstr.text"))) __no_kcsan
+
 #endif /* __KERNEL__ */
 
 #endif /* __ASSEMBLY__ */
diff --git a/kernel/kcsan/kcsan-test.c b/kernel/kcsan/kcsan-test.c
index a8c11506dd2a..374263ddffe2 100644
--- a/kernel/kcsan/kcsan-test.c
+++ b/kernel/kcsan/kcsan-test.c
@@ -43,7 +43,7 @@ static struct {
 };
 
 /* Setup test checking loop. */
-static __no_kcsan_or_inline void
+static __no_kcsan inline void
 begin_test_checks(void (*func1)(void), void (*func2)(void))
 {
 	kcsan_disable_current();
@@ -60,7 +60,7 @@ begin_test_checks(void (*func1)(void), void (*func2)(void))
 }
 
 /* End test checking loop. */
-static __no_kcsan_or_inline bool
+static __no_kcsan inline bool
 end_test_checks(bool stop)
 {
 	if (!stop && time_before(jiffies, end_time)) {

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200529170755.GN706495%40hirez.programming.kicks-ass.net.
