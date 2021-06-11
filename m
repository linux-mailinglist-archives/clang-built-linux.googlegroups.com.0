Return-Path: <clang-built-linux+bncBDMMLW4BXYHBBTURR2DAMGQEV3PSHDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id 91EF93A45FE
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 18:01:19 +0200 (CEST)
Received: by mail-qv1-xf38.google.com with SMTP id h10-20020a0cab0a0000b029020282c64ecfsf22752357qvb.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 09:01:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623427278; cv=pass;
        d=google.com; s=arc-20160816;
        b=DBR5BWYKtKt8li6Hix8dS6ty/D2V83dqFzlEtY/JNZJf8L0zan9ywKFEq7R+wfa02s
         pp+khvcbuy9yLb3FioXWy1QgYfR8qmqgzWz0dXtdssA2wTCtA+XcUBU9yEzipoMckX9Q
         Rw4F7SNLQz75p6/5xDDM/V60vuruzFnu8+TW5ju10NBmHux8x8MAsHXyZCMpZ9WJpnxc
         +iON0tHCX4VJGdBrey/65fsdnjRhXOHiBxW8HtferC7d+tc4/bzJZ4TNeJoa042fqwob
         MqJbNEsujnIN7MBgKr7YHBXdF7Bzd3L6qVBkl/vaoyu9bK4WQ4e8w30nRzjJ/7xTYUxs
         P5LQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=XjUnw7mpRfnDS31hIQKN79lEySNa/GguhiJ+ptleKYE=;
        b=k3f8BprceeMDBMgNKlGTwXIITP/SAfZn9Osau2axzSH5ImvrlTfNgEoHEoAokjFuP6
         KWBeU8nrrjJHcYZmS4vhfsVnJUnPhixeSEEHlYdAIFygq95ZWy2bEI9jCSRujYUUhF6N
         ps4mCVoDR8XyswIWbOUoMw8FPDA8SnT+Hjyw0sMRoHMxLVOTUO35obuPiNygrl79MrdY
         elNtsv7wznoMSZqGJOxuQ9FFhu/n5hJTdjLvgazDYLM35PGRJwnIMbhLk9f+dJ/VPgri
         QDFwL2mYGxxKF5THeWIwXmsgqd56EKcTA58h4IZRykoDa6GrFEm/pVIJXUBxpAE2inS1
         K5jQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=gU1ScD0v;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XjUnw7mpRfnDS31hIQKN79lEySNa/GguhiJ+ptleKYE=;
        b=QueiY6LSuy/FSXxPRIM1ferkFiZ6effuhfMzy2UeAQcTbNYlwLmJFfvg+m/8jijygm
         ns8PNRM+rL8Nm4LmjJQsAP+z1U1OH+R9S68a0oibWYOTz3TmD3tHh1VduqwEqS2CSU/G
         l3uKsziOPb8X4tUoh2ayjUHNm471WGH+PJORXq5WlXG33EFL/4n3y0le8ejFzQjgmZXM
         64LACP9pY7dXf5MFcsQRJlnV/hZxiczFb9M2c5iNvW0ECiWlZl45TcVAissUwAxsDhU2
         NHjHyYCeJMCyMaSP+9q5Wz0CM6NCaX/UbruFBg8wG04zBQBa0D8C5v/nGDmOhgdEVIJq
         vHIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XjUnw7mpRfnDS31hIQKN79lEySNa/GguhiJ+ptleKYE=;
        b=dWqNj1nV25jsSDT5yNsR2c5SOfvC76Tr0Na1YWLKzdAnbafPmDTgE9+5HRAkYQdlIs
         I/MeuvmrtEZZgewOxHZ5PelKK0iDa5dZF1EvuBkMaB79c+DigGYsId1PPVZ67cFuz/dn
         LK/34cledv2oxUC66nDIqqUvCLC++XdEVS/Io1ESJJJDcgS590Ioirz7Eser+kHbREO5
         ZqRKbgzseMhb2t0JvEnwIZj3+GBiPwfAPRhe88ymZ98KaALBNw+oLKcL0aoZsFXNnf11
         rba3fLazkULjD4zJuj57ETUeEhl21ViDy4yr91MYlQDJogt20CGeklmBXV+/C8ttRcLA
         vlgg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530pimCoqrOwY90X2UriYo0ZpO1WcbWmNFi5w33z0EfJxMO5GOGX
	9AHiBl2Cq/uF14UigQx/wpM=
X-Google-Smtp-Source: ABdhPJyufLkpvxIfGWCOW9iiqnNM/6aa2SMcybeXvfXzY2dlCi+t5BR66rnEytZmyzh5AWxaZpAqFQ==
X-Received: by 2002:ac8:7399:: with SMTP id t25mr4464152qtp.228.1623427278526;
        Fri, 11 Jun 2021 09:01:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:af04:: with SMTP id y4ls5692143qke.8.gmail; Fri, 11 Jun
 2021 09:01:18 -0700 (PDT)
X-Received: by 2002:a37:6609:: with SMTP id a9mr4537857qkc.459.1623427278012;
        Fri, 11 Jun 2021 09:01:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623427278; cv=none;
        d=google.com; s=arc-20160816;
        b=nKG+r7uf9++uc8o8fmImzNf0nE0f2S0L8fG46vQA4dfZfglHRQIwQxXsv16gVyiHXP
         1olxolmtw7Ifz5pb4V65XOxxRpWqYN4ucQ8Ru/daL7QdYfKI2HmVUQgu9/wJ9fdicf9T
         J4QS6O50Np1Dvwcn59dafYKbL3CseNDyjzZpejH5jRhvwPIQcpKW2yzlHswuajqVhLBl
         e9iFNmo6vUPannuVzt1f56R5/9ZPiYgYxqFt5dJg+2MT3Xdqw/+hzzPIIZiKlIwX5sMd
         L+R/qOooszctE9bkNURNjnefZaDO19gtTwhGMehXTMWc+e7Bg7Bd5ZmPWAdgPYpSp0xE
         p4fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=rMtYi6/bUI4M2j5F0Jp4NXnuHNX5ymiUB7UvNd3teE8=;
        b=yPaf6vVO22y0PhgVE4uzYTK504Lh9i/1ErknYNNugZ4OVzotyK/7aHzBxKsVUzNHa8
         7XvUoCYA32AW9/FZwvMbIGloDZTDL9JPU2Yghh/OcA65GxGAdoGRiVVe3fM6/ki78V5a
         vEB3WevV1P84JNenG0HRGVfFMeNp8eA4Y83LKemW1152MPpS450YqbSf5kmkKYhIKqSl
         w/ZuBGCd6VXbQREVkGBrEaifyrYc0AEinKJtaNLtXKnyZRmRvNNZoaa11Fi40HLEEdlU
         q7VMzgMofZ4WfrWxgpRO8og/EFivpnKAjPco2mukZ4S1pep+VdGz8Ifge5CprjhHKCqf
         Jq5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=gU1ScD0v;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m9si828318qtn.5.2021.06.11.09.01.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Jun 2021 09:01:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id CFF11613E3;
	Fri, 11 Jun 2021 16:01:15 +0000 (UTC)
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
Subject: [PATCH rdma-next v2 12/15] RDMA/hfi1: Use attributes for the port sysfs
Date: Fri, 11 Jun 2021 19:00:31 +0300
Message-Id: <cbe0ccb6175dd22274359b6ad803a37435a70e91.1623427137.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1623427137.git.leonro@nvidia.com>
References: <cover.1623427137.git.leonro@nvidia.com>
MIME-Version: 1.0
X-Original-Sender: leon@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=gU1ScD0v;       spf=pass
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

hfi1 should not be creating a mess of kobjects to attach to the port
kobject - this is all attributes. The proper API is to create an
attribute_group list and create it against the port's kobject.

Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 drivers/infiniband/hw/hfi1/hfi.h   |   4 -
 drivers/infiniband/hw/hfi1/sysfs.c | 530 +++++++++++------------------
 2 files changed, 194 insertions(+), 340 deletions(-)

diff --git a/drivers/infiniband/hw/hfi1/hfi.h b/drivers/infiniband/hw/hfi1/hfi.h
index 9e020bb6f405..4bb807c154b2 100644
--- a/drivers/infiniband/hw/hfi1/hfi.h
+++ b/drivers/infiniband/hw/hfi1/hfi.h
@@ -772,10 +772,6 @@ struct hfi1_pportdata {
 	struct hfi1_ibport ibport_data;
 
 	struct hfi1_devdata *dd;
-	struct kobject pport_cc_kobj;
-	struct kobject sc2vl_kobj;
-	struct kobject sl2sc_kobj;
-	struct kobject vl2mtu_kobj;
 
 	/* PHY support */
 	struct qsfp_data qsfp_info;
diff --git a/drivers/infiniband/hw/hfi1/sysfs.c b/drivers/infiniband/hw/hfi1/sysfs.c
index eaf441ece25e..98bb0b3aac09 100644
--- a/drivers/infiniband/hw/hfi1/sysfs.c
+++ b/drivers/infiniband/hw/hfi1/sysfs.c
@@ -45,11 +45,21 @@
  *
  */
 #include <linux/ctype.h>
+#include <rdma/ib_sysfs.h>
 
 #include "hfi.h"
 #include "mad.h"
 #include "trace.h"
 
+static struct hfi1_pportdata *hfi1_get_pportdata_kobj(struct kobject *kobj)
+{
+	u32 port_num;
+	struct ib_device *ibdev = ib_port_sysfs_get_ibdev_kobj(kobj, &port_num);
+	struct hfi1_devdata *dd = dd_from_ibdev(ibdev);
+
+	return &dd->pport[port_num - 1];
+}
+
 /*
  * Start of per-port congestion control structures and support code
  */
@@ -57,13 +67,12 @@
 /*
  * Congestion control table size followed by table entries
  */
-static ssize_t read_cc_table_bin(struct file *filp, struct kobject *kobj,
-				 struct bin_attribute *bin_attr,
-				 char *buf, loff_t pos, size_t count)
+static ssize_t cc_table_bin_read(struct file *filp, struct kobject *kobj,
+				 struct bin_attribute *bin_attr, char *buf,
+				 loff_t pos, size_t count)
 {
 	int ret;
-	struct hfi1_pportdata *ppd =
-		container_of(kobj, struct hfi1_pportdata, pport_cc_kobj);
+	struct hfi1_pportdata *ppd = hfi1_get_pportdata_kobj(kobj);
 	struct cc_state *cc_state;
 
 	ret = ppd->total_cct_entry * sizeof(struct ib_cc_table_entry_shadow)
@@ -89,30 +98,19 @@ static ssize_t read_cc_table_bin(struct file *filp, struct kobject *kobj,
 
 	return count;
 }
-
-static void port_release(struct kobject *kobj)
-{
-	/* nothing to do since memory is freed by hfi1_free_devdata() */
-}
-
-static const struct bin_attribute cc_table_bin_attr = {
-	.attr = {.name = "cc_table_bin", .mode = 0444},
-	.read = read_cc_table_bin,
-	.size = PAGE_SIZE,
-};
+static BIN_ATTR_RO(cc_table_bin, PAGE_SIZE);
 
 /*
  * Congestion settings: port control, control map and an array of 16
  * entries for the congestion entries - increase, timer, event log
  * trigger threshold and the minimum injection rate delay.
  */
-static ssize_t read_cc_setting_bin(struct file *filp, struct kobject *kobj,
+static ssize_t cc_setting_bin_read(struct file *filp, struct kobject *kobj,
 				   struct bin_attribute *bin_attr,
 				   char *buf, loff_t pos, size_t count)
 {
+	struct hfi1_pportdata *ppd = hfi1_get_pportdata_kobj(kobj);
 	int ret;
-	struct hfi1_pportdata *ppd =
-		container_of(kobj, struct hfi1_pportdata, pport_cc_kobj);
 	struct cc_state *cc_state;
 
 	ret = sizeof(struct opa_congestion_setting_attr_shadow);
@@ -136,27 +134,30 @@ static ssize_t read_cc_setting_bin(struct file *filp, struct kobject *kobj,
 
 	return count;
 }
+static BIN_ATTR_RO(cc_setting_bin, PAGE_SIZE);
 
-static const struct bin_attribute cc_setting_bin_attr = {
-	.attr = {.name = "cc_settings_bin", .mode = 0444},
-	.read = read_cc_setting_bin,
-	.size = PAGE_SIZE,
-};
-
-struct hfi1_port_attr {
-	struct attribute attr;
-	ssize_t	(*show)(struct hfi1_pportdata *, char *);
-	ssize_t	(*store)(struct hfi1_pportdata *, const char *, size_t);
+static struct bin_attribute *port_cc_bin_attributes[] = {
+	&bin_attr_cc_setting_bin,
+	&bin_attr_cc_table_bin,
+	NULL
 };
 
-static ssize_t cc_prescan_show(struct hfi1_pportdata *ppd, char *buf)
+static ssize_t cc_prescan_show(struct ib_device *ibdev, u32 port_num,
+			       struct ib_port_attribute *attr, char *buf)
 {
+	struct hfi1_devdata *dd = dd_from_ibdev(ibdev);
+	struct hfi1_pportdata *ppd = &dd->pport[port_num - 1];
+
 	return sysfs_emit(buf, "%s\n", ppd->cc_prescan ? "on" : "off");
 }
 
-static ssize_t cc_prescan_store(struct hfi1_pportdata *ppd, const char *buf,
+static ssize_t cc_prescan_store(struct ib_device *ibdev, u32 port_num,
+				struct ib_port_attribute *attr, const char *buf,
 				size_t count)
 {
+	struct hfi1_devdata *dd = dd_from_ibdev(ibdev);
+	struct hfi1_pportdata *ppd = &dd->pport[port_num - 1];
+
 	if (!memcmp(buf, "on", 2))
 		ppd->cc_prescan = true;
 	else if (!memcmp(buf, "off", 3))
@@ -164,60 +165,41 @@ static ssize_t cc_prescan_store(struct hfi1_pportdata *ppd, const char *buf,
 
 	return count;
 }
+static IB_PORT_ATTR_ADMIN_RW(cc_prescan);
 
-static struct hfi1_port_attr cc_prescan_attr =
-		__ATTR(cc_prescan, 0600, cc_prescan_show, cc_prescan_store);
-
-static ssize_t cc_attr_show(struct kobject *kobj, struct attribute *attr,
-			    char *buf)
-{
-	struct hfi1_port_attr *port_attr =
-		container_of(attr, struct hfi1_port_attr, attr);
-	struct hfi1_pportdata *ppd =
-		container_of(kobj, struct hfi1_pportdata, pport_cc_kobj);
-
-	return port_attr->show(ppd, buf);
-}
-
-static ssize_t cc_attr_store(struct kobject *kobj, struct attribute *attr,
-			     const char *buf, size_t count)
-{
-	struct hfi1_port_attr *port_attr =
-		container_of(attr, struct hfi1_port_attr, attr);
-	struct hfi1_pportdata *ppd =
-		container_of(kobj, struct hfi1_pportdata, pport_cc_kobj);
-
-	return port_attr->store(ppd, buf, count);
-}
-
-static const struct sysfs_ops port_cc_sysfs_ops = {
-	.show = cc_attr_show,
-	.store = cc_attr_store
-};
-
-static struct attribute *port_cc_default_attributes[] = {
-	&cc_prescan_attr.attr,
+static struct attribute *port_cc_attributes[] = {
+	&ib_port_attr_cc_prescan.attr,
 	NULL
 };
 
-static struct kobj_type port_cc_ktype = {
-	.release = port_release,
-	.sysfs_ops = &port_cc_sysfs_ops,
-	.default_attrs = port_cc_default_attributes
+static const struct attribute_group port_cc_group = {
+	.name = "CCMgtA",
+	.attrs = port_cc_attributes,
+	.bin_attrs = port_cc_bin_attributes,
 };
 
 /* Start sc2vl */
-#define HFI1_SC2VL_ATTR(N)				    \
-	static struct hfi1_sc2vl_attr hfi1_sc2vl_attr_##N = { \
-		.attr = { .name = __stringify(N), .mode = 0444 }, \
-		.sc = N \
-	}
-
 struct hfi1_sc2vl_attr {
-	struct attribute attr;
+	struct ib_port_attribute attr;
 	int sc;
 };
 
+static ssize_t sc2vl_attr_show(struct ib_device *ibdev, u32 port_num,
+			       struct ib_port_attribute *attr, char *buf)
+{
+	struct hfi1_sc2vl_attr *sattr =
+		container_of(attr, struct hfi1_sc2vl_attr, attr);
+	struct hfi1_devdata *dd = dd_from_ibdev(ibdev);
+
+	return sysfs_emit(buf, "%u\n", *((u8 *)dd->sc2vl + sattr->sc));
+}
+
+#define HFI1_SC2VL_ATTR(N)                                                     \
+	static struct hfi1_sc2vl_attr hfi1_sc2vl_attr_##N = {                  \
+		.attr = __ATTR(N, 0444, sc2vl_attr_show, NULL),                \
+		.sc = N,                                                       \
+	}
+
 HFI1_SC2VL_ATTR(0);
 HFI1_SC2VL_ATTR(1);
 HFI1_SC2VL_ATTR(2);
@@ -251,78 +233,70 @@ HFI1_SC2VL_ATTR(29);
 HFI1_SC2VL_ATTR(30);
 HFI1_SC2VL_ATTR(31);
 
-static struct attribute *sc2vl_default_attributes[] = {
-	&hfi1_sc2vl_attr_0.attr,
-	&hfi1_sc2vl_attr_1.attr,
-	&hfi1_sc2vl_attr_2.attr,
-	&hfi1_sc2vl_attr_3.attr,
-	&hfi1_sc2vl_attr_4.attr,
-	&hfi1_sc2vl_attr_5.attr,
-	&hfi1_sc2vl_attr_6.attr,
-	&hfi1_sc2vl_attr_7.attr,
-	&hfi1_sc2vl_attr_8.attr,
-	&hfi1_sc2vl_attr_9.attr,
-	&hfi1_sc2vl_attr_10.attr,
-	&hfi1_sc2vl_attr_11.attr,
-	&hfi1_sc2vl_attr_12.attr,
-	&hfi1_sc2vl_attr_13.attr,
-	&hfi1_sc2vl_attr_14.attr,
-	&hfi1_sc2vl_attr_15.attr,
-	&hfi1_sc2vl_attr_16.attr,
-	&hfi1_sc2vl_attr_17.attr,
-	&hfi1_sc2vl_attr_18.attr,
-	&hfi1_sc2vl_attr_19.attr,
-	&hfi1_sc2vl_attr_20.attr,
-	&hfi1_sc2vl_attr_21.attr,
-	&hfi1_sc2vl_attr_22.attr,
-	&hfi1_sc2vl_attr_23.attr,
-	&hfi1_sc2vl_attr_24.attr,
-	&hfi1_sc2vl_attr_25.attr,
-	&hfi1_sc2vl_attr_26.attr,
-	&hfi1_sc2vl_attr_27.attr,
-	&hfi1_sc2vl_attr_28.attr,
-	&hfi1_sc2vl_attr_29.attr,
-	&hfi1_sc2vl_attr_30.attr,
-	&hfi1_sc2vl_attr_31.attr,
+static struct attribute *port_sc2vl_attributes[] = {
+	&hfi1_sc2vl_attr_0.attr.attr,
+	&hfi1_sc2vl_attr_1.attr.attr,
+	&hfi1_sc2vl_attr_2.attr.attr,
+	&hfi1_sc2vl_attr_3.attr.attr,
+	&hfi1_sc2vl_attr_4.attr.attr,
+	&hfi1_sc2vl_attr_5.attr.attr,
+	&hfi1_sc2vl_attr_6.attr.attr,
+	&hfi1_sc2vl_attr_7.attr.attr,
+	&hfi1_sc2vl_attr_8.attr.attr,
+	&hfi1_sc2vl_attr_9.attr.attr,
+	&hfi1_sc2vl_attr_10.attr.attr,
+	&hfi1_sc2vl_attr_11.attr.attr,
+	&hfi1_sc2vl_attr_12.attr.attr,
+	&hfi1_sc2vl_attr_13.attr.attr,
+	&hfi1_sc2vl_attr_14.attr.attr,
+	&hfi1_sc2vl_attr_15.attr.attr,
+	&hfi1_sc2vl_attr_16.attr.attr,
+	&hfi1_sc2vl_attr_17.attr.attr,
+	&hfi1_sc2vl_attr_18.attr.attr,
+	&hfi1_sc2vl_attr_19.attr.attr,
+	&hfi1_sc2vl_attr_20.attr.attr,
+	&hfi1_sc2vl_attr_21.attr.attr,
+	&hfi1_sc2vl_attr_22.attr.attr,
+	&hfi1_sc2vl_attr_23.attr.attr,
+	&hfi1_sc2vl_attr_24.attr.attr,
+	&hfi1_sc2vl_attr_25.attr.attr,
+	&hfi1_sc2vl_attr_26.attr.attr,
+	&hfi1_sc2vl_attr_27.attr.attr,
+	&hfi1_sc2vl_attr_28.attr.attr,
+	&hfi1_sc2vl_attr_29.attr.attr,
+	&hfi1_sc2vl_attr_30.attr.attr,
+	&hfi1_sc2vl_attr_31.attr.attr,
 	NULL
 };
 
-static ssize_t sc2vl_attr_show(struct kobject *kobj, struct attribute *attr,
-			       char *buf)
-{
-	struct hfi1_sc2vl_attr *sattr =
-		container_of(attr, struct hfi1_sc2vl_attr, attr);
-	struct hfi1_pportdata *ppd =
-		container_of(kobj, struct hfi1_pportdata, sc2vl_kobj);
-	struct hfi1_devdata *dd = ppd->dd;
-
-	return sysfs_emit(buf, "%u\n", *((u8 *)dd->sc2vl + sattr->sc));
-}
-
-static const struct sysfs_ops hfi1_sc2vl_ops = {
-	.show = sc2vl_attr_show,
+static const struct attribute_group port_sc2vl_group = {
+	.name = "sc2vl",
+	.attrs = port_sc2vl_attributes,
 };
-
-static struct kobj_type hfi1_sc2vl_ktype = {
-	.release = port_release,
-	.sysfs_ops = &hfi1_sc2vl_ops,
-	.default_attrs = sc2vl_default_attributes
-};
-
 /* End sc2vl */
 
 /* Start sl2sc */
-#define HFI1_SL2SC_ATTR(N)				    \
-	static struct hfi1_sl2sc_attr hfi1_sl2sc_attr_##N = {	  \
-		.attr = { .name = __stringify(N), .mode = 0444 }, \
-		.sl = N						  \
-	}
-
 struct hfi1_sl2sc_attr {
-	struct attribute attr;
+	struct ib_port_attribute attr;
 	int sl;
 };
 
+static ssize_t sl2sc_attr_show(struct ib_device *ibdev, u32 port_num,
+			       struct ib_port_attribute *attr, char *buf)
+{
+	struct hfi1_sl2sc_attr *sattr =
+		container_of(attr, struct hfi1_sl2sc_attr, attr);
+	struct hfi1_devdata *dd = dd_from_ibdev(ibdev);
+	struct hfi1_ibport *ibp = &dd->pport[port_num - 1].ibport_data;
+
+	return sysfs_emit(buf, "%u\n", ibp->sl_to_sc[sattr->sl]);
+}
+
+#define HFI1_SL2SC_ATTR(N)                                                     \
+	static struct hfi1_sl2sc_attr hfi1_sl2sc_attr_##N = {                  \
+		.attr = __ATTR(N, 0444, sl2sc_attr_show, NULL), .sl = N        \
+	}
+
 HFI1_SL2SC_ATTR(0);
 HFI1_SL2SC_ATTR(1);
 HFI1_SL2SC_ATTR(2);
@@ -356,79 +330,72 @@ HFI1_SL2SC_ATTR(29);
 HFI1_SL2SC_ATTR(30);
 HFI1_SL2SC_ATTR(31);
 
-static struct attribute *sl2sc_default_attributes[] = {
-	&hfi1_sl2sc_attr_0.attr,
-	&hfi1_sl2sc_attr_1.attr,
-	&hfi1_sl2sc_attr_2.attr,
-	&hfi1_sl2sc_attr_3.attr,
-	&hfi1_sl2sc_attr_4.attr,
-	&hfi1_sl2sc_attr_5.attr,
-	&hfi1_sl2sc_attr_6.attr,
-	&hfi1_sl2sc_attr_7.attr,
-	&hfi1_sl2sc_attr_8.attr,
-	&hfi1_sl2sc_attr_9.attr,
-	&hfi1_sl2sc_attr_10.attr,
-	&hfi1_sl2sc_attr_11.attr,
-	&hfi1_sl2sc_attr_12.attr,
-	&hfi1_sl2sc_attr_13.attr,
-	&hfi1_sl2sc_attr_14.attr,
-	&hfi1_sl2sc_attr_15.attr,
-	&hfi1_sl2sc_attr_16.attr,
-	&hfi1_sl2sc_attr_17.attr,
-	&hfi1_sl2sc_attr_18.attr,
-	&hfi1_sl2sc_attr_19.attr,
-	&hfi1_sl2sc_attr_20.attr,
-	&hfi1_sl2sc_attr_21.attr,
-	&hfi1_sl2sc_attr_22.attr,
-	&hfi1_sl2sc_attr_23.attr,
-	&hfi1_sl2sc_attr_24.attr,
-	&hfi1_sl2sc_attr_25.attr,
-	&hfi1_sl2sc_attr_26.attr,
-	&hfi1_sl2sc_attr_27.attr,
-	&hfi1_sl2sc_attr_28.attr,
-	&hfi1_sl2sc_attr_29.attr,
-	&hfi1_sl2sc_attr_30.attr,
-	&hfi1_sl2sc_attr_31.attr,
+static struct attribute *port_sl2sc_attributes[] = {
+	&hfi1_sl2sc_attr_0.attr.attr,
+	&hfi1_sl2sc_attr_1.attr.attr,
+	&hfi1_sl2sc_attr_2.attr.attr,
+	&hfi1_sl2sc_attr_3.attr.attr,
+	&hfi1_sl2sc_attr_4.attr.attr,
+	&hfi1_sl2sc_attr_5.attr.attr,
+	&hfi1_sl2sc_attr_6.attr.attr,
+	&hfi1_sl2sc_attr_7.attr.attr,
+	&hfi1_sl2sc_attr_8.attr.attr,
+	&hfi1_sl2sc_attr_9.attr.attr,
+	&hfi1_sl2sc_attr_10.attr.attr,
+	&hfi1_sl2sc_attr_11.attr.attr,
+	&hfi1_sl2sc_attr_12.attr.attr,
+	&hfi1_sl2sc_attr_13.attr.attr,
+	&hfi1_sl2sc_attr_14.attr.attr,
+	&hfi1_sl2sc_attr_15.attr.attr,
+	&hfi1_sl2sc_attr_16.attr.attr,
+	&hfi1_sl2sc_attr_17.attr.attr,
+	&hfi1_sl2sc_attr_18.attr.attr,
+	&hfi1_sl2sc_attr_19.attr.attr,
+	&hfi1_sl2sc_attr_20.attr.attr,
+	&hfi1_sl2sc_attr_21.attr.attr,
+	&hfi1_sl2sc_attr_22.attr.attr,
+	&hfi1_sl2sc_attr_23.attr.attr,
+	&hfi1_sl2sc_attr_24.attr.attr,
+	&hfi1_sl2sc_attr_25.attr.attr,
+	&hfi1_sl2sc_attr_26.attr.attr,
+	&hfi1_sl2sc_attr_27.attr.attr,
+	&hfi1_sl2sc_attr_28.attr.attr,
+	&hfi1_sl2sc_attr_29.attr.attr,
+	&hfi1_sl2sc_attr_30.attr.attr,
+	&hfi1_sl2sc_attr_31.attr.attr,
 	NULL
 };
 
-static ssize_t sl2sc_attr_show(struct kobject *kobj, struct attribute *attr,
-			       char *buf)
-{
-	struct hfi1_sl2sc_attr *sattr =
-		container_of(attr, struct hfi1_sl2sc_attr, attr);
-	struct hfi1_pportdata *ppd =
-		container_of(kobj, struct hfi1_pportdata, sl2sc_kobj);
-	struct hfi1_ibport *ibp = &ppd->ibport_data;
-
-	return sysfs_emit(buf, "%u\n", ibp->sl_to_sc[sattr->sl]);
-}
-
-static const struct sysfs_ops hfi1_sl2sc_ops = {
-	.show = sl2sc_attr_show,
-};
-
-static struct kobj_type hfi1_sl2sc_ktype = {
-	.release = port_release,
-	.sysfs_ops = &hfi1_sl2sc_ops,
-	.default_attrs = sl2sc_default_attributes
+static const struct attribute_group port_sl2sc_group = {
+	.name = "sl2sc",
+	.attrs = port_sl2sc_attributes,
 };
 
 /* End sl2sc */
 
 /* Start vl2mtu */
 
-#define HFI1_VL2MTU_ATTR(N) \
-	static struct hfi1_vl2mtu_attr hfi1_vl2mtu_attr_##N = { \
-		.attr = { .name = __stringify(N), .mode = 0444 }, \
-		.vl = N						  \
-	}
-
 struct hfi1_vl2mtu_attr {
-	struct attribute attr;
+	struct ib_port_attribute attr;
 	int vl;
 };
 
+static ssize_t vl2mtu_attr_show(struct ib_device *ibdev, u32 port_num,
+				struct ib_port_attribute *attr, char *buf)
+{
+	struct hfi1_vl2mtu_attr *vlattr =
+		container_of(attr, struct hfi1_vl2mtu_attr, attr);
+	struct hfi1_devdata *dd = dd_from_ibdev(ibdev);
+
+	return sysfs_emit(buf, "%u\n", dd->vld[vlattr->vl].mtu);
+}
+
+#define HFI1_VL2MTU_ATTR(N)                                                    \
+	static struct hfi1_vl2mtu_attr hfi1_vl2mtu_attr_##N = {                \
+		.attr = __ATTR(N, 0444, vl2mtu_attr_show, NULL),               \
+		.vl = N,                                                       \
+	}
+
 HFI1_VL2MTU_ATTR(0);
 HFI1_VL2MTU_ATTR(1);
 HFI1_VL2MTU_ATTR(2);
@@ -446,46 +413,29 @@ HFI1_VL2MTU_ATTR(13);
 HFI1_VL2MTU_ATTR(14);
 HFI1_VL2MTU_ATTR(15);
 
-static struct attribute *vl2mtu_default_attributes[] = {
-	&hfi1_vl2mtu_attr_0.attr,
-	&hfi1_vl2mtu_attr_1.attr,
-	&hfi1_vl2mtu_attr_2.attr,
-	&hfi1_vl2mtu_attr_3.attr,
-	&hfi1_vl2mtu_attr_4.attr,
-	&hfi1_vl2mtu_attr_5.attr,
-	&hfi1_vl2mtu_attr_6.attr,
-	&hfi1_vl2mtu_attr_7.attr,
-	&hfi1_vl2mtu_attr_8.attr,
-	&hfi1_vl2mtu_attr_9.attr,
-	&hfi1_vl2mtu_attr_10.attr,
-	&hfi1_vl2mtu_attr_11.attr,
-	&hfi1_vl2mtu_attr_12.attr,
-	&hfi1_vl2mtu_attr_13.attr,
-	&hfi1_vl2mtu_attr_14.attr,
-	&hfi1_vl2mtu_attr_15.attr,
+static struct attribute *port_vl2mtu_attributes[] = {
+	&hfi1_vl2mtu_attr_0.attr.attr,
+	&hfi1_vl2mtu_attr_1.attr.attr,
+	&hfi1_vl2mtu_attr_2.attr.attr,
+	&hfi1_vl2mtu_attr_3.attr.attr,
+	&hfi1_vl2mtu_attr_4.attr.attr,
+	&hfi1_vl2mtu_attr_5.attr.attr,
+	&hfi1_vl2mtu_attr_6.attr.attr,
+	&hfi1_vl2mtu_attr_7.attr.attr,
+	&hfi1_vl2mtu_attr_8.attr.attr,
+	&hfi1_vl2mtu_attr_9.attr.attr,
+	&hfi1_vl2mtu_attr_10.attr.attr,
+	&hfi1_vl2mtu_attr_11.attr.attr,
+	&hfi1_vl2mtu_attr_12.attr.attr,
+	&hfi1_vl2mtu_attr_13.attr.attr,
+	&hfi1_vl2mtu_attr_14.attr.attr,
+	&hfi1_vl2mtu_attr_15.attr.attr,
 	NULL
 };
 
-static ssize_t vl2mtu_attr_show(struct kobject *kobj, struct attribute *attr,
-				char *buf)
-{
-	struct hfi1_vl2mtu_attr *vlattr =
-		container_of(attr, struct hfi1_vl2mtu_attr, attr);
-	struct hfi1_pportdata *ppd =
-		container_of(kobj, struct hfi1_pportdata, vl2mtu_kobj);
-	struct hfi1_devdata *dd = ppd->dd;
-
-	return sysfs_emit(buf, "%u\n", dd->vld[vlattr->vl].mtu);
-}
-
-static const struct sysfs_ops hfi1_vl2mtu_ops = {
-	.show = vl2mtu_attr_show,
-};
-
-static struct kobj_type hfi1_vl2mtu_ktype = {
-	.release = port_release,
-	.sysfs_ops = &hfi1_vl2mtu_ops,
-	.default_attrs = vl2mtu_default_attributes
+static const struct attribute_group port_vl2mtu_group = {
+	.name = "vl2mtu",
+	.attrs = port_vl2mtu_attributes,
 };
 
 /* end of per-port file structures and support code */
@@ -649,100 +599,18 @@ const struct attribute_group ib_hfi1_attr_group = {
 	.attrs = hfi1_attributes,
 };
 
+static const struct attribute_group *hfi1_port_groups[] = {
+	&port_cc_group,
+	&port_sc2vl_group,
+	&port_sl2sc_group,
+	&port_vl2mtu_group,
+	NULL,
+};
+
 int hfi1_create_port_files(struct ib_device *ibdev, u32 port_num,
 			   struct kobject *kobj)
 {
-	struct hfi1_pportdata *ppd;
-	struct hfi1_devdata *dd = dd_from_ibdev(ibdev);
-	int ret;
-
-	if (!port_num || port_num > dd->num_pports) {
-		dd_dev_err(dd,
-			   "Skipping infiniband class with invalid port %u\n",
-			   port_num);
-		return -ENODEV;
-	}
-	ppd = &dd->pport[port_num - 1];
-
-	ret = kobject_init_and_add(&ppd->sc2vl_kobj, &hfi1_sc2vl_ktype, kobj,
-				   "sc2vl");
-	if (ret) {
-		dd_dev_err(dd,
-			   "Skipping sc2vl sysfs info, (err %d) port %u\n",
-			   ret, port_num);
-		/*
-		 * Based on the documentation for kobject_init_and_add(), the
-		 * caller should call kobject_put even if this call fails.
-		 */
-		goto bail_sc2vl;
-	}
-	kobject_uevent(&ppd->sc2vl_kobj, KOBJ_ADD);
-
-	ret = kobject_init_and_add(&ppd->sl2sc_kobj, &hfi1_sl2sc_ktype, kobj,
-				   "sl2sc");
-	if (ret) {
-		dd_dev_err(dd,
-			   "Skipping sl2sc sysfs info, (err %d) port %u\n",
-			   ret, port_num);
-		goto bail_sl2sc;
-	}
-	kobject_uevent(&ppd->sl2sc_kobj, KOBJ_ADD);
-
-	ret = kobject_init_and_add(&ppd->vl2mtu_kobj, &hfi1_vl2mtu_ktype, kobj,
-				   "vl2mtu");
-	if (ret) {
-		dd_dev_err(dd,
-			   "Skipping vl2mtu sysfs info, (err %d) port %u\n",
-			   ret, port_num);
-		goto bail_vl2mtu;
-	}
-	kobject_uevent(&ppd->vl2mtu_kobj, KOBJ_ADD);
-
-	ret = kobject_init_and_add(&ppd->pport_cc_kobj, &port_cc_ktype,
-				   kobj, "CCMgtA");
-	if (ret) {
-		dd_dev_err(dd,
-			   "Skipping Congestion Control sysfs info, (err %d) port %u\n",
-			   ret, port_num);
-		goto bail_cc;
-	}
-
-	kobject_uevent(&ppd->pport_cc_kobj, KOBJ_ADD);
-
-	ret = sysfs_create_bin_file(&ppd->pport_cc_kobj, &cc_setting_bin_attr);
-	if (ret) {
-		dd_dev_err(dd,
-			   "Skipping Congestion Control setting sysfs info, (err %d) port %u\n",
-			   ret, port_num);
-		goto bail_cc;
-	}
-
-	ret = sysfs_create_bin_file(&ppd->pport_cc_kobj, &cc_table_bin_attr);
-	if (ret) {
-		dd_dev_err(dd,
-			   "Skipping Congestion Control table sysfs info, (err %d) port %u\n",
-			   ret, port_num);
-		goto bail_cc_entry_bin;
-	}
-
-	dd_dev_info(dd,
-		    "Congestion Control Agent enabled for port %d\n",
-		    port_num);
-
-	return 0;
-
-bail_cc_entry_bin:
-	sysfs_remove_bin_file(&ppd->pport_cc_kobj,
-			      &cc_setting_bin_attr);
-bail_cc:
-	kobject_put(&ppd->pport_cc_kobj);
-bail_vl2mtu:
-	kobject_put(&ppd->vl2mtu_kobj);
-bail_sl2sc:
-	kobject_put(&ppd->sl2sc_kobj);
-bail_sc2vl:
-	kobject_put(&ppd->sc2vl_kobj);
-	return ret;
+	return ib_port_sysfs_create_groups(ibdev, port_num, hfi1_port_groups);
 }
 
 struct sde_attribute {
@@ -868,23 +736,13 @@ int hfi1_verbs_register_sysfs(struct hfi1_devdata *dd)
  */
 void hfi1_verbs_unregister_sysfs(struct hfi1_devdata *dd)
 {
-	struct hfi1_pportdata *ppd;
 	int i;
 
 	/* Unwind operations in hfi1_verbs_register_sysfs() */
 	for (i = 0; i < dd->num_sdma; i++)
 		kobject_put(&dd->per_sdma[i].kobj);
 
-	for (i = 0; i < dd->num_pports; i++) {
-		ppd = &dd->pport[i];
-
-		sysfs_remove_bin_file(&ppd->pport_cc_kobj,
-				      &cc_setting_bin_attr);
-		sysfs_remove_bin_file(&ppd->pport_cc_kobj,
-				      &cc_table_bin_attr);
-		kobject_put(&ppd->pport_cc_kobj);
-		kobject_put(&ppd->vl2mtu_kobj);
-		kobject_put(&ppd->sl2sc_kobj);
-		kobject_put(&ppd->sc2vl_kobj);
-	}
+	for (i = 0; i < dd->num_pports; i++)
+		ib_port_sysfs_remove_groups(&dd->verbs_dev.rdi.ibdev, i + 1,
+					    hfi1_port_groups);
 }
-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cbe0ccb6175dd22274359b6ad803a37435a70e91.1623427137.git.leonro%40nvidia.com.
