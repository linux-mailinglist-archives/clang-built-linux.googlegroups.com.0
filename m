Return-Path: <clang-built-linux+bncBDMMLW4BXYHBBQ5M66CQMGQE4IZVZDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe40.google.com (mail-vs1-xe40.google.com [IPv6:2607:f8b0:4864:20::e40])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D10A39D6F5
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Jun 2021 10:18:13 +0200 (CEST)
Received: by mail-vs1-xe40.google.com with SMTP id l16-20020a0561020e90b029025ba236fd13sf4078716vst.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 01:18:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623053892; cv=pass;
        d=google.com; s=arc-20160816;
        b=b91ApEf3mXparQ1PoX3eN2lw6TcHJRE2FllCOCLgg38NJlLO+OUxP07VnuxFNJwQZD
         vtM7O+NnFFHKoFTBgS3ypZ2buDHs37Dm9bPkofD96j6DKKOmKga8qg/dTxQs+HuU3g90
         D8m/CGvpeVDfS4A3Iz87WyM3065KoxiH2nDYYxb1WBn5WsurT8J2uIBBQ3ugw8Mdec06
         JmZEpvf+8EDDcZJ/fCVJp+cop+BWTZj4mK5hgtityzfZAces1oR/LYfpZuuFicj5zHwy
         9PzREkpF4KwWrC/5IBDNI9FSxDuAMWfzyVt/nUo4qJNJkyU1OBJRwmb3LQ7icgAj/ehW
         kQzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=1rzAWdV5DxVtnlsPeLBdabH9b5dK3+OdhqcTHQ0lW/E=;
        b=Ajup1iTR9maezPERqBvNPQD546P9b8ochOLfxJjJ/BQ0LLNu/6tIpE9bWkeCnO/o7c
         wBlVKkRJ44nJ9zssSWQ8j3KFEkgO59hSb/m12akAdIzaMY1gvnNb+N8tQM3g36IbtiGh
         glCLC+6Cy5ETJGR/q5CRP3uTDoGgxTqY+LhMYQL1XcQcXc7U4DLTv544uQES884OxzzK
         9g/quwyUR3z1ZUlSrbFMrCWyqLdjB1aUZDZs/H3RK1bjkDHqZIwFvfNWtK9Oh3UMDIab
         NdjihgpltfePHKPOLSBQc79BxYmKB1O467l9yMmzqVjISZHnmq0VhutE01CGzPRPgTPu
         H0wQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=MJLWqSQS;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1rzAWdV5DxVtnlsPeLBdabH9b5dK3+OdhqcTHQ0lW/E=;
        b=YQeUFqO2BDZZzr1NIzD0qgbtgB3qSvP/n6mkoTO8FLHt1KM96i9UY7nydIZ+9EoHE0
         k8ZfqLzus/XqM9EWkVgD+f9A51kBlqj7IQ98sPv+PPtKO512bU/7sFDefPcinnqCQ+89
         8B5CCWGTxMt0vMiuIwo/YUqDlNWrtClA9wezyQ6rMboNSgkWoP7FgabtJBYFUfNJkHvE
         cilhx0w//hDuKMrssFhL/Miha4TpNECPeAYQrZVHzp/fei7/QIR1GSptIZ5iCFsTfedp
         IHog702c0mxenP4U+bCn5lMHqUuT5nOMPJOND88wxCXiuwe2eQOJfGggk+6FdmoIkCcu
         zcxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1rzAWdV5DxVtnlsPeLBdabH9b5dK3+OdhqcTHQ0lW/E=;
        b=X7yNh1Blka7LR1edud7bJUfs+LcF82+bIavCMLON/hz2nwAo6vQoKU+KqSztTi488r
         c9P8yJzw+vdU7lRKeI7PRwBDtP0xN+wmwPj82xC90S6OusyrGugfYlx3j5d8KYpEfTEC
         8CYxomXaZjoEC+h1W/9pK0d2LiQRU9i/sDP1+CbjY1IGm7wyN/B6/gpcR4cxXR74al+S
         vYLxrP6E0h6Ka/GW1q46xuzYBhrhpW2qmof2vTZ2zTS5GUsXXB7cw/oeJLihuHkqlmV9
         dcrjxznnHOA6DXrkZTQbygYj6afhhdWjqzfxzwmyXy+ZpxKTiEfBjbwC83yFggABNqT+
         I8rQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532fpMez0i2Kz/V2UAvebQOODiF27R6xxuSEnl4x+adbWU6TWAqy
	JXIkH+y5QM+KKIK1EmPYDRg=
X-Google-Smtp-Source: ABdhPJzEjfdGRr+7qLtCHYZv9VD2Hgxxev5+MuoRim8NRsDiWpP5V/SbdtYTAGc6w1t0o17+Aogvpw==
X-Received: by 2002:ab0:3571:: with SMTP id e17mr8606926uaa.52.1623053891957;
        Mon, 07 Jun 2021 01:18:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:e017:: with SMTP id c23ls2767417vsl.7.gmail; Mon, 07 Jun
 2021 01:18:11 -0700 (PDT)
X-Received: by 2002:a67:b24e:: with SMTP id s14mr7851093vsh.28.1623053891347;
        Mon, 07 Jun 2021 01:18:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623053891; cv=none;
        d=google.com; s=arc-20160816;
        b=D0m+vi1yP1lETTBijtoVjfMG0xJYhyle/Gr/JWcP9jQSNxueXiyxlVNtdk3WNyRAWj
         c/W4Uycym2pVds6d59voXFU7obNOsv7UMHh48nesPR50QVDnsBKkL+DMr3Hm38fIq+5/
         XKr8fM+Bao4XscIcS6PTzjMbIJmW1HTy1FgCN2SxrO8Cqe2ZpRFq+33augDewZxjc8BJ
         zHFfxJjhxvuIpPmHQ6iAslATddNvGH650IcX7XaQXnEI+J8T+EgQIt5QSjoMEaASMWQ7
         jY5hdifWOXZ3jB+79Rvt0BxZqCOc3/OizSxOv5wOPeJDMvDOgIhZ3/N0h16xjYeQ3xMW
         wM1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=w0NqNyNsdShE0pLwXYgcK2JP2pYQi+UnGDxlL5DkAHY=;
        b=Xjz7WvTyKsNc3/Nzh7fbKtcCmPeQ5CJsTTO8fm7QtUfUyGPMN1SkLdKuc/cQxP+5Gi
         lLgL81ySixdCBXgpxIfCGd6VAjUWpuGKShr9BtjDcYsfKYw1yNRZ04m7fO++jqXah91l
         WeL2FrticyHRYuP/feEvAq66bbW19wkuszfqlaWhfICMdA0cK+lF0CWy5Z/Y+soEXxXm
         G3JSH6QMzMzuWSKPta+VQIwNQ4nKsHKWdE/SNRbWXi/OIFqNazk2HFt1y2Gdh24wcQmV
         arXsIDCM643DLTdI9wV+dSxpFJWATBXNq2H8ZStYmRrCFp7iOS8Gu10CNI0/EpwIbVSD
         h9Ew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=MJLWqSQS;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o66si712198vkc.0.2021.06.07.01.18.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Jun 2021 01:18:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1D54761205;
	Mon,  7 Jun 2021 08:18:09 +0000 (UTC)
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
Subject: [PATCH rdma-next v1 01/15] RDMA: Split the alloc_hw_stats() ops to port and device variants
Date: Mon,  7 Jun 2021 11:17:26 +0300
Message-Id: <473d0b69e4c5234d11383b8caf872d8fa7e64b50.1623053078.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1623053078.git.leonro@nvidia.com>
References: <cover.1623053078.git.leonro@nvidia.com>
MIME-Version: 1.0
X-Original-Sender: leon@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=MJLWqSQS;       spf=pass
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

This is being used to implement both the port and device global stats,
which is causing some confusion in the drivers. For instance EFA and i40iw
both seem to be misusing the device stats.

Split it into two ops so drivers that don't support one or the other can
leave the op NULL'd, making the calling code a little simpler to
understand.

Tested-by: Gal Pressman <galpress@amazon.com>
Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 drivers/infiniband/core/counters.c          |  4 +-
 drivers/infiniband/core/device.c            |  3 +-
 drivers/infiniband/core/nldev.c             |  2 +-
 drivers/infiniband/core/sysfs.c             | 10 ++-
 drivers/infiniband/hw/bnxt_re/hw_counters.c |  7 +-
 drivers/infiniband/hw/bnxt_re/hw_counters.h |  4 +-
 drivers/infiniband/hw/bnxt_re/main.c        |  2 +-
 drivers/infiniband/hw/cxgb4/provider.c      |  9 +--
 drivers/infiniband/hw/efa/efa.h             |  3 +-
 drivers/infiniband/hw/efa/efa_main.c        |  3 +-
 drivers/infiniband/hw/efa/efa_verbs.c       | 11 ++-
 drivers/infiniband/hw/hfi1/verbs.c          | 86 ++++++++++-----------
 drivers/infiniband/hw/irdma/verbs.c         | 11 +--
 drivers/infiniband/hw/mlx4/main.c           | 25 ++++--
 drivers/infiniband/hw/mlx5/counters.c       | 42 +++++++---
 drivers/infiniband/sw/rxe/rxe_hw_counters.c |  7 +-
 drivers/infiniband/sw/rxe/rxe_hw_counters.h |  4 +-
 drivers/infiniband/sw/rxe/rxe_verbs.c       |  2 +-
 include/rdma/ib_verbs.h                     | 13 ++--
 19 files changed, 142 insertions(+), 106 deletions(-)

diff --git a/drivers/infiniband/core/counters.c b/drivers/infiniband/core/counters.c
index 15493357cfef..df9e6c5e4ddf 100644
--- a/drivers/infiniband/core/counters.c
+++ b/drivers/infiniband/core/counters.c
@@ -605,10 +605,10 @@ void rdma_counter_init(struct ib_device *dev)
 		port_counter->mode.mode = RDMA_COUNTER_MODE_NONE;
 		mutex_init(&port_counter->lock);
 
-		if (!dev->ops.alloc_hw_stats)
+		if (!dev->ops.alloc_hw_port_stats)
 			continue;
 
-		port_counter->hstats = dev->ops.alloc_hw_stats(dev, port);
+		port_counter->hstats = dev->ops.alloc_hw_port_stats(dev, port);
 		if (!port_counter->hstats)
 			goto fail;
 	}
diff --git a/drivers/infiniband/core/device.c b/drivers/infiniband/core/device.c
index c660cef66ac6..86a16cd7d7fd 100644
--- a/drivers/infiniband/core/device.c
+++ b/drivers/infiniband/core/device.c
@@ -2595,7 +2595,8 @@ void ib_set_device_ops(struct ib_device *dev, const struct ib_device_ops *ops)
 	SET_DEVICE_OP(dev_ops, add_gid);
 	SET_DEVICE_OP(dev_ops, advise_mr);
 	SET_DEVICE_OP(dev_ops, alloc_dm);
-	SET_DEVICE_OP(dev_ops, alloc_hw_stats);
+	SET_DEVICE_OP(dev_ops, alloc_hw_device_stats);
+	SET_DEVICE_OP(dev_ops, alloc_hw_port_stats);
 	SET_DEVICE_OP(dev_ops, alloc_mr);
 	SET_DEVICE_OP(dev_ops, alloc_mr_integrity);
 	SET_DEVICE_OP(dev_ops, alloc_mw);
diff --git a/drivers/infiniband/core/nldev.c b/drivers/infiniband/core/nldev.c
index 34d0cc1a4147..01316926cef6 100644
--- a/drivers/infiniband/core/nldev.c
+++ b/drivers/infiniband/core/nldev.c
@@ -2060,7 +2060,7 @@ static int stat_get_doit_default_counter(struct sk_buff *skb,
 	if (!device)
 		return -EINVAL;
 
-	if (!device->ops.alloc_hw_stats || !device->ops.get_hw_stats) {
+	if (!device->ops.alloc_hw_port_stats || !device->ops.get_hw_stats) {
 		ret = -EINVAL;
 		goto err;
 	}
diff --git a/drivers/infiniband/core/sysfs.c b/drivers/infiniband/core/sysfs.c
index 05b702de00e8..d11ceff2b4e4 100644
--- a/drivers/infiniband/core/sysfs.c
+++ b/drivers/infiniband/core/sysfs.c
@@ -981,8 +981,10 @@ static void setup_hw_stats(struct ib_device *device, struct ib_port *port,
 	struct rdma_hw_stats *stats;
 	int i, ret;
 
-	stats = device->ops.alloc_hw_stats(device, port_num);
-
+	if (port_num)
+		stats = device->ops.alloc_hw_port_stats(device, port_num);
+	else
+		stats = device->ops.alloc_hw_device_stats(device);
 	if (!stats)
 		return;
 
@@ -1165,7 +1167,7 @@ static int add_port(struct ib_core_device *coredev, int port_num)
 	 * port, so holder should be device. Therefore skip per port conunter
 	 * initialization.
 	 */
-	if (device->ops.alloc_hw_stats && port_num && is_full_dev)
+	if (device->ops.alloc_hw_port_stats && port_num && is_full_dev)
 		setup_hw_stats(device, p, port_num);
 
 	list_add_tail(&p->kobj.entry, &coredev->port_list);
@@ -1409,7 +1411,7 @@ int ib_device_register_sysfs(struct ib_device *device)
 	if (ret)
 		return ret;
 
-	if (device->ops.alloc_hw_stats)
+	if (device->ops.alloc_hw_device_stats)
 		setup_hw_stats(device, NULL, 0);
 
 	return 0;
diff --git a/drivers/infiniband/hw/bnxt_re/hw_counters.c b/drivers/infiniband/hw/bnxt_re/hw_counters.c
index 3e54e1ae75b4..7ba07797845c 100644
--- a/drivers/infiniband/hw/bnxt_re/hw_counters.c
+++ b/drivers/infiniband/hw/bnxt_re/hw_counters.c
@@ -234,13 +234,10 @@ int bnxt_re_ib_get_hw_stats(struct ib_device *ibdev,
 	return ARRAY_SIZE(bnxt_re_stat_name);
 }
 
-struct rdma_hw_stats *bnxt_re_ib_alloc_hw_stats(struct ib_device *ibdev,
-						u32 port_num)
+struct rdma_hw_stats *bnxt_re_ib_alloc_hw_port_stats(struct ib_device *ibdev,
+						     u32 port_num)
 {
 	BUILD_BUG_ON(ARRAY_SIZE(bnxt_re_stat_name) != BNXT_RE_NUM_COUNTERS);
-	/* We support only per port stats */
-	if (!port_num)
-		return NULL;
 
 	return rdma_alloc_hw_stats_struct(bnxt_re_stat_name,
 					  ARRAY_SIZE(bnxt_re_stat_name),
diff --git a/drivers/infiniband/hw/bnxt_re/hw_counters.h b/drivers/infiniband/hw/bnxt_re/hw_counters.h
index ede048607d6c..6f2d2f91d9ff 100644
--- a/drivers/infiniband/hw/bnxt_re/hw_counters.h
+++ b/drivers/infiniband/hw/bnxt_re/hw_counters.h
@@ -96,8 +96,8 @@ enum bnxt_re_hw_stats {
 	BNXT_RE_NUM_COUNTERS
 };
 
-struct rdma_hw_stats *bnxt_re_ib_alloc_hw_stats(struct ib_device *ibdev,
-						u32 port_num);
+struct rdma_hw_stats *bnxt_re_ib_alloc_hw_port_stats(struct ib_device *ibdev,
+						     u32 port_num);
 int bnxt_re_ib_get_hw_stats(struct ib_device *ibdev,
 			    struct rdma_hw_stats *stats,
 			    u32 port, int index);
diff --git a/drivers/infiniband/hw/bnxt_re/main.c b/drivers/infiniband/hw/bnxt_re/main.c
index 58c2a7dfb438..58bd905048ae 100644
--- a/drivers/infiniband/hw/bnxt_re/main.c
+++ b/drivers/infiniband/hw/bnxt_re/main.c
@@ -629,7 +629,7 @@ static const struct ib_device_ops bnxt_re_dev_ops = {
 	.uverbs_abi_ver = BNXT_RE_ABI_VERSION,
 
 	.add_gid = bnxt_re_add_gid,
-	.alloc_hw_stats = bnxt_re_ib_alloc_hw_stats,
+	.alloc_hw_port_stats = bnxt_re_ib_alloc_hw_port_stats,
 	.alloc_mr = bnxt_re_alloc_mr,
 	.alloc_pd = bnxt_re_alloc_pd,
 	.alloc_ucontext = bnxt_re_alloc_ucontext,
diff --git a/drivers/infiniband/hw/cxgb4/provider.c b/drivers/infiniband/hw/cxgb4/provider.c
index 3f1893e180dd..4e453d1dde11 100644
--- a/drivers/infiniband/hw/cxgb4/provider.c
+++ b/drivers/infiniband/hw/cxgb4/provider.c
@@ -377,14 +377,11 @@ static const char * const names[] = {
 	[IP6OUTRSTS] = "ip6OutRsts"
 };
 
-static struct rdma_hw_stats *c4iw_alloc_stats(struct ib_device *ibdev,
-					      u32 port_num)
+static struct rdma_hw_stats *c4iw_alloc_device_stats(struct ib_device *ibdev)
 {
 	BUILD_BUG_ON(ARRAY_SIZE(names) != NR_COUNTERS);
 
-	if (port_num != 0)
-		return NULL;
-
+	/* FIXME: these look like port stats */
 	return rdma_alloc_hw_stats_struct(names, NR_COUNTERS,
 					  RDMA_HW_STATS_DEFAULT_LIFESPAN);
 }
@@ -455,7 +452,7 @@ static const struct ib_device_ops c4iw_dev_ops = {
 	.driver_id = RDMA_DRIVER_CXGB4,
 	.uverbs_abi_ver = C4IW_UVERBS_ABI_VERSION,
 
-	.alloc_hw_stats = c4iw_alloc_stats,
+	.alloc_hw_device_stats = c4iw_alloc_device_stats,
 	.alloc_mr = c4iw_alloc_mr,
 	.alloc_pd = c4iw_allocate_pd,
 	.alloc_ucontext = c4iw_alloc_ucontext,
diff --git a/drivers/infiniband/hw/efa/efa.h b/drivers/infiniband/hw/efa/efa.h
index ea322cec27d2..2b8ca099b381 100644
--- a/drivers/infiniband/hw/efa/efa.h
+++ b/drivers/infiniband/hw/efa/efa.h
@@ -157,7 +157,8 @@ int efa_modify_qp(struct ib_qp *ibqp, struct ib_qp_attr *qp_attr,
 		  int qp_attr_mask, struct ib_udata *udata);
 enum rdma_link_layer efa_port_link_layer(struct ib_device *ibdev,
 					 u32 port_num);
-struct rdma_hw_stats *efa_alloc_hw_stats(struct ib_device *ibdev, u32 port_num);
+struct rdma_hw_stats *efa_alloc_hw_port_stats(struct ib_device *ibdev, u32 port_num);
+struct rdma_hw_stats *efa_alloc_hw_device_stats(struct ib_device *ibdev);
 int efa_get_hw_stats(struct ib_device *ibdev, struct rdma_hw_stats *stats,
 		     u32 port_num, int index);
 
diff --git a/drivers/infiniband/hw/efa/efa_main.c b/drivers/infiniband/hw/efa/efa_main.c
index 816cfd65b7ac..203e6ddcacbc 100644
--- a/drivers/infiniband/hw/efa/efa_main.c
+++ b/drivers/infiniband/hw/efa/efa_main.c
@@ -242,7 +242,8 @@ static const struct ib_device_ops efa_dev_ops = {
 	.driver_id = RDMA_DRIVER_EFA,
 	.uverbs_abi_ver = EFA_UVERBS_ABI_VERSION,
 
-	.alloc_hw_stats = efa_alloc_hw_stats,
+	.alloc_hw_port_stats = efa_alloc_hw_port_stats,
+	.alloc_hw_device_stats = efa_alloc_hw_device_stats,
 	.alloc_pd = efa_alloc_pd,
 	.alloc_ucontext = efa_alloc_ucontext,
 	.create_cq = efa_create_cq,
diff --git a/drivers/infiniband/hw/efa/efa_verbs.c b/drivers/infiniband/hw/efa/efa_verbs.c
index 51572f1dc611..be6d3ff0f1be 100644
--- a/drivers/infiniband/hw/efa/efa_verbs.c
+++ b/drivers/infiniband/hw/efa/efa_verbs.c
@@ -1904,13 +1904,22 @@ int efa_destroy_ah(struct ib_ah *ibah, u32 flags)
 	return 0;
 }
 
-struct rdma_hw_stats *efa_alloc_hw_stats(struct ib_device *ibdev, u32 port_num)
+struct rdma_hw_stats *efa_alloc_hw_port_stats(struct ib_device *ibdev, u32 port_num)
 {
 	return rdma_alloc_hw_stats_struct(efa_stats_names,
 					  ARRAY_SIZE(efa_stats_names),
 					  RDMA_HW_STATS_DEFAULT_LIFESPAN);
 }
 
+struct rdma_hw_stats *efa_alloc_hw_device_stats(struct ib_device *ibdev)
+{
+	/*
+	 * It is probably a bug that efa reports its port stats as device
+	 * stats
+	 */
+	return efa_alloc_hw_port_stats(ibdev, 0);
+}
+
 int efa_get_hw_stats(struct ib_device *ibdev, struct rdma_hw_stats *stats,
 		     u32 port_num, int index)
 {
diff --git a/drivers/infiniband/hw/hfi1/verbs.c b/drivers/infiniband/hw/hfi1/verbs.c
index 554294340caa..85deba07a675 100644
--- a/drivers/infiniband/hw/hfi1/verbs.c
+++ b/drivers/infiniband/hw/hfi1/verbs.c
@@ -1693,54 +1693,53 @@ static int init_cntr_names(const char *names_in,
 	return 0;
 }
 
-static struct rdma_hw_stats *alloc_hw_stats(struct ib_device *ibdev,
-					    u32 port_num)
+static int init_counters(struct ib_device *ibdev)
 {
-	int i, err;
+	struct hfi1_devdata *dd = dd_from_ibdev(ibdev);
+	int i, err = 0;
 
 	mutex_lock(&cntr_names_lock);
-	if (!cntr_names_initialized) {
-		struct hfi1_devdata *dd = dd_from_ibdev(ibdev);
-
-		err = init_cntr_names(dd->cntrnames,
-				      dd->cntrnameslen,
-				      num_driver_cntrs,
-				      &num_dev_cntrs,
-				      &dev_cntr_names);
-		if (err) {
-			mutex_unlock(&cntr_names_lock);
-			return NULL;
-		}
-
-		for (i = 0; i < num_driver_cntrs; i++)
-			dev_cntr_names[num_dev_cntrs + i] =
-				driver_cntr_names[i];
-
-		err = init_cntr_names(dd->portcntrnames,
-				      dd->portcntrnameslen,
-				      0,
-				      &num_port_cntrs,
-				      &port_cntr_names);
-		if (err) {
-			kfree(dev_cntr_names);
-			dev_cntr_names = NULL;
-			mutex_unlock(&cntr_names_lock);
-			return NULL;
-		}
-		cntr_names_initialized = 1;
+	if (cntr_names_initialized)
+		goto out_unlock;
+
+	err = init_cntr_names(dd->cntrnames, dd->cntrnameslen, num_driver_cntrs,
+			      &num_dev_cntrs, &dev_cntr_names);
+	if (err)
+		goto out_unlock;
+
+	for (i = 0; i < num_driver_cntrs; i++)
+		dev_cntr_names[num_dev_cntrs + i] = driver_cntr_names[i];
+
+	err = init_cntr_names(dd->portcntrnames, dd->portcntrnameslen, 0,
+			      &num_port_cntrs, &port_cntr_names);
+	if (err) {
+		kfree(dev_cntr_names);
+		dev_cntr_names = NULL;
+		goto out_unlock;
 	}
+	cntr_names_initialized = 1;
+
+out_unlock:
 	mutex_unlock(&cntr_names_lock);
+	return err;
+}
 
-	if (!port_num)
-		return rdma_alloc_hw_stats_struct(
-				dev_cntr_names,
-				num_dev_cntrs + num_driver_cntrs,
-				RDMA_HW_STATS_DEFAULT_LIFESPAN);
-	else
-		return rdma_alloc_hw_stats_struct(
-				port_cntr_names,
-				num_port_cntrs,
-				RDMA_HW_STATS_DEFAULT_LIFESPAN);
+static struct rdma_hw_stats *hfi1_alloc_hw_device_stats(struct ib_device *ibdev)
+{
+	if (init_counters(ibdev))
+		return NULL;
+	return rdma_alloc_hw_stats_struct(dev_cntr_names,
+					  num_dev_cntrs + num_driver_cntrs,
+					  RDMA_HW_STATS_DEFAULT_LIFESPAN);
+}
+
+static struct rdma_hw_stats *hfi_alloc_hw_port_stats(struct ib_device *ibdev,
+						     u32 port_num)
+{
+	if (init_counters(ibdev))
+		return NULL;
+	return rdma_alloc_hw_stats_struct(port_cntr_names, num_port_cntrs,
+					  RDMA_HW_STATS_DEFAULT_LIFESPAN);
 }
 
 static u64 hfi1_sps_ints(void)
@@ -1787,7 +1786,8 @@ static const struct ib_device_ops hfi1_dev_ops = {
 	.owner = THIS_MODULE,
 	.driver_id = RDMA_DRIVER_HFI1,
 
-	.alloc_hw_stats = alloc_hw_stats,
+	.alloc_hw_device_stats = hfi1_alloc_hw_device_stats,
+	.alloc_hw_port_stats = hfi_alloc_hw_port_stats,
 	.alloc_rdma_netdev = hfi1_vnic_alloc_rn,
 	.get_dev_fw_str = hfi1_get_dev_fw_str,
 	.get_hw_stats = get_hw_stats,
diff --git a/drivers/infiniband/hw/irdma/verbs.c b/drivers/infiniband/hw/irdma/verbs.c
index 294155293243..10b602eccbc4 100644
--- a/drivers/infiniband/hw/irdma/verbs.c
+++ b/drivers/infiniband/hw/irdma/verbs.c
@@ -3727,20 +3727,17 @@ static void irdma_get_dev_fw_str(struct ib_device *dev, char *str)
 }
 
 /**
- * irdma_alloc_hw_stats - Allocate a hw stats structure
+ * irdma_alloc_hw_port_stats - Allocate a hw stats structure
  * @ibdev: device pointer from stack
  * @port_num: port number
  */
-static struct rdma_hw_stats *irdma_alloc_hw_stats(struct ib_device *ibdev,
-						  u32 port_num)
+static struct rdma_hw_stats *irdma_alloc_hw_port_stats(struct ib_device *ibdev,
+						       u32 port_num)
 {
 	int num_counters = IRDMA_HW_STAT_INDEX_MAX_32 +
 			   IRDMA_HW_STAT_INDEX_MAX_64;
 	unsigned long lifespan = RDMA_HW_STATS_DEFAULT_LIFESPAN;
 
-	if (!port_num)
-		return NULL;
-
 	BUILD_BUG_ON(ARRAY_SIZE(irdma_hw_stat_names) !=
 		     (IRDMA_HW_STAT_INDEX_MAX_32 + IRDMA_HW_STAT_INDEX_MAX_64));
 
@@ -4354,7 +4351,7 @@ static const struct ib_device_ops irdma_dev_ops = {
 	.driver_id = RDMA_DRIVER_IRDMA,
 	.uverbs_abi_ver = IRDMA_ABI_VER,
 
-	.alloc_hw_stats = irdma_alloc_hw_stats,
+	.alloc_hw_port_stats = irdma_alloc_hw_port_stats,
 	.alloc_mr = irdma_alloc_mr,
 	.alloc_mw = irdma_alloc_mw,
 	.alloc_pd = irdma_alloc_pd,
diff --git a/drivers/infiniband/hw/mlx4/main.c b/drivers/infiniband/hw/mlx4/main.c
index 22898d97ecbd..341162aa2175 100644
--- a/drivers/infiniband/hw/mlx4/main.c
+++ b/drivers/infiniband/hw/mlx4/main.c
@@ -2105,17 +2105,29 @@ static const struct diag_counter diag_device_only[] = {
 	DIAG_COUNTER(rq_num_udsdprd, 0x118),
 };
 
-static struct rdma_hw_stats *mlx4_ib_alloc_hw_stats(struct ib_device *ibdev,
-						    u32 port_num)
+static struct rdma_hw_stats *
+mlx4_ib_alloc_hw_device_stats(struct ib_device *ibdev)
 {
 	struct mlx4_ib_dev *dev = to_mdev(ibdev);
 	struct mlx4_ib_diag_counters *diag = dev->diag_counters;
 
-	if (!diag[!!port_num].name)
+	if (!diag[0].name)
 		return NULL;
 
-	return rdma_alloc_hw_stats_struct(diag[!!port_num].name,
-					  diag[!!port_num].num_counters,
+	return rdma_alloc_hw_stats_struct(diag[0].name, diag[0].num_counters,
+					  RDMA_HW_STATS_DEFAULT_LIFESPAN);
+}
+
+static struct rdma_hw_stats *
+mlx4_ib_alloc_hw_port_stats(struct ib_device *ibdev, u32 port_num)
+{
+	struct mlx4_ib_dev *dev = to_mdev(ibdev);
+	struct mlx4_ib_diag_counters *diag = dev->diag_counters;
+
+	if (!diag[1].name)
+		return NULL;
+
+	return rdma_alloc_hw_stats_struct(diag[1].name, diag[1].num_counters,
 					  RDMA_HW_STATS_DEFAULT_LIFESPAN);
 }
 
@@ -2206,7 +2218,8 @@ static void mlx4_ib_fill_diag_counters(struct mlx4_ib_dev *ibdev,
 }
 
 static const struct ib_device_ops mlx4_ib_hw_stats_ops = {
-	.alloc_hw_stats = mlx4_ib_alloc_hw_stats,
+	.alloc_hw_device_stats = mlx4_ib_alloc_hw_device_stats,
+	.alloc_hw_port_stats = mlx4_ib_alloc_hw_port_stats,
 	.get_hw_stats = mlx4_ib_get_hw_stats,
 };
 
diff --git a/drivers/infiniband/hw/mlx5/counters.c b/drivers/infiniband/hw/mlx5/counters.c
index e365341057cb..224ba36f2946 100644
--- a/drivers/infiniband/hw/mlx5/counters.c
+++ b/drivers/infiniband/hw/mlx5/counters.c
@@ -161,22 +161,29 @@ u16 mlx5_ib_get_counters_id(struct mlx5_ib_dev *dev, u32 port_num)
 	return cnts->set_id;
 }
 
-static struct rdma_hw_stats *mlx5_ib_alloc_hw_stats(struct ib_device *ibdev,
-						    u32 port_num)
+static struct rdma_hw_stats *
+mlx5_ib_alloc_hw_device_stats(struct ib_device *ibdev)
 {
 	struct mlx5_ib_dev *dev = to_mdev(ibdev);
-	const struct mlx5_ib_counters *cnts;
-	bool is_switchdev = is_mdev_switchdev_mode(dev->mdev);
+	const struct mlx5_ib_counters *cnts = &dev->port[0].cnts;
 
-	if ((is_switchdev && port_num) || (!is_switchdev && !port_num))
-		return NULL;
+	return rdma_alloc_hw_stats_struct(cnts->names,
+					  cnts->num_q_counters +
+						  cnts->num_cong_counters +
+						  cnts->num_ext_ppcnt_counters,
+					  RDMA_HW_STATS_DEFAULT_LIFESPAN);
+}
 
-	cnts = get_counters(dev, port_num - 1);
+static struct rdma_hw_stats *
+mlx5_ib_alloc_hw_port_stats(struct ib_device *ibdev, u32 port_num)
+{
+	struct mlx5_ib_dev *dev = to_mdev(ibdev);
+	const struct mlx5_ib_counters *cnts = &dev->port[port_num - 1].cnts;
 
 	return rdma_alloc_hw_stats_struct(cnts->names,
 					  cnts->num_q_counters +
-					  cnts->num_cong_counters +
-					  cnts->num_ext_ppcnt_counters,
+						  cnts->num_cong_counters +
+						  cnts->num_ext_ppcnt_counters,
 					  RDMA_HW_STATS_DEFAULT_LIFESPAN);
 }
 
@@ -666,7 +673,17 @@ void mlx5_ib_counters_clear_description(struct ib_counters *counters)
 }
 
 static const struct ib_device_ops hw_stats_ops = {
-	.alloc_hw_stats = mlx5_ib_alloc_hw_stats,
+	.alloc_hw_port_stats = mlx5_ib_alloc_hw_port_stats,
+	.get_hw_stats = mlx5_ib_get_hw_stats,
+	.counter_bind_qp = mlx5_ib_counter_bind_qp,
+	.counter_unbind_qp = mlx5_ib_counter_unbind_qp,
+	.counter_dealloc = mlx5_ib_counter_dealloc,
+	.counter_alloc_stats = mlx5_ib_counter_alloc_stats,
+	.counter_update_stats = mlx5_ib_counter_update_stats,
+};
+
+static const struct ib_device_ops hw_switchdev_stats_ops = {
+	.alloc_hw_device_stats = mlx5_ib_alloc_hw_device_stats,
 	.get_hw_stats = mlx5_ib_get_hw_stats,
 	.counter_bind_qp = mlx5_ib_counter_bind_qp,
 	.counter_unbind_qp = mlx5_ib_counter_unbind_qp,
@@ -690,7 +707,10 @@ int mlx5_ib_counters_init(struct mlx5_ib_dev *dev)
 	if (!MLX5_CAP_GEN(dev->mdev, max_qp_cnt))
 		return 0;
 
-	ib_set_device_ops(&dev->ib_dev, &hw_stats_ops);
+	if (is_mdev_switchdev_mode(dev->mdev))
+		ib_set_device_ops(&dev->ib_dev, &hw_switchdev_stats_ops);
+	else
+		ib_set_device_ops(&dev->ib_dev, &hw_stats_ops);
 	return mlx5_ib_alloc_counters(dev);
 }
 
diff --git a/drivers/infiniband/sw/rxe/rxe_hw_counters.c b/drivers/infiniband/sw/rxe/rxe_hw_counters.c
index f469fd1c753d..d5ceb706d964 100644
--- a/drivers/infiniband/sw/rxe/rxe_hw_counters.c
+++ b/drivers/infiniband/sw/rxe/rxe_hw_counters.c
@@ -40,13 +40,10 @@ int rxe_ib_get_hw_stats(struct ib_device *ibdev,
 	return ARRAY_SIZE(rxe_counter_name);
 }
 
-struct rdma_hw_stats *rxe_ib_alloc_hw_stats(struct ib_device *ibdev,
-					    u32 port_num)
+struct rdma_hw_stats *rxe_ib_alloc_hw_port_stats(struct ib_device *ibdev,
+						 u32 port_num)
 {
 	BUILD_BUG_ON(ARRAY_SIZE(rxe_counter_name) != RXE_NUM_OF_COUNTERS);
-	/* We support only per port stats */
-	if (!port_num)
-		return NULL;
 
 	return rdma_alloc_hw_stats_struct(rxe_counter_name,
 					  ARRAY_SIZE(rxe_counter_name),
diff --git a/drivers/infiniband/sw/rxe/rxe_hw_counters.h b/drivers/infiniband/sw/rxe/rxe_hw_counters.h
index 2f369acb46d7..71f4d4fa9dc8 100644
--- a/drivers/infiniband/sw/rxe/rxe_hw_counters.h
+++ b/drivers/infiniband/sw/rxe/rxe_hw_counters.h
@@ -29,8 +29,8 @@ enum rxe_counters {
 	RXE_NUM_OF_COUNTERS
 };
 
-struct rdma_hw_stats *rxe_ib_alloc_hw_stats(struct ib_device *ibdev,
-					    u32 port_num);
+struct rdma_hw_stats *rxe_ib_alloc_hw_port_stats(struct ib_device *ibdev,
+						 u32 port_num);
 int rxe_ib_get_hw_stats(struct ib_device *ibdev,
 			struct rdma_hw_stats *stats,
 			u32 port, int index);
diff --git a/drivers/infiniband/sw/rxe/rxe_verbs.c b/drivers/infiniband/sw/rxe/rxe_verbs.c
index 33731b5dd9c3..d3df59d897a7 100644
--- a/drivers/infiniband/sw/rxe/rxe_verbs.c
+++ b/drivers/infiniband/sw/rxe/rxe_verbs.c
@@ -1104,7 +1104,7 @@ static const struct ib_device_ops rxe_dev_ops = {
 	.driver_id = RDMA_DRIVER_RXE,
 	.uverbs_abi_ver = RXE_UVERBS_ABI_VERSION,
 
-	.alloc_hw_stats = rxe_ib_alloc_hw_stats,
+	.alloc_hw_port_stats = rxe_ib_alloc_hw_port_stats,
 	.alloc_mr = rxe_alloc_mr,
 	.alloc_pd = rxe_alloc_pd,
 	.alloc_ucontext = rxe_alloc_ucontext,
diff --git a/include/rdma/ib_verbs.h b/include/rdma/ib_verbs.h
index 05dbc216eb64..849a06441e29 100644
--- a/include/rdma/ib_verbs.h
+++ b/include/rdma/ib_verbs.h
@@ -2522,13 +2522,14 @@ struct ib_device_ops {
 			    unsigned int *meta_sg_offset);
 
 	/**
-	 * alloc_hw_stats - Allocate a struct rdma_hw_stats and fill in the
-	 *   driver initialized data.  The struct is kfree()'ed by the sysfs
-	 *   core when the device is removed.  A lifespan of -1 in the return
-	 *   struct tells the core to set a default lifespan.
+	 * alloc_hw_[device,port]_stats - Allocate a struct rdma_hw_stats and
+	 *   fill in the driver initialized data.  The struct is kfree()'ed by
+	 *   the sysfs core when the device is removed.  A lifespan of -1 in the
+	 *   return struct tells the core to set a default lifespan.
 	 */
-	struct rdma_hw_stats *(*alloc_hw_stats)(struct ib_device *device,
-						u32 port_num);
+	struct rdma_hw_stats *(*alloc_hw_device_stats)(struct ib_device *device);
+	struct rdma_hw_stats *(*alloc_hw_port_stats)(struct ib_device *device,
+						     u32 port_num);
 	/**
 	 * get_hw_stats - Fill in the counter value(s) in the stats struct.
 	 * @index - The index in the value array we wish to have updated, or
-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/473d0b69e4c5234d11383b8caf872d8fa7e64b50.1623053078.git.leonro%40nvidia.com.
