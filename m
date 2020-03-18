Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBF4KZLZQKGQEZ5HHFRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 686F618A3CC
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 21:31:20 +0100 (CET)
Received: by mail-lj1-x23a.google.com with SMTP id a11sf3934773ljn.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 13:31:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584563480; cv=pass;
        d=google.com; s=arc-20160816;
        b=Yhl9d+hYtDbyaZ2ecphLYDiUW1A0GKvPD7XF8E769mJD/T1rU95/oNkh+M0PpPptPP
         XPGUGPNf7LU4PwinAYFjkbOn2RT/x4tYeQm1FV5ywakG8Bpt+dHLcM9Cpr9d+IIirU9b
         xyYsmB0z6wwTGunXA+AIsGyZLkucz3x916oWpvIcObzbBvp6uXfDLM5LHKzOmwko98/f
         +b1Aa5E4GznUA4mNhcp/1ioNfETrLsQh/N2gFbniNHtZ8scjAZAt2MTdbvkW9pueR7um
         RpLSwL0rWguqHY9o8hVeSOQKoyz+J0hF3jNEokHfUBsxsAVjiJDdTsLmg+LgL5vDFk/n
         S3hQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=o1/wUVhpGv9417s2A/ZHacAU1XPpbIGngdcDxbxwbsg=;
        b=H16SoJUgGeDkHqTVV71QyiJKBDaj/AzEIieJh8E1G7DnZ9Nwzp/1wA9Se4dd+V+pXQ
         dTHuCx/EDQ5ftQfvIGdU0qo0qd6jp7qdfYTCwxx0d5ABGeS9+I1sLNuVG/lRA1FDVvvd
         3NS+F71H2ejrRgr4LIRUCgebYSodI4+qttNPpxoJsanACUG/Qob08nKXgKdpkvtaMAir
         IIg2pk4EvzfoUQ29Jl0MD265mV9IXJCa0jSuUsAnbivZV7aA6oJx/gWZe3UbxyRWarZz
         AMngLfxNvhsr3G8HOcw1gywrAGNrCodF3JA7/jPu0ygGwxX0Y2vL4K1v/pv9TyhWuePc
         aEuw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="oFu8/kFV";
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o1/wUVhpGv9417s2A/ZHacAU1XPpbIGngdcDxbxwbsg=;
        b=miMe1spneZ3M6BJawML5J3fSG0PBh5Zp6zI5AZxkwMFD+fokoSH9qt9qaqumWBDNL5
         PA0gZhp4VGVWsCetsZDeZoTM8ZV/BKVopXay49NlcltYhVg/5aRZpTVNjU11BtWIhu3B
         QcmGXX6eIkC5PJF0sQbCWl5SZqwyKbVi+cxMEnPv4ik7Ql4gwFzb4drtLkX/iSrm5fHT
         eKvKoqqReLIoEIGi94YkhODeoHxqjsPq2RV7g1OuHIAGhv2wHdAPRMdPA/IKWha9npcH
         c40xM4lHBKzVqQuHSMtCYzFAihmb6nMKqWEwWIejCglbJqO2/j8bK5DXUrUOYjW8+T3N
         PHqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=o1/wUVhpGv9417s2A/ZHacAU1XPpbIGngdcDxbxwbsg=;
        b=OKlc1fGtYOjJCI6VxNmv6BAlaSvefJR3gCQHnYTRp65K1MIrwImK1SRU9KGeawfsvC
         GA92gjzA+zzrvgYVl3V/eJRHNh3tEb2jqWM/Lw+DddoN6VV66hiTHFS3NpvOXe/EdY2K
         7JwA4Fa1UlBy1iwixXTB9RvF75qRvMGYZpLKU4S9Jepy2LMR96xosiUQQVU+45n4ZVL4
         noHeubVnkBxl+17rC//mhS5h8Y0sP7jCyU/kpMvh7eC4kuoNf4ZQDvZyFWi+DqYoNIMm
         C1AYCqIOURyCOnzqc/f8yBUpJnnVyyqVyY65vmp+YXGVtQGm8iQ/fkvKeIBhQq1qKrtC
         YL3A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0+lAZuXIiURGrjobXE1f25JHkrXNMSoaJ89GBmiV4MddmN5HcJ
	4WCZiYqU1v5Mq+TxdlmZeKw=
X-Google-Smtp-Source: ADFU+vtTSQoBSdn8m7QsQzyop9rJg0/LERyLpLBSuEL9r2amv4DuJAG6n8bBq/4YQUlb5EolA5oFWQ==
X-Received: by 2002:a2e:8518:: with SMTP id j24mr3552314lji.138.1584563479847;
        Wed, 18 Mar 2020 13:31:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b042:: with SMTP id d2ls24543ljl.3.gmail; Wed, 18 Mar
 2020 13:31:19 -0700 (PDT)
X-Received: by 2002:a2e:8945:: with SMTP id b5mr3441770ljk.140.1584563479212;
        Wed, 18 Mar 2020 13:31:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584563479; cv=none;
        d=google.com; s=arc-20160816;
        b=S7vSN+rkmG2p8kNuGR1PoFES5FiP9GzOWg5uQUhrff5f13W9M+pTNEBqkUYI0BOHVb
         ktZQYSdYwm5CVTvk29EyvITWZSmZlSoqfmQQxKQbfcHuQw5GGyPrVmY/9DC3dgFH/ypX
         MNPG9KvcFub5jvFE8xzHd/OihB/B9cy4oHbnhu3x12XbdfJYr8xel1kI+K2DRUQXpiB0
         fwwX1oI5KS2GkGvXJ7f+fyU3h56RBVjxbxLhZqz4xIv5mHhts8NR0cmB5WsmFpk2US6Q
         Eb3ms2hl0XF4WxtQHbhTSRHjNV5Fx6p4MXoHlQKLhTmYw/D1nCq83BAllSot8mGVVVGm
         DdXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=t5Z2vHpbg2H6fu1PEXazH1GSx+cIqoKmH7badmOhRCo=;
        b=JXdFbPVTo9nlBYDaYc48JDX4c7S6el4RwGXe5uiL6jXU5WkyJMC3leN4NWCALcIX0Q
         stgtSxNJgotzQjJloAUlgnm7jInRDgXJaBGYewhwm/VXHuos2+K4MMSHcuiwCdrUg0vw
         BnjNPZSKMKOOuxr+ydxqHkXMdNl1Ad/sjPuqUnZ5F8YjnKxcetzwU13oBEGucTc3DzsR
         qAjMRWvylbXQvrXknuziu9nfq6FQQjEdZmN8fBZrzJSp35C6/vioYL46OpOuwkLGZsER
         GjWnYJ817/1atr4HHHXo1cWQHUE9du/qpklinrWn6LHu0yG/DB/7pDgXyGEaTVX9dcBB
         teug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="oFu8/kFV";
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id a21si1425lff.3.2020.03.18.13.31.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2020 13:31:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id f7so4928280wml.4
        for <clang-built-linux@googlegroups.com>; Wed, 18 Mar 2020 13:31:19 -0700 (PDT)
X-Received: by 2002:a05:600c:258:: with SMTP id 24mr6883927wmj.59.1584563478393;
        Wed, 18 Mar 2020 13:31:18 -0700 (PDT)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id d63sm5249538wmd.44.2020.03.18.13.31.17
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 18 Mar 2020 13:31:17 -0700 (PDT)
From: ci_notify@linaro.org
Date: Wed, 18 Mar 2020 20:31:16 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <1448168361.10592.1584563477728.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-aarch64-next-allnoconfig - Build # 11 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_10591_227449451.1584563476863"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-aarch64-next-allnoconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b="oFu8/kFV";       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::344
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

------=_Part_10591_227449451.1584563476863
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-master-aarch64-next-allnoconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-master-aarch64-next-allnoconfig

Culprit:
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
</cut>

First few build errors in logs:
00:00:38 ./include/linux/elf.h:79:19: error: redefinition of 'arch_parse_elf_property'
00:00:38 make[1]: *** [arch/arm64/kernel/asm-offsets.s] Error 1
00:00:38 make: *** [prepare0] Error 2
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
rr[linux_branch]="58fe03d6dec908a1bec07eea7e94907af5c07eec"

Results regressed to (for first_bad == ab7876a98a2160092133de4c648e94b18bc3f139)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
23

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

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allnoconfig/11/artifact/artifacts/build-ab7876a98a2160092133de4c648e94b18bc3f139/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allnoconfig/11/artifact/artifacts/build-fe0f67660ee9c99408be5261ae045f8b41953b05/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allnoconfig/11/

Reproduce builds:
<cut>
mkdir investigate-linux-ab7876a98a2160092133de4c648e94b18bc3f139
cd investigate-linux-ab7876a98a2160092133de4c648e94b18bc3f139

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allnoconfig/11/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allnoconfig/11/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allnoconfig/11/artifact/artifacts/test.sh
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

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-aarch64-next-allnoconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allnoconfig/11/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allnoconfig/11/consoleText

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1448168361.10592.1584563477728.JavaMail.javamailuser%40localhost.

------=_Part_10591_227449451.1584563476863--
