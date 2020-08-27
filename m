Return-Path: <clang-built-linux+bncBC2ORX645YPRBQFSUD5AKGQEIL6LY2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E23B255016
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 22:36:18 +0200 (CEST)
Received: by mail-oo1-xc38.google.com with SMTP id e24sf3244362oou.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 13:36:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598560577; cv=pass;
        d=google.com; s=arc-20160816;
        b=vruGDyLcUUnHOcgeSuhEIZkrCYAg1Or348DwoVzLoLVcpQ75czhsUEjp9QiNfClOTN
         RbyamcoQ+aDLmsr/XWjtGySMK/2tnGiLnMafIB6KRvtq7h1MfUlyxK0IljLQDjk60BkX
         muffrIehGVZrF/3T/L2uxMK7q/+vYGvMC9kNTo2Ey/bnSDN8WwkYC6Q4+t3bnyQYlzVh
         ZPK0lnxHJzy2IfaJ8HKW55rJKaqS6bPREJhmrHIPMO2zEHsfS7XAlbU+1NA4L1In7CHq
         9CvdF5fPhDEmL8+vsVsJPi9KcSwqtyjz6XgVTnQcHrczUb9x0tiDyFYpQPe/ZFXXso6S
         M7aw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=7Qv27eKGmme1i5pqR08tohMC/33vw+mTHYl3qlEoX1w=;
        b=rLOR8/0ggfWIIPXtl/5s9nH3DKsBJHPVTpfIzfXDkTtxqeS+76qk5sJvaDv/iorv1n
         rCap1bncI10PXt+4gyA80R+es0pLgn/Jy0kXvzsABSstnSIh9oHxSRYeXK/DRncs4/Jp
         GpzC3xcGODCIYJnwapgR4CeD3GUGBy95O9DCIJiQ/BDwRQ78Cn5AR24s0cQ0RNvLHNLC
         QMuczJ6HRXmGP2oLio5YTj3qyzS4hl6WpoQ14oVK5bvZwxUNZe3JdDliHrIbEwEzkGOM
         W4aORs73ysZ7yTMbOk54t7+x8fbFyfP3JrCk0N/9iGTHHEhpC6dcZujq9zlQddRZVfKt
         udrw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="jNC1/Oxo";
       spf=pass (google.com: domain of 3pxlixwwkajiew84fa7hw9092aa270.ya8@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3PxlIXwwKAJIEw84FA7Hw9092AA270.yA8@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7Qv27eKGmme1i5pqR08tohMC/33vw+mTHYl3qlEoX1w=;
        b=a5RTx/vPL15wA0Db3ECnMjQbkiSWaEE8tHyi+/ETtDOY8EsZJAcOJY34D4VJE/NSlW
         n5m1CrR+lYBfSVngiINPodAQJBuI6i9Q180G9q+3LtFQU/LwErqscld0iDeVxW9VZSsj
         10/SjGncii/n1xh/Vzz301WIfQruYcoSX2lBtF96qApxcEZscncdMzyRWoe0qOhs4GmS
         Yh5Xv3t4M36eXcR9Ifvq4WupMmO7E4a4DpuA7J7iAZZXkXy8/JPimuTeZokoUvD2LFuA
         tNL0gCwg1Z8mZIZUAlsBVzL+0EI9nMwMbhI3jpllVGIXjGtUG5Y2Ln8YBUxRKaXntqYu
         PWbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7Qv27eKGmme1i5pqR08tohMC/33vw+mTHYl3qlEoX1w=;
        b=reywJsRBGwe/5luy/loKlDBwD8PR59lQahIkQ87F+0QQEYN2Yg0b4/G1pW1tz9uoj3
         Hjba8RJjrcZbzyecQDzjK2gkXvO+kLmfP3n1KnESE+PCMSVaGe21YpOnDMZJIH5Qltk9
         Uaw/Ccif+ORDpu3oRjqD8ABK47MWm6FzOGNcIRKum/4fnKrNPm1IQ4iUH6OicAlti/l/
         PzLhXGsTy78q8ZWKEnbPq21lXS1eai9dAXWqBGsKgrJRB2HpkF4ykE+NQlKnJ1XPtx5X
         JoDWSHPgBOb0zy60NVsGi3/ZimkAR+QOxv/zOH5VZZ45fECgjB4jVXo48mYSluUIurgV
         VvGQ==
X-Gm-Message-State: AOAM530kIIm6eG57/GpsWDVvtEaVGitHDMQUsEoiT9f/PzRHxp+onAo9
	za9YrMGVbcr9zb9HEJZmQq8=
X-Google-Smtp-Source: ABdhPJzJIMF5hTfXmNKqFZ36rsIQ4wpIrTwoW5ag2mNYEMmghep9qmlO6FiaqiqGtSWrfo3MzBKx8A==
X-Received: by 2002:a05:6830:50:: with SMTP id d16mr13844374otp.298.1598560576785;
        Thu, 27 Aug 2020 13:36:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:2231:: with SMTP id o46ls969562ota.11.gmail; Thu, 27 Aug
 2020 13:36:16 -0700 (PDT)
X-Received: by 2002:a9d:2f23:: with SMTP id h32mr15298697otb.334.1598560576313;
        Thu, 27 Aug 2020 13:36:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598560576; cv=none;
        d=google.com; s=arc-20160816;
        b=qvpGptBc6HPT6PtiFDpCKpmtV83Cw7OjA2ZWQa5m86S93uvYCPhtk3GhijggMpGJip
         EzU62E1UqYuJuE579w4SwR/M95VuOB+7/OfrADph5A4q3Tz/6tWfEpwqzIVL0p8aS9U7
         vnJFWHgeMtQlfQODL0W3SrzktNX73rMLnSeKd6kqbQ+I+nAEOoNAZ9Nxf+gI7i7GxVnz
         3sF9a9VWbLzjNG4ttgc5nvl4+G7RUbHhpdJxMbYTzYpsGvR/BDlwWQaT4QgIUYBS4JNf
         pTBS3uIFBPQhUZk+zDRNGYI58FyWWquiQkD56UZTt4WnJf9nLNrXEQ9iTipI8Ek7G2cy
         fspA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=HHXt/e3Y/DBXqTOlWL3tdRnya/aQz5KwWbw/CbYxzno=;
        b=Or2vLu+0b0ua6b8pXQtZuz8J7PB0lzQvy8YzMZK2nqRw0ilIUkNWT96D2vV0f9/YOS
         YysPwXp/pbBi1fRvy5FdcIeJLXuUH1vspI9urHqviigzw1bTZXfSWyNhJAXtvYXmYcFu
         WwMwfhXSHUQJG7PCQDHmbiS/JIywlVMm+tI/JheN9rtEiaxEBO2vu9TuVTb989fEfinl
         k9Kx6g1WdC9ze1VxxVP+s8ExTH46BCTsJ8GgCGaqTF4CutfCE1T5zTrRZVGY1wLmlADJ
         U7x4xT2a7SFLDeJ6rdNOTK5C4cTwg5NxzRLhG6LnmNn6l6J7QKIzcGaRAzSfO1iiXKyJ
         3QMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="jNC1/Oxo";
       spf=pass (google.com: domain of 3pxlixwwkajiew84fa7hw9092aa270.ya8@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3PxlIXwwKAJIEw84FA7Hw9092AA270.yA8@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com. [2607:f8b0:4864:20::549])
        by gmr-mx.google.com with ESMTPS id d11si250663oti.2.2020.08.27.13.36.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Aug 2020 13:36:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3pxlixwwkajiew84fa7hw9092aa270.ya8@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) client-ip=2607:f8b0:4864:20::549;
Received: by mail-pg1-x549.google.com with SMTP id n32so5213583pgb.22
        for <clang-built-linux@googlegroups.com>; Thu, 27 Aug 2020 13:36:16 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a17:902:10f:: with SMTP id
 15mr18031937plb.232.1598560575542; Thu, 27 Aug 2020 13:36:15 -0700 (PDT)
Date: Thu, 27 Aug 2020 13:36:08 -0700
In-Reply-To: <20200805181920.4013059-1-samitolvanen@google.com>
Message-Id: <20200827203608.1225689-1-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200805181920.4013059-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.297.g1956fa8f8d-goog
Subject: [PATCH v2] arm64: use a common .arch preamble for inline assembly
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Zhenyu Ye <yezhenyu2@huawei.com>
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Kees Cook <keescook@chromium.org>, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="jNC1/Oxo";       spf=pass
 (google.com: domain of 3pxlixwwkajiew84fa7hw9092aa270.ya8@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3PxlIXwwKAJIEw84FA7Hw9092AA270.yA8@flex--samitolvanen.bounces.google.com;
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

Commit 7c78f67e9bd9 ("arm64: enable tlbi range instructions") breaks
LLVM's integrated assembler, because -Wa,-march is only passed to
external assemblers and therefore, the new instructions are not enabled
when IAS is used.

This change adds a common architecture version preamble, which can be
used in inline assembly blocks that contain instructions that require
a newer architecture version, and uses it to fix __TLBI_0 and __TLBI_1
with ARM64_TLB_RANGE.

Fixes: 7c78f67e9bd9 ("arm64: enable tlbi range instructions")
Link: https://github.com/ClangBuiltLinux/linux/issues/1106
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
Changes in v2:
- Switched to a standard preamble for the architecture version.

---
 arch/arm64/Makefile               | 11 ++++++++---
 arch/arm64/include/asm/compiler.h |  6 ++++++
 arch/arm64/include/asm/tlbflush.h |  6 ++++--
 3 files changed, 18 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index b45f0124cc16..20ab5c9375a5 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -82,8 +82,8 @@ endif
 # compiler to generate them and consequently to break the single image contract
 # we pass it only to the assembler. This option is utilized only in case of non
 # integrated assemblers.
-ifneq ($(CONFIG_AS_HAS_ARMV8_4), y)
-branch-prot-flags-$(CONFIG_AS_HAS_PAC) += -Wa,-march=armv8.3-a
+ifeq ($(CONFIG_AS_HAS_PAC), y)
+asm-arch := armv8.3-a
 endif
 endif
 
@@ -91,7 +91,12 @@ KBUILD_CFLAGS += $(branch-prot-flags-y)
 
 ifeq ($(CONFIG_AS_HAS_ARMV8_4), y)
 # make sure to pass the newest target architecture to -march.
-KBUILD_CFLAGS	+= -Wa,-march=armv8.4-a
+asm-arch := armv8.4-a
+endif
+
+ifdef asm-arch
+KBUILD_CFLAGS	+= -Wa,-march=$(asm-arch) \
+		   -DARM64_ASM_ARCH='"$(asm-arch)"'
 endif
 
 ifeq ($(CONFIG_SHADOW_CALL_STACK), y)
diff --git a/arch/arm64/include/asm/compiler.h b/arch/arm64/include/asm/compiler.h
index 51a7ce87cdfe..6fb2e6bcc392 100644
--- a/arch/arm64/include/asm/compiler.h
+++ b/arch/arm64/include/asm/compiler.h
@@ -2,6 +2,12 @@
 #ifndef __ASM_COMPILER_H
 #define __ASM_COMPILER_H
 
+#ifdef ARM64_ASM_ARCH
+#define ARM64_ASM_PREAMBLE ".arch " ARM64_ASM_ARCH "\n"
+#else
+#define ARM64_ASM_PREAMBLE
+#endif
+
 /*
  * The EL0/EL1 pointer bits used by a pointer authentication code.
  * This is dependent on TBI0/TBI1 being enabled, or bits 63:56 would also apply.
diff --git a/arch/arm64/include/asm/tlbflush.h b/arch/arm64/include/asm/tlbflush.h
index d493174415db..cc3f5a33ff9c 100644
--- a/arch/arm64/include/asm/tlbflush.h
+++ b/arch/arm64/include/asm/tlbflush.h
@@ -28,14 +28,16 @@
  * not. The macros handles invoking the asm with or without the
  * register argument as appropriate.
  */
-#define __TLBI_0(op, arg) asm ("tlbi " #op "\n"				       \
+#define __TLBI_0(op, arg) asm (ARM64_ASM_PREAMBLE			       \
+			       "tlbi " #op "\n"				       \
 		   ALTERNATIVE("nop\n			nop",		       \
 			       "dsb ish\n		tlbi " #op,	       \
 			       ARM64_WORKAROUND_REPEAT_TLBI,		       \
 			       CONFIG_ARM64_WORKAROUND_REPEAT_TLBI)	       \
 			    : : )
 
-#define __TLBI_1(op, arg) asm ("tlbi " #op ", %0\n"			       \
+#define __TLBI_1(op, arg) asm (ARM64_ASM_PREAMBLE			       \
+			       "tlbi " #op ", %0\n"			       \
 		   ALTERNATIVE("nop\n			nop",		       \
 			       "dsb ish\n		tlbi " #op ", %0",     \
 			       ARM64_WORKAROUND_REPEAT_TLBI,		       \

base-commit: 15bc20c6af4ceee97a1f90b43c0e386643c071b4
-- 
2.28.0.297.g1956fa8f8d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200827203608.1225689-1-samitolvanen%40google.com.
