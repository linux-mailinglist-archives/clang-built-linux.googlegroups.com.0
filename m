Return-Path: <clang-built-linux+bncBDMMLW4BXYHBBQERR2DAMGQEXPCN3YI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 347423A45F2
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 18:01:07 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id g22-20020a056a000796b02902f0483fd9e4sf3516202pfu.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 09:01:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623427266; cv=pass;
        d=google.com; s=arc-20160816;
        b=wEk8k0vXB+1dazWhmitlPsUEoi6svCvMg3+6WxAWdGere6y5Eh60vLxi35n2y5m99E
         LPt1UVqKMAsI+RxkVQKjA+Tia2N2anqgUGvmcdg61sMW5fHBqSbp9RcVURRFLvvTRj7Y
         /ZT+IAg/kM23du14Nwok7L5BSm2GNWQeX7QJXUUaX55+7+dkvlKAuVIs+2YTBR5qHBKg
         hC1YSP2cHjdn4vtk9uQNhdtkZMgXv6VNiZN3+SkbajsVj3j7SZiieIQOnwxUe9mODMTa
         4HDSrksWsuYOe+csOWByEc54bqMKM1esZB6/ER8RV9g4+6QnNMJc9XcvD1patwwAKxgR
         V3rA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=9NzDEvQNU2Tu28MuWHkyNI5XtUyNYJAPXBRWDysewa0=;
        b=YzNwVRCnBFGObRKtmtR86OBPxuZYlEGnndUH3bKHN5CrL4vQaithMjA+gyy5MIbKNp
         AkfJkc/Jr3ppVE22qPqLCfVhX9JXX/bdKu2aFn/z4F+C796rXx/aIq5HcIaGyvtCyHfy
         xvL540sOHXErvxgxgSnoPU6TEMbO4RLxkJKwhx752xepposAIbNJlTR3/XGWqBmdYSDh
         6/dg/+yBrPzynaBca5TmCsaz8BMdgpH1YBy739WLFO2DgKe9gwF+fs1Upjbs49duQA2Q
         6/U1G7WrAk3h6R6FCOjvImj6W10ID7f1Q6qtod2LrE1xxuY2p5PjauamgClbLCmWpdOF
         YhAw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=NHVpFplA;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9NzDEvQNU2Tu28MuWHkyNI5XtUyNYJAPXBRWDysewa0=;
        b=B3pefKX+q1HJd+4bcxT+3ljb7bPVgWkbhNiQbDWGNPBEvbmUmnyJQJh+hYhpP4MGmk
         8Gjfu87Yo6nuqNf49Yr/Xn5iQMGOUKfnOpfQgP6y+kNF1aXnwRaWwsTUyqW3pilRrHMT
         hZDysuRG4kGEg4Fw/E6h32SLeXkG9UBTXG3W9/h/JaHS6/o/42gN0VIiTEGsvzi3NpgZ
         XcySpuyVtuqYJnlbYCUliq/84XnyzL1G9+g2njqf+AmWTqOxonSgA5lDmRantlWS1QCH
         1z5l7NKG25QZm5GCo2eegOzsjw3cF1huVIFJ9MFTpHJ8imhZFpAd8Si3dMB6lBLiREBe
         rNEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9NzDEvQNU2Tu28MuWHkyNI5XtUyNYJAPXBRWDysewa0=;
        b=kRxlwRF1NcwDL/UDbE68xhgcVUJojuN1npcYE3D3jThF0oVwRGeT/xjWQhZJ0FB+Pq
         6E0QlzIK54fwHlmIldqadjFHoX8sk2RTiIVlumabByTz6cpzFmlGHMXrEJKGYcYUn1Mu
         hxJMC3lh27oHddu/aGIOc6JZybEXO8hwygkJXgHRueIsoSQ3T0StS6ODx27fl7ngNakO
         LhMSH6iaI1cG6l8cUv6ERo07AgQg3OLKK5vLZPdP0GGBSRx7fjA28987ZX4f5p0u837X
         ILn2Q5LrQB1YXGJCNj5jjrW6smq2Kzdtq21lvmJ91v0UA/1wyjlp5t7HHN5RtRPuOniH
         4ZTQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ao3hzr7Sxam1iQQzr3z4jNbBdQsFkNl9/zhLCH0LJh+lNfe71
	BJz/AvDfdpuMa2DCUqX6wUs=
X-Google-Smtp-Source: ABdhPJyCfQoypDTjsrzZYQ59pxzB3JmCGtN90znBjDi0ox0CSxd9SPeTJjo/8JLJgTC6SrGrslgJew==
X-Received: by 2002:a17:902:7481:b029:114:dd50:4e14 with SMTP id h1-20020a1709027481b0290114dd504e14mr4583293pll.32.1623427265037;
        Fri, 11 Jun 2021 09:01:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:6445:: with SMTP id y66ls5003318pfb.7.gmail; Fri, 11 Jun
 2021 09:01:04 -0700 (PDT)
X-Received: by 2002:aa7:99c9:0:b029:2e9:e084:e1de with SMTP id v9-20020aa799c90000b02902e9e084e1demr8828530pfi.80.1623427263989;
        Fri, 11 Jun 2021 09:01:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623427263; cv=none;
        d=google.com; s=arc-20160816;
        b=KyInGUgN3ILHIf/fgydoGoTDL64WZODfXQtQ126B1PO+BWWCNjMscgknRBD+v6Au5o
         pFaWsEndWkKt6/VbId+X2bBxSMG/hVPCZKgQn8dr6oqypg/31CjDy5cF8OkTFNSoeQtf
         hDyn+y89LzpOyW78qv+qluMVQm2ilCqSrquedrRTAZRwhZ3XuCcv7L4ORFsp0PnjTukr
         +NSI3LEbhwYRhjPnlTFyKvDYLNA/mYl8jG3w22ePiEeaklfOw+/RbdlTPD++K4ZqRKoa
         rMEAoOSg8AlXbxJgJJbJpXVCBONhJq6C1KgN0oIgMGkmZQ1X8F4jgpRYveS3jmtY3TFO
         PA0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=K5N0NvU9LCrwTXdgreWvEFs2307dSZHQNJtnv77L6K4=;
        b=qxDwhQsGWLk2DQmzICgjKkM8U+mJ1d+RKDdQm7oURBRkvSjf8VtgMJ5aup+XkqQthq
         O+qVpY4OBDITED0qk4QaPw6Jeb1LDojgtO1DTW+so+Amo4E/LB7c/mtAzVckpSiPjqoV
         YHUldtpb/4NIvuPPGgPM1nHidvJcHlI+PpCJ9wh4XqjsTlNWDNSmR6Pj1W8Eh0NxiS7u
         mZYNoNZ45oLmoEhHiONr2W/d6o1F/1K7ex7Rxg0wXptFr54dnvlNyV0NHlGJgbapaTim
         Dvi942eC6+9eRWJmrDJxcPKHDcwVuYhFTc8H7vocYmaTzVJl6s4hjce3HC7yp4wGGD0u
         ss3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=NHVpFplA;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id hk2si1041080pjb.0.2021.06.11.09.01.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Jun 2021 09:01:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id D2ED2613EA;
	Fri, 11 Jun 2021 16:01:02 +0000 (UTC)
From: Leon Romanovsky <leon@kernel.org>
To: Doug Ledford <dledford@redhat.com>,
	Jason Gunthorpe <jgg@nvidia.com>
Cc: Greg KH <gregkh@linuxfoundation.org>,
	Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Leon Romanovsky <leonro@nvidia.com>,
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
Subject: [PATCH rdma-next v2 05/15] RDMA/core: Simplify how the gid_attrs sysfs is created
Date: Fri, 11 Jun 2021 19:00:24 +0300
Message-Id: <f4149d379db7178d37d11d75e3026bf550f818a1.1623427137.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1623427137.git.leonro@nvidia.com>
References: <cover.1623427137.git.leonro@nvidia.com>
MIME-Version: 1.0
X-Original-Sender: leon@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=NHVpFplA;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/f4149d379db7178d37d11d75e3026bf550f818a1.1623427137.git.leonro%40nvidia.com.
