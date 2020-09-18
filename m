Return-Path: <clang-built-linux+bncBC2ORX645YPRBNVKST5QKGQEVY6LNXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0664227061D
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 22:14:48 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id s2sf4118529pgm.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 13:14:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600460086; cv=pass;
        d=google.com; s=arc-20160816;
        b=AfiNCKP2b4jiok8CfZP5WQb1piJ7Mu+UQKULkNRSKs3gIz6Ml+56PtMRHInL/DmxL7
         YIEaxdfnyhNhp/ZYqWh0MfIGLmt8D2/ygJTegTfzfSml4ahsGeypNeY4rpSjZI70Fus5
         jbT551h6vrwJrKI3tcPa9Mnt0x3AQ2nAPO8CWZ0S3I2OlWgfNTLnnPzwKgu4ydHkXe6i
         ZmjvMm6kyArnR/k9KMpHBav4CXXh5YkIj8R/H4GMwW/Ldf+g6xazBhcFk83MdNyWrH4s
         5yqJYqkZG8lni/Q+URYtqOo+A5ihZmsUwtLXJ/6HJCKw5c/KwOyfAMdRXb/wlGWLX5g6
         POww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=Rkn17uFwuJLqyA0dTJ8d9kdb8mmJNhFcWJHkVOUHxJg=;
        b=kfLEVZDUme5V/WTbf6xzEvCYvhf0BFflk+cSTUBrGclTLcvFUBQ4iFj0A9rQ0p380d
         YpbFqgUfXbKi06X/jdQmAZka7gCfYkKaKVGS3uezJ4Nuz7x3uVqU0UGE52cd3NAxY13E
         p9Ow107PDaKo+YCVGsQCMu6GujNGNPdx01HWQyM0J74Voruwvu6WIY5Wm9A6u2/YZU3z
         oxSxCFmLNNk+tsKOnYM/7wNb14tEmWrREAA2E3oXsbINIpGlCpYtwcdYaNULQohGKG+N
         eIMcxMR/1PJXjRWiyR8ttx6yiHIN2oi5FJ3x98xQVID75g/e1/YWyYJezqoSHOEKoMR5
         gZCQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kS9nJccC;
       spf=pass (google.com: domain of 3nrvlxwwkapqowiepkhrwjajckkcha.yki@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3NRVlXwwKAPQoWiepkhrWjajckkcha.Yki@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Rkn17uFwuJLqyA0dTJ8d9kdb8mmJNhFcWJHkVOUHxJg=;
        b=KdU5M57P295DUIei8AXzj6yC29+/1ZujWeCX/v42bOZI1Z+7MnSkJ78t1pSBxKSA78
         HeGX4FxzVG3NGkrrgX9l4CcmQLNvsICuqZ5rJpOg6hoYR0xSGqgZuULEt63SlKFZSOUA
         dKAREp5BIUDuse/4CGtIBfCaa80pc1y402ujXHQHs7Os8k5keYPskCtAzzAmaCe7OgYt
         shUHIJc7cWwOHR2jOW9JJBXNvm5EsFysxAMxMVjngUbNlhPQxO2bsDOHt4Gg/HBf5DvK
         7pTiuPwDI0Et0HLE7ShzYmg2EpU+qrWLvn6bop+cv0JlniIL2oVBIlko7Q0FfDDo5P88
         EM6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Rkn17uFwuJLqyA0dTJ8d9kdb8mmJNhFcWJHkVOUHxJg=;
        b=ifz9to9RW5+Vu9xzbMJspgxLWrzY8QpVSMsa1Bk/GTR6F3OeBSLgAu9uCXAJ03bUCm
         KG1Maq01QrMg0ZnUcnStvmaGbv5LcOdfQr4RsW/H4gj49WZ3Nh8QCgwhxOTKhFJ6Tomc
         YZzeYcaJqhLb/2puaqF66CNVT/C9knu5ud086V7G1l5TPIwV4iO4INEyAK7kI/f0eu9m
         EEpu9pnr2ACD6TwuhIIPEtZRsLpFclZQviIuCo/Jqa1Vd4rm47KUC/eneSNGMiLjd1Pn
         1dgFP7iGrGeYcfYxHSYltvIyBXbyQ6WX0cy1lw7+3YgY8gBWCr5P1nun8/ikNrt885CL
         VJtg==
X-Gm-Message-State: AOAM532uYSbNWwH+YwRssBjElgAelfGg2947OiKv5qYwGQF6fc25oIYY
	u3sMOeywy7Y5S5d3DMCtmBI=
X-Google-Smtp-Source: ABdhPJxkXhh5UkqLln3aqC9oI57z6XDwmPc0THyXNLbxjaIk9o9HB+x3JMgdscbivxlPrpqduS3OmA==
X-Received: by 2002:aa7:8249:0:b029:142:2501:35c9 with SMTP id e9-20020aa782490000b0290142250135c9mr17361419pfn.41.1600460086675;
        Fri, 18 Sep 2020 13:14:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:504e:: with SMTP id q14ls1431629pgl.11.gmail; Fri, 18
 Sep 2020 13:14:46 -0700 (PDT)
X-Received: by 2002:a62:c701:0:b029:142:2501:39e4 with SMTP id w1-20020a62c7010000b0290142250139e4mr18014912pfg.51.1600460085955;
        Fri, 18 Sep 2020 13:14:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600460085; cv=none;
        d=google.com; s=arc-20160816;
        b=WKqBO6fuJ99DSBxTk5ShnzuwH5ud55MBFhgZRmVbmh1j9EegsTm7Cmw/Hw6PTAq5R2
         psW7N2CxJgTamj1aSykD/Tl6JLLffe7sXWauVubAA6Nbm1C26ImcuN96P6Tzbrmz2zcC
         EGBO3jVu5HjCFmHDqq2I2sm2T0oR2sjyYLiXFyDYcS9C6vauR2AY312jHa1inTAKnfl4
         PJy7edO17gGF/6Q7kAZYr+1cruSKPeWg2wdp1lMLo77R9jeEmR03mvd/F+S6BPcrpQAF
         W1xs98O2cIVhYoAQnQ7zfNBG2fqFoChw4YUuOAWeujx1/xQgTL4kON+JK8XmA1DYuJzl
         QNxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=QG37uO1d4USzrK2i79mol19BZHF3voEs5YXCH0vFDXg=;
        b=do7SxJXVdI5OLQFpNnAQc+4hNNjkA38eVbJvumH7wb0hTF2du6pBsUX/TCi+1Z6lM2
         RLqn9m4nLLS8Bj+PWxSbSrFfgGLaNf2pgtRv80m61Q/AcEopcmvAS/7bKybeYTpKpc9j
         9r0KObSwHvnwoYDg3uj50Nz6ZIVEx9uEqmkfwMJVyeafN5JXak79ZaBIV1fV4kVmZPPJ
         IH2X+6nk76C8L87n3ZTX9ZhXxCRAt6Nkgvagzv9UXLdVzxEsEqGt4WwajeIsnLaTnCZX
         4gOPc9FNsVsR1oWXS6N3zQ2EEQLqygLmmIzq5yA9H+p1wCSFkfX1Mh+SRsPcee+6T4la
         Xclw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kS9nJccC;
       spf=pass (google.com: domain of 3nrvlxwwkapqowiepkhrwjajckkcha.yki@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3NRVlXwwKAPQoWiepkhrWjajckkcha.Yki@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id bk9si287396pjb.1.2020.09.18.13.14.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 13:14:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3nrvlxwwkapqowiepkhrwjajckkcha.yki@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id b8so2262478yba.10
        for <clang-built-linux@googlegroups.com>; Fri, 18 Sep 2020 13:14:45 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:3744:: with SMTP id
 e65mr19951166yba.275.1600460085079; Fri, 18 Sep 2020 13:14:45 -0700 (PDT)
Date: Fri, 18 Sep 2020 13:14:09 -0700
In-Reply-To: <20200918201436.2932360-1-samitolvanen@google.com>
Message-Id: <20200918201436.2932360-4-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200918201436.2932360-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.681.g6f77f65b4e-goog
Subject: [PATCH v3 03/30] x86/boot/compressed: Disable relocation relaxation
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org, 
	Arvind Sankar <nivedita@alum.mit.edu>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=kS9nJccC;       spf=pass
 (google.com: domain of 3nrvlxwwkapqowiepkhrwjajckkcha.yki@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3NRVlXwwKAPQoWiepkhrWjajckkcha.Yki@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

From: Arvind Sankar <nivedita@alum.mit.edu>

The x86-64 psABI [0] specifies special relocation types
(R_X86_64_[REX_]GOTPCRELX) for indirection through the Global Offset
Table, semantically equivalent to R_X86_64_GOTPCREL, which the linker
can take advantage of for optimization (relaxation) at link time. This
is supported by LLD and binutils versions 2.26 onwards.

The compressed kernel is position-independent code, however, when using
LLD or binutils versions before 2.27, it must be linked without the -pie
option. In this case, the linker may optimize certain instructions into
a non-position-independent form, by converting foo@GOTPCREL(%rip) to $foo.

This potential issue has been present with LLD and binutils-2.26 for a
long time, but it has never manifested itself before now:
- LLD and binutils-2.26 only relax
	movq	foo@GOTPCREL(%rip), %reg
  to
	leaq	foo(%rip), %reg
  which is still position-independent, rather than
	mov	$foo, %reg
  which is permitted by the psABI when -pie is not enabled.
- gcc happens to only generate GOTPCREL relocations on mov instructions.
- clang does generate GOTPCREL relocations on non-mov instructions, but
  when building the compressed kernel, it uses its integrated assembler
  (due to the redefinition of KBUILD_CFLAGS dropping -no-integrated-as),
  which has so far defaulted to not generating the GOTPCRELX
  relocations.

Nick Desaulniers reports [1,2]:
  A recent change [3] to a default value of configuration variable
  (ENABLE_X86_RELAX_RELOCATIONS OFF -> ON) in LLVM now causes Clang's
  integrated assembler to emit R_X86_64_GOTPCRELX/R_X86_64_REX_GOTPCRELX
  relocations. LLD will relax instructions with these relocations based
  on whether the image is being linked as position independent or not.
  When not, then LLD will relax these instructions to use absolute
  addressing mode (R_RELAX_GOT_PC_NOPIC). This causes kernels built with
  Clang and linked with LLD to fail to boot.

Patch series [4] is a solution to allow the compressed kernel to be
linked with -pie unconditionally, but even if merged is unlikely to be
backported. As a simple solution that can be applied to stable as well,
prevent the assembler from generating the relaxed relocation types using
the -mrelax-relocations=no option. For ease of backporting, do this
unconditionally.

[0] https://gitlab.com/x86-psABIs/x86-64-ABI/-/blob/master/x86-64-ABI/linker-optimization.tex#L65
[1] https://lore.kernel.org/lkml/20200807194100.3570838-1-ndesaulniers@google.com/
[2] https://github.com/ClangBuiltLinux/linux/issues/1121
[3] https://reviews.llvm.org/rGc41a18cf61790fc898dcda1055c3efbf442c14c0
[4] https://lore.kernel.org/lkml/20200731202738.2577854-1-nivedita@alum.mit.edu/

Reported-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Cc: stable@vger.kernel.org
---
 arch/x86/boot/compressed/Makefile | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
index 3962f592633d..ff7894f39e0e 100644
--- a/arch/x86/boot/compressed/Makefile
+++ b/arch/x86/boot/compressed/Makefile
@@ -43,6 +43,8 @@ KBUILD_CFLAGS += -Wno-pointer-sign
 KBUILD_CFLAGS += $(call cc-option,-fmacro-prefix-map=$(srctree)/=)
 KBUILD_CFLAGS += -fno-asynchronous-unwind-tables
 KBUILD_CFLAGS += -D__DISABLE_EXPORTS
+# Disable relocation relaxation in case the link is not PIE.
+KBUILD_CFLAGS += $(call as-option,-Wa$(comma)-mrelax-relocations=no)
 
 KBUILD_AFLAGS  := $(KBUILD_CFLAGS) -D__ASSEMBLY__
 GCOV_PROFILE := n
-- 
2.28.0.681.g6f77f65b4e-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200918201436.2932360-4-samitolvanen%40google.com.
