Return-Path: <clang-built-linux+bncBDYJPJO25UGBBUXFRT4QKGQESVNUYRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id 59EFB233A04
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jul 2020 22:51:32 +0200 (CEST)
Received: by mail-pj1-x1037.google.com with SMTP id k72sf2160096pjb.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jul 2020 13:51:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596142291; cv=pass;
        d=google.com; s=arc-20160816;
        b=jZcOPKe5OGQQzthYRelxdSC9PgcgiTSL6eXikgS8OkdC0xHGyYfBDR/4KRAQeXRAsd
         i1dAV2mAROht/7ygurWOPrJltmT8b3oJj6S4jey1bGM15+XtfFmx+m9H85b4ZcgIoJZR
         gEA9lQfxLf4zGzWnWfvBHs/PJ1sCOonV5RLEFEj6CES3ezWPjfGoIjlRFsNNaksqNUSO
         wh/bU1vXuylzKjJopvSd4dHNEQnovDLMfzvW/RRpo6dW3yACnC3MRVorGd732oeByiu2
         otf+Md/LZIEkD4ZXXPRoUGC8svZN9P97R3feDYyH6QmgYrO2gdmlyPsataQRo/GeNKZk
         yTTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=/LI69QRnHvZTJBi3mC2eK3uZM0VIIae2prYT3cvU+gg=;
        b=LHv+D8fn/WWRUE5z/Xg9jlzFrN18ykZpkAqfYmDpS15IEXEW1zf6pLlrkny7oi+n1m
         P401gx+74a7xK4ePMpcfXB1HjzJv1FHyMBjx0ec3G9Ajyj7xd+lsmwTtjKBJUTYzm94S
         WN9jLCn6AvLb/lYpMs/0LLq4rS9pdZfcAgjS9jq1gLvZe1i17IN2GRqT3tb793xwl7yh
         lGS2hSCqjNdd9CBrM8Yza8P3K1qACeS1/OKvH0H5V1h71fhxAANy8S2GjNfAMgxJslAo
         rgUHq5OnK48mXMgYFh7LkblV6rJI7XqycIRrY/UHVmfYfVaOspotKwvtmCQN/Ns4T1ve
         +CJQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bS33mlwd;
       spf=pass (google.com: domain of 30jijxwwkammwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::1049 as permitted sender) smtp.mailfrom=30jIjXwwKAMMwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/LI69QRnHvZTJBi3mC2eK3uZM0VIIae2prYT3cvU+gg=;
        b=YKBn/M0wwx46C8T2oSnNne1Dxf0RHb1z3XZ5u2oKbgXOyixLlyZeR7QLqP8MEeXDMG
         GiIcfFXXYXelx1WtDDOk5HdEAikPht2YAI3NADjwfFAfVi/QqEejkErajtvVLMm2Gout
         Q5nzuGJtezfM7n9Yj6nlvGe1fzSu9jBEQ8Uu8ZYOwvmcCgiHqQ9UnZ3oJYml/S4zIcRj
         mcplcX7D0Gr+URnbVBSBemS5HQVnegnvOclTrGdqnIUT3AmPs7BHWXJAGVIEnhC2LoE4
         xDIJ8qbWKiHr0Phwzak/OkggcGw9mKTV/LXMZo07NEqFj6ItZhJAkllzY80F4MZW+Qq9
         Ei8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/LI69QRnHvZTJBi3mC2eK3uZM0VIIae2prYT3cvU+gg=;
        b=fQEO95FbaQtLTDojutWuK8fgW/yTULMOhX1urH1d3tpYPHFf36YDr2NHBYt2OPyH5o
         nRDoMA7eOJseCxGv8PPdaaOvYuZTWYBpQldkEL19rQ4Y3PfjenKnfADXDNk+DZGZnSlA
         MOFFgERQW5jbjCTlhe3ztuRXKHAM95G3epJhvK9rrivo01Il/kx7uJpK0nEwiLKzGX8a
         d9WgYDsKuGYy8HrUefrymoR74Zhw+mVuvefv2aXWzjpDJ8IZVbKTLw5gSb4coG1UyF4S
         UfWzUM9/fjogDz4FkOJcLDBTGoGa8hjoBbIBt1zXNMk8NJYwZC+r+Q6dZ0UfUfRq4O2J
         rqXg==
X-Gm-Message-State: AOAM5333aAZ2VsxmrIzAeAwXNf2h/v3gXP9B8BZBc3K3FUvHP9bB72sT
	0RczOAQEhGuvCtv6GHe5+X0=
X-Google-Smtp-Source: ABdhPJzUpTARgxdrffUeq2Dwdcw2GrNsI/FoG76YzbYcDugmEll6rMLV5Sc4yLZJgjTBwtv14XcFmw==
X-Received: by 2002:a65:594b:: with SMTP id g11mr725602pgu.168.1596142291093;
        Thu, 30 Jul 2020 13:51:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:130a:: with SMTP id h10ls2750468pja.0.canary-gmail;
 Thu, 30 Jul 2020 13:51:30 -0700 (PDT)
X-Received: by 2002:a17:90a:a68:: with SMTP id o95mr970346pjo.64.1596142290593;
        Thu, 30 Jul 2020 13:51:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596142290; cv=none;
        d=google.com; s=arc-20160816;
        b=uWMaEZTc8sm78sszZF2TO4+oUKWq+cQ4F4L191aonQaoYl2Ri513t0tSo60Ax19dkG
         hTByuy8ijRu03IfPqD2yCEniKxA1cByPUnIfYz+fRH5eRAfqwRGEM2Q3vyOsiUGPbygY
         aF4vPUa8xImkT/A5cdM36wDrqHNqCALU9PRPRH5SesnLsrNV6QW+g1L+II1WrjzJA5bO
         mfryLAdx40dVWPYaF7+fGgc73ii2nczOn98Re+ShPogwYbXTGNbmUgm+jCnEb3MTwdNx
         k9G3kNtVt2ol/vsZv0008qBhx6zsNTOj81HiHfgcOReXSuzSBZmbkbqEUks6Q6DJxl3A
         oiwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=U0OUPTDRNGhh0ydoN6VkhJdiruQZ6OtwNxR4N39C4f8=;
        b=mztuHWzgYHxkqNOWxl965E2H7mZab8VU88SjYAZsE7dSphk2q1WbUOMaGWfMiDduZh
         JKcM8TRIAPNq0HT59Q6L5T24KtTNCl+IhmhyjDFgFbyeOS2rQiGrNShBN9gWgWqdzuzZ
         RnnnW2VkL+VdkaF7svMzcgf4dnwgYwFv7H1rvjzL1ZNUtyu88GrS7XGUaiWZKMyEQ+Pg
         yKcL7HQKk5LKh+j6qOCs5BNzJ+jESoX3lA60vAftZu5M9viRKp5+ly4TX64YGhaYarHl
         euWjtY5E4QcCuJQXafnXktLEVcpeu2qtAieTCHvOKJmUc4uoXGSwYmBnCv6DEsy1oTy2
         blQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bS33mlwd;
       spf=pass (google.com: domain of 30jijxwwkammwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::1049 as permitted sender) smtp.mailfrom=30jIjXwwKAMMwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1049.google.com (mail-pj1-x1049.google.com. [2607:f8b0:4864:20::1049])
        by gmr-mx.google.com with ESMTPS id c4si407910pjo.0.2020.07.30.13.51.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jul 2020 13:51:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of 30jijxwwkammwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::1049 as permitted sender) client-ip=2607:f8b0:4864:20::1049;
Received: by mail-pj1-x1049.google.com with SMTP id q5so7050299pjd.3
        for <clang-built-linux@googlegroups.com>; Thu, 30 Jul 2020 13:51:30 -0700 (PDT)
X-Received: by 2002:a17:90b:4d0b:: with SMTP id mw11mr923395pjb.4.1596142290243;
 Thu, 30 Jul 2020 13:51:30 -0700 (PDT)
Date: Thu, 30 Jul 2020 13:51:10 -0700
In-Reply-To: <20200730205112.2099429-1-ndesaulniers@google.com>
Message-Id: <20200730205112.2099429-3-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200730205112.2099429-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.28.0.163.g6104cc2f0b6-goog
Subject: [PATCH 2/4] ARM: backtrace-clang: add fixup for lr dereference
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nathan Huckleberry <nhuck15@gmail.com>, Russell King <linux@armlinux.org.uk>
Cc: Andrew Morton <akpm@linux-foundation.org>, Chunyan Zhang <zhang.lyra@gmail.com>, 
	clang-built-linux@googlegroups.com, Dmitry Safonov <0x7f454c46@gmail.com>, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, Lvqiang Huang <lvqiang.huang@unisoc.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Miles Chen <miles.chen@mediatek.com>, stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=bS33mlwd;       spf=pass
 (google.com: domain of 30jijxwwkammwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::1049 as permitted sender) smtp.mailfrom=30jIjXwwKAMMwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com;
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

If the value of the link register is not correct (tail call from asm
that didn't set it, stack corruption, memory no longer mapped), then
using it for an address calculation may trigger an exception.  Without a
fixup handler, this will lead to a panic, which will unwind, which will
trigger the fault repeatedly in an infinite loop.

We don't observe such failures currently, but we have. Just to be safe,
add a fixup handler here so that at least we don't have an infinite
loop.

Cc: stable@vger.kernel.org
Fixes: commit 6dc5fd93b2f1 ("ARM: 8900/1: UNWINDER_FRAME_POINTER implementation for Clang")
Reported-by: Miles Chen <miles.chen@mediatek.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/arm/lib/backtrace-clang.S | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/arch/arm/lib/backtrace-clang.S b/arch/arm/lib/backtrace-clang.S
index 5388ac664c12..40eb2215eaf4 100644
--- a/arch/arm/lib/backtrace-clang.S
+++ b/arch/arm/lib/backtrace-clang.S
@@ -146,7 +146,7 @@ for_each_frame:	tst	frame, mask		@ Check for address exceptions
 
 		tst	sv_lr, #0		@ If there's no previous lr,
 		beq	finished_setup		@ we're done.
-		ldr	r0, [sv_lr, #-4]	@ get call instruction
+prev_call:	ldr	r0, [sv_lr, #-4]	@ get call instruction
 		ldr	r3, .Lopcode+4
 		and	r2, r3, r0		@ is this a bl call
 		teq	r2, r3
@@ -206,6 +206,13 @@ finished_setup:
 		mov	r2, frame
 		bl	printk
 no_frame:	ldmfd	sp!, {r4 - r9, fp, pc}
+/*
+ * Accessing the address pointed to by the link register triggered an
+ * exception, don't try to unwind through it.
+ */
+bad_lr:		mov	sv_fp, #0
+		mov	sv_lr, #0
+		b	finished_setup
 ENDPROC(c_backtrace)
 		.pushsection __ex_table,"a"
 		.align	3
@@ -214,6 +221,7 @@ ENDPROC(c_backtrace)
 		.long	1003b, 1006b
 		.long	1004b, 1006b
 		.long   1005b, 1006b
+		.long	prev_call, bad_lr
 		.popsection
 
 .Lbad:		.asciz	"%sBacktrace aborted due to bad frame pointer <%p>\n"
-- 
2.28.0.163.g6104cc2f0b6-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200730205112.2099429-3-ndesaulniers%40google.com.
