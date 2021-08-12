Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQGV2WEAMGQEVLHFLCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id DB0003EAA57
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Aug 2021 20:38:57 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id 5-20020a170902ee45b029012d3a69c6c5sf4334155plo.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Aug 2021 11:38:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628793536; cv=pass;
        d=google.com; s=arc-20160816;
        b=GGPkUV1KUWHNGyDA08STzOz6nq4dC8ItkHz2kN4EE7NzBy6k/yIBv1k/h++qIMO5KL
         HjDMKQjHdHlJJzMPZFiYR+7T6exgSTNDE04J8xa0ydC+RjMT2pVv0iWPnAr+OMySF4+p
         HEYZoIEM6UjAEqzu6ubmTlHijEFq27ce29Sdi43B9YzsaXvYz6++dO2gMGwG/BkUKanz
         vSFJiqs4gVEj/NW/6K5quiNoM/jgi3Kqso0ZCFZhls+nunsgxrsbbrcbW8AoAaXwXZEi
         pCf6huta387dWYScRRqx9seqDCfkMqtiiKB62Pfs3tMJlxtfS39F0U0VLZ2+zPxyi4hx
         Snlw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=Htgt+6+vv0Okb9Drpu0BnDZc24rJpx7SOExMieNhX44=;
        b=ibLh6eW+YeTEHIXS8V65Gxealn2hW1YbaGVRRdi/Y4X7aoJAgBQm+W1VnaNg3XS8D7
         TQ4aaIbdoFSGvJlfAwS0ccseHu4mfjm8J2kRu5h6HIua4NKQHtUHoo2BhXGQgvr38TVM
         ByT07HvGjTkbqp28wVgRCUYQGnPvUsnZyw23zBhbnvFK7rxQ2AfcfP9YkU7Uu6FHOSmh
         yw3aHECnorIsokiS3/6LMLDrw707hekDbyM5LZH2k0sDv0jMfuy2kkVl8dc83bEuhQBQ
         VpeXg2wG4XiJ55kZ4ccfhvzFan+owr/uaWf2rC4+9BLyiQnXvBr05pqzQQsQc7VL/XOo
         /C/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="ftmg5/kz";
       spf=pass (google.com: domain of 3v2ovyqwkapgsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3v2oVYQwKAPgsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Htgt+6+vv0Okb9Drpu0BnDZc24rJpx7SOExMieNhX44=;
        b=QvbBNVY9PdW5hm7tRe1sm7sokpAx8XbcI6j6UMIz1ElGlRhv35ZEkjoVs1v76fHALN
         Y/Mri8/kttukqKpto8HstedGUeaOlT5SZFD0o8SSz8qWRrH2UUA3ca4ChRl08FzCrQLE
         jpoe9e6RrQKSJwEoqEZy56u6CYo6aHTxafoQhXDK6RwhbNeB+9BgYj7pGUWJjoTDns6T
         0agluhnnDJdVhaU2r3WuFWCkHxtQUVv5oOuQevPmTY9EgS4i/R4O0a2mAUEsbYDzRnPB
         0vRF63G9s5kxeQhmXknOpeq3yGixnUnXBRx73tG7dW4Sl4gEDn83arsmFRvOYuEBVTtk
         NukA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Htgt+6+vv0Okb9Drpu0BnDZc24rJpx7SOExMieNhX44=;
        b=DbW1MOxRYDAcSfwHEjSJQqzrguJ2Cw025yLYd+kmAGDMGVseq5zykFvO4vazWhl9a3
         WduJpiePpfOo4Aubiz3egIYOn4NYZbXUk9ZrmJXn3VzqNpHSApibjLivBzrF92htu1Z7
         P5d1BdAGCB7JxDNEvzJxeqhUQi/h3LW8E3E7Qae0iZs8vfRMGaO7FXAw/qBeP55b3eZW
         /z7lHXMHu5NfyrLw1YS9PF971JVqePZjFzXBL/PNj7ubyqPBzxUpYM7QRDZ4NbqKVZZt
         r8AfmShBpdx/Jq5GonMVayD56VuZ6jk3cScSXvFssa74OfTkR+WMh4+DwuUT81Qvn3l2
         uXHg==
X-Gm-Message-State: AOAM533zZ91nqBYPC+shjUyAHCAjycDQ/01IB2vrwnf3Z+5i9Yuj9COC
	zsl9J2YyyxuZ6DCdYwxz9zU=
X-Google-Smtp-Source: ABdhPJxj7OhMsPbwNh+nDC33QmzmReOzq+omJJNVFdYEiW1E430bF8Q8ow3EZV9wuxiYbfqwK7CmKg==
X-Received: by 2002:a62:834e:0:b029:3b3:4b25:2352 with SMTP id h75-20020a62834e0000b02903b34b252352mr5475284pfe.18.1628793536579;
        Thu, 12 Aug 2021 11:38:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:6802:: with SMTP id l2ls2754203pgt.8.gmail; Thu, 12 Aug
 2021 11:38:56 -0700 (PDT)
X-Received: by 2002:a05:6a00:c8f:b029:3c7:ff12:fea7 with SMTP id a15-20020a056a000c8fb02903c7ff12fea7mr5373471pfv.45.1628793536023;
        Thu, 12 Aug 2021 11:38:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628793536; cv=none;
        d=google.com; s=arc-20160816;
        b=IS67zMxz7VUyBdr0PQPi1XVDj9fqL5fhtZiYVWlYnafBPkj09QZUh4+7fNkHAAVp0B
         XQ6fes26zHFYKjafUEr5EymBLQBZAnJo4HB8qhuF7khsviyh3xuen5r255MnZHePlvTa
         8hGLjOdb7VaNlOgkR6xarE4PX5O42FFWt9K6YinT9Yhc6KoeNOrm6/+4krJ/FOPJxSEd
         YOH/f+/74pKS5s970GXxIEr5Q4pXN5Vwh/HvvXO3UdqOId/Wh/JZO63evjtxcaN1F+pw
         gOtLiCZnHlKzdUEdkDzgi96D1KhbUNuD4mT1toqynTXjFuj5v8NgOXEWc+l2je5S1vEx
         AMHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=vF0sL0fF9hkrbzST732Pf1ePejYOAKjxRopYSg2L7GI=;
        b=sEwozYDAo3JpffG8MXIXmTCzoYKUZmGvOQdwO5lhk2iulKz2UH/hgiIpVNdlDWxydK
         dCLMRWDi5feETB5n1jnm3sH6aDDxdybnKhxtnlagQACkmwiQD1y1Cwmw1Mjc4ohPqX6S
         YKqMWM21nCThVBrbMvs28hVUjtnGSPemrVOvI+Gq+OCkXuy4/LJmdgLPnMw9k59J91bC
         opDOdL8djC1umH3QIHS3Z9s3VcN8ao0jSXJN7lg1py0Oj0RffxPGOgUUG0yZ1NFh4mxy
         NBIZEaTscXRqhsVaih0CEm+5BDtpyv7I+Xm1roKkrMKBDtNXl8sHrZkxd8c5KOY51SYx
         0LEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="ftmg5/kz";
       spf=pass (google.com: domain of 3v2ovyqwkapgsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3v2oVYQwKAPgsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com. [2607:f8b0:4864:20::f49])
        by gmr-mx.google.com with ESMTPS id r9si175513plo.0.2021.08.12.11.38.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Aug 2021 11:38:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3v2ovyqwkapgsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) client-ip=2607:f8b0:4864:20::f49;
Received: by mail-qv1-xf49.google.com with SMTP id m10-20020a056214158ab029035a6c1e5f3eso2580232qvw.7
        for <clang-built-linux@googlegroups.com>; Thu, 12 Aug 2021 11:38:55 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:2e44:5ff0:453:5647])
 (user=ndesaulniers job=sendgmr) by 2002:a0c:c441:: with SMTP id
 t1mr5209159qvi.25.1628793535171; Thu, 12 Aug 2021 11:38:55 -0700 (PDT)
Date: Thu, 12 Aug 2021 11:38:48 -0700
Message-Id: <20210812183848.1519994-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.33.0.rc1.237.g0d66db33f3-goog
Subject: [PATCH v2] x86/build: remove stale cc-option checks
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Nathan Chancellor <nathan@kernel.org>, x86@kernel.org, "H. Peter Anvin" <hpa@zytor.com>, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="ftmg5/kz";       spf=pass
 (google.com: domain of 3v2ovyqwkapgsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3v2oVYQwKAPgsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com;
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

GCC did not support values less than 4 for -mpreferred-stack-boundary=
until GCC 7+. Change the cc-option test to check for a value of 2,
rather than 4.

Link: https://github.com/ClangBuiltLinux/linux/issues/1436
Reviewed-by: Nathan Chancellor <nathan@kernel.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Changes v1 -> v2:
* Change -mpreferred-stack-boundary= cc-option test to check 2 rather
  than 4, noting that in the commit message.
* Rebase on tip/master.
* Carry forward Nathan's RB tag.

 arch/x86/Makefile | 53 +++++++++++++++++------------------------------
 1 file changed, 19 insertions(+), 34 deletions(-)

diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index 307fd0000a83..0d33ba013683 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -14,10 +14,13 @@ endif
 
 # For gcc stack alignment is specified with -mpreferred-stack-boundary,
 # clang has the option -mstack-alignment for that purpose.
-ifneq ($(call cc-option, -mpreferred-stack-boundary=4),)
+ifdef CONFIG_CC_IS_GCC
+ifneq ($(call cc-option, -mpreferred-stack-boundary=2),)
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
         include arch/x86/Makefile_32.cpu
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
 

base-commit: c5ee8ababa9be56241c949d5c3b9e29a1d0300d6
-- 
2.33.0.rc1.237.g0d66db33f3-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210812183848.1519994-1-ndesaulniers%40google.com.
