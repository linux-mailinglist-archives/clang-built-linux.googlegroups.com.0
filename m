Return-Path: <clang-built-linux+bncBDYJPJO25UGBBW7FRT4QKGQEVTDB4RI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id A6DB1233A09
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jul 2020 22:51:40 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id ck13sf7038587pjb.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jul 2020 13:51:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596142299; cv=pass;
        d=google.com; s=arc-20160816;
        b=yAhiKbKWsOxYnGXxBQ0zv6ED+W23+KrXinhPHaqmPXPQErRwJ9f4czDCmiMciVGFtt
         muErj11cKTM5VyFSLv6b5vay8s4KbS9GXqy5rWI0bzTmsTGDOpBiEukzNfgEJZrxzW+P
         qNL4KyH80MT8aKvIwvIJYaSpNHNm7W+qNmbImaVFvLymQKrGU1lzNwPsvNoe55XTRN2j
         dv+0ljVL4mu/YXqp3BBDJYsDbY2sdZCt85dNeC6BNsTnNQFm1JAoSqGDjCH72fLg3gG4
         jdYsumAYFKixnjhIuUYl6MpKRpf69blRBNGMlPyfkTdw5Ul8OgXNlYjIsXKd+ZmKHzFE
         0NKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=zKx31vV90MrTy82ICoJhL/PrljWdhT/Xqjyek40Nv7Y=;
        b=LUZLnA4EGCnnPh6bJM/R+XFDiWpFFkCTWezukPkiJUGU+3JDDJFfUgo1y0n1NKKEZZ
         huYNwhLoY8qGu++qkB0F9s4BbCKbkhiaVIWdpIDkwZJ1gwNtJc+8VM18TjxxAA4Jkhmq
         wyQiNtvPQG65LJQfnxdgP8kMA6vqoZEFvarvKPPMpVYkLcTfSU68LPymVzSADwlErU/l
         0qkpVJaR5tHkgfUWsPp6xqy7y5uIPPBt8lIg32K4eqKuIqCINXDvOEQzmYruv4sUzY5Q
         arxVpEJcvOs3HLGWJb6QRs7r/XsxuRAkwBiKNdtH8uCp9SHuWg6i+nStDrAwhH2FLCGw
         fNzA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KNXCOzxZ;
       spf=pass (google.com: domain of 32jijxwwkams4uv9rb24zv89x55x2v.t53@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=32jIjXwwKAMs4uv9rB24zv89x55x2v.t53@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zKx31vV90MrTy82ICoJhL/PrljWdhT/Xqjyek40Nv7Y=;
        b=E57LHLIEPV81bg4TndYIMhn0wRjvpDWjBqaQEUoPyrI0grj6/SiCOCV8FST9P2BstH
         QYeRnuP/ZEa0BYSNCdkegQvwQm2Fi1ulmb4L35nsxvtN0TGwB93PQFtY2FFgKXcFU75O
         4gEcJoVZzG/PjoECvtz4Tg0d5h0bGcmnvWUphfyB2/RPoy0TRfwT8auuvzz710YSmO3/
         bpJNM2inlpljs2K4sj5sEEeWzUzR+3Bscw+MeldTDDxbregVnOquPjb7IMlS7s6sY1ex
         Y0dc6NkqXlF1BwaR4w7lLqLKdIIBFVFrE9nAO+nuOWvdcLgAnE24gYsm21qq5hHz0vIR
         rDOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zKx31vV90MrTy82ICoJhL/PrljWdhT/Xqjyek40Nv7Y=;
        b=EgzCIdXjKHJcITTbLXfxumfS3mbrRWOhW4wc2ulTQ2JPMBTSwLDaj1t9OZp+6f4Pts
         fXiDKuc+Xv4EK87JN16X3OeLHqLMcRnB0ingPMZfi/EQe/W2wCewvBuumZwfkKcN50cN
         kroXKV1iMPatABXkdq0dagSxl/8UgzWoBwDmgcV7c/Yii2Y81CxKWGQu1Bj/M9s6eo0K
         EeA7ILicnzxk+ZPF7tQtGAp1aaedxlrWk2lQRgeMqTgxtLkD8j2oGTVQMeRXRxiYN5pt
         JMUeDG91wHgCwvvUg0m1xWzy5yaPagk8nMRsfqI5CEo2piLfjhVS/0F6x8sS5EdpsFmx
         lFXA==
X-Gm-Message-State: AOAM5336pCWt8CDhEQIidLqVd0OXSnkcTPEtIdtRvODmRhporP5vvxIu
	OlkdeWKC8k7nRrdcA3aXsdA=
X-Google-Smtp-Source: ABdhPJwLrp/P41UIBduP5GVuy5FZ14D8J4rRrsRJQt8+CRPNREu688Uk/irfPjHsB/7vB9ZXFoTklg==
X-Received: by 2002:a63:2809:: with SMTP id o9mr696183pgo.410.1596142299338;
        Thu, 30 Jul 2020 13:51:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:2126:: with SMTP id n6ls2259705pfj.5.gmail; Thu, 30
 Jul 2020 13:51:38 -0700 (PDT)
X-Received: by 2002:a63:e045:: with SMTP id n5mr717297pgj.274.1596142298874;
        Thu, 30 Jul 2020 13:51:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596142298; cv=none;
        d=google.com; s=arc-20160816;
        b=fD6tc1iX43+QYpe6aNlGcNXC/mksjlXirFttvRWjP0sOlF7SNnNJKNocuURBfJzF7R
         llCv0e28qDdRI3e07u9JLs7zSAudH0tB+3o7qF9fxqLWqtVRWdQoB/SEO4GVrfgJISJN
         g+afre2OmTyrXEXNwuU4dq2AaeFYRKoDzonDhlRnaDMz0Fo+zE2t0LvrgtLFkEEKhCqk
         Ufo6U+gGiRDZD8r0uyQCFbpTqUhHrDJEedxz8nF9KKOQCtBYkgic/Zvs8drDs1Yxr0xi
         ua7/Fcl0Mcb+FH+efSYNk0Ulw0yHBGFuDYHhQ1CRdb6Lg+gZCQ3T/mHdwAQRr6rFo29M
         858g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=QONIUax01BTjdO9Ra0WL2SaVjevDM7EFtQflcDkiZpw=;
        b=VAR/YKUKi7Qm++OMv2MOqGaY6lEgWHLk6Ntw7YFMbTGYsdj35LBNjHA6u6d2aEbmr6
         ef78QQQCAIO1u2VcBlWP+mzk6bajAbUGv9GE9kO7oJJBRcRMVrnnwxXX+gxOeflvYQyE
         fbCffgjw4DA40axpkBPYHnkviVTNVnxlKYLST/y4tCiHZaACEwisNGIuLJ5PcqLEytH8
         Swf1PumjiEywxjIlapc14zzqzhfmmNc3HmF553xeQR/a8X1BqWHk4b7iDNsI5Zq6gu+v
         IDl6oVUAgQNs6CFa2yAk378F4fR7PDSL88PWKQQLaHLITv1Cf54CpotUd6HM154ZAvxQ
         N4xA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KNXCOzxZ;
       spf=pass (google.com: domain of 32jijxwwkams4uv9rb24zv89x55x2v.t53@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=32jIjXwwKAMs4uv9rB24zv89x55x2v.t53@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id v127si105262pfc.0.2020.07.30.13.51.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jul 2020 13:51:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of 32jijxwwkams4uv9rb24zv89x55x2v.t53@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id k11so7818560ybp.1
        for <clang-built-linux@googlegroups.com>; Thu, 30 Jul 2020 13:51:38 -0700 (PDT)
X-Received: by 2002:a25:aba2:: with SMTP id v31mr1236236ybi.138.1596142298407;
 Thu, 30 Jul 2020 13:51:38 -0700 (PDT)
Date: Thu, 30 Jul 2020 13:51:12 -0700
In-Reply-To: <20200730205112.2099429-1-ndesaulniers@google.com>
Message-Id: <20200730205112.2099429-5-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200730205112.2099429-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.28.0.163.g6104cc2f0b6-goog
Subject: [PATCH 4/4] ARM: backtrace: use more descriptive labels
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nathan Huckleberry <nhuck15@gmail.com>, Russell King <linux@armlinux.org.uk>
Cc: Andrew Morton <akpm@linux-foundation.org>, Chunyan Zhang <zhang.lyra@gmail.com>, 
	clang-built-linux@googlegroups.com, Dmitry Safonov <0x7f454c46@gmail.com>, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, Lvqiang Huang <lvqiang.huang@unisoc.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Miles Chen <miles.chen@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=KNXCOzxZ;       spf=pass
 (google.com: domain of 32jijxwwkams4uv9rb24zv89x55x2v.t53@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=32jIjXwwKAMs4uv9rB24zv89x55x2v.t53@flex--ndesaulniers.bounces.google.com;
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

We don't necessarily need the `b` suffixes used to disambiguate between
non-unique local labels. Give these labels more descriptive names.

Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/arm/lib/backtrace.S | 30 +++++++++++++++---------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/arch/arm/lib/backtrace.S b/arch/arm/lib/backtrace.S
index 872f658638d9..138e961ff033 100644
--- a/arch/arm/lib/backtrace.S
+++ b/arch/arm/lib/backtrace.S
@@ -37,9 +37,9 @@ ENDPROC(c_backtrace)
  THUMB(		orreq	mask, #0x03		)
 		movne	mask, #0		@ mask for 32-bit
 
-1:		stmfd	sp!, {pc}		@ calculate offset of PC stored
+store_pc:	stmfd	sp!, {pc}		@ calculate offset of PC stored
 		ldr	r0, [sp], #4		@ by stmfd for this CPU
-		adr	r1, 1b
+		adr	r1, store_pc
 		sub	offset, r0, r1
 
 /*
@@ -60,14 +60,14 @@ ENDPROC(c_backtrace)
 for_each_frame:	tst	frame, mask		@ Check for address exceptions
 		bne	no_frame
 
-1001:		ldr	sv_pc, [frame, #0]	@ get saved pc
-1002:		ldr	sv_fp, [frame, #-12]	@ get saved fp
+load_pc:	ldr	sv_pc, [frame, #0]	@ get saved pc
+load_fp:	ldr	sv_fp, [frame, #-12]	@ get saved fp
 
 		sub	sv_pc, sv_pc, offset	@ Correct PC for prefetching
 		bic	sv_pc, sv_pc, mask	@ mask PC/LR for the mode
 
-1003:		ldr	r2, [sv_pc, #-4]	@ if stmfd sp!, {args} exists,
-		ldr	r3, .Ldsi+4		@ adjust saved 'pc' back one
+load_stmfd:	ldr	r2, [sv_pc, #-4]	@ if stmfd sp!, {args} exists,
+		ldr	r3, .Lopcode + 4	@ adjust saved 'pc' back one
 		teq	r3, r2, lsr #11		@ instruction
 		subne	r0, sv_pc, #4		@ allow for mov
 		subeq	r0, sv_pc, #8		@ allow for mov + stmia
@@ -79,15 +79,15 @@ for_each_frame:	tst	frame, mask		@ Check for address exceptions
 		bl	dump_backtrace_entry
 
 		ldr	r1, [sv_pc, #-4]	@ if stmfd sp!, {args} exists,
-		ldr	r3, .Ldsi+4
+		ldr	r3, .Lopcode + 4
 		teq	r3, r1, lsr #11
 		ldreq	r0, [frame, #-8]	@ get sp
 		subeq	r0, r0, #4		@ point at the last arg
 		mov	r2, loglvl
 		bleq	dump_backtrace_stm	@ dump saved registers
 
-1004:		ldr	r1, [sv_pc, #0]		@ if stmfd sp!, {..., fp, ip, lr, pc}
-		ldr	r3, .Ldsi		@ instruction exists,
+reload_stmfd:	ldr	r1, [sv_pc, #0]		@ if stmfd sp!, {..., fp, ip, lr, pc}
+		ldr	r3, .Lopcode		@ instruction exists,
 		teq	r3, r1, lsr #11
 		subeq	r0, frame, #16
 		mov	r2, loglvl
@@ -100,7 +100,7 @@ for_each_frame:	tst	frame, mask		@ Check for address exceptions
 		mov	frame, sv_fp		@ above the current frame
 		bhi	for_each_frame
 
-1006:		adr	r0, .Lbad
+bad_frame:	adr	r0, .Lbad
 		mov	r1, loglvl
 		mov	r2, frame
 		bl	printk
@@ -109,15 +109,15 @@ ENDPROC(c_backtrace)
 		
 		.pushsection __ex_table,"a"
 		.align	3
-		.long	1001b, 1006b
-		.long	1002b, 1006b
-		.long	1003b, 1006b
-		.long	1004b, 1006b
+		.long	load_pc, bad_frame
+		.long	load_fp, bad_frame
+		.long	load_stmfd, bad_frame
+		.long	reload_stmfd, bad_frame
 		.popsection
 
 .Lbad:		.asciz	"%sBacktrace aborted due to bad frame pointer <%p>\n"
 		.align
-.Ldsi:		.word	0xe92dd800 >> 11	@ stmfd sp!, {... fp, ip, lr, pc}
+.Lopcode:	.word	0xe92dd800 >> 11	@ stmfd sp!, {... fp, ip, lr, pc}
 		.word	0xe92d0000 >> 11	@ stmfd sp!, {}
 
 #endif
-- 
2.28.0.163.g6104cc2f0b6-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200730205112.2099429-5-ndesaulniers%40google.com.
