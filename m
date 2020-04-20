Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBN7D672AKGQECME4YQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id EF3651B154A
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Apr 2020 21:02:15 +0200 (CEST)
Received: by mail-wm1-x33e.google.com with SMTP id l21sf286442wmh.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Apr 2020 12:02:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587409335; cv=pass;
        d=google.com; s=arc-20160816;
        b=gwHMsv0gBw/XePJZyJI3LvjRH7lcx4gbwdAyh3uG6F4+ZfWFz/NvXyds+xhcsWJdo3
         Ha06ofOnTnDxJnTiP+s4+3itHyqKmAeEJ+csNjL2dGGIu/K/8J4nrWiNXMdGb2an2u/u
         OakxrAYS2SIX8b8G8om23Vk5H99ovtdy8VfTeHbdIwbtZ9YbN6iYBmMpqAjTYEcvE9WT
         PUlaIXHvuGvnYyVraDkGnf0wMMtYeGcSGIv46kWUg+6HVq24BLbAY821zk9iCovYrwZk
         XfrPmpTxnLOQ0pr3DL+sB6ozct3FsTvUwFcNT9kKU/5yQzpqnY8nJhXw+xAExcg/ISA2
         VDmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=BHZWa6XA5EeWl/MzyUAVWDzAVeXqxm35KEZuI7i/NaA=;
        b=A6X0nz0Nevf5vMY0pN0lcu8TLpFds+niNHLpA1TbSh6g/kdGUDPKsgzIVTsHceUEDz
         i0wT4yWl/9FQCr+HrCPp9dUJhUxkt7qWevBxI0yXIYmgO0m6ILHwqhaS++S7fUlnZHl+
         4GoZSYalnwVw1EYKGmRY7J5u4jlCqF1Sr0bhYMSEPEdKkRAAl2U94YQ6ifOkl+FObZun
         XwLhhzKnq8f6YSG9LTEMkqtvGgf+JnIwwu3KDXaRSB9k/4nMxEVo3frQQZ0F42BcyxXf
         VqCElzQdDC5CUKxGILWRDZ7pZ8sFDPu7YQXhpUcyoK5bLbVpmClDBkS9YbOMlj1BsgFb
         VOWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=UWAMBqek;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BHZWa6XA5EeWl/MzyUAVWDzAVeXqxm35KEZuI7i/NaA=;
        b=hMlgVUZoB6jtKdvwuqCjgWTM4b8f8lj+zvjO4LEEESSMWPaWSP7Uok/Ilc8YiU1/Yy
         2+KDU6lbe6NEXFlmzpfrMkhhpWM79iKfwbRIFwtY9rddCK75s8/5kTXWvXxgtC1C8o0N
         JmfLKK4IPy0z/g7P+PO6L8wnNFwpp73CUpS4nNo3dj9MftkXCjKtGAlCBkI5mbMLFaZ4
         fA7wGjc8ujdbJCCYeHTLErSsW55OnDxkRPsH+DgH9itszxDOuiUQIjJYWCoH3IXux+Y+
         7ga9rY2qLrVoEr5+nT2m4eR5jRc7I+zyZSffS5zNDbnW0Md+vyqjCkXVZfMav4KrgrOI
         gbbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BHZWa6XA5EeWl/MzyUAVWDzAVeXqxm35KEZuI7i/NaA=;
        b=gZPbbTJM+WMYXOs85f61jFYmBi2GuvK1sQe0RT8quExF8DCeGLMoAPhEvC9kPCnbMb
         kPT+W6q7Cmr5iXb4nLDP9SRkXloFcHZgiWtP9NCgvoEyjEAF5T6Cb9a/eGhuSsGdYzP6
         Q39lP05k2NbxlPJupiLwMKhBhz5QFOyZ1hznV5+eIOWSR/t/Z9DAL5LZjtDGUP5r4E9J
         bWGM33mF0xesQA6fyvX/rTfU0+5BKEOpDrK0HDuj1byCzS4TqRhESrn9Ma9x5GZx4e5n
         LNuP7itbjCrLw36/aOPNdHIXPS5WSz2WKQj7bE6Ci9ykiQ8NKiGZ4knKOngIvYrOAdYN
         AXIA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaX3WAgCzdNrlQ60Ycr7raw11VF18CVUmnMIJqMggjTpAM60bl1
	FvJ9S81GTaTCRE7heQyAzEk=
X-Google-Smtp-Source: APiQypK6Ygk3m1We4Om1VCtUp0bu1ZE0VOxHzF4RgABOQbiidSYXbt3Mh35ALpAd8H9c9LICuzB07w==
X-Received: by 2002:a05:600c:2c53:: with SMTP id r19mr912188wmg.40.1587409335612;
        Mon, 20 Apr 2020 12:02:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:a9c4:: with SMTP id s187ls888011wme.0.canary-gmail; Mon,
 20 Apr 2020 12:02:14 -0700 (PDT)
X-Received: by 2002:a1c:24d4:: with SMTP id k203mr821532wmk.49.1587409334926;
        Mon, 20 Apr 2020 12:02:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587409334; cv=none;
        d=google.com; s=arc-20160816;
        b=0gNySsrntk6C5ptGjfQvkYr+u3J7mknuF8uwPtaNLN5dcTrFCc0dSW9X8o3ZlFdvJd
         8a4vZXfkKcHGTCB45chqYzb0eyu8SFqUVuhetVdUlwdAJjh/OVRRkJMkUNBlr/b6ptUM
         lGDD21/37MQtXZfFoJed+RiIbZWbjHOmyYuMFRq1lRI3/CfqRI3z9rfqADCzl8FDFEN9
         Yh4smKfSIOJzYtOjmgFTe+E3ohO2wFnp9mVBgE7lpFkQTZhhrsrzLFAsI4PFQDpvUK3G
         B6l/+NEXgEsW1fBXVQXSzVQpKtC9OUgAsAlMX1vjoWgWuvc1738fs2lnnHzrs5UGRPt3
         wK3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=/4lxGnGx8Cz41ElZzdEl9MHxkBoYmJFDcWqvX7MMoxg=;
        b=S0Mu2XiMKGmq+JZeZf6waIiQ7xo3IxuqqZksTRdEF3gV56gycrQQRNTfhK+8P53QqO
         wCynzW2hxwj70u3QGVDHndPBiQ25+awSgOOd1twcPfxGVKH+idsQhw1IVXOF/bm5K1Pu
         S5/hEj4q3fFF/E1RgU0imDHdN4L4NkiVPGwDzX0eT3Kcu2z6io73Y9UIi5YP4EQTzImU
         sLxJXJv234GnbtitIbzjI8TO8qdGUHQCDR92CAULJgIQsvivTPyxtVGUl5A0b280USVN
         fWzOoxmebXl78M51zFYUKppeUIr2dgfEHbyHICNNEVNIYkKIS+oCaVfKGsBUXk0iv0e4
         rvLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=UWAMBqek;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id m4si23706wrn.5.2020.04.20.12.02.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 12:02:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id g13so11510701wrb.8
        for <clang-built-linux@googlegroups.com>; Mon, 20 Apr 2020 12:02:14 -0700 (PDT)
X-Received: by 2002:a5d:6851:: with SMTP id o17mr19776718wrw.267.1587409334465;
        Mon, 20 Apr 2020 12:02:14 -0700 (PDT)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id n7sm415426wmd.11.2020.04.20.12.02.13
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Mon, 20 Apr 2020 12:02:13 -0700 (PDT)
From: ci_notify@linaro.org
Date: Mon, 20 Apr 2020 19:02:12 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <1059293283.18116.1587409333765.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-arm-next-allnoconfig - Build # 2 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_18115_1263501229.1587409333059"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-release-arm-next-allnoconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=UWAMBqek;       spf=pass
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

------=_Part_18115_1263501229.1587409333059
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-release-arm-next-allnoconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/gnu-master-arm-next-allnoconfig
 - tcwg_kernel/gnu-release-arm-next-allnoconfig
 - tcwg_kernel/llvm-master-arm-next-allnoconfig
 - tcwg_kernel/llvm-release-arm-next-allnoconfig

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
# 00:00:46 mm/nommu.c:156:25: error: use of undeclared identifier 'flags'
# 00:00:46 make[1]: *** [mm/nommu.o] Error 1
# 00:00:51 make: *** [mm] Error 2

from (for last_good == 60e6c507bca714a270bb5104e2bb2b952cc8a447)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
408
# linux build successful:
all

Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allnoconfig/2/artifact/artifacts/build-60e6c507bca714a270bb5104e2bb2b952cc8a447/
Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allnoconfig/2/artifact/artifacts/build-be950c0b6fb2e9774eb35feded1c407e315ef53b/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allnoconfig/2/

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
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allnoconfig/2/artifact/artifacts/manifests/build-baseline.sh --fail
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allnoconfig/2/artifact/artifacts/manifests/build-parameters.sh --fail
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allnoconfig/2/artifact/artifacts/test.sh --fail
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

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-release-arm-next-allnoconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allnoconfig/2/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allnoconfig/2/consoleText

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1059293283.18116.1587409333765.JavaMail.javamailuser%40localhost.

------=_Part_18115_1263501229.1587409333059--
