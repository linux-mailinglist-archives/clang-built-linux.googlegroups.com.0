Return-Path: <clang-built-linux+bncBC6LFE5SYELBBJ5U7P2QKGQEWSEE4DY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E8D1D589F
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 May 2020 20:06:32 +0200 (CEST)
Received: by mail-vs1-xe39.google.com with SMTP id a22sf387842vsl.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 May 2020 11:06:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589565992; cv=pass;
        d=google.com; s=arc-20160816;
        b=gPLrho2bcYeV6feNUvjq6F+OtGEilOFAk85gIaRmmaPiGt0aJF6AHMRA7PUBZJ5JX3
         ss8QOVE8Xvg9FBg2QzVON+OvONYtreOqQUbwyNuc/thOnuW2t3RLTMc0UgZSatJD5sJN
         kRkC+a4oc6BrGJ8VSM2GD2/CTkktBFp1bN3oP0vkkViaBFB3GuE1/ORDClA6mT1P+R0N
         tN4WgMcb3PBYPTjffPcbBNwzZhmN1TXx5t4M+iuH16lYEqQThVsWoODYIZFRkmqQdRdD
         fj/P6Re0wncbbXTRSDfptQOM5hwsC0hJ2hUMo8TsFSqksp0vBXkD55Xq1dFdHJgnfXD6
         fn+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=1FO5wd2Q9YCxPyI+qpLuxKA2288DGm7/wuR479TZvrI=;
        b=IeATaHscMqFW7r5wLsGyc035We17O0uAkSlgeC3QlQCpOml8FLTlqHbR+c636U7ANF
         Li/pnjUGrrSc9a+ybDzG/0+ufDKJq6ACYtGPfLmiv5BvF6wYaFvbYcO5WYpRCzNbgGlX
         OQnCVStfwh+u2zKt7QfiuDO6jNKcmJ9VAHyNyI4qO+xfiG87EtHG4Qiwrtg7Cfz/+ITz
         ozEOUOf0wnuQJlc/6uNAXiDSGNgEP6Qq/XQ860kJMKXLhCtREyLuzLj8BYN498ZOGQuV
         e5VRdMxU0fus9DuElI7vOdLJe73/e397J9M3j1MgKDztm4K7is1M3O28lUZ4asOPugWw
         sBHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qt025oqx;
       spf=pass (google.com: domain of 3jtq-xgkkane5a38be5ba3bb381.zb9@flex--inglorion.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3Jtq-XgkKANE5A38BE5BA3BB381.zB9@flex--inglorion.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=1FO5wd2Q9YCxPyI+qpLuxKA2288DGm7/wuR479TZvrI=;
        b=Yf+uZkDlEbV1wBGRbElnjfaTz5gAlvbb0MkG/Ui88BmkoXsab9OnLIhzolyx1M10Mu
         hnAKgOWpbx34Hx4saO4xZ3eg2jOJJMjmtJKPjVmJlLOXEFyEDXZGyaKsV4lJZLOKfQJH
         uoZvhmNLDvxZ/nIJ7QXv7/C9LtVusw1XySwT3MIt82h2thR0cNMAE/yT0/zJl9+TsFvr
         UlP51sWUaPH8Ox21Ku5C4CdvnDqPLBUUk42Kx9u88S0RTnbXhfc4Tn9vCE634gGi//IA
         0ocK6q+EM9nxRcTv+GVroRWgxnnBhK0KqW1n9CCR/DbGNmqfjyZ8eLP2S0fY+DeW73n/
         cRRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1FO5wd2Q9YCxPyI+qpLuxKA2288DGm7/wuR479TZvrI=;
        b=W2qSVA/AgIbYwtCGtF40ACKwt/ftNRczioTTKKU2HlIdqJoynJKLh4OmtKSQ6Xz4X7
         5LoLoVAq3AYmQoTO1ggGIqpU1TzEnqx22kmqO3DVt5jN4X6yMSa639pJDiqRfzWi01Ws
         0HbxpwXM2ot3OEHdcSTqQL4HwEBcn6/VRfNvelzQ2n3KDbInnJsZWFhONAafkQUEprMW
         5XfkSqp16QPeOsbhFyF8Xexr+FGNFDRWsq9AymZIOwJacZ+Rzv4Yvaxbi16+xsFwDNQr
         Faua62a8YJPJnS08ts/cxfuX+ObW/no5rwXIx23ICcOvgl6ms/mKe6kF2caR9LtUawTM
         z4TQ==
X-Gm-Message-State: AOAM530VvrJMCdvBJNpl/v5BNeXDI6iZv9A2CSI119L+NAV9C2X+wDB6
	FLEpn9qwLbIXnPyrmNaHk/I=
X-Google-Smtp-Source: ABdhPJx346aoqVCL+5i9rxwTOZSYp6apKBvn79S7tX+OoEe2Jiq4Vqwc/Spp6/Sz0hNb31DBlzmEMQ==
X-Received: by 2002:a67:ecc3:: with SMTP id i3mr3347408vsp.170.1589565991940;
        Fri, 15 May 2020 11:06:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:70cb:: with SMTP id r11ls226954ual.5.gmail; Fri, 15 May
 2020 11:06:31 -0700 (PDT)
X-Received: by 2002:ab0:6ec6:: with SMTP id c6mr680735uav.7.1589565991441;
        Fri, 15 May 2020 11:06:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589565991; cv=none;
        d=google.com; s=arc-20160816;
        b=0HpmzNG11oIzzuKcFJVmeNtp0uPC0Tr5JQzx4sRa+CU6IYHkEHwYjWtB4MM3vrnYCr
         b3Y7xItfWtLZ3o/CPLqCew5BFkDnDey7lmbEbbr8OEUHDQ79mPSxh7J/GSVztEUNCaFv
         cSsFjNdkrdJ55vFvrhz+aXLfjPNdPiPmq2c1tV111f6KKAYCqtWpSzL79ImfT+O9WtfJ
         5ghSRX0jEHJM0oUktzzbhNYzvZdnbwAe23ufExRliuRLaUqKqgC/WRDzwvq/3WZz8pfi
         KuaVoUb6uFaEzBBrA8N6BDB+y4QrW7RFf+B3lbxFKB1oYy9+J1JaAO4G9SG17BJo18eA
         hUZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=L/+EYSk36TST2rIE8NznK9E9+/xuLx5a1Z0fVdYAEAY=;
        b=OX/LYh0Me/3HaGAcE3ocDsaTVEWdMjBcxtyDgqnJg8eTdFxsmGBPQZ0EQsSmRIZKtN
         rN1S/j+uMDCRR+aXxgwPKqDlHYf3EYgCXIYTuJBPXwuJ6/rXiEEoUghoWdJGbdvZIv1S
         A47HM8zOuOlkUeb86xaXPavfpihQYCAcKXcfBTj4qnX/aKQwd1t4JRc+ni/6fo/hKY+6
         FDixTaFSFr5dy+BC6WYucJOJeucavlpQ+7zE611AMY7Y6XPdS/CcJvH+kb+4ClStvLWJ
         QRnjMgd24Y8m8nqrnIrUQD322Il/OXRxJTXzO8eWMrFIo+6q8b4mtj3guIoOuTvt1W7Y
         59RA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qt025oqx;
       spf=pass (google.com: domain of 3jtq-xgkkane5a38be5ba3bb381.zb9@flex--inglorion.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3Jtq-XgkKANE5A38BE5BA3BB381.zB9@flex--inglorion.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id a65si199225vki.2.2020.05.15.11.06.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 May 2020 11:06:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3jtq-xgkkane5a38be5ba3bb381.zb9@flex--inglorion.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id m15so3057216qka.20
        for <clang-built-linux@googlegroups.com>; Fri, 15 May 2020 11:06:31 -0700 (PDT)
X-Received: by 2002:a0c:9c4f:: with SMTP id w15mr4602062qve.245.1589565990696;
 Fri, 15 May 2020 11:06:30 -0700 (PDT)
Date: Fri, 15 May 2020 11:05:40 -0700
Message-Id: <20200515180544.59824-1-inglorion@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.26.2.761.g0e0b3e54be-goog
Subject: [PATCH] x86_64: fix jiffies ODR violation
From: "'Bob Haarman' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>
Cc: Fangrui Song <maskray@google.com>, Sami Tolvanen <samitolvanen@google.com>, 
	Bob Haarman <inglorion@google.com>, stable@vger.kernel.org, 
	Nathan Chancellor <natechancellor@gmail.com>, Alistair Delva <adelva@google.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, x86@kernel.org, "H. Peter Anvin" <hpa@zytor.com>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Vincenzo Frascino <vincenzo.frascino@arm.com>, Kyung Min Park <kyung.min.park@intel.com>, 
	afzal mohammed <afzal.mohd.ma@gmail.com>, Peter Zijlstra <peterz@infradead.org>, 
	Kees Cook <keescook@chromium.org>, Heiko Carstens <heiko.carstens@de.ibm.com>, 
	Dave Hansen <dave.hansen@intel.com>, Baoquan He <bhe@redhat.com>, 
	Thomas Lendacky <Thomas.Lendacky@amd.com>, Ross Zwisler <zwisler@chromium.org>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Dmitry Safonov <0x7f454c46@gmail.com>, 
	Andi Kleen <ak@linux.intel.com>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: inglorion@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qt025oqx;       spf=pass
 (google.com: domain of 3jtq-xgkkane5a38be5ba3bb381.zb9@flex--inglorion.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3Jtq-XgkKANE5A38BE5BA3BB381.zB9@flex--inglorion.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Bob Haarman <inglorion@google.com>
Reply-To: Bob Haarman <inglorion@google.com>
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

`jiffies` and `jiffies_64` are meant to alias (two different symbols
that share the same address).  Most architectures make the symbols alias
to the same address via linker script assignment in their
arch/<arch>/kernel/vmlinux.lds.S:

jiffies = jiffies_64;

which is effectively a definition of jiffies.

jiffies and jiffies_64 are both forward declared for all arch's in:
include/linux/jiffies.h.

jiffies_64 is defined in kernel/time/timer.c for all arch's.

x86_64 was peculiar in that it wasn't doing the above linker script
assignment, but rather was:
1. defining jiffies in arch/x86/kernel/time.c instead via linker script.
2. overriding the symbol jiffies_64 from kernel/time/timer.c in
arch/x86/kernel/vmlinux.lds.s via `jiffies_64 = jiffies;`.

As Fangrui notes:
```
In LLD, symbol assignments in linker scripts override definitions in
object files. GNU ld appears to have the same behavior. It would
probably make sense for LLD to error "duplicate symbol" but GNU ld is
unlikely to adopt for compatibility reasons.
```

So we have an ODR violation (UB), which we seem to have gotten away
with thus far. Where it becomes harmful is when we:

1. Use -fno-semantic-interposition.

As Fangrui notes:
```
Clang after LLVM
commit 5b22bcc2b70d ("[X86][ELF] Prefer to lower MC_GlobalAddress
operands to .Lfoo$local")
defaults to -fno-semantic-interposition similar semantics which help
-fpic/-fPIC code avoid GOT/PLT when the referenced symbol is defined
within the same translation unit. Unlike GCC
-fno-semantic-interposition, Clang emits such relocations referencing
local symbols for non-pic code as well.
```

This causes references to jiffies to refer to `.Ljiffies$local` when
jiffies is defined in the same translation unit. Likewise, references
to jiffies_64 become references to `.Ljiffies_64$local` in translation
units that define jiffies_64.  Because these differ from the names
used in the linker script, they will not be rewritten to alias one
another.

Combined with ...

2. Full LTO effectively treats all source files as one translation
unit, causing these local references to be produced everywhere.  When
the linker processes the linker script, there are no longer any
references to `jiffies_64` anywhere to replace with `jiffies`.  And
thus `.Ljiffies$local` and `.Ljiffies_64$local` no longer alias
at all.

In the process of porting patches enabling Full LTO from arm64 to
x86_64, we observe spooky bugs where the kernel appeared to boot, but
init doesn't get scheduled.

Instead, we can avoid the ODR violation by matching other arch's by
defining jiffies only by linker script.  For -fno-semantic-interposition
+ Full LTO, there is no longer a global definition of jiffies for the
compiler to produce a local symbol which the linker script won't ensure
aliases to jiffies_64.

Link: https://github.com/ClangBuiltLinux/linux/issues/852
Fixes: 40747ffa5aa8 ("asmlinkage: Make jiffies visible")
Cc: stable@vger.kernel.org
Reported-by: Nathan Chancellor <natechancellor@gmail.com>
Reported-by: Alistair Delva <adelva@google.com>
Suggested-by: Fangrui Song <maskray@google.com>
Debugged-by: Nick Desaulniers <ndesaulniers@google.com>
Debugged-by: Sami Tolvanen <samitolvanen@google.com>
Signed-off-by: Bob Haarman <inglorion@google.com>
---
 arch/x86/kernel/time.c        | 4 ----
 arch/x86/kernel/vmlinux.lds.S | 4 ++--
 2 files changed, 2 insertions(+), 6 deletions(-)

diff --git a/arch/x86/kernel/time.c b/arch/x86/kernel/time.c
index 371a6b348e44..e42faa792c07 100644
--- a/arch/x86/kernel/time.c
+++ b/arch/x86/kernel/time.c
@@ -25,10 +25,6 @@
 #include <asm/hpet.h>
 #include <asm/time.h>
 
-#ifdef CONFIG_X86_64
-__visible volatile unsigned long jiffies __cacheline_aligned_in_smp = INITIAL_JIFFIES;
-#endif
-
 unsigned long profile_pc(struct pt_regs *regs)
 {
 	unsigned long pc = instruction_pointer(regs);
diff --git a/arch/x86/kernel/vmlinux.lds.S b/arch/x86/kernel/vmlinux.lds.S
index 1bf7e312361f..7c35556c7827 100644
--- a/arch/x86/kernel/vmlinux.lds.S
+++ b/arch/x86/kernel/vmlinux.lds.S
@@ -40,13 +40,13 @@ OUTPUT_FORMAT(CONFIG_OUTPUT_FORMAT)
 #ifdef CONFIG_X86_32
 OUTPUT_ARCH(i386)
 ENTRY(phys_startup_32)
-jiffies = jiffies_64;
 #else
 OUTPUT_ARCH(i386:x86-64)
 ENTRY(phys_startup_64)
-jiffies_64 = jiffies;
 #endif
 
+jiffies = jiffies_64;
+
 #if defined(CONFIG_X86_64)
 /*
  * On 64-bit, align RODATA to 2MB so we retain large page mappings for
-- 
2.26.2.761.g0e0b3e54be-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200515180544.59824-1-inglorion%40google.com.
