Return-Path: <clang-built-linux+bncBDYJPJO25UGBBY462CEAMGQEH5HLT5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id D00763E9724
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Aug 2021 19:56:53 +0200 (CEST)
Received: by mail-pl1-x63a.google.com with SMTP id f9-20020a1709028609b0290128bcba6be7sf1871078plo.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Aug 2021 10:56:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628704612; cv=pass;
        d=google.com; s=arc-20160816;
        b=X1OWIaredVM30Ewyb6qY5SnZIzbjQJ3ofkV98iokP8oGuy53hJUpw5pPws29PUqhc/
         3pevJcoccmStv75leN3ZNQRkWfI4F0DRXekUE5xjClwtdwUlHRxOS3szml4BoKWoH1gK
         h9NW8y3Qyiy9xOiqO/FQ5Jg6ERCdgLQMuwp+fseyPJEYJf4aNObQ4A2+jWtKFgKPHC7C
         Fn0RcjnzRc92TExyCjdi8ZT5bUY0pX53muJF7jER6uMTWxSQKju6ewJnvlxYnZWtwhTU
         DWNF/Tz5lvnVXxIVHI1wdvActcIZap80COrQwpj1q3wGDT0RdeheHl5cixWEWyQEYw7d
         VV9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=4mgDS5ddvOnaiiM6DltQ9J0sFow4VzMWxOsXvOIP5A4=;
        b=wXGI0aI6VYdabhL4es+QEYw8Rv4tXpSbiyyfN8Jx0OC+/ArR6HMbBoPE7/VVtEORR3
         1YxINrFhSsfZ00SS5erMJCsqQFZiVAWgEOywXb6L8687dDQKzzC7xcYDjnk6B7+Vt5pj
         YLOHgVdnZYehuQDZ96pn7Dy4Gp4I3uf3JPqc7z1v7FQkD/NmttFxlXrs0ZS6IwR5K97R
         /60FWoYzHCmbmctsPARQO7ISQHlfgcDAMPAhgF/+r8N1+PlWti0zQwh65Fz5KD8bNZi0
         FWhl+XOA8fIMyjAZbZD3QWuDp6Ymb4I21iNw+zLV1w2M7ghcdyUXYMrs416ySHjpuHoj
         bZhg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RsN8sSQJ;
       spf=pass (google.com: domain of 3yg8uyqwkan8oeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3Yg8UYQwKAN8OEFTBVMOJFSTHPPHMF.DPN@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=4mgDS5ddvOnaiiM6DltQ9J0sFow4VzMWxOsXvOIP5A4=;
        b=hjcpMQVbypJxS5BuBRL3DwRrtZj5/iBGb5AsYWc8Yi+5zvwxGbTWIZjnLouWedd/W6
         mNqv1xyDleEYpErcpKgHLikibnXiQbQOh8puPspteCYF4j+bx0fEiEKWMfdfIGW8Rjc/
         78u374+ud02PFMxhAIZ3iQormtrvMFq4uoPW6SLiat9RxmesqCJ5q4bbMqn8bl1/W2WY
         QhRbBmHa1HmXsg7egHqcDdaT1VniLj481VdwOfPrC6UBP9KLdp4OYDXOCgoOOKaWTNAZ
         rCgrsq3CjWNBL7AzuVas3jTd4Yrg99dhQxbFOYOdAnKndZsX03uJdprm7zAfJr5zu9Jc
         XTHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4mgDS5ddvOnaiiM6DltQ9J0sFow4VzMWxOsXvOIP5A4=;
        b=n1qg8luSdtG8OEnOsvv4DUUsXKbUst5dv2q0GZnPV4bIfkkxedPrL4rRQpS0+DhD+1
         91Js198IuOv0YUbvjtWQ1YxGxKMERzNP5e17AaNLacTTrH+Y519V6qfOONgDwbWp3h5l
         9YjeuTnaDRNOf6+M8ajOKlvo2FGraLfMDja/u3FcvDV0rOgjECvJbuapwqJg+5iyLnnO
         VLKB5w5dBCBqLRtF//eDPI4dAu259Oo4I7el3+OqxWbP7H0zbVYKv7sRCoq4Jma98MD0
         qCSGo1ALpPCTi4cler2w24nFsePfHE95zSyF1gle468kltbEz3MpKu+SaEDbResID5sO
         k/Ww==
X-Gm-Message-State: AOAM532Ik+HetGYuOAz4k4oaUNJ+Xzud6sFR716LH30zw+6L5w1Ky9zJ
	GxhQhbRrJEk7l0glFHa+bRA=
X-Google-Smtp-Source: ABdhPJwTmVxdU+axT6DreyeKMy10Mu49d5mhrdJCohA2uPdS3md/REbLR0ZhhxbTWtchs1pjMP1W6g==
X-Received: by 2002:a62:7dcb:0:b029:3af:8a46:a7e4 with SMTP id y194-20020a627dcb0000b02903af8a46a7e4mr30196732pfc.20.1628704611969;
        Wed, 11 Aug 2021 10:56:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:494e:: with SMTP id q14ls1330744pgs.10.gmail; Wed, 11
 Aug 2021 10:56:51 -0700 (PDT)
X-Received: by 2002:a63:5511:: with SMTP id j17mr437869pgb.191.1628704611438;
        Wed, 11 Aug 2021 10:56:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628704611; cv=none;
        d=google.com; s=arc-20160816;
        b=NDSUezmkUCyixvPLm2/1V6xT7xF14k+HpalLYe/nXvOpdBv5WloFaD5AvZNXo93JlG
         +0D5iK6zQoSDD0LOTQfv3QVcM2kv+KN0+VGjkNPQZOMNxR38qhtO2bJeTlXtgh4toaG5
         zoIh02uq8SBRPm6zgW/sXA2p5vXRBe+PWi1GLRSP+tYjWL9bEgbM2slBvokWGOghYWdx
         xP21bSwsDoilQyn09p9w+HFvc/tMZ40AanUF5QO30e+KAWmZ43qvylRfGE0OPMmFGCMN
         TMRCBzEMR+8emCGcG8H+jEhI06M/PSMK2ivQjiqZmEfNd8PhUk0+EJUSVFHukkSo4vTe
         SZ8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=PhXAHXc9CwVkcIo7k954JGnQExPWJGWFOTiPMY91P7I=;
        b=h8LK6pMlr8sZ1ZArBfERqc5y5jWfzYls3f72c4KocUNoeb2PbzAJbdjHonGRLPywLO
         0yp66tPKde+OW04WxXm/ulu4E0i/toCFfiiSKetwfSm/BTYQnJh8g7H3PIQ/uEM9wX74
         n8x6xFy6R9Y1ZzCgbDFmnMJiPeoDWK/YwOZFkPiJBbmSoPAiXLY/BzMRLEP+dX4D+97I
         /xnRE1sXuKOh8oRF8fF3eGJW+vEStZlnRWopEo3/x7ZvD99o6hUrZibImqvSlAbKRv+M
         IZa+3h8ea/qyglrjOwHxSQg2BolSWSS9fpRfhZEQdw1RLNgvgAp5pTFVOEtZmeyJaTtg
         D5ug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RsN8sSQJ;
       spf=pass (google.com: domain of 3yg8uyqwkan8oeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3Yg8UYQwKAN8OEFTBVMOJFSTHPPHMF.DPN@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id r9si7903plo.0.2021.08.11.10.56.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Aug 2021 10:56:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3yg8uyqwkan8oeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id q11-20020a05620a05abb02903ca17a8eef8so1827004qkq.10
        for <clang-built-linux@googlegroups.com>; Wed, 11 Aug 2021 10:56:51 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:5727:426e:4723:8bf0])
 (user=ndesaulniers job=sendgmr) by 2002:ad4:58ed:: with SMTP id
 di13mr24629016qvb.32.1628704610638; Wed, 11 Aug 2021 10:56:50 -0700 (PDT)
Date: Wed, 11 Aug 2021 10:56:47 -0700
Message-Id: <20210811175647.3851629-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.32.0.605.g8dce9f2422-goog
Subject: [PATCH] x86/build: remove stale cc-option checks
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, x86@kernel.org, 
	"H. Peter Anvin" <hpa@zytor.com>, Nathan Chancellor <nathan@kernel.org>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=RsN8sSQJ;       spf=pass
 (google.com: domain of 3yg8uyqwkan8oeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3Yg8UYQwKAN8OEFTBVMOJFSTHPPHMF.DPN@flex--ndesaulniers.bounces.google.com;
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

cc-option, __cc-option, cc-option-yn, and cc-disable-warning all invoke
the compiler during build time, and can slow down the build when these
checks become stale for our supported compilers, whose minimally
supported versions increases over time. See
Documentation/process/changes.rst for the current supported minimal
versions (GCC 4.9+, clang 10.0.1+). Compiler version support for these
flags may be verified on godbolt.org.

The following flags are supported by all supported versions of GCC and
Clang. Remove their cc-option, __cc-option, and cc-option-yn tests.
* -Wno-address-of-packed-member
* -mno-avx
* -m32
* -mno-80387
* -march=k8
* -march=nocona
* -march=core2
* -march=atom
* -mtune=generic
* -mfentry

-mpreferred-stack-boundary= is specific to GCC, while
-mstack-alignment= is specific to Clang. Rather than test for this three
times via cc-option and __cc-option, rely on CONFIG_CC_IS_* from
Kconfig.

Link: https://github.com/ClangBuiltLinux/linux/issues/1436
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/x86/Makefile | 51 +++++++++++++++++------------------------------
 1 file changed, 18 insertions(+), 33 deletions(-)

diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index 0fa7dc73b5d8..6de2985ba1a5 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -14,10 +14,13 @@ endif
 
 # For gcc stack alignment is specified with -mpreferred-stack-boundary,
 # clang has the option -mstack-alignment for that purpose.
+ifdef CONFIG_CC_IS_GCC
 ifneq ($(call cc-option, -mpreferred-stack-boundary=4),)
       cc_stack_align4 := -mpreferred-stack-boundary=2
       cc_stack_align8 := -mpreferred-stack-boundary=3
-else ifneq ($(call cc-option, -mstack-alignment=16),)
+endif
+endif
+ifdef CONFIG_CC_IS_CLANG
       cc_stack_align4 := -mstack-alignment=4
       cc_stack_align8 := -mstack-alignment=8
 endif
@@ -31,8 +34,8 @@ REALMODE_CFLAGS	:= -m16 -g -Os -DDISABLE_BRANCH_PROFILING \
 
 REALMODE_CFLAGS += -ffreestanding
 REALMODE_CFLAGS += -fno-stack-protector
-REALMODE_CFLAGS += $(call __cc-option, $(CC), $(REALMODE_CFLAGS), -Wno-address-of-packed-member)
-REALMODE_CFLAGS += $(call __cc-option, $(CC), $(REALMODE_CFLAGS), $(cc_stack_align4))
+REALMODE_CFLAGS += -Wno-address-of-packed-member
+REALMODE_CFLAGS += $(cc_stack_align4)
 REALMODE_CFLAGS += $(CLANG_FLAGS)
 export REALMODE_CFLAGS
 
@@ -48,8 +51,7 @@ export BITS
 #
 #    https://gcc.gnu.org/bugzilla/show_bug.cgi?id=53383
 #
-KBUILD_CFLAGS += -mno-sse -mno-mmx -mno-sse2 -mno-3dnow
-KBUILD_CFLAGS += $(call cc-option,-mno-avx,)
+KBUILD_CFLAGS += -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx
 
 # Intel CET isn't enabled in the kernel
 KBUILD_CFLAGS += $(call cc-option,-fcf-protection=none)
@@ -59,9 +61,8 @@ ifeq ($(CONFIG_X86_32),y)
         UTS_MACHINE := i386
         CHECKFLAGS += -D__i386__
 
-        biarch := $(call cc-option,-m32)
-        KBUILD_AFLAGS += $(biarch)
-        KBUILD_CFLAGS += $(biarch)
+        KBUILD_AFLAGS += -m32
+        KBUILD_CFLAGS += -m32
 
         KBUILD_CFLAGS += -msoft-float -mregparm=3 -freg-struct-return
 
@@ -72,7 +73,7 @@ ifeq ($(CONFIG_X86_32),y)
         # Align the stack to the register width instead of using the default
         # alignment of 16 bytes. This reduces stack usage and the number of
         # alignment instructions.
-        KBUILD_CFLAGS += $(call cc-option,$(cc_stack_align4))
+        KBUILD_CFLAGS += $(cc_stack_align4)
 
         # CPU-specific tuning. Anything which can be shared with UML should go here.
         include $(srctree)/arch/x86/Makefile_32.cpu
@@ -93,7 +94,6 @@ else
         UTS_MACHINE := x86_64
         CHECKFLAGS += -D__x86_64__
 
-        biarch := -m64
         KBUILD_AFLAGS += -m64
         KBUILD_CFLAGS += -m64
 
@@ -104,7 +104,7 @@ else
         KBUILD_CFLAGS += $(call cc-option,-falign-loops=1)
 
         # Don't autogenerate traditional x87 instructions
-        KBUILD_CFLAGS += $(call cc-option,-mno-80387)
+        KBUILD_CFLAGS += -mno-80387
         KBUILD_CFLAGS += $(call cc-option,-mno-fp-ret-in-387)
 
         # By default gcc and clang use a stack alignment of 16 bytes for x86.
@@ -114,20 +114,17 @@ else
         # default alignment which keep the stack *mis*aligned.
         # Furthermore an alignment to the register width reduces stack usage
         # and the number of alignment instructions.
-        KBUILD_CFLAGS += $(call cc-option,$(cc_stack_align8))
+        KBUILD_CFLAGS += $(cc_stack_align8)
 
 	# Use -mskip-rax-setup if supported.
 	KBUILD_CFLAGS += $(call cc-option,-mskip-rax-setup)
 
         # FIXME - should be integrated in Makefile.cpu (Makefile_32.cpu)
-        cflags-$(CONFIG_MK8) += $(call cc-option,-march=k8)
-        cflags-$(CONFIG_MPSC) += $(call cc-option,-march=nocona)
-
-        cflags-$(CONFIG_MCORE2) += \
-                $(call cc-option,-march=core2,$(call cc-option,-mtune=generic))
-	cflags-$(CONFIG_MATOM) += $(call cc-option,-march=atom) \
-		$(call cc-option,-mtune=atom,$(call cc-option,-mtune=generic))
-        cflags-$(CONFIG_GENERIC_CPU) += $(call cc-option,-mtune=generic)
+        cflags-$(CONFIG_MK8)		+= -march=k8
+        cflags-$(CONFIG_MPSC)		+= -march=nocona
+        cflags-$(CONFIG_MCORE2)		+= -march=core2
+        cflags-$(CONFIG_MATOM)		+= -march=atom
+        cflags-$(CONFIG_GENERIC_CPU)	+= -mtune=generic
         KBUILD_CFLAGS += $(cflags-y)
 
         KBUILD_CFLAGS += -mno-red-zone
@@ -158,18 +155,6 @@ export CONFIG_X86_X32_ABI
 ifdef CONFIG_FUNCTION_GRAPH_TRACER
   ifndef CONFIG_HAVE_FENTRY
 	ACCUMULATE_OUTGOING_ARGS := 1
-  else
-    ifeq ($(call cc-option-yn, -mfentry), n)
-	ACCUMULATE_OUTGOING_ARGS := 1
-
-	# GCC ignores '-maccumulate-outgoing-args' when used with '-Os'.
-	# If '-Os' is enabled, disable it and print a warning.
-        ifdef CONFIG_CC_OPTIMIZE_FOR_SIZE
-          undefine CONFIG_CC_OPTIMIZE_FOR_SIZE
-          $(warning Disabling CONFIG_CC_OPTIMIZE_FOR_SIZE.  Your compiler does not have -mfentry so you cannot optimize for size with CONFIG_FUNCTION_GRAPH_TRACER.)
-        endif
-
-    endif
   endif
 endif
 
@@ -193,7 +178,7 @@ ifdef CONFIG_RETPOLINE
   # only been fixed starting from gcc stable version 8.4.0 and
   # onwards, but not for older ones. See gcc bug #86952.
   ifndef CONFIG_CC_IS_CLANG
-    KBUILD_CFLAGS += $(call cc-option,-fno-jump-tables)
+    KBUILD_CFLAGS += -fno-jump-tables
   endif
 endif
 
-- 
2.32.0.605.g8dce9f2422-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210811175647.3851629-1-ndesaulniers%40google.com.
