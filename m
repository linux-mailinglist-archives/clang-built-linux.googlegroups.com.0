Return-Path: <clang-built-linux+bncBCILLLGERUHBBOUFXH7QKGQEH6DJ3PQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1569A2E821F
	for <lists+clang-built-linux@lfdr.de>; Thu, 31 Dec 2020 22:29:32 +0100 (CET)
Received: by mail-il1-x13b.google.com with SMTP id x10sf18619527ilq.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Dec 2020 13:29:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609450171; cv=pass;
        d=google.com; s=arc-20160816;
        b=XKrGp0h08NrUGBJwoM1jnoC/10yzbqG1AVe1taEk9vucqjC5efRVbi/4JG0zdgXkM4
         vRSis5DFYfCQA6qcnJSOmCVdsNHq1umixwYAEJoLxcl8ftl+Ea+9xZpIBELbOj2wAold
         MGPPAMfq1uO6lACvklDrsWh3pZANyViZk23SaExoHWz8SI/h8HKVZElHLjZsx0D0I0/y
         ASl/DsOxheFPQb4D5nxc7efvnqGvBveKgY6q/66IElkFkJLRfFutCd6d1p9Vwf18w/J0
         lMCEIu5cejbU5bm87SYUzJsWA5tW7mVPfcXojEgcB77TaKZv/47LIejhnxGrammMExha
         JHDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=St/XAkIe7jKJxevXbSG5xZV2sx5QvzX5C2nuNBgG5kQ=;
        b=X5RdEHvKHYCI/NP+dOvF9/BMs15rE681GvJdK+JD5cluKCiwlOoyndnIEvvMHvglhB
         C+v1JmA+G/jlRzdWXbteR8QMIXqmMFMO8oSQ7HN8s2n7EMdiBPpNmrCVvYuxuWIEuqce
         L07ttl7Yqi0taoJoL1oVE3GA5pLSNt6Lo/xkxIi6KPb9mRk1jm4+RGqVL+MTrlfUx6y7
         /EaKUQ9hPP6q6A80QP8/XS5kHDLKHeupKIveizoD/WsrlCT09VbhWXFdsV3eFz35zaGL
         J934RjMKE/gtdCw8dfQf/3L0EfdxC7PEhDvZkSZfFuPGUcf1YO9cC4YSdZ0aH5NmlnS9
         DxoQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dennisszhou@gmail.com designates 209.85.166.182 as permitted sender) smtp.mailfrom=dennisszhou@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=St/XAkIe7jKJxevXbSG5xZV2sx5QvzX5C2nuNBgG5kQ=;
        b=mjWGkk1ehw/7AIgiLiqCRhcVdWf1/YR+AWQLksdoMXyE52KQvFIMx0Lqlw89k09wv3
         We6gQrkhtHsOobP2HnlLy+Q7RKeW4bPQstTcRA45MOp4vf9bNvJ95PK7btghXnGERjOY
         SYn3i1cxI+CW9Zu43SJ0xUuswaT/w24tzH/mLc+9NSCfr4ftsVJkWCNwvcujLsSQKata
         aEOD29sigmrIuzgbT5Qu+x5TfT0hXMl5d9zKIMSjiFhV7lurmrwVCv1oD2OBcrDpBq5W
         1DlAtW+DpYlN8wTY76nIJ0NRugAADKgH8O5YVUk3Ayp2WgtnvjOJ//YGEcIBjdyFc1QL
         tFUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=St/XAkIe7jKJxevXbSG5xZV2sx5QvzX5C2nuNBgG5kQ=;
        b=CjjKV0n3piW/5YQOnucV53TLKuKsQwnOzzGGa2NFSjGoq0dMruzqu5i1dVTd7ZoeIi
         JpgtK+/wn1jZIH7HOynLisUuanSguLUsQUbUCvOnn8XLduVpeJnbnsWuWYA4KpTUmhI1
         9hjK//8LkVjMabqQINsuh/stnxqvOPfXNA1rwBnuDsAYR9skDelR8dyB+4TAas0DQiiN
         O42fWBFNEqIgsmbFB4yoJTLwe6etskMjMf0uXm9NG2ZvrEXndF3w7dYLxl3C4QBTEjus
         mjuP9M0abeNbcLaTjL+UkaHy45AeMgRRGKFzKG7KnnBCw/MGFsvOOG36v3LTsvXC/OOU
         BW5g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5315JpPTVSP4zaVAdCbqkZRGMEDspUXYSnxdclxmGAtyS5A1baJ4
	JVU51/098n/Td/cn4cw8Oa0=
X-Google-Smtp-Source: ABdhPJy+mIgEbD2V4X4d0nSUwbSsOrkVNfiv/WfIjLzZ5NX9snqmuaOa96GhlOLvEP1KwYrcaHX/Wg==
X-Received: by 2002:a92:4a12:: with SMTP id m18mr58306425ilf.98.1609450170746;
        Thu, 31 Dec 2020 13:29:30 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:ac8e:: with SMTP id x14ls7724890jan.2.gmail; Thu, 31 Dec
 2020 13:29:30 -0800 (PST)
X-Received: by 2002:a02:c850:: with SMTP id r16mr50499375jao.18.1609450170296;
        Thu, 31 Dec 2020 13:29:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609450170; cv=none;
        d=google.com; s=arc-20160816;
        b=AJNQFx4OSenAEr1X/+9fzcl+KQ7L52hj/WfClJTHC3qoGMVM8wwYFYc5zds0l05u87
         mMMgDjHUkXDqKwiTGdxQQLRXlL++W1m+uSRlB6MMz5NzwPReJWV/V58ewpGe7H5MboXr
         sEg1uJ4BxCQsgHC8Mr0es3OJnQILmluo8Bh1EBr6+C+MipccgNigt244DGCzYOgwldVb
         P1Z5XQI6NAbgInfS5Uet4OuarcLNihlQF/9R8iw1KGJzpWIqhsYOXvl07/nDkEgbLYzj
         8fiSNFzvUxIFS/Nbi5E5vhrOamfx4gsTvJBzT6CobOq91EFAXvA8i4GlQ1hhjbF2lJz9
         Dpyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=s3PoZ0PHUx1hgtai3jyNcYrrctOineum5xKahaAQuf0=;
        b=qwkHO8VIGoJa+Du8L77wS+HYZwFF9MnNTozHnO9o/p+tfH4+5IEVYZTIrUreqho4dv
         FnxpZRZ+t0ViMqaHfenxbDynTPNIN+5zKC900ycnBvLK6CSAwEPwVgqo7dYV/70zbhaK
         iNPM1LjksHwSmlgdHpSk/eaHdxkAZKpa6tbXbqoSWiwGDB5HccpjDy7fc7XbGc/vwenF
         tRuNotH2B6Gk0Rux0uOViAJ60ZKUe4J8kecizCYXz1OJSV112jwdDeo+QrvZpidxNeLi
         FSrAqlwY6GzJqFWjq9noBGuC9pNFua01aeGEqrA46nEbLHw+BfCmqICRYLN/GoW0e5D5
         GAdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dennisszhou@gmail.com designates 209.85.166.182 as permitted sender) smtp.mailfrom=dennisszhou@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-il1-f182.google.com (mail-il1-f182.google.com. [209.85.166.182])
        by gmr-mx.google.com with ESMTPS id k131si2933919iof.1.2020.12.31.13.29.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Dec 2020 13:29:30 -0800 (PST)
Received-SPF: pass (google.com: domain of dennisszhou@gmail.com designates 209.85.166.182 as permitted sender) client-ip=209.85.166.182;
Received: by mail-il1-f182.google.com with SMTP id w17so18230445ilj.8
        for <clang-built-linux@googlegroups.com>; Thu, 31 Dec 2020 13:29:30 -0800 (PST)
X-Received: by 2002:a05:6e02:10c8:: with SMTP id s8mr33393800ilj.13.1609450170050;
        Thu, 31 Dec 2020 13:29:30 -0800 (PST)
Received: from abasin.c.googlers.com.com (110.41.72.34.bc.googleusercontent.com. [34.72.41.110])
        by smtp.gmail.com with ESMTPSA id g13sm33454498iln.12.2020.12.31.13.29.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Dec 2020 13:29:29 -0800 (PST)
From: Dennis Zhou <dennis@kernel.org>
To: Tejun Heo <tj@kernel.org>,
	Christoph Lameter <cl@linux.com>
Cc: linux-mm@kvack.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	kbuild-all@lists.01.org,
	Dennis Zhou <dennis@kernel.org>,
	kernel test robot <lkp@intel.com>
Subject: [PATCH] percpu: fix clang modpost warning in pcpu_build_alloc_info()
Date: Thu, 31 Dec 2020 21:28:52 +0000
Message-Id: <20201231212852.3175381-1-dennis@kernel.org>
X-Mailer: git-send-email 2.29.2.729.g45daf8777d-goog
MIME-Version: 1.0
X-Original-Sender: DennisSZhou@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dennisszhou@gmail.com designates 209.85.166.182 as
 permitted sender) smtp.mailfrom=dennisszhou@gmail.com;       dmarc=fail
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
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

This is an unusual situation so I thought it best to explain it in a
separate patch.

"percpu: reduce the number of cpu distance comparisons" introduces a
dependency on cpumask helper functions in __init code. This code
references a struct cpumask annotated __initdata. When the function is
inlined (gcc), everything is fine, but clang decides not to inline these
function calls. This causes modpost to warn about an __initdata access
by a function not annotated with __init [1].

Ways I thought about fixing it:
1. figure out why clang thinks this inlining is too costly.
2. create a wrapper function annotated __init (this).
3. annotate cpumask with __refdata.

Ultimately it comes down to if it's worth saving the cpumask memory and
allowing it to be freed. IIUC, __refdata won't be freed, so option 3 is
just a little wasteful. 1 is out of my depth, leaving 2. I don't feel
great about this behavior being dependent on inlining semantics, but
cpumask helpers are small and probably should be inlined.

modpost complaint:
  WARNING: modpost: vmlinux.o(.text+0x735425): Section mismatch in reference from the function cpumask_clear_cpu() to the variable .init.data:pcpu_build_alloc_info.mask
  The function cpumask_clear_cpu() references
  the variable __initdata pcpu_build_alloc_info.mask.
  This is often because cpumask_clear_cpu lacks a __initdata
  annotation or the annotation of pcpu_build_alloc_info.mask is wrong.

clang output:
  mm/percpu.c:2724:5: remark: cpumask_clear_cpu not inlined into pcpu_build_alloc_info because too costly to inline (cost=725, threshold=325) [-Rpass-missed=inline]

[1] https://lore.kernel.org/linux-mm/202012220454.9F6Bkz9q-lkp@intel.com/

Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Dennis Zhou <dennis@kernel.org>
---
This is on top of percpu#for-5.12.

 mm/percpu.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/mm/percpu.c b/mm/percpu.c
index 80f8f885a990..357977c4cb00 100644
--- a/mm/percpu.c
+++ b/mm/percpu.c
@@ -2642,6 +2642,18 @@ early_param("percpu_alloc", percpu_alloc_setup);
 
 /* pcpu_build_alloc_info() is used by both embed and page first chunk */
 #if defined(BUILD_EMBED_FIRST_CHUNK) || defined(BUILD_PAGE_FIRST_CHUNK)
+
+/*
+ * This wrapper is to avoid a warning where cpumask_clear_cpu() is not inlined
+ * when compiling with clang causing modpost to warn about accessing __initdata
+ * from a non __init function.  By doing this, we allow the struct cpumask to be
+ * freed instead of it taking space by annotating with __refdata.
+ */
+static void __init pcpu_cpumask_clear_cpu(int cpu, struct cpumask *mask)
+{
+	cpumask_clear_cpu(cpu, mask);
+}
+
 /**
  * pcpu_build_alloc_info - build alloc_info considering distances between CPUs
  * @reserved_size: the size of reserved percpu area in bytes
@@ -2713,7 +2725,7 @@ static struct pcpu_alloc_info * __init pcpu_build_alloc_info(
 		cpu = cpumask_first(&mask);
 		group_map[cpu] = group;
 		group_cnt[group]++;
-		cpumask_clear_cpu(cpu, &mask);
+		pcpu_cpumask_clear_cpu(cpu, &mask);
 
 		for_each_cpu(tcpu, &mask) {
 			if (!cpu_distance_fn ||
@@ -2721,7 +2733,7 @@ static struct pcpu_alloc_info * __init pcpu_build_alloc_info(
 			     cpu_distance_fn(tcpu, cpu) == LOCAL_DISTANCE)) {
 				group_map[tcpu] = group;
 				group_cnt[group]++;
-				cpumask_clear_cpu(tcpu, &mask);
+				pcpu_cpumask_clear_cpu(tcpu, &mask);
 			}
 		}
 	}
-- 
2.29.2.729.g45daf8777d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201231212852.3175381-1-dennis%40kernel.org.
