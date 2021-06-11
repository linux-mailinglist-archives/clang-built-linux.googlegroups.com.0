Return-Path: <clang-built-linux+bncBDMMLW4BXYHBBUMRR2DAMGQE4ICZLNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 03F9D3A45FF
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 18:01:23 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id 31-20020a1709020022b02900eeddd708c8sf2883084pla.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 09:01:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623427281; cv=pass;
        d=google.com; s=arc-20160816;
        b=bovA8NhwB67L5anLXFFCnZ1yHzD4Qv2ES1wADFNWUhC5WudWczh74BSjeiln/MnCZz
         j09bLcLNao1tMqaQ2yhT4ZPBQ2K7ggVM8F5uCxh0xHZ+WngCGSe3lmeQlgR/n+CgGyX1
         RuvzSyaIbJ+Hrl++V63ppFqFdmEnEDEFUKv4coKGKV4X2owHM3rc8ERZ4fUXRHROkyiH
         Z/Faib19NpDxTqT3S62nAJR8s6hys2udeLG0sg4eLuHG/4pSuWxh/GMryAU6pSYSCwI6
         //9RQ5ZqiJ8VAVPM+HZLQlFpsCPkR0YkbUJ9oI8HKy9I9jl4bxkRzSMZXDsTj72xGyeI
         ikkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Kx0fxOv371cVLBg0zCjPChAl3CWNijPigBKDm3P04JU=;
        b=wgPFoKN6y+buhrzbxKDAVlc/kLWK2S0rW7O4ylfOrBDhPC9nHSEk7GtLrkiOEe+2GA
         q7wlUQtElp73MiyJYF/merrJAH2MuTrx1M7xyAGiP2sJ/u2bo3hPkSGwavyeumLnPOrA
         nYV7L4ehW1YYo6klPeCLa0VDAhrBqSobLLZWoirO7UATpaCpbOShmpxterwQ8BepBBN2
         nZoXOYkSS2ZqTaWJFnjR9LY5LtoeZRUMsRXc7pjeoeCEZ4biGfQVQIBdbl+ZVSqg7Ijc
         aRy6U/kygCC1FCh/jBb9PMwoO8t4mvKtY0/iq6Dxrgkd0RUXQfdCu5E51z8uE3vhuRy/
         snJQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=MxXEZohX;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Kx0fxOv371cVLBg0zCjPChAl3CWNijPigBKDm3P04JU=;
        b=VAe5eTDehyyqdpE8sGe+RidCnCt+TnnsGBDzncuskxpWiEGDL70s0k4gitcjEkG96S
         YC+NyehSLD5bWVM95hIvIXpJ3C4S3MrgwVku256km14w+94Jy1CI4UZm+NZI0MpYfbkg
         e6At1TVo3hiDjHxLr/PZqAMVarMLLTo1icz2pTu1eva9IUwpoAIDrcPg4mpWVOyJAG3L
         jH1SRFkH6weeD9XI4+zrCK1PDyHPdzri6py11Ktn3E3F8lpGIE1aLmf+ZlZVY9UihloG
         hYGxf+ZL7zpojyzzMKXGBplzR99P/vE40QEQ+hLQzBeJUkqIEJJUegrVTY1yUr6sr6DJ
         irow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Kx0fxOv371cVLBg0zCjPChAl3CWNijPigBKDm3P04JU=;
        b=EHT/YBj78Q+fhuNJZEzmLz1Q0WkCc0DA7XWm/0US04MpoD14Tm9OTXcfnIqJ0yn2WK
         B3dbH6yGqFqw0iWBFQ2fHtWF0UDppZU4pdc+ybkX1zTjPejeBpfQ9IiasiUnF7mFEJFF
         vFrPZ6cJJO+kRhiXHor9rtPMAu0wxyf617cG0eZj32qx28BWSoovv9JxAy3VBVUBGVX6
         0PB1s4Xso2/GAQLrguu5RcOfoX4CD+/1mZHJqza1h6EWihxMK/gmVOGFeTM3WxMWU9FU
         LHa7GzLkql7OXpeTAXqOzJ2aPMDDrkPYXM1mMmTX8DqGfrQgUr/M3i7Ih5+1a/sA61D4
         0/zg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533DqI+jipecZmFOIYOL+yzwl2amEUVqD4oH7pmaPZNK6dxW51Y9
	OopuB8MSCjuK+I87s7k/h5c=
X-Google-Smtp-Source: ABdhPJx1zypFgg079Q2GU85fW35PCRC6tBMOQhYJPvEvwWhb8EOBU4sqTS250sZTVigESKQj/1MGyg==
X-Received: by 2002:a05:6a00:88a:b029:261:6d37:dac6 with SMTP id q10-20020a056a00088ab02902616d37dac6mr8972450pfj.18.1623427281611;
        Fri, 11 Jun 2021 09:01:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:501b:: with SMTP id e27ls4600696pgb.2.gmail; Fri, 11 Jun
 2021 09:01:21 -0700 (PDT)
X-Received: by 2002:aa7:829a:0:b029:2e9:e53:198d with SMTP id s26-20020aa7829a0000b02902e90e53198dmr9028633pfm.72.1623427280525;
        Fri, 11 Jun 2021 09:01:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623427280; cv=none;
        d=google.com; s=arc-20160816;
        b=Y6EfaVTdus4vTJlU1W4xLBl2Obrtr9ZjKolbousplDClrI+7pKvuv+9khSy7tQKJYU
         gh7OOgW70FPOLSr5Cguvox66E4cAC+v4WqmtHaQtf/OLH1neikKmrxuPMv4JYrk8N3TY
         260Ejd8dc0dLzbeoAI1FpLzqDm87ONBznq4bt5NmwZJ0bN5MzyFH8Km3iD27QpHOwGk4
         9s05xkEMBsfj89ys1XnOL1GCr2r+PvQF5nF/koR6sAe3pv0chGLhPnJSzD43ml/8srkT
         LY/Djy78DAA2VpcMMc/qET/ATB92QF/TAd7pC1Enq7JByk77xWHu30P12qPkiO1vXGLT
         sI6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=kOu7aNlnIAjw2QJQ2ktHrhDJAa3JdhFXCErF6fc+FqY=;
        b=zzQvzyfZfniRRPC7AU3CLHUoC3Jw9Wo/0HdjuUeMPHOkl1hdYy2bzhV+/1pw2G6rHl
         dY3ERaCX0mlJqVWIrGNvjtrY9J8PA2uSLY7PWHUcUGrKj4k+nx40qQS3acOwuB0MV9FR
         m2eL6zxsMq2Pm5sOdnfFxBlQmI2vP1RT81I561/n6wPRPryRj1IKpxlvQk134/enxX6u
         5yMXPcuIJCw9CXjDND1LL49bj491K+h0n99X4nol1NZ/8h+uAUCX2ctOI0yu+zn0B4Qs
         36jHD272Q5Ka3zA0JhI4ym+MrafcLje0JIGvQtir7R3N3CZ5nXXtry8JrlX+oKaFo1aQ
         vrDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=MxXEZohX;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id mm4si1333519pjb.2.2021.06.11.09.01.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Jun 2021 09:01:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6014B613EA;
	Fri, 11 Jun 2021 16:01:19 +0000 (UTC)
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
Subject: [PATCH rdma-next v2 11/15] RDMA/qib: Use attributes for the port sysfs
Date: Fri, 11 Jun 2021 19:00:30 +0300
Message-Id: <911e0031e1ed495b0006e8a6efec7b67a702cd5e.1623427137.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1623427137.git.leonro@nvidia.com>
References: <cover.1623427137.git.leonro@nvidia.com>
MIME-Version: 1.0
X-Original-Sender: leon@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=MxXEZohX;       spf=pass
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

qib should not be creating a mess of kobjects to attach to the port
kobject - this is all attributes. The proper API is to create an
attribute_group list and create it against the port's kobject.

Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 drivers/infiniband/hw/qib/qib.h       |   4 -
 drivers/infiniband/hw/qib/qib_sysfs.c | 606 +++++++++++---------------
 2 files changed, 254 insertions(+), 356 deletions(-)

diff --git a/drivers/infiniband/hw/qib/qib.h b/drivers/infiniband/hw/qib/qib.h
index 88497739029e..b8a2deb5b4d2 100644
--- a/drivers/infiniband/hw/qib/qib.h
+++ b/drivers/infiniband/hw/qib/qib.h
@@ -521,10 +521,6 @@ struct qib_pportdata {
 
 	struct qib_devdata *dd;
 	struct qib_chippport_specific *cpspec; /* chip-specific per-port */
-	struct kobject pport_kobj;
-	struct kobject pport_cc_kobj;
-	struct kobject sl2vl_kobj;
-	struct kobject diagc_kobj;
 
 	/* GUID for this interface, in network order */
 	__be64 guid;
diff --git a/drivers/infiniband/hw/qib/qib_sysfs.c b/drivers/infiniband/hw/qib/qib_sysfs.c
index 5e9e66f27064..a1e22c498712 100644
--- a/drivers/infiniband/hw/qib/qib_sysfs.c
+++ b/drivers/infiniband/hw/qib/qib_sysfs.c
@@ -32,25 +32,38 @@
  * SOFTWARE.
  */
 #include <linux/ctype.h>
+#include <rdma/ib_sysfs.h>
 
 #include "qib.h"
 #include "qib_mad.h"
 
-/* start of per-port functions */
+static struct qib_pportdata *qib_get_pportdata_kobj(struct kobject *kobj)
+{
+	u32 port_num;
+	struct ib_device *ibdev = ib_port_sysfs_get_ibdev_kobj(kobj, &port_num);
+	struct qib_devdata *dd = dd_from_ibdev(ibdev);
+
+	return &dd->pport[port_num - 1];
+}
+
 /*
  * Get/Set heartbeat enable. OR of 1=enabled, 2=auto
  */
-static ssize_t show_hrtbt_enb(struct qib_pportdata *ppd, char *buf)
+static ssize_t hrtbt_enable_show(struct ib_device *ibdev, u32 port_num,
+				 struct ib_port_attribute *attr, char *buf)
 {
-	struct qib_devdata *dd = ppd->dd;
+	struct qib_devdata *dd = dd_from_ibdev(ibdev);
+	struct qib_pportdata *ppd = &dd->pport[port_num - 1];
 
 	return sysfs_emit(buf, "%d\n", dd->f_get_ib_cfg(ppd, QIB_IB_CFG_HRTBT));
 }
 
-static ssize_t store_hrtbt_enb(struct qib_pportdata *ppd, const char *buf,
-			       size_t count)
+static ssize_t hrtbt_enable_store(struct ib_device *ibdev, u32 port_num,
+				  struct ib_port_attribute *attr,
+				  const char *buf, size_t count)
 {
-	struct qib_devdata *dd = ppd->dd;
+	struct qib_devdata *dd = dd_from_ibdev(ibdev);
+	struct qib_pportdata *ppd = &dd->pport[port_num - 1];
 	int ret;
 	u16 val;
 
@@ -70,11 +83,14 @@ static ssize_t store_hrtbt_enb(struct qib_pportdata *ppd, const char *buf,
 	ret = dd->f_set_ib_cfg(ppd, QIB_IB_CFG_HRTBT, val);
 	return ret < 0 ? ret : count;
 }
+static IB_PORT_ATTR_RW(hrtbt_enable);
 
-static ssize_t store_loopback(struct qib_pportdata *ppd, const char *buf,
+static ssize_t loopback_store(struct ib_device *ibdev, u32 port_num,
+			      struct ib_port_attribute *attr, const char *buf,
 			      size_t count)
 {
-	struct qib_devdata *dd = ppd->dd;
+	struct qib_devdata *dd = dd_from_ibdev(ibdev);
+	struct qib_pportdata *ppd = &dd->pport[port_num - 1];
 	int ret = count, r;
 
 	r = dd->f_set_ib_loopback(ppd, buf);
@@ -83,11 +99,14 @@ static ssize_t store_loopback(struct qib_pportdata *ppd, const char *buf,
 
 	return ret;
 }
+static IB_PORT_ATTR_WO(loopback);
 
-static ssize_t store_led_override(struct qib_pportdata *ppd, const char *buf,
-				  size_t count)
+static ssize_t led_override_store(struct ib_device *ibdev, u32 port_num,
+				  struct ib_port_attribute *attr,
+				  const char *buf, size_t count)
 {
-	struct qib_devdata *dd = ppd->dd;
+	struct qib_devdata *dd = dd_from_ibdev(ibdev);
+	struct qib_pportdata *ppd = &dd->pport[port_num - 1];
 	int ret;
 	u16 val;
 
@@ -100,14 +119,20 @@ static ssize_t store_led_override(struct qib_pportdata *ppd, const char *buf,
 	qib_set_led_override(ppd, val);
 	return count;
 }
+static IB_PORT_ATTR_WO(led_override);
 
-static ssize_t show_status(struct qib_pportdata *ppd, char *buf)
+static ssize_t status_show(struct ib_device *ibdev, u32 port_num,
+			   struct ib_port_attribute *attr, char *buf)
 {
+	struct qib_devdata *dd = dd_from_ibdev(ibdev);
+	struct qib_pportdata *ppd = &dd->pport[port_num - 1];
+
 	if (!ppd->statusp)
 		return -EINVAL;
 
 	return sysfs_emit(buf, "0x%llx\n", (unsigned long long)*(ppd->statusp));
 }
+static IB_PORT_ATTR_RO(status);
 
 /*
  * For userland compatibility, these offsets must remain fixed.
@@ -127,8 +152,11 @@ static const char * const qib_status_str[] = {
 	NULL,
 };
 
-static ssize_t show_status_str(struct qib_pportdata *ppd, char *buf)
+static ssize_t status_str_show(struct ib_device *ibdev, u32 port_num,
+			       struct ib_port_attribute *attr, char *buf)
 {
+	struct qib_devdata *dd = dd_from_ibdev(ibdev);
+	struct qib_pportdata *ppd = &dd->pport[port_num - 1];
 	int i, any;
 	u64 s;
 	ssize_t ret;
@@ -160,38 +188,22 @@ static ssize_t show_status_str(struct qib_pportdata *ppd, char *buf)
 bail:
 	return ret;
 }
+static IB_PORT_ATTR_RO(status_str);
 
 /* end of per-port functions */
 
-/*
- * Start of per-port file structures and support code
- * Because we are fitting into other infrastructure, we have to supply the
- * full set of kobject/sysfs_ops structures and routines.
- */
-#define QIB_PORT_ATTR(name, mode, show, store) \
-	static struct qib_port_attr qib_port_attr_##name = \
-		__ATTR(name, mode, show, store)
-
-struct qib_port_attr {
-	struct attribute attr;
-	ssize_t (*show)(struct qib_pportdata *, char *);
-	ssize_t (*store)(struct qib_pportdata *, const char *, size_t);
+static struct attribute *port_linkcontrol_attributes[] = {
+	&ib_port_attr_loopback.attr,
+	&ib_port_attr_led_override.attr,
+	&ib_port_attr_hrtbt_enable.attr,
+	&ib_port_attr_status.attr,
+	&ib_port_attr_status_str.attr,
+	NULL
 };
 
-QIB_PORT_ATTR(loopback, S_IWUSR, NULL, store_loopback);
-QIB_PORT_ATTR(led_override, S_IWUSR, NULL, store_led_override);
-QIB_PORT_ATTR(hrtbt_enable, S_IWUSR | S_IRUGO, show_hrtbt_enb,
-	      store_hrtbt_enb);
-QIB_PORT_ATTR(status, S_IRUGO, show_status, NULL);
-QIB_PORT_ATTR(status_str, S_IRUGO, show_status_str, NULL);
-
-static struct attribute *port_default_attributes[] = {
-	&qib_port_attr_loopback.attr,
-	&qib_port_attr_led_override.attr,
-	&qib_port_attr_hrtbt_enable.attr,
-	&qib_port_attr_status.attr,
-	&qib_port_attr_status_str.attr,
-	NULL
+static const struct attribute_group port_linkcontrol_group = {
+	.name = "linkcontrol",
+	.attrs = port_linkcontrol_attributes,
 };
 
 /*
@@ -201,13 +213,12 @@ static struct attribute *port_default_attributes[] = {
 /*
  * Congestion control table size followed by table entries
  */
-static ssize_t read_cc_table_bin(struct file *filp, struct kobject *kobj,
-		struct bin_attribute *bin_attr,
-		char *buf, loff_t pos, size_t count)
+static ssize_t cc_table_bin_read(struct file *filp, struct kobject *kobj,
+				 struct bin_attribute *bin_attr, char *buf,
+				 loff_t pos, size_t count)
 {
+	struct qib_pportdata *ppd = qib_get_pportdata_kobj(kobj);
 	int ret;
-	struct qib_pportdata *ppd =
-		container_of(kobj, struct qib_pportdata, pport_cc_kobj);
 
 	if (!qib_cc_table_size || !ppd->ccti_entries_shadow)
 		return -EINVAL;
@@ -230,34 +241,19 @@ static ssize_t read_cc_table_bin(struct file *filp, struct kobject *kobj,
 
 	return count;
 }
-
-static void qib_port_release(struct kobject *kobj)
-{
-	/* nothing to do since memory is freed by qib_free_devdata() */
-}
-
-static struct kobj_type qib_port_cc_ktype = {
-	.release = qib_port_release,
-};
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
-		struct bin_attribute *bin_attr,
-		char *buf, loff_t pos, size_t count)
+static ssize_t cc_setting_bin_read(struct file *filp, struct kobject *kobj,
+				   struct bin_attribute *bin_attr, char *buf,
+				   loff_t pos, size_t count)
 {
+	struct qib_pportdata *ppd = qib_get_pportdata_kobj(kobj);
 	int ret;
-	struct qib_pportdata *ppd =
-		container_of(kobj, struct qib_pportdata, pport_cc_kobj);
 
 	if (!qib_cc_table_size || !ppd->congestion_entries_shadow)
 		return -EINVAL;
@@ -278,67 +274,54 @@ static ssize_t read_cc_setting_bin(struct file *filp, struct kobject *kobj,
 
 	return count;
 }
+static BIN_ATTR_RO(cc_setting_bin, PAGE_SIZE);
 
-static const struct bin_attribute cc_setting_bin_attr = {
-	.attr = {.name = "cc_settings_bin", .mode = 0444},
-	.read = read_cc_setting_bin,
-	.size = PAGE_SIZE,
+static struct bin_attribute *port_ccmgta_attributes[] = {
+	&bin_attr_cc_setting_bin,
+	&bin_attr_cc_table_bin,
+	NULL,
 };
 
-
-static ssize_t qib_portattr_show(struct kobject *kobj,
-	struct attribute *attr, char *buf)
-{
-	struct qib_port_attr *pattr =
-		container_of(attr, struct qib_port_attr, attr);
-	struct qib_pportdata *ppd =
-		container_of(kobj, struct qib_pportdata, pport_kobj);
-
-	if (!pattr->show)
-		return -EIO;
-
-	return pattr->show(ppd, buf);
-}
-
-static ssize_t qib_portattr_store(struct kobject *kobj,
-	struct attribute *attr, const char *buf, size_t len)
+static umode_t qib_ccmgta_is_bin_visible(struct kobject *kobj,
+				 struct bin_attribute *attr, int n)
 {
-	struct qib_port_attr *pattr =
-		container_of(attr, struct qib_port_attr, attr);
-	struct qib_pportdata *ppd =
-		container_of(kobj, struct qib_pportdata, pport_kobj);
+	struct qib_pportdata *ppd = qib_get_pportdata_kobj(kobj);
 
-	if (!pattr->store)
-		return -EIO;
-
-	return pattr->store(ppd, buf, len);
+	if (!qib_cc_table_size || !ppd->congestion_entries_shadow)
+		return 0;
+	return attr->attr.mode;
 }
 
-
-static const struct sysfs_ops qib_port_ops = {
-	.show = qib_portattr_show,
-	.store = qib_portattr_store,
-};
-
-static struct kobj_type qib_port_ktype = {
-	.release = qib_port_release,
-	.sysfs_ops = &qib_port_ops,
-	.default_attrs = port_default_attributes
+static const struct attribute_group port_ccmgta_attribute_group = {
+	.name = "CCMgtA",
+	.is_bin_visible = qib_ccmgta_is_bin_visible,
+	.bin_attrs = port_ccmgta_attributes,
 };
 
 /* Start sl2vl */
 
-#define QIB_SL2VL_ATTR(N) \
-	static struct qib_sl2vl_attr qib_sl2vl_attr_##N = { \
-		.attr = { .name = __stringify(N), .mode = 0444 }, \
-		.sl = N \
-	}
-
 struct qib_sl2vl_attr {
-	struct attribute attr;
+	struct ib_port_attribute attr;
 	int sl;
 };
 
+static ssize_t sl2vl_attr_show(struct ib_device *ibdev, u32 port_num,
+			       struct ib_port_attribute *attr, char *buf)
+{
+	struct qib_sl2vl_attr *sattr =
+		container_of(attr, struct qib_sl2vl_attr, attr);
+	struct qib_devdata *dd = dd_from_ibdev(ibdev);
+	struct qib_ibport *qibp = &dd->pport[port_num - 1].ibport_data;
+
+	return sysfs_emit(buf, "%u\n", qibp->sl_to_vl[sattr->sl]);
+}
+
+#define QIB_SL2VL_ATTR(N)                                                      \
+	static struct qib_sl2vl_attr qib_sl2vl_attr_##N = {                    \
+		.attr = __ATTR(N, 0444, sl2vl_attr_show, NULL),                \
+		.sl = N,                                                       \
+	}
+
 QIB_SL2VL_ATTR(0);
 QIB_SL2VL_ATTR(1);
 QIB_SL2VL_ATTR(2);
@@ -356,72 +339,74 @@ QIB_SL2VL_ATTR(13);
 QIB_SL2VL_ATTR(14);
 QIB_SL2VL_ATTR(15);
 
-static struct attribute *sl2vl_default_attributes[] = {
-	&qib_sl2vl_attr_0.attr,
-	&qib_sl2vl_attr_1.attr,
-	&qib_sl2vl_attr_2.attr,
-	&qib_sl2vl_attr_3.attr,
-	&qib_sl2vl_attr_4.attr,
-	&qib_sl2vl_attr_5.attr,
-	&qib_sl2vl_attr_6.attr,
-	&qib_sl2vl_attr_7.attr,
-	&qib_sl2vl_attr_8.attr,
-	&qib_sl2vl_attr_9.attr,
-	&qib_sl2vl_attr_10.attr,
-	&qib_sl2vl_attr_11.attr,
-	&qib_sl2vl_attr_12.attr,
-	&qib_sl2vl_attr_13.attr,
-	&qib_sl2vl_attr_14.attr,
-	&qib_sl2vl_attr_15.attr,
+static struct attribute *port_sl2vl_attributes[] = {
+	&qib_sl2vl_attr_0.attr.attr,
+	&qib_sl2vl_attr_1.attr.attr,
+	&qib_sl2vl_attr_2.attr.attr,
+	&qib_sl2vl_attr_3.attr.attr,
+	&qib_sl2vl_attr_4.attr.attr,
+	&qib_sl2vl_attr_5.attr.attr,
+	&qib_sl2vl_attr_6.attr.attr,
+	&qib_sl2vl_attr_7.attr.attr,
+	&qib_sl2vl_attr_8.attr.attr,
+	&qib_sl2vl_attr_9.attr.attr,
+	&qib_sl2vl_attr_10.attr.attr,
+	&qib_sl2vl_attr_11.attr.attr,
+	&qib_sl2vl_attr_12.attr.attr,
+	&qib_sl2vl_attr_13.attr.attr,
+	&qib_sl2vl_attr_14.attr.attr,
+	&qib_sl2vl_attr_15.attr.attr,
 	NULL
 };
 
-static ssize_t sl2vl_attr_show(struct kobject *kobj, struct attribute *attr,
-			       char *buf)
-{
-	struct qib_sl2vl_attr *sattr =
-		container_of(attr, struct qib_sl2vl_attr, attr);
-	struct qib_pportdata *ppd =
-		container_of(kobj, struct qib_pportdata, sl2vl_kobj);
-	struct qib_ibport *qibp = &ppd->ibport_data;
-
-	return sysfs_emit(buf, "%u\n", qibp->sl_to_vl[sattr->sl]);
-}
-
-static const struct sysfs_ops qib_sl2vl_ops = {
-	.show = sl2vl_attr_show,
-};
-
-static struct kobj_type qib_sl2vl_ktype = {
-	.release = qib_port_release,
-	.sysfs_ops = &qib_sl2vl_ops,
-	.default_attrs = sl2vl_default_attributes
+static const struct attribute_group port_sl2vl_group = {
+	.name = "sl2vl",
+	.attrs = port_sl2vl_attributes,
 };
 
 /* End sl2vl */
 
 /* Start diag_counters */
 
-#define QIB_DIAGC_ATTR(N) \
-	static struct qib_diagc_attr qib_diagc_attr_##N = { \
-		.attr = { .name = __stringify(N), .mode = 0664 }, \
-		.counter = offsetof(struct qib_ibport, rvp.n_##N) \
-	}
-
-#define QIB_DIAGC_ATTR_PER_CPU(N) \
-	static struct qib_diagc_attr qib_diagc_attr_##N = { \
-		.attr = { .name = __stringify(N), .mode = 0664 }, \
-		.counter = offsetof(struct qib_ibport, rvp.z_##N) \
-	}
-
 struct qib_diagc_attr {
-	struct attribute attr;
+	struct ib_port_attribute attr;
 	size_t counter;
 };
 
-QIB_DIAGC_ATTR_PER_CPU(rc_acks);
-QIB_DIAGC_ATTR_PER_CPU(rc_qacks);
-QIB_DIAGC_ATTR_PER_CPU(rc_delayed_comp);
+static ssize_t diagc_attr_show(struct ib_device *ibdev, u32 port_num,
+			       struct ib_port_attribute *attr, char *buf)
+{
+	struct qib_diagc_attr *dattr =
+		container_of(attr, struct qib_diagc_attr, attr);
+	struct qib_devdata *dd = dd_from_ibdev(ibdev);
+	struct qib_ibport *qibp = &dd->pport[port_num - 1].ibport_data;
+
+	return sysfs_emit(buf, "%llu\n", *((u64 *)qibp + dattr->counter));
+}
+
+static ssize_t diagc_attr_store(struct ib_device *ibdev, u32 port_num,
+				struct ib_port_attribute *attr, const char *buf,
+				size_t count)
+{
+	struct qib_diagc_attr *dattr =
+		container_of(attr, struct qib_diagc_attr, attr);
+	struct qib_devdata *dd = dd_from_ibdev(ibdev);
+	struct qib_ibport *qibp = &dd->pport[port_num - 1].ibport_data;
+	u64 val;
+	int ret;
+
+	ret = kstrtou64(buf, 0, &val);
+	if (ret)
+		return ret;
+	*((u64 *)qibp + dattr->counter) = val;
+	return count;
+}
+
+#define QIB_DIAGC_ATTR(N)                                                      \
+	static struct qib_diagc_attr qib_diagc_attr_##N = {                    \
+		.attr = __ATTR(N, 0664, diagc_attr_show, diagc_attr_store),    \
+		.counter = &((struct qib_ibport *)0)->rvp.n_##N - (u64 *)0,    \
+	}
 
 QIB_DIAGC_ATTR(rc_resends);
 QIB_DIAGC_ATTR(seq_naks);
@@ -437,26 +422,6 @@ QIB_DIAGC_ATTR(rc_dupreq);
 QIB_DIAGC_ATTR(rc_seqnak);
 QIB_DIAGC_ATTR(rc_crwaits);
 
-static struct attribute *diagc_default_attributes[] = {
-	&qib_diagc_attr_rc_resends.attr,
-	&qib_diagc_attr_rc_acks.attr,
-	&qib_diagc_attr_rc_qacks.attr,
-	&qib_diagc_attr_rc_delayed_comp.attr,
-	&qib_diagc_attr_seq_naks.attr,
-	&qib_diagc_attr_rdma_seq.attr,
-	&qib_diagc_attr_rnr_naks.attr,
-	&qib_diagc_attr_other_naks.attr,
-	&qib_diagc_attr_rc_timeouts.attr,
-	&qib_diagc_attr_loop_pkts.attr,
-	&qib_diagc_attr_pkt_drops.attr,
-	&qib_diagc_attr_dmawait.attr,
-	&qib_diagc_attr_unaligned.attr,
-	&qib_diagc_attr_rc_dupreq.attr,
-	&qib_diagc_attr_rc_seqnak.attr,
-	&qib_diagc_attr_rc_crwaits.attr,
-	NULL
-};
-
 static u64 get_all_cpu_total(u64 __percpu *cntr)
 {
 	int cpu;
@@ -467,86 +432,127 @@ static u64 get_all_cpu_total(u64 __percpu *cntr)
 	return counter;
 }
 
-#define def_write_per_cpu(cntr) \
-static void write_per_cpu_##cntr(struct qib_pportdata *ppd, u32 data)	\
-{									\
-	struct qib_devdata *dd = ppd->dd;				\
-	struct qib_ibport *qibp = &ppd->ibport_data;			\
-	/*  A write can only zero the counter */			\
-	if (data == 0)							\
-		qibp->rvp.z_##cntr = get_all_cpu_total(qibp->rvp.cntr); \
-	else								\
-		qib_dev_err(dd, "Per CPU cntrs can only be zeroed");	\
+static ssize_t qib_store_per_cpu(struct qib_devdata *dd, const char *buf,
+				 size_t count, u64 *zero, u64 cur)
+{
+	u32 val;
+	int ret;
+
+	ret = kstrtou32(buf, 0, &val);
+	if (ret)
+		return ret;
+	if (val != 0) {
+		qib_dev_err(dd, "Per CPU cntrs can only be zeroed");
+		return count;
+	}
+	*zero = cur;
+	return count;
 }
 
-def_write_per_cpu(rc_acks)
-def_write_per_cpu(rc_qacks)
-def_write_per_cpu(rc_delayed_comp)
+static ssize_t rc_acks_show(struct ib_device *ibdev, u32 port_num,
+			    struct ib_port_attribute *attr, char *buf)
+{
+	struct qib_devdata *dd = dd_from_ibdev(ibdev);
+	struct qib_ibport *qibp = &dd->pport[port_num - 1].ibport_data;
 
-#define READ_PER_CPU_CNTR(cntr) (get_all_cpu_total(qibp->rvp.cntr) - \
-							qibp->rvp.z_##cntr)
+	return sysfs_emit(buf, "%llu\n",
+			  get_all_cpu_total(qibp->rvp.rc_acks) -
+				  qibp->rvp.z_rc_acks);
+}
 
-static ssize_t diagc_attr_show(struct kobject *kobj, struct attribute *attr,
-			       char *buf)
+static ssize_t rc_acks_store(struct ib_device *ibdev, u32 port_num,
+			     struct ib_port_attribute *attr, const char *buf,
+			     size_t count)
 {
-	struct qib_diagc_attr *dattr =
-		container_of(attr, struct qib_diagc_attr, attr);
-	struct qib_pportdata *ppd =
-		container_of(kobj, struct qib_pportdata, diagc_kobj);
-	struct qib_ibport *qibp = &ppd->ibport_data;
-	u64 val;
+	struct qib_devdata *dd = dd_from_ibdev(ibdev);
+	struct qib_ibport *qibp = &dd->pport[port_num - 1].ibport_data;
 
-	if (!strncmp(dattr->attr.name, "rc_acks", 7))
-		val = READ_PER_CPU_CNTR(rc_acks);
-	else if (!strncmp(dattr->attr.name, "rc_qacks", 8))
-		val = READ_PER_CPU_CNTR(rc_qacks);
-	else if (!strncmp(dattr->attr.name, "rc_delayed_comp", 15))
-		val = READ_PER_CPU_CNTR(rc_delayed_comp);
-	else
-		val = *(u32 *)((char *)qibp + dattr->counter);
+	return qib_store_per_cpu(dd, buf, count, &qibp->rvp.z_rc_acks,
+				 get_all_cpu_total(qibp->rvp.rc_acks));
+}
+static IB_PORT_ATTR_RW(rc_acks);
+
+static ssize_t rc_qacks_show(struct ib_device *ibdev, u32 port_num,
+			     struct ib_port_attribute *attr, char *buf)
+{
+	struct qib_devdata *dd = dd_from_ibdev(ibdev);
+	struct qib_ibport *qibp = &dd->pport[port_num - 1].ibport_data;
 
-	return sysfs_emit(buf, "%llu\n", val);
+	return sysfs_emit(buf, "%llu\n",
+			  get_all_cpu_total(qibp->rvp.rc_qacks) -
+				  qibp->rvp.z_rc_qacks);
 }
 
-static ssize_t diagc_attr_store(struct kobject *kobj, struct attribute *attr,
-				const char *buf, size_t size)
+static ssize_t rc_qacks_store(struct ib_device *ibdev, u32 port_num,
+			      struct ib_port_attribute *attr, const char *buf,
+			      size_t count)
 {
-	struct qib_diagc_attr *dattr =
-		container_of(attr, struct qib_diagc_attr, attr);
-	struct qib_pportdata *ppd =
-		container_of(kobj, struct qib_pportdata, diagc_kobj);
-	struct qib_ibport *qibp = &ppd->ibport_data;
-	u32 val;
-	int ret;
+	struct qib_devdata *dd = dd_from_ibdev(ibdev);
+	struct qib_ibport *qibp = &dd->pport[port_num - 1].ibport_data;
 
-	ret = kstrtou32(buf, 0, &val);
-	if (ret)
-		return ret;
+	return qib_store_per_cpu(dd, buf, count, &qibp->rvp.z_rc_qacks,
+				 get_all_cpu_total(qibp->rvp.rc_qacks));
+}
+static IB_PORT_ATTR_RW(rc_qacks);
 
-	if (!strncmp(dattr->attr.name, "rc_acks", 7))
-		write_per_cpu_rc_acks(ppd, val);
-	else if (!strncmp(dattr->attr.name, "rc_qacks", 8))
-		write_per_cpu_rc_qacks(ppd, val);
-	else if (!strncmp(dattr->attr.name, "rc_delayed_comp", 15))
-		write_per_cpu_rc_delayed_comp(ppd, val);
-	else
-		*(u32 *)((char *)qibp + dattr->counter) = val;
-	return size;
+static ssize_t rc_delayed_comp_show(struct ib_device *ibdev, u32 port_num,
+				    struct ib_port_attribute *attr, char *buf)
+{
+	struct qib_devdata *dd = dd_from_ibdev(ibdev);
+	struct qib_ibport *qibp = &dd->pport[port_num - 1].ibport_data;
+
+	return sysfs_emit(buf, "%llu\n",
+			 get_all_cpu_total(qibp->rvp.rc_delayed_comp) -
+				 qibp->rvp.z_rc_delayed_comp);
 }
 
-static const struct sysfs_ops qib_diagc_ops = {
-	.show = diagc_attr_show,
-	.store = diagc_attr_store,
+static ssize_t rc_delayed_comp_store(struct ib_device *ibdev, u32 port_num,
+				     struct ib_port_attribute *attr,
+				     const char *buf, size_t count)
+{
+	struct qib_devdata *dd = dd_from_ibdev(ibdev);
+	struct qib_ibport *qibp = &dd->pport[port_num - 1].ibport_data;
+
+	return qib_store_per_cpu(dd, buf, count, &qibp->rvp.z_rc_delayed_comp,
+				 get_all_cpu_total(qibp->rvp.rc_delayed_comp));
+}
+static IB_PORT_ATTR_RW(rc_delayed_comp);
+
+static struct attribute *port_diagc_attributes[] = {
+	&qib_diagc_attr_rc_resends.attr.attr,
+	&qib_diagc_attr_seq_naks.attr.attr,
+	&qib_diagc_attr_rdma_seq.attr.attr,
+	&qib_diagc_attr_rnr_naks.attr.attr,
+	&qib_diagc_attr_other_naks.attr.attr,
+	&qib_diagc_attr_rc_timeouts.attr.attr,
+	&qib_diagc_attr_loop_pkts.attr.attr,
+	&qib_diagc_attr_pkt_drops.attr.attr,
+	&qib_diagc_attr_dmawait.attr.attr,
+	&qib_diagc_attr_unaligned.attr.attr,
+	&qib_diagc_attr_rc_dupreq.attr.attr,
+	&qib_diagc_attr_rc_seqnak.attr.attr,
+	&qib_diagc_attr_rc_crwaits.attr.attr,
+	&ib_port_attr_rc_acks.attr,
+	&ib_port_attr_rc_qacks.attr,
+	&ib_port_attr_rc_delayed_comp.attr,
+	NULL
 };
 
-static struct kobj_type qib_diagc_ktype = {
-	.release = qib_port_release,
-	.sysfs_ops = &qib_diagc_ops,
-	.default_attrs = diagc_default_attributes
+static const struct attribute_group port_diagc_group = {
+	.name = "linkcontrol",
+	.attrs = port_diagc_attributes,
 };
 
 /* End diag_counters */
 
+static const struct attribute_group *qib_port_groups[] = {
+	&port_linkcontrol_group,
+	&port_ccmgta_attribute_group,
+	&port_sl2vl_group,
+	&port_diagc_group,
+	NULL,
+};
+
 /* end of per-port file structures and support code */
 
 /*
@@ -731,99 +737,7 @@ const struct attribute_group qib_attr_group = {
 int qib_create_port_files(struct ib_device *ibdev, u32 port_num,
 			  struct kobject *kobj)
 {
-	struct qib_pportdata *ppd;
-	struct qib_devdata *dd = dd_from_ibdev(ibdev);
-	int ret;
-
-	if (!port_num || port_num > dd->num_pports) {
-		qib_dev_err(dd,
-			"Skipping infiniband class with invalid port %u\n",
-			port_num);
-		ret = -ENODEV;
-		goto bail;
-	}
-	ppd = &dd->pport[port_num - 1];
-
-	ret = kobject_init_and_add(&ppd->pport_kobj, &qib_port_ktype, kobj,
-				   "linkcontrol");
-	if (ret) {
-		qib_dev_err(dd,
-			"Skipping linkcontrol sysfs info, (err %d) port %u\n",
-			ret, port_num);
-		goto bail_link;
-	}
-	kobject_uevent(&ppd->pport_kobj, KOBJ_ADD);
-
-	ret = kobject_init_and_add(&ppd->sl2vl_kobj, &qib_sl2vl_ktype, kobj,
-				   "sl2vl");
-	if (ret) {
-		qib_dev_err(dd,
-			"Skipping sl2vl sysfs info, (err %d) port %u\n",
-			ret, port_num);
-		goto bail_sl;
-	}
-	kobject_uevent(&ppd->sl2vl_kobj, KOBJ_ADD);
-
-	ret = kobject_init_and_add(&ppd->diagc_kobj, &qib_diagc_ktype, kobj,
-				   "diag_counters");
-	if (ret) {
-		qib_dev_err(dd,
-			"Skipping diag_counters sysfs info, (err %d) port %u\n",
-			ret, port_num);
-		goto bail_diagc;
-	}
-	kobject_uevent(&ppd->diagc_kobj, KOBJ_ADD);
-
-	if (!qib_cc_table_size || !ppd->congestion_entries_shadow)
-		return 0;
-
-	ret = kobject_init_and_add(&ppd->pport_cc_kobj, &qib_port_cc_ktype,
-				kobj, "CCMgtA");
-	if (ret) {
-		qib_dev_err(dd,
-		 "Skipping Congestion Control sysfs info, (err %d) port %u\n",
-		 ret, port_num);
-		goto bail_cc;
-	}
-
-	kobject_uevent(&ppd->pport_cc_kobj, KOBJ_ADD);
-
-	ret = sysfs_create_bin_file(&ppd->pport_cc_kobj,
-				&cc_setting_bin_attr);
-	if (ret) {
-		qib_dev_err(dd,
-		 "Skipping Congestion Control setting sysfs info, (err %d) port %u\n",
-		 ret, port_num);
-		goto bail_cc;
-	}
-
-	ret = sysfs_create_bin_file(&ppd->pport_cc_kobj,
-				&cc_table_bin_attr);
-	if (ret) {
-		qib_dev_err(dd,
-		 "Skipping Congestion Control table sysfs info, (err %d) port %u\n",
-		 ret, port_num);
-		goto bail_cc_entry_bin;
-	}
-
-	qib_devinfo(dd->pcidev,
-		"IB%u: Congestion Control Agent enabled for port %d\n",
-		dd->unit, port_num);
-
-	return 0;
-
-bail_cc_entry_bin:
-	sysfs_remove_bin_file(&ppd->pport_cc_kobj, &cc_setting_bin_attr);
-bail_cc:
-	kobject_put(&ppd->pport_cc_kobj);
-bail_diagc:
-	kobject_put(&ppd->diagc_kobj);
-bail_sl:
-	kobject_put(&ppd->sl2vl_kobj);
-bail_link:
-	kobject_put(&ppd->pport_kobj);
-bail:
-	return ret;
+	return ib_port_sysfs_create_groups(ibdev, port_num, qib_port_groups);
 }
 
 /*
@@ -831,21 +745,9 @@ int qib_create_port_files(struct ib_device *ibdev, u32 port_num,
  */
 void qib_verbs_unregister_sysfs(struct qib_devdata *dd)
 {
-	struct qib_pportdata *ppd;
 	int i;
 
-	for (i = 0; i < dd->num_pports; i++) {
-		ppd = &dd->pport[i];
-		if (qib_cc_table_size &&
-			ppd->congestion_entries_shadow) {
-			sysfs_remove_bin_file(&ppd->pport_cc_kobj,
-				&cc_setting_bin_attr);
-			sysfs_remove_bin_file(&ppd->pport_cc_kobj,
-				&cc_table_bin_attr);
-			kobject_put(&ppd->pport_cc_kobj);
-		}
-		kobject_put(&ppd->diagc_kobj);
-		kobject_put(&ppd->sl2vl_kobj);
-		kobject_put(&ppd->pport_kobj);
-	}
+	for (i = 0; i < dd->num_pports; i++)
+		ib_port_sysfs_remove_groups(&dd->verbs_dev.rdi.ibdev, i,
+					    qib_port_groups);
 }
-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/911e0031e1ed495b0006e8a6efec7b67a702cd5e.1623427137.git.leonro%40nvidia.com.
