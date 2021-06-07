Return-Path: <clang-built-linux+bncBDMMLW4BXYHBB3VM66CQMGQE2BD4PRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7238D39D706
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Jun 2021 10:18:55 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id w17-20020a6b4a110000b0290492680338ecsf11650462iob.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 01:18:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623053934; cv=pass;
        d=google.com; s=arc-20160816;
        b=GtSl0oAMX/nhnaMf2BVonRqL6hF9UIA3U7iuPNsN/gwlTnJItJgm1OlljhAA1PhVdc
         dqeJeI37GpWABsX8c7EEpqytzHL2R2kN+bkF26gkG2rCNa4mFz5+adxvEolgjZL87IE8
         7FGU/wGV8kRlb4KUwyFktRjfqDjNkWxbPJURbzJ7bywcJ6N172LLYaW1tvJiFokK1mbX
         wkzdCtqTBfl+f4+8Zbu69reB118KHytLzsKhfPESN7JyO9wTfVrS3gtZX8fCH5ycCeI4
         asfXnlxEiAar9CuXI6cunzR8NYw73j3kSfAbIcNAQ12BRMGgXaIqN+yBW8fMloFzpukS
         H4kA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=oGKB3ri+4nWFGZmN28IoGQrKdmsfu2vAAbvsj8AZ7OI=;
        b=VmJqhuk9qASGPFiCtZQVvIiBhoBF8QcLyMX6fsIZNQcDtevTF+mTAJ2GjkWwBmWYnA
         eNVKGoEoZH390PfnMpnQx5jFl/VMcS4pkZ8F4JmlWZCoEgYiJBuEZ5kqP+EI8sWzLFob
         cDVUgnvYzm9wEv31wY583XeB/bpN3v0Lxq0xWPtvycZBA39ChEGce9uPJ7UYhP5Tf/yI
         P2q/nquNK7yjSVtjbtgSODqdJq4yrTCv8/uo/Avg6YFIO0KqHQHEwda0f9fZh+V1m/4A
         eA9Nzo9lgAbtoJ+4fr5DRBDlWStviwprKr+w+zTC+O5jf6i+6AHw5Be2qJNyUPFnauOB
         yGrA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=iLS910zA;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oGKB3ri+4nWFGZmN28IoGQrKdmsfu2vAAbvsj8AZ7OI=;
        b=Knn+B5U7vhrMLRUjFjdob1BqZyYEo4p4fPpiar2NYzEaYQLCNAm08aWcNC58rH2U4k
         I8l8H/pmNzrzo8MCGFkFWrh3+Irk3tnflDPqZhkMb85SN/MWzKOmE+tal4EDi5d2CfNc
         Is5pSqixuHfhFRYxXtifeXDuVXsXJwoy/OWQqHljEMdKD9LFJDhG8M1WVSq0rbhHpT+7
         sVoHGpGCwOx1FMj/vp2wE7bt/pM4XHY8Je2rKys+akZO+OwAtw6jBDAuJowSjXVBskv8
         kY1jcq6fIojqsnnLQjIk5wDuUEANiLNeu13t/UhUmM+eyo9YfwfpPSAW0LgDHW3UmOl5
         CNJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oGKB3ri+4nWFGZmN28IoGQrKdmsfu2vAAbvsj8AZ7OI=;
        b=A0GFD/OPtQO8EwHf4aAqyhoJdqd3b8XHa4h5GHhsLPf72E0USKEmFlTSIrUdxNE3en
         dtHB8hfCOrDujEM3kxFugSfkjCQ8vSrHH3QXgdkuDJmbr/G3i/QP2UEJsWuq424QQr7a
         2n5C19uen+3ctWL4MGrl/XiCASLa5s7+HHMVUw/dKd+tlFQhG7bFYwTUkkVDV+CNeu6W
         CpM3XjKj1oLABZUa0KeqOozg2a1fjQHq1zIhooAlbwicQC3yoj1X+6eYskr7yA+aAsMT
         m168i5KmKHMwN4DwM0DKU/Mpb7r7DfALhGdhXTgRFVnDgNZ5guw8n45Paq2xanARxMRZ
         tpNg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533b3nvhC3HVGr8QHPlVadCFX0c5I1jeDPLLZTaZu5M9YCIEvlA1
	FsgyKi7MkAmX521WpE295CI=
X-Google-Smtp-Source: ABdhPJzmr7NMbuwXllsulvlN+bbz2DzHmUMf275NXSUlUirhFk6NX7ueSSizCBQwgnfXyEYeij+2jQ==
X-Received: by 2002:a92:c84f:: with SMTP id b15mr13943277ilq.270.1623053934476;
        Mon, 07 Jun 2021 01:18:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:e:: with SMTP id h14ls1309571ilr.10.gmail; Mon, 07
 Jun 2021 01:18:54 -0700 (PDT)
X-Received: by 2002:a05:6e02:ed3:: with SMTP id i19mr14546068ilk.107.1623053934208;
        Mon, 07 Jun 2021 01:18:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623053934; cv=none;
        d=google.com; s=arc-20160816;
        b=Jn531lahFEJ0/s1cFHEWvzl1lDPFeChJzKzbyMtN2AuIM7hXspt24xlqg8LMuooXYR
         +3NHNY7lGntoEwXxPZ/1heVSdEuA002oE5Sj8h2JYyUAkj3HLA2TKOUdr9VVO2zlUOBQ
         1zwyuwKtIwvZ9zXxJZvJX/HRit03mg+HNF6SJkWazy39isF1m1lUC4rUT+Y8sePekX6o
         BVvqsysEHwJkeLxMzPoXmZecRkhPqs6qJHfWFuvV3g9d4c4dAwoDKH0MpNrCymWrTky/
         C0vxXhk4vLW2lsOjQfVVjUrz/JP/Nvqu2MqCmvz3yR/IUbtOxUOBLmX2zQwXK8gQ/nKY
         v+xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=O0cBQ/MDTHE56crvhu4qNhZ1QoTNKm1mSnkH0UCNtY4=;
        b=I7OjYW8BeefOwHJZ0Z5pwhZ05Mm85Cv/edp4+PyZnCfP+1Qz/dgq0t0+q2bbDqJ03n
         eKgyrmaqMCDGn9EMs87HE3hdxZuZxSUktRkl9gRnQYl24yC9OPvrEVfDsYzfgoe2QtzM
         GvuOXg5FYrcIsOsH2JwpkTkbbJ+qo5DpsJtAKT66KsACdT46kEyn3SzXCH+uQl2m5gg9
         u0gEAXColIZZJlApL29oeKqh+2p5eo9H48SixYSCSpzHYPpyxKQLwbzQbPjoPvUs1ffC
         fJ/JGZK1J3nwARFG5QSayzamE9Q0969Wg1cc1zhJt1qHadVrUVIbACx4geHyS7F76OQp
         BTDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=iLS910zA;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x13si1671368ilg.2.2021.06.07.01.18.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Jun 2021 01:18:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 983D361205;
	Mon,  7 Jun 2021 08:18:52 +0000 (UTC)
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
Subject: [PATCH rdma-next v1 14/15] RDMA/core: Allow port_groups to be used with namespaces
Date: Mon,  7 Jun 2021 11:17:39 +0300
Message-Id: <a1a8a96629405ff3b2990f5f8dbd7b57a818571e.1623053078.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1623053078.git.leonro@nvidia.com>
References: <cover.1623053078.git.leonro@nvidia.com>
MIME-Version: 1.0
X-Original-Sender: leon@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=iLS910zA;       spf=pass
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

Now that the port_groups data is being destroyed and managed by the core
code this restriction is no longer needed. All the ib_port_attrs are
compatible with the core's sysfs lifecycle.

Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 drivers/infiniband/core/device.c | 10 ++++------
 drivers/infiniband/core/sysfs.c  | 17 ++++++-----------
 2 files changed, 10 insertions(+), 17 deletions(-)

diff --git a/drivers/infiniband/core/device.c b/drivers/infiniband/core/device.c
index 2cbd77933ea5..92f224a97481 100644
--- a/drivers/infiniband/core/device.c
+++ b/drivers/infiniband/core/device.c
@@ -1698,13 +1698,11 @@ int ib_device_set_netns_put(struct sk_buff *skb,
 	}
 
 	/*
-	 * Currently supported only for those providers which support
-	 * disassociation and don't do port specific sysfs init. Once a
-	 * port_cleanup infrastructure is implemented, this limitation will be
-	 * removed.
+	 * All the ib_clients, including uverbs, are reset when the namespace is
+	 * changed and this cannot be blocked waiting for userspace to do
+	 * something, so disassociation is mandatory.
 	 */
-	if (!dev->ops.disassociate_ucontext || dev->ops.port_groups ||
-	    ib_devices_shared_netns) {
+	if (!dev->ops.disassociate_ucontext || ib_devices_shared_netns) {
 		ret = -EOPNOTSUPP;
 		goto ns_err;
 	}
diff --git a/drivers/infiniband/core/sysfs.c b/drivers/infiniband/core/sysfs.c
index 09a2e1066df0..f42034fcf3d9 100644
--- a/drivers/infiniband/core/sysfs.c
+++ b/drivers/infiniband/core/sysfs.c
@@ -1236,11 +1236,9 @@ static struct ib_port *setup_port(struct ib_core_device *coredev, int port_num,
 	ret = sysfs_create_groups(&p->kobj, p->groups_list);
 	if (ret)
 		goto err_del;
-	if (is_full_dev) {
-		ret = sysfs_create_groups(&p->kobj, device->ops.port_groups);
-		if (ret)
-			goto err_groups;
-	}
+	ret = sysfs_create_groups(&p->kobj, device->ops.port_groups);
+	if (ret)
+		goto err_groups;
 
 	list_add_tail(&p->kobj.entry, &coredev->port_list);
 	if (device->port_data && is_full_dev)
@@ -1257,16 +1255,13 @@ static struct ib_port *setup_port(struct ib_core_device *coredev, int port_num,
 	return ERR_PTR(ret);
 }
 
-static void destroy_port(struct ib_core_device *coredev, struct ib_port *port)
+static void destroy_port(struct ib_port *port)
 {
-	bool is_full_dev = &port->ibdev->coredev == coredev;
-
 	if (port->ibdev->port_data &&
 	    port->ibdev->port_data[port->port_num].sysfs == port)
 		port->ibdev->port_data[port->port_num].sysfs = NULL;
 	list_del(&port->kobj.entry);
-	if (is_full_dev)
-		sysfs_remove_groups(&port->kobj, port->ibdev->ops.port_groups);
+	sysfs_remove_groups(&port->kobj, port->ibdev->ops.port_groups);
 	sysfs_remove_groups(&port->kobj, port->groups_list);
 	kobject_del(&port->kobj);
 	kobject_put(&port->kobj);
@@ -1392,7 +1387,7 @@ void ib_free_port_attrs(struct ib_core_device *coredev)
 		struct ib_port *port = container_of(p, struct ib_port, kobj);
 
 		destroy_gid_attrs(port);
-		destroy_port(coredev, port);
+		destroy_port(port);
 	}
 
 	kobject_put(coredev->ports_kobj);
-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a1a8a96629405ff3b2990f5f8dbd7b57a818571e.1623053078.git.leonro%40nvidia.com.
