Return-Path: <clang-built-linux+bncBDMMLW4BXYHBBPURR2DAMGQEG7GEWQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 23A4A3A45EF
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 18:01:04 +0200 (CEST)
Received: by mail-qv1-xf3b.google.com with SMTP id jm5-20020ad45ec50000b0290219dc9a1ab8sf12393410qvb.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 09:01:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623427263; cv=pass;
        d=google.com; s=arc-20160816;
        b=oLpYy1VNU/kem7zDiGa00y2ugrm+qnXVgtSgyx5SlXdLWWVx1LQzTbb+H87L7aJbHt
         5hL49fnFbqMKAbAiZtfivBHg8gAmSa6KNfFOtK3Y1QO7E6vJ563oDoD5BsCogeDBIC+P
         yvRLvD9nzUqYOf4UZuo+CAeEtdh8pHPrSyCEDggQtTBoQjHqObb8dIyqcviAtk30VcXP
         d1sI2j03RSOpo2eZbjLKVWEQa0vNMoGwAUuq6LoIW/Iti/vIYllWoV6HI7LhJs4lHRQd
         FV/ihBJn13SlAFsmKj4eFAiTHxrr2DvWqQbm3JWv48EZKFqO2RfiRxpU1KaQVr2YxRgg
         nGpA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ohZevZ9AXCPvOzb7s7KVZ0NYDqOk68XA/U4tmm1zKNY=;
        b=P8jObrGxSgVsRiffCPc/ze+UiCQwCQjHw91MlvHDU7hYJy8Od6k4XM3SGINSv7t4Sh
         6FcuV6d38pg/Kv9cNOmV/Mkxu+wa15ewoa//QaMUZrbtfO2/jUjNBjFVKAu08VwLiCW2
         zTFRRNBHlPyfqvlaBJAya1AzHJz96MMMlxcMBeQV6YTpvbYPsdAGDrf0X30h92LMwrHr
         SRCC79kXVrcjiIkk0832kSu5Y1bh6JDY8pnEjYPJoCp65c0UP474+evDSnhTWTfktdou
         6Njq8A8bMyOoHAFn2YTDVKy/Eh/3vhj0yoamlY8FcgjeIdPY8pKY21kCIlzMSGhgSa3I
         uBYw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Xka6ZqHC;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ohZevZ9AXCPvOzb7s7KVZ0NYDqOk68XA/U4tmm1zKNY=;
        b=gDxMjtfNhsYv5R0ibz9uwVOt5lqC4TXdInk1lmEzPaAOYDm/P+TgY50eIDn9wIBrk4
         FDCpuOVPQzQLLBztu9lumUyIXNaVIgri67wxjuzDeO0NECNEnaI9JiF18UjESFmOaoR/
         fNMApiOWi4yTgMhx/eMynDngKkvaZ9LwfE5+nbY4Ss6zKkf/sUztt95XExtZLyx21LFH
         d207uHEVUQmVMxLjoE6kYRL56N3luTtsGsXqbJ79eWu13HZjQ5ei/kl+35oyhVFbJTWt
         cSGbQTtB1F50NZxW0zHY2jjfDzlb7qd/iEMWjSLhjVcwKuN1SG5IRw6bI9Xhf8mCGNmT
         /Sqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ohZevZ9AXCPvOzb7s7KVZ0NYDqOk68XA/U4tmm1zKNY=;
        b=Xwuw3347qoYEjUEPdpk2zI+RA/oG2RoM1N/exZwv2zAN9MTJbww7Cec3Z4uIPXs7TW
         HMLUWHFz7pSrs5OpsMijXZzXXK+dcJh7lJJk08VLrbmSsPcQC2Md91cGoHUG1kENzUhR
         YGHuDQQnczErgmQqGzZ6mnv4B0uhkSTEhBXUhdPXb1XOhMHM5SIEEorDiHUW4UPAa8nX
         UDJRRhRut0/h/Z2Dwa+1fN9jJM8UGBAgILxKcHOh4PKmYrDn9l+/h+HKJaqZkA8UMJGA
         CuUW1zhMK+G/nPNqI0/zRIyJGIZJuXoSkO+Xy8Mi4i7QCAQUB9VAvBCAISzYboiZABc+
         P2tQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533t3UNWjEaUdT26ouMQ+usBScRgukPDR2euCupTvi/JHmK9WAr1
	ygNLzhrtvFiUkqEopkTKj58=
X-Google-Smtp-Source: ABdhPJwgv27fwVgZiiAeWdwaqirnczR74gLtbwx6cZ3zYsWvTQ1Na3MaUVFBMy83MoHsJayHSkW6Mw==
X-Received: by 2002:a05:622a:30e:: with SMTP id q14mr4398926qtw.278.1623427262932;
        Fri, 11 Jun 2021 09:01:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a08d:: with SMTP id j135ls1689182qke.3.gmail; Fri, 11
 Jun 2021 09:01:02 -0700 (PDT)
X-Received: by 2002:a37:7046:: with SMTP id l67mr4503559qkc.69.1623427262428;
        Fri, 11 Jun 2021 09:01:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623427262; cv=none;
        d=google.com; s=arc-20160816;
        b=AkI7eCLgS1NGY3XIB5HGzVdvvFIzGXbks8Mx9KI6ejrmO3v5IQcFQZIv0jFy7K7pFd
         NuNwUNOrU7PzeQfW8pxvR/lkMUu2tmUu6+dv9GLK8yWymhBU7UYZE4Y3Wpe5NfXCZMNU
         ApvjR5klfQ4L+fcUe5MMXXRh56g0PiiIxkPdiKLtQF+mM/ZXu3fjNDOTh2xLrQEd+iVL
         BELtxsNL4/650t9He3y/EdzyHRCpkKLN6dn7RYzX0hmsv2Zj/LCJfj/urx53sBvDstpw
         ykNp7cIVHQ0bZLux0JIeh6G7i90juQbXHl7x5j+wbGfAgcxINTcFZzG/KO24QjsqvGQc
         j2xA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=++ZEaczP9AkhpESAvO1RcEJQi2CDFqz+5gbuapE40rs=;
        b=YI2iHwcVgGvm867/J5E1y0SkHNDQdGlnILfkFB6mUhCVTe5dGFnhSMZ6SsWM87xdmi
         p7JjnvNmOON5InJdKVEt6yxzmY/dC1OP054JeS9vWAFif7+epcOtGxFyzuil+2qVT0CX
         4OJ//08PsqXl96KVB/Gwgmz45D/8SqCmu3nzNk3cIxWpACmKJSVnbOYhGkofW98G7Dr0
         QsrmL24aSaONEWmVUHtU32CV7ifDdiF3THo5OpcnSbiPd665HGO2NLJ08QUI8u10A4Th
         ughHZfEYsNkMyAOo6C1LaMM+pR/Fm440uLpaADe/PIxrDptsLCNXkC9Y0Q+Rn5e7IZ/j
         1ocQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Xka6ZqHC;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j3si688428qki.7.2021.06.11.09.01.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Jun 2021 09:01:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 79FE4613EE;
	Fri, 11 Jun 2021 16:00:59 +0000 (UTC)
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
Subject: [PATCH rdma-next v2 07/15] RDMA/core: Create the device hw_counters through the normal groups mechanism
Date: Fri, 11 Jun 2021 19:00:26 +0300
Message-Id: <666250d937b64f6fdf45da9e2dc0b6e5e4f7abd8.1623427137.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1623427137.git.leonro@nvidia.com>
References: <cover.1623427137.git.leonro@nvidia.com>
MIME-Version: 1.0
X-Original-Sender: leon@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Xka6ZqHC;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/666250d937b64f6fdf45da9e2dc0b6e5e4f7abd8.1623427137.git.leonro%40nvidia.com.
