Return-Path: <clang-built-linux+bncBD5JHS4X5YBBB5ME5OCAMGQEAOHDZVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 59CDF37AD4B
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 19:44:23 +0200 (CEST)
Received: by mail-oo1-xc3b.google.com with SMTP id 126-20020a4a17840000b02901e5e0ccc28asf9582245ooe.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 10:44:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620755062; cv=pass;
        d=google.com; s=arc-20160816;
        b=ByaEQ0nwhHuZltzRrLGInWy64/JcRfbvRXqWkN6/IdC9FI3g22dEaiElTBYXgiuEMy
         bKzwpPcgFyvwtbyNQfgjw92j2KIsyhmCGLX3554xJ7Y8DgOWAeafM27r/v9vBA1oThjZ
         +Z23eYCVCVbnhp2+/AI/L7Ns3YzxzjVrZizCiE+ZgD+7AaCZ074KMZw6k014r8miqw5B
         fkaqWCl57OW81YhKoEmgbp76mSvL1eLFvMaPZcdClrvSisGnlHfTxlNFMKjH5vDXyDY6
         zc+YztiEzLpqRMmKFMuDSMmMgqXYgrqozPVHoT/oK7PiOrr+H8XRwGH417Ew9A1gXXkf
         ml/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=t5CGxyqwp2/ydg3wrINp+ZHMrHSQV4lxgJDdjU/Ck5c=;
        b=eDcogC0jDFiXndUHs3DPq/xdnCwbnEX99MeU/Sr4MmjQ5CPMFr8lzdS6ZphMLqrgdy
         JejB47sRmjBnfXokwvmFrBb7xp5CajVe52FQdHYolrC7PbcMRJX0XReLmpVqPo+4HSHs
         3gnWEA6NQEojIKWfFnbaEbq2lWw7DMXGtD9Ytt0Gid4kKmUiofnDpzgImGrMS2D/deUK
         2sQG/l5mcKLMy5zhcHaYtNBiA08XnwlQZE88NjHJlYjmavbOZyrjqy71a0oIACUH3oaP
         HO/TYs7n/1xBDlkI0qGgHscP0vQ3qrv+6+yMNnmeijIfjiTB3OslSXcUfHRsiCJCIkmn
         20zQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of aik@ozlabs.ru designates 107.174.27.60 as permitted sender) smtp.mailfrom=aik@ozlabs.ru
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t5CGxyqwp2/ydg3wrINp+ZHMrHSQV4lxgJDdjU/Ck5c=;
        b=WX2qp3xjKOZDQLwQqXKuNyAviArSd37R8fqltlASWfA58kcIzXfIhoitlyh5LVqZfY
         ainhbdDvkruPbXekID8rTV2MMWDCcStX/p5CrVFx0EjfIsnoyfqUSWllBV+47wEZTQvE
         OnAFD8TRf9CIAKnI2DSfrzZSQG662+hbwnMwLDyxt/haP+pksvTIgmBQyA9FPGNOWpzR
         YIJAYYdpQc8HLq4tgBwoqqLg/6EEqG1c2I/tr+3xQQnP1xj/p8jv8ZTtgHwrPwmiEcgr
         x33vDT0gRzjCMEL4GkmfHeRHSBVn9MWO32CYzU6kb49dXRlPb4FhlMSV95zqW/ut5uN9
         y29g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t5CGxyqwp2/ydg3wrINp+ZHMrHSQV4lxgJDdjU/Ck5c=;
        b=rjFwvuNRLYSXJfuPEmAEZnoqjYJmORX5ukoZOFTb9R6KehhUs6ELPNn+hwrAww4CyM
         vT3779+uedk3ulARozHE5ybecmI4/H6VX2VVT1L6+0Ljf8pRoTzKKJ7GapatQtIhA9ke
         J/hi2clFAnK2heM1JsrGtuNT7FZvL6nhOzo2JvNEB7n3gtj3Nm6lIRAQOG+jM223PQ7j
         SZnhXLDEHEQ2B3RaC4pCFrrppNYDJ2Tp8wxEt4eE3owgbGQzn+Ikb9Vi5XGSK3toohc4
         XNwzdLWr4HTqq8BvVbuye6lKGF8x7EplVtYRkpeuk2i7rqIA5+gXOuDlprlC8x/WlRBC
         GgMw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5301/P7yGd5xZMl6Iv5yyF1kqh8+OzQG3f4m9epSW2ZpHBtGa47U
	fpwrC4ZdvMJ9knQ5NR0EWJ0=
X-Google-Smtp-Source: ABdhPJxF2r8qh/sgOgPxjn5BHoZuel+sKlxJyzTNZsx4ME7jxWolZyfOQBDM7dMuA1W3BKm3+M8f6g==
X-Received: by 2002:a9d:1b62:: with SMTP id l89mr27213283otl.307.1620755062345;
        Tue, 11 May 2021 10:44:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6c87:: with SMTP id c7ls5397639otr.3.gmail; Tue, 11 May
 2021 10:44:21 -0700 (PDT)
X-Received: by 2002:a9d:5382:: with SMTP id w2mr26641242otg.153.1620755061741;
        Tue, 11 May 2021 10:44:21 -0700 (PDT)
Received: by 2002:aca:4d41:0:b029:1ed:65f6:ffda with SMTP id a62-20020aca4d410000b02901ed65f6ffdamsoib;
        Mon, 10 May 2021 21:48:25 -0700 (PDT)
X-Received: by 2002:a62:6491:0:b029:28e:8c90:6b16 with SMTP id y139-20020a6264910000b029028e8c906b16mr28146755pfb.24.1620708504910;
        Mon, 10 May 2021 21:48:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620708504; cv=none;
        d=google.com; s=arc-20160816;
        b=isBl45hmdHuXHmKNb1ud7rBQ8Us4Gd1DN3FJOkFTBf0/GXzMlFX0Aof2MdG/NpDNhQ
         mwgkEkLbzQJ1enD8/PVVh9XgvNFrdSTNiBSiTmkFuQsjYoMB9wvzEbiQ9doASA5nYKAL
         bUv+O7cGER4NJthh0EcPgmRyFLe+Z7USzDg53dNbRKnWkAHiFC6C0Njy9JYP8Ljptenp
         /zgfihh/b4DIVkA1HzyWCeIXSZDmcc99wkZfN5ANkVhYSQnKlBgG4uR1he1xXZJPuzEP
         mrhN5gCcCxj6lnZNMWXfyxZ+s+phTXbokuzISOfnS47dmtmiRhamWQQ3qpJf870dRYC8
         pVZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=AjBszymjbEsoIrrkZRe86wkH9Q3VdNGvDnfErLwQDcA=;
        b=cqCbA3EQdDLhWuE/oYxZJeKn4zrB+0gjt1UmvZztIAF6Hqr/Es/eBtwy3X48nIgApH
         Rz0iInPeISZsxfM5Z3k+LEnHULTElDgpGJdVY9+EeWTPyKKc8dAZtUmm5akUyFGfVS1S
         pr/3eYe40Wy4I+mXquZeenQtdDl+bLt5wZqfd5Ai0LlkfJaqKfm8D0lbdxFzSRVhhTVk
         EO/2mUs35l/ize7Lm4yy/tK9z/eosYKZx9A8Fh9ztbwJnOOBvFm4nm0eTUanYxNrD4RX
         ENsd2XVK/Dv4+BOuCQAPT4H9S+Tw7s1EMWGL7sNBuWvik/GSeQiyYHH9F8BnIbVt7icS
         4RfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of aik@ozlabs.ru designates 107.174.27.60 as permitted sender) smtp.mailfrom=aik@ozlabs.ru
Received: from ozlabs.ru (ozlabs.ru. [107.174.27.60])
        by gmr-mx.google.com with ESMTP id p8si1330502pls.1.2021.05.10.21.48.24
        for <clang-built-linux@googlegroups.com>;
        Mon, 10 May 2021 21:48:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of aik@ozlabs.ru designates 107.174.27.60 as permitted sender) client-ip=107.174.27.60;
Received: from fstn1-p1.ozlabs.ibm.com. (localhost [IPv6:::1])
	by ozlabs.ru (Postfix) with ESMTP id AB91DAE80042;
	Tue, 11 May 2021 00:48:16 -0400 (EDT)
From: Alexey Kardashevskiy <aik@ozlabs.ru>
To: linuxppc-dev@lists.ozlabs.org
Cc: Alexey Kardashevskiy <aik@ozlabs.ru>,
	Christophe Leroy <christophe.leroy@csgroup.eu>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Michal Marek <michal.lkml@markovi.net>,
	Nathan Chancellor <nathan@kernel.org>,
	Nicholas Piggin <npiggin@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH kernel v2] powerpc/makefile: Do not redefine $(CPP) for preprocessor
Date: Tue, 11 May 2021 14:48:12 +1000
Message-Id: <20210511044812.267965-1-aik@ozlabs.ru>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Original-Sender: aik@ozlabs.ru
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of aik@ozlabs.ru designates 107.174.27.60 as permitted
 sender) smtp.mailfrom=aik@ozlabs.ru
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

The $(CPP) (do only preprocessing) macro is already defined in Makefile.
However POWERPC redefines it and adds $(KBUILD_CFLAGS) which results
in flags duplication. Which is not a big deal by itself except for
the flags which depend on other flags and the compiler checks them
as it parses the command line.

Specifically, scripts/Makefile.build:304 generates ksyms for .S files.
If clang+llvm+sanitizer are enabled, this results in

-emit-llvm-bc -fno-lto -flto -fvisibility=hidden \
 -fsanitize=cfi-mfcall -fno-lto  ...

in the clang command line and triggers error:

clang-13: error: invalid argument '-fsanitize=cfi-mfcall' only allowed with '-flto'

This removes unnecessary CPP redefinition. Which works fine as in most
place KBUILD_CFLAGS is passed to $CPP except
arch/powerpc/kernel/vdso64/vdso(32|64).lds (and probably some others,
not yet detected). To fix vdso, we do:
1. explicitly add -m(big|little)-endian to $CPP
2. (for clang) add $CLANG_FLAGS to $KBUILD_CPPFLAGS as otherwise clang
silently ignores -m(big|little)-endian if the building platform does not
support big endian (such as x86) so --prefix= is required.

While at this, remove some duplication from CPPFLAGS_vdso(32|64)
as cmd_cpp_lds_S has them anyway. It still puzzles me why we need -C
(preserve comments in the preprocessor output) flag here.

Signed-off-by: Alexey Kardashevskiy <aik@ozlabs.ru>
---
Changes:
v2:
* fix KBUILD_CPPFLAGS
* add CLANG_FLAGS to CPPFLAGS
---
 Makefile                            | 1 +
 arch/powerpc/Makefile               | 3 ++-
 arch/powerpc/kernel/vdso32/Makefile | 2 +-
 arch/powerpc/kernel/vdso64/Makefile | 2 +-
 4 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/Makefile b/Makefile
index 72af8e423f11..13acd2183d55 100644
--- a/Makefile
+++ b/Makefile
@@ -591,6 +591,7 @@ CLANG_FLAGS	+= --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
 endif
 CLANG_FLAGS	+= -Werror=unknown-warning-option
 KBUILD_CFLAGS	+= $(CLANG_FLAGS)
+KBUILD_CPPFLAGS	+= $(CLANG_FLAGS)
 KBUILD_AFLAGS	+= $(CLANG_FLAGS)
 export CLANG_FLAGS
 endif
diff --git a/arch/powerpc/Makefile b/arch/powerpc/Makefile
index 3212d076ac6a..306bfd2797ad 100644
--- a/arch/powerpc/Makefile
+++ b/arch/powerpc/Makefile
@@ -76,6 +76,7 @@ endif
 
 ifdef CONFIG_CPU_LITTLE_ENDIAN
 KBUILD_CFLAGS	+= -mlittle-endian
+KBUILD_CPPFLAGS	+= -mlittle-endian
 KBUILD_LDFLAGS	+= -EL
 LDEMULATION	:= lppc
 GNUTARGET	:= powerpcle
@@ -83,6 +84,7 @@ MULTIPLEWORD	:= -mno-multiple
 KBUILD_CFLAGS_MODULE += $(call cc-option,-mno-save-toc-indirect)
 else
 KBUILD_CFLAGS += $(call cc-option,-mbig-endian)
+KBUILD_CPPFLAGS += $(call cc-option,-mbig-endian)
 KBUILD_LDFLAGS	+= -EB
 LDEMULATION	:= ppc
 GNUTARGET	:= powerpc
@@ -208,7 +210,6 @@ KBUILD_CPPFLAGS	+= -I $(srctree)/arch/$(ARCH) $(asinstr)
 KBUILD_AFLAGS	+= $(AFLAGS-y)
 KBUILD_CFLAGS	+= $(call cc-option,-msoft-float)
 KBUILD_CFLAGS	+= -pipe $(CFLAGS-y)
-CPP		= $(CC) -E $(KBUILD_CFLAGS)
 
 CHECKFLAGS	+= -m$(BITS) -D__powerpc__ -D__powerpc$(BITS)__
 ifdef CONFIG_CPU_BIG_ENDIAN
diff --git a/arch/powerpc/kernel/vdso32/Makefile b/arch/powerpc/kernel/vdso32/Makefile
index 7d9a6fee0e3d..ea001c6df1fa 100644
--- a/arch/powerpc/kernel/vdso32/Makefile
+++ b/arch/powerpc/kernel/vdso32/Makefile
@@ -44,7 +44,7 @@ asflags-y := -D__VDSO32__ -s
 
 obj-y += vdso32_wrapper.o
 targets += vdso32.lds
-CPPFLAGS_vdso32.lds += -P -C -Upowerpc
+CPPFLAGS_vdso32.lds += -C
 
 # link rule for the .so file, .lds has to be first
 $(obj)/vdso32.so.dbg: $(src)/vdso32.lds $(obj-vdso32) $(obj)/vgettimeofday.o FORCE
diff --git a/arch/powerpc/kernel/vdso64/Makefile b/arch/powerpc/kernel/vdso64/Makefile
index 2813e3f98db6..07eadba48c7a 100644
--- a/arch/powerpc/kernel/vdso64/Makefile
+++ b/arch/powerpc/kernel/vdso64/Makefile
@@ -30,7 +30,7 @@ ccflags-y := -shared -fno-common -fno-builtin -nostdlib \
 asflags-y := -D__VDSO64__ -s
 
 targets += vdso64.lds
-CPPFLAGS_vdso64.lds += -P -C -U$(ARCH)
+CPPFLAGS_vdso64.lds += -C
 
 # link rule for the .so file, .lds has to be first
 $(obj)/vdso64.so.dbg: $(src)/vdso64.lds $(obj-vdso64) $(obj)/vgettimeofday.o FORCE
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210511044812.267965-1-aik%40ozlabs.ru.
