Return-Path: <clang-built-linux+bncBCIO53XE7YHBBONOZP4QKGQENCR62WY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B06241F55
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 Aug 2020 19:36:58 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id z10sf10173789qvm.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 Aug 2020 10:36:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597167417; cv=pass;
        d=google.com; s=arc-20160816;
        b=D1yf5dKgGyC5JdFPbnnCVZDDEdp1UBbwMdJc6ERPcb1DjnKcz1tGym07sgz4bVjej7
         y4aPS0LOGAbxTsvrygsYoBSTgCxZA6ebgWQHG3F8YKhK2GH9V78mmxkmUs1YD7lpj6uC
         7J5omuPYrnWLxfIIu9IS38hy11ue6LuvP0ZeC43p5ZH9jj8wEAoBciGVwhtzkEpaqYsJ
         qmnyU8lU/SjyvRTshFRyAscLAg3w2l1hPhPQenItWkzz63gCFUWMA/biPa5tXuID7e/s
         BbNF9TyJUeElQkTn78xuh/nL7UOBQNcsR/sl7yeDBg1ShzU6QQCrQWr7ZeBhYeRk87hy
         upJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=x2RiFzcrzZfGDOyy7ZJ9EZUGoqntq6gaMRq/112b1hg=;
        b=iz6aOT/P2oNgtjGSmpvEJYcLgZxl2UIBLjPrREQhuDDMXMJz5L80z+q+LHK7x5LVue
         IT863GipeAptMM4mvkk8fsqxgIrOmSMc6otoksvaSoVkrIIZ03WX5ywwSaCkfRZZ3TpR
         dFqy/SRcmSJLE7BZI1MSHPBPmOl6TVj59kJWHsdKW68EB5TYDAnUKE0RNQcc+7Cepdqt
         ivH5qp2aBfv3DFTGt08NGf18pu6UXOE572197BQNnGwFASgBb3De6Fgj2EJFttWlQry1
         en0GbBcd2j8GyZlOahxo5UBL3/O2HcINaVGS66notjl3d+YHqyFsvN6y9JFyTDBid2BD
         HSMw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.66 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x2RiFzcrzZfGDOyy7ZJ9EZUGoqntq6gaMRq/112b1hg=;
        b=Adc1Zb4GPJRMyhSXbFaZPBCcVnSBhTvvgfaThEtJLTGBs4a/NdDf54wpd671RZOGUN
         QLfANExfYNbenuZG0tymo+zCs9WmwASpvM1Vpy+5rXmPTISfSF5lCS80mecRKtY3r2A1
         fTqxdwWMYChhsJEDPNkW1YzKa4JWICb5G06IqGiv2WRcGNvT5UlLWMcg69BJnohE8SHk
         uPFHWrbxaoKS251bje6Jj17MB7Tlw88f6N/BxgHKKVtzxMU3UUg4Ddq3Nr7f+4c9AcrS
         dAIv57sMFRMbvXVliHh+v/ouAtOkxPg893BF3bHqxY0d5LgMqqQe4SCRjPNQ2MBG8UFf
         WTNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x2RiFzcrzZfGDOyy7ZJ9EZUGoqntq6gaMRq/112b1hg=;
        b=Os9T54trZ6nahVYaeQLPW2SaaXP3gLWD84I3AY+I0tTx4BMmcHgmaWTwFxUdX32SXf
         1xPfDt1Y55N+/arCkp8qXcUvvtpBmMrfSllTWJ1s9IJWMQB5q+BkI9x8TQMvgxTfxXh8
         kkVBcsYvC9KGsCFgPiUmzFdt/nDnR7dU8W49kBq8IL0WUeCRgiEfgCawVWsCaX3DtwNF
         JaWpnYFZFpc6WtgVPFiVfSUWYOxs2Iw8+ZVA89Sm7LQODgD9ro+XhEMnGj3ly31Lq6Ro
         UKt92a+aLtx28QcmJ1ef9wh624t2s8Z3rMWNluXWUKPqLCCZ23aNWnKoBwaTLHFmVUJs
         mOKw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531B58VF5cGJLLmMgh6ZdGK1BcrbTq0dQtygRRnjYM1+ya33csqV
	V650MYidUs+5Ob7h/w3Rl/k=
X-Google-Smtp-Source: ABdhPJzAudbz+rKSSIdGM4gHT9nAsChyFaln+QgcAHvIGD5VFDJLGKXBOGTp2avx22/AjPOAFvoB7g==
X-Received: by 2002:a05:620a:227:: with SMTP id u7mr2229578qkm.75.1597167417493;
        Tue, 11 Aug 2020 10:36:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:120e:: with SMTP id u14ls10046199qkj.3.gmail; Tue,
 11 Aug 2020 10:36:57 -0700 (PDT)
X-Received: by 2002:a37:7407:: with SMTP id p7mr2266877qkc.350.1597167417065;
        Tue, 11 Aug 2020 10:36:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597167417; cv=none;
        d=google.com; s=arc-20160816;
        b=ACpP7FfHBCMMCq0EdY8YZdqzq6ARuxNKJe/2JmqKiVvqhEeKx9wQGQ9xRia4cue3wp
         DXmbMI3G69YNMtbb/I6byCvjRpyjtZOP7d7oZF1zES9tHXVTmyBUMP2SVS1Mhez3GyHI
         QIvPZNI99OZLwHV3/tmGfVfObEPGnqpSoD38P9WSLE1HFDoTD7CoeJsX0MHakME6bkv5
         VVOgeKiAsp3qx0gI2AOZ22tVkgg8bWTygdqJKCj5HRiVYHlRmuf1zExL/2HhMD611q5g
         6pgSgdjJo5QIDs8lj2+AfvAZoqxF+FlJJkODfDlPjBFN6Bm2BZU+nTznyDFkQc04u4eu
         qDBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=2HnMUolNEq5cXPKXr7ZP+lVltLaJ656X7idvYxtYJ7A=;
        b=NzRNIZAZmmxAWT3uSkuIc/lXHG/p+kNJDkFC4vk0WhyPvrHMmOyzw/VadknccR/gNr
         GvShlxjLS8puzuUB0yRN5BJZu8KQqJ9hF97LsLGfanJZSt7CPNKlavq7q9mGGnSD9Dcw
         kVTf/ZFEZWBAqYVUdnh2D8zzWf1n7tH9o0bChj3GFJP+tBw18Sj2eEhYlg1ylLBvjj3o
         UjgROXsJ358ljTSJIdg0jPf7RS9gKrKk2CcF27IaEfVoShfuyAWvyw/lKj7t/modHRH1
         ySlsbC6KEQWBKUrjGti0EnLLfDGHaDq5BCmNsjsBjW70lF0yDNOz5ydwJtzodHvv6fPu
         QlMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.66 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-f66.google.com (mail-qv1-f66.google.com. [209.85.219.66])
        by gmr-mx.google.com with ESMTPS id y14si1175983qka.6.2020.08.11.10.36.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Aug 2020 10:36:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.66 as permitted sender) client-ip=209.85.219.66;
Received: by mail-qv1-f66.google.com with SMTP id l13so6348947qvt.10
        for <clang-built-linux@googlegroups.com>; Tue, 11 Aug 2020 10:36:57 -0700 (PDT)
X-Received: by 2002:ad4:450e:: with SMTP id k14mr2315086qvu.211.1597167416620;
        Tue, 11 Aug 2020 10:36:56 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id q68sm17305993qke.123.2020.08.11.10.36.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Aug 2020 10:36:56 -0700 (PDT)
From: Arvind Sankar <nivedita@alum.mit.edu>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	Fangrui Song <maskray@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	e5ten.arch@gmail.com,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Ard Biesheuvel <ardb@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	LKML <linux-kernel@vger.kernel.org>,
	stable@vger.kernel.org
Subject: [PATCH] x86/boot/compressed: Disable relocation relaxation for non-pie link
Date: Tue, 11 Aug 2020 13:36:55 -0400
Message-Id: <20200811173655.1162093-1-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <CAKwvOd=ypa8xE-kaDa7XtzPsBH8=Xu_pZj2rnWaeawNs=3dDkw@mail.gmail.com>
References: <CAKwvOd=ypa8xE-kaDa7XtzPsBH8=Xu_pZj2rnWaeawNs=3dDkw@mail.gmail.com>
MIME-Version: 1.0
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.219.66 as
 permitted sender) smtp.mailfrom=niveditas98@gmail.com
Content-Type: text/plain; charset="UTF-8"
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
the -mrelax-relocations=no option.

[0] https://gitlab.com/x86-psABIs/x86-64-ABI/-/blob/master/x86-64-ABI/linker-optimization.tex#L65
[1] https://lore.kernel.org/lkml/20200807194100.3570838-1-ndesaulniers@google.com/
[2] https://github.com/ClangBuiltLinux/linux/issues/1121
[3] https://reviews.llvm.org/rGc41a18cf61790fc898dcda1055c3efbf442c14c0
[4] https://lore.kernel.org/lkml/20200731202738.2577854-1-nivedita@alum.mit.edu/

Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
Reported-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Cc: stable@vger.kernel.org # 4.19.x
---
 arch/x86/boot/compressed/Makefile | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
index 3962f592633d..c5449bea58ec 100644
--- a/arch/x86/boot/compressed/Makefile
+++ b/arch/x86/boot/compressed/Makefile
@@ -62,6 +62,12 @@ KBUILD_LDFLAGS += $(shell $(LD) --help 2>&1 | grep -q "\-z noreloc-overflow" \
 endif
 LDFLAGS_vmlinux := -T
 
+# Disable relocation relaxation if not linking as PIE
+ifeq ($(filter -pie,$(KBUILD_LDFLAGS)),)
+KBUILD_CFLAGS += $(call as-option, -Wa$(comma)-mrelax-relocations=no)
+KBUILD_AFLAGS += $(call as-option, -Wa$(comma)-mrelax-relocations=no)
+endif
+
 hostprogs	:= mkpiggy
 HOST_EXTRACFLAGS += -I$(srctree)/tools/include
 
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200811173655.1162093-1-nivedita%40alum.mit.edu.
