Return-Path: <clang-built-linux+bncBDMMLW4BXYHBBM4RR2DAMGQEF6WBDBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 0238D3A45E8
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 18:00:53 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id f4-20020a170902ce84b0290118e2c26e44sf413536plg.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 09:00:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623427251; cv=pass;
        d=google.com; s=arc-20160816;
        b=bmvzrI85g+oiIXHwLJjLAoJs3XepJWcRdFVxNlBJVDMjgGoS6IgCN1UAZIt5sYPRlR
         rssNEaCoPzOncMa/H5t44S3T8+9LtF/l78+0R/4b4sKXMn1BzTf50+oaHMXNjd1ZxtB4
         txyEdCjIEHQvhMu4kH94jzP5MD3Ebm9gc7rSsch5pj9Vap2Y1/ubbc8Rv5r6zdQEBcnT
         h7gDWdfkfgpAGMuUUXoe/t68mBE+Ar+2Tu8X5DujObSz7e1ynC3RPMsMr+ChXJx+rQJI
         YWKPpr6Sl51Lkqv0cGe47/ljR7o7Z+bTGoyOZSTCjcjUFAh3w/lY6eXtB2fGtCfFP3R6
         8SjA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=3XWChhh4+sRL6exJD/TZyg8JSGrOU1PFEKlUwy+Cgzo=;
        b=JiHvMhHXutE0nyAE0n2r2vKo0BO+omBoTbdqCO1Yd62oms59RGfTPJ/QaFoz45kICb
         GLV9zxvQtYwFPqVjb15LzuK7rzL31m58P+AUPzoNLQ/khab+xt1OkEcrIVRs5bCveaKf
         Yt0DplRFFip+FzjmyYptD8OINNjVZfpXpmys1CmCv/PNJORqi+9neDoVH95gzkSdwomf
         RqYMWWchb8HO7FmjqJgz5WTNxVtIxAGEhYkhsWUd/ZjtNZM+ITutly8jvnP61DXSqlrm
         73vsJ+QG3QiqdaxJV/TXjw8SgO8QfI4q+be6uEY05GgFCZiiuQTpupsRESly7oTT8Of5
         No3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=VB2kjSmZ;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3XWChhh4+sRL6exJD/TZyg8JSGrOU1PFEKlUwy+Cgzo=;
        b=hxk291daULDYJmelSnZwQAt9ScL7HqThAkb2BAAYCHcOZOFJPE1wnnd33vSAhWZ2x9
         NIowtvHeZmG3Oy/VYaMQGBNIYZAU834JTzcEP98pcBCYQe4LL+VT+1hhQTh0eb+m+cHX
         l6kyqhbm1pYFWe1EecnzJ+TDutZQOo92+xj9tTIlP6ICvxmYpsbjgvmB/oZOcrPSp5Hw
         nMf3ZWHkaqTSI7S4z33piwWgLjpPu8qbTsHcJWErz/W5xoQLM7iMW8SmZsfzq+pApmIZ
         0bfwuRBsGtulaq9EmKeEOOoWK4utcfVXhVkpO7Cqgiyf+XAtytkbCyI3zIzzdcFZL7u3
         fjKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3XWChhh4+sRL6exJD/TZyg8JSGrOU1PFEKlUwy+Cgzo=;
        b=VMaecnkGGIB9buCzVUH0MSXt/r/UYjwLLeu7/v7i12hOY6IJtWPswuHjaKtxzbZyC/
         7CQJwAb2xRqh1pFhrO2sChD1erk05NYgAjFCoCz3ASh6V/6yJCGwZDZX7Ss0LpDlYniD
         CyesCAzY4I4Xh8C6KKATD1mKYtU99NfiOWHSuL7U68u4WtFDGLN4Jm73Tm5GIF927cqg
         Nfs/GQzs9CGOi3+N4FmuPl9aSjtEY+9s7j9sbgKBiNYypKmz+r++TLo05mh/CdlHIfz2
         3hTSGNwRpPSm+xLWlHDqVuPuKjtSNt4pejBt/ah6/5+kC1hVP5HnOLC78/o7lG0sIL8f
         dKJw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Sju8MeycYT38Tk/zDpgctj5ksqTbzFfo9Ozy9aa3AVIHGpOyj
	tPnDFMkwSvVVs2oVucGu+lc=
X-Google-Smtp-Source: ABdhPJxCG8RKRiQc8lHzFE3aLV4ABBBmOhODQj2AtuSiwPKYPhqpAbE5PRoge51MAiHqamL+eO6Q+g==
X-Received: by 2002:a17:90b:3782:: with SMTP id mz2mr5208944pjb.70.1623427251769;
        Fri, 11 Jun 2021 09:00:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:d915:: with SMTP id c21ls5258508pjv.2.gmail; Fri, 11
 Jun 2021 09:00:51 -0700 (PDT)
X-Received: by 2002:a17:90a:fb4e:: with SMTP id iq14mr5027684pjb.219.1623427250976;
        Fri, 11 Jun 2021 09:00:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623427250; cv=none;
        d=google.com; s=arc-20160816;
        b=Q3xUDw7SGTpZova4Rhk8sRxieyv2V+Sr7otX8Joo+IJegUOzV+T5xdv69brK9bMEtY
         3lkzoUyuH0le8tKvceI1I2RK4EK05mbcqxUyJxSUP21WayJ/1hobEpy33OKoWCRcu/7b
         0fdOj7Pz+3jVKYW/ABVMgHQvrSEoQ5nG+4KDPHE4Ai1CdC+UVnBSrwIcBrIkMIcEY45T
         SBaIclCcTGALdd3RaKnW3F5DjeboFCgmdHispzWFmPWntPnXzbePn8F+AX1imdCzKKhV
         BgY9HXnhrHjWd1YqDvlZGqcpoNQWv9eDS0p31qfN2ueYoLiRHKh43CKn63tu05cjB7gU
         3XPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=EvkBmUF2nfADNbKcM35Z7PT7X0qdNa/eWhL1k0ATCaQ=;
        b=UOqBaONZ/BTuy0jtzrL/76Y3PV3eUBiMdiJqkvfn4/QrOZOGcEAyIdeNvZA049ii86
         g5JLGiGz5saR873b7Wn6vBUZjYShNTnt3j6ofMCkVhJENVCaYXuCl6sNJBPeqmDUirm3
         +OOu2Wtszs7fTDRPc3po6WqdeD99uotRqBOwDxWJIsx9R/8ZomcBae+7amZia/z8gOid
         hfCR1KtOPZDuzH8+1HoHXajzZd2u+0lhNr1f5KJlb2Czmfh9u+ZWxWuuVxQXwaJrFp23
         nY77U6Ydfnl5oNR+m8wthzj7fu7NJOjSNzleyc66m//4oTjK/Kr+S7OOjkD3gbqsMeHh
         HElw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=VB2kjSmZ;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o20si916467pgv.1.2021.06.11.09.00.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Jun 2021 09:00:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id CC86361400;
	Fri, 11 Jun 2021 16:00:49 +0000 (UTC)
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
Subject: [PATCH rdma-next v2 04/15] RDMA/core: Split gid_attrs related sysfs from add_port()
Date: Fri, 11 Jun 2021 19:00:23 +0300
Message-Id: <1c9434111b6770a7aef0e644a88a16eee7e325b8.1623427137.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1623427137.git.leonro@nvidia.com>
References: <cover.1623427137.git.leonro@nvidia.com>
MIME-Version: 1.0
X-Original-Sender: leon@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=VB2kjSmZ;       spf=pass
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

The gid_attrs directory is a dedicated kobj nested under the port,
construct/destruct it with its own pair of functions for
understandability. This is much more readable than having it weirdly
inlined out of order into the add_port() function.

Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 drivers/infiniband/core/sysfs.c | 160 ++++++++++++++++++--------------
 1 file changed, 89 insertions(+), 71 deletions(-)

diff --git a/drivers/infiniband/core/sysfs.c b/drivers/infiniband/core/sysfs.c
index 114fecda9764..d2a089a6f666 100644
--- a/drivers/infiniband/core/sysfs.c
+++ b/drivers/infiniband/core/sysfs.c
@@ -1178,6 +1178,85 @@ struct rdma_hw_stats *ib_get_hw_stats_port(struct ib_device *ibdev,
 	return ibdev->port_data[port_num].sysfs->hw_stats_data->stats;
 }
 
+/*
+ * Create the sysfs:
+ *  ibp0s9/ports/XX/gid_attrs/{ndevs,types}/YYY
+ * YYY is the gid table index in decimal
+ */
+static int setup_gid_attrs(struct ib_port *port,
+			   const struct ib_port_attr *attr)
+{
+	struct gid_attr_group *gid_attr_group;
+	int ret;
+	int i;
+
+	gid_attr_group = kzalloc(sizeof(*gid_attr_group), GFP_KERNEL);
+	if (!gid_attr_group)
+		return -ENOMEM;
+
+	gid_attr_group->port = port;
+	ret = kobject_init_and_add(&gid_attr_group->kobj, &gid_attr_type,
+				   &port->kobj, "gid_attrs");
+	if (ret)
+		goto err_put_gid_attrs;
+
+	gid_attr_group->ndev.name = "ndevs";
+	gid_attr_group->ndev.attrs =
+		alloc_group_attrs(show_port_gid_attr_ndev, attr->gid_tbl_len);
+	if (!gid_attr_group->ndev.attrs) {
+		ret = -ENOMEM;
+		goto err_put_gid_attrs;
+	}
+
+	ret = sysfs_create_group(&gid_attr_group->kobj, &gid_attr_group->ndev);
+	if (ret)
+		goto err_free_gid_ndev;
+
+	gid_attr_group->type.name = "types";
+	gid_attr_group->type.attrs = alloc_group_attrs(
+		show_port_gid_attr_gid_type, attr->gid_tbl_len);
+	if (!gid_attr_group->type.attrs) {
+		ret = -ENOMEM;
+		goto err_remove_gid_ndev;
+	}
+
+	ret = sysfs_create_group(&gid_attr_group->kobj, &gid_attr_group->type);
+	if (ret)
+		goto err_free_gid_type;
+
+	port->gid_attr_group = gid_attr_group;
+	return 0;
+
+err_free_gid_type:
+	for (i = 0; i < attr->gid_tbl_len; ++i)
+		kfree(gid_attr_group->type.attrs[i]);
+
+	kfree(gid_attr_group->type.attrs);
+	gid_attr_group->type.attrs = NULL;
+err_remove_gid_ndev:
+	sysfs_remove_group(&gid_attr_group->kobj, &gid_attr_group->ndev);
+err_free_gid_ndev:
+	for (i = 0; i < attr->gid_tbl_len; ++i)
+		kfree(gid_attr_group->ndev.attrs[i]);
+
+	kfree(gid_attr_group->ndev.attrs);
+	gid_attr_group->ndev.attrs = NULL;
+err_put_gid_attrs:
+	kobject_put(&gid_attr_group->kobj);
+	return ret;
+}
+
+static void destroy_gid_attrs(struct ib_port *port)
+{
+	struct gid_attr_group *gid_attr_group = port->gid_attr_group;
+
+	sysfs_remove_group(&gid_attr_group->kobj,
+			   &gid_attr_group->ndev);
+	sysfs_remove_group(&gid_attr_group->kobj,
+			   &gid_attr_group->type);
+	kobject_put(&gid_attr_group->kobj);
+}
+
 static int add_port(struct ib_core_device *coredev, int port_num)
 {
 	struct ib_device *device = rdma_device_to_ibdev(&coredev->dev);
@@ -1204,23 +1283,11 @@ static int add_port(struct ib_core_device *coredev, int port_num)
 	if (ret)
 		goto err_put;
 
-	p->gid_attr_group = kzalloc(sizeof(*p->gid_attr_group), GFP_KERNEL);
-	if (!p->gid_attr_group) {
-		ret = -ENOMEM;
-		goto err_put;
-	}
-
-	p->gid_attr_group->port = p;
-	ret = kobject_init_and_add(&p->gid_attr_group->kobj, &gid_attr_type,
-				   &p->kobj, "gid_attrs");
-	if (ret)
-		goto err_put_gid_attrs;
-
 	if (device->ops.process_mad && is_full_dev) {
 		p->pma_table = get_counter_table(device, port_num);
 		ret = sysfs_create_group(&p->kobj, p->pma_table);
 		if (ret)
-			goto err_put_gid_attrs;
+			goto err_put;
 	}
 
 	p->gid_group.name  = "gids";
@@ -1234,37 +1301,11 @@ static int add_port(struct ib_core_device *coredev, int port_num)
 	if (ret)
 		goto err_free_gid;
 
-	p->gid_attr_group->ndev.name = "ndevs";
-	p->gid_attr_group->ndev.attrs = alloc_group_attrs(show_port_gid_attr_ndev,
-							  attr.gid_tbl_len);
-	if (!p->gid_attr_group->ndev.attrs) {
-		ret = -ENOMEM;
-		goto err_remove_gid;
-	}
-
-	ret = sysfs_create_group(&p->gid_attr_group->kobj,
-				 &p->gid_attr_group->ndev);
-	if (ret)
-		goto err_free_gid_ndev;
-
-	p->gid_attr_group->type.name = "types";
-	p->gid_attr_group->type.attrs = alloc_group_attrs(show_port_gid_attr_gid_type,
-							  attr.gid_tbl_len);
-	if (!p->gid_attr_group->type.attrs) {
-		ret = -ENOMEM;
-		goto err_remove_gid_ndev;
-	}
-
-	ret = sysfs_create_group(&p->gid_attr_group->kobj,
-				 &p->gid_attr_group->type);
-	if (ret)
-		goto err_free_gid_type;
-
 	if (attr.pkey_tbl_len) {
 		p->pkey_group = kzalloc(sizeof(*p->pkey_group), GFP_KERNEL);
 		if (!p->pkey_group) {
 			ret = -ENOMEM;
-			goto err_remove_gid_type;
+			goto err_remove_gid;
 		}
 
 		p->pkey_group->name  = "pkeys";
@@ -1290,11 +1331,14 @@ static int add_port(struct ib_core_device *coredev, int port_num)
 		if (ret && ret != -EOPNOTSUPP)
 			goto err_remove_pkey;
 	}
+	ret = setup_gid_attrs(p, &attr);
+	if (ret)
+		goto err_remove_stats;
 
 	if (device->ops.init_port && is_full_dev) {
 		ret = device->ops.init_port(device, port_num, &p->kobj);
 		if (ret)
-			goto err_remove_stats;
+			goto err_remove_gid_attrs;
 	}
 
 	list_add_tail(&p->kobj.entry, &coredev->port_list);
@@ -1304,6 +1348,9 @@ static int add_port(struct ib_core_device *coredev, int port_num)
 	kobject_uevent(&p->kobj, KOBJ_ADD);
 	return 0;
 
+err_remove_gid_attrs:
+	destroy_gid_attrs(p);
+
 err_remove_stats:
 	destroy_hw_port_stats(p);
 
@@ -1323,28 +1370,6 @@ static int add_port(struct ib_core_device *coredev, int port_num)
 err_free_pkey_group:
 	kfree(p->pkey_group);
 
-err_remove_gid_type:
-	sysfs_remove_group(&p->gid_attr_group->kobj,
-			   &p->gid_attr_group->type);
-
-err_free_gid_type:
-	for (i = 0; i < attr.gid_tbl_len; ++i)
-		kfree(p->gid_attr_group->type.attrs[i]);
-
-	kfree(p->gid_attr_group->type.attrs);
-	p->gid_attr_group->type.attrs = NULL;
-
-err_remove_gid_ndev:
-	sysfs_remove_group(&p->gid_attr_group->kobj,
-			   &p->gid_attr_group->ndev);
-
-err_free_gid_ndev:
-	for (i = 0; i < attr.gid_tbl_len; ++i)
-		kfree(p->gid_attr_group->ndev.attrs[i]);
-
-	kfree(p->gid_attr_group->ndev.attrs);
-	p->gid_attr_group->ndev.attrs = NULL;
-
 err_remove_gid:
 	sysfs_remove_group(&p->kobj, &p->gid_group);
 
@@ -1359,9 +1384,6 @@ static int add_port(struct ib_core_device *coredev, int port_num)
 	if (p->pma_table)
 		sysfs_remove_group(&p->kobj, p->pma_table);
 
-err_put_gid_attrs:
-	kobject_put(&p->gid_attr_group->kobj);
-
 err_put:
 	kobject_put(&p->kobj);
 	return ret;
@@ -1498,11 +1520,7 @@ void ib_free_port_attrs(struct ib_core_device *coredev)
 		if (port->pkey_group)
 			sysfs_remove_group(p, port->pkey_group);
 		sysfs_remove_group(p, &port->gid_group);
-		sysfs_remove_group(&port->gid_attr_group->kobj,
-				   &port->gid_attr_group->ndev);
-		sysfs_remove_group(&port->gid_attr_group->kobj,
-				   &port->gid_attr_group->type);
-		kobject_put(&port->gid_attr_group->kobj);
+		destroy_gid_attrs(port);
 		kobject_put(p);
 	}
 
-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1c9434111b6770a7aef0e644a88a16eee7e325b8.1623427137.git.leonro%40nvidia.com.
