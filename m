Return-Path: <clang-built-linux+bncBDMMLW4BXYHBBU5M66CQMGQEUCGA6OY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B21539D6FD
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Jun 2021 10:18:29 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id k7-20020a9d4b870000b02902a5bfbbbd3bsf11038948otf.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 01:18:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623053908; cv=pass;
        d=google.com; s=arc-20160816;
        b=NQVnLo+MffVgncOtJAKHYOgJPnRSrV/HkjDbDmWXlzq4ygE1rr64c9S/Z/pjJPx9il
         ZCJRG5N4A/WJAKW2YZ1qBFY742Pg0uQ1H1c2y/9qn0TVgW69fSW/PJ0jklEnycOgKJZQ
         II6ccfkZRG9E8T4ddKzs8Mt+E02wtWNnPOer7uiVfmIl/uAyYvTKeYHVffzMUp+l4rJ7
         YFY0Hv+agrhMb/uPGEavWMuAPl6vHDOxSoOIbqmwLDElZGzCAcfZiieMOxX40Xtxn2KU
         +AOkqdeN0gmJ7JA1bBk9WPfiiuSOsUQjSiGRVSzdicBHmJQ8UzYn1YRMdBg7M2ON44Vo
         ub+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=UQ+3A0GSHdU8tz1Z4Zhry6K3ZZP0FNTuXHBywuAdIys=;
        b=S6ErOowJevGSDzPAtyj0ZZWtoDWKIhQ7kjaC4wRbuFkuzPOVq/1uexorI2EYyjR8Bj
         IvieBQJdCMiyPX26ZaOArOkk6KYYFqekYkj+9Pyzak+yv0+F9LK10cUoJP1BKjw4Jxc5
         Jp/veUJb8HOBvBQDtN7EyhPqbkx1W+mqPQDdXTEUZYyfNCs2k5sKLvsdHqmFPF1BdEot
         65PrroLt03oWFdUFXC59u/LGh8duzNtrSbi3f6UCFw51JhA4F8HqV00ntu1ZVFDe+xZD
         C9h8fDNFpjsXzu9rJmub982Sf0aAe/O5wPDdMI6D01j0ewOM0KMrCjBBAK5FNHYZsJ5Z
         C1Xg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ZcVlO0H9;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UQ+3A0GSHdU8tz1Z4Zhry6K3ZZP0FNTuXHBywuAdIys=;
        b=XZr3PuLEgFxCrnGsY/87qiIW7aSZO+CxWGpUWpPnWR42I9p2ei9P6ksQ2bRFyt7waD
         fP4DBCfDQPTThFuvPwPekt2YBEiWK+L8hONkF3MpSzhrPAlg06nRm3DtPD5VAJvnJ6cD
         F++R8RhDFHwjZHAmhsZM3U9EwalKQfSAX/rbQhCL6hDunqb77YGaM7zZon5pOd0bf4bT
         GcpyR7FJGlIEr7LCdBxolgBsN5d9EcIlMHjPcQh/ot9W38i+jPtyS2G70se1tHIfPlot
         c8OMbR2Ta6x09+BFhrpI5MN1q2AR9/5vDCNpesgPgV7K/0rsnQ3Xd2ip4Fo/I7fH4CSm
         MbBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UQ+3A0GSHdU8tz1Z4Zhry6K3ZZP0FNTuXHBywuAdIys=;
        b=ZKNwgSVDCFKQu83lK93pfSCiWMTNsHAQFPjyMBUBEERFg/RKGX08oK9QoX9WJFGgGS
         BFjJCUMW+8TJu/JgIkLWYftSBwPoClpHltikFgb9fpQzjVIr7ZmjcfUM8fRxg39j473X
         RzupeU8n2KMF8uWanxyKNLt1KV0D/kh6TrmYediPWoD7lDTt3OLSx1+4CculcR3RZaPC
         L/p0kc+v76vc7jvRlEEClEyyRcSUayNY8HQKTlg/OdcEDG82dvzja07w0MgWUokKeQZc
         HT14dD8xaUp2zlHHHUc69zE/pQXMQ+XYE3jerkiacDjTW3BZENwjPi0lbSDg3iukFsw0
         H3kg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5336C7BKj9OX075+mTPyJZ2JYuABBYs/XuqMnkcSg6D3SKsYp28C
	HnZwgtzAH/odM9DICT5oe6U=
X-Google-Smtp-Source: ABdhPJykwfD64H3kEf3G3yTc0XJjqAc/7O4A8VdDb4VHDDOPQ1DD/AsHDPKWfAVhzMZyNjMNf2SQzA==
X-Received: by 2002:aca:4d04:: with SMTP id a4mr2906014oib.22.1623053907992;
        Mon, 07 Jun 2021 01:18:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:b798:: with SMTP id a24ls375525oop.2.gmail; Mon, 07 Jun
 2021 01:18:27 -0700 (PDT)
X-Received: by 2002:a05:6820:29b:: with SMTP id q27mr12471214ood.32.1623053907597;
        Mon, 07 Jun 2021 01:18:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623053907; cv=none;
        d=google.com; s=arc-20160816;
        b=Fe6T4NuZQ4E1fzgbYHMjRgzFOB7aKIL8c4NCJsxdEQEM+SSoJJ1ELcALSvUoBPgTEj
         iAroowFEVtoUJbE7yiS6+dRMkjPOLZQzoViPxa5kGIPDevYcVS0cxmDVKHypKJFlVVP1
         bvPUffz7NyOYPjSmTLmvnpFUZEpoX72Ksibwl5XrKEywqBD5DGoDqPtuosXPt7Pbbca1
         SXbYS9g0pxChdmK8H6UJsWK4xeH4PkQhstOmJedv9AUxk6OwMnRa1R672wuq7XzuMU3M
         tvIhZSD5IJriwGTTWDfGThHTtwCmbnZVh7Aig7eXLQcn9+p++xKnQ75NkpkjD24jlqQ9
         XtvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=++ZEaczP9AkhpESAvO1RcEJQi2CDFqz+5gbuapE40rs=;
        b=qsUgaAz9MOif5AXN9AYRZqaHDeAQDchlyH1jVcr4MqJq8anju3bH415tf9vS4ZHXzn
         lQg221QVR/dj0KoXGcvUI1r6Gx3BpnwKsLkj5mTAdbjGFYCmAO9NaNJomqiCgZXti07h
         V9/91/jCGwzi7uufaHZFOJrl6i/GV9vQloJ3vSK4Ml5/wH0IYeYVN8mL5eAgU5AMBa3I
         cmCMIyIEU8brA7Jy9FFCDEG43P5+rxTIx9b5HHdp611XJ7Pfw4SMygLPP9uA6THaYmnE
         hO7CSyieIRXYvemAMNr7MtkI9Z6jGQOIh5ikacrjdVU0nz0eeQQBTClJHk76AkQ5p/ya
         MYfw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ZcVlO0H9;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a10si1330810oiw.5.2021.06.07.01.18.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Jun 2021 01:18:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id EFB5061029;
	Mon,  7 Jun 2021 08:18:25 +0000 (UTC)
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
Subject: [PATCH rdma-next v1 07/15] RDMA/core: Create the device hw_counters through the normal groups mechanism
Date: Mon,  7 Jun 2021 11:17:32 +0300
Message-Id: <30ec9adef911bdfae14be49d9c245942d6017170.1623053078.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1623053078.git.leonro@nvidia.com>
References: <cover.1623053078.git.leonro@nvidia.com>
MIME-Version: 1.0
X-Original-Sender: leon@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=ZcVlO0H9;       spf=pass
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

Instead of calling device_add_groups() add the group to the existing
groups array which is managed through device_add().

This requires setting up the hw_counters before device_add(), so it gets
split up from the already split port sysfs flow.

Move all the memory freeing to the release function.

Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 drivers/infiniband/core/core_priv.h |  4 +-
 drivers/infiniband/core/device.c    | 11 ++++-
 drivers/infiniband/core/sysfs.c     | 66 +++++++----------------------
 include/rdma/ib_verbs.h             |  9 ++--
 4 files changed, 32 insertions(+), 58 deletions(-)

diff --git a/drivers/infiniband/core/core_priv.h b/drivers/infiniband/core/core_priv.h
index ec5c2c3db423..6066c4b39876 100644
--- a/drivers/infiniband/core/core_priv.h
+++ b/drivers/infiniband/core/core_priv.h
@@ -78,8 +78,6 @@ static inline struct rdma_dev_net *rdma_net_to_dev_net(struct net *net)
 	return net_generic(net, rdma_dev_net_id);
 }
 
-int ib_device_register_sysfs(struct ib_device *device);
-void ib_device_unregister_sysfs(struct ib_device *device);
 int ib_device_rename(struct ib_device *ibdev, const char *name);
 int ib_device_set_dim(struct ib_device *ibdev, u8 use_dim);
 
@@ -379,6 +377,8 @@ struct net_device *rdma_read_gid_attr_ndev_rcu(const struct ib_gid_attr *attr);
 void ib_free_port_attrs(struct ib_core_device *coredev);
 int ib_setup_port_attrs(struct ib_core_device *coredev);
 struct rdma_hw_stats *ib_get_hw_stats_port(struct ib_device *ibdev, u32 port_num);
+void ib_device_release_hw_stats(struct hw_stats_device_data *data);
+int ib_setup_device_attrs(struct ib_device *ibdev);
 
 int rdma_compatdev_set(u8 enable);
 
diff --git a/drivers/infiniband/core/device.c b/drivers/infiniband/core/device.c
index 86a16cd7d7fd..030a4041b2e0 100644
--- a/drivers/infiniband/core/device.c
+++ b/drivers/infiniband/core/device.c
@@ -491,6 +491,8 @@ static void ib_device_release(struct device *device)
 
 	free_netdevs(dev);
 	WARN_ON(refcount_read(&dev->refcount));
+	if (dev->hw_stats_data)
+		ib_device_release_hw_stats(dev->hw_stats_data);
 	if (dev->port_data) {
 		ib_cache_release_one(dev);
 		ib_security_release_port_pkey_list(dev);
@@ -1394,6 +1396,10 @@ int ib_register_device(struct ib_device *device, const char *name,
 		return ret;
 	}
 
+	ret = ib_setup_device_attrs(device);
+	if (ret)
+		goto cache_cleanup;
+
 	ib_device_register_rdmacg(device);
 
 	rdma_counter_init(device);
@@ -1407,7 +1413,7 @@ int ib_register_device(struct ib_device *device, const char *name,
 	if (ret)
 		goto cg_cleanup;
 
-	ret = ib_device_register_sysfs(device);
+	ret = ib_setup_port_attrs(&device->coredev);
 	if (ret) {
 		dev_warn(&device->dev,
 			 "Couldn't register device with driver model\n");
@@ -1449,6 +1455,7 @@ int ib_register_device(struct ib_device *device, const char *name,
 cg_cleanup:
 	dev_set_uevent_suppress(&device->dev, false);
 	ib_device_unregister_rdmacg(device);
+cache_cleanup:
 	ib_cache_cleanup_one(device);
 	return ret;
 }
@@ -1473,7 +1480,7 @@ static void __ib_unregister_device(struct ib_device *ib_dev)
 	/* Expedite removing unregistered pointers from the hash table */
 	free_netdevs(ib_dev);
 
-	ib_device_unregister_sysfs(ib_dev);
+	ib_free_port_attrs(&ib_dev->coredev);
 	device_del(&ib_dev->dev);
 	ib_device_unregister_rdmacg(ib_dev);
 	ib_cache_cleanup_one(ib_dev);
diff --git a/drivers/infiniband/core/sysfs.c b/drivers/infiniband/core/sysfs.c
index 2631c179e004..07a00d3d3d44 100644
--- a/drivers/infiniband/core/sysfs.c
+++ b/drivers/infiniband/core/sysfs.c
@@ -107,7 +107,6 @@ struct hw_stats_port_attribute {
 
 struct hw_stats_device_data {
 	struct attribute_group group;
-	const struct attribute_group *groups[2];
 	struct rdma_hw_stats *stats;
 	struct hw_stats_device_attribute attrs[];
 };
@@ -915,7 +914,6 @@ alloc_hw_stats_device(struct ib_device *ibdev)
 	mutex_init(&stats->lock);
 	data->group.name = "hw_counters";
 	data->stats = stats;
-	data->groups[0] = &data->group;
 	return data;
 
 err_free_data:
@@ -925,29 +923,33 @@ alloc_hw_stats_device(struct ib_device *ibdev)
 	return ERR_PTR(-ENOMEM);
 }
 
-static void free_hw_stats_device(struct hw_stats_device_data *data)
+void ib_device_release_hw_stats(struct hw_stats_device_data *data)
 {
 	kfree(data->group.attrs);
 	kfree(data->stats);
 	kfree(data);
 }
 
-static int setup_hw_device_stats(struct ib_device *ibdev)
+int ib_setup_device_attrs(struct ib_device *ibdev)
 {
 	struct hw_stats_device_attribute *attr;
 	struct hw_stats_device_data *data;
 	int i, ret;
 
 	data = alloc_hw_stats_device(ibdev);
-	if (IS_ERR(data))
+	if (IS_ERR(data)) {
+		if (PTR_ERR(data) == -EOPNOTSUPP)
+			return 0;
 		return PTR_ERR(data);
+	}
+	ibdev->hw_stats_data = data;
 
 	ret = ibdev->ops.get_hw_stats(ibdev, data->stats, 0,
 				      data->stats->num_counters);
 	if (ret != data->stats->num_counters) {
 		if (WARN_ON(ret >= 0))
-			ret = -EINVAL;
-		goto err_free;
+			return -EINVAL;
+		return ret;
 	}
 
 	data->stats->timestamp = jiffies;
@@ -971,26 +973,13 @@ static int setup_hw_device_stats(struct ib_device *ibdev)
 	attr->attr.store = hw_stat_device_store;
 	attr->store = set_stats_lifespan;
 	data->group.attrs[i] = &attr->attr.attr;
-
-	ibdev->hw_stats_data = data;
-	ret = device_add_groups(&ibdev->dev, data->groups);
-	if (ret)
-		goto err_free;
-	return 0;
-
-err_free:
-	free_hw_stats_device(data);
-	ibdev->hw_stats_data = NULL;
-	return ret;
-}
-
-static void destroy_hw_device_stats(struct ib_device *ibdev)
-{
-	if (!ibdev->hw_stats_data)
-		return;
-	device_remove_groups(&ibdev->dev, ibdev->hw_stats_data->groups);
-	free_hw_stats_device(ibdev->hw_stats_data);
-	ibdev->hw_stats_data = NULL;
+	for (i = 0; i != ARRAY_SIZE(ibdev->groups); i++)
+		if (!ibdev->groups[i]) {
+			ibdev->groups[i] = &data->group;
+			return 0;
+		}
+	WARN(true, "struct ib_device->groups is too small");
+	return -EINVAL;
 }
 
 static struct hw_stats_port_data *
@@ -1443,29 +1432,6 @@ int ib_setup_port_attrs(struct ib_core_device *coredev)
 	return ret;
 }
 
-int ib_device_register_sysfs(struct ib_device *device)
-{
-	int ret;
-
-	ret = ib_setup_port_attrs(&device->coredev);
-	if (ret)
-		return ret;
-
-	ret = setup_hw_device_stats(device);
-	if (ret && ret != -EOPNOTSUPP) {
-		ib_free_port_attrs(&device->coredev);
-		return ret;
-	}
-
-	return 0;
-}
-
-void ib_device_unregister_sysfs(struct ib_device *device)
-{
-	destroy_hw_device_stats(device);
-	ib_free_port_attrs(&device->coredev);
-}
-
 /**
  * ib_port_register_module_stat - add module counters under relevant port
  *  of IB device.
diff --git a/include/rdma/ib_verbs.h b/include/rdma/ib_verbs.h
index 0dc7ab1a8dcf..5ca1cb82a543 100644
--- a/include/rdma/ib_verbs.h
+++ b/include/rdma/ib_verbs.h
@@ -2677,11 +2677,12 @@ struct ib_device {
 		struct ib_core_device	coredev;
 	};
 
-	/* First group for device attributes,
-	 * Second group for driver provided attributes (optional).
-	 * It is NULL terminated array.
+	/* First group is for device attributes,
+	 * Second group is for driver provided attributes (optional).
+	 * Third group is for the hw_stats
+	 * It is a NULL terminated array.
 	 */
-	const struct attribute_group	*groups[3];
+	const struct attribute_group	*groups[4];
 
 	u64			     uverbs_cmd_mask;
 
-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/30ec9adef911bdfae14be49d9c245942d6017170.1623053078.git.leonro%40nvidia.com.
