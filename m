Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBWPU2P3AKGQETWM452I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 68BDC1EA43E
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Jun 2020 14:53:46 +0200 (CEST)
Received: by mail-lf1-x137.google.com with SMTP id 125sf2186322lfk.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Jun 2020 05:53:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591016026; cv=pass;
        d=google.com; s=arc-20160816;
        b=zPioRzMWpIlljWZXAklnNhrLgJSboDmG0/j7kyrrifHFQ40f8ISjdPWyrjFdoBY1ku
         xWATL7UP2TYUeaXQqSDMJAhjp2yI95x5KwK3IqKgI+GsNGtQLaVJbTuD9og3P1R49n73
         QojpnH4dsUgl1CY2+wAp9sjtC+YvYJzk6n7f6H1vuZ245qEZyVI8JJmhUmwvylDWQB4T
         o2YAwhjxe416XYDu+boRnh99BEUs2PY6tw7kZlv1Vhhl6dggCZadrVJq4WbL52OZsKto
         b8Vke43e9n4mD2Tn7IDXFY4yABWnMMTgIEvqw/k4zZrd5qu/+Bjjq6gIg31h6DoqMvEr
         9UGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:references
         :in-reply-to:message-id:to:date:from:sender:dkim-signature;
        bh=QktD0KSb/mTO7PUiOzdz6F3BR4kOX7Db6NdZMjZ5o8Y=;
        b=jSpNN8HNCOajGo7mRrdWaFqFLwnxCX3AEOPViX35GuwG+D8XIROIYCamGtNM0Bzu/W
         npX05NHgE1weqwCTTRPdF7Uk++XIPrDF8XfgvyqxrbA+08B3GULeL6t13As7x4CaKRvy
         3T3J/cvdepnElGp6kvKcAy1U2kwdNd1ngYZWjdfUclcSUMcMXRhbsdX1Rhboh0XHZCoM
         4Kkz7UQyGHAPk+s68LJZuLz8MpJqm1Dfmx1vVRRUV7oI/4iaalBCIy4t6JudSuMkLGTY
         tDgCluqs15K1u0lsyg0qFGBWXUYekE+Wk03Bf4f3nCgE62nV86veU2DrYAKwLZwDNCVo
         Ymxw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=vrfibYOO;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QktD0KSb/mTO7PUiOzdz6F3BR4kOX7Db6NdZMjZ5o8Y=;
        b=Q/uqjgOevIVhinu+Raa5ENJOfbEZDNYND8PwzaZpoju/gbFVMo21gf1Lomx5+RWRZZ
         k60B24qMpHVetB2vTb1XXYpw/pZk33OFbm25OVp6FtDrYxwb7asA7ZbTGtnlLvNLb7RN
         DkI1slbKzU/EGCuQ4XgicTluvNy7fUQFGK4MJcV/Kg0R/GF/0PYn3/6UfCusNoZOklbi
         JWaS6WIHzlZtmfz9w8DoMVIYrdJPRGnwEmQiPVvxgDK0+4XGQZxDH2yhk8JkCwjzdYD3
         rWTERdOSOW/CMemk0Gu4F4UpHVn0Ix0JghZSdm4+acNK2dpu3W9PxaHXoxx02WODihOr
         AeSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QktD0KSb/mTO7PUiOzdz6F3BR4kOX7Db6NdZMjZ5o8Y=;
        b=tGaMQc+uMwHKSX8fcXh0A60xSv9eVUHadGTfEJMlWvGkUXFhipqi+PkGn5Uzkr6iTo
         cvsYRD2bdVBAaoZ1iVEkQ8QsdFOKBcCoCWxAuddwsu0GyzQ/bdkaESDus87UQXxYXuHx
         Z4KuYfwjU053JvoGrEHWATwoICm+6aJjr1ep7bpWyj4ygKgvqW0hPgxM06fP7XP9p/fR
         eDvAKnuUEMe6n0wirBnKmE/0n3OAM4sOsHkj4wcQ3KkYgZtvaGXUjGve841I9ImCNYFq
         toTqoAwqx0jzX8wRKpg7BShntSK119K3da1e+SU0H3HA24iUifBNdH/rfnE0Ix0twFFf
         o54A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532RgYGu4F2VRT5shVbB5XSB7Lo12xcvTYQOpn0kqpk7Ff2HZ6g7
	xTawhUt9OOPfzq8jqgneJf4=
X-Google-Smtp-Source: ABdhPJzFGi+7av56tqkIEmrDxjZ69vVxc2K1Di4QXVg/BtGuC1LRur/KqzZTC/aVqpaFXDmOzkw6pA==
X-Received: by 2002:a05:651c:512:: with SMTP id o18mr4019886ljp.226.1591016025922;
        Mon, 01 Jun 2020 05:53:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:92d6:: with SMTP id k22ls213492ljh.4.gmail; Mon, 01 Jun
 2020 05:53:45 -0700 (PDT)
X-Received: by 2002:a05:651c:311:: with SMTP id a17mr5579707ljp.322.1591016025364;
        Mon, 01 Jun 2020 05:53:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591016025; cv=none;
        d=google.com; s=arc-20160816;
        b=0YMPwk7OIC92ryyTRO2QYjwtM0e+/lHH8nlZPIr2Y9B2ZwawDsHE0C81cSE6Wwmjt/
         Qe/pSWRYdkOEkfpBCRdDxFSPVhHI3nUS+lyzFf2p6GtYpwPD7CPGsqICLItlM/xcBiIJ
         b+wNvlojV4udtRKwopTtiUuZ2Pp+quhJ9rfFu63E1R8HbgyBeBoj7cz4CCDYC2ytRfjX
         ns9i8JLriIKhi/Mn9YS39MCG7NmYb/vvCCgTbqMbiJgf+I8wkUOhMQMqg7IaalhEoFbX
         MjrTR05nfNqSOcjVPQuAGn8oFMYviupet3xG0D5KngsqCZdcv26b6upRxEKVbXJgtP5E
         c0xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:references:in-reply-to:message-id:to:date:from
         :dkim-signature;
        bh=RJ+8F6RHQ7UAZ2jSsHdx9hjyY2sUciZ4Am+5dW4Nk0c=;
        b=ZpDDEpnhpO/U5nB86yumiFsBD1EEcrN6tJGDntEsS1H8Bko+GuK/QbhyiOuWXmR+eh
         wxPUq08npJowo0gtwP3LWUTlN/PXtOb3J+a0WoEV0WGHmSyrop/jzmlXBTOeog9sH60e
         kxgNy1meCp2vys3VLUBcJT7WraezBEU05cUxi45qgC6xzZmZwaCYUKR6vd8mwaBlqO9m
         sJUmv3/TEXLVIx/gqet168WoPDtfMCsqIMXaJHHLTzeUqXj16iPrhFbyGeVHGDOhCYH3
         g7jrOqI0h2SFJR8AkX2jkhj8BMYfVN5CzNOjEGbOsWCJX9bfLeo06OIE622rVNJAfiDK
         1Ogw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=vrfibYOO;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id i17si571831ljj.5.2020.06.01.05.53.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Jun 2020 05:53:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Received: by mail-wm1-x341.google.com with SMTP id f185so11253929wmf.3
        for <clang-built-linux@googlegroups.com>; Mon, 01 Jun 2020 05:53:45 -0700 (PDT)
X-Received: by 2002:a7b:c393:: with SMTP id s19mr10275964wmj.92.1591016024630;
        Mon, 01 Jun 2020 05:53:44 -0700 (PDT)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id j2sm21589019wre.52.2020.06.01.05.53.43
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Mon, 01 Jun 2020 05:53:44 -0700 (PDT)
From: ci_notify@linaro.org
Date: Mon, 1 Jun 2020 12:53:43 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <356077820.975.1591016024123.JavaMail.javamailuser@localhost>
In-Reply-To: <895269119.532.1590801549392.JavaMail.javamailuser@localhost>
References: <895269119.532.1590801549392.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-aarch64-next-allnoconfig - Build # 2 - Fixed!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_974_764620569.1591016023580"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-release-aarch64-next-allnoconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=vrfibYOO;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::341
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

------=_Part_974_764620569.1591016023580
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-release-aarch64-next-allnoconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/gnu-master-aarch64-next-allnoconfig
 - tcwg_kernel/gnu-release-aarch64-next-allnoconfig
 - tcwg_kernel/llvm-master-aarch64-next-allnoconfig
 - tcwg_kernel/llvm-release-aarch64-next-allnoconfig

Culprit:
<cut>
commit ab7876a98a2160092133de4c648e94b18bc3f139
Author: Dave Martin <Dave.Martin@arm.com>

    arm64: elf: Enable BTI at exec based on ELF program properties
</cut>

Results regressed to (for first_bad == ab7876a98a2160092133de4c648e94b18bc3f139)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
23
# First few build errors in logs:
# 00:00:30 ./include/linux/elf.h:79:19: error: redefinition of 'arch_parse_elf_property'
# 00:00:30 make[1]: *** [arch/arm64/kernel/asm-offsets.s] Error 1
# 00:00:30 make: *** [prepare0] Error 2

from (for last_good == fe0f67660ee9c99408be5261ae045f8b41953b05)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
453
# linux build successful:
all
# linux boot successful:
boot

Artifacts of last_good build: https://ci.linaro.org/jenkins/job/tcwg_kernel-llvm-bisect-llvm-release-aarch64-next-allnoconfig/2/artifact/artifacts/build-fe0f67660ee9c99408be5261ae045f8b41953b05/
Artifacts of first_bad build: https://ci.linaro.org/jenkins/job/tcwg_kernel-llvm-bisect-llvm-release-aarch64-next-allnoconfig/2/artifact/artifacts/build-ab7876a98a2160092133de4c648e94b18bc3f139/
Build top page/logs: https://ci.linaro.org/jenkins/job/tcwg_kernel-llvm-bisect-llvm-release-aarch64-next-allnoconfig/2/

Configuration details:
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
rr[linux_branch]="75caf310d16cc5e2f851c048cd597f5437013368"

Reproduce builds:
<cut>
mkdir investigate-linux-ab7876a98a2160092133de4c648e94b18bc3f139
cd investigate-linux-ab7876a98a2160092133de4c648e94b18bc3f139

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/jenkins/job/tcwg_kernel-llvm-bisect-llvm-release-aarch64-next-allnoconfig/2/artifact/artifacts/manifests/build-baseline.sh --fail
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/jenkins/job/tcwg_kernel-llvm-bisect-llvm-release-aarch64-next-allnoconfig/2/artifact/artifacts/manifests/build-parameters.sh --fail
curl -o artifacts/test.sh https://ci.linaro.org/jenkins/job/tcwg_kernel-llvm-bisect-llvm-release-aarch64-next-allnoconfig/2/artifact/artifacts/test.sh --fail
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

cd linux

# Reproduce first_bad build
git checkout --detach ab7876a98a2160092133de4c648e94b18bc3f139
../artifacts/test.sh

# Reproduce last_good build
git checkout --detach fe0f67660ee9c99408be5261ae045f8b41953b05
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-release-aarch64-next-allnoconfig

Artifacts: https://ci.linaro.org/jenkins/job/tcwg_kernel-llvm-bisect-llvm-release-aarch64-next-allnoconfig/2/artifact/artifacts/
Build log: https://ci.linaro.org/jenkins/job/tcwg_kernel-llvm-bisect-llvm-release-aarch64-next-allnoconfig/2/consoleText

Full commit:
<cut>
commit ab7876a98a2160092133de4c648e94b18bc3f139
Author: Dave Martin <Dave.Martin@arm.com>
Date:   Mon Mar 16 16:50:47 2020 +0000

    arm64: elf: Enable BTI at exec based on ELF program properties
    
    For BTI protection to be as comprehensive as possible, it is
    desirable to have BTI enabled from process startup.  If this is not
    done, the process must use mprotect() to enable BTI for each of its
    executable mappings, but this is painful to do in the libc startup
    code.  It's simpler and more sound to have the kernel do it
    instead.
    
    To this end, detect BTI support in the executable (or ELF
    interpreter, as appropriate), via the
    NT_GNU_PROGRAM_PROPERTY_TYPE_0 note, and tweak the initial prot
    flags for the process' executable pages to include PROT_BTI as
    appropriate.
    
    Signed-off-by: Mark Brown <broonie@kernel.org>
    Signed-off-by: Dave Martin <Dave.Martin@arm.com>
    Reviewed-by: Kees Cook <keescook@chromium.org>
    Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
---
 arch/arm64/Kconfig           |  3 +++
 arch/arm64/include/asm/elf.h | 50 ++++++++++++++++++++++++++++++++++++++++++++
 arch/arm64/kernel/process.c  | 19 +++++++++++++++++
 include/uapi/linux/elf.h     |  6 ++++++
 4 files changed, 78 insertions(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 0b30e884e088..8a15bc68dadd 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -9,6 +9,7 @@ config ARM64
 	select ACPI_MCFG if (ACPI && PCI)
 	select ACPI_SPCR_TABLE if ACPI
 	select ACPI_PPTT if ACPI
+	select ARCH_BINFMT_ELF_STATE
 	select ARCH_CLOCKSOURCE_DATA
 	select ARCH_HAS_DEBUG_VIRTUAL
 	select ARCH_HAS_DEVMEM_IS_ALLOWED
@@ -33,6 +34,7 @@ config ARM64
 	select ARCH_HAS_SYSCALL_WRAPPER
 	select ARCH_HAS_TEARDOWN_DMA_OPS if IOMMU_SUPPORT
 	select ARCH_HAS_TICK_BROADCAST if GENERIC_CLOCKEVENTS_BROADCAST
+	select ARCH_HAVE_ELF_PROT
 	select ARCH_HAVE_NMI_SAFE_CMPXCHG
 	select ARCH_INLINE_READ_LOCK if !PREEMPTION
 	select ARCH_INLINE_READ_LOCK_BH if !PREEMPTION
@@ -62,6 +64,7 @@ config ARM64
 	select ARCH_INLINE_SPIN_UNLOCK_IRQRESTORE if !PREEMPTION
 	select ARCH_KEEP_MEMBLOCK
 	select ARCH_USE_CMPXCHG_LOCKREF
+	select ARCH_USE_GNU_PROPERTY if BINFMT_ELF
 	select ARCH_USE_QUEUED_RWLOCKS
 	select ARCH_USE_QUEUED_SPINLOCKS
 	select ARCH_SUPPORTS_MEMORY_FAILURE
diff --git a/arch/arm64/include/asm/elf.h b/arch/arm64/include/asm/elf.h
index b618017205a3..4f00d50585a4 100644
--- a/arch/arm64/include/asm/elf.h
+++ b/arch/arm64/include/asm/elf.h
@@ -114,7 +114,11 @@
 
 #ifndef __ASSEMBLY__
 
+#include <uapi/linux/elf.h>
 #include <linux/bug.h>
+#include <linux/errno.h>
+#include <linux/fs.h>
+#include <linux/types.h>
 #include <asm/processor.h> /* for signal_minsigstksz, used by ARCH_DLINFO */
 
 typedef unsigned long elf_greg_t;
@@ -224,6 +228,52 @@ extern int aarch32_setup_additional_pages(struct linux_binprm *bprm,
 
 #endif /* CONFIG_COMPAT */
 
+struct arch_elf_state {
+	int flags;
+};
+
+#define ARM64_ELF_BTI		(1 << 0)
+
+#define INIT_ARCH_ELF_STATE {			\
+	.flags = 0,				\
+}
+
+static inline int arch_parse_elf_property(u32 type, const void *data,
+					  size_t datasz, bool compat,
+					  struct arch_elf_state *arch)
+{
+	/* No known properties for AArch32 yet */
+	if (IS_ENABLED(CONFIG_COMPAT) && compat)
+		return 0;
+
+	if (type == GNU_PROPERTY_AARCH64_FEATURE_1_AND) {
+		const u32 *p = data;
+
+		if (datasz != sizeof(*p))
+			return -ENOEXEC;
+
+		if (system_supports_bti() &&
+		    (*p & GNU_PROPERTY_AARCH64_FEATURE_1_BTI))
+			arch->flags |= ARM64_ELF_BTI;
+	}
+
+	return 0;
+}
+
+static inline int arch_elf_pt_proc(void *ehdr, void *phdr,
+				   struct file *f, bool is_interp,
+				   struct arch_elf_state *state)
+{
+	return 0;
+}
+
+static inline int arch_check_elf(void *ehdr, bool has_interp,
+				 void *interp_ehdr,
+				 struct arch_elf_state *state)
+{
+	return 0;
+}
+
 #endif /* !__ASSEMBLY__ */
 
 #endif
diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
index 00626057a384..b8e3faa8d406 100644
--- a/arch/arm64/kernel/process.c
+++ b/arch/arm64/kernel/process.c
@@ -11,6 +11,7 @@
 
 #include <linux/compat.h>
 #include <linux/efi.h>
+#include <linux/elf.h>
 #include <linux/export.h>
 #include <linux/sched.h>
 #include <linux/sched/debug.h>
@@ -18,6 +19,7 @@
 #include <linux/sched/task_stack.h>
 #include <linux/kernel.h>
 #include <linux/lockdep.h>
+#include <linux/mman.h>
 #include <linux/mm.h>
 #include <linux/stddef.h>
 #include <linux/sysctl.h>
@@ -654,3 +656,20 @@ asmlinkage void __sched arm64_preempt_schedule_irq(void)
 	if (system_capabilities_finalized())
 		preempt_schedule_irq();
 }
+
+#ifdef CONFIG_BINFMT_ELF
+int arch_elf_adjust_prot(int prot, const struct arch_elf_state *state,
+			 bool has_interp, bool is_interp)
+{
+	if (is_interp != has_interp)
+		return prot;
+
+	if (!(state->flags & ARM64_ELF_BTI))
+		return prot;
+
+	if (prot & PROT_EXEC)
+		prot |= PROT_BTI;
+
+	return prot;
+}
+#endif
diff --git a/include/uapi/linux/elf.h b/include/uapi/linux/elf.h
index 20900f4496b7..c6dd0215482e 100644
--- a/include/uapi/linux/elf.h
+++ b/include/uapi/linux/elf.h
@@ -448,4 +448,10 @@ typedef struct elf64_note {
   Elf64_Word n_type;	/* Content type */
 } Elf64_Nhdr;
 
+/* .note.gnu.property types for EM_AARCH64: */
+#define GNU_PROPERTY_AARCH64_FEATURE_1_AND	0xc0000000
+
+/* Bits for GNU_PROPERTY_AARCH64_FEATURE_1_BTI */
+#define GNU_PROPERTY_AARCH64_FEATURE_1_BTI	(1U << 0)
+
 #endif /* _UAPI_LINUX_ELF_H */
</cut>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/356077820.975.1591016024123.JavaMail.javamailuser%40localhost.

------=_Part_974_764620569.1591016023580--
