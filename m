Return-Path: <clang-built-linux+bncBC2ORX645YPRBANFYX5AKGQE3AKRXWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B6925CA40
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 22:30:59 +0200 (CEST)
Received: by mail-pf1-x439.google.com with SMTP id z16sf2691657pfq.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 13:30:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599165058; cv=pass;
        d=google.com; s=arc-20160816;
        b=rEbP7EqVSWb7oRapZspTuh/KZwyaEJRqAhvdkSjM62/f/7prHM4QXPhAvCs7GomWXz
         oQPYEXAsKL9jsKsIyYs455+SUnY3hSKoPv2D9ovP+4ndJwWN+FawavVEInfmu791zAM6
         Y532E4lxrSTrtbm5yz+wnvZqSDe0nQyvVmoAf8Dv2jYDIP1+zjiEHV875ZC29AGHRuGX
         LBqyxgdHmF9qN8L9Xh4YfrbPy3Jb1FpsXhoctjL4JvCQzDZdbmYbngNFKmXx/8vdqHvK
         MYbvIxMFeQS40JXGUxug0qBFcZ8KJwmrqvMNYxIEbQjchIEkZOimMj0uenzYR7A/G8m0
         EpVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=+Rz9n1x0DSlXxXHOMzTxs50Q/G2FKEgjf4DRtnyXvGE=;
        b=WmQEsFE0fYw6poIHFa+m5ZVqllJDXIT++zYrRWPvn+8E0YUs4CnoFvh0Uabn+1ZG74
         sQt5BZmDxv3q0UbaaGCOtEie1teC00zNZHNwwmyaQNJix2gGcUEDmkipVAFCFi++if6U
         DQgjrC0/3+x5Uimi+z8TxGEmiDQtGQwddRnMCMqazosE01HYw0/NsCiiLRqNycriNFbh
         XRdw55Kv1dplTtce17rmMxNgf7EkaRGRyMbe3GWpIda8lD+LM+erdAfp1glehiLcsSQE
         th2uzyGdO3D5+TOmMf1Fkue9c1i/7gAQHbMHPrxohkERiIIArnVyOG8U8U0FH8/JKqNN
         jOpA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BAqToBhe;
       spf=pass (google.com: domain of 3gfjrxwwkagsbjvrcxuejwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3gFJRXwwKAGsbJVRcXUeJWNWPXXPUN.LXV@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+Rz9n1x0DSlXxXHOMzTxs50Q/G2FKEgjf4DRtnyXvGE=;
        b=OgZkHEiYpeLAQ8u+2kyvdMFT2+J8MdN2H/Bipa+Gcu8il6+eUaRh2vxbfbJJBNWy3u
         iKqgQMV1OlSWF+JB6Po7eB0AEUTqbPkIahkS5ax0WvziGpCQhPwe1G2NYaGbYgbCpYAM
         pFuZafBFK8QoZIrFUlQecXM6PJwSdtsa+eo7tOw84nmpbY/L9pOyN5HfoJV3YIwxt4C9
         lY2xDJkCbtOQg/PTI4VxyEVIefDsjEj6dMKnX4IuQGrjAqjRJBrcTfIKdxU9Um/324oR
         eDDcOtZTE0BmQJAl/AhHF2IR774GaqRlMD3Skb8nq+vvjWZvk42T8hsIF5KpLySeUgbj
         Zwuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+Rz9n1x0DSlXxXHOMzTxs50Q/G2FKEgjf4DRtnyXvGE=;
        b=YermAbsWR0NeMTUf+bGjPY1dBWCiHmfF+FWqXF7jKjj9KkFq4EJb70w4DpNZjKG2LC
         VV2AWZcsIUUxB26ShRbEvefqouJjbhf/m8A54CPaRI90Vlu49ZjXeo2mwVD+yqvb89wh
         t7qiBxIWvfA/Z3uaNdCf+lOwRaYA/v+v9Eic98PSHm6c0e47+63mP1mJiOpTaDtMJHmE
         uBvO8Bfkinl2sm1KwAs+nc4ehjWGVDgZoZvl7dBSYrXAOVa40ng5zbBmVaxPsfulDTmt
         YK3Nl5pSfzjeeL46gwR2hfwFuZZBxSmXKFSbePXzuiTvx09vcdr1goP8f1QCBeIgT17c
         eDyg==
X-Gm-Message-State: AOAM533Ar3l8lKYafghodHd8Ktl8U59Eb+iTx1+aWsq43BddmxK+gj50
	uXXrS8+E3jl4tGHJ9EOYXJo=
X-Google-Smtp-Source: ABdhPJzstlAxcdBXzO7iK7EAVhIFG7/ccN+UEf6+nGz4KoAGN62JSlho5v4Pu5pDjSi5dNexBJVV4Q==
X-Received: by 2002:a17:90a:d703:: with SMTP id y3mr4940630pju.183.1599165058046;
        Thu, 03 Sep 2020 13:30:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7b90:: with SMTP id w16ls3506550pll.5.gmail; Thu, 03
 Sep 2020 13:30:57 -0700 (PDT)
X-Received: by 2002:a17:90a:f998:: with SMTP id cq24mr5045745pjb.9.1599165057497;
        Thu, 03 Sep 2020 13:30:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599165057; cv=none;
        d=google.com; s=arc-20160816;
        b=BCwYos/wdt7BuqI2+lFmZYq7N/QjkwrHVo3nCJZBoe9H3lqmz8qZ5KP2ZqvahxKNhG
         1cWKmso5rygQdzpoQ30hXUSKXs8C/wffCyAtsevTSeNy6ZnwsGH80a90o3EaTuLyayof
         Fi3lwdRyirjMaIISleMvveZcqpGckVxzVn7sVUTRc/uBMo7W/WCcy+/mBfw1/NjCtitk
         aK875V67OFh2+qgex694YplJHGG5hLlsnI949Qhjy960Opj4F5d/XV23PL0WI8lRcRBN
         XeYjyprfKEbkn2GZEMrNdMXzfVAqGXTFnVYlBxsHo2dR/gQ3nI4ToSuCwbPkJwl2m9xZ
         womg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=mDVvkNnwHRt+Li8nefuHvmgwU3VCsthhxmclA+Biet0=;
        b=ID0B8C01Xkog+uG3EyoBB6qcIxQxvo6FuLLgf/rf8Konh399HgR467+IRXqNGHL/HN
         utqgbP8CPj6Q0CUfEMf9MCsFCSSgh4h0xYWTMYlRg2wlGPcMtOEKtbaudFB1BSIdz3bl
         VWhjqajeuMzDJoDhgqFVo38US2o4vV1w3D7USAiXw6CE8EWC7hGI25y4rCvq4iYWGtI6
         qmXX6YTpBnqI2fHgI5fxtLMXG+As+JcxsySUM6iv0p1INrGiKnPxE2FZAROlwjYTvpl2
         fYiXftSjUnC5ruSezYorcjd/SGra6+YOczCRb1vQPk7gZ9vInAJe3hu6SbaUKeOyq2tW
         2BuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BAqToBhe;
       spf=pass (google.com: domain of 3gfjrxwwkagsbjvrcxuejwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3gFJRXwwKAGsbJVRcXUeJWNWPXXPUN.LXV@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id v17si279212pjy.3.2020.09.03.13.30.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 13:30:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3gfjrxwwkagsbjvrcxuejwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id e10so2270088qkg.23
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 13:30:57 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a05:6214:292:: with SMTP id
 l18mr3616010qvv.3.1599165056576; Thu, 03 Sep 2020 13:30:56 -0700 (PDT)
Date: Thu,  3 Sep 2020 13:30:26 -0700
In-Reply-To: <20200903203053.3411268-1-samitolvanen@google.com>
Message-Id: <20200903203053.3411268-2-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com> <20200903203053.3411268-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.526.ge36021eeef-goog
Subject: [PATCH v2 01/28] x86/boot/compressed: Disable relocation relaxation
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
 header.i=@google.com header.s=20161025 header.b=BAqToBhe;       spf=pass
 (google.com: domain of 3gfjrxwwkagsbjvrcxuejwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3gFJRXwwKAGsbJVRcXUeJWNWPXXPUN.LXV@flex--samitolvanen.bounces.google.com;
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
2.28.0.402.g5ffc5be6b7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200903203053.3411268-2-samitolvanen%40google.com.
