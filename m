Return-Path: <clang-built-linux+bncBDMMLW4BXYHBBNURR2DAMGQEXXY3FOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3263E3A45E9
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 18:00:56 +0200 (CEST)
Received: by mail-oi1-x23f.google.com with SMTP id w9-20020a0568080d49b02901f3febe5739sf3065179oik.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 09:00:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623427255; cv=pass;
        d=google.com; s=arc-20160816;
        b=eE9Oh1i3NUZDUxv6IaPPwAs5Jv1H6mJ1crmkSmHHrU2Wd5soCeVss0OVk3viab+6dC
         BE2SI1paLPHZ2dy4dgrmIiyKmfjYKlpC3LHRRk/p+8PPrv0rcj59cc7T3k41O1/xn8P0
         3d/dVizbOojKl1K82dWn5+jH2Wp8T5LSwG//XN7GMkNViN8Ey29wv9rj92QR7kvCDhfN
         JBl39qP04zWgiY+GWtd7kbsCwRNNJYBF1/tbFiim5AaZqdcoGQQIC5uyDcoIprXxugvs
         ToMlGXOZCJTWeORiYon75yprLeTr3nl5ZFsdVECTeLHdn+oePYwuC1b3tPfUk1dcsuIp
         NlHQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=YpsUM9yg1oB69GL1EdRqBcVp0Ka0jJIsn3wcUFDVgmk=;
        b=gpxsSF1g+iRe6/Pv1FVEiwxl4UhAZULcJiojPCJJt8tK6AwuSas6ZNgnWzi6bLsFUk
         DYfhJaEoHnQ6/VKuRqTt5fnnHuaCpPNC/gPpPhlcXQhwmKLEBLj8YuYBhiESHxtmtUZZ
         e0dLIvAjCwYdNm+a1flwMddSeWj7UVZVamEQ/FoliYGDi3J9oS1ODFedfvVUClU+QeFW
         bhNgS5niJlRpE7bFpWy35lEv1HDs8g0rpbCCXaLEbHkznQPnWYuQCTObXaOS5yu6riui
         hQ0GlGXRytO/U8d+07ynX4YAtj+zW/DHcmOEfCoahf+h4lxUGXR5ihas1tEtE5SCM3KQ
         EE7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=O9QtVdtb;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YpsUM9yg1oB69GL1EdRqBcVp0Ka0jJIsn3wcUFDVgmk=;
        b=o2T7P9kf0lgcbdgaPbkPQfhKxkCs0W5XG/xeBtZI6X8jJmeNsXXnqK9hdgHpwAJL3U
         qoFDCheXM8IwP9qKZwz0J9m7OIQv91MwWjSNYSNnBfP2nr4JfLQK/LLAVYMCViTwif2/
         ydbWztDiTw7tOSBL37B8f3DJtVT1Mqg/C3n9i+aAYCLHJaXngvG8EqfM5WvpWsJcF3/u
         Zh16v+P27Qsd0otds4tzA8Hucf/KgOkwcMAbOGx3FCMBO8opE5bQ7n8GDpGiUudwUTLS
         fCdj32eeT962HSLutmKNnuPzHYOP5J8CYo+jeGvVeTNbTgZ/Ro2DTgpLlhMaodqQFqdO
         Vg1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YpsUM9yg1oB69GL1EdRqBcVp0Ka0jJIsn3wcUFDVgmk=;
        b=nVNpSus8ks7hQg3Wg386/t37KgLSF0wQ73aib962nv3Ry2m09MFxLdCPFoUnMVBjVF
         hhbOKNdC7itIcaVsKrwbKankrfUoIoaYALpewa7pUYnsaWerN/552ealBVrMRNBqqXEp
         SyTixhtwJr6v32n5yJDYsj/9aVRtf73OiTOarU+gfs5qbftES5QYOGZwpEF8zIvsLpHV
         LQ9VfYC1oWXqVTE0t85CrIMXfIUWs4zIwHvTa/vIB/xTMKWh6wwD6NVUUlddr3vPwr20
         iUSQQJOPTb3Ndp7xuKp0HLMI7a4xuiOcqZHbw9WFBTnaK9RA9KYw+oCx03vMy1wNfWje
         k5XQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533XTmQyZR9YnkD4Jvn+/TsfXIDdlmNesEuTJYVXT8r7ddFZHF1K
	5/TV0LZCr1gU/gliflkjfjg=
X-Google-Smtp-Source: ABdhPJzA6MDpyXuXfrwv7RufjTVwm/yf5SOYa83x8DrHay2N7E+KtPRz/wdaEX4hZAD3UWDTs0ZAWw==
X-Received: by 2002:a05:6830:108:: with SMTP id i8mr3741291otp.284.1623427255043;
        Fri, 11 Jun 2021 09:00:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5f05:: with SMTP id t5ls2980065oib.3.gmail; Fri, 11 Jun
 2021 09:00:54 -0700 (PDT)
X-Received: by 2002:aca:5cc2:: with SMTP id q185mr14393605oib.173.1623427254670;
        Fri, 11 Jun 2021 09:00:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623427254; cv=none;
        d=google.com; s=arc-20160816;
        b=Y8OOVhAPTwkejNTp2lQSZo/L74hnhYfE+RWLzQvSOMUF1DE6Rk3nyTofzidOEhYBck
         mnSVmYqQHEXMTkUu5K0kcT4KDmeHO9/hqpe2ojwEDP2oIdjpT73G5mdUzqH5deGV5GDM
         SOupJNujSik7/h4B0t2+fXnhtYs7adCrLjqBg/Ky0HQGXLNKHj3ua/6fJfMta5O3lwhz
         mKZZcJUUlPYeNyp2/0FFMZdYWi21Q9DL/CnY9BHKdzLZ1b28infVo+xysxJsdEhVRjg1
         xlOLglNU7GAzrH37TSBvarF8TUtB6SV+mPtmSEi/7bd1hwfjhLI0pLZ/3ms+x9Z8ornO
         yP0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=wMPeaZRIcjefUPiHFFbea0swNCghkYbby9PUMsyDDTE=;
        b=lTjKVCkZMccmUbw/V9tWMtcsoAV2yfJ/+V5Hwr0NUbYhE+LVMUCY6NuWCYiQTt7rR9
         3pnIFhCV1jrW35JZw6i1puaL7380uGq6dSkSFVu1pwptSSbC6oJJl881RR/tuR1UIl3k
         q+ehh8kayUk6bEaiE4BA4Rn/ITCLjmi+P1IVaxj4XVjhGBmZzB505HP1x8FQ/ELOi/Ej
         h/LL46X952MhiawLI0TMt+gO4dFPQKLDkiA0OtW8O1K4v1/ZNgcsmapi75iWtT3pm3ps
         1ZPF7SvBODJdrU1JuWRnwuIOEjuJkdPEtqdR90R4DSC9frDcQEEAXvhbbM2fbT0LyuNH
         cleQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=O9QtVdtb;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f20si714242oig.3.2021.06.11.09.00.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Jun 2021 09:00:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 28666613EA;
	Fri, 11 Jun 2021 16:00:53 +0000 (UTC)
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
Subject: [PATCH rdma-next v2 02/15] RDMA/core: Replace the ib_port_data hw_stats pointers with a ib_port pointer
Date: Fri, 11 Jun 2021 19:00:21 +0300
Message-Id: <f90551dfd296cde1cb507bbef27cca9891d19871.1623427137.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1623427137.git.leonro@nvidia.com>
References: <cover.1623427137.git.leonro@nvidia.com>
MIME-Version: 1.0
X-Original-Sender: leon@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=O9QtVdtb;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/f90551dfd296cde1cb507bbef27cca9891d19871.1623427137.git.leonro%40nvidia.com.
