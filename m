Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZF4YSDAMGQEUYX27YQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 637073AF91F
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 01:19:01 +0200 (CEST)
Received: by mail-oo1-xc40.google.com with SMTP id q3-20020a4aa3030000b029024b18087470sf11449566ool.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 16:19:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624317540; cv=pass;
        d=google.com; s=arc-20160816;
        b=wVNhw9ltjXlkmtoqQ1l9vr+WSf+Wzp/OshkFVuz10GzxAmCpR2+/ygo2KvgcaZuIV5
         5MYZ4fdrxP4tAoSfD14vrw7Tbu+0iEt5erKJJtBKUsqYmMvVPtWgiALleGEnnm97O1l4
         0iZCbUeU7VV4K+hUkm9TtqervRRZ7B3W7QK9/7tvpCBPQk8R2MtgewAtEfNnPnkpda7B
         Q2ow/7JfF4MbCsHcjFYd5xE4+NRKiQISTBMtF566XEw/aw3+TMNrIjUw8y26QUeMZMy4
         J22bn0wGiQtx//o0QTHdK61jUJI6NSFXfpmtEe0kK1+0+R4ej+vEwSjRhRPbdfjPY/YX
         tNJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=2OoChXSjaCJIhjuPDsnM5fWBecoBgF78/c4hPExes74=;
        b=cNXmCtPe6ZOzckHQq6ItPsBYuGjrRrGMzLQ7u8h3BhQ3i9uDJI0ZcS/r4ZNHobM9zh
         6nb2bxzwDHZZmFlyCblrJpkJFDF2qYG0FcV2bTHXxrGAzQHqJta7/HmSZ8zSYv+vFaKd
         QXMZr07psaXirXeGoPKAl2UGUQmgKETlI8UzOomt4st42rA5FynFFUlm+DaAqUfQQNxE
         kqMzXbLIBqPpjwlrrpaBKiuNBEukqscTnQVYzPFvbVmkX1HDDP3Jd05t1Kfbpha0r3XC
         TDjOJkd60Ywx4fIfhJ3V9DKPUDR0lIFfBmMXVuzcYawKm5vIbzGPAmVRW9oc4cYp5lW/
         7baw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IlT5iHwH;
       spf=pass (google.com: domain of 3yx7ryawkapafvwksmdfawjkyggydw.uge@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3Yx7RYAwKAPAfVWkSmdfaWjkYggYdW.Uge@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2OoChXSjaCJIhjuPDsnM5fWBecoBgF78/c4hPExes74=;
        b=Q9mDkIWaXn4fAfAH+bhEwjNWB9/RVh7TDMfeUTA2lnTmfu5PsYGYgMMH/CLezUnUYE
         oJj2RDMwUE2WAsPBF/UYNQpfk/NeadxyprEe/sRfFYaOMylfcX+7AN5og3aOr/6CIV+U
         ICU9i6I4SjRycfk1HS/rjfGHfwE05+6ZFDauuqsdU3oyPpJAIKKv6Aie3BP+vxD6cuQy
         ciDFOPj6DBZWBq9OHfCEHI4b9w8elqcmp4VKsboNssqGwR9KUko/iVQW/tSqN26MCr28
         +n7U0EeeY/uDLFkAE+1t+XeZ9o2RB159NZcosg4iB7U6OC7cKfAeYd7jgf1PSpWYk1Rc
         5ukw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2OoChXSjaCJIhjuPDsnM5fWBecoBgF78/c4hPExes74=;
        b=XXH2leyGTz0vTgQIbvDBTNng9bnQFUZdzRYPSJ0Tp8akCoPjqS4T19HemIeNuHPJXu
         qI7/q/adcnb2Omd+ghzbXhW6DkrEberwbI3h3rvf5LZIVAp0B/RAc0kd4EUqax12tyVS
         6oMnQR4a8pQ6fMYp9GxL7O1iyDROq5smVZvzoQx9JZFxYI+dG8D4Gbs5Lkp8DsPXuIE+
         Vp2BGvrMdqxj8l1kuWNyyQ0TaqsG0vDGDPDiXYPCNBhp3XNJXBo1sCyNcKXLNhi2Bmwl
         d1b+R3rttG31bxpK06+RG+RCjBts4d9fsJq5MhQjzsZ36+j1Vr+iHqVeNZAz0+JbkoxP
         Oi/A==
X-Gm-Message-State: AOAM533MT2Ehhw9eS/P+TA2Malj/ehNnC7OcYOm8hEdJBIInccnUPpqy
	FFLndQ0VO40s4jyZYlIscSQ=
X-Google-Smtp-Source: ABdhPJwsz2v6JEkatb/jvk9p7Rj0Pprgj/OYSKpMMXkJlB7Nb/TPkm7Wi+dEZ4q9NIEVYBhhAtQS4g==
X-Received: by 2002:a9d:6219:: with SMTP id g25mr440553otj.262.1624317540267;
        Mon, 21 Jun 2021 16:19:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:d5:: with SMTP id t21ls1786170oic.11.gmail; Mon, 21
 Jun 2021 16:18:59 -0700 (PDT)
X-Received: by 2002:aca:7541:: with SMTP id q62mr675391oic.37.1624317539900;
        Mon, 21 Jun 2021 16:18:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624317539; cv=none;
        d=google.com; s=arc-20160816;
        b=V5UKTYM+224n6W0yWakbbsmtAjaVopCRM8gfiKZ0/2RimZDrFbhjHWHhPSYJnjWurC
         P36HHAF+yQdvKm3B6h2Pv0dM1BEXXOZqigOBntOJpHuTli/24lG/f8sIm65zepVOoRoz
         VRUXRDEvJJYbk5cUiyoKgC6PErlOomS+5rR+2AdgOraNNQv48JwLkb5VlwHl/DfYwSm/
         xza4wEUpy4upN0TL2k3759u7Cg2XTybeF790rGKEZ28yF1KqHba9l7D7ihniSw0Tb9zN
         Caq6HmXRVthkqNHgndTETn976Bbr/0LN0dudXspZw7rekWaqabKC5aUvVSCFWbECmvsO
         zIYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=3H4F55NU/a97Frzuudhi6AfsU/8NQIqR0g56h0PgrJ4=;
        b=lGSoAp+giBQHP4RJe5KjIepsWlr+0LOso2u8VT9dLm/A6oUD6p+aRvClYW1cANshPm
         kUwse8vu9kLBxg1tV6l1OXaOEwbXaJmhL2DNkcKjHS75sYC4rAuQOT3Ne4Mfs7x924HD
         m31OP25Fn6Ta8qSdHeb5EmlHUohOt/x4hYzppiW5qcbLW9uH7DH1lvThlDobvnpnWy9b
         S0PUGDjfxn/nZFC1UACdOa0RV5H1GYgnPq0jZYRADF2ZYf9U6mMQHJhZHpmUuZKTvMOS
         ANNwGCFiQe9aycvHptGj6GWFtuOVtyPbZoYbQM/TG/kXQkU3dAfLqslehoRcPgjMqQRV
         0Zrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IlT5iHwH;
       spf=pass (google.com: domain of 3yx7ryawkapafvwksmdfawjkyggydw.uge@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3Yx7RYAwKAPAfVWkSmdfaWjkYggYdW.Uge@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com. [2607:f8b0:4864:20::f49])
        by gmr-mx.google.com with ESMTPS id x195si40144oia.0.2021.06.21.16.18.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Jun 2021 16:18:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3yx7ryawkapafvwksmdfawjkyggydw.uge@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) client-ip=2607:f8b0:4864:20::f49;
Received: by mail-qv1-xf49.google.com with SMTP id 12-20020a05621420ecb02902766cc25115so2319753qvk.1
        for <clang-built-linux@googlegroups.com>; Mon, 21 Jun 2021 16:18:59 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:dfd:ebf9:4ec7:1783])
 (user=ndesaulniers job=sendgmr) by 2002:a25:7a84:: with SMTP id
 v126mr752893ybc.153.1624317539374; Mon, 21 Jun 2021 16:18:59 -0700 (PDT)
Date: Mon, 21 Jun 2021 16:18:22 -0700
In-Reply-To: <20210621231822.2848305-1-ndesaulniers@google.com>
Message-Id: <20210621231822.2848305-4-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210621231822.2848305-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.32.0.288.g62a8d224e6-goog
Subject: [PATCH v2 3/3] Kconfig: add ARCH_WANTS_NO_INSTR+CC_HAS_NO_PROFILE_FN_ATTR,
 depend on for GCOV and PGO
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Bill Wendling <wcw@google.com>, 
	Sami Tolvanen <samitolvanen@google.com>, Peter Oberparleiter <oberpar@linux.ibm.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Nathan Chancellor <nathan@kernel.org>, Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, 
	Ard Biesheuvel <ardb@kernel.org>, Will Deacon <will@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	Andrew Morton <akpm@linux-foundation.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, 
	x86@kernel.org, Borislav Petkov <bp@alien8.de>, Martin Liska <mliska@suse.cz>, 
	Marco Elver <elver@google.com>, Jonathan Corbet <corbet@lwn.net>, Fangrui Song <maskray@google.com>, 
	linux-doc@vger.kernel.org, linux-kbuild@vger.kernel.org, 
	Dmitry Vyukov <dvyukov@google.com>, johannes.berg@intel.com, 
	linux-toolchains@vger.kernel.org, Heiko Carstens <hca@linux.ibm.com>, 
	Vasily Gorbik <gor@linux.ibm.com>, Christian Borntraeger <borntraeger@de.ibm.com>, linux-s390@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, 
	Catalin Marinas <catalin.marinas@arm.com>, Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=IlT5iHwH;       spf=pass
 (google.com: domain of 3yx7ryawkapafvwksmdfawjkyggydw.uge@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3Yx7RYAwKAPAfVWkSmdfaWjkYggYdW.Uge@flex--ndesaulniers.bounces.google.com;
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

We don't want compiler instrumentation to touch noinstr functions, which
are annotated with the no_profile_instrument_function function
attribute. Add a Kconfig test for this and make PGO and GCOV depend on
it.

If an architecture is using noinstr, it should denote that via this
Kconfig value. That makes Kconfigs that depend on noinstr able to
express dependencies in an architecturally agnostic way.

Cc: Masahiro Yamada <masahiroy@kernel.org>
Cc: Peter Oberparleiter <oberpar@linux.ibm.com>
Link: https://lore.kernel.org/lkml/YMTn9yjuemKFLbws@hirez.programming.kicks-ass.net/
Link: https://lore.kernel.org/lkml/YMcssV%2Fn5IBGv4f0@hirez.programming.kicks-ass.net/
Suggested-by: Nathan Chancellor <nathan@kernel.org>
Suggested-by: Peter Zijlstra <peterz@infradead.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Changes V1 -> V2:
* Add ARCH_WANTS_NO_INSTR
* Change depdendencies to be !ARCH_WANTS_NO_INSTR || CC_HAS_NO_PROFILE_FN_ATTR
  rather than list architectures explicitly, as per Nathan.
* s/no_profile/no_profile_instrument_function/

 arch/Kconfig        | 7 +++++++
 arch/arm64/Kconfig  | 1 +
 arch/s390/Kconfig   | 1 +
 arch/x86/Kconfig    | 1 +
 init/Kconfig        | 3 +++
 kernel/gcov/Kconfig | 1 +
 kernel/pgo/Kconfig  | 3 ++-
 7 files changed, 16 insertions(+), 1 deletion(-)

diff --git a/arch/Kconfig b/arch/Kconfig
index 2b4109b0edee..2113c6b3b801 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -285,6 +285,13 @@ config ARCH_THREAD_STACK_ALLOCATOR
 config ARCH_WANTS_DYNAMIC_TASK_STRUCT
 	bool
 
+config ARCH_WANTS_NO_INSTR
+	bool
+	help
+	  An architecure should select this if the noinstr macro is being used on
+	  functions to denote that the toolchain should avoid instrumenting such
+	  functions and is required for correctness.
+
 config ARCH_32BIT_OFF_T
 	bool
 	depends on !64BIT
diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 9f1d8566bbf9..39bf982b06f8 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -93,6 +93,7 @@ config ARM64
 	select ARCH_WANT_FRAME_POINTERS
 	select ARCH_WANT_HUGE_PMD_SHARE if ARM64_4K_PAGES || (ARM64_16K_PAGES && !ARM64_VA_BITS_36)
 	select ARCH_WANT_LD_ORPHAN_WARN
+	select ARCH_WANTS_NO_INSTR
 	select ARCH_HAS_UBSAN_SANITIZE_ALL
 	select ARM_AMBA
 	select ARM_ARCH_TIMER
diff --git a/arch/s390/Kconfig b/arch/s390/Kconfig
index b4c7c34069f8..bd60310f33b9 100644
--- a/arch/s390/Kconfig
+++ b/arch/s390/Kconfig
@@ -117,6 +117,7 @@ config S390
 	select ARCH_USE_BUILTIN_BSWAP
 	select ARCH_USE_CMPXCHG_LOCKREF
 	select ARCH_WANTS_DYNAMIC_TASK_STRUCT
+	select ARCH_WANTS_NO_INSTR
 	select ARCH_WANT_DEFAULT_BPF_JIT
 	select ARCH_WANT_IPC_PARSE_VERSION
 	select BUILDTIME_TABLE_SORT
diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index da43fd046149..7d6a44bb9b0e 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -114,6 +114,7 @@ config X86
 	select ARCH_WANT_BATCHED_UNMAP_TLB_FLUSH
 	select ARCH_WANT_DEFAULT_BPF_JIT	if X86_64
 	select ARCH_WANTS_DYNAMIC_TASK_STRUCT
+	select ARCH_WANTS_NO_INSTR
 	select ARCH_WANT_HUGE_PMD_SHARE
 	select ARCH_WANT_LD_ORPHAN_WARN
 	select ARCH_WANTS_THP_SWAP		if X86_64
diff --git a/init/Kconfig b/init/Kconfig
index 1ea12c64e4c9..31397a7a45fb 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -83,6 +83,9 @@ config TOOLS_SUPPORT_RELR
 config CC_HAS_ASM_INLINE
 	def_bool $(success,echo 'void foo(void) { asm inline (""); }' | $(CC) -x c - -c -o /dev/null)
 
+config CC_HAS_NO_PROFILE_FN_ATTR
+	def_bool $(success,echo '__attribute__((no_profile_instrument_function)) int x();' | $(CC) -x c - -c -o /dev/null -Werror)
+
 config CONSTRUCTORS
 	bool
 
diff --git a/kernel/gcov/Kconfig b/kernel/gcov/Kconfig
index 58f87a3092f3..053447183ac5 100644
--- a/kernel/gcov/Kconfig
+++ b/kernel/gcov/Kconfig
@@ -5,6 +5,7 @@ config GCOV_KERNEL
 	bool "Enable gcov-based kernel profiling"
 	depends on DEBUG_FS
 	depends on !CC_IS_CLANG || CLANG_VERSION >= 110000
+	depends on !ARCH_WANTS_NO_INSTR || CC_HAS_NO_PROFILE_FN_ATTR
 	select CONSTRUCTORS
 	default n
 	help
diff --git a/kernel/pgo/Kconfig b/kernel/pgo/Kconfig
index d2053df1111c..ce7fe04f303d 100644
--- a/kernel/pgo/Kconfig
+++ b/kernel/pgo/Kconfig
@@ -8,7 +8,8 @@ config PGO_CLANG
 	bool "Enable clang's PGO-based kernel profiling"
 	depends on DEBUG_FS
 	depends on ARCH_SUPPORTS_PGO_CLANG
-	depends on CC_IS_CLANG && CLANG_VERSION >= 120000
+	depends on CC_IS_CLANG
+	depends on !ARCH_WANTS_NO_INSTR || CC_HAS_NO_PROFILE_FN_ATTR
 	help
 	  This option enables clang's PGO (Profile Guided Optimization) based
 	  code profiling to better optimize the kernel.
-- 
2.32.0.288.g62a8d224e6-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210621231822.2848305-4-ndesaulniers%40google.com.
