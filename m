Return-Path: <clang-built-linux+bncBDMMLW4BXYHBBRVM66CQMGQEAJY7NYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id DA26E39D6F9
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Jun 2021 10:18:15 +0200 (CEST)
Received: by mail-yb1-xb37.google.com with SMTP id 22-20020a250d160000b0290532b914c9f4sf21295029ybn.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 01:18:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623053895; cv=pass;
        d=google.com; s=arc-20160816;
        b=ff3+qTIJng3wp7zBlYlkDr8nWirMv7sy81imM3iivbL/Bq/u8hG21cRsZLoZGmzf7t
         2eZDI8In0dFsJsjgaA+JUq79ydGu+76R3gGWk19xsG0cVWi50Lmjnv6Xrj1TyZL0aVvm
         lMShG2MHc8ptqNGXdEXEFQi+ejk4uz7al/EDHw9ZYdkz6uGhJrZ5EUQ3e4p25oZd7LAH
         /lUk8YrigzW9iT40GIrFuAKBXh8UBIEkGT+d0zmsG6QiCEACh5sbHAkQhGQNTHGTZdk9
         78O50NnHeZd9ARDy1QFjCoC+xR7VaD2BEGgW4wyRSM1Lg23SLFRT8fpMcWZMYf7Af9DR
         CkCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Dyc1d/0+EIBb8OINn04pE7Xt+6QrhTCvuVPCsGiJbh0=;
        b=h2Rn3GVrLZ4O8crTL/mxlhWHZc5Xuf+8ygR8wAZIPnXVZ2wp81UWzrix+W4Zjsofz7
         KSqPuoYIyWbGCsRXHaC517uuLyk1a9TGUJSSMD1BHsiTgWA9S9tiLbswzj9SjfKRc2XC
         kfwV9+l/oB1ieT17v0U/nXMd364tAALrSpyJCERqoR8FIHgbVLDXXVuCshVCkyzbNEGU
         UZl1iq5YGK4yTWo3MxOl2fEEn4+1ke3XzTE0Hx7rktHLgZYP9i6oEY69dJmslseCdxlD
         H3vWw9zu5e8/w4Oww7MQjmVoPvKOBxlOwnpFpEOz0PGOV0Qb9RxFtDTpmJcOIcLhGuQ9
         0U6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ckvA+xDL;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Dyc1d/0+EIBb8OINn04pE7Xt+6QrhTCvuVPCsGiJbh0=;
        b=dDhEItLPzCWYhsuz+qNK5GCMNHYA5rIpEt1rSlRRRptjvYM1FaTl0ArxWAZBEf1lJP
         Lz4aEjdS1CwOQcdBp8Gpt8CBkR5d9qoak1Q+Ho9sXUuZMzvjQ3zFs+Hwlfgyrl66Fy3h
         Rnflpj1F1XohQ52sBDOIv7fyc/OexwsRqkbso6TSmUR4d+wENE7Q/eC5Ct3KPEplieye
         EiFkAuz6YNXjRgNRjc729vBntExENLu232ZpOcOE+wBcq1di+4RcXQB3D6MqDklHVLGr
         qCRSfBr2dK64JdTkApfJ+u0FQz37kelXp+mjyNckJgKyU7UrQXypJMf49fGuO/e2ejPr
         kIOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Dyc1d/0+EIBb8OINn04pE7Xt+6QrhTCvuVPCsGiJbh0=;
        b=qhtieuVAsNNy93/4OnmrliLOW1hqRAzX0vsOrBpY+tQpkRR1OKKP/h2JXQnnRiYRKS
         0XU7wS2nYiw4x9152/OwpiY6Tbf9CEkA8/yMaZJaat9OYWmCc+hSVQeqFp+RvdMEJ50S
         I6yk4+rAHvlyFr5HsIVtqA3Z05A4P+UkETf4zf9YkQzPBliUL7TZCmv8L8KzZjBQ/6QK
         6IlrKBjdw+vdZM7I5b4tePA81bhUJI9KonXMc4J1ah/9SouRKoGsrlx+/BQIFEjYfZgC
         qMvTu4kq4YtlXKERtjVytvtBUiga/XJV7KIL8Pk11KKsXHh9ElwYfRGRKQze1Dpb8dGf
         tSMQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533afpCxHTTeunJ6OnBKQ1Wttq9MfsoLTCdTelStoZ+D8Gn4C+fj
	O7Ka7BYKH+SfKTdoZhBDlfA=
X-Google-Smtp-Source: ABdhPJw7IBnGprUY7YzzW++dv+6Ik5TEj4DKOwHz/XgDPEPI4ySlxlpntmZTMOJfqVuIGiWXkg4w6Q==
X-Received: by 2002:a25:74d6:: with SMTP id p205mr22382744ybc.316.1623053894975;
        Mon, 07 Jun 2021 01:18:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d257:: with SMTP id j84ls1353054ybg.5.gmail; Mon, 07 Jun
 2021 01:18:14 -0700 (PDT)
X-Received: by 2002:a25:dbc4:: with SMTP id g187mr22757566ybf.142.1623053894534;
        Mon, 07 Jun 2021 01:18:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623053894; cv=none;
        d=google.com; s=arc-20160816;
        b=vQ8zFw65QuTYKYLGi+S4t+v8sx/Q/uCcb5PK+Ka3YMs6AxpDezbsvi4sNejD7M/GRZ
         obKd7R/+0dZoAQzQA6J1vXjkjDQDCFtNN4+inulVwzrywGN1rdxlgSDXGAw3phBHCNHH
         e6+CxhIjvHzvQfE8RsGi0TOJH/SebYrY5LJNOkGnSF00gKLDj0ZRcFJYQy2sEqz9jJH7
         RTcvsDvRSHnjY0AActBcB9jRsmrIhlYzRmpVCGwhubE7sLCudhcAJQYbkfACnLPgsROT
         o9wyh0PM410WEMZFQ7npf+kU30zKI3ohLRuioD8GrarZH35hptGE/49o2vLjtzhtiSe1
         8/rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=wMPeaZRIcjefUPiHFFbea0swNCghkYbby9PUMsyDDTE=;
        b=QllnP/NJJSr2iZ0lPkdDuIqMSP2fBAh5PpkxHhtlM1KVk1V8uiQtNdNBuj6OalBjrE
         W33qcmUCsN5M2Qbwphmrg+/tyOQU4ZPODPmTYfD40Sk4kYXz2a7Bt3k57rHr+0uh8sZP
         K1NMtWpJxdU3IT/etJ4hC4xQ+aFikIPf04D8GtC9K5domS5NsUwGeswma8upQUQrJ8YM
         saD8eRMy9ypL6ER3RqiTiN/qrDrV4LH+XX2Rcig+/XKjwUelilMsGU15TAlSdkIu9i71
         lggA4p3jw7CMUi5rrIGQofhFOvSyDOcWzWLjWhvqhM3HQcfKDLfPHonlXa5ZMyxgUCpu
         /Whg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ckvA+xDL;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q62si1610557ybc.4.2021.06.07.01.18.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Jun 2021 01:18:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id B18CE61029;
	Mon,  7 Jun 2021 08:18:12 +0000 (UTC)
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
Subject: [PATCH rdma-next v1 02/15] RDMA/core: Replace the ib_port_data hw_stats pointers with a ib_port pointer
Date: Mon,  7 Jun 2021 11:17:27 +0300
Message-Id: <6477a29059b1b4d92ea003e3b801a8d1df6d516d.1623053078.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1623053078.git.leonro@nvidia.com>
References: <cover.1623053078.git.leonro@nvidia.com>
MIME-Version: 1.0
X-Original-Sender: leon@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=ckvA+xDL;       spf=pass
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

It is much saner to store a pointer to the kobject structure that contains
the cannonical stats pointer than to copy the stats pointers into a public
structure.

Future patches will require the sysfs pointer for other purposes.

Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 drivers/infiniband/core/core_priv.h |  1 +
 drivers/infiniband/core/nldev.c     |  8 ++------
 drivers/infiniband/core/sysfs.c     | 14 +++++++++++---
 include/rdma/ib_verbs.h             |  3 ++-
 4 files changed, 16 insertions(+), 10 deletions(-)

diff --git a/drivers/infiniband/core/core_priv.h b/drivers/infiniband/core/core_priv.h
index 29809dd30041..ec5c2c3db423 100644
--- a/drivers/infiniband/core/core_priv.h
+++ b/drivers/infiniband/core/core_priv.h
@@ -378,6 +378,7 @@ struct net_device *rdma_read_gid_attr_ndev_rcu(const struct ib_gid_attr *attr);
 
 void ib_free_port_attrs(struct ib_core_device *coredev);
 int ib_setup_port_attrs(struct ib_core_device *coredev);
+struct rdma_hw_stats *ib_get_hw_stats_port(struct ib_device *ibdev, u32 port_num);
 
 int rdma_compatdev_set(u8 enable);
 
diff --git a/drivers/infiniband/core/nldev.c b/drivers/infiniband/core/nldev.c
index 01316926cef6..e9b4b2cccaa0 100644
--- a/drivers/infiniband/core/nldev.c
+++ b/drivers/infiniband/core/nldev.c
@@ -2066,7 +2066,8 @@ static int stat_get_doit_default_counter(struct sk_buff *skb,
 	}
 
 	port = nla_get_u32(tb[RDMA_NLDEV_ATTR_PORT_INDEX]);
-	if (!rdma_is_port_valid(device, port)) {
+	stats = ib_get_hw_stats_port(device, port);
+	if (!stats) {
 		ret = -EINVAL;
 		goto err;
 	}
@@ -2088,11 +2089,6 @@ static int stat_get_doit_default_counter(struct sk_buff *skb,
 		goto err_msg;
 	}
 
-	stats = device->port_data ? device->port_data[port].hw_stats : NULL;
-	if (stats == NULL) {
-		ret = -EINVAL;
-		goto err_msg;
-	}
 	mutex_lock(&stats->lock);
 
 	num_cnts = device->ops.get_hw_stats(device, stats, port, 0);
diff --git a/drivers/infiniband/core/sysfs.c b/drivers/infiniband/core/sysfs.c
index d11ceff2b4e4..b153dee1e0fa 100644
--- a/drivers/infiniband/core/sysfs.c
+++ b/drivers/infiniband/core/sysfs.c
@@ -1031,8 +1031,6 @@ static void setup_hw_stats(struct ib_device *device, struct ib_port *port,
 			goto err;
 		port->hw_stats_ag = hsag;
 		port->hw_stats = stats;
-		if (device->port_data)
-			device->port_data[port_num].hw_stats = stats;
 	} else {
 		struct kobject *kobj = &device->dev.kobj;
 		ret = sysfs_create_group(kobj, hsag);
@@ -1053,6 +1051,14 @@ static void setup_hw_stats(struct ib_device *device, struct ib_port *port,
 	kfree(stats);
 }
 
+struct rdma_hw_stats *ib_get_hw_stats_port(struct ib_device *ibdev,
+					   u32 port_num)
+{
+	if (!ibdev->port_data || !rdma_is_port_valid(ibdev, port_num))
+		return NULL;
+	return ibdev->port_data[port_num].sysfs->hw_stats;
+}
+
 static int add_port(struct ib_core_device *coredev, int port_num)
 {
 	struct ib_device *device = rdma_device_to_ibdev(&coredev->dev);
@@ -1171,6 +1177,8 @@ static int add_port(struct ib_core_device *coredev, int port_num)
 		setup_hw_stats(device, p, port_num);
 
 	list_add_tail(&p->kobj.entry, &coredev->port_list);
+	if (device->port_data && is_full_dev)
+		device->port_data[port_num].sysfs = p;
 
 	kobject_uevent(&p->kobj, KOBJ_ADD);
 	return 0;
@@ -1361,7 +1369,7 @@ void ib_free_port_attrs(struct ib_core_device *coredev)
 			free_hsag(&port->kobj, port->hw_stats_ag);
 		kfree(port->hw_stats);
 		if (device->port_data && is_full_dev)
-			device->port_data[port->port_num].hw_stats = NULL;
+			device->port_data[port->port_num].sysfs = NULL;
 
 		if (port->pma_table)
 			sysfs_remove_group(p, port->pma_table);
diff --git a/include/rdma/ib_verbs.h b/include/rdma/ib_verbs.h
index 849a06441e29..7a4cb7022f91 100644
--- a/include/rdma/ib_verbs.h
+++ b/include/rdma/ib_verbs.h
@@ -50,6 +50,7 @@ struct ib_uqp_object;
 struct ib_usrq_object;
 struct ib_uwq_object;
 struct rdma_cm_id;
+struct ib_port;
 
 extern struct workqueue_struct *ib_wq;
 extern struct workqueue_struct *ib_comp_wq;
@@ -2182,7 +2183,7 @@ struct ib_port_data {
 	struct net_device __rcu *netdev;
 	struct hlist_node ndev_hash_link;
 	struct rdma_port_counter port_counter;
-	struct rdma_hw_stats *hw_stats;
+	struct ib_port *sysfs;
 };
 
 /* rdma netdev type - specifies protocol type */
-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/6477a29059b1b4d92ea003e3b801a8d1df6d516d.1623053078.git.leonro%40nvidia.com.
