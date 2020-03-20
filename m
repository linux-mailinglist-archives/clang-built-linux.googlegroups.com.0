Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBCVG2DZQKGQEIVO3FZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A7FC18C461
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 01:49:15 +0100 (CET)
Received: by mail-wr1-x439.google.com with SMTP id c6sf1829099wrm.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 17:49:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584665355; cv=pass;
        d=google.com; s=arc-20160816;
        b=Gp6vQtve94UZgZFVIaVYaUZwKJDmEd4jf/xLDoIldjH3jmQFeKZN1br92ikeSBrCu6
         TOE0HKaEIDKVGwItE65fQ2HbUpnKW3xwkWRlsHC7RgJinNzLKRIff1qDXA/rLqdlVuCN
         qJJFktGS38ywFTQq122ZdKrIaOaD2txHPzOykX8ucgvVuoUMBHyCwiwfwJ3zMLj1w59L
         qVjAl22UH3zccGF8MIhQBIpoJFn2Yiu48fvM69FUEVX3q2b9WAyYZ9k/E6tljJ1JqxZM
         l4Yxr0vrch+zh0QksOKEw92TEYH98Ydp5AMJNkhWyxkPgk4thJLuLJrLtcvEB3Ick+HT
         hy+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=4GFG/1xprKSNK6Bbju4L0a3ezcF5A83un8F7UIFyhmY=;
        b=Kax/BB0QtQD3Jm/qCKiPUJkS/SrhoMlyG5/3WmVB4699Mx1d8zNzdW8il5o26e/O/S
         D6WWLnwNoZMM1nBKWUpFKEcOBsZL3lhjAN7eyiOYexF+M+bt5GVEh8LZqlQxeb45gUTZ
         4aLFfIntg+nWEmdvU6D0k3xtiVH6GSOtPlS4pWaTr3qM2QzK0v4Z9hLrlOFu5ifUans0
         vjR0KuGrZJUBUH6fohW9aFhiaBXcfTLtVOheNsFkJoDrBP6L0OvsnD00Fd2YD1TCTcps
         maK6v7gYMmw1562XT2CdKsyEQQXSSdZ3F+9uIXOK945R4vaegrHurcWPS5++HT+6nlyq
         CZbQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="Ys2sg/ZB";
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4GFG/1xprKSNK6Bbju4L0a3ezcF5A83un8F7UIFyhmY=;
        b=Z75/0M0PNbuz9yfURCyOdz+BXnxnLf9qEqUFJGFB6mwlyX2MTMWvxysq4aQqq1Ags+
         Td0AD5Sbp7MX2aI3LDg/772FGMo6M05Cu3scP/akodCc/fz2Q0n/+ELzZzTg72M5yaJ6
         i8JHZE58A2B3U5co75iHRHPwZpMo4x2XZ6Q9PXzvku1my6zVamtQlrM/GF2xrUNH2uvm
         kbMf1ED65PgEwt+TuwdWsvSyBARYf/UUJoy6Z4yXQRwFsZVnEJn97V0/JuNyjBbTDV1m
         souSpSlB5ew7ueR2VMxXA0n10Df8rAG7kzLQZsMlQ2dyWDWGEFFsAQFG0a4fB+ot4nDu
         bXkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4GFG/1xprKSNK6Bbju4L0a3ezcF5A83un8F7UIFyhmY=;
        b=mL6d0FifGk+6kc74QoIDB3iopQ+s+/zSz1yVAsHGntPKFgdECetQqzhVVuOayF4ZMK
         BC6au3nNpasS7VX+BqaUXmrgAjHuKCfj+LzTFTgZ/nt1zdFsnfCxcu/cFxsTrJZLftIm
         NSDQxQjzz0pkOehGQ7JT1t+pRPyWO9q1LS8P56f6iB7KAssnKSEUc7y3/SM/xQ8JKv9T
         QIE0xOvQIScntcsm6IIG0hNjYqAnM/BTAO8snH2ZSnYuK9EzuFg3r722m2cgVQZA9LDB
         4paFji4C+wZfi/cXZ6Sg5JJtrcKoBG9vNY5LuengwJuXCyRHZ88rktErAUanFFcxhmwJ
         duoA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1eTSRFAX++ZZrL1aX6xPDnZKWdEkvJO37dsEUwjr5fgr647Rp7
	W0W/g+Kkkz1zfWcziF264TQ=
X-Google-Smtp-Source: ADFU+vsTTyWKNKSPUNsXOsYOY4eZomLPfTopG+dUdluXk/hg8IFmoHz4hCqMDj7f8ERBLWMle2HXCA==
X-Received: by 2002:a1c:408b:: with SMTP id n133mr6396429wma.182.1584665355041;
        Thu, 19 Mar 2020 17:49:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:d4c4:: with SMTP id w4ls1764995wrk.8.gmail; Thu, 19 Mar
 2020 17:49:14 -0700 (PDT)
X-Received: by 2002:adf:df8f:: with SMTP id z15mr7321757wrl.184.1584665354469;
        Thu, 19 Mar 2020 17:49:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584665354; cv=none;
        d=google.com; s=arc-20160816;
        b=SrdAeaJnaSQhbk7eMqr0Ts5YOvMGkWXRRJ1FuYUHFFLv8ftcJmUeb5dW54yMLcu0JS
         8WV3UrYdJWTVOkL2KBmenqidWOqUSQTopAQKpv8Cu4eRgzgVPVlL2nEEgS8Bqf6PkV4r
         bk7E4mGZTVGB0jIc73p0ybqCLkEnIiwreB/RC5scbRbCGX340vONv159ERVF8IDTOf8A
         OaD60gX861DKrt7hCojULaA48prkczrYdJPcVP+c6ywiTZU+oc5/iFZIrjUVcXdGuq+g
         Q5PjO05oGEHNKgBBofSF9lc3Xw1E4MJGz6y7NwAmCkcy7BU79/XiqXD2fyW5YMxOhyQC
         9Y7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=NNx/s5+z/UR+M89VYVA46VQuB+zk/1gjY8q2D53FsPM=;
        b=ABIcuEPaOm/uclQg576ykDuO7vGswZ6jB9QW3O9X77ovVpoGdK6NfWvxF5dMEgx6qS
         HR2T20d1Q9hWd/xi+1ffdkyzyHzx6CM5GVSlN/ZUBg0hQUw+7NWsM/TqHnO9Lv7UPRGg
         n2umObd892QTvy4Xo6TluF6phZViwlRAeGAWa0pIJQdb9pxkD/Dw0l2vpE91qAwxmGMg
         FNcAGuC9aeKbFUB2XCFXIog1oyOze2x80oqL5sRYs12e4B39eKwuNJ9uloDSM8QR/rFm
         fPoC0n8mX54BSAn4LZocwRQ/IgDiVMh6VSM6mKmg+noEBpmw7uHEsULzhWZYzrcTHSww
         fSMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="Ys2sg/ZB";
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id q205si227011wme.4.2020.03.19.17.49.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2020 17:49:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id 25so4832984wmk.3
        for <clang-built-linux@googlegroups.com>; Thu, 19 Mar 2020 17:49:14 -0700 (PDT)
X-Received: by 2002:a1c:9a43:: with SMTP id c64mr5757225wme.173.1584665353847;
        Thu, 19 Mar 2020 17:49:13 -0700 (PDT)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id b15sm5744919wru.70.2020.03.19.17.49.12
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 19 Mar 2020 17:49:13 -0700 (PDT)
From: ci_notify@linaro.org
Date: Fri, 20 Mar 2020 00:49:12 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <420016521.10716.1584665353178.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-aarch64-next-defconfig - Build # 21 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_10715_799666738.1584665352198"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-release-aarch64-next-defconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b="Ys2sg/ZB";       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::342
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

------=_Part_10715_799666738.1584665352198
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-release-aarch64-next-defconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-release-aarch64-next-defconfig

Culprit:
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
</cut>

First few build errors in logs:
00:00:41 clang-10: error: assembler command failed with exit code 1 (use -v to see invocation)
00:00:41 make[1]: *** [arch/arm64/kernel/vdso/vgettimeofday.o] Error 1
00:00:41 make: *** [vdso_prepare] Error 2
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

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-defconfig/21/artifact/artifacts/build-74afda4016a7437e6e425c3370e4b93b47be8ddf/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-defconfig/21/artifact/artifacts/build-c2d920bf1fffc3a61cb77db24464caf39496b32d/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-defconfig/21/

Reproduce builds:
<cut>
mkdir investigate-linux-74afda4016a7437e6e425c3370e4b93b47be8ddf
cd investigate-linux-74afda4016a7437e6e425c3370e4b93b47be8ddf

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-defconfig/21/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-defconfig/21/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-defconfig/21/artifact/artifacts/test.sh
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

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-release-aarch64-next-defconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-defconfig/21/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-defconfig/21/consoleText

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/420016521.10716.1584665353178.JavaMail.javamailuser%40localhost.

------=_Part_10715_799666738.1584665352198--
