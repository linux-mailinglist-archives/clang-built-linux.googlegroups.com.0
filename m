Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBUEK2TZQKGQEGZ74YKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id C56B918D67C
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 19:02:57 +0100 (CET)
Received: by mail-lf1-x13f.google.com with SMTP id h2sf2045489lfm.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 11:02:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584727377; cv=pass;
        d=google.com; s=arc-20160816;
        b=mFvptmMOLlxQBf8AO6LC3YA2W3qhutQrrGZC7PfFdY7rxm6xpiyc2plm+xmTtDRDFL
         fHUHWztyxRLQo+zvWYEfI0nklHIRoUfTEd8TO4qbpXcYXT/tTMVF52qoKY9t3ezJ/3hB
         bMxRCWGO9LoB3wPyPMqh49pXlKRf/YZ8jsiXNH8NFVaKxevUgEiNw0e9x+gkrbzocVRk
         D+nEMZgSI36gCG8Ix7Ic7I2OCxeyyzAPq6ySugablNJNpLWOG8/ciOzA9oe1d0ykSDTr
         HuNO3K9nUkDV+yaduu+DfjfQq+8nA8uGA/afwqhqBZmMj00jnW5QGeT+cRKW4olzbpCf
         ZlSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=3mCdYUl6Mh+0RMzxwPdVOwP3ZBFT0cXBNUBw5D/P634=;
        b=CsptHAk8AHCXpGN8F57cmXFhdXOqGUaYw1ApIyOBnuvnc8Vou+3QtuBS394E5lgOwm
         vl5vTbK4/QsiUwXWwbtjLQzUGdtmi6F9MVgIL2G2L/kvqzuBsvz+89n8FuTPAk9D8/lD
         FMhwbuVjdKslodPfC7jxsBBrWTCFVZ/s58tDJJB8jeqQ7a1NZIPV02TG97ngySa64cQ9
         WIarobKrdTt8qroHh2JqXVmkajqZY/KT73NMeIyWgHvh1kLthPYns4SLwkBAG0oTsazp
         70IoK+ftTpN6YCwFmhYwcY7dGkeGlczvrcDtle5idoYGzPAz9w5wzWI1aZ4ONac0ui8j
         Ea9g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=s3hucas8;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3mCdYUl6Mh+0RMzxwPdVOwP3ZBFT0cXBNUBw5D/P634=;
        b=J7EhMTGBY0j7hyzjkbQJ+2TPOb2VSlPMpooYjKmqwEUyEFI6WyZAcwuWt4vYn2kPgq
         d3bdz1adHbg+X2qL7m9bkHItmxLEHzoOqoC/f6hMpliSjsiwgkkKAb5LrRb/F7+dEeJw
         VuYdmnwxTHuY5lU1PxPZtqY1SQYX8GyVS6q32UckHtjmRbL0ym24m0bsVKStBkIGPfzz
         vjVbkZ1Zjb0FUMf2cKn/q9+4Yj3y9Cqh/o4nMqazptrjJ5Pt4ctY84RR+8njVq5Q/NzR
         V+NuNgsGY8CQBFwz6ahsGTXjJwo5ReHD9q/XE9H1qe+MSqmNdd6WXe60mXARe5fKSWKu
         jXvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3mCdYUl6Mh+0RMzxwPdVOwP3ZBFT0cXBNUBw5D/P634=;
        b=t3X51bTglMI11NzN8E7h7GJhCmf10A733aeUAaafEQBGuctCRECcm+bSfQWMIHJppS
         3UxeAomxj4KZuQFLuG1CkRbtNNhWh7uij1mufwtoCJ74op+R62bv7z9SxJHkLMVLcxbE
         /+U7kboTXDaq3X39YOD+83QK24Lnjr/tsu8PcGxrCJDM86DGA27PZs7e0Ow5F/o/r2Lc
         iBuPfL5LwbEA7haOsNUIVFbbo3kf5iRH6hAA+cBBylVgiGFv//PuAxOPL8jBtmT/ONfl
         yqaWHhlyRujNLVWN4sxo3v5hu+BXzEiUIcCvlkwjXf12rhP6giqWybVjY+/5ohiWaN/9
         Yl3Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2u5zfZzq0IuyaIzZRqqGDpvC9LCOZ9kLGC2HE/4bsmCMm76cMS
	0VbArEOI90hJJk/8e/5HJzc=
X-Google-Smtp-Source: ADFU+vsUH0z2L7u66nkEaCfPtP1cPJbWyLGkXjBz23aQJMVU1VmYWanrkEXKwwFwQ3SvFDAZvydO6w==
X-Received: by 2002:a19:ccd3:: with SMTP id c202mr2228212lfg.103.1584727377071;
        Fri, 20 Mar 2020 11:02:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8941:: with SMTP id b1ls1512253ljk.8.gmail; Fri, 20 Mar
 2020 11:02:56 -0700 (PDT)
X-Received: by 2002:a2e:9b07:: with SMTP id u7mr6430867lji.265.1584727376372;
        Fri, 20 Mar 2020 11:02:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584727376; cv=none;
        d=google.com; s=arc-20160816;
        b=oofp8FdsIRYxvBDjw2ijXCG7QSq+AObJO62G6c7cNiCDzzMaQvPVsSv8wXMePdjnq0
         52C88LKkmCiO8F99u34RRITKQr4BFhp7bxdA9jMOnMfntLoYkWZCCd+IxefRQC5MLugY
         tmFQTpk2QZcPpLwj5Pz+5bvN6nhnAgMGbAXlL8VvOib9Ww07OSqVJDlOrx6yTsXZDApK
         6KPZrjiJeuoKK3ef8EGlXD8IaH83uO1FvDJkQXvTibp+tKGiOm4SGHr+4FJfR6FNntQM
         uQb8x6pRuyAy6MXP9vLVla5ZuE5RaLHlFposSQWO+DMG+JL0zomrfhj6zpHn6xh7W2S1
         PORw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=/mMCuyZuX3FfBDlVeJozMP6+IDHYkk+2sN9a97Gf7SI=;
        b=hfJJh6HhM1sFYwyNW5iJGXdAevx2IQZwdtaTgFsJpm3F7OtPQyihxpz95NSflZCWQN
         blhDNR7PGAQ7+00Cv/Pit4MGXKmrTe2KUtqABa8QyqTsN5MoWICyqjjBXHHraTcbVo+L
         9KUOeWTdrToYmaRyoXo75Q60p5wfq4Gf4x3ktk6ezI8y7SOt2Ul7rpP9AjKAerAdwb1d
         1hvSwVZHbJ6CfaSisZ3vTfMjB7KtEXORfPyi7dsZZcvi7OGoyvrFrlXaPxHHxHUTxysS
         02qHRynTy/D+ApOGWrto0KpeyKBb2eaw2OVljaI9z3CyOmTeBp7m789UE5bpKi+fEPaH
         DsKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=s3hucas8;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id a21si474032lff.3.2020.03.20.11.02.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Mar 2020 11:02:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id f3so8618673wrw.7
        for <clang-built-linux@googlegroups.com>; Fri, 20 Mar 2020 11:02:56 -0700 (PDT)
X-Received: by 2002:adf:d4ca:: with SMTP id w10mr12437746wrk.407.1584727375728;
        Fri, 20 Mar 2020 11:02:55 -0700 (PDT)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id o26sm8151366wmc.33.2020.03.20.11.02.55
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 20 Mar 2020 11:02:55 -0700 (PDT)
From: ci_notify@linaro.org
Date: Fri, 20 Mar 2020 18:02:54 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <2012402536.10826.1584727375244.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-aarch64-next-defconfig - Build # 39 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_10825_425079781.1584727374666"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-aarch64-next-defconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=s3hucas8;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::443
 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

------=_Part_10825_425079781.1584727374666
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-master-aarch64-next-defconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-master-aarch64-next-defconfig
 - tcwg_kernel/llvm-release-aarch64-next-defconfig

Culprit:
<cut>
commit 74afda4016a7437e6e425c3370e4b93b47be8ddf
Author: Kristina Martsenko <kristina.martsenko@arm.com>

    arm64: compile the kernel with ptrauth return address signing
</cut>

First few build errors in logs:
00:00:32 clang-11: error: assembler command failed with exit code 1 (use -v to see invocation)
00:00:32 make[1]: *** [arch/arm64/kernel/vdso/vgettimeofday.o] Error 1
00:00:32 make: *** [vdso_prepare] Error 2
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
rr[linux_branch]="08120d236c47dd2bdb6f7366782f4756dd7f417e"

Results regressed to (for first_bad == 74afda4016a7437e6e425c3370e4b93b47be8ddf)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
25

from (for last_good == c2d920bf1fffc3a61cb77db24464caf39496b32d)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
6262
# linux build successful:
all
# linux boot successful:
boot

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-defconfig/39/artifact/artifacts/build-74afda4016a7437e6e425c3370e4b93b47be8ddf/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-defconfig/39/artifact/artifacts/build-c2d920bf1fffc3a61cb77db24464caf39496b32d/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-defconfig/39/

Reproduce builds:
<cut>
mkdir investigate-linux-74afda4016a7437e6e425c3370e4b93b47be8ddf
cd investigate-linux-74afda4016a7437e6e425c3370e4b93b47be8ddf

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-defconfig/39/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-defconfig/39/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-defconfig/39/artifact/artifacts/test.sh
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

cd linux

# Reproduce first_bad build
git checkout --detach 74afda4016a7437e6e425c3370e4b93b47be8ddf
../artifacts/test.sh

# Reproduce last_good build
git checkout --detach c2d920bf1fffc3a61cb77db24464caf39496b32d
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-aarch64-next-defconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-defconfig/39/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-defconfig/39/consoleText

Full commit:
<cut>
commit 74afda4016a7437e6e425c3370e4b93b47be8ddf
Author: Kristina Martsenko <kristina.martsenko@arm.com>
Date:   Fri Mar 13 14:35:03 2020 +0530

    arm64: compile the kernel with ptrauth return address signing
    
    Compile all functions with two ptrauth instructions: PACIASP in the
    prologue to sign the return address, and AUTIASP in the epilogue to
    authenticate the return address (from the stack). If authentication
    fails, the return will cause an instruction abort to be taken, followed
    by an oops and killing the task.
    
    This should help protect the kernel against attacks using
    return-oriented programming. As ptrauth protects the return address, it
    can also serve as a replacement for CONFIG_STACKPROTECTOR, although note
    that it does not protect other parts of the stack.
    
    The new instructions are in the HINT encoding space, so on a system
    without ptrauth they execute as NOPs.
    
    CONFIG_ARM64_PTR_AUTH now not only enables ptrauth for userspace and KVM
    guests, but also automatically builds the kernel with ptrauth
    instructions if the compiler supports it. If there is no compiler
    support, we do not warn that the kernel was built without ptrauth
    instructions.
    
    GCC 7 and 8 support the -msign-return-address option, while GCC 9
    deprecates that option and replaces it with -mbranch-protection. Support
    both options.
    
    Clang uses an external assembler hence this patch makes sure that the
    correct parameters (-march=armv8.3-a) are passed down to help it recognize
    the ptrauth instructions.
    
    Ftrace function tracer works properly with Ptrauth only when
    patchable-function-entry feature is present and is ensured by the
    Kconfig dependency.
    
    Cc: Catalin Marinas <catalin.marinas@arm.com>
    Cc: Will Deacon <will@kernel.org>
    Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
    Reviewed-by: Kees Cook <keescook@chromium.org>
    Reviewed-by: Vincenzo Frascino <Vincenzo.Frascino@arm.com> # not co-dev parts
    Co-developed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
    Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
    Signed-off-by: Kristina Martsenko <kristina.martsenko@arm.com>
    [Amit: Cover leaf function, comments, Ftrace Kconfig]
    Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
    Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
---
 arch/arm64/Kconfig  | 24 +++++++++++++++++++++++-
 arch/arm64/Makefile | 11 +++++++++++
 2 files changed, 34 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 115ceea0293e..155041a5f0e4 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1499,6 +1499,8 @@ config ARM64_PTR_AUTH
 	bool "Enable support for pointer authentication"
 	default y
 	depends on !KVM || ARM64_VHE
+	depends on (CC_HAS_SIGN_RETURN_ADDRESS || CC_HAS_BRANCH_PROT_PAC_RET) && AS_HAS_PAC
+	depends on (!FUNCTION_GRAPH_TRACER || DYNAMIC_FTRACE_WITH_REGS)
 	help
 	  Pointer authentication (part of the ARMv8.3 Extensions) provides
 	  instructions for signing and authenticating pointers against secret
@@ -1506,11 +1508,17 @@ config ARM64_PTR_AUTH
 	  and other attacks.
 
 	  This option enables these instructions at EL0 (i.e. for userspace).
-
 	  Choosing this option will cause the kernel to initialise secret keys
 	  for each process at exec() time, with these keys being
 	  context-switched along with the process.
 
+	  If the compiler supports the -mbranch-protection or
+	  -msign-return-address flag (e.g. GCC 7 or later), then this option
+	  will also cause the kernel itself to be compiled with return address
+	  protection. In this case, and if the target hardware is known to
+	  support pointer authentication, then CONFIG_STACKPROTECTOR can be
+	  disabled with minimal loss of protection.
+
 	  The feature is detected at runtime. If the feature is not present in
 	  hardware it will not be advertised to userspace/KVM guest nor will it
 	  be enabled. However, KVM guest also require VHE mode and hence
@@ -1522,6 +1530,20 @@ config ARM64_PTR_AUTH
 	  but with the feature disabled. On such a system, this option should
 	  not be selected.
 
+	  This feature works with FUNCTION_GRAPH_TRACER option only if
+	  DYNAMIC_FTRACE_WITH_REGS is enabled.
+
+config CC_HAS_BRANCH_PROT_PAC_RET
+	# GCC 9 or later, clang 8 or later
+	def_bool $(cc-option,-mbranch-protection=pac-ret+leaf)
+
+config CC_HAS_SIGN_RETURN_ADDRESS
+	# GCC 7, 8
+	def_bool $(cc-option,-msign-return-address=all)
+
+config AS_HAS_PAC
+	def_bool $(as-option,-Wa$(comma)-march=armv8.3-a)
+
 endmenu
 
 menu "ARMv8.5 architectural features"
diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index dca1a97751ab..f15f92ba53e6 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -65,6 +65,17 @@ stack_protector_prepare: prepare0
 					include/generated/asm-offsets.h))
 endif
 
+ifeq ($(CONFIG_ARM64_PTR_AUTH),y)
+branch-prot-flags-$(CONFIG_CC_HAS_SIGN_RETURN_ADDRESS) := -msign-return-address=all
+branch-prot-flags-$(CONFIG_CC_HAS_BRANCH_PROT_PAC_RET) := -mbranch-protection=pac-ret+leaf
+# -march=armv8.3-a enables the non-nops instructions for PAC, to avoid the
+# compiler to generate them and consequently to break the single image contract
+# we pass it only to the assembler. This option is utilized only in case of non
+# integrated assemblers.
+branch-prot-flags-$(CONFIG_AS_HAS_PAC) += -Wa,-march=armv8.3-a
+KBUILD_CFLAGS += $(branch-prot-flags-y)
+endif
+
 ifeq ($(CONFIG_CPU_BIG_ENDIAN), y)
 KBUILD_CPPFLAGS	+= -mbig-endian
 CHECKFLAGS	+= -D__AARCH64EB__
</cut>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/2012402536.10826.1584727375244.JavaMail.javamailuser%40localhost.

------=_Part_10825_425079781.1584727374666--
