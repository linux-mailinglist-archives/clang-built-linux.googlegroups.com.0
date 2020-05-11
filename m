Return-Path: <clang-built-linux+bncBAABB2764P2QKGQE5KZCCZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BE6C1CD294
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 May 2020 09:31:56 +0200 (CEST)
Received: by mail-lj1-x23d.google.com with SMTP id e2sf1092855ljp.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 May 2020 00:31:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589182315; cv=pass;
        d=google.com; s=arc-20160816;
        b=XYnjeYIN/FVLdZ8zx71BOL2bO+/vLhfkSogbkEoXYMcOyi/9UYgZ+/k4CP0AvuygQs
         9Wvceqf7wqcmGurukYHlwsQkzqEuGYJ+viZLEsYpQIGhr6+erTAG/MTWluBbeWuHiZXN
         G+LfSa8NSJBR4sN4jQZim01I/j0QJylIU3M7dds3XC47gRQwe2l6y9V1T57rY6IkF3zg
         ilN4G/PC9A9vTOuMgAjaDvKoRMwl+K2P6Ne+PJh2CIlKVCq/CrekYYjWpnm1P+qKf+il
         LzGAHs9Q82MOvR9PH3nCHaBhJX63rLcUcaHEntI2j8K1CipF3ZkmsmGA89ji0ranL/kP
         KcSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=AAShFlNNsDY4SgQaBn7MCiZ+Y3eoxJjOQd0nxp5rUWE=;
        b=zbe73gTOvVceLHnma8nXtI4R4hJ3lmUV6ICl543FSpencDON80ISXYJfRHKMhz8tCZ
         Er7nsBK4eF4willjDmQQpTdXkqRLiAleWuz40tLePo7FnRVaG9gbqzj8t/E3fz8jqbnh
         cwZstC7dfRnMKidpaxqLf9xEo7tPcifXFpa89hrTTdGpEBtcnE2XyCT3NKtl6AK8QaGC
         lk8rJRHmPU4TPz9NhtZeUgI+Vk6yAsmNEyzoBhnUTgTpowmH/1K6ETiWsXYLK/XSeCBU
         Eyip30zYuf/mL2/IuOOcSt31lZ06J6GUpnFCXWkoVy+li1XyhvonW7dcSs7dIEHNGhu+
         J1PA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AAShFlNNsDY4SgQaBn7MCiZ+Y3eoxJjOQd0nxp5rUWE=;
        b=rM9W5b9Bk0BvNNqRdiwv+NRu4l+0vSB9xRaFenwd/EoeaV2uGuuTjsRfAlUGxgQM23
         epDYkgPKMB64GI0O0BzeHfoxBAfRc0DWLGslNuYWxUdqrN78tSS5I7sAXunKFrOvO8fZ
         WGaVrckon5fZqLxjcjC9kQyAgo1vworLTcsDQeRpnKYeD6nhpUISqLZabihbOuRUGmNz
         jh8haPgmKV+tqjIv/oMWS6Dn/t9qQ4SHI1zZlWI35vncIdeRwEKlJTG2cTl2AZnTRiJb
         BLpnaij8RnFVAdqbYxm1Dj+EnyhpiLiagd3k9fCBw63CfsIYgywiMlYbeJK0PrSDzlbO
         2RTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AAShFlNNsDY4SgQaBn7MCiZ+Y3eoxJjOQd0nxp5rUWE=;
        b=B9gs+tWaXU2jxFlRq2dWlppgOlZF0Bevpq9AgS757m6v+QBTIGqeJyivMxbhiYEaW5
         PxOZsusigMTKrnHI2rU2iXSmtaEO9hFfhRGvmge2n2KQdLAvKOfnuZTy5q0oFlw4rsui
         HTpa0QvacXutYgr60llTGMmLe/DMbkj/4qy7HrSzqV8GTIyCbDZvf5AZNT7nbp5gvUNE
         grgQVaxOasNgjm7rUSp3vZ1Puqlt/b++ravM1NCvMjFJoBEpIVYTEzUa7x7CFRf0hJD8
         K6F26k2a0/QtQvlZeVOH29str+vyf/a9DmDo+8MUbF1W0twmgpNXtJKNKmoTiFBlY+MT
         CkTQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5333R1pOCm4asRtGt2MJeJHNHujhv8hMInnfCSA7L5NRZ2CCFwl/
	b68MWGU/bBPHt85UbtMMPtE=
X-Google-Smtp-Source: ABdhPJwmtyQYCsknLPe4wrEFIZxZaIvEunqnJkEvjwv0e1IpfPhZCl+5GpIQrBxpjwFWtI5/FKT/5g==
X-Received: by 2002:ac2:53af:: with SMTP id j15mr10164759lfh.191.1589182315535;
        Mon, 11 May 2020 00:31:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9ad6:: with SMTP id p22ls2133239ljj.9.gmail; Mon, 11 May
 2020 00:31:55 -0700 (PDT)
X-Received: by 2002:a2e:b017:: with SMTP id y23mr6195155ljk.121.1589182315158;
        Mon, 11 May 2020 00:31:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589182315; cv=none;
        d=google.com; s=arc-20160816;
        b=nQ5gjlPIEykZHc6UZRQIn1iuHoYKSV4O5CXa9mWYPEGHzZR5oqrhxqz45CbiJz3b+2
         MzP6z5I4MCVekvMmlp6xyLeKo8+50ijUWjHwQM7iZgr5mYpIEhFtsxsgjZ4+H/tvTf02
         4AQOncPGbbLBMEHbsOCf4LwKA6YGsWCVnPlnrujg455PkMH5RLvLq+buxsGR9vYvy+up
         EaDgrgNdnur1fD5dpvmguTLtZkTbcPRpStA1h8GyEhznL5w844EqdBmdzatjfU6oB6gz
         1pPPJEnhPwCR4omwN48Tm3UWfyDoTBHXPXO7g7Eg7iNE9FNp2r7WZNhi0KVrDrKNil7F
         MTGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=RyylGemaEplkGEP+pwKTTqxFnacnTinPGDCoNHSzxys=;
        b=yg9eDfUBv0aFit7de7+pUw06XXx7NNLurUVIjsvb7vNxgynexEq+ZSQRch9CYEPoa+
         6XU2Dv0NE8UlRU/8KmSfXEVbe5IetSuAhOGWuLyEnIWwqVaAdLuD6MMn9HTezViQvprk
         FCP916NTrYq35dIoxDo7mz+6fmm1+KOgaieNNL/Unr2an+V2kvPDvN48irysLovquS0n
         W6I6x/6p9QBb79+XxX7mxyFlowuIlt7vSP8oHRdqtTh14EfMQnLQA7+K9sSapUQhUhOL
         LKu7BpxaTV8RFBf+8bAY6SqANJbeT2FrOe5fJOJ9etI8ZFAlXIq8SUPGkSTKVHdlXUYN
         chdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id x16si574403lfn.0.2020.05.11.00.31.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 May 2020 00:31:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx2.suse.de (Postfix) with ESMTP id D0575AC5B;
	Mon, 11 May 2020 07:31:56 +0000 (UTC)
From: Juergen Gross <jgross@suse.com>
To: xen-devel@lists.xenproject.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Cc: Juergen Gross <jgross@suse.com>,
	Boris Ostrovsky <boris.ostrovsky@oracle.com>,
	Stefano Stabellini <sstabellini@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH 1/2] xen/xenbus: avoid large structs and arrays on the stack
Date: Mon, 11 May 2020 09:31:50 +0200
Message-Id: <20200511073151.19043-2-jgross@suse.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200511073151.19043-1-jgross@suse.com>
References: <20200511073151.19043-1-jgross@suse.com>
MIME-Version: 1.0
X-Original-Sender: jgross@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=jgross@suse.com
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

xenbus_map_ring_valloc() and its sub-functions are putting quite large
structs and arrays on the stack. This is problematic at runtime, but
might also result in build failures (e.g. with clang due to the option
-Werror,-Wframe-larger-than=... used).

Fix that by moving most of the data from the stack into a dynamically
allocated struct. Performance is no issue here, as
xenbus_map_ring_valloc() is used only when adding a new PV device to
a backend driver.

While at it move some duplicated code from pv/hvm specific mapping
functions to the single caller.

Reported-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Juergen Gross <jgross@suse.com>
---
 drivers/xen/xenbus/xenbus_client.c | 127 +++++++++++++++--------------
 1 file changed, 66 insertions(+), 61 deletions(-)

diff --git a/drivers/xen/xenbus/xenbus_client.c b/drivers/xen/xenbus/xenbus_client.c
index 040d2a43e8e3..d8e5c5e4fa67 100644
--- a/drivers/xen/xenbus/xenbus_client.c
+++ b/drivers/xen/xenbus/xenbus_client.c
@@ -69,11 +69,27 @@ struct xenbus_map_node {
 	unsigned int   nr_handles;
 };
 
+struct map_ring_valloc {
+	struct xenbus_map_node *node;
+
+	/* Why do we need two arrays? See comment of __xenbus_map_ring */
+	union {
+		unsigned long addrs[XENBUS_MAX_RING_GRANTS];
+		pte_t *ptes[XENBUS_MAX_RING_GRANTS];
+	};
+	phys_addr_t phys_addrs[XENBUS_MAX_RING_GRANTS];
+
+	struct gnttab_map_grant_ref map[XENBUS_MAX_RING_GRANTS];
+	struct gnttab_unmap_grant_ref unmap[XENBUS_MAX_RING_GRANTS];
+
+	unsigned int idx;	/* HVM only. */
+};
+
 static DEFINE_SPINLOCK(xenbus_valloc_lock);
 static LIST_HEAD(xenbus_valloc_pages);
 
 struct xenbus_ring_ops {
-	int (*map)(struct xenbus_device *dev,
+	int (*map)(struct xenbus_device *dev, struct map_ring_valloc *info,
 		   grant_ref_t *gnt_refs, unsigned int nr_grefs,
 		   void **vaddr);
 	int (*unmap)(struct xenbus_device *dev, void *vaddr);
@@ -449,12 +465,32 @@ int xenbus_map_ring_valloc(struct xenbus_device *dev, grant_ref_t *gnt_refs,
 			   unsigned int nr_grefs, void **vaddr)
 {
 	int err;
+	struct map_ring_valloc *info;
+
+	*vaddr = NULL;
+
+	if (nr_grefs > XENBUS_MAX_RING_GRANTS)
+		return -EINVAL;
+
+	info = kzalloc(sizeof(*info), GFP_KERNEL);
+	if (!info)
+		return -ENOMEM;
+
+	info->node = kzalloc(sizeof(*info->node), GFP_KERNEL);
+	if (!info->node) {
+		err = -ENOMEM;
+		goto out;
+	}
+
+	err = ring_ops->map(dev, info, gnt_refs, nr_grefs, vaddr);
 
-	err = ring_ops->map(dev, gnt_refs, nr_grefs, vaddr);
 	/* Some hypervisors are buggy and can return 1. */
 	if (err > 0)
 		err = GNTST_general_error;
 
+ out:
+	kfree(info->node);
+	kfree(info);
 	return err;
 }
 EXPORT_SYMBOL_GPL(xenbus_map_ring_valloc);
@@ -466,12 +502,10 @@ static int __xenbus_map_ring(struct xenbus_device *dev,
 			     grant_ref_t *gnt_refs,
 			     unsigned int nr_grefs,
 			     grant_handle_t *handles,
-			     phys_addr_t *addrs,
+			     struct map_ring_valloc *info,
 			     unsigned int flags,
 			     bool *leaked)
 {
-	struct gnttab_map_grant_ref map[XENBUS_MAX_RING_GRANTS];
-	struct gnttab_unmap_grant_ref unmap[XENBUS_MAX_RING_GRANTS];
 	int i, j;
 	int err = GNTST_okay;
 
@@ -479,23 +513,22 @@ static int __xenbus_map_ring(struct xenbus_device *dev,
 		return -EINVAL;
 
 	for (i = 0; i < nr_grefs; i++) {
-		memset(&map[i], 0, sizeof(map[i]));
-		gnttab_set_map_op(&map[i], addrs[i], flags, gnt_refs[i],
-				  dev->otherend_id);
+		gnttab_set_map_op(&info->map[i], info->phys_addrs[i], flags,
+				  gnt_refs[i], dev->otherend_id);
 		handles[i] = INVALID_GRANT_HANDLE;
 	}
 
-	gnttab_batch_map(map, i);
+	gnttab_batch_map(info->map, i);
 
 	for (i = 0; i < nr_grefs; i++) {
-		if (map[i].status != GNTST_okay) {
-			err = map[i].status;
-			xenbus_dev_fatal(dev, map[i].status,
+		if (info->map[i].status != GNTST_okay) {
+			err = info->map[i].status;
+			xenbus_dev_fatal(dev, info->map[i].status,
 					 "mapping in shared page %d from domain %d",
 					 gnt_refs[i], dev->otherend_id);
 			goto fail;
 		} else
-			handles[i] = map[i].handle;
+			handles[i] = info->map[i].handle;
 	}
 
 	return GNTST_okay;
@@ -503,19 +536,19 @@ static int __xenbus_map_ring(struct xenbus_device *dev,
  fail:
 	for (i = j = 0; i < nr_grefs; i++) {
 		if (handles[i] != INVALID_GRANT_HANDLE) {
-			memset(&unmap[j], 0, sizeof(unmap[j]));
-			gnttab_set_unmap_op(&unmap[j], (phys_addr_t)addrs[i],
+			gnttab_set_unmap_op(&info->unmap[j],
+					    info->phys_addrs[i],
 					    GNTMAP_host_map, handles[i]);
 			j++;
 		}
 	}
 
-	if (HYPERVISOR_grant_table_op(GNTTABOP_unmap_grant_ref, unmap, j))
+	if (HYPERVISOR_grant_table_op(GNTTABOP_unmap_grant_ref, info->unmap, j))
 		BUG();
 
 	*leaked = false;
 	for (i = 0; i < j; i++) {
-		if (unmap[i].status != GNTST_okay) {
+		if (info->unmap[i].status != GNTST_okay) {
 			*leaked = true;
 			break;
 		}
@@ -566,21 +599,12 @@ static int xenbus_unmap_ring(struct xenbus_device *dev, grant_handle_t *handles,
 	return err;
 }
 
-struct map_ring_valloc_hvm
-{
-	unsigned int idx;
-
-	/* Why do we need two arrays? See comment of __xenbus_map_ring */
-	phys_addr_t phys_addrs[XENBUS_MAX_RING_GRANTS];
-	unsigned long addrs[XENBUS_MAX_RING_GRANTS];
-};
-
 static void xenbus_map_ring_setup_grant_hvm(unsigned long gfn,
 					    unsigned int goffset,
 					    unsigned int len,
 					    void *data)
 {
-	struct map_ring_valloc_hvm *info = data;
+	struct map_ring_valloc *info = data;
 	unsigned long vaddr = (unsigned long)gfn_to_virt(gfn);
 
 	info->phys_addrs[info->idx] = vaddr;
@@ -590,38 +614,27 @@ static void xenbus_map_ring_setup_grant_hvm(unsigned long gfn,
 }
 
 static int xenbus_map_ring_valloc_hvm(struct xenbus_device *dev,
+				      struct map_ring_valloc *info,
 				      grant_ref_t *gnt_ref,
 				      unsigned int nr_grefs,
 				      void **vaddr)
 {
-	struct xenbus_map_node *node;
+	struct xenbus_map_node *node = info->node;
 	int err;
 	void *addr;
 	bool leaked = false;
-	struct map_ring_valloc_hvm info = {
-		.idx = 0,
-	};
 	unsigned int nr_pages = XENBUS_PAGES(nr_grefs);
 
-	if (nr_grefs > XENBUS_MAX_RING_GRANTS)
-		return -EINVAL;
-
-	*vaddr = NULL;
-
-	node = kzalloc(sizeof(*node), GFP_KERNEL);
-	if (!node)
-		return -ENOMEM;
-
 	err = alloc_xenballooned_pages(nr_pages, node->hvm.pages);
 	if (err)
 		goto out_err;
 
 	gnttab_foreach_grant(node->hvm.pages, nr_grefs,
 			     xenbus_map_ring_setup_grant_hvm,
-			     &info);
+			     info);
 
 	err = __xenbus_map_ring(dev, gnt_ref, nr_grefs, node->handles,
-				info.phys_addrs, GNTMAP_host_map, &leaked);
+				info, GNTMAP_host_map, &leaked);
 	node->nr_handles = nr_grefs;
 
 	if (err)
@@ -641,11 +654,13 @@ static int xenbus_map_ring_valloc_hvm(struct xenbus_device *dev,
 	spin_unlock(&xenbus_valloc_lock);
 
 	*vaddr = addr;
+	info->node = NULL;
+
 	return 0;
 
  out_xenbus_unmap_ring:
 	if (!leaked)
-		xenbus_unmap_ring(dev, node->handles, nr_grefs, info.addrs);
+		xenbus_unmap_ring(dev, node->handles, nr_grefs, info->addrs);
 	else
 		pr_alert("leaking %p size %u page(s)",
 			 addr, nr_pages);
@@ -653,7 +668,6 @@ static int xenbus_map_ring_valloc_hvm(struct xenbus_device *dev,
 	if (!leaked)
 		free_xenballooned_pages(nr_pages, node->hvm.pages);
  out_err:
-	kfree(node);
 	return err;
 }
 
@@ -677,39 +691,29 @@ EXPORT_SYMBOL_GPL(xenbus_unmap_ring_vfree);
 
 #ifdef CONFIG_XEN_PV
 static int xenbus_map_ring_valloc_pv(struct xenbus_device *dev,
+				     struct map_ring_valloc *info,
 				     grant_ref_t *gnt_refs,
 				     unsigned int nr_grefs,
 				     void **vaddr)
 {
-	struct xenbus_map_node *node;
+	struct xenbus_map_node *node = info->node;
 	struct vm_struct *area;
-	pte_t *ptes[XENBUS_MAX_RING_GRANTS];
-	phys_addr_t phys_addrs[XENBUS_MAX_RING_GRANTS];
 	int err = GNTST_okay;
 	int i;
 	bool leaked;
 
-	*vaddr = NULL;
-
-	if (nr_grefs > XENBUS_MAX_RING_GRANTS)
-		return -EINVAL;
-
-	node = kzalloc(sizeof(*node), GFP_KERNEL);
-	if (!node)
-		return -ENOMEM;
-
-	area = alloc_vm_area(XEN_PAGE_SIZE * nr_grefs, ptes);
+	area = alloc_vm_area(XEN_PAGE_SIZE * nr_grefs, info->ptes);
 	if (!area) {
 		kfree(node);
 		return -ENOMEM;
 	}
 
 	for (i = 0; i < nr_grefs; i++)
-		phys_addrs[i] = arbitrary_virt_to_machine(ptes[i]).maddr;
+		info->phys_addrs[i] =
+			arbitrary_virt_to_machine(info->ptes[i]).maddr;
 
 	err = __xenbus_map_ring(dev, gnt_refs, nr_grefs, node->handles,
-				phys_addrs,
-				GNTMAP_host_map | GNTMAP_contains_pte,
+				info, GNTMAP_host_map | GNTMAP_contains_pte,
 				&leaked);
 	if (err)
 		goto failed;
@@ -722,6 +726,8 @@ static int xenbus_map_ring_valloc_pv(struct xenbus_device *dev,
 	spin_unlock(&xenbus_valloc_lock);
 
 	*vaddr = area->addr;
+	info->node = NULL;
+
 	return 0;
 
 failed:
@@ -730,7 +736,6 @@ static int xenbus_map_ring_valloc_pv(struct xenbus_device *dev,
 	else
 		pr_alert("leaking VM area %p size %u page(s)", area, nr_grefs);
 
-	kfree(node);
 	return err;
 }
 
-- 
2.26.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200511073151.19043-2-jgross%40suse.com.
