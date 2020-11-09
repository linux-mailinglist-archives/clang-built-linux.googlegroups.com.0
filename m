Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6GXU36QKGQETAKZJGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id D3D9F2AC650
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Nov 2020 21:52:09 +0100 (CET)
Received: by mail-pf1-x438.google.com with SMTP id g14sf7491655pfb.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Nov 2020 12:52:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604955128; cv=pass;
        d=google.com; s=arc-20160816;
        b=fp5A4RsZKBrMaZVcEGCqjDqdFCX9sXuLSZy66SimnSvTnuXo4JK1Xju5IwiJMtMl9n
         tcpEtlyL3VljUO11HMt4//XuHwVMphgdG7WCqVHQ14jcrzc3jSPv1cK3GB7Am7mOWhY0
         SD8XcmzARKnFB8uU0bAodbRIUlMjd5CyO/SMMv6Z5m6kBEiq5S5/ljXwdVOGHMny3IEX
         jzFEhfLiH11ZjdDAa8l2ntDQdnG3gyWXzT6pSflgexlCjxZDbyJcEJcA97VsbiMwu2ME
         x3NcZLkJI9XlrC23osx21yJFbUFCIuEAPsigr7XPJbYOgCwUFMODWgKnpBIIM+qI3BvF
         vZcg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=NXUerLBqQPpaPn4VR/EIgKq65Wr8YUvyrAdltQdDMHo=;
        b=y42OC8aXhv1i6UBK9Y5Fj7pJP18fOZtsK/K5323osvrhSNKG+fdSHwCCRbnJeMSKgD
         FdR2/X5oH/jJ5FeK8pFVdG3DpJFLZAu9s1Hmp2vaHstnEwu+F848PCe07NR3xbmb/W9J
         uR7P3b/AZCCKl9Lr+BdfAbCgX3/1tPdK6n5JOCqK0l/2XCkgtadUj7I2Prg8k3YI+vbc
         X00tV/E3YmQr3AAQ6zzg2kA+DmnBGsSGVBQpejYapE49DamxWm1fLF3mVV+1zDXM16c6
         6z8S8CXWbuQc6daBpU3zGZ2m8KOlEyCcIbj+2XJ4jNN2ELyJ7Pe09qPNamgmVk60YYq5
         6Juw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OpbZWml0;
       spf=pass (google.com: domain of 396upxwwkapgsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=396upXwwKAPgsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NXUerLBqQPpaPn4VR/EIgKq65Wr8YUvyrAdltQdDMHo=;
        b=UnsXMlVLjdW7L+NITSFQQM2E0V0QkEGOTr2ow9Tv2lE3L5gE/s1+73PPRvc4fiWpD4
         iDm7cvgAaheuuNGt3tWqUEmI6UNeXVx7QFmiMIZd4zLiIwtFGCA0G7W1cS3eYHMJatdv
         jygOvoTfVMvlOzXeM6VaMAo4N8kIaxsucmchFS5d15L55RcrZOB3Ub9bjvvh2ZRY2izB
         mJ8Ywn68NQxRJTIwhII2hvgpjP/5DnocSJ0t86sGQvYJ6raDYw9uPxg2gTvZqdTp4jRu
         btsj0jO6HIP/7OViSOGQfUFLPH2Yeij8Fp8X+5fE1T2Ak7IglIEXC/9iR0CbhnwISXBr
         Wqdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NXUerLBqQPpaPn4VR/EIgKq65Wr8YUvyrAdltQdDMHo=;
        b=jbd8PWg6mSlhGivII376si7/lz2R8t6F6mIvmcb8VgRzCIzAvZrrLhtn6YyLgjknEn
         gL6SqKOofY7fJexzeyV06LceoMpsiRjCAeudDqS9lWRT9ROpy/uX03/PLBxmNBcAaIp6
         yaFigMkBWLifOkc3G6KvJRdq16fhtjWc7cmydvKuGQLgmpGZSMSpdMFRUMMg1MKsRgye
         gZuSU234uMZowQ17DfcJfOSAFqLnOgcNzGyLBDg9nd4UmTSrf/eJ2iGgzroj4e1zK9RX
         YkJms3I2108Y0ZOr7LzKWFai0K5dIzG97v2t/h3VNG9yMgMkOKDX7FFI6QdLbLjq41tV
         EX0g==
X-Gm-Message-State: AOAM531t8TJFX81yU/Zy4/xRtsuYjq164eU0z87d90LWWfVLNTzhnBxy
	zEljxokTdyLoHcaaSx3CPx8=
X-Google-Smtp-Source: ABdhPJzVQ3I50d9T1Qh1w1rqLjBFPtYqJuz0WphZglq6I+xh5sMwJqAF4j4kykU2/Kr1tWREcC+MVA==
X-Received: by 2002:a63:f944:: with SMTP id q4mr5284803pgk.98.1604955128555;
        Mon, 09 Nov 2020 12:52:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:8cc4:: with SMTP id m187ls3855758pfd.4.gmail; Mon, 09
 Nov 2020 12:52:08 -0800 (PST)
X-Received: by 2002:a63:e:: with SMTP id 14mr14857233pga.426.1604955127820;
        Mon, 09 Nov 2020 12:52:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604955127; cv=none;
        d=google.com; s=arc-20160816;
        b=MrT3vrs3NVtQGthvT2UEsRTSo4FtZfoUZlCy8ZQZB6v0I2YPzUaikfexJHbKyecEte
         Q1PI6kT5VnnsdV1J6fceax4AobFmh0kemPbfxnFpnMHr89btKlTJOTp4olwtbpp5j9IP
         4lTJ525iui753WZXb9odnzIKBoEQMG7Nl/8ZWxNFJWd3zck8HldpNWRAFbZUlei1MiME
         wEWXAPzqC9BEcwRdvbN9cKDL1RoyGGTyo1aliLfoEAKHf8QzCXYIME8aNF93aZeKGEhL
         m0HTUN26opfVt2c2BorkE5pYlsfYKUbs3WfVH53Yvf9y/PhAkuWrLaMo34Skib1+yX3K
         GrNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=ItIyVy5KO5WuT6gZSHv+tWX1C0qVtRdRVgajUctR89w=;
        b=vWYZB5rfHE6dyiRqNqBrMzKGtguvcmVLYz7pFHDQhRw6USExw/rW3Be/T5AeVxWDeC
         KxKRz1KqtM2vg31Bfx1XbimnCbwtUIaDCEYxRLMLp9pTEzztAA3Y7F59xAGrUroy3vfB
         0zLe+4x0DSFusi3sk7y4oyn744IWL2uCRsOkijBU5/PW92u0TrIpoV5Xlu/dNX5jvPL7
         LQx5aiMsdSf7/L1hqRpRjCLb4vLcQNSq5oe/zeMmNjB8p41+jn9MH16Eh3j7VyUAU5l9
         WPTvo+ltl5h1BXm9XP+mvDyThUf1yr4l4Nqg9D3wswKyOv+t/QIuyPWRhFb/cdvRFpqC
         gnCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OpbZWml0;
       spf=pass (google.com: domain of 396upxwwkapgsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=396upXwwKAPgsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id m1si690910pls.4.2020.11.09.12.52.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Nov 2020 12:52:07 -0800 (PST)
Received-SPF: pass (google.com: domain of 396upxwwkapgsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id g129so745062ybf.20
        for <clang-built-linux@googlegroups.com>; Mon, 09 Nov 2020 12:52:07 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a25:d981:: with SMTP id
 q123mr14118805ybg.50.1604955127041; Mon, 09 Nov 2020 12:52:07 -0800 (PST)
Date: Mon,  9 Nov 2020 12:51:54 -0800
Message-Id: <20201109205155.1207545-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.29.2.222.g5d2a92d10f8-goog
Subject: [PATCH] ARM: decompressor: avoid ADRL pseudo-instruction
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Jian Cai <jiancai@google.com>, 
	Russell King <linux@armlinux.org.uk>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nicolas Pitre <nico@fluxnic.net>, Linus Walleij <linus.walleij@linaro.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=OpbZWml0;       spf=pass
 (google.com: domain of 396upxwwkapgsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=396upXwwKAPgsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com;
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

As Ard notes in
commit 54781938ec34 ("crypto: arm/sha256-neon - avoid ADRL pseudo
instruction")
commit 0f5e8323777b ("crypto: arm/sha512-neon - avoid ADRL pseudo
instruction")

  The ADRL pseudo instruction is not an architectural construct, but a
  convenience macro that was supported by the ARM proprietary assembler
  and adopted by binutils GAS as well, but only when assembling in 32-bit
  ARM mode. Therefore, it can only be used in assembler code that is known
  to assemble in ARM mode only, but as it turns out, the Clang assembler
  does not implement ADRL at all, and so it is better to get rid of it
  entirely.

  So replace the ADRL instruction with a ADR instruction that refers to
  a nearer symbol, and apply the delta explicitly using an additional
  instruction.

We can use the same technique to generate the same offset. It looks like
the ADRL pseudo instruction assembles to two SUB instructions in this
case. Because the largest immediate operand that can be specified for
this instruction is 0x400, and the distance between the reference and
the symbol are larger than that, we need to use an intermediary symbol
(cache_off in this case) to calculate the full range.

Suggested-by: Ard Biesheuvel <ardb@kernel.org>
Suggested-by: Jian Cai <jiancai@google.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/arm/boot/compressed/head.S | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
index 2e04ec5b5446..b3eac6f9a709 100644
--- a/arch/arm/boot/compressed/head.S
+++ b/arch/arm/boot/compressed/head.S
@@ -1440,7 +1440,9 @@ ENTRY(efi_enter_kernel)
 		mov	r4, r0			@ preserve image base
 		mov	r8, r1			@ preserve DT pointer
 
- ARM(		adrl	r0, call_cache_fn	)
+ ARM(		sub	r0, pc, #.L__efi_enter_kernel-cache_off	)
+ ARM(		sub	r0, r0, #cache_off-call_cache_fn	)
+.L__efi_enter_kernel:
  THUMB(		adr	r0, call_cache_fn	)
 		adr	r1, 0f			@ clean the region of code we
 		bl	cache_clean_flush	@ may run with the MMU off
-- 
2.29.2.222.g5d2a92d10f8-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201109205155.1207545-1-ndesaulniers%40google.com.
