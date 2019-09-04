Return-Path: <clang-built-linux+bncBCNODNHUQUJBBCWRYDVQKGQETEB7IYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id D80F6A9495
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Sep 2019 23:11:39 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id b67sf48943qkc.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Sep 2019 14:11:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567631499; cv=pass;
        d=google.com; s=arc-20160816;
        b=zhGJSPX1hWj6VtIWXrQHZN1XGGjLLWCgV7rK7NO0AUfsOg6RZVoTbeGn8JOFcAAUPF
         PzHFU2aJTKRDz9m+NiKeF837U0f++oYzwzFKMlbIjulsPtqZoCUgXYhCQPo7Fmjg971C
         TeTkINSjnA89ax+dsq20iFcaTyJTKWCQgQTlr/dN9QAwhhZeJWSwY7CUGtW+TkS5IKeR
         ChxE4r9r4RX0h3RxgBZeI2scUEhMByiHINZAIv5jX3sAoKfnjjMl7cQr73/+UQU6p8dT
         hC/Pm8MicSultBvfaoZUQPueAqrjEjhleRpvfjFruW0Gd1ZrbN7YaCYG/fWJXqXNoESq
         zQyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=gBsGBNnOvG+g7KtFw+DZFxIyMfkvvIZ5xcPhiCZa5Xg=;
        b=0a3p3lsu8vd5WH/3ZcbBgt0Z1hqBimcpxSvvTJ9Gg1f97RpJN395KKfL8MslMEsEYQ
         6UAY9ysjJU8uB2zSVuza+KlRGV4rpidlsI1yMpIte9IQQ/W+vF0WiNsLX9+SnVK8Bh1s
         0T7aUJRJhcQUEHRLjGmKnecEO8H0etocNvTJ8wSTerKD0Fkpaf9wJ7VQtvwTQcQJQ+vR
         jUQMdUYsiDBN6nKzSiGQXUpU94Gzq429aI6NhYSczn17Djz8V2mX1ebv3G3HOqf18S6T
         Ka2HXwSTUNnMeFbxlEqxwT7VsgahzPaLNvhlgLGmsXkqgOq14YzbDYadizRRuZsqrBqm
         JO8A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=I7iAwvNy;
       spf=pass (google.com: domain of 3ishwxqkkaiw8q7qbq3q0w44w1u.s42@flex--saravanak.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3iShwXQkKAIw8q7qBq3q0w44w1u.s42@flex--saravanak.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gBsGBNnOvG+g7KtFw+DZFxIyMfkvvIZ5xcPhiCZa5Xg=;
        b=FjgJkCowScMUtZx+Z2Tb7JoD1BuyJCFMQHZvnFKHPW40X9OyXj2BKwqaKElRg4c4ce
         VpF+UoN7GKnvNY+0GcBKAIH0h1icdVOpNNFKYU2fk4EDWmgrhomivHTAD+sdhSwJvhBI
         qXDZIStVJwxKQTBpCBoWxTQYK11lSSUUPBa64LHoO4oh7nA1HxtdawhrKzCOyyjw4YI/
         Xx9YYhYi8G5Dubid75mnHNGlbHxJka2WPqaQRMpxZF+zAXfjBjAzBKFQVGMXNORCLMcV
         hqO4G6VQPIBwKv73pELwWh+UOj4yjai1AjksL8vkEUi1kt7+W5qq4+/A/jQaONc6XXUE
         bPtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gBsGBNnOvG+g7KtFw+DZFxIyMfkvvIZ5xcPhiCZa5Xg=;
        b=fP6XCHo+KV/57k9EppKl206Jna79X4nNSz40g8f+QtuCE3I2onVQmZRBQdY0zIy2H1
         rEU//rhyJmZoXLRUSSxi8N8qrStw8HQvzxvwXqoPiCR2Y+f6sR8rJSz++sX4EQp6r+rW
         e9QoETQNuM5JkgcOSU1nJb2YRoH6Rq16IF3cov1t+cM4p1deRKDWRzbppXSlFAqhy5ph
         QPDo+6FYVEk0bfP+GbV+RCySnYGjnj+2O9vX0ZtdL12MnFT0NSAWyW/Li230pE8J1aGP
         KBqoDj99ztjfgWXMdF3IGQUzkUV2PwAPK29zZdx2Sv8NqmDLt5G7EiHA48qMBMgmAC4q
         Rh+w==
X-Gm-Message-State: APjAAAXDgMIbCV4unnxl6sGVf6KtFQNo6w1ZcbtPsSv43g44h6WBzGhD
	VX/5wPgIuMDM3S5STDknLcM=
X-Google-Smtp-Source: APXvYqy70o6OVlx971tJmHdBWZz5V8u5VskeIN4AlcA3I8fGRNN+8vIKxzBvhMpU8HkOBqiYJK9xJQ==
X-Received: by 2002:a37:9984:: with SMTP id b126mr6436700qke.46.1567631498937;
        Wed, 04 Sep 2019 14:11:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:1a73:: with SMTP id q48ls35962qtk.14.gmail; Wed, 04 Sep
 2019 14:11:38 -0700 (PDT)
X-Received: by 2002:ac8:2216:: with SMTP id o22mr98132qto.125.1567631498739;
        Wed, 04 Sep 2019 14:11:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567631498; cv=none;
        d=google.com; s=arc-20160816;
        b=QLGYjEyB4z55iwCvo3Ff2Rc6q7tQqeCDoeBxrq8jWDdDIhMpLUgO9QNXteY4lrFXP0
         Bou+NodThkv9NF6o67H9u3PwV/tg5t2wMEHpmW8TjkXnRMSfEeOUdgFh8DiWIWeYxZtD
         hEaJjZRvPxwPy6uaILGWCFOwRLg7CJBN/BFvbS58zK9MbHT/kKcsWGsG17urwMbO58B8
         H+w4AeYI2Pxhjf83FYcSzuxxv4PDFcJtPTwK/IHBQRDnM0Nnc9zsm0y3S9uY1cgmdD1N
         RAK4DRiqGV6EgKYDw5GEatukSX8pazdOab46TkVoc634h2tFhdZ7urC74B3JgteKTXhJ
         wBQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=EIXukcSdp+uxpQofKUUVCp+AI9LAzuFCZNBqIe/4iSA=;
        b=SeLn/fqG5iVl75G14l/k9N1jktNeI8qd1gOG20FnA+MjsYXcUK002Lj7kvVeNariOt
         xKaUm3010M5JjzDlk8qvsHE+fx6D159xnD6CcSGrT8n9a9M19aJzFKrkqGrZclgQxvzr
         xjJrDoNO2DDg+/P/E4MtK55vSpAsLA/6GV/TkjC3nFmQbrsIbGUuItvZS05DMFbiJhGB
         eiHpxfX5P06A30KbqBl9jCk3zazgCT61GqW+WxMjyE81F99uyZdtfvCYVR5ZpNJQlXd8
         UySqfIgHNNXkuBhKAWL88ulJAcc5yRvzFCaZsfU4wrM5swagQE4EBpTque+lndK9l6j6
         lPug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=I7iAwvNy;
       spf=pass (google.com: domain of 3ishwxqkkaiw8q7qbq3q0w44w1u.s42@flex--saravanak.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3iShwXQkKAIw8q7qBq3q0w44w1u.s42@flex--saravanak.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com. [2607:f8b0:4864:20::549])
        by gmr-mx.google.com with ESMTPS id t53si8786qte.2.2019.09.04.14.11.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Sep 2019 14:11:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ishwxqkkaiw8q7qbq3q0w44w1u.s42@flex--saravanak.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) client-ip=2607:f8b0:4864:20::549;
Received: by mail-pg1-x549.google.com with SMTP id l12so13947040pgt.9
        for <clang-built-linux@googlegroups.com>; Wed, 04 Sep 2019 14:11:38 -0700 (PDT)
X-Received: by 2002:a63:2b84:: with SMTP id r126mr138422pgr.308.1567631497483;
 Wed, 04 Sep 2019 14:11:37 -0700 (PDT)
Date: Wed,  4 Sep 2019 14:11:21 -0700
In-Reply-To: <20190904211126.47518-1-saravanak@google.com>
Message-Id: <20190904211126.47518-3-saravanak@google.com>
Mime-Version: 1.0
References: <20190904211126.47518-1-saravanak@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v11 2/6] driver core: Add support for linking devices during
 device addition
From: "'Saravana Kannan' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Frank Rowand <frowand.list@gmail.com>, Jonathan Corbet <corbet@lwn.net>, Len Brown <lenb@kernel.org>
Cc: Saravana Kannan <saravanak@google.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org, 
	linux-acpi@vger.kernel.org, clang-built-linux@googlegroups.com, 
	David Collins <collinsd@codeaurora.org>, kernel-team@android.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: saravanak@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=I7iAwvNy;       spf=pass
 (google.com: domain of 3ishwxqkkaiw8q7qbq3q0w44w1u.s42@flex--saravanak.bounces.google.com
 designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3iShwXQkKAIw8q7qBq3q0w44w1u.s42@flex--saravanak.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Saravana Kannan <saravanak@google.com>
Reply-To: Saravana Kannan <saravanak@google.com>
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

The firmware corresponding to a device (dev.fwnode) might be able to
provide functional dependency information between a device and its
supplier and consumer devices.  Tracking this functional dependency
allows optimizing device probe order and informing a supplier when all
its consumers have probed (and thereby actively managing their
resources).

The existing device links feature allows tracking and using
supplier-consumer relationships. So, this patch adds the add_links()
fwnode callback to allow firmware to create device links for each
device as the device is added.

However, when consumer devices are added, they might not have a supplier
device to link to despite needing mandatory resources/functionality from
one or more suppliers. A waiting_for_suppliers list is created to track
such consumers and retry linking them when new devices get added.

Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 Documentation/driver-api/device_link.rst |  3 +-
 drivers/base/core.c                      | 88 ++++++++++++++++++++++++
 include/linux/device.h                   |  2 +
 include/linux/fwnode.h                   | 17 +++++
 4 files changed, 109 insertions(+), 1 deletion(-)

diff --git a/Documentation/driver-api/device_link.rst b/Documentation/driver-api/device_link.rst
index 1b5020ec6517..bc2d89af88ce 100644
--- a/Documentation/driver-api/device_link.rst
+++ b/Documentation/driver-api/device_link.rst
@@ -281,7 +281,8 @@ State machine
   :c:func:`driver_bound()`.)
 
 * Before a consumer device is probed, presence of supplier drivers is
-  verified by checking that links to suppliers are in ``DL_STATE_AVAILABLE``
+  verified by checking the consumer device is not in the wait_for_suppliers
+  list and by checking that links to suppliers are in ``DL_STATE_AVAILABLE``
   state.  The state of the links is updated to ``DL_STATE_CONSUMER_PROBE``.
   (Call to :c:func:`device_links_check_suppliers()` from
   :c:func:`really_probe()`.)
diff --git a/drivers/base/core.c b/drivers/base/core.c
index 510fabf8918c..b3896da73b3d 100644
--- a/drivers/base/core.c
+++ b/drivers/base/core.c
@@ -44,6 +44,8 @@ early_param("sysfs.deprecated", sysfs_deprecated_setup);
 #endif
 
 /* Device links support. */
+static LIST_HEAD(wait_for_suppliers);
+static DEFINE_MUTEX(wfs_lock);
 
 #ifdef CONFIG_SRCU
 static DEFINE_MUTEX(device_links_lock);
@@ -430,6 +432,58 @@ struct device_link *device_link_add(struct device *consumer,
 }
 EXPORT_SYMBOL_GPL(device_link_add);
 
+/**
+ * device_link_wait_for_supplier - Add device to wait_for_suppliers list
+ * @consumer: Consumer device
+ *
+ * Marks the @consumer device as waiting for suppliers to become available by
+ * adding it to the wait_for_suppliers list. The consumer device will never be
+ * probed until it's removed from the wait_for_suppliers list.
+ *
+ * The caller is responsible for adding the links to the supplier devices once
+ * they are available and removing the @consumer device from the
+ * wait_for_suppliers list once links to all the suppliers have been created.
+ *
+ * This function is NOT meant to be called from the probe function of the
+ * consumer but rather from code that creates/adds the consumer device.
+ */
+static void device_link_wait_for_supplier(struct device *consumer)
+{
+	mutex_lock(&wfs_lock);
+	list_add_tail(&consumer->links.needs_suppliers, &wait_for_suppliers);
+	mutex_unlock(&wfs_lock);
+}
+
+/**
+ * device_link_add_missing_supplier_links - Add links from consumer devices to
+ *					    supplier devices, leaving any
+ *					    consumer with inactive suppliers on
+ *					    the wait_for_suppliers list
+ *
+ * Loops through all consumers waiting on suppliers and tries to add all their
+ * supplier links. If that succeeds, the consumer device is removed from
+ * wait_for_suppliers list. Otherwise, they are left in the wait_for_suppliers
+ * list.  Devices left on the wait_for_suppliers list will not be probed.
+ *
+ * The fwnode add_links callback is expected to return 0 if it has found and
+ * added all the supplier links for the consumer device. It should return an
+ * error if it isn't able to do so.
+ *
+ * The caller of device_link_wait_for_supplier() is expected to call this once
+ * it's aware of potential suppliers becoming available.
+ */
+static void device_link_add_missing_supplier_links(void)
+{
+	struct device *dev, *tmp;
+
+	mutex_lock(&wfs_lock);
+	list_for_each_entry_safe(dev, tmp, &wait_for_suppliers,
+				 links.needs_suppliers)
+		if (!fwnode_call_int_op(dev->fwnode, add_links, dev))
+			list_del_init(&dev->links.needs_suppliers);
+	mutex_unlock(&wfs_lock);
+}
+
 static void device_link_free(struct device_link *link)
 {
 	while (refcount_dec_not_one(&link->rpm_active))
@@ -564,6 +618,17 @@ int device_links_check_suppliers(struct device *dev)
 	struct device_link *link;
 	int ret = 0;
 
+	/*
+	 * Device waiting for supplier to become available is not allowed to
+	 * probe.
+	 */
+	mutex_lock(&wfs_lock);
+	if (!list_empty(&dev->links.needs_suppliers)) {
+		mutex_unlock(&wfs_lock);
+		return -EPROBE_DEFER;
+	}
+	mutex_unlock(&wfs_lock);
+
 	device_links_write_lock();
 
 	list_for_each_entry(link, &dev->links.suppliers, c_node) {
@@ -848,6 +913,10 @@ static void device_links_purge(struct device *dev)
 {
 	struct device_link *link, *ln;
 
+	mutex_lock(&wfs_lock);
+	list_del(&dev->links.needs_suppliers);
+	mutex_unlock(&wfs_lock);
+
 	/*
 	 * Delete all of the remaining links from this device to any other
 	 * devices (either consumers or suppliers).
@@ -1712,6 +1781,7 @@ void device_initialize(struct device *dev)
 #endif
 	INIT_LIST_HEAD(&dev->links.consumers);
 	INIT_LIST_HEAD(&dev->links.suppliers);
+	INIT_LIST_HEAD(&dev->links.needs_suppliers);
 	dev->links.status = DL_DEV_NO_DRIVER;
 }
 EXPORT_SYMBOL_GPL(device_initialize);
@@ -2202,6 +2272,24 @@ int device_add(struct device *dev)
 	if (dev->fwnode && !dev->fwnode->dev)
 		dev->fwnode->dev = dev;
 
+	/*
+	 * Check if any of the other devices (consumers) have been waiting for
+	 * this device (supplier) to be added so that they can create a device
+	 * link to it.
+	 *
+	 * This needs to happen after device_pm_add() because device_link_add()
+	 * requires the supplier be registered before it's called.
+	 *
+	 * But this also needs to happe before bus_probe_device() to make sure
+	 * waiting consumers can link to it before the driver is bound to the
+	 * device and the driver sync_state callback is called for this device.
+	 */
+	device_link_add_missing_supplier_links();
+
+	if (fwnode_has_op(dev->fwnode, add_links)
+	    && fwnode_call_int_op(dev->fwnode, add_links, dev))
+		device_link_wait_for_supplier(dev);
+
 	bus_probe_device(dev);
 	if (parent)
 		klist_add_tail(&dev->p->knode_parent,
diff --git a/include/linux/device.h b/include/linux/device.h
index f30e80185825..968316bb3bd1 100644
--- a/include/linux/device.h
+++ b/include/linux/device.h
@@ -1136,11 +1136,13 @@ enum dl_dev_state {
  * struct dev_links_info - Device data related to device links.
  * @suppliers: List of links to supplier devices.
  * @consumers: List of links to consumer devices.
+ * @needs_suppliers: Hook to global list of devices waiting for suppliers.
  * @status: Driver status information.
  */
 struct dev_links_info {
 	struct list_head suppliers;
 	struct list_head consumers;
+	struct list_head needs_suppliers;
 	enum dl_dev_state status;
 };
 
diff --git a/include/linux/fwnode.h b/include/linux/fwnode.h
index d8c6d231d577..6ae05b9ce359 100644
--- a/include/linux/fwnode.h
+++ b/include/linux/fwnode.h
@@ -66,6 +66,21 @@ struct fwnode_reference_args {
  *			       endpoint node.
  * @graph_get_port_parent: Return the parent node of a port node.
  * @graph_parse_endpoint: Parse endpoint for port and endpoint id.
+ * @add_links:	Called after the device corresponding to the fwnode is added
+ *		using device_add(). The function is expected to create device
+ *		links to all the suppliers of the device that are available at
+ *		the time this function is called.  The function must NOT stop
+ *		at the first failed device link if other unlinked supplier
+ *		devices are present in the system.  If some suppliers are not
+ *		yet available, this function will be called again when other
+ *		devices are added to allow creating device links to any newly
+ *		available suppliers.
+ *
+ *		Return 0 if device links have been successfully created to all
+ *		the suppliers of this device or if the supplier information is
+ *		not known. Return an error if and only if the supplier
+ *		information is known but some of the suppliers are not yet
+ *		available to create device links to.
  */
 struct fwnode_operations {
 	struct fwnode_handle *(*get)(struct fwnode_handle *fwnode);
@@ -103,6 +118,8 @@ struct fwnode_operations {
 	(*graph_get_port_parent)(struct fwnode_handle *fwnode);
 	int (*graph_parse_endpoint)(const struct fwnode_handle *fwnode,
 				    struct fwnode_endpoint *endpoint);
+	int (*add_links)(const struct fwnode_handle *fwnode,
+			 struct device *dev);
 };
 
 #define fwnode_has_op(fwnode, op)				\
-- 
2.23.0.187.g17f5b7556c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190904211126.47518-3-saravanak%40google.com.
