Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBSP76X2AKGQE35O5VBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF611B06EE
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Apr 2020 12:56:09 +0200 (CEST)
Received: by mail-lf1-x137.google.com with SMTP id l28sf4089113lfp.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Apr 2020 03:56:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587380169; cv=pass;
        d=google.com; s=arc-20160816;
        b=uDL/DVUWrjt5mhy3p2z0en/+y4OINmt6BBzu1CtwaT4iaja7EIFCu9u0zMpr2gqY12
         +WW3MFwAHjBVxnVRNLRcVePRTr1zvTCzOE2C/AFt1ueNmC+0O+8UdzTsFgrP9FWJrWmT
         vCoIPT1rNcqzpjXv6bQ3d5nY9Riw3xfnxRyFRlHJXVqXT9RcZSzC+X34ELi33BsQZysx
         VJ1JfcJgMByLIn0oMrMLg7iFNWGtZNfkFykQa+TKaW+NeEkeMp606CTsC0hCN0drzxR8
         YfR6/Dhopkr8yGTiAtBxx1MJ6Ue+tG2c54OJsp2Dac4RU+ucEx4+4q0wvpxjpXJ+saLo
         XgzA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=vDCFHR73vTFN+6XiTeiGMtPkrQUXoeeVrc66x8qVAkE=;
        b=d1xD6Ij+Bi/2bzn/b/2zfxvCMxz27S7xGQ0cUGI9EbX0TnePhceK67iQBgHcaD1fMz
         Kp1tde5T2LI6UKBK8H1vtuNNNB3wJTPhP2jm2y+rlLXh1FzWgmi51cVskTvjekmTzY+f
         rTuTVz03AIxK+3PqgbasyxsaZG6JqZ0irFTfw2hZqO7gmDiN+glO3EhiNAN93BRGh3z4
         krRrH1PgxDmotQ7o3PtpGCVcIqdI/jn0s8yW2WSLue7DavNu9ds6GleXjOVRrq4YPd1z
         KY4bdsYzCUJpj/6Crfnpsngcn09ShggpqDKNKuOv8BXOXVjwZ3XUtiStCRlE8EY/kOAp
         +ERQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=anHThFBS;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vDCFHR73vTFN+6XiTeiGMtPkrQUXoeeVrc66x8qVAkE=;
        b=SNIYXMRbHIp3zmoDBJQCxtDT0jw9ikrE6uuFztCpb05XLAGcbjyhejbsA0SuQgZ8mg
         jmOkhbuUYsUFd2l8E+Ij3MyyTB2s/nn2nJqoYeXTRAKhqmeUeCM+OqEOyo9kJgubv7V5
         TN39f2Z94VhysUhJwNb9ociGd7fYzRxdxdSX18DIHBM62V7JXEH+pGT2PtjtotWrhdOG
         iaTHwwWsKl0H2RbIxWpWRgrbdYGv99AkSvat/q3+VN6Q/HzY///HWKbh0/UWuF/6KceJ
         QglXPg8ooRZ+Sqp093bLqFB0Nxbt1BgYZtv0dVU8C7rP5aW6SxlmkXfDfXe+GBiZ0kaW
         FTQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vDCFHR73vTFN+6XiTeiGMtPkrQUXoeeVrc66x8qVAkE=;
        b=k19/y18dV6+biJ8wmHPeOJvCTbOBYGkOZjA8ssG1uiEwWjr7sAjKoY6K7Hm1phPbwT
         NZuQaVXLFw35jSoQ1dH5aNixiyAgEr7v6zFKcbPjxMm51rtpRaqV67yHpki/QV1TDodE
         kXwIX42N58GD6vsYAL5gwOv8ULEmvblC7VVzJa9pN6OhtabmkBPGiJpWM/u+7w3Xfuoz
         JKJtT5SbFvPnDKiOjXPEgTl51w3Z15xwkXLOqwxxEiPRszd02VDxIfzdnN4MLk7R6/rN
         tMxcRbbi7fnq+fgzIGVWOReA1E7j1NKI8ANhhoAfvwTdgPIyaJkD/68OV91BFawBuq7x
         eRUg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZ5HF2bc/3XCbzKASVmcbmonfYhbToxeb4Fes2IJruwP5SQXtEn
	SFoSOEIYwEA3Zet3Mwwxooc=
X-Google-Smtp-Source: APiQypKvcQI29VyvfA6sVQDUe0ILRq5N0vAh88KiDH15BriBmzLFQnXh7uQflogh5PZxLtqUFGS3Yg==
X-Received: by 2002:a2e:b792:: with SMTP id n18mr10104749ljo.281.1587380169335;
        Mon, 20 Apr 2020 03:56:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8155:: with SMTP id t21ls1928179ljg.5.gmail; Mon, 20 Apr
 2020 03:56:08 -0700 (PDT)
X-Received: by 2002:a2e:8752:: with SMTP id q18mr9742743ljj.72.1587380168770;
        Mon, 20 Apr 2020 03:56:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587380168; cv=none;
        d=google.com; s=arc-20160816;
        b=Jg6sEF9HP1cK9XrdkdhCtXoGej7/60+gbdPXbY9xUbT5H77dQRX5J8pvE052R2c4q/
         SACFbbkFF7Wi7i03pewUgKstEGByrqP1lanvOatVcUgxhM8orr1/keOxza6QZ7UJnz/b
         nPcOvRsoDZDaNeyCwS8hKwDnCbvWztPvQ2HWcyydtCLvrhwVWnCpQWzqRd5DoTTrFrdt
         TA313s39dTAJD/Phwp72wfTpYjNLZX0QCTeNCTveyfXSK8iavH/NpIgFcqfsbJwm5sDL
         Qtck8q+Kqw6iXoyaPXakQ3uUWpWHJwASbCurCaYXnLpa3fssrcnAa5oMxlv/or32r8hC
         Uh6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=ELtVvbrUU3L5tRfGAabAi+E5ZRMvGBBOKh7RfU46PtQ=;
        b=BRhJ4hNIXA3tumHfwg71ABmWO8SUnIbDOId9df48l4Uhk3t/P8k+CS3vhWD3tA7H8F
         kDIt3sqYHqRFp6MTuss67kW3po1BXwgXYPQaVgw+yvUsiiAFuiZg6/cvxUgcPB0lH8nj
         9ZbdSDVRNRhfsXZAXogdMqZEmIEpxYlmNgsUxRde+IoiCr1Mdx1nFf/gMh7tX26T0jmh
         w82dJRMFCXALQMGwKK+Zv8ifA+19oNmVnUYqDZTCRcW2B81XnaRXUmvuPMwGQ4bxiLNQ
         Ihdtl+jgzwPcokRwFY/LelljmDCJEej5XbKP5lS+IKAjxcBEgD/BGnEf93w/weGQ8Dfn
         zNbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=anHThFBS;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id s22si37542ljp.0.2020.04.20.03.56.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 03:56:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id u13so11565127wrp.3
        for <clang-built-linux@googlegroups.com>; Mon, 20 Apr 2020 03:56:08 -0700 (PDT)
X-Received: by 2002:a05:6000:108b:: with SMTP id y11mr16759823wrw.380.1587380168084;
        Mon, 20 Apr 2020 03:56:08 -0700 (PDT)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id j68sm719656wrj.32.2020.04.20.03.56.07
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Mon, 20 Apr 2020 03:56:07 -0700 (PDT)
From: ci_notify@linaro.org
Date: Mon, 20 Apr 2020 10:56:06 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <808964688.18081.1587380167457.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-arm-next-allnoconfig - Build # 8 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_18080_2096313818.1587380167043"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-arm-next-allnoconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=anHThFBS;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::444
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

------=_Part_18080_2096313818.1587380167043
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-master-arm-next-allnoconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/gnu-release-arm-next-allnoconfig
 - tcwg_kernel/llvm-master-arm-next-allnoconfig

Culprit:
<cut>
commit be950c0b6fb2e9774eb35feded1c407e315ef53b
Author: Christoph Hellwig <hch@lst.de>

    mm: remove __vmalloc_node_flags_caller
</cut>

Results regressed to (for first_bad == be950c0b6fb2e9774eb35feded1c407e315ef53b)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
398
# First few build errors in logs:
# 00:00:58 mm/nommu.c:156:25: error: use of undeclared identifier 'flags'
# 00:00:58 make[1]: *** [mm/nommu.o] Error 1
# 00:01:04 make: *** [mm] Error 2

from (for last_good == 60e6c507bca714a270bb5104e2bb2b952cc8a447)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
408
# linux build successful:
all

Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allnoconfig/8/artifact/artifacts/build-60e6c507bca714a270bb5104e2bb2b952cc8a447/
Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allnoconfig/8/artifact/artifacts/build-be950c0b6fb2e9774eb35feded1c407e315ef53b/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allnoconfig/8/

Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
rr[linux_branch]="ea16390b6f2d61f0db6fadc8c512c012c1edd1b9"

Reproduce builds:
<cut>
mkdir investigate-linux-be950c0b6fb2e9774eb35feded1c407e315ef53b
cd investigate-linux-be950c0b6fb2e9774eb35feded1c407e315ef53b

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allnoconfig/8/artifact/artifacts/manifests/build-baseline.sh --fail
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allnoconfig/8/artifact/artifacts/manifests/build-parameters.sh --fail
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allnoconfig/8/artifact/artifacts/test.sh --fail
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

cd linux

# Reproduce first_bad build
git checkout --detach be950c0b6fb2e9774eb35feded1c407e315ef53b
../artifacts/test.sh

# Reproduce last_good build
git checkout --detach 60e6c507bca714a270bb5104e2bb2b952cc8a447
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-arm-next-allnoconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allnoconfig/8/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allnoconfig/8/consoleText

Full commit:
<cut>
commit be950c0b6fb2e9774eb35feded1c407e315ef53b
Author: Christoph Hellwig <hch@lst.de>
Date:   Sat Apr 18 16:03:18 2020 +1000

    mm: remove __vmalloc_node_flags_caller
    
    Just use __vmalloc_node instead which gets and extra argument.  To be able
    to to use __vmalloc_node in all caller make it available outside of
    vmalloc and implement it in nommu.c.
    
    Link: http://lkml.kernel.org/r/20200414131348.444715-25-hch@lst.de
    Signed-off-by: Christoph Hellwig <hch@lst.de>
    Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>
    Cc: Christian Borntraeger <borntraeger@de.ibm.com>
    Cc: Christophe Leroy <christophe.leroy@c-s.fr>
    Cc: Daniel Vetter <daniel@ffwll.ch>
    Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
    Cc: David Airlie <airlied@linux.ie>
    Cc: Gao Xiang <xiang@kernel.org>
    Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
    Cc: Haiyang Zhang <haiyangz@microsoft.com>
    Cc: Johannes Weiner <hannes@cmpxchg.org>
    Cc: "K. Y. Srinivasan" <kys@microsoft.com>
    Cc: Laura Abbott <labbott@redhat.com>
    Cc: Mark Rutland <mark.rutland@arm.com>
    Cc: Michael Kelley <mikelley@microsoft.com>
    Cc: Minchan Kim <minchan@kernel.org>
    Cc: Nitin Gupta <ngupta@vflare.org>
    Cc: Robin Murphy <robin.murphy@arm.com>
    Cc: Sakari Ailus <sakari.ailus@linux.intel.com>
    Cc: Stephen Hemminger <sthemmin@microsoft.com>
    Cc: Sumit Semwal <sumit.semwal@linaro.org>
    Cc: Wei Liu <wei.liu@kernel.org>
    Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
    Cc: Catalin Marinas <catalin.marinas@arm.com>
    Cc: Heiko Carstens <heiko.carstens@de.ibm.com>
    Cc: Paul Mackerras <paulus@ozlabs.org>
    Cc: Vasily Gorbik <gor@linux.ibm.com>
    Cc: Will Deacon <will@kernel.org>
    Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
    Signed-off-by: Stephen Rothwell <sfr@canb.auug.org.au>
---
 include/linux/vmalloc.h |  4 ++--
 kernel/bpf/syscall.c    |  5 ++---
 mm/nommu.c              |  4 ++--
 mm/util.c               |  2 +-
 mm/vmalloc.c            | 10 +---------
 5 files changed, 8 insertions(+), 17 deletions(-)

diff --git a/include/linux/vmalloc.h b/include/linux/vmalloc.h
index 91d143783458..964d58a060ca 100644
--- a/include/linux/vmalloc.h
+++ b/include/linux/vmalloc.h
@@ -115,8 +115,8 @@ extern void *__vmalloc_node_range(unsigned long size, unsigned long align,
 			unsigned long start, unsigned long end, gfp_t gfp_mask,
 			pgprot_t prot, unsigned long vm_flags, int node,
 			const void *caller);
-extern void *__vmalloc_node_flags_caller(unsigned long size,
-					 int node, gfp_t flags, void *caller);
+void *__vmalloc_node(unsigned long size, unsigned long align, gfp_t gfp_mask,
+		int node, const void *caller);
 
 extern void vfree(const void *addr);
 extern void vfree_atomic(const void *addr);
diff --git a/kernel/bpf/syscall.c b/kernel/bpf/syscall.c
index d85f37239540..cefd73449e3c 100644
--- a/kernel/bpf/syscall.c
+++ b/kernel/bpf/syscall.c
@@ -299,9 +299,8 @@ static void *__bpf_map_area_alloc(u64 size, int numa_node, bool mmapable)
 		return vmalloc_user_node_flags(size, numa_node, GFP_KERNEL |
 					       __GFP_RETRY_MAYFAIL | flags);
 	}
-	return __vmalloc_node_flags_caller(size, numa_node,
-					   GFP_KERNEL | __GFP_RETRY_MAYFAIL |
-					   flags, __builtin_return_address(0));
+	return __vmalloc_node(size, 1, GFP_KERNEL | __GFP_RETRY_MAYFAIL | flags,
+			      numa_node, __builtin_return_address(0));
 }
 
 void *bpf_map_area_alloc(u64 size, int numa_node)
diff --git a/mm/nommu.c b/mm/nommu.c
index 9553efa59787..81a86cd85893 100644
--- a/mm/nommu.c
+++ b/mm/nommu.c
@@ -150,8 +150,8 @@ void *__vmalloc(unsigned long size, gfp_t gfp_mask)
 }
 EXPORT_SYMBOL(__vmalloc);
 
-void *__vmalloc_node_flags_caller(unsigned long size, int node, gfp_t flags,
-		void *caller)
+void *__vmalloc_node(unsigned long size, unsigned long align, gfp_t gfp_mask,
+		int node, const void *caller)
 {
 	return __vmalloc(size, flags);
 }
diff --git a/mm/util.c b/mm/util.c
index 988d11e6c17c..6d5868adbe18 100644
--- a/mm/util.c
+++ b/mm/util.c
@@ -580,7 +580,7 @@ void *kvmalloc_node(size_t size, gfp_t flags, int node)
 	if (ret || size <= PAGE_SIZE)
 		return ret;
 
-	return __vmalloc_node_flags_caller(size, node, flags,
+	return __vmalloc_node(size, 1, flags, node,
 			__builtin_return_address(0));
 }
 EXPORT_SYMBOL(kvmalloc_node);
diff --git a/mm/vmalloc.c b/mm/vmalloc.c
index e9f730092c81..88f9971a7d6e 100644
--- a/mm/vmalloc.c
+++ b/mm/vmalloc.c
@@ -2401,8 +2401,6 @@ void *vmap(struct page **pages, unsigned int count,
 }
 EXPORT_SYMBOL(vmap);
 
-static void *__vmalloc_node(unsigned long size, unsigned long align,
-			    gfp_t gfp_mask, int node, const void *caller);
 static void *__vmalloc_area_node(struct vm_struct *area, gfp_t gfp_mask,
 				 pgprot_t prot, int node)
 {
@@ -2553,7 +2551,7 @@ EXPORT_SYMBOL_GPL(__vmalloc_node_range);
  *
  * Return: pointer to the allocated memory or %NULL on error
  */
-static void *__vmalloc_node(unsigned long size, unsigned long align,
+void *__vmalloc_node(unsigned long size, unsigned long align,
 			    gfp_t gfp_mask, int node, const void *caller)
 {
 	return __vmalloc_node_range(size, align, VMALLOC_START, VMALLOC_END,
@@ -2567,12 +2565,6 @@ void *__vmalloc(unsigned long size, gfp_t gfp_mask)
 }
 EXPORT_SYMBOL(__vmalloc);
 
-void *__vmalloc_node_flags_caller(unsigned long size, int node, gfp_t flags,
-				  void *caller)
-{
-	return __vmalloc_node(size, 1, flags, node, caller);
-}
-
 /**
  * vmalloc - allocate virtually contiguous memory
  * @size:    allocation size
</cut>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/808964688.18081.1587380167457.JavaMail.javamailuser%40localhost.

------=_Part_18080_2096313818.1587380167043--
