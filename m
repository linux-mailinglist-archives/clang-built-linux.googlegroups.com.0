Return-Path: <clang-built-linux+bncBAABBKX56H3QKGQE3NLCD5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x639.google.com (mail-ej1-x639.google.com [IPv6:2a00:1450:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id BE469210ADE
	for <lists+clang-built-linux@lfdr.de>; Wed,  1 Jul 2020 14:16:42 +0200 (CEST)
Received: by mail-ej1-x639.google.com with SMTP id d16sf8198765eje.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 01 Jul 2020 05:16:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593605802; cv=pass;
        d=google.com; s=arc-20160816;
        b=YUKO4fHs9UN7W2/dV7RGx+5deSMiKgINDYqpTd0GmdHpfH/zRTtAdeEMMY+cCNv9c2
         NVjREOdnFuu3yPUuMJeAlIXH5YR1Wsdc6nY6nXEI7HQqWw5TfU2jlJDwBOIF+U6eRAt0
         HozZ5JbKbAr6oHOjs0REx36dYze3o/YSf9XWEwtYU8zhH+HLQzrgvFhB/zqyeTkfJmUQ
         H1iabdVP0KEHFkwVsnAQzBFxOLrnsnPBX6nqIlV+aCSE9bNvb0LfoNKinX5B2Nti5+qM
         VpRwlu8cjSytDNfbsfmolrwT3Q6B6RHB+rtmmiVsT76imDWV3xG7jn9AMnL39tIkMOAk
         jsrQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=HomLYiT62Z0pCk8VpsMDPaYlnT+r5+6LseCOyNL5vBc=;
        b=GWD8xuzf8vYrG6hpDHHRQGgtTEpJkjX1wH64tzdBAoHtZObllXFEaBHFAmBgfsSuWY
         ngxnqnox41UkiwB/uUWTKGOhtCABRon4L4hZoHzBaT3t51xUT7tAXahjb/3UaXFdOdzw
         ArEPqG+6N4mUWzb+tKnkHlcCkD5IkxjUR/gf6wE6qb6Kf2eh7WXfUPoQCyhfIH5642rC
         GRmn9jGUOf1k/Gh+eDOV6ORIIpF045w5HiWuuY+kNl6sCZ6xub+p1aRUVFERp/6WGkJU
         gKZbIueBeImZG5TLZxetB2NvGWjFiumD395s5+ixK8BSyfZM4K95PY0Y6aDShH+pksaY
         oI2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HomLYiT62Z0pCk8VpsMDPaYlnT+r5+6LseCOyNL5vBc=;
        b=DSUjNOk4l/ikgTyduJ+1Z6a7GehdQy6sQ3ut+fqkVcUgzcVzD51LqLABVxXcMLparM
         OZ415+oiUOG2l6fkFhhG9VFE/0Tt3wUByOkPPwCSAPbKM6HMEN58sP6vHt4XbLJ0PTjP
         43UYiVBwKqIA7Yymr4AEw/nGG0eJ3aMUFZkDnCtDN0nRLvModTlTrsGJDbZRTrXjlTJa
         TxweHeRAy8eMpA+URfp6izzEw7dlOziXYEBOi08z4CMgyiT8rT6RWZ4C2jRjYHHx/XLt
         FOzWMZ9ex7123C62736qPuqNxAKp024Z45f7zwS17bxFJPj1gqprBLwHxbqPAVn44rzg
         i56w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HomLYiT62Z0pCk8VpsMDPaYlnT+r5+6LseCOyNL5vBc=;
        b=k+BXH8TmjRtHz5sYc8XkF0XCJBEkP0gRKEvjnVZssCEYY7isdzQ4n/aq0q8vyPac2j
         oq15z1tI1lyUC1nI7VqdreEOIlD6hwP2uYuP6T5G05/XBJo1ITxFy8LLUf5m5LX44rE3
         3XTX9HUsw3Zsf5nCRlwI0gDPPp+wpq5fmwyYwOq4UgvmbybBjwWlxFEt0GMffrX84rtz
         Fgzd346L7MRAcXtoWX9n2kTrt4Bu71HK1hXi2WD5VkPxwHa9uIpkWOeSVmiJnuz13HLU
         uH5nSo4umvyrQgK7+VaTdgUbEqMRt82YN8xZ2iVMjTs8s5DtxrR3RGuT12tzCvkFjVbA
         skhQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5325y+tg/sgw8AiOOX1Gj3lfdcgFMDefADAMLtlq6InsB86Nt7dj
	pkD+o3YmCWgHvTvUSNvB4Jg=
X-Google-Smtp-Source: ABdhPJxXm2u38BwuZ6G0SxY8XNcn7HN4rshhXD253fpGul5I7zjIBqhGJkLX/H1DyKRLJBCbP6sF9Q==
X-Received: by 2002:a05:6402:31ba:: with SMTP id dj26mr22260445edb.181.1593605802505;
        Wed, 01 Jul 2020 05:16:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:8c22:: with SMTP id p31ls3257989edp.0.gmail; Wed, 01 Jul
 2020 05:16:42 -0700 (PDT)
X-Received: by 2002:aa7:c606:: with SMTP id h6mr27428459edq.363.1593605802178;
        Wed, 01 Jul 2020 05:16:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593605802; cv=none;
        d=google.com; s=arc-20160816;
        b=ZCsy6e3yGIjUrfWtWIDHveLOM6hAnPzWcyOp1JL8hhY/H9lj705zvSN3REjKrD9DlA
         YDc6V76jLVVD41FQZKiNmL/5qEHQt1QvfXqUTEEbrWk+n8FZlLWwkvX4UN5H7+QqTNdu
         w/LcmWf8uglOL7p5iEUHf24Yx7udv6FzHT5ekwSJwHGmoQdCS+Sa2jlcEO9b8GwllOe9
         zBgxc1WdNI5+0lND1nI0hBBZ/bamTP1A70x4rHQ3426o1jsC1csP4RhYUdNleLdJCqa/
         WYumKJoJdx8YLkmrQymkOYfncJZ3NOYWCW91Xi18Hbrnm4kPFeoxdd7ypwpgRjXHVqm2
         4tjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=RV/Kl5/ONCi4HEES+j1iHCq1hjYzxDtO/qGSWZ8qjIM=;
        b=amU8FSxI75YTfW4DJLas8StdHCeKOcOID/eW30sZ3fwGB9eErfG3XzEt1L6BGR1Tij
         UFRaN2KWep1YMqaSNqZpfvQHGkN1xAIM899YuUVtih+renI91DjoEcDvnykvsHIJX/ha
         beJYBKkmSjDmDcP0+SQGmOi8di4TJssE+G9bNmv7P32O15XbpLQW9A3XH4vt5hZLJceO
         HcEgCShMSASCH/15CVPsfCceW/K9OcFocs1hS3YQ0YB8w6sohTMSVgs5Y2iPAdvRK++U
         bkV0AdyozEk7FxSIxXU4Hl9WUan6nxG6IIGSAORSxOLKs2IigQO3NMU3X1KSy+W/4ULp
         auqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id k4si308190edl.4.2020.07.01.05.16.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Jul 2020 05:16:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id CA5A5ADE1;
	Wed,  1 Jul 2020 12:16:41 +0000 (UTC)
From: Juergen Gross <jgross@suse.com>
To: xen-devel@lists.xenproject.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Cc: Juergen Gross <jgross@suse.com>,
	Boris Ostrovsky <boris.ostrovsky@oracle.com>,
	Stefano Stabellini <sstabellini@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH v2 1/2] xen/xenbus: avoid large structs and arrays on the stack
Date: Wed,  1 Jul 2020 14:16:37 +0200
Message-Id: <20200701121638.19840-2-jgross@suse.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200701121638.19840-1-jgross@suse.com>
References: <20200701121638.19840-1-jgross@suse.com>
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
V2:
- shorten internal function names (Boris Ostrovsky)
---
 drivers/xen/xenbus/xenbus_client.c | 161 +++++++++++++++--------------
 1 file changed, 83 insertions(+), 78 deletions(-)

diff --git a/drivers/xen/xenbus/xenbus_client.c b/drivers/xen/xenbus/xenbus_client.c
index 040d2a43e8e3..9f8372079ecf 100644
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
@@ -589,39 +613,28 @@ static void xenbus_map_ring_setup_grant_hvm(unsigned long gfn,
 	info->idx++;
 }
 
-static int xenbus_map_ring_valloc_hvm(struct xenbus_device *dev,
-				      grant_ref_t *gnt_ref,
-				      unsigned int nr_grefs,
-				      void **vaddr)
+static int xenbus_map_ring_hvm(struct xenbus_device *dev,
+			       struct map_ring_valloc *info,
+			       grant_ref_t *gnt_ref,
+			       unsigned int nr_grefs,
+			       void **vaddr)
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
 
@@ -676,40 +690,30 @@ int xenbus_unmap_ring_vfree(struct xenbus_device *dev, void *vaddr)
 EXPORT_SYMBOL_GPL(xenbus_unmap_ring_vfree);
 
 #ifdef CONFIG_XEN_PV
-static int xenbus_map_ring_valloc_pv(struct xenbus_device *dev,
-				     grant_ref_t *gnt_refs,
-				     unsigned int nr_grefs,
-				     void **vaddr)
+static int xenbus_map_ring_pv(struct xenbus_device *dev,
+			      struct map_ring_valloc *info,
+			      grant_ref_t *gnt_refs,
+			      unsigned int nr_grefs,
+			      void **vaddr)
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
@@ -730,11 +736,10 @@ static int xenbus_map_ring_valloc_pv(struct xenbus_device *dev,
 	else
 		pr_alert("leaking VM area %p size %u page(s)", area, nr_grefs);
 
-	kfree(node);
 	return err;
 }
 
-static int xenbus_unmap_ring_vfree_pv(struct xenbus_device *dev, void *vaddr)
+static int xenbus_unmap_ring_pv(struct xenbus_device *dev, void *vaddr)
 {
 	struct xenbus_map_node *node;
 	struct gnttab_unmap_grant_ref unmap[XENBUS_MAX_RING_GRANTS];
@@ -798,12 +803,12 @@ static int xenbus_unmap_ring_vfree_pv(struct xenbus_device *dev, void *vaddr)
 }
 
 static const struct xenbus_ring_ops ring_ops_pv = {
-	.map = xenbus_map_ring_valloc_pv,
-	.unmap = xenbus_unmap_ring_vfree_pv,
+	.map = xenbus_map_ring_pv,
+	.unmap = xenbus_unmap_ring_pv,
 };
 #endif
 
-struct unmap_ring_vfree_hvm
+struct unmap_ring_hvm
 {
 	unsigned int idx;
 	unsigned long addrs[XENBUS_MAX_RING_GRANTS];
@@ -814,19 +819,19 @@ static void xenbus_unmap_ring_setup_grant_hvm(unsigned long gfn,
 					      unsigned int len,
 					      void *data)
 {
-	struct unmap_ring_vfree_hvm *info = data;
+	struct unmap_ring_hvm *info = data;
 
 	info->addrs[info->idx] = (unsigned long)gfn_to_virt(gfn);
 
 	info->idx++;
 }
 
-static int xenbus_unmap_ring_vfree_hvm(struct xenbus_device *dev, void *vaddr)
+static int xenbus_unmap_ring_hvm(struct xenbus_device *dev, void *vaddr)
 {
 	int rv;
 	struct xenbus_map_node *node;
 	void *addr;
-	struct unmap_ring_vfree_hvm info = {
+	struct unmap_ring_hvm info = {
 		.idx = 0,
 	};
 	unsigned int nr_pages;
@@ -887,8 +892,8 @@ enum xenbus_state xenbus_read_driver_state(const char *path)
 EXPORT_SYMBOL_GPL(xenbus_read_driver_state);
 
 static const struct xenbus_ring_ops ring_ops_hvm = {
-	.map = xenbus_map_ring_valloc_hvm,
-	.unmap = xenbus_unmap_ring_vfree_hvm,
+	.map = xenbus_map_ring_hvm,
+	.unmap = xenbus_unmap_ring_hvm,
 };
 
 void __init xenbus_ring_ops_init(void)
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200701121638.19840-2-jgross%40suse.com.
