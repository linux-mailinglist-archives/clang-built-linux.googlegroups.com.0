Return-Path: <clang-built-linux+bncBC3ZR65BSMBBBBNPRPWAKGQEO2NVJAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 55421B705C
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Sep 2019 03:19:02 +0200 (CEST)
Received: by mail-vk1-xa3f.google.com with SMTP id h145sf620688vke.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Sep 2019 18:19:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568855941; cv=pass;
        d=google.com; s=arc-20160816;
        b=PLU9H/yO+ms3F6Q/cFAKQnKw7et7tb+f22MTQE9yoBPefDXHyHm530uMZhS5dTWkQR
         lN6oOQvSDV/fVwmTYej6tqpI4qLZPFrjSC+NUVOLhKQxsKq1T6ghLMbyy8aX1LBrQs69
         JQoCHm2kVo76HoDQl96GGO18hpsIOTFw3jTy3Ityh+vt2xGnu0dMbgthmcgXWDCAIEt+
         WNePT6ReAfVhWEtl8aAv3lzOEVOTuzDuY0v35M/THymrGab04N9L4ZnnzGe01O5ou6s4
         Xn8zUnydJQeU/z7GTfpMlSHHU5cP4TpWfc0fiupzhxk5X5o/WIjmd9PdKSQbELLZj0eN
         sMvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=uKSIvXhLwQlnPDX08d7WHkHUAwmkfrf4dIE6/NdCUq8=;
        b=bRfBy0iSeIeY9g+M6eUdocOCFUaQ2Ij1kQcY62wiYSEj7AhbfQFdAvqbgjtI+gJETr
         RgI0aa0JLZxkOm/lY+bZLn0/00bzqZwXZ3Q3oIYw6Z6afj4VQNOJBjha5q7vTw2oCatl
         6Z8rPZTTi5N6FDB8BwQgdMr5pnwPWFw0leUBsLScCa2M4P9VgVdrsZRYWVVyDPWWlucE
         flLvsOvzP1RFimJXNF+ALoQmqPJdCKDunWxShti0gg+5pnE/3xrnaQ3+rITysoUU2Vpm
         GFQDclKshs7mGZrNBtz7VcJjqyknnhOcfFjTulIx+6QyC+D5NJa1ewLjLzD0NRlrwhK6
         XKFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=ZFWaqmUM;
       spf=pass (google.com: domain of mike.kravetz@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=mike.kravetz@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uKSIvXhLwQlnPDX08d7WHkHUAwmkfrf4dIE6/NdCUq8=;
        b=DFNsn342ZxmdSaoMke8Q7Dl8ZdJKhikper5UG9k6vZpm7kp5WGUXb6kjLaFday9TyD
         HbFFJtu9Ss5Uv4D/2gIq4qAUPLVW3IiPtv5caMGvVcOpDvj2MSnuwJutVh327W2N5BsH
         Q+YUQQr4XEueMsTyxWcIbeG4LfaOTxsb25gOkWtrUTp9hrJFBe0e34tXxz4+Sw0AJiqF
         rQyJn+r5egcAjgy6rOKtE2w2r7Sa4q8fLJ8YuBi8EBNsYPCJ7Tofp4F6+C4HshtcOBET
         R1Ifdke4OHc8Hw1kQquslwWkRPRYB8G4JCGZKGodfEPVxYXJdyvPpKmCpk3Qk/h+ehXu
         R+GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uKSIvXhLwQlnPDX08d7WHkHUAwmkfrf4dIE6/NdCUq8=;
        b=mahByzHDc3Ap/RkJ8Em2wOSx7VJUOArM8xOH0JkzrxP4Xn/yCUIxp52GsIQrbuwS0h
         CqGAbycBAbn3/ryXr40CRCmLo+YtwUydb6qAEsTcBIwv+vvsAymN+Sg5SHoreaJ+KSGN
         I3wwyb0sKxKVL97Qnp/e8uFb6PhB60SretRPLMXtK+Qkn089MJpOz5PbAOQUbj7YcUUN
         YRBTOecs1fr0768V4UpS3+mGb44oJx87AdkgA3ZCJPVy2M85J37fSf49+/ADgCyAqlW2
         y+6d6Mt87vIl7VlLXLn1iCYHPzDyn+uhQEt+9TsyAeiWkWz2fFz56/t2bEeMiFDNepUa
         Nq2A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWaYFvawGVcz79NS0mbnOxBSImcPq4Ig9S278dGftSwLwU4H+Ws
	Jjvgb0TipAdnx2CY89SnqCM=
X-Google-Smtp-Source: APXvYqzq0+zvrdytFgPI6Sgl/CmKcoKk94juygCtg3MlrbhMrBJgXXgF3c6QxIrSaUQWX1ba3PUYiQ==
X-Received: by 2002:a67:f9cf:: with SMTP id c15mr3300492vsq.240.1568855941360;
        Wed, 18 Sep 2019 18:19:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f2d3:: with SMTP id a19ls198294vsn.10.gmail; Wed, 18 Sep
 2019 18:19:00 -0700 (PDT)
X-Received: by 2002:a67:c319:: with SMTP id r25mr4476141vsj.139.1568855940892;
        Wed, 18 Sep 2019 18:19:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568855940; cv=none;
        d=google.com; s=arc-20160816;
        b=UA0nl/asJiXLmI1Y51yq28EVCRx0uUl/YDb/CpdyzkxupQN71GGqreiWb7yDGNpX7d
         YQx2lYdiQ/zXlWK3aNQ4WpuSLYSBRwo0fRabzdCTeY7oEbRnnumkxMummCmvBsUFJkUX
         GArKE6/LrdboMBi4Dqm4YOX+PMIhU3eNF1OHu+Zxr44A6yS21UWEZcjnj4tc9x7M3Rn9
         pnnPXucq8uvycq2tUaz9pvnmsyWHM46LhS9+S76NhA77o/WMaaHzXpceHXiYJ3LidvuS
         Xidy/fgGspe9nnn3FmcLhluaG8J8r4FJU+k4iV6SjAFsgS9C+xuolikB8XzJKlb8z3aq
         ONDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Ch2HJE+ao/XO4Zo6dYUJC5rMUKG56FG1SeoCl8PNcq0=;
        b=x5PyObubid8Zhz/focDXXqfmpXnh6RDltfNcSqiCW7RQRgbyBQPzTdrfgE1STgR0hL
         vuHm005bGmlu3MX+VqfdgqXjIJee8VjypoDKfZD87cgmylJ9/oR/b0pllJUo1wB39Oj5
         HVZzITYqpmNnKl/Tz4XExXjqyBpMwuJh1ntrfwo/H3QXGvqzOM4PahtHX5dB6zCpE+x5
         CrydZ7m4Fxo9tEO020f12L6eFKir0jWlrjKAH8oxQXAaj3MklqDyf/WElV1Lq5FZdfJE
         GCh3aTyjmBnine0LhlFiMvDJ8+4AbopS895MTYNroYIvSOf7Yg9JiHH/g1Z7D8RrFUFs
         TzGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=ZFWaqmUM;
       spf=pass (google.com: domain of mike.kravetz@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=mike.kravetz@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2130.oracle.com (userp2130.oracle.com. [156.151.31.86])
        by gmr-mx.google.com with ESMTPS id y14si262560vsj.2.2019.09.18.18.19.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Sep 2019 18:19:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of mike.kravetz@oracle.com designates 156.151.31.86 as permitted sender) client-ip=156.151.31.86;
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
	by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8J1ETCf047234;
	Thu, 19 Sep 2019 01:18:57 GMT
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
	by userp2130.oracle.com with ESMTP id 2v3vb50n5d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 19 Sep 2019 01:18:57 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
	by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8J1Drg2090667;
	Thu, 19 Sep 2019 01:18:56 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
	by userp3020.oracle.com with ESMTP id 2v3vb4c9xd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 19 Sep 2019 01:18:56 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
	by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x8J1ItqB011438;
	Thu, 19 Sep 2019 01:18:55 GMT
Received: from monkey.oracle.com (/71.63.128.209)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Wed, 18 Sep 2019 18:18:54 -0700
From: Mike Kravetz <mike.kravetz@oracle.com>
To: linux-mm@kvack.org, linux-kernel@vger.kernel.org,
        clang-built-linux@googlegroups.com
Cc: Nathan Chancellor <natechancellor@gmail.com>,
        Davidlohr Bueso <dave@stgolabs.net>,
        Andrew Morton <akpm@linux-foundation.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Ilie Halip <ilie.halip@gmail.com>,
        David Bolvansky <david.bolvansky@gmail.com>,
        Mike Kravetz <mike.kravetz@oracle.com>
Subject: [PATCH] hugetlbfs: hugetlb_fault_mutex_hash cleanup
Date: Wed, 18 Sep 2019 18:18:47 -0700
Message-Id: <20190919011847.18400-1-mike.kravetz@oracle.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9384 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=2 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1909190009
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9384 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1909190009
X-Original-Sender: mike.kravetz@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2019-08-05 header.b=ZFWaqmUM;
       spf=pass (google.com: domain of mike.kravetz@oracle.com designates
 156.151.31.86 as permitted sender) smtp.mailfrom=mike.kravetz@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
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

A new clang diagnostic (-Wsizeof-array-div) warns about the calculation
to determine the number of u32's in an array of unsigned longs. Suppress
warning by adding parentheses.

While looking at the above issue, noticed that the 'address' parameter
to hugetlb_fault_mutex_hash is no longer used. So, remove it from the
definition and all callers.

No functional change.

Reported-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Mike Kravetz <mike.kravetz@oracle.com>
---
 fs/hugetlbfs/inode.c    |  4 ++--
 include/linux/hugetlb.h |  2 +-
 mm/hugetlb.c            | 10 +++++-----
 mm/userfaultfd.c        |  2 +-
 4 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/fs/hugetlbfs/inode.c b/fs/hugetlbfs/inode.c
index a478df035651..6e5eadee6b0d 100644
--- a/fs/hugetlbfs/inode.c
+++ b/fs/hugetlbfs/inode.c
@@ -440,7 +440,7 @@ static void remove_inode_hugepages(struct inode *inode, loff_t lstart,
 			u32 hash;
 
 			index = page->index;
-			hash = hugetlb_fault_mutex_hash(h, mapping, index, 0);
+			hash = hugetlb_fault_mutex_hash(h, mapping, index);
 			mutex_lock(&hugetlb_fault_mutex_table[hash]);
 
 			/*
@@ -644,7 +644,7 @@ static long hugetlbfs_fallocate(struct file *file, int mode, loff_t offset,
 		addr = index * hpage_size;
 
 		/* mutex taken here, fault path and hole punch */
-		hash = hugetlb_fault_mutex_hash(h, mapping, index, addr);
+		hash = hugetlb_fault_mutex_hash(h, mapping, index);
 		mutex_lock(&hugetlb_fault_mutex_table[hash]);
 
 		/* See if already present in mapping to avoid alloc/free */
diff --git a/include/linux/hugetlb.h b/include/linux/hugetlb.h
index edfca4278319..5bf11fffbbd4 100644
--- a/include/linux/hugetlb.h
+++ b/include/linux/hugetlb.h
@@ -106,7 +106,7 @@ void free_huge_page(struct page *page);
 void hugetlb_fix_reserve_counts(struct inode *inode);
 extern struct mutex *hugetlb_fault_mutex_table;
 u32 hugetlb_fault_mutex_hash(struct hstate *h, struct address_space *mapping,
-				pgoff_t idx, unsigned long address);
+				pgoff_t idx);
 
 pte_t *huge_pmd_share(struct mm_struct *mm, unsigned long addr, pud_t *pud);
 
diff --git a/mm/hugetlb.c b/mm/hugetlb.c
index 6d7296dd11b8..3705d3c69e32 100644
--- a/mm/hugetlb.c
+++ b/mm/hugetlb.c
@@ -3847,7 +3847,7 @@ static vm_fault_t hugetlb_no_page(struct mm_struct *mm,
 			 * handling userfault.  Reacquire after handling
 			 * fault to make calling code simpler.
 			 */
-			hash = hugetlb_fault_mutex_hash(h, mapping, idx, haddr);
+			hash = hugetlb_fault_mutex_hash(h, mapping, idx);
 			mutex_unlock(&hugetlb_fault_mutex_table[hash]);
 			ret = handle_userfault(&vmf, VM_UFFD_MISSING);
 			mutex_lock(&hugetlb_fault_mutex_table[hash]);
@@ -3975,7 +3975,7 @@ static vm_fault_t hugetlb_no_page(struct mm_struct *mm,
 
 #ifdef CONFIG_SMP
 u32 hugetlb_fault_mutex_hash(struct hstate *h, struct address_space *mapping,
-			    pgoff_t idx, unsigned long address)
+			    pgoff_t idx)
 {
 	unsigned long key[2];
 	u32 hash;
@@ -3983,7 +3983,7 @@ u32 hugetlb_fault_mutex_hash(struct hstate *h, struct address_space *mapping,
 	key[0] = (unsigned long) mapping;
 	key[1] = idx;
 
-	hash = jhash2((u32 *)&key, sizeof(key)/sizeof(u32), 0);
+	hash = jhash2((u32 *)&key, sizeof(key)/(sizeof(u32)), 0);
 
 	return hash & (num_fault_mutexes - 1);
 }
@@ -3993,7 +3993,7 @@ u32 hugetlb_fault_mutex_hash(struct hstate *h, struct address_space *mapping,
  * return 0 and avoid the hashing overhead.
  */
 u32 hugetlb_fault_mutex_hash(struct hstate *h, struct address_space *mapping,
-			    pgoff_t idx, unsigned long address)
+			    pgoff_t idx)
 {
 	return 0;
 }
@@ -4037,7 +4037,7 @@ vm_fault_t hugetlb_fault(struct mm_struct *mm, struct vm_area_struct *vma,
 	 * get spurious allocation failures if two CPUs race to instantiate
 	 * the same page in the page cache.
 	 */
-	hash = hugetlb_fault_mutex_hash(h, mapping, idx, haddr);
+	hash = hugetlb_fault_mutex_hash(h, mapping, idx);
 	mutex_lock(&hugetlb_fault_mutex_table[hash]);
 
 	entry = huge_ptep_get(ptep);
diff --git a/mm/userfaultfd.c b/mm/userfaultfd.c
index c7ae74ce5ff3..640ff2bd9a69 100644
--- a/mm/userfaultfd.c
+++ b/mm/userfaultfd.c
@@ -269,7 +269,7 @@ static __always_inline ssize_t __mcopy_atomic_hugetlb(struct mm_struct *dst_mm,
 		 */
 		idx = linear_page_index(dst_vma, dst_addr);
 		mapping = dst_vma->vm_file->f_mapping;
-		hash = hugetlb_fault_mutex_hash(h, mapping, idx, dst_addr);
+		hash = hugetlb_fault_mutex_hash(h, mapping, idx);
 		mutex_lock(&hugetlb_fault_mutex_table[hash]);
 
 		err = -ENOMEM;
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190919011847.18400-1-mike.kravetz%40oracle.com.
