Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBMXLZKEQMGQEUP62EJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63d.google.com (mail-ej1-x63d.google.com [IPv6:2a00:1450:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8963C400872
	for <lists+clang-built-linux@lfdr.de>; Sat,  4 Sep 2021 01:54:26 +0200 (CEST)
Received: by mail-ej1-x63d.google.com with SMTP id yz13-20020a170906dc4d00b005c61ad936f0sf297553ejb.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 03 Sep 2021 16:54:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630713266; cv=pass;
        d=google.com; s=arc-20160816;
        b=jgyVna3+IqONI3kLwy/TlNiSZUGg1psMPE3ilDXF9DLxe0n4aeH8bHXCL83nHvxhcP
         XjHJ0iODrIVGIl3VGJp60xX6irG5XoFJ/SGwJKupgrimyPJrqEcniuvUcO8UDeS04NlV
         wxVYnwU1HmjfdrQT/dzxF2WiFSQZoyH9M6gzLfh4S9fwB+N+Th1pgKC92Ug7IQOEy8Sr
         /f1f0IaIsZf4pvye2bVJAIbbqgWXSdZ1nRvHZ+fA+wvxLDVZicS4JS0J02U+RL9ZitgY
         L5NLhSAj9BWdPFliTwzQ/oW2cL3Sg2OJgTMz+c3mJPXmoia+Ii1QfCvxDn7TCJtG7BUx
         qcyg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=XWfSVGiZun1RIixiLs0yRy6+R9LL5ZWjmzQO4PR5KFQ=;
        b=EbJeyTJTGhtQgPTwtbcYhEljBlVOp3ySuq0za/jgBp2NBsbTx9vXzzdJq3eKikb7hN
         EqZlhnS9VToOOvEfonY7KYLxMvDhmzIV5VeNhdG7YFOd7tVLHc/aEB9NuQgXPNWwTuoh
         3eEeaj+KSXKMMv0c6DDKEqShW8tDIA1uG+g08bH3JkF4Jhtp3E8jJdMzBemw8DVbZNR7
         Zzq+laS5XYy15rmXcRTLSiftq/pjmkk8cDyTG29cjPd6+oaSFAIYIRyj/kosvGslCcWt
         GfaottFP+dc2r65+dYd41M4sKNMNK0ZoTHmThCmQ74Fzk53tXJznkGbA9163UMSOSZIw
         T09Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=sZxAGbpR;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::329 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XWfSVGiZun1RIixiLs0yRy6+R9LL5ZWjmzQO4PR5KFQ=;
        b=NdvZwnghwpUJpHEgS19H/wVOOZQkgz0zshyN4G5KJvF7xVgGgj+1cRDcUrZsrf8uiY
         WYQa/P6ztIOrQWWhWmljkIhJUWO7ZiBalaqInTpOfck2rzUVPFVaQNIFu30sTBCeJxv5
         Z4W2jXf3C+/VYOCcAM1hEX6DNUvq1vONuxqT/aFzZDRbMqx0vy/rhOEhaitW1G+beRic
         CCyeZo0H4AxIrtZ0H2licXumWxhuE83hACZ5y/Cifto9HBlcvydtJme8V6wPkihe7GqP
         KrcObzA6Bet8v0Vw7KLFPeFvL6fqVSW8RGUsOM7RuEXImuNIUm4YL40SF968yJjbHMAs
         Dpag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XWfSVGiZun1RIixiLs0yRy6+R9LL5ZWjmzQO4PR5KFQ=;
        b=Yn6tVsIloKw8EFvZf+r1JMbiMZAaLTBhhMjHbxvlj+KML+XWtIAW4SouWp9FZYLScY
         y9Q5Ty1JXDmgvMYLB/jwlW0yRRytn5c0wrrEsls06d/WtvrypzKur+8NLtVZc1ARdZLS
         7U/CcdV3dBbrVRQIH/xRdGML4K8KHUV2OxiKjvPSaxScemK/BD9aql7hL7OQRWeLjDNo
         iAQcewZ161nyxW14uFVXHbCSUX7c4BykZQXKQMqfVqX1d0TccPkJ/mwpgyBNiqhL68PL
         iHIYg1THpT7XeEg8d3mRl6WYnY3clSjEhEnVeYOS3g3QAT2K20JzvW3ayOB6dbVxFRCR
         db3A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532SvdiJJByfuFBSkt3C7lcPJZhYmSCxlXsEMNNdPknZbj5YmJrA
	ufqKPvzreEsi6ZjNWyclOvs=
X-Google-Smtp-Source: ABdhPJxwO0v+HvcOpG7AGVKEbRGYHPmkOCmPKQdP6qsEtZu1LaY/Xb3ImuWzMNpm011KW3upz28hqw==
X-Received: by 2002:a17:906:686:: with SMTP id u6mr1388542ejb.569.1630713266236;
        Fri, 03 Sep 2021 16:54:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:f98c:: with SMTP id li12ls395976ejb.1.gmail; Fri, 03
 Sep 2021 16:54:25 -0700 (PDT)
X-Received: by 2002:a17:906:114f:: with SMTP id i15mr1495948eja.534.1630713265335;
        Fri, 03 Sep 2021 16:54:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630713265; cv=none;
        d=google.com; s=arc-20160816;
        b=u9ltGFVwDv1pHziPUmHkPxj/NWsqV1YrBg+NzWEyLyDu7Ed+Q54OierY03J7+0JBKl
         FwJ5qAYdVACH2vr70b1gUldFfbXVEPqQn7NtGYEDlIVHLZTU9tuVGeC4jo/81uh+8BGU
         adkhEkxFQDyaT5CjYcK7ghJFPj+2CaMAlGhFh/Yf5xBDduj7ig40COy5AC6lGgb75ugu
         1sD63mnV6S1DEkuAiqwcXnr7DMLpTtTvSp30TrsZb6kaauvmifG/GpJEtO3+e5usSPh3
         ipV9y+NzI0rxL42ikW8HAfqN1qO143r2oWXKbOc4M8qccVwx2Sqf+7BsOWcxW4z19gFV
         meVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=ixMo88ax5CbzOOCze3jHfsPXRM2Jc++CyWL+I3fTmg0=;
        b=vNWAe3dJXbfW2So/N3K8Q0JTcOTZEfMS2wKVVTFKn2SWXStk5477ESk01M6xKoMAAE
         85U8noeMsGEtmiPc6EqjvfsqiBJjWXwqjqrZ8zQ4X6wkC8x/rMJamivB9JWeREuL8mgH
         M8ZagNzglqPv22spSJtOrepRAb93n1SvvOZTVlxdfMJN9fRfIHJpfCvd8vfMJhucJcu/
         KVDvIHZZtK010GaW1tfPinMyK4+eGlJ4dRakhMw2H+skBaTiQv23cbxRRnLDubcP1gyT
         UNDmdYoP7V24aV27VBAm79bmpSr8Slb/fILEb7eXwFGmyhjcSchUmXWiR1wnx8xnri5r
         9dlg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=sZxAGbpR;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::329 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com. [2a00:1450:4864:20::329])
        by gmr-mx.google.com with ESMTPS id z12si41842edq.1.2021.09.03.16.54.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Sep 2021 16:54:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::329 as permitted sender) client-ip=2a00:1450:4864:20::329;
Received: by mail-wm1-x329.google.com with SMTP id x2-20020a1c7c02000000b002e6f1f69a1eso547929wmc.5
        for <clang-built-linux@googlegroups.com>; Fri, 03 Sep 2021 16:54:25 -0700 (PDT)
X-Received: by 2002:a1c:f002:: with SMTP id a2mr964256wmb.79.1630713264895;
        Fri, 03 Sep 2021 16:54:24 -0700 (PDT)
Received: from 172.17.0.5 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id w29sm596309wra.88.2021.09.03.16.54.24
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Sep 2021 16:54:24 -0700 (PDT)
From: ci_notify@linaro.org
Date: Fri, 3 Sep 2021 23:54:23 +0000 (UTC)
To: tcwg-validation@linaro.org, Maurizio Lombardi <mlombard@redhat.com>,
	linaro-toolchain@lists.linaro.org,
	clang-built-linux@googlegroups.com, arnd@linaro.org
Message-ID: <1267539297.8788.1630713264409@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-aarch64-mainline-allyesconfig - Build # 16 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_8787_151908827.1630713263996"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-aarch64-mainline-allyesconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=sZxAGbpR;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::329
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

------=_Part_8787_151908827.1630713263996
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-master-aarch64-mainline-allyesconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-master-aarch64-mainline-allyesconfig

Culprit:
<cut>
commit 342f43af70dbc74f8629381998f92c060e1763a2
Author: Maurizio Lombardi <mlombard@redhat.com>
Date:   Thu Jul 29 15:52:50 2021 +0200

    iscsi_ibft: fix crash due to KASLR physical memory remapping
    
    Starting with commit a799c2bd29d1
    ("x86/setup: Consolidate early memory reservations")
    memory reservations have been moved earlier during the boot process,
    before the execution of the Kernel Address Space Layout Randomization code.
    
    setup_arch() calls the iscsi_ibft's find_ibft_region() function
    to find and reserve the memory dedicated to the iBFT and this function
    also saves a virtual pointer to the iBFT table for later use.
    
    The problem is that if KALSR is active, the physical memory gets
    remapped somewhere else in the virtual address space and the pointer is
    no longer valid, this will cause a kernel panic when the iscsi driver tries
    to dereference it.
    
     iBFT detected.
     BUG: unable to handle page fault for address: ffff888000099fd8
     #PF: supervisor read access in kernel mode
     #PF: error_code(0x0000) - not-present page
     PGD 0 P4D 0
     Oops: 0000 [#1] SMP PTI
    
    ..snip..
    
     Call Trace:
      ? ibft_create_kobject+0x1d2/0x1d2 [iscsi_ibft]
      do_one_initcall+0x44/0x1d0
      ? kmem_cache_alloc_trace+0x119/0x220
      do_init_module+0x5c/0x270
      __do_sys_init_module+0x12e/0x1b0
      do_syscall_64+0x40/0x80
      entry_SYSCALL_64_after_hwframe+0x44/0xae
    
    Fix this bug by saving the address of the physical location
    of the ibft; later the driver will use isa_bus_to_virt() to get
    the correct virtual address.
    
    N.B. On each reboot KASLR randomizes the virtual addresses so
    assuming phys_to_virt before KASLR does its deed is incorrect.
    
    Simplify the code by renaming find_ibft_region()
    to reserve_ibft_region() and remove all the wrappers.
    
    Signed-off-by: Maurizio Lombardi <mlombard@redhat.com>
    Reviewed-by: Mike Rapoport <rppt@linux.ibm.com>
    Signed-off-by: Konrad Rzeszutek Wilk <konrad@kernel.org>
</cut>

Results regressed to (for first_bad == 342f43af70dbc74f8629381998f92c060e1763a2)
# reset_artifacts:
-10
# build_abe binutils:
-9
# build_llvm:
-5
# build_abe qemu:
-2
# linux_n_obj:
19722
# First few build errors in logs:

from (for last_good == 62fb9874f5da54fdb243003b386128037319b219)
# reset_artifacts:
-10
# build_abe binutils:
-9
# build_llvm:
-5
# build_abe qemu:
-2
# linux_n_obj:
19795
# linux build successful:
all

Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-mainline-allyesconfig/16/artifact/artifacts/build-62fb9874f5da54fdb243003b386128037319b219/
Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-mainline-allyesconfig/16/artifact/artifacts/build-342f43af70dbc74f8629381998f92c060e1763a2/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-mainline-allyesconfig/16/

Configuration details:


Reproduce builds:
<cut>
mkdir investigate-linux-342f43af70dbc74f8629381998f92c060e1763a2
cd investigate-linux-342f43af70dbc74f8629381998f92c060e1763a2

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-mainline-allyesconfig/16/artifact/artifacts/manifests/build-baseline.sh --fail
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-mainline-allyesconfig/16/artifact/artifacts/manifests/build-parameters.sh --fail
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-mainline-allyesconfig/16/artifact/artifacts/test.sh --fail
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

# Save baseline build state (which is then restored in artifacts/test.sh)
mkdir -p ./bisect
rsync -a --del --delete-excluded --exclude /bisect/ --exclude /artifacts/ --exclude /linux/ ./ ./bisect/baseline/

cd linux

# Reproduce first_bad build
git checkout --detach 342f43af70dbc74f8629381998f92c060e1763a2
../artifacts/test.sh

# Reproduce last_good build
git checkout --detach 62fb9874f5da54fdb243003b386128037319b219
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-aarch64-mainline-allyesconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-mainline-allyesconfig/16/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-mainline-allyesconfig/16/consoleText

Full commit (up to 1000 lines):
<cut>
commit 342f43af70dbc74f8629381998f92c060e1763a2
Author: Maurizio Lombardi <mlombard@redhat.com>
Date:   Thu Jul 29 15:52:50 2021 +0200

    iscsi_ibft: fix crash due to KASLR physical memory remapping
    
    Starting with commit a799c2bd29d1
    ("x86/setup: Consolidate early memory reservations")
    memory reservations have been moved earlier during the boot process,
    before the execution of the Kernel Address Space Layout Randomization code.
    
    setup_arch() calls the iscsi_ibft's find_ibft_region() function
    to find and reserve the memory dedicated to the iBFT and this function
    also saves a virtual pointer to the iBFT table for later use.
    
    The problem is that if KALSR is active, the physical memory gets
    remapped somewhere else in the virtual address space and the pointer is
    no longer valid, this will cause a kernel panic when the iscsi driver tries
    to dereference it.
    
     iBFT detected.
     BUG: unable to handle page fault for address: ffff888000099fd8
     #PF: supervisor read access in kernel mode
     #PF: error_code(0x0000) - not-present page
     PGD 0 P4D 0
     Oops: 0000 [#1] SMP PTI
    
    ..snip..
    
     Call Trace:
      ? ibft_create_kobject+0x1d2/0x1d2 [iscsi_ibft]
      do_one_initcall+0x44/0x1d0
      ? kmem_cache_alloc_trace+0x119/0x220
      do_init_module+0x5c/0x270
      __do_sys_init_module+0x12e/0x1b0
      do_syscall_64+0x40/0x80
      entry_SYSCALL_64_after_hwframe+0x44/0xae
    
    Fix this bug by saving the address of the physical location
    of the ibft; later the driver will use isa_bus_to_virt() to get
    the correct virtual address.
    
    N.B. On each reboot KASLR randomizes the virtual addresses so
    assuming phys_to_virt before KASLR does its deed is incorrect.
    
    Simplify the code by renaming find_ibft_region()
    to reserve_ibft_region() and remove all the wrappers.
    
    Signed-off-by: Maurizio Lombardi <mlombard@redhat.com>
    Reviewed-by: Mike Rapoport <rppt@linux.ibm.com>
    Signed-off-by: Konrad Rzeszutek Wilk <konrad@kernel.org>
---
 arch/x86/kernel/setup.c            | 10 --------
 drivers/firmware/iscsi_ibft.c      | 10 +++++---
 drivers/firmware/iscsi_ibft_find.c | 48 ++++++++++++++------------------------
 include/linux/iscsi_ibft.h         | 18 ++++++--------
 4 files changed, 32 insertions(+), 54 deletions(-)

diff --git a/arch/x86/kernel/setup.c b/arch/x86/kernel/setup.c
index 1e720626069a..b6a62af06a9f 100644
--- a/arch/x86/kernel/setup.c
+++ b/arch/x86/kernel/setup.c
@@ -571,16 +571,6 @@ void __init reserve_standard_io_resources(void)
 
 }
 
-static __init void reserve_ibft_region(void)
-{
-	unsigned long addr, size = 0;
-
-	addr = find_ibft_region(&size);
-
-	if (size)
-		memblock_reserve(addr, size);
-}
-
 static bool __init snb_gfx_workaround_needed(void)
 {
 #ifdef CONFIG_PCI
diff --git a/drivers/firmware/iscsi_ibft.c b/drivers/firmware/iscsi_ibft.c
index 7127a04bca19..612a59e213df 100644
--- a/drivers/firmware/iscsi_ibft.c
+++ b/drivers/firmware/iscsi_ibft.c
@@ -84,8 +84,10 @@ MODULE_DESCRIPTION("sysfs interface to BIOS iBFT information");
 MODULE_LICENSE("GPL");
 MODULE_VERSION(IBFT_ISCSI_VERSION);
 
+static struct acpi_table_ibft *ibft_addr;
+
 #ifndef CONFIG_ISCSI_IBFT_FIND
-struct acpi_table_ibft *ibft_addr;
+phys_addr_t ibft_phys_addr;
 #endif
 
 struct ibft_hdr {
@@ -858,11 +860,13 @@ static int __init ibft_init(void)
 	int rc = 0;
 
 	/*
-	   As on UEFI systems the setup_arch()/find_ibft_region()
+	   As on UEFI systems the setup_arch()/reserve_ibft_region()
 	   is called before ACPI tables are parsed and it only does
 	   legacy finding.
 	*/
-	if (!ibft_addr)
+	if (ibft_phys_addr)
+		ibft_addr = isa_bus_to_virt(ibft_phys_addr);
+	else
 		acpi_find_ibft_region();
 
 	if (ibft_addr) {
diff --git a/drivers/firmware/iscsi_ibft_find.c b/drivers/firmware/iscsi_ibft_find.c
index 64bb94523281..a0594590847d 100644
--- a/drivers/firmware/iscsi_ibft_find.c
+++ b/drivers/firmware/iscsi_ibft_find.c
@@ -31,8 +31,8 @@
 /*
  * Physical location of iSCSI Boot Format Table.
  */
-struct acpi_table_ibft *ibft_addr;
-EXPORT_SYMBOL_GPL(ibft_addr);
+phys_addr_t ibft_phys_addr;
+EXPORT_SYMBOL_GPL(ibft_phys_addr);
 
 static const struct {
 	char *sign;
@@ -47,13 +47,24 @@ static const struct {
 #define VGA_MEM 0xA0000 /* VGA buffer */
 #define VGA_SIZE 0x20000 /* 128kB */
 
-static int __init find_ibft_in_mem(void)
+/*
+ * Routine used to find and reserve the iSCSI Boot Format Table
+ */
+void __init reserve_ibft_region(void)
 {
 	unsigned long pos;
 	unsigned int len = 0;
 	void *virt;
 	int i;
 
+	ibft_phys_addr = 0;
+
+	/* iBFT 1.03 section 1.4.3.1 mandates that UEFI machines will
+	 * only use ACPI for this
+	 */
+	if (efi_enabled(EFI_BOOT))
+		return;
+
 	for (pos = IBFT_START; pos < IBFT_END; pos += 16) {
 		/* The table can't be inside the VGA BIOS reserved space,
 		 * so skip that area */
@@ -70,35 +81,12 @@ static int __init find_ibft_in_mem(void)
 				/* if the length of the table extends past 1M,
 				 * the table cannot be valid. */
 				if (pos + len <= (IBFT_END-1)) {
-					ibft_addr = (struct acpi_table_ibft *)virt;
-					pr_info("iBFT found at 0x%lx.\n", pos);
-					goto done;
+					ibft_phys_addr = pos;
+					memblock_reserve(ibft_phys_addr, PAGE_ALIGN(len));
+					pr_info("iBFT found at 0x%lx.\n", ibft_phys_addr);
+					return;
 				}
 			}
 		}
 	}
-done:
-	return len;
-}
-/*
- * Routine used to find the iSCSI Boot Format Table. The logical
- * kernel address is set in the ibft_addr global variable.
- */
-unsigned long __init find_ibft_region(unsigned long *sizep)
-{
-	ibft_addr = NULL;
-
-	/* iBFT 1.03 section 1.4.3.1 mandates that UEFI machines will
-	 * only use ACPI for this */
-
-	if (!efi_enabled(EFI_BOOT))
-		find_ibft_in_mem();
-
-	if (ibft_addr) {
-		*sizep = PAGE_ALIGN(ibft_addr->header.length);
-		return (u64)virt_to_phys(ibft_addr);
-	}
-
-	*sizep = 0;
-	return 0;
 }
diff --git a/include/linux/iscsi_ibft.h b/include/linux/iscsi_ibft.h
index b7b45ca82bea..790e7fcfc1a6 100644
--- a/include/linux/iscsi_ibft.h
+++ b/include/linux/iscsi_ibft.h
@@ -13,26 +13,22 @@
 #ifndef ISCSI_IBFT_H
 #define ISCSI_IBFT_H
 
-#include <linux/acpi.h>
+#include <linux/types.h>
 
 /*
- * Logical location of iSCSI Boot Format Table.
- * If the value is NULL there is no iBFT on the machine.
+ * Physical location of iSCSI Boot Format Table.
+ * If the value is 0 there is no iBFT on the machine.
  */
-extern struct acpi_table_ibft *ibft_addr;
+extern phys_addr_t ibft_phys_addr;
 
 /*
  * Routine used to find and reserve the iSCSI Boot Format Table. The
- * mapped address is set in the ibft_addr variable.
+ * physical address is set in the ibft_phys_addr variable.
  */
 #ifdef CONFIG_ISCSI_IBFT_FIND
-unsigned long find_ibft_region(unsigned long *sizep);
+void reserve_ibft_region(void);
 #else
-static inline unsigned long find_ibft_region(unsigned long *sizep)
-{
-	*sizep = 0;
-	return 0;
-}
+static inline void reserve_ibft_region(void) {}
 #endif
 
 #endif /* ISCSI_IBFT_H */
</cut>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1267539297.8788.1630713264409%40localhost.

------=_Part_8787_151908827.1630713263996--
