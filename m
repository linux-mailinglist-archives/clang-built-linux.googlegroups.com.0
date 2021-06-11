Return-Path: <clang-built-linux+bncBDMMLW4BXYHBBVMRR2DAMGQEHLVHFBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x938.google.com (mail-ua1-x938.google.com [IPv6:2607:f8b0:4864:20::938])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FEF23A4600
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 18:01:26 +0200 (CEST)
Received: by mail-ua1-x938.google.com with SMTP id w19-20020a9f2c930000b029026e4e38604fsf2735920uaj.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 09:01:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623427285; cv=pass;
        d=google.com; s=arc-20160816;
        b=FJa5YYexH4wHlEFOou6R44BRC01s4M/LB1WdA+nLpv14dq+pgFHmsbR+ExR5xvbjzs
         AAMB11/e4LsjQwTiOCFLh3nLj2LyUAKYEQcnhgte56OO4QRnXxhCkEW7OmaS285eN6ye
         W+fF+MPzG4y5hJZK8yPshfN2Myc7Y9BH29j6A6XLjje02+vqWOQEaB74+GVBQsG7A4ZK
         cMdSji53x04bPjcvq1J24VLzJhriMSuIO5WS/snUQLQ+uA3aF3imuJmuelUxLoX/q+/Z
         ULs2IK/fWqEZzLjDx9Ifnd3OrAjKJ44Obd5wkW/n5moFfNiYOnyRZ50cFpX08pSgRUxg
         uuQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=fUKgGKlcoBQemjnJAVzOUKK11DxT2aeqpefRChzwlWY=;
        b=xq9uJVOOIdEMvE9QZhLCSc8l7/Zmrv5dUDj/F5KtRQ428hML3+Xjc4YF5dt0hnx4AF
         2mI1FUgxpt0YKvtnIz8NioAya9EQVhnoHGLCYe/85mSszFpeNMR9j54tx36AGzh7pO4A
         VREsUD0/9EFG7jXdMp0IbtnviQbwfubnW4uHz16HMiZxuvkgagtLKxYc8KgBzgkdIiyB
         j7HUr5W9T8980TndHxeYB0AobTkHJIO1V8mKwKSBEABAA19O1rpXbfGqb3sAor/5Ew/F
         m8SypwfGW0d+c4WgtnLVvcGw4ZoYubETUEONI/tKQ+BXnnX3xr/M7IHriI8JfhkATAga
         mgJQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=A3wjERgL;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fUKgGKlcoBQemjnJAVzOUKK11DxT2aeqpefRChzwlWY=;
        b=OMB7eultwn45cLw0BM6+fQFtPNQnQfCA8wrH1BpCSoR/2rSXb7CxnElAyjEBNBdtI0
         9RYRg0obRutg4kvX4zkIDgCBCdn3ByafqpNKAjsHMjRIijSP3R09umB/trevzYbVUBD6
         JYw/K2Jo0m9KXY/sgIFeDb21oCVZJz711odUph3+Y+QTGgzd1z1ywORrbVZqIy9MO2Mm
         HxQM9fOdEMSXmemfMLwpAOxfegeJf9AwrvQFsMUftUSzuYJbWkc/PzeP23E80qaARU+A
         g7bnJSbXtEBDdm2cBRApzmoOTrGGGVEUGidZdXghnYzSF096LplHeNS35dxveRZFppw1
         dtKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fUKgGKlcoBQemjnJAVzOUKK11DxT2aeqpefRChzwlWY=;
        b=CYjCwT3xydH6NAdlOUqQZRO9IvbsdhRa5b5wxYiZVTtK40iFjXbjV/+5QO2NgCxa1Q
         4gIAfyjji2yZ0C3DYI7DppONjINwlE6zSckBEpfwCuA44v0b417o+rBBWXJUxONl1hob
         9HL7qiC89iWnPti/8QijgPBD03wPrFTXOTKAYc2fdTHa/wn7d/OufBS1XrT9O5PoywPf
         7WmjVLVpRqakATS3uP9nTyNEnQhAWcdJlgT9waLf1cazZpZDBxnKBvLbmqnPnhe9koyR
         vGxx82Zk1N2oPUGKoV2f88hRLlsBzwqd3JBwKn6AjWP39v3xDVWS97Jhwwt9LVr2K/+B
         OdUA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Oc/q+6tPybWGDAbqcf3fHRNsGKMXxFisfBrvaUGsTa2TKafAY
	BXy1fMW5Wi7NxUzNERWVwMs=
X-Google-Smtp-Source: ABdhPJw3oK3GL68WXdIhy9QFaeex6AWlHg7LaOxB9L3S3Ts9FIe26JuOJJCz6fzUt6VGhgud0kqVZg==
X-Received: by 2002:a67:f946:: with SMTP id u6mr9791478vsq.39.1623427285227;
        Fri, 11 Jun 2021 09:01:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c88e:: with SMTP id v14ls2524828vsk.0.gmail; Fri, 11 Jun
 2021 09:01:24 -0700 (PDT)
X-Received: by 2002:a67:324a:: with SMTP id y71mr10864141vsy.13.1623427284725;
        Fri, 11 Jun 2021 09:01:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623427284; cv=none;
        d=google.com; s=arc-20160816;
        b=hnQg1h0zSMHvji4IBWtrfg7G2mb/1uwfD2iB8ioE35H6uHWdUP8xhE/YpqDcF1mvf9
         HQV7dqsIG3Ub75AGZxXpDCTM0r2BpisQoWtzBDS/a2fbaAUj5eKOg+WiERBmr7hBIBfT
         /LR8EDdUVVyZYIuFGlZ0y1XMfPIu/xZ8+qnCwsk9YV5ETKVdXAbNwmdgaPLXMidywo4s
         3ZghajaGqqMo4B03C0RLSy3d66locituTdp7BJFbFQQWeWdkb7hu3wi9eDVo+YUkNONp
         e5G6QCLj/PGuARd54NEono4u7YvdCRu0aL94nHGzYV/MP1yaXgFCXlFtqpYe7fNUQeKZ
         q/Zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=SOIYfjtJwzMT4T4V+s23NqdRXciVZTkNoNnfFdsJCDY=;
        b=ivvwFoYi7KBRGt+QK5WGTEOsoBVhAS5BMydzVIHQdweNDTNXWIJiq0OviPL38DfLSC
         /OhqJavdBpD99JP6E17YEImCdrIEKF/63onyFf7nZoouZnHamd54s64KDekUijuifrRQ
         fyfq5oaeNJ8JTpem94u/lGe9CnAQeh5pkzxFexT88bHCdWwLUa2qDtExUUCdmktOGooP
         zFAmM5t5XEgZXXHTa63SeAmPt9NTRBnmqCAFEvdZKfeoo9iEVghXvGl8mJ+wK0zxNzr0
         VK7kHy3VuM4Q44+6OSrYmIQDrqqKL7jY3IjRQ/CDVcbIO4HRP9J58sYSCNfruOy2waxb
         H0PQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=A3wjERgL;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z26si617368vkp.3.2021.06.11.09.01.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Jun 2021 09:01:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id E0CDE61403;
	Fri, 11 Jun 2021 16:01:22 +0000 (UTC)
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
Subject: [PATCH rdma-next v2 13/15] RDMA: Change ops->init_port to ops->port_groups
Date: Fri, 11 Jun 2021 19:00:32 +0300
Message-Id: <114f68f3d921460eafe14cea5a80ca65d81729c3.1623427137.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1623427137.git.leonro@nvidia.com>
References: <cover.1623427137.git.leonro@nvidia.com>
MIME-Version: 1.0
X-Original-Sender: leon@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=A3wjERgL;       spf=pass
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

init_port was only being used to register sysfs attributes against the
port kobject. Now that all users are creating static attribute_group's we can
simply set the attribute_group list in the ops and the core code can just
handle it directly.

This makes all the sysfs management quite straightforward and prevents any
driver from abusing the naked port kobject in future because no driver
code can access it.

Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 drivers/infiniband/core/device.c      |  4 +--
 drivers/infiniband/core/sysfs.c       | 39 +++++++++------------------
 drivers/infiniband/hw/hfi1/hfi.h      |  3 +--
 drivers/infiniband/hw/hfi1/sysfs.c    | 12 +--------
 drivers/infiniband/hw/hfi1/verbs.c    |  2 +-
 drivers/infiniband/hw/qib/qib.h       |  4 +--
 drivers/infiniband/hw/qib/qib_sysfs.c | 20 +-------------
 drivers/infiniband/hw/qib/qib_verbs.c |  4 +--
 drivers/infiniband/sw/rdmavt/vt.c     |  2 +-
 include/rdma/ib_sysfs.h               |  4 ---
 include/rdma/ib_verbs.h               |  9 +++----
 11 files changed, 25 insertions(+), 78 deletions(-)

diff --git a/drivers/infiniband/core/device.c b/drivers/infiniband/core/device.c
index 030a4041b2e0..2cbd77933ea5 100644
--- a/drivers/infiniband/core/device.c
+++ b/drivers/infiniband/core/device.c
@@ -1703,7 +1703,7 @@ int ib_device_set_netns_put(struct sk_buff *skb,
 	 * port_cleanup infrastructure is implemented, this limitation will be
 	 * removed.
 	 */
-	if (!dev->ops.disassociate_ucontext || dev->ops.init_port ||
+	if (!dev->ops.disassociate_ucontext || dev->ops.port_groups ||
 	    ib_devices_shared_netns) {
 		ret = -EOPNOTSUPP;
 		goto ns_err;
@@ -2668,7 +2668,6 @@ void ib_set_device_ops(struct ib_device *dev, const struct ib_device_ops *ops)
 	SET_DEVICE_OP(dev_ops, get_vf_config);
 	SET_DEVICE_OP(dev_ops, get_vf_guid);
 	SET_DEVICE_OP(dev_ops, get_vf_stats);
-	SET_DEVICE_OP(dev_ops, init_port);
 	SET_DEVICE_OP(dev_ops, iw_accept);
 	SET_DEVICE_OP(dev_ops, iw_add_ref);
 	SET_DEVICE_OP(dev_ops, iw_connect);
@@ -2691,6 +2690,7 @@ void ib_set_device_ops(struct ib_device *dev, const struct ib_device_ops *ops)
 	SET_DEVICE_OP(dev_ops, modify_wq);
 	SET_DEVICE_OP(dev_ops, peek_cq);
 	SET_DEVICE_OP(dev_ops, poll_cq);
+	SET_DEVICE_OP(dev_ops, port_groups);
 	SET_DEVICE_OP(dev_ops, post_recv);
 	SET_DEVICE_OP(dev_ops, post_send);
 	SET_DEVICE_OP(dev_ops, post_srq_recv);
diff --git a/drivers/infiniband/core/sysfs.c b/drivers/infiniband/core/sysfs.c
index e550a7eb37f6..09a2e1066df0 100644
--- a/drivers/infiniband/core/sysfs.c
+++ b/drivers/infiniband/core/sysfs.c
@@ -128,22 +128,6 @@ static ssize_t port_attr_store(struct kobject *kobj,
 	return port_attr->store(p->ibdev, p->port_num, port_attr, buf, count);
 }
 
-int ib_port_sysfs_create_groups(struct ib_device *ibdev, u32 port_num,
-				const struct attribute_group **groups)
-{
-	return sysfs_create_groups(&ibdev->port_data[port_num].sysfs->kobj,
-				   groups);
-}
-EXPORT_SYMBOL_GPL(ib_port_sysfs_create_groups);
-
-void ib_port_sysfs_remove_groups(struct ib_device *ibdev, u32 port_num,
-				 const struct attribute_group **groups)
-{
-	return sysfs_remove_groups(&ibdev->port_data[port_num].sysfs->kobj,
-				   groups);
-}
-EXPORT_SYMBOL_GPL(ib_port_sysfs_remove_groups);
-
 struct ib_device *ib_port_sysfs_get_ibdev_kobj(struct kobject *kobj,
 					       u32 *port_num)
 {
@@ -1252,6 +1236,11 @@ static struct ib_port *setup_port(struct ib_core_device *coredev, int port_num,
 	ret = sysfs_create_groups(&p->kobj, p->groups_list);
 	if (ret)
 		goto err_del;
+	if (is_full_dev) {
+		ret = sysfs_create_groups(&p->kobj, device->ops.port_groups);
+		if (ret)
+			goto err_groups;
+	}
 
 	list_add_tail(&p->kobj.entry, &coredev->port_list);
 	if (device->port_data && is_full_dev)
@@ -1259,6 +1248,8 @@ static struct ib_port *setup_port(struct ib_core_device *coredev, int port_num,
 
 	return p;
 
+err_groups:
+	sysfs_remove_groups(&p->kobj, p->groups_list);
 err_del:
 	kobject_del(&p->kobj);
 err_put:
@@ -1266,12 +1257,16 @@ static struct ib_port *setup_port(struct ib_core_device *coredev, int port_num,
 	return ERR_PTR(ret);
 }
 
-static void destroy_port(struct ib_port *port)
+static void destroy_port(struct ib_core_device *coredev, struct ib_port *port)
 {
+	bool is_full_dev = &port->ibdev->coredev == coredev;
+
 	if (port->ibdev->port_data &&
 	    port->ibdev->port_data[port->port_num].sysfs == port)
 		port->ibdev->port_data[port->port_num].sysfs = NULL;
 	list_del(&port->kobj.entry);
+	if (is_full_dev)
+		sysfs_remove_groups(&port->kobj, port->ibdev->ops.port_groups);
 	sysfs_remove_groups(&port->kobj, port->groups_list);
 	kobject_del(&port->kobj);
 	kobject_put(&port->kobj);
@@ -1397,7 +1392,7 @@ void ib_free_port_attrs(struct ib_core_device *coredev)
 		struct ib_port *port = container_of(p, struct ib_port, kobj);
 
 		destroy_gid_attrs(port);
-		destroy_port(port);
+		destroy_port(coredev, port);
 	}
 
 	kobject_put(coredev->ports_kobj);
@@ -1406,7 +1401,6 @@ void ib_free_port_attrs(struct ib_core_device *coredev)
 int ib_setup_port_attrs(struct ib_core_device *coredev)
 {
 	struct ib_device *device = rdma_device_to_ibdev(&coredev->dev);
-	bool is_full_dev = &device->coredev == coredev;
 	u32 port_num;
 	int ret;
 
@@ -1432,13 +1426,6 @@ int ib_setup_port_attrs(struct ib_core_device *coredev)
 		ret = setup_gid_attrs(port, &attr);
 		if (ret)
 			goto err_put;
-
-		if (device->ops.init_port && is_full_dev) {
-			ret = device->ops.init_port(device, port_num,
-						    &port->kobj);
-			if (ret)
-				goto err_put;
-		}
 	}
 	return 0;
 
diff --git a/drivers/infiniband/hw/hfi1/hfi.h b/drivers/infiniband/hw/hfi1/hfi.h
index 4bb807c154b2..31664f43c27f 100644
--- a/drivers/infiniband/hw/hfi1/hfi.h
+++ b/drivers/infiniband/hw/hfi1/hfi.h
@@ -2184,12 +2184,11 @@ static inline bool hfi1_packet_present(struct hfi1_ctxtdata *rcd)
 
 extern const char ib_hfi1_version[];
 extern const struct attribute_group ib_hfi1_attr_group;
+extern const struct attribute_group *hfi1_attr_port_groups[];
 
 int hfi1_device_create(struct hfi1_devdata *dd);
 void hfi1_device_remove(struct hfi1_devdata *dd);
 
-int hfi1_create_port_files(struct ib_device *ibdev, u32 port_num,
-			   struct kobject *kobj);
 int hfi1_verbs_register_sysfs(struct hfi1_devdata *dd);
 void hfi1_verbs_unregister_sysfs(struct hfi1_devdata *dd);
 /* Hook for sysfs read of QSFP */
diff --git a/drivers/infiniband/hw/hfi1/sysfs.c b/drivers/infiniband/hw/hfi1/sysfs.c
index 98bb0b3aac09..acfcbedebe0d 100644
--- a/drivers/infiniband/hw/hfi1/sysfs.c
+++ b/drivers/infiniband/hw/hfi1/sysfs.c
@@ -599,7 +599,7 @@ const struct attribute_group ib_hfi1_attr_group = {
 	.attrs = hfi1_attributes,
 };
 
-static const struct attribute_group *hfi1_port_groups[] = {
+const struct attribute_group *hfi1_attr_port_groups[] = {
 	&port_cc_group,
 	&port_sc2vl_group,
 	&port_sl2sc_group,
@@ -607,12 +607,6 @@ static const struct attribute_group *hfi1_port_groups[] = {
 	NULL,
 };
 
-int hfi1_create_port_files(struct ib_device *ibdev, u32 port_num,
-			   struct kobject *kobj)
-{
-	return ib_port_sysfs_create_groups(ibdev, port_num, hfi1_port_groups);
-}
-
 struct sde_attribute {
 	struct attribute attr;
 	ssize_t (*show)(struct sdma_engine *sde, char *buf);
@@ -741,8 +735,4 @@ void hfi1_verbs_unregister_sysfs(struct hfi1_devdata *dd)
 	/* Unwind operations in hfi1_verbs_register_sysfs() */
 	for (i = 0; i < dd->num_sdma; i++)
 		kobject_put(&dd->per_sdma[i].kobj);
-
-	for (i = 0; i < dd->num_pports; i++)
-		ib_port_sysfs_remove_groups(&dd->verbs_dev.rdi.ibdev, i + 1,
-					    hfi1_port_groups);
 }
diff --git a/drivers/infiniband/hw/hfi1/verbs.c b/drivers/infiniband/hw/hfi1/verbs.c
index 85deba07a675..49c6ed267a47 100644
--- a/drivers/infiniband/hw/hfi1/verbs.c
+++ b/drivers/infiniband/hw/hfi1/verbs.c
@@ -1791,8 +1791,8 @@ static const struct ib_device_ops hfi1_dev_ops = {
 	.alloc_rdma_netdev = hfi1_vnic_alloc_rn,
 	.get_dev_fw_str = hfi1_get_dev_fw_str,
 	.get_hw_stats = get_hw_stats,
-	.init_port = hfi1_create_port_files,
 	.modify_device = modify_device,
+	.port_groups = hfi1_attr_port_groups,
 	/* keep process mad in the driver */
 	.process_mad = hfi1_process_mad,
 	.rdma_netdev_get_params = hfi1_ipoib_rn_get_params,
diff --git a/drivers/infiniband/hw/qib/qib.h b/drivers/infiniband/hw/qib/qib.h
index b8a2deb5b4d2..9363bccfc6e7 100644
--- a/drivers/infiniband/hw/qib/qib.h
+++ b/drivers/infiniband/hw/qib/qib.h
@@ -1361,13 +1361,11 @@ static inline u32 qib_get_rcvhdrtail(const struct qib_ctxtdata *rcd)
 
 extern const char ib_qib_version[];
 extern const struct attribute_group qib_attr_group;
+extern const struct attribute_group *qib_attr_port_groups[];
 
 int qib_device_create(struct qib_devdata *);
 void qib_device_remove(struct qib_devdata *);
 
-int qib_create_port_files(struct ib_device *ibdev, u32 port_num,
-			  struct kobject *kobj);
-void qib_verbs_unregister_sysfs(struct qib_devdata *);
 /* Hook for sysfs read of QSFP */
 extern int qib_qsfp_dump(struct qib_pportdata *ppd, char *buf, int len);
 
diff --git a/drivers/infiniband/hw/qib/qib_sysfs.c b/drivers/infiniband/hw/qib/qib_sysfs.c
index a1e22c498712..d57e49de6650 100644
--- a/drivers/infiniband/hw/qib/qib_sysfs.c
+++ b/drivers/infiniband/hw/qib/qib_sysfs.c
@@ -545,7 +545,7 @@ static const struct attribute_group port_diagc_group = {
 
 /* End diag_counters */
 
-static const struct attribute_group *qib_port_groups[] = {
+const struct attribute_group *qib_attr_port_groups[] = {
 	&port_linkcontrol_group,
 	&port_ccmgta_attribute_group,
 	&port_sl2vl_group,
@@ -733,21 +733,3 @@ static struct attribute *qib_attributes[] = {
 const struct attribute_group qib_attr_group = {
 	.attrs = qib_attributes,
 };
-
-int qib_create_port_files(struct ib_device *ibdev, u32 port_num,
-			  struct kobject *kobj)
-{
-	return ib_port_sysfs_create_groups(ibdev, port_num, qib_port_groups);
-}
-
-/*
- * Unregister and remove our files in /sys/class/infiniband.
- */
-void qib_verbs_unregister_sysfs(struct qib_devdata *dd)
-{
-	int i;
-
-	for (i = 0; i < dd->num_pports; i++)
-		ib_port_sysfs_remove_groups(&dd->verbs_dev.rdi.ibdev, i,
-					    qib_port_groups);
-}
diff --git a/drivers/infiniband/hw/qib/qib_verbs.c b/drivers/infiniband/hw/qib/qib_verbs.c
index d17d034ecdfd..8640a75d61d9 100644
--- a/drivers/infiniband/hw/qib/qib_verbs.c
+++ b/drivers/infiniband/hw/qib/qib_verbs.c
@@ -1483,7 +1483,7 @@ static const struct ib_device_ops qib_dev_ops = {
 	.owner = THIS_MODULE,
 	.driver_id = RDMA_DRIVER_QIB,
 
-	.init_port = qib_create_port_files,
+	.port_groups = qib_attr_port_groups,
 	.modify_device = qib_modify_device,
 	.process_mad = qib_process_mad,
 };
@@ -1644,8 +1644,6 @@ void qib_unregister_ib_device(struct qib_devdata *dd)
 {
 	struct qib_ibdev *dev = &dd->verbs_dev;
 
-	qib_verbs_unregister_sysfs(dd);
-
 	rvt_unregister_device(&dd->verbs_dev.rdi);
 
 	if (!list_empty(&dev->piowait))
diff --git a/drivers/infiniband/sw/rdmavt/vt.c b/drivers/infiniband/sw/rdmavt/vt.c
index 3749380ff193..ac17209816cd 100644
--- a/drivers/infiniband/sw/rdmavt/vt.c
+++ b/drivers/infiniband/sw/rdmavt/vt.c
@@ -418,7 +418,7 @@ static noinline int check_support(struct rvt_dev_info *rdi, int verb)
 		 * These functions are not part of verbs specifically but are
 		 * required for rdmavt to function.
 		 */
-		if ((!rdi->ibdev.ops.init_port) ||
+		if ((!rdi->ibdev.ops.port_groups) ||
 		    (!rdi->driver_f.get_pci_dev))
 			return -EINVAL;
 		break;
diff --git a/include/rdma/ib_sysfs.h b/include/rdma/ib_sysfs.h
index f869d0e4fd30..3b77cfd74d9a 100644
--- a/include/rdma/ib_sysfs.h
+++ b/include/rdma/ib_sysfs.h
@@ -31,10 +31,6 @@ struct ib_port_attribute {
 #define IB_PORT_ATTR_WO(_name)                                                 \
 	struct ib_port_attribute ib_port_attr_##_name = __ATTR_WO(_name)
 
-int ib_port_sysfs_create_groups(struct ib_device *ibdev, u32 port_num,
-				const struct attribute_group **groups);
-void ib_port_sysfs_remove_groups(struct ib_device *ibdev, u32 port_num,
-				 const struct attribute_group **groups);
 struct ib_device *ib_port_sysfs_get_ibdev_kobj(struct kobject *kobj,
 					       u32 *port_num);
 
diff --git a/include/rdma/ib_verbs.h b/include/rdma/ib_verbs.h
index 5ca1cb82a543..303471585dde 100644
--- a/include/rdma/ib_verbs.h
+++ b/include/rdma/ib_verbs.h
@@ -2300,6 +2300,8 @@ struct ib_device_ops {
 	u32 uverbs_abi_ver;
 	unsigned int uverbs_no_driver_id_binding:1;
 
+	const struct attribute_group **port_groups;
+
 	int (*post_send)(struct ib_qp *qp, const struct ib_send_wr *send_wr,
 			 const struct ib_send_wr **bad_send_wr);
 	int (*post_recv)(struct ib_qp *qp, const struct ib_recv_wr *recv_wr,
@@ -2546,12 +2548,7 @@ struct ib_device_ops {
 	 */
 	int (*get_hw_stats)(struct ib_device *device,
 			    struct rdma_hw_stats *stats, u32 port, int index);
-	/*
-	 * This function is called once for each port when a ib device is
-	 * registered.
-	 */
-	int (*init_port)(struct ib_device *device, u32 port_num,
-			 struct kobject *port_sysfs);
+
 	/**
 	 * Allows rdma drivers to add their own restrack attributes.
 	 */
-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/114f68f3d921460eafe14cea5a80ca65d81729c3.1623427137.git.leonro%40nvidia.com.
