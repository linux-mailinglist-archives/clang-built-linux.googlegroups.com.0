Return-Path: <clang-built-linux+bncBCS7XUWOUULBBPGCSGBAMGQEGL6RZPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A99C32FEB2
	for <lists+clang-built-linux@lfdr.de>; Sun,  7 Mar 2021 06:14:38 +0100 (CET)
Received: by mail-qv1-xf38.google.com with SMTP id u17sf4930753qvq.23
        for <lists+clang-built-linux@lfdr.de>; Sat, 06 Mar 2021 21:14:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615094077; cv=pass;
        d=google.com; s=arc-20160816;
        b=I3OeayuOkE8Mog6spgYpUNwPCzKaEYOxyT1bWatd3PLSP5FGQJSZqMGZniXvXhVPdE
         ePjVUTcz2YAYI/oFjhOcBaG4HUfr/ncUL39MIP9YvMwcAbaWnu77SR7yfa9HVUR6lZ/h
         BSQTk0YNSutSzVx+r0gcwP5qV3H5RxJAylbI/8bAlX7vO5kMCgr4M3sHLix0gGVg1E3w
         //s731XZepoDfRHSikmz+TSAq9NGo/4yDdUKFkaCpNf9HnNV8GOGXELG1F70BmN2sGUz
         oaQPsG7sgq4602lu5aMnMAb4j/+wvwVlNGYc74sw5EaA0cuBBM+Pn7yzVELgP9IHO7+U
         yj0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=9X2+9zIDRb4HEKns3BG8dEB7+vby61Jaoqsd15UuHk0=;
        b=jw+hOfQ8So5BBIngpvMnOZAuMvldvhZq5fYzcWNRmcZktHqYAXgJGcQT0rAivkQFqe
         pKUx8E6KS19HZzjKmnRAuD2LEGr795nlJJcBC1anfNeaK+eczcbFk/m9tsVCBlpnJj1h
         pmx9suxHlMGgmPtSNaDUa7e36FQVUi71KfLGZnEB5Pr9eD3Fqx69/9oqf5W8wBHARj/E
         QqyofmG/yoL+SSk1GDLT2wPOqmubGnU0E7V6StbehYN4VMAAGoaOp8VVVBTwpOdOsYF2
         92zIaZG3InDldNv8VqEDJC80YIdTp/RaOkztw2mRYjyhF5fntmWVWdaL+xWRoD1gkTaN
         ewSg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HqHsPJvr;
       spf=pass (google.com: domain of 3pgfeyackerkbzh9gzn5dd5a3.1db1azc5-0j7ai-a7cjm5dd5a35gdjeh.1db@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3PGFEYAcKERkBzH9GzN5DD5A3.1DB1AzC5-0J7AI-A7CJM5DD5A35GDJEH.1DB@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9X2+9zIDRb4HEKns3BG8dEB7+vby61Jaoqsd15UuHk0=;
        b=XRQ5lGVseqNauwcpm/fIhTgRIGg3Us/x4Xxi30K7uT5BsD1ILkPZDTrr+HAaqRnGR6
         ukQ3glkuHThp9njN2/NJm3WQWviy5evAEFDvkj/kjqOVHG3rpjVEVCnVaOjfUUIEnBUd
         5po14URvKPTSsLWzakZ/zMUeHqPHE3NgN6QFrNYGPW1TsTllCfk/LDWVB0FBDAmwK2EX
         DlPKMw6RpQx8kakoiXpHWTtJPwht2VeWW9W0FDRBWqpPw2DM+PMHthYjyFeGWhn8iADb
         dyhggZqQyn2ux+Ly/LTc9zWh6JHDPdoPqEJfls4mM2wMvqamvk2GsTrbNzM3WDaTPoiO
         8e6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9X2+9zIDRb4HEKns3BG8dEB7+vby61Jaoqsd15UuHk0=;
        b=eA25KSjryprTQYPhLxF6XthhYW4LA0jamhGWbpSyz0fAkS6R4gQTMiKZiZrqKN0SZz
         kP/rkJRrGj8W6OdJJId6GBHaORwtyW/N/2an7OJA8niuaoyUnx7chBggS8I2IUg1hUeN
         /CxBLnFf6sG9e2tzJqYm8AbsXWlnqmuQvknXW91ue6fCrPjEnXqB3AMdzD0b966Eswmm
         x2Hg6uj2tL0ITTYW07jmymGkE2clC83X/cZy22y8bnhbsGdyzuWNP1RmqHI4U2l+r/cl
         WVQ+ZC8/kSPcBNW1dUny1nS2YVCaCdDv1bC4LjYxuJuP8Qxs/bv8psLLXIs9lP397Cip
         qboQ==
X-Gm-Message-State: AOAM533gdrd7U4qRxfvr5N1L+kxSQZxk7tO0HiiTBuV6jQ3ZRuMFnYFQ
	OJm4BFtGuWm1wGLdtEoAfcY=
X-Google-Smtp-Source: ABdhPJxOD6vAunuTJWkZE6TXBYhYvwhkFGKHo9lxfr7ufCCZ5nkm35b3PjVwmKxZK2wowlBduUePKg==
X-Received: by 2002:a37:638f:: with SMTP id x137mr15104836qkb.199.1615094076968;
        Sat, 06 Mar 2021 21:14:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:b19:: with SMTP id t25ls7158195qkg.1.gmail; Sat, 06
 Mar 2021 21:14:36 -0800 (PST)
X-Received: by 2002:a37:aa09:: with SMTP id t9mr15870086qke.11.1615094076523;
        Sat, 06 Mar 2021 21:14:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615094076; cv=none;
        d=google.com; s=arc-20160816;
        b=f/pGphIT51vzizDuVUgV9ZtTeAmhnCkFNJSvkxAtpdk61DhNF2rVxZB+wd5V9zY52b
         dhQSE/6dDgCTuhqGAxi0O7vCU4npHGHHXNmSHhPfrkmrXgLZKJlFFK6KTSijFvBm7XJh
         RN0Oiqb7CA1bvRHWqJP6cO5TFgelHOrVN38uZPSWL4VBwwvBtZBamwgrMUgASmoWfnq6
         qFg2C/uxsxLmRDigghRduonvPFQsVJyFxKt9mmP7+C0QLnBiYHEopY/TpthlrG/yNMAB
         7EEBGexv1pwR++Alqh+Em4WkYMOOejQkg+XUxlWGLsd5GPtMwhZZ3ONS13Nqbz4/ubnP
         gpUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=WJiB9dl71l/TjVCBFVP2J9zHhd24ZHwnIvXPdaQCFZY=;
        b=LlzhPhfzStrocMK0QwD0avC637On7sF76NNT0rWaUauTFS1JlqsoqaBl444bLOem0m
         7hKzqMsVX5i7Wcux+SH+psh+xIosXcJUQ86WgErZS9Caf044DA/ZAQaAqEFNvTjtH+cP
         1TCvhCLzHY+s3yvJ3qMetb05i1kQvsdQAzpIGrCubD0ySriY/o7CZX57bQ+v+oMcuNsa
         p1W/71rbR1/Lm1wT29XdITWcQVX47XzVoo5GlxuKHlzN7D9/gIHNEN3uRMY4rmno/Esx
         CG8xleb+3WF0O2ChwS8jX9mff0f581nFJG0zBZhtaVy4kLOt+jnU6XS12XSAJLUSv6TH
         Uv9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HqHsPJvr;
       spf=pass (google.com: domain of 3pgfeyackerkbzh9gzn5dd5a3.1db1azc5-0j7ai-a7cjm5dd5a35gdjeh.1db@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3PGFEYAcKERkBzH9GzN5DD5A3.1DB1AzC5-0J7AI-A7CJM5DD5A35GDJEH.1DB@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id g4si415866qtg.3.2021.03.06.21.14.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 06 Mar 2021 21:14:36 -0800 (PST)
Received-SPF: pass (google.com: domain of 3pgfeyackerkbzh9gzn5dd5a3.1db1azc5-0j7ai-a7cjm5dd5a35gdjeh.1db@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id n10so8251700ybb.12
        for <clang-built-linux@googlegroups.com>; Sat, 06 Mar 2021 21:14:36 -0800 (PST)
Sender: "maskray via sendgmr" <maskray@maskray1.svl.corp.google.com>
X-Received: from maskray1.svl.corp.google.com ([2620:15c:2ce:0:5cbf:1a9f:3f48:ea77])
 (user=maskray job=sendgmr) by 2002:a25:38d6:: with SMTP id
 f205mr25328159yba.448.1615094076144; Sat, 06 Mar 2021 21:14:36 -0800 (PST)
Date: Sat,  6 Mar 2021 21:14:33 -0800
Message-Id: <20210307051433.2756645-1-maskray@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.30.1.766.gb4fecdf3b7-goog
Subject: [PATCH] Replace __toc_start + 0x8000 with .TOC.
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Michael Ellerman <mpe@ellerman.id.au>, linuxppc-dev@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Cc: Fangrui Song <maskray@google.com>, Alexey Kardashevskiy <aik@ozlabs.ru>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=HqHsPJvr;       spf=pass
 (google.com: domain of 3pgfeyackerkbzh9gzn5dd5a3.1db1azc5-0j7ai-a7cjm5dd5a35gdjeh.1db@flex--maskray.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3PGFEYAcKERkBzH9GzN5DD5A3.1DB1AzC5-0J7AI-A7CJM5DD5A35GDJEH.1DB@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

TOC relocations are like GOT relocations on other architectures.
However, unlike other architectures, GNU ld's ppc64 port defines .TOC.
relative to the .got output section instead of the linker synthesized
.got input section. LLD defines .TOC. as the .got input section plus
0x8000. When CONFIG_PPC_OF_BOOT_TRAMPOLINE=y,
arch/powerpc/kernel/prom_init.o is built, and LLD computed .TOC. can be
different from __toc_start defined by the linker script.

Simplify kernel_toc_addr with asm label .TOC. so that we can get rid of
__toc_start.

With this change, powernv_defconfig with CONFIG_PPC_OF_BOOT_TRAMPOLINE=y
is bootable with LLD. There is still an untriaged issue with Alexey's
configuration.

Link: https://github.com/ClangBuiltLinux/linux/issues/1318
Reported-by: Alexey Kardashevskiy <aik@ozlabs.ru>
Signed-off-by: Fangrui Song <maskray@google.com>
---
 arch/powerpc/boot/crt0.S            |  2 +-
 arch/powerpc/boot/zImage.lds.S      |  1 -
 arch/powerpc/include/asm/sections.h | 10 ++--------
 arch/powerpc/kernel/head_64.S       |  2 +-
 arch/powerpc/kernel/vmlinux.lds.S   |  1 -
 5 files changed, 4 insertions(+), 12 deletions(-)

diff --git a/arch/powerpc/boot/crt0.S b/arch/powerpc/boot/crt0.S
index 1d83966f5ef6..e45907fe468f 100644
--- a/arch/powerpc/boot/crt0.S
+++ b/arch/powerpc/boot/crt0.S
@@ -28,7 +28,7 @@ p_etext:	.8byte	_etext
 p_bss_start:	.8byte	__bss_start
 p_end:		.8byte	_end
 
-p_toc:		.8byte	__toc_start + 0x8000 - p_base
+p_toc:		.8byte	.TOC. - p_base
 p_dyn:		.8byte	__dynamic_start - p_base
 p_rela:		.8byte	__rela_dyn_start - p_base
 p_prom:		.8byte	0
diff --git a/arch/powerpc/boot/zImage.lds.S b/arch/powerpc/boot/zImage.lds.S
index d6f072865627..32cf7816292f 100644
--- a/arch/powerpc/boot/zImage.lds.S
+++ b/arch/powerpc/boot/zImage.lds.S
@@ -39,7 +39,6 @@ SECTIONS
   . = ALIGN(256);
   .got :
   {
-    __toc_start = .;
     *(.got)
     *(.toc)
   }
diff --git a/arch/powerpc/include/asm/sections.h b/arch/powerpc/include/asm/sections.h
index 324d7b298ec3..bd22ca0b5eca 100644
--- a/arch/powerpc/include/asm/sections.h
+++ b/arch/powerpc/include/asm/sections.h
@@ -48,14 +48,8 @@ static inline int in_kernel_text(unsigned long addr)
 
 static inline unsigned long kernel_toc_addr(void)
 {
-	/* Defined by the linker, see vmlinux.lds.S */
-	extern unsigned long __toc_start;
-
-	/*
-	 * The TOC register (r2) points 32kB into the TOC, so that 64kB of
-	 * the TOC can be addressed using a single machine instruction.
-	 */
-	return (unsigned long)(&__toc_start) + 0x8000UL;
+	extern unsigned long toc asm(".TOC.");
+	return (unsigned long)(&toc);
 }
 
 static inline int overlaps_interrupt_vector_text(unsigned long start,
diff --git a/arch/powerpc/kernel/head_64.S b/arch/powerpc/kernel/head_64.S
index ece7f97bafff..9542d03b2efe 100644
--- a/arch/powerpc/kernel/head_64.S
+++ b/arch/powerpc/kernel/head_64.S
@@ -899,7 +899,7 @@ _GLOBAL(relative_toc)
 	blr
 
 .balign 8
-p_toc:	.8byte	__toc_start + 0x8000 - 0b
+p_toc:	.8byte	.TOC. - 0b
 
 /*
  * This is where the main kernel code starts.
diff --git a/arch/powerpc/kernel/vmlinux.lds.S b/arch/powerpc/kernel/vmlinux.lds.S
index 72fa3c00229a..c28f4e5bae3f 100644
--- a/arch/powerpc/kernel/vmlinux.lds.S
+++ b/arch/powerpc/kernel/vmlinux.lds.S
@@ -328,7 +328,6 @@ SECTIONS
 
 	. = ALIGN(256);
 	.got : AT(ADDR(.got) - LOAD_OFFSET) {
-		__toc_start = .;
 #ifndef CONFIG_RELOCATABLE
 		__prom_init_toc_start = .;
 		arch/powerpc/kernel/prom_init.o*(.toc .got)
-- 
2.30.1.766.gb4fecdf3b7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210307051433.2756645-1-maskray%40google.com.
