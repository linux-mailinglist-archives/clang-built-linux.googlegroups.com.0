Return-Path: <clang-built-linux+bncBDMMLW4BXYHBBSNM66CQMGQEBCHMUHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 28F4E39D6FA
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Jun 2021 10:18:19 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id 15-20020a17090a0f0fb029016ad0f32fd0sf10588863pjy.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 01:18:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623053897; cv=pass;
        d=google.com; s=arc-20160816;
        b=vLZCnMwsorlEzEANC5Tlc9PU1+vUINYrsJ6JOjPBSRfWtSJ9TrQkDvDeVdyRNz95ny
         wBrpZp6LIsAi3TchMRTgmyc9QOxYK42kavr9vBcmxN+frur0DPpKkGzn7BvELYdu2Yew
         07wiy1QnjMVD1uY316T+Fs+RGGZWi57K874tCop5oIYd8vc5uHvJpNF+0O1Tne6NF+0L
         okYzlC0BMHwxuLdcZzLQPIRGLPAk5FkvciRAVxF+D4rJ68bxNEdCPhyA6bYwoG8NemHe
         l2BEhlU0OaQMUwsFy7DZUJPR3xU28rPap8V0Ac1y8IJKND0bRC7/aNCwDXY0Y7mCdRdx
         8zQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=BQayXQizZVETgeamkXDikdaM4NimV2PLmU8CkGs6E6s=;
        b=cNtVtj4Plm02zoWF2JpIMgMx18VDdGuHt8ngsFUkNBtlSNefEo28i/Sq1TE72BjSCB
         vlwddpYNME5s1Wx/u3ion3uvP8qgKLf1PYLvJ5KMtu1f364DNBXPJZTLPsE+3d85u1sE
         MZzK+QUoyu/JSV4J20NqMjeiTns+hir3bm4kma2TgOC7+A48APvTfwav61qb7PxsePP7
         eCnI1t16swJD02z0BLTmIwn7ZjPyV0VJtrCE/cUjqf/AOHOp1ocqrw1oy99BuuYhOoin
         VFzDSCZa6+I26Vt+e5Wj4g0g6lQxdIGjRO1DnySScJy6/jeWw0m8LNSrH4ZJn3lfs6v9
         LERg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=p5WJSweN;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BQayXQizZVETgeamkXDikdaM4NimV2PLmU8CkGs6E6s=;
        b=OYG/rjgrAY4DVmzNpLE93TPACreyO7XiVBC2aDtzWe6s2vOxKudLIlH8Oh6t3y0Wxr
         591XGA8v6N65DkL/vGf1l+qoh3NhhLJNQY0MyYJuvOZE6yFEn3uuREHXkGgWY4fOGh2v
         6I+T+1vIWWOnFi+/GSYIWUFqHgykvTwqLDKPMyswpj+nniR4cR1PW6wIH5kacYO4I+wz
         8Gjo/nB7EdkeqpsBlZD9peYfDY7woP+gb+at2yXhVtURbl5X93oFTuj+xVT3oBM/HKNL
         rbSwdXD5xuMTQLHpnKrPq1Vo0L6EplP4O4w6mFlK0eyUJrfNrxuTW76w5heKXiHRxMWe
         Hn2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BQayXQizZVETgeamkXDikdaM4NimV2PLmU8CkGs6E6s=;
        b=SdCxaeMo+tHH+BbWBdZPHgYIbVoisAMeb1OFErAlZOC2MjWdIBtunTBPYBldo1UYnH
         fymc8Y02LlSc/YfC1Lz7D/mfPURvQ2Rn7z4ZvU8HWYvF0LhRemq1MZfZ9KsHQs/BvLaq
         WxOl0mVXYmIlrigvCfBLzv9BkvS7OBIhIR+xWYgSLpkpKFdWMiuMFgUvp80Tk49PBjmV
         +5puaUdlvL8zP32y+ETvx7cu4qfmngBazy02nHw6jFWM/6aAEjJc1dNf755krmbPGjjL
         s8TJIGptlGb3sfVZ2gWKKkM3E7id7kP8VFo/lzcMvrJkAOhVAYNRmiaixHeI0FnJ/wLQ
         yrXQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530zB+G7GtYhHtZE0ut/7WJpG6z5vZksPtnis+NtDHyRXWmSS3UG
	aPHAXwSD0etFthK9EscYmRw=
X-Google-Smtp-Source: ABdhPJzsI65w2LSf33lXnk+mfsWXgBgVwlsPn+U2l1LaopKyiUJuoHuOzuG13BlUNjk0vpvK9KDb3A==
X-Received: by 2002:a17:90a:17c8:: with SMTP id q66mr24082260pja.154.1623053897688;
        Mon, 07 Jun 2021 01:18:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:c713:: with SMTP id p19ls5006036plp.11.gmail; Mon,
 07 Jun 2021 01:18:17 -0700 (PDT)
X-Received: by 2002:a17:902:c784:b029:104:9a21:262a with SMTP id w4-20020a170902c784b02901049a21262amr17015829pla.21.1623053897211;
        Mon, 07 Jun 2021 01:18:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623053897; cv=none;
        d=google.com; s=arc-20160816;
        b=q4yvVqGqjL9ooIWtu86670jPOl9vYtHhwr4bfffgGi9D99xX4+BIqIL3Kro70mIzLd
         HsLWaj7ZtYZ96dgZcD9VJc7prTQdov+hlGEO3SR4l8rfoFeFzt+cRCsCz1eshgUjs+Fk
         msR9v2nifx6/0Tl5wFhyQOpBzdQaAYQeZfw50u8nHRhxaHALMuCigJJdqh3GDagFOrPW
         3r8B3FPv09Fn21oESxmVM4O19y3E9PHMD9Zte6rKpFW1m8VnTyIg/A+uscsTZ75A8Xpb
         4N0OdfXICjKJgLfK5N56UX/MrqJCFTpeoVZKRkSfwsLjgl5XT+A0rO/uduiDwDp+v+5j
         /aGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=EvkBmUF2nfADNbKcM35Z7PT7X0qdNa/eWhL1k0ATCaQ=;
        b=mWG0lIdu+VTMBydRFDkBQs/miXnlbRNEZbOx1OURsoPF8qzByK248syYKAecQKNthE
         /i0bmGFkSpUXT0ShLof+aVHfUCPlqI08kAyHHzPfyApSOo2Y/WfYg8AV4LvaYuxNokIC
         zM4+PKCeGhi4MSF9y80yhykhoPbQqpmzNcZRbyyY2fMmzylMXK1U6fj8B1bQNTTNDo1k
         DlU7hgHfK31w4QcUinK9TKaKHoOIHKdDPfahL4eT53lQf3vatDl9dlrH8QFyH8E48yH5
         6Akt96cgwAcm1o8rqrosgkoh+XoU5GnttMcFOoogA5pNlh3aZ2/rKtFsUQ4b/39PdI0f
         oyXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=p5WJSweN;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c23si1287489pjv.2.2021.06.07.01.18.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Jun 2021 01:18:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0EBB260FEF;
	Mon,  7 Jun 2021 08:18:16 +0000 (UTC)
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
Subject: [PATCH rdma-next v1 04/15] RDMA/core: Split gid_attrs related sysfs from add_port()
Date: Mon,  7 Jun 2021 11:17:29 +0300
Message-Id: <2dfb8ae0c0ffb639590e42917311adc9c36a8451.1623053078.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1623053078.git.leonro@nvidia.com>
References: <cover.1623053078.git.leonro@nvidia.com>
MIME-Version: 1.0
X-Original-Sender: leon@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=p5WJSweN;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/2dfb8ae0c0ffb639590e42917311adc9c36a8451.1623053078.git.leonro%40nvidia.com.
