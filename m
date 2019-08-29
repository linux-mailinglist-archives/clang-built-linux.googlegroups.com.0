Return-Path: <clang-built-linux+bncBCNODNHUQUJBBREFT3VQKGQENOY54QQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BEC9A12CF
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 09:46:14 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id b18sf1505145pgg.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 00:46:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567064773; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ygj7DH/D6kR2rv0sNlxYvBooOHJwXIevMFpxbn0z70Xq0eU4IXvqoeQpznAMoH6GNR
         dOEyUtZDpLTNfIcqoc8v88GaFLnzu27nlISeXEg1kc5xrzKUgE/LpqMCuOwoIMu1g8QR
         jFBP1hIBSmyKV8zk7WPiTxWz+7FsD5bRLCzfzn6AZkkoA02PlFUBmY4XtsnamPvuo4Y5
         YsrDsidnPKAjPhAaV5KIXBFyleh9reOIs2Nz45OeGsiCECgCrE/8clzmEzhxGgizWQwx
         6p1vMsJ3daT0Zr2nTcWvY2FmgiQppmVbxsuwhAqkq6UQOrxKxY27FaDvcvgZN+ZGQJxq
         BS5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=6S+CQ+TPZlPBrXG/REfj327bUoiz0qFU9E/TtL/z9ho=;
        b=fqDqASzqOZM4HLIMIKl7Z6lWz1DSl0sw5MgpDZG11tjyH299J/oVmjUPzj1DkAyooY
         RUtMhylDCFoOol+5DVlzJWrhyyO53GwgmsjYrJhjRtHdbsuL2wpWGJPlnTDSLv2l68+c
         Z1gYgNTOr2s11SPixOwgLb0X8M1ku0JQbwYDKYRQBMzG/XnxfyEk4OqXc5ni8j7CqQ3E
         0M3Va1chHWvP92yGLh6wulYVBB5Oa6HnEHB8vKFAqDWt1uQ1lo5Ap/Yl/vnUNlnlpbPN
         KtDKkTEKBUA3kKHds0Sn9nzkBjZMMNQhaNU+lHCCRB3XoMwCzL4V1/jKA4IDFoTQI/S4
         wStw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Yjxatas0;
       spf=pass (google.com: domain of 3w4jnxqkkafgi0h0l0d0a6ee6b4.2ec@flex--saravanak.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3w4JnXQkKAFgI0H0L0D0A6EE6B4.2EC@flex--saravanak.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6S+CQ+TPZlPBrXG/REfj327bUoiz0qFU9E/TtL/z9ho=;
        b=tMej7QZo0XmoIHnKsZmwCxm3Ae6bJAwROE0jtRvx66X88c1sXUHVaUrhs0mSuBNmh+
         27rW+i7i2HnhiTTiIs7s5qp2IXJ4eLavolDWyJUJ1xmASybrM0Ei78sTlyQmHHFixA3J
         PH9GmSsF9GmUfWTXdvWwcXv/9uw6LYoaBxLDHtS2M+ZFEv3yytQjtsSO6yT8NwT38c7Y
         PJbDqPhgMvgN8f0K+Vg77O28dtZC4O5zmj5hOYMwe+wfhCE3gkIJjxSNlqvdiIe7pyKY
         uUu9LPH1XsRzbf4FOT6IgMVLhpuqU5bt0WTcz3wAA7TaRQgzKDPRe60xG8caLZh8FPE6
         n2CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6S+CQ+TPZlPBrXG/REfj327bUoiz0qFU9E/TtL/z9ho=;
        b=X86VccRVcIb8VQb1G0H/K4LrVsLXwKyFewA9KH8mRfdiUwWanjcQSyXBlO+2A/JMe7
         /lwqknrHECekZVkBwYZCxAZ7NMFqJjTOlUs721E3I/QRNtl/GHgHN/wGFZXO9ptDHqV/
         kyiMhyoZl8fPY0bj1x9UensHBgrbUKS2xZqiCmMFmWKak3UjxzrGtPEtz2sdTzSc1qKc
         tnXtViT86JDQYJj86NGHLhZYMDtj8BDl6kmT++MIuqUq9gquMbc3vNloQX7GrNNFogQK
         RmRpc0IHrkmQ8jF6/bNRQhpjUDgzTAE/6cvAbmg5mj9fPmJtbyFfa/vT4Sk4sDOHW9JO
         9Qww==
X-Gm-Message-State: APjAAAXD2aG0mfnff7y3oK0Y44E7Qb7wlrumx+srk6kY7uAD2mzqbXi/
	tckOtYOZooYDO1cWiSpwb3w=
X-Google-Smtp-Source: APXvYqzEq+Dj8a+FPRy2mpxyH9Z7pXoHfLlR89yEyPJjJ7Go6V47x8ivw7H9Aa+BIqVsRQ3NSGnyOQ==
X-Received: by 2002:a17:90a:a78b:: with SMTP id f11mr8654591pjq.16.1567064772808;
        Thu, 29 Aug 2019 00:46:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:db53:: with SMTP id u19ls530884pjx.3.gmail; Thu, 29
 Aug 2019 00:46:12 -0700 (PDT)
X-Received: by 2002:a17:90a:c20e:: with SMTP id e14mr8883264pjt.0.1567064772494;
        Thu, 29 Aug 2019 00:46:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567064772; cv=none;
        d=google.com; s=arc-20160816;
        b=spyC3dyS9Lw4YNhtpRi89ScnpsewyavLQI/ZuIKxR+s4oW19IG6L8PHwjYKvVhYtWC
         NvLAdkQSIBczph+SEeNsN4rPdfQ/IsqmA8y5ovX6FuyBvjsOdgZZ3KBUu3dsEpMKSe2V
         dSGUnoi4JP1v5YS4oruB8eKulUaE5VSBHnQ/kO0lDQdYHYIUIWGihqVByPODQPOjSQr4
         iqHwCN6BAFcfuJohMx03TeYmukMkgr5SevxfB+A5WTVdA1UUdRXCvcGlfrHrNNOdZwMr
         +7H1JSfNojvrPNuWwGCjkqhCp/Aw7h4VGfmWZX+xfzNIkYg1Wk+uxYAbgXEgVEMhugUV
         CmEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=g9neP1BMd9+Wtn3CRZXwPOPnH9RFKMYcA30E3wwujtE=;
        b=C8f8KgH2M0dNF+0MRPMbyipCCi5oLCS2T7EmO7SPfnBBMp4UJsEA4mwXpkaZaOFS1r
         rAM9byiIzV3cL45QUNYoRQBYNse3gf/TY4GmOno/Hum/3nRn94Gcip1NbehINEZG6fqd
         X+wFBhCWFzF51j53gkJjx3bXvLsHhYv1Rnx+coTx9wZ/XbyYQVcWDWhKgOMpzLJYRlO/
         tFb73eijmvf88wfvbEi7uJgdGW5+nf7EdRltXUEvgsYIKN26OWMHKvUOcWUcW9Q1xi04
         phm7n4VlCWW2qkkE32hkCkZ+Wb9yGeFhuccGkEfk7leXRGiFak6MYHlHHH3k7LghJZio
         hJCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Yjxatas0;
       spf=pass (google.com: domain of 3w4jnxqkkafgi0h0l0d0a6ee6b4.2ec@flex--saravanak.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3w4JnXQkKAFgI0H0L0D0A6EE6B4.2EC@flex--saravanak.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id h136si136547pfe.3.2019.08.29.00.46.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Aug 2019 00:46:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3w4jnxqkkafgi0h0l0d0a6ee6b4.2ec@flex--saravanak.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id r17so597140pfr.19
        for <clang-built-linux@googlegroups.com>; Thu, 29 Aug 2019 00:46:12 -0700 (PDT)
X-Received: by 2002:a63:2b84:: with SMTP id r126mr7241298pgr.308.1567064771823;
 Thu, 29 Aug 2019 00:46:11 -0700 (PDT)
Date: Thu, 29 Aug 2019 00:45:57 -0700
In-Reply-To: <20190829074603.70424-1-saravanak@google.com>
Message-Id: <20190829074603.70424-2-saravanak@google.com>
Mime-Version: 1.0
References: <20190829074603.70424-1-saravanak@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v10 1/7] driver core: Add support for linking devices during
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
 header.i=@google.com header.s=20161025 header.b=Yjxatas0;       spf=pass
 (google.com: domain of 3w4jnxqkkafgi0h0l0d0a6ee6b4.2ec@flex--saravanak.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3w4JnXQkKAFgI0H0L0D0A6EE6B4.2EC@flex--saravanak.bounces.google.com;
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
 drivers/base/core.c                      | 89 ++++++++++++++++++++++++
 include/linux/device.h                   |  2 +
 include/linux/fwnode.h                   | 17 +++++
 4 files changed, 110 insertions(+), 1 deletion(-)

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
index 2db62d98e395..39633bb75f0f 100644
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
@@ -2198,6 +2268,25 @@ int device_add(struct device *dev)
 					     BUS_NOTIFY_ADD_DEVICE, dev);
 
 	kobject_uevent(&dev->kobj, KOBJ_ADD);
+
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
index ec598ede9455..76458cfbb267 100644
--- a/include/linux/device.h
+++ b/include/linux/device.h
@@ -1131,11 +1131,13 @@ enum dl_dev_state {
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
index a11c8c56c78b..068b0024adef 100644
--- a/include/linux/fwnode.h
+++ b/include/linux/fwnode.h
@@ -65,6 +65,21 @@ struct fwnode_reference_args {
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
@@ -102,6 +117,8 @@ struct fwnode_operations {
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190829074603.70424-2-saravanak%40google.com.
