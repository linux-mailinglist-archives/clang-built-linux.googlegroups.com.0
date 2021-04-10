Return-Path: <clang-built-linux+bncBCM2HQW3QYHRBRPCY2BQMGQE4DZEIKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 9463535ADF8
	for <lists+clang-built-linux@lfdr.de>; Sat, 10 Apr 2021 16:08:06 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id g6sf2522814ljj.12
        for <lists+clang-built-linux@lfdr.de>; Sat, 10 Apr 2021 07:08:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618063686; cv=pass;
        d=google.com; s=arc-20160816;
        b=t83nNrjFz2SZ3Cjg/FkCEZNZRULfrPPubcnSLDqkT4MTtERpWSmjIYQdmP6dseWkL5
         1iPzxjdpK3RqzCiuHptYyRi1TulgE5D/AkkJbcvbUBSolfChwmgpHl+ESV43oSNl8KDl
         oV5FCsDNU4F6W1mbE+aWtJLawTfhMQRVEq67x9CUqyHVVWZlz1gkSAwbI5bFMy1Rt35b
         frVzpHE5SBnBv37VoeZOGIiKLlNwS31fu86nzwkUG6zmrpXJUnz+QqIWimuCFlwOXLlM
         q3kyi32/jcXLWzUnx6GklTdnO0bh+Wz+z3zKg1s8Dm5qtaXAhINP2lcFh3dSeAE7QmIk
         LFPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=1H3W1tr0GTyNGbbMtsBbm4x2hcJzz8GPRd2ryH32X/A=;
        b=1KJZYsVUjjY5THmoOoZ4uAijdlBq+ZpkkiGBZok3NH9gQNYYnwUXzY5urrPvUBrpZm
         BXdOUbH7YuN5kQB9FhUOrv6CF4mQHHSDfabI4fTlwuEd+OFSGtZJcMnMJqCHN+dk1EW4
         8khGcouqfZRPrUCdP8vizZYGRTBD3C+KEiwFlDp0NjDTd8rEtWFwbe9NvQfBmK1ddeVh
         kFjX/N4hxheVfkcEn315fMqf96LqNmatJbDAMLfbEUb6WJtUY1Sx6lWTp5SkBd7XYFit
         gEcb0+l4DM564L0XNXMo/3ChFqOqozZFm6Vsy/UA7Voz/6754zjKy2vbxFZP2AMwvnek
         HVbA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b="Ukx/6bcp";
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1H3W1tr0GTyNGbbMtsBbm4x2hcJzz8GPRd2ryH32X/A=;
        b=P2FBhzHmGSEHjoSD0VTcXyyn+DM4gJr++rfOSzGpVirYEHUKVjWwtZiuBBEug4fwiK
         F/gyS0TSoExb75X7VfvqcZMn1Yj7i/pVP523WjfaoTfFDgjBX8I/X8y+pN0h580FkNF+
         ssC0csIggU+8KXfDhyEfNE7EWgnIvVmKpaDE1c3SsTHO6H5Asa3hRI4Jtydy6oQM2x3X
         XV7QjfIwq9bckb0w3ZgozqzF1yKShFnuzSUWID+17dER9vJZegkopU20cc7WmGD12i9t
         9is27XJU2VkCrXKwroNcBNZsaVZixN10m73f7/xNowzlBily3wrey5bIs90lifyGqHUJ
         D0mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1H3W1tr0GTyNGbbMtsBbm4x2hcJzz8GPRd2ryH32X/A=;
        b=k64YrQX4pb+wrY/CwL9Brq3pdJ3PBUv3hLxhEAZiDplYjDEPKrYhXxVIoyxmsIXqNG
         dMT0p6NvPHHV021j13Sy+IPInzK8Vlsci0midRcJCAVv7em7JJPTOoqovcLmHyKkMY+x
         niOjHNFaTJ/YR0eEv0s8UJx184zr+F3NVKlkJtcE1Z6+Nak0PezHfZK/fsEN8o4TzWqL
         HADXJ1wZlc4h1lexhH5HmQlxybMwznpoEcHiiRx23gRaQe6yQgqrvvcjlgfGUReUsJY3
         VHjG2st87sIcbuOj6ShFnoQ+AoCnTZeHcmy/wukt7Ma3GVBp0S3r8RBF+NSVKRIRYTSQ
         sBDg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ETNtU457qNw9x1AX8dN4eep9JPoHY1x8JG118AJNWuUOGXY0G
	PJEQjcCZwbSGRo1IxgnG2yE=
X-Google-Smtp-Source: ABdhPJz1iQHGEQEJMYUUdN/OxONJch4p0oXcWyAH/2YS6yeQS6YSTQm1Uw1jf+Em/aI0GPN6vFjQog==
X-Received: by 2002:a05:6512:3d04:: with SMTP id d4mr13337177lfv.102.1618063686094;
        Sat, 10 Apr 2021 07:08:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:6c2:: with SMTP id u2ls539449lff.3.gmail; Sat, 10
 Apr 2021 07:08:05 -0700 (PDT)
X-Received: by 2002:a19:68b:: with SMTP id 133mr13394616lfg.151.1618063685083;
        Sat, 10 Apr 2021 07:08:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618063685; cv=none;
        d=google.com; s=arc-20160816;
        b=tDHxrZ14n7QdVrZjcaEdbr9M9QtirXDb87x15kToBQ050JMOb4JBfJdHrwQh+5pEDS
         d/gYhTtLTKXISjRvfeUJRmTvcKcbC+aXGv4JtJ1jr2rIEkX1U/o0MtzYxpAq6God67vU
         XP4KbInUacjksoVqiuslOjO7t6WHKFxxOpANRpD8c2RTfFsQJUz8qTA8vnPG/mWYqKwe
         qVq3go2/coHiPb9NSVrfGe/FvGN3qEAlE7iTwGgqj/MRdNU1GqY2G3G5fE7x5PY5rjxA
         iS+NlADCiLV+QZ18wAb+XWeMAYeLdEQn8oCmI3+LLs8ndVENmVg+r+eOXue8qMAwRJYA
         5vCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=RTtiSoWYCZ04uVGpMhjmbWk2I8ENKaw5/2meK4GSvVY=;
        b=zF0hEgBy1S38nteOSysVVeA/DFB+oFYWNJkcR3Oc6QD8DTtOy6Ez3JNZIxEct/QgkL
         t57q2hZUPTt1IB2taA9Ktk0ZoKjHbC/PwDk7QXccjW1ulvbPGtmj237GHqQ4rdzSQekI
         roWEE9qQAszIbJkWY0knyfL9P8YyiS9Ji75FrYBni6OuweQroZ80GhfIcEpDdZK/QD7+
         mS2tbPg6v2yj7/bGMKJcqkkCmvGlq02mr5KYEEA00AYeSric8mIXJsEDm2+Rgn8Wt1cI
         eu+zwfkxVYXjTCM9EGPsOmSbnbr3ULCUaHZzOCpz0aw+J6r7MGkbkC6P4OF9TqeJwxr5
         Z+2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b="Ukx/6bcp";
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id 81si468308lfj.2.2021.04.10.07.08.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Apr 2021 07:08:04 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat Linux))
	id 1lVEGC-001lqY-BT; Sat, 10 Apr 2021 14:07:08 +0000
Date: Sat, 10 Apr 2021 15:06:52 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Ilias Apalodimas <ilias.apalodimas@linaro.org>
Cc: Jesper Dangaard Brouer <brouer@redhat.com>,
	kernel test robot <lkp@intel.com>, Linux-MM <linux-mm@kvack.org>,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	open list <linux-kernel@vger.kernel.org>,
	linux-fsdevel@vger.kernel.org,
	Michael Ellerman <mpe@ellerman.id.au>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	"David S. Miller" <davem@davemloft.net>,
	Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>,
	Matteo Croce <mcroce@linux.microsoft.com>,
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>,
	Grygorii Strashko <grygorii.strashko@ti.com>
Subject: Re: Bogus struct page layout on 32-bit
Message-ID: <20210410140652.GY2531743@casper.infradead.org>
References: <20210409185105.188284-3-willy@infradead.org>
 <202104100656.N7EVvkNZ-lkp@intel.com>
 <20210410024313.GX2531743@casper.infradead.org>
 <20210410082158.79ad09a6@carbon>
 <CAC_iWjLXZ6-hhvmvee6r4R_N64u-hrnLqE_CSS1nQk+YaMQQnA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAC_iWjLXZ6-hhvmvee6r4R_N64u-hrnLqE_CSS1nQk+YaMQQnA@mail.gmail.com>
X-Original-Sender: willy@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b="Ukx/6bcp";
       spf=pass (google.com: best guess record for domain of
 willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
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

How about moving the flags into the union?  A bit messy, but we don't
have to play games with __packed__.

diff --git a/include/linux/mm_types.h b/include/linux/mm_types.h
index 1210a8e41fad..f374d2f06255 100644
--- a/include/linux/mm_types.h
+++ b/include/linux/mm_types.h
@@ -68,16 +68,22 @@ struct mem_cgroup;
 #endif
 
 struct page {
-	unsigned long flags;		/* Atomic flags, some possibly
-					 * updated asynchronously */
 	/*
-	 * Five words (20/40 bytes) are available in this union.
-	 * WARNING: bit 0 of the first word is used for PageTail(). That
-	 * means the other users of this union MUST NOT use the bit to
+	 * This union is six words (24 / 48 bytes) in size.
+	 * The first word is reserved for atomic flags, often updated
+	 * asynchronously.  Use the PageFoo() macros to access it.  Some
+	 * of the flags can be reused for your own purposes, but the
+	 * word as a whole often contains other information and overwriting
+	 * it will cause functions like page_zone() and page_node() to stop
+	 * working correctly.
+	 *
+	 * Bit 0 of the second word is used for PageTail(). That
+	 * means the other users of this union MUST leave the bit zero to
 	 * avoid collision and false-positive PageTail().
 	 */
 	union {
 		struct {	/* Page cache and anonymous pages */
+			unsigned long flags;
 			/**
 			 * @lru: Pageout list, eg. active_list protected by
 			 * lruvec->lru_lock.  Sometimes used as a generic list
@@ -96,6 +102,8 @@ struct page {
 			unsigned long private;
 		};
 		struct {	/* page_pool used by netstack */
+			unsigned long _pp_flags;
+			unsigned long _pp_pad;
 			/**
 			 * @dma_addr: might require a 64-bit value even on
 			 * 32-bit architectures.
@@ -103,6 +111,7 @@ struct page {
 			dma_addr_t dma_addr;
 		};
 		struct {	/* slab, slob and slub */
+			unsigned long _slab_flags;
 			union {
 				struct list_head slab_list;
 				struct {	/* Partial pages */
@@ -130,6 +139,7 @@ struct page {
 			};
 		};
 		struct {	/* Tail pages of compound page */
+			unsigned long _tail1_flags;
 			unsigned long compound_head;	/* Bit zero is set */
 
 			/* First tail page only */
@@ -139,12 +149,14 @@ struct page {
 			unsigned int compound_nr; /* 1 << compound_order */
 		};
 		struct {	/* Second tail page of compound page */
+			unsigned long _tail2_flags;
 			unsigned long _compound_pad_1;	/* compound_head */
 			atomic_t hpage_pinned_refcount;
 			/* For both global and memcg */
 			struct list_head deferred_list;
 		};
 		struct {	/* Page table pages */
+			unsigned long _pt_flags;
 			unsigned long _pt_pad_1;	/* compound_head */
 			pgtable_t pmd_huge_pte; /* protected by page->ptl */
 			unsigned long _pt_pad_2;	/* mapping */
@@ -159,6 +171,7 @@ struct page {
 #endif
 		};
 		struct {	/* ZONE_DEVICE pages */
+			unsigned long _zd_flags;
 			/** @pgmap: Points to the hosting device page map. */
 			struct dev_pagemap *pgmap;
 			void *zone_device_data;
@@ -174,8 +187,11 @@ struct page {
 			 */
 		};
 
-		/** @rcu_head: You can use this to free a page by RCU. */
-		struct rcu_head rcu_head;
+		struct {
+			unsigned long _rcu_flags;
+			/** @rcu_head: You can use this to free a page by RCU. */
+			struct rcu_head rcu_head;
+		};
 	};
 
 	union {		/* This union is 4 bytes in size. */

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210410140652.GY2531743%40casper.infradead.org.
