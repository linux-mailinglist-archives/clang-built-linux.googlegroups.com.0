Return-Path: <clang-built-linux+bncBDMMLW4BXYHBBYNM66CQMGQECOTLQ3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6058339D701
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Jun 2021 10:18:42 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id u48-20020a25ab330000b029053982019c2dsf21304901ybi.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 01:18:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623053921; cv=pass;
        d=google.com; s=arc-20160816;
        b=KqhEAA309LuFQxrubFCvplfOmQ+e93sd3nDK8GEaCAJyYjg/MSiYKW0FTqJxc5ngxb
         aAZWSb1534qcXXwH6iun3Z3ky+15V5SGFmi2GPBx4ENNF22nyZol6hYpqr6mB/9JsK9Q
         wIGL1vnmhmUEzqEaM0gF737XtHKAawvld0iXD7Fa+1xQTJry0Zfhq1wSI7PIlHtcSjbi
         gNtBv8tNSVzQxLMkV2Wt3G8LvZnIIUZf2EQ3NtT5kAgt2htjZ37QPr/OlWkKgjZGJGp1
         4QLWPLN4E+k1on8nIZAw7It2jMqrHlkdW4nULtsElYHh/P3col5hsqMn/MlvNDrDQrll
         w4LA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=1dSnx+R9T4ju6j96k+PspXPhbflCMD74n2Lq3F4oOkE=;
        b=ZiRCBlQi396/CvOwCMmaPPTDG5Y87kcx0yzJxviRUPh72IyE7Ei95CfTwIGBMxa7P2
         0UgPTyvfjswxByGEAqzJzk6ImpK/3w9eQkZYa7Gbkm1n5fg6XTcQDuj5roVmszNUHun4
         yqTVzGyvQIKz8gl6CdDlSKXv+vr7bFHIwCMfnOoEYumSY67S7cWUlhIiy4O1IMzFVNOn
         Jed70sDqJcu/DPakYzUwuAg1IefyJcy3hp414HzFNrrPiyyIdvn27bd3kYVoK6jFlCVp
         m/pSLGg88la6MXMopjezBsPmfWagroJy8LSEpur977X2O9B7btJYCkKcOx/7retRFCww
         HnKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=pAvTQ7yL;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1dSnx+R9T4ju6j96k+PspXPhbflCMD74n2Lq3F4oOkE=;
        b=b318gd7PKRWe9MSRk7uaGulAm5rbxUnjkamNllmbWdfKS0AQ9xi0F7Hj7WuKfMHx6k
         fZZyfosAjIKTWPsApn7X5uWiAYA8Dkaz9kK91BnNtonwgWjDq4VDIjW/xdBsT7zRkIc1
         EP8JB3P1lU/O9KCPmJfW7u9o8Arv3eV5IoXosb8n31eMMvpwBYuT8bsZcU4aS1Uo3rGQ
         vXNLM6NWi5vpOvUqDsdb26XOb64t//Umux5NTA5eBsWz6AQprVMFsdOlh0KTlTECv2oY
         SVYjSohxwp4JVOanaX+4Uu2aSju3YdxOxK8rOPDz+9krKHom4UCXJdOoZg2Wupp0PEqy
         CYtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1dSnx+R9T4ju6j96k+PspXPhbflCMD74n2Lq3F4oOkE=;
        b=bDMJV/UVY1yu2YWrUykPCkp7n8QnKywyGT9piSQAAw7JUuR3h08+g78yfYcgWXbGZv
         uEhGKTtTNZh4nFA5t742K+OHZ135Ro11CMpARvpIsB0lBGVDC8xFJzEWULw1PWjA7OHC
         oeggnJ36QE7NvSZl07wkzzay3SggiaWcW2a5/qXlRElibZXrInCKp9oJwTKUkFppvZ8N
         7zy8Os0qQcD0E9r6uvHd9YL/ol8IiBdE21kpHAeytGEPVUn5rKhO8iUFDCPP8o0cXzLw
         P95ELGNKcCv0xGzhsYv+4NnDZPZXuAWvGnm9Iqk5cm6ePqnb/QqbS+Bfs2ni2EPMGkDr
         J+hg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532penJKe9RLP46aArcwisjkcWHFZ53/1ydEc4WeqJztCG7nCf3X
	dbxGc6sQMSLhHL0iPjyT8L8=
X-Google-Smtp-Source: ABdhPJzLBwYTBd4roub+H5RRq+QNJr4Rv99VA2Nek+9IhkYYd+tfv9Pch0PFmUQeix4HY+FL4vK2nw==
X-Received: by 2002:a25:75d6:: with SMTP id q205mr20786328ybc.339.1623053921271;
        Mon, 07 Jun 2021 01:18:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:be92:: with SMTP id i18ls7827286ybk.7.gmail; Mon, 07 Jun
 2021 01:18:40 -0700 (PDT)
X-Received: by 2002:a25:d447:: with SMTP id m68mr22376542ybf.252.1623053920813;
        Mon, 07 Jun 2021 01:18:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623053920; cv=none;
        d=google.com; s=arc-20160816;
        b=ZjloIU4wsuGkgseBmvvuiEAtDjTa8jMtGeNA22Zp0Il3M8Dso0lB7EL4VPTrX4HgSM
         /qCUwB+0cDwrTumPtJYIydzkm7Dw9FyMqVFg1oAPgwzhry4eUTiBMEqxTugcyeG5Aod0
         7tgp1Xm/N7ib71EMhyUWvCUaQ4+9PhOd4B8QklizM1mS9I+GpmGcPxp7bTMx2kN+lDN9
         rCo697AuiZqGgQ0MQ+avCmDYsAR+/6W+pn3Krl9vJoeSbZzM6rWKFwZBy0/aZvU5iUnR
         uNabKBTPYASaPGxLU7Jy+jLMMQZB2FaegNMg4pS0SoMjDcSuJZi9NpI/9MrnLd7Ug/Ag
         CmIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=kOu7aNlnIAjw2QJQ2ktHrhDJAa3JdhFXCErF6fc+FqY=;
        b=FASOf7zbCszax0TtOh81ypk2CN6gMIurUcXha+rph4+WdJ5unhIk0Z6DfVWpMJK/BY
         /qKGPlKwopnmsgdz8+DcWS2h9gQ3ZNaX302ZcV0svcNP5z9tsQ6Al49/0uymt1oVN8kX
         4eLYtatQ2I9aiz+siqpv2LqAykDbTmtGYzGfBzvcRmAEUXNlf+1YaIa8BTft60tgkqkH
         pd1HWMd1aQ/0mErZDt0SoHzOVFf98q01LdksmYFogrluor2YKW2bliCVXu29prrlHAJV
         La/Je8iuujmIYBXZveNATu4AZnbDzno32mRcZTgsauIawlVK46HNnfIvXep0r6IHTkYp
         0TqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=pAvTQ7yL;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g10si1706772ybc.2.2021.06.07.01.18.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Jun 2021 01:18:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id D3D1161029;
	Mon,  7 Jun 2021 08:18:38 +0000 (UTC)
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
Subject: [PATCH rdma-next v1 11/15] RDMA/qib: Use attributes for the port sysfs
Date: Mon,  7 Jun 2021 11:17:36 +0300
Message-Id: <00757c8d127b5a5d45fa9834c73e70a12cb4da0b.1623053078.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1623053078.git.leonro@nvidia.com>
References: <cover.1623053078.git.leonro@nvidia.com>
MIME-Version: 1.0
X-Original-Sender: leon@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=pAvTQ7yL;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/00757c8d127b5a5d45fa9834c73e70a12cb4da0b.1623053078.git.leonro%40nvidia.com.
