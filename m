Return-Path: <clang-built-linux+bncBDMMLW4BXYHBBTFM66CQMGQEPG3YLJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 32DB439D6FB
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Jun 2021 10:18:22 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id b7-20020a1709026507b0290103ee45ae76sf7475389plk.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 01:18:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623053901; cv=pass;
        d=google.com; s=arc-20160816;
        b=EoQRGVEaPR3j+WgbDvvmQORAlaKFYDvZkwPnMf8zLzCVquMkKM0sdi6v94vexyl+8q
         K1h8atdsoTfAtnSih6x7PphmzPb0BSImSAXLYZH04d0+XWAswhMV02ZAy4dGwbXplMJQ
         jFwCbBZEpBlkwBibFlkR5/TWXW1YJHA4jon1J7yALOG5R+xi4z+sLPUasg2w3RzLXHT7
         /7/wmMRg37FbMK844dH4IfhqTns+4G/31qrYwNe4q+xCsx4EhbOwWoeJPsH1/Bkvbphc
         aBu7zP8HGYknaOXqtlXn8on2WFkszt3tFflAJO9Jwgh/pIKjxF5FgQOCqM5ipZQnOC+K
         gKRA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=2jjgDk09tODrNhScb5SU9SJKQO3h1FNgsMjJ/KC5U3I=;
        b=z6yqhzugg+MDkTnx9eXXJmbArtRaT9fzm7fFlHagYgpTw4KVSLaRYEVynAx9mQ5Rvi
         dd8/2EPn84qi4CB9hgQxg5WmjfgcagvIKvn4lrlXQZhhPerAsXT9cWflNenEiDDg+fkL
         TYmWSmqgJ+uvkMj8OEdDZRxu0KOhQiFWXxnH2I4YpFmBQPQiyy17tw2H1/qSYZciWgGD
         LV2GNmpfTsj5XkOv+0z+X1K0GZBHdHSCSEb3MgGUixGD7OFFDENP7K223b5L8bQRqDLW
         zrBTawNvtlaV8g/fu3nuqZn4PPv51p/7ql5boY8N+2/pB/QhzZqEJF2ecBBBgl8bxWSo
         TUsA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=YbTVsaGD;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2jjgDk09tODrNhScb5SU9SJKQO3h1FNgsMjJ/KC5U3I=;
        b=MmiLU6m6lEmSWCHvKnETSfVcSbFHW+9YpxzdjzRKnWeugNQ3noecrKdHdQ9IfqAXXT
         NXj+jhXaL66E1sqMktCEn5VE5JUv1XvwxLKFg6wjnIDnKAcNNWMUdk8jGxF9PhI8PbPZ
         s47Dr0PxkZJ94ifH7Tg+Lxl8BK9dNRfMEKeDKMNJfhxNruzlSIOee7/YuyCmTaUM+I5G
         YKISt8vT5Ja3HMkHqnuowyo+kB651U2vrofpmWd33QxQRUyapRBG84awS9efONKUhKhu
         hviLMEam/n/VGoIW1LO5E/oammlbzJlWfV2EePky9Un841vnn33+osjLiT2wkU3UfJQy
         zaMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2jjgDk09tODrNhScb5SU9SJKQO3h1FNgsMjJ/KC5U3I=;
        b=iB9OTde3jx3VTP8APmb7/Ie5XYaEpiq1bpbLggqG+xNnhcMitcFpO1lpg6iacATg57
         +BbCGV81edMuMo2LRL5jdmmLEaKHbbrGnTw0f+D7/BotCITxpBhJ43dxgl4xFKXILXfJ
         EKroh6aWEZgEKG6KI9dKZZIo3bu6mmeyT1zGM2Vn8YcGZkyVR0k6xsYB79cXCKIpeDVE
         Vew0x/geX6+T/i7wIAQybbOPTOa1dCtrCLXF9RmvGsMVto0dxM+vjsL63rgT8jtwjzoe
         rOAZ0PemI5/VnOKse8VLOAXv67D3xmbDIsVovvhiynNWAEmfuP7EyX3bIhVwaWeOEgli
         3baw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5318Lp13K1K2DkxIYIk7fiA5Meitz7rLsH0Gcz8Iyu7iKJQvwr3n
	b0OdhJKPKFA41mIOYH/oQco=
X-Google-Smtp-Source: ABdhPJyx06qPkgktgyj7i3tLywPZXa3Ha5Ruys+D76KrpWhf2IgsftouuWgg0IuxVORaO5EqA4J2Cw==
X-Received: by 2002:a65:498e:: with SMTP id r14mr7616581pgs.57.1623053900961;
        Mon, 07 Jun 2021 01:18:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8dc9:: with SMTP id j9ls2236778pfr.9.gmail; Mon, 07 Jun
 2021 01:18:20 -0700 (PDT)
X-Received: by 2002:a63:8f46:: with SMTP id r6mr17050793pgn.182.1623053900497;
        Mon, 07 Jun 2021 01:18:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623053900; cv=none;
        d=google.com; s=arc-20160816;
        b=Ambzx7uc6Q1J8M9QRrJO7Db9q3u2M37A1oMa2JPIAzQIEeFppIDOf7Lr5Q6bPZKLOb
         6oeA/b6nmWVY0hsFH/rG1FtYxGdpdDaT2vz5dE1bL/LNNSXoYu5lzau78WsVoL90MldU
         PzZER8xQUwhjPC+eHenVzId0gUNDnEvggwNuiDao1p0vx1h1BbqBGOMR2XvZhIXuw8HA
         yF2GAVQ0JLMEKttdi7TrzYuEOUYLfYrPxehyHdpfWgXPZwvSruSkQeT0razxL0XhMdH2
         jTq8PS8vAvGAV9BKB8H27VpFGq23b2Mdh7IzMfC/FTsSzAI8VGyHZIpTZHKBAXj5zX7T
         ytBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=K5N0NvU9LCrwTXdgreWvEFs2307dSZHQNJtnv77L6K4=;
        b=KvNV963JhFoPL6zhLkOQGuSfGj5rbicYRlarju+e3C8X2EKyTlhizQ/10r6aqqRVo+
         cj1XTtzN5zYWJqS7HwFShfk8un3AHrKSr+2oeznwCWO2B/EMjwhZ/UddefONNgtp1fPD
         uBefYF0EN2bq/oLYqk3ARi5m0XoYqqqAU1Z9Fuss3+lGHQwtsWnzGNK/lks1/7bkWThg
         L6mgYPE8Lkqz931acWetMJl+DsxS532pE1nvz15uBp0Y1htKPBhcr2kgssYI4+ZgZ9fW
         86fpCw52P8WPPPxApw7n3a5Y30/BcTTzSHgeW36aFTx2wVfqh+CdZikTlvmBg93byYml
         pYWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=YbTVsaGD;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b13si1089941pgs.3.2021.06.07.01.18.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Jun 2021 01:18:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 582D560FF1;
	Mon,  7 Jun 2021 08:18:19 +0000 (UTC)
From: Leon Romanovsky <leon@kernel.org>
To: Doug Ledford <dledford@redhat.com>,
	Jason Gunthorpe <jgg@nvidia.com>
Cc: Greg KH <gregkh@linuxfoundation.org>,
	Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Adit Ranadive <aditr@vmware.com>,
	Ariel Elior <aelior@marvell.com>,
	Christian Benvenuti <benve@cisco.com>,
	clang-built-linux@googlegroups.com,
	Dennis Dalessandro <dennis.dalessandro@cornelisnetworks.com>,
	Devesh Sharma <devesh.sharma@broadcom.com>,
	Gal Pressman <galpress@amazon.com>,
	linux-kernel@vger.kernel.org,
	linux-rdma@vger.kernel.org,
	Michal Kalderon <mkalderon@marvell.com>,
	Mike Marciniszyn <mike.marciniszyn@cornelisnetworks.com>,
	Mustafa Ismail <mustafa.ismail@intel.com>,
	Naresh Kumar PBS <nareshkumar.pbs@broadcom.com>,
	Nelson Escobar <neescoba@cisco.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Potnuri Bharat Teja <bharat@chelsio.com>,
	Selvin Xavier <selvin.xavier@broadcom.com>,
	Shiraz Saleem <shiraz.saleem@intel.com>,
	VMware PV-Drivers <pv-drivers@vmware.com>,
	Yishai Hadas <yishaih@nvidia.com>,
	Zhu Yanjun <zyjzyj2000@gmail.com>
Subject: [PATCH rdma-next v1 05/15] RDMA/core: Simplify how the gid_attrs sysfs is created
Date: Mon,  7 Jun 2021 11:17:30 +0300
Message-Id: <3773a64b8e0daab573e23438f4c1e0ae85cace84.1623053078.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1623053078.git.leonro@nvidia.com>
References: <cover.1623053078.git.leonro@nvidia.com>
MIME-Version: 1.0
X-Original-Sender: leon@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=YbTVsaGD;       spf=pass
 (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=leon@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

From: Jason Gunthorpe <jgg@nvidia.com>

Instead of having an whole bunch of different allocations to create the
gid_attr kobjects reduce it to three, one for the kobj struct plus the
attributes, and one for the attribute list for each of the two
groups.

Move the freeing of all allocations to the release function.

Reorder the operations so all the allocations happen first then the
kobject & sysfs operations are last.

This removes the majority of the complicated error unwind since the
release function will always undo all the memory allocations. Freeing the
memory is also much simpler since there is a lot less of it.

Consolidate creating the "group of array indexes" pattern into one helper
function. Ensure kobject_del is used.

Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 drivers/infiniband/core/sysfs.c | 170 +++++++++++++++++---------------
 1 file changed, 89 insertions(+), 81 deletions(-)

diff --git a/drivers/infiniband/core/sysfs.c b/drivers/infiniband/core/sysfs.c
index d2a089a6f666..006bf759e890 100644
--- a/drivers/infiniband/core/sysfs.c
+++ b/drivers/infiniband/core/sysfs.c
@@ -47,23 +47,6 @@
 
 struct ib_port;
 
-struct gid_attr_group {
-	struct ib_port		*port;
-	struct kobject		kobj;
-	struct attribute_group	ndev;
-	struct attribute_group	type;
-};
-struct ib_port {
-	struct kobject         kobj;
-	struct ib_device      *ibdev;
-	struct gid_attr_group *gid_attr_group;
-	struct attribute_group gid_group;
-	struct attribute_group *pkey_group;
-	const struct attribute_group *pma_table;
-	struct hw_stats_port_data *hw_stats_data;
-	u32                     port_num;
-};
-
 struct port_attribute {
 	struct attribute attr;
 	ssize_t (*show)(struct ib_port *, struct port_attribute *, char *buf);
@@ -84,6 +67,25 @@ struct port_table_attribute {
 	__be16			attr_id;
 };
 
+struct gid_attr_group {
+	struct ib_port *port;
+	struct kobject kobj;
+	struct attribute_group groups[2];
+	const struct attribute_group *groups_list[3];
+	struct port_table_attribute attrs_list[];
+};
+
+struct ib_port {
+	struct kobject kobj;
+	struct ib_device *ibdev;
+	struct gid_attr_group *gid_attr_group;
+	struct attribute_group gid_group;
+	struct attribute_group *pkey_group;
+	const struct attribute_group *pma_table;
+	struct hw_stats_port_data *hw_stats_data;
+	u32 port_num;
+};
+
 struct hw_stats_device_attribute {
 	struct device_attribute attr;
 	ssize_t (*show)(struct ib_device *ibdev, struct rdma_hw_stats *stats,
@@ -776,26 +778,13 @@ static void ib_port_release(struct kobject *kobj)
 
 static void ib_port_gid_attr_release(struct kobject *kobj)
 {
-	struct gid_attr_group *g = container_of(kobj, struct gid_attr_group,
-						kobj);
-	struct attribute *a;
+	struct gid_attr_group *gid_attr_group =
+		container_of(kobj, struct gid_attr_group, kobj);
 	int i;
 
-	if (g->ndev.attrs) {
-		for (i = 0; (a = g->ndev.attrs[i]); ++i)
-			kfree(a);
-
-		kfree(g->ndev.attrs);
-	}
-
-	if (g->type.attrs) {
-		for (i = 0; (a = g->type.attrs[i]); ++i)
-			kfree(a);
-
-		kfree(g->type.attrs);
-	}
-
-	kfree(g);
+	for (i = 0; i != ARRAY_SIZE(gid_attr_group->groups); i++)
+		kfree(gid_attr_group->groups[i].attrs);
+	kfree(gid_attr_group);
 }
 
 static struct kobj_type port_type = {
@@ -1178,6 +1167,41 @@ struct rdma_hw_stats *ib_get_hw_stats_port(struct ib_device *ibdev,
 	return ibdev->port_data[port_num].sysfs->hw_stats_data->stats;
 }
 
+static int alloc_port_table_group(
+	const char *name, struct attribute_group *group,
+	struct port_table_attribute *attrs, size_t num,
+	ssize_t (*show)(struct ib_port *, struct port_attribute *, char *buf))
+{
+	struct attribute **attr_list;
+	int i;
+
+	attr_list = kcalloc(num + 1, sizeof(*attr_list), GFP_KERNEL);
+	if (!attr_list)
+		return -ENOMEM;
+
+	for (i = 0; i < num; i++) {
+		struct port_table_attribute *element = &attrs[i];
+
+		if (snprintf(element->name, sizeof(element->name), "%d", i) >=
+		    sizeof(element->name))
+			goto err;
+
+		sysfs_attr_init(&element->attr.attr);
+		element->attr.attr.name = element->name;
+		element->attr.attr.mode = 0444;
+		element->attr.show = show;
+		element->index = i;
+
+		attr_list[i] = &element->attr.attr;
+	}
+	group->name = name;
+	group->attrs = attr_list;
+	return 0;
+err:
+	kfree(attr_list);
+	return -EINVAL;
+}
+
 /*
  * Create the sysfs:
  *  ibp0s9/ports/XX/gid_attrs/{ndevs,types}/YYY
@@ -1188,60 +1212,44 @@ static int setup_gid_attrs(struct ib_port *port,
 {
 	struct gid_attr_group *gid_attr_group;
 	int ret;
-	int i;
 
-	gid_attr_group = kzalloc(sizeof(*gid_attr_group), GFP_KERNEL);
+	gid_attr_group = kzalloc(struct_size(gid_attr_group, attrs_list,
+					     attr->gid_tbl_len * 2),
+				 GFP_KERNEL);
 	if (!gid_attr_group)
 		return -ENOMEM;
-
 	gid_attr_group->port = port;
-	ret = kobject_init_and_add(&gid_attr_group->kobj, &gid_attr_type,
-				   &port->kobj, "gid_attrs");
-	if (ret)
-		goto err_put_gid_attrs;
-
-	gid_attr_group->ndev.name = "ndevs";
-	gid_attr_group->ndev.attrs =
-		alloc_group_attrs(show_port_gid_attr_ndev, attr->gid_tbl_len);
-	if (!gid_attr_group->ndev.attrs) {
-		ret = -ENOMEM;
-		goto err_put_gid_attrs;
-	}
+	kobject_init(&gid_attr_group->kobj, &gid_attr_type);
 
-	ret = sysfs_create_group(&gid_attr_group->kobj, &gid_attr_group->ndev);
+	ret = alloc_port_table_group("ndevs", &gid_attr_group->groups[0],
+				     gid_attr_group->attrs_list,
+				     attr->gid_tbl_len,
+				     show_port_gid_attr_ndev);
 	if (ret)
-		goto err_free_gid_ndev;
-
-	gid_attr_group->type.name = "types";
-	gid_attr_group->type.attrs = alloc_group_attrs(
-		show_port_gid_attr_gid_type, attr->gid_tbl_len);
-	if (!gid_attr_group->type.attrs) {
-		ret = -ENOMEM;
-		goto err_remove_gid_ndev;
-	}
+		goto err_put;
+	gid_attr_group->groups_list[0] = &gid_attr_group->groups[0];
 
-	ret = sysfs_create_group(&gid_attr_group->kobj, &gid_attr_group->type);
+	ret = alloc_port_table_group(
+		"types", &gid_attr_group->groups[1],
+		gid_attr_group->attrs_list + attr->gid_tbl_len,
+		attr->gid_tbl_len, show_port_gid_attr_gid_type);
 	if (ret)
-		goto err_free_gid_type;
+		goto err_put;
+	gid_attr_group->groups_list[1] = &gid_attr_group->groups[1];
 
+	ret = kobject_add(&gid_attr_group->kobj, &port->kobj, "gid_attrs");
+	if (ret)
+		goto err_put;
+	ret = sysfs_create_groups(&gid_attr_group->kobj,
+				  gid_attr_group->groups_list);
+	if (ret)
+		goto err_del;
 	port->gid_attr_group = gid_attr_group;
 	return 0;
 
-err_free_gid_type:
-	for (i = 0; i < attr->gid_tbl_len; ++i)
-		kfree(gid_attr_group->type.attrs[i]);
-
-	kfree(gid_attr_group->type.attrs);
-	gid_attr_group->type.attrs = NULL;
-err_remove_gid_ndev:
-	sysfs_remove_group(&gid_attr_group->kobj, &gid_attr_group->ndev);
-err_free_gid_ndev:
-	for (i = 0; i < attr->gid_tbl_len; ++i)
-		kfree(gid_attr_group->ndev.attrs[i]);
-
-	kfree(gid_attr_group->ndev.attrs);
-	gid_attr_group->ndev.attrs = NULL;
-err_put_gid_attrs:
+err_del:
+	kobject_del(&gid_attr_group->kobj);
+err_put:
 	kobject_put(&gid_attr_group->kobj);
 	return ret;
 }
@@ -1250,10 +1258,10 @@ static void destroy_gid_attrs(struct ib_port *port)
 {
 	struct gid_attr_group *gid_attr_group = port->gid_attr_group;
 
-	sysfs_remove_group(&gid_attr_group->kobj,
-			   &gid_attr_group->ndev);
-	sysfs_remove_group(&gid_attr_group->kobj,
-			   &gid_attr_group->type);
+	if (!gid_attr_group)
+		return;
+	sysfs_remove_groups(&gid_attr_group->kobj, gid_attr_group->groups_list);
+	kobject_del(&gid_attr_group->kobj);
 	kobject_put(&gid_attr_group->kobj);
 }
 
-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/3773a64b8e0daab573e23438f4c1e0ae85cace84.1623053078.git.leonro%40nvidia.com.
