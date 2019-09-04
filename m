Return-Path: <clang-built-linux+bncBCNODNHUQUJBBEORYDVQKGQEW34LSEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 04495A949D
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Sep 2019 23:11:47 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id j9sf74078plt.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Sep 2019 14:11:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567631505; cv=pass;
        d=google.com; s=arc-20160816;
        b=Zi5D5gxo2Y5Dw9/TOudr7nb6dDV7JEr2oidkhs6BCs1FssDsJ3T8h7GDgIxnmZBBgD
         EXEKD9RyuxwFFgcCvQw6ydc6MStFlVhnufLo+TGUzzONQMl5F/WY6KchinGfhItPE43W
         /HThtaKFqfyixN0xmckKFbGupwdQ/gq03ZtW4R2OMSGbIQpRbI8AsZtUXAsL00ssYs1E
         kDM6HilPOiV6clZOoBTxNCPrcxkB4U/CeznyCMWu6qB6TfIhmcbghmtFudVq1rNEQvl5
         752z/vBEcyHE8Ea6pB4XM4qQ3Z/8XrI42NJzt82db9moQaZNh9QtLeo7iSy9CqQ58Tzc
         edYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=hRBV8kIIGHr9BX6ZBCQy5gSXvAKk6qeGZscUbELwHx4=;
        b=lUyWtjItSUdepVvGxkZ49v7x93E0aJMLmJDtviMv9XPbuzwI0S4lZfHUZyOGehG0sC
         omNlbEUcKZzG2ny/+nyys9Mtjt5euXzBxZ+lpC0+o5eqaCFHjxoATTXIcyO6+5W6UNvs
         uXesLUFA1NtX9rrm0jernrFb46OT0zFED6QXcChy9cA1o2UjYiXCgbNS/4l6DLO2UXXa
         6xnO21N7VAQbVuQ67G/1pFGoaMzh+2tWjOm7et1bjbTGUhZaWgqgJbQ0+ywur/DdNxel
         zUVPqVqAKlw2johqdLjT1VCDeYffV7/y/Tg34XcFSv2akO3Sguk/8yZFDcVcDplARzcO
         lUEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EtncdXs6;
       spf=pass (google.com: domain of 3kchwxqkkajmfxexixax73bb381.zb9@flex--saravanak.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3kChwXQkKAJMFxExIxAx73BB381.zB9@flex--saravanak.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hRBV8kIIGHr9BX6ZBCQy5gSXvAKk6qeGZscUbELwHx4=;
        b=kWp1FV17wD3M98mttXvRluFQ5DBA5Rnjvg8aoCfZ0iY2VfyJXj3Mk3capM7F0xn8mK
         gol6MDAEXRnvkUsstDTt4r07j97aP6J8HjAOVuJLVty2HWMz7BF9iOVOHHQuHYsjPLVO
         0Ou9VNgQL6o/SLRhYwuXCCT4Ldb6LE1I6LoK45X9JU3STFE8UDp86sBEGXyQEnEYhBKh
         e2+4qhz/WPzk6sFAaAS8PIMwyp4dK1dQ5zi2U34RS4r/FRnaVMUTUnaEFiGZDW3Oe295
         xyNG5Ik4EWcx2qobhEZfQfsASthMrBXRiPFlXJqjB3M8NpuThdCNsO8RKaBb5Hh6W72y
         edlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hRBV8kIIGHr9BX6ZBCQy5gSXvAKk6qeGZscUbELwHx4=;
        b=kSicIdJOW9k5MvOIZlLBZJFTKyQvlD8AuDBHlNvGAiS10rN1UQykrC3Hv/umxicoL/
         hLlj5sapIkL5pZK3AmDzYR+RoBSdiiyQ5LnlxVipBzBqzZ28XZZrcmnXxQlrNwlEoguU
         iJtBlUS4RQKd64cWNAfQ0x5jFf76x4PztPOCsFVFsYCFI4Da6j64+ExRGhR6CwA3I/l4
         fFPsmralelEo7iP2B6ktO9Pv43Qkq3C1S7nehmDVBRpx8F+pZJ0P/S/w+4TB8E9BvOY8
         9MpbmfIl/Za/UwASkA7B4DwnwFRhfIZvcVfcDOIRGp/qYebGdsUgqSnSigrb3rsFqi1O
         bLtg==
X-Gm-Message-State: APjAAAUri7bpYzLNlOEpNQnoLW+0ha2lr/4jK0WMbVdY5zlQPfoUOI3F
	MHPLQa3+FIZB6YoUPJJomqI=
X-Google-Smtp-Source: APXvYqwmLc9zYtx35IBBkQobwNe7hYiCvZcztkNrX8x9546n9CdeDRivwEzigO30CsdPqG+Ftem9Mw==
X-Received: by 2002:a62:1d57:: with SMTP id d84mr10393287pfd.99.1567631505705;
        Wed, 04 Sep 2019 14:11:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:ce4e:: with SMTP id y75ls6971579pfg.11.gmail; Wed, 04
 Sep 2019 14:11:45 -0700 (PDT)
X-Received: by 2002:aa7:9486:: with SMTP id z6mr31386745pfk.118.1567631505409;
        Wed, 04 Sep 2019 14:11:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567631505; cv=none;
        d=google.com; s=arc-20160816;
        b=JvzCVFs/hq4tySAwhIejv5liCqqsGWraZ9L9tvVjvprhTbIn2ShR+nJ7DDRASoNecC
         kPM5bt3pevk1ZhLAxf2H4vCVAi+3uSxnK8TbIwINGCByE0MZ6A+7A6nTni1551E8QX6E
         y/0InPAn+X64prMqDy/ET/qokqJRPeS2FqYntKqEu3ajBYvjNXPRZuMiI5Rl71oa577M
         5N/1ifU+rr1GJdQEh+RmoUneqTQp9kxH1TEJJ0gRhcZSYQ7NqgvWrg2sHG1yhvalkkVQ
         7YxMELHgpxGl87yczmR4Chq/UFOs8gH2W8TJfvS3rlghJLsKjgx2DiSLiYnuEPiG5uHw
         I/AA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=16o51+fRGAtBL1knYafYOFrACsjnlPcT58bue7EPSIc=;
        b=k4jhhgFbIRC437rihDR9H8yWVKcfnCzHC4VJWkZjI3EK48Lex23SMKEbI20l5vG54t
         kRizDLEe37wFqjN9et05fFYk9aqrlDeoxtquW/mEc6ox4+s8yXWlt1XPQnWE4tqWTUWk
         tXG2X4E8dx1TquAM1iVCiCG0L/Iput7DHvkTjFYOGxFIeZTKKVFG5ifi6G95GN0ew1qe
         /6W/NjfN+BuxLR8bZT8BPVOizUvGkF456BU3XW0hNEDICUFtrfezEnSYMYkTSLOp5ikZ
         G5YApE5fOid+5mmJ45B40L3aB8nJdwRsXKPPmcAZ3J8JtdUYGsMB3hUn2RVJjbOrYn9z
         uFgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EtncdXs6;
       spf=pass (google.com: domain of 3kchwxqkkajmfxexixax73bb381.zb9@flex--saravanak.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3kChwXQkKAJMFxExIxAx73BB381.zB9@flex--saravanak.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id c11si146655pjo.1.2019.09.04.14.11.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Sep 2019 14:11:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3kchwxqkkajmfxexixax73bb381.zb9@flex--saravanak.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id o1so118427qtp.3
        for <clang-built-linux@googlegroups.com>; Wed, 04 Sep 2019 14:11:45 -0700 (PDT)
X-Received: by 2002:a0c:b5c7:: with SMTP id o7mr6416568qvf.225.1567631504283;
 Wed, 04 Sep 2019 14:11:44 -0700 (PDT)
Date: Wed,  4 Sep 2019 14:11:23 -0700
In-Reply-To: <20190904211126.47518-1-saravanak@google.com>
Message-Id: <20190904211126.47518-5-saravanak@google.com>
Mime-Version: 1.0
References: <20190904211126.47518-1-saravanak@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v11 4/6] driver core: Add sync_state driver/bus callback
From: "'Saravana Kannan' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Frank Rowand <frowand.list@gmail.com>, Jonathan Corbet <corbet@lwn.net>, Len Brown <lenb@kernel.org>
Cc: Saravana Kannan <saravanak@google.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org, 
	linux-acpi@vger.kernel.org, clang-built-linux@googlegroups.com, 
	David Collins <collinsd@codeaurora.org>, kernel-team@android.com, 
	kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: saravanak@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=EtncdXs6;       spf=pass
 (google.com: domain of 3kchwxqkkajmfxexixax73bb381.zb9@flex--saravanak.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3kChwXQkKAJMFxExIxAx73BB381.zB9@flex--saravanak.bounces.google.com;
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

This sync_state driver/bus callback is called once all the consumers
of a supplier have probed successfully.

This allows the supplier device's driver/bus to sync the supplier
device's state to the software state with the guarantee that all the
consumers are actively managing the resources provided by the supplier
device.

To maintain backwards compatibility and ease transition from existing
frameworks and resource cleanup schemes, late_initcall_sync is the
earliest when the sync_state callback might be called.

There is no upper bound on the time by which the sync_state callback
has to be called. This is because if a consumer device never probes,
the supplier has to maintain its resources in the state left by the
bootloader. For example, if the bootloader leaves the display
backlight at a fixed voltage and the backlight driver is never probed,
you don't want the backlight to ever be turned off after boot up.

Also, when multiple devices are added after kernel init, some
suppliers could be added before their consumer devices get added. In
these instances, the supplier devices could get their sync_state
callback called right after they probe because the consumers devices
haven't had a chance to create device links to the suppliers.

To handle this correctly, this change also provides APIs to
pause/resume sync state callbacks so that when multiple devices are
added, their sync_state callback evaluation can be postponed to happen
after all of them are added.

kbuild test robot reported missing documentation for device.state_synced
Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 drivers/base/core.c    | 72 ++++++++++++++++++++++++++++++++++++++++++
 include/linux/device.h | 24 ++++++++++++++
 2 files changed, 96 insertions(+)

diff --git a/drivers/base/core.c b/drivers/base/core.c
index b3896da73b3d..acbf0b1414ab 100644
--- a/drivers/base/core.c
+++ b/drivers/base/core.c
@@ -46,6 +46,8 @@ early_param("sysfs.deprecated", sysfs_deprecated_setup);
 /* Device links support. */
 static LIST_HEAD(wait_for_suppliers);
 static DEFINE_MUTEX(wfs_lock);
+static LIST_HEAD(deferred_sync);
+static unsigned int defer_sync_state_count = 1;
 
 #ifdef CONFIG_SRCU
 static DEFINE_MUTEX(device_links_lock);
@@ -648,6 +650,69 @@ int device_links_check_suppliers(struct device *dev)
 	return ret;
 }
 
+static void __device_links_supplier_sync_state(struct device *dev)
+{
+	struct device_link *link;
+
+	if (dev->state_synced)
+		return;
+
+	list_for_each_entry(link, &dev->links.consumers, s_node) {
+		if (!(link->flags & DL_FLAG_MANAGED))
+			continue;
+		if (link->status != DL_STATE_ACTIVE)
+			return;
+	}
+
+	if (dev->bus->sync_state)
+		dev->bus->sync_state(dev);
+	else if (dev->driver && dev->driver->sync_state)
+		dev->driver->sync_state(dev);
+
+	dev->state_synced = true;
+}
+
+void device_links_supplier_sync_state_pause(void)
+{
+	device_links_write_lock();
+	defer_sync_state_count++;
+	device_links_write_unlock();
+}
+
+void device_links_supplier_sync_state_resume(void)
+{
+	struct device *dev, *tmp;
+
+	device_links_write_lock();
+	if (!defer_sync_state_count) {
+		WARN(true, "Unmatched sync_state pause/resume!");
+		goto out;
+	}
+	defer_sync_state_count--;
+	if (defer_sync_state_count)
+		goto out;
+
+	list_for_each_entry_safe(dev, tmp, &deferred_sync, links.defer_sync) {
+		__device_links_supplier_sync_state(dev);
+		list_del_init(&dev->links.defer_sync);
+	}
+out:
+	device_links_write_unlock();
+}
+
+static int sync_state_resume_initcall(void)
+{
+	device_links_supplier_sync_state_resume();
+	return 0;
+}
+late_initcall(sync_state_resume_initcall);
+
+static void __device_links_supplier_defer_sync(struct device *sup)
+{
+	if (list_empty(&sup->links.defer_sync))
+		list_add_tail(&sup->links.defer_sync, &deferred_sync);
+}
+
 /**
  * device_links_driver_bound - Update device links after probing its driver.
  * @dev: Device to update the links for.
@@ -692,6 +757,11 @@ void device_links_driver_bound(struct device *dev)
 
 		WARN_ON(link->status != DL_STATE_CONSUMER_PROBE);
 		WRITE_ONCE(link->status, DL_STATE_ACTIVE);
+
+		if (defer_sync_state_count)
+			__device_links_supplier_defer_sync(link->supplier);
+		else
+			__device_links_supplier_sync_state(link->supplier);
 	}
 
 	dev->links.status = DL_DEV_DRIVER_BOUND;
@@ -808,6 +878,7 @@ void device_links_driver_cleanup(struct device *dev)
 		WRITE_ONCE(link->status, DL_STATE_DORMANT);
 	}
 
+	list_del_init(&dev->links.defer_sync);
 	__device_links_no_driver(dev);
 
 	device_links_write_unlock();
@@ -1782,6 +1853,7 @@ void device_initialize(struct device *dev)
 	INIT_LIST_HEAD(&dev->links.consumers);
 	INIT_LIST_HEAD(&dev->links.suppliers);
 	INIT_LIST_HEAD(&dev->links.needs_suppliers);
+	INIT_LIST_HEAD(&dev->links.defer_sync);
 	dev->links.status = DL_DEV_NO_DRIVER;
 }
 EXPORT_SYMBOL_GPL(device_initialize);
diff --git a/include/linux/device.h b/include/linux/device.h
index 968316bb3bd1..9f2f2e169f95 100644
--- a/include/linux/device.h
+++ b/include/linux/device.h
@@ -81,6 +81,13 @@ extern void bus_remove_file(struct bus_type *, struct bus_attribute *);
  *		that generate uevents to add the environment variables.
  * @probe:	Called when a new device or driver add to this bus, and callback
  *		the specific driver's probe to initial the matched device.
+ * @sync_state:	Called to sync device state to software state after all the
+ *		state tracking consumers linked to this device (present at
+ *		the time of late_initcall) have successfully bound to a
+ *		driver. If the device has no consumers, this function will
+ *		be called at late_initcall_sync level. If the device has
+ *		consumers that are never bound to a driver, this function
+ *		will never get called until they do.
  * @remove:	Called when a device removed from this bus.
  * @shutdown:	Called at shut-down time to quiesce the device.
  *
@@ -124,6 +131,7 @@ struct bus_type {
 	int (*match)(struct device *dev, struct device_driver *drv);
 	int (*uevent)(struct device *dev, struct kobj_uevent_env *env);
 	int (*probe)(struct device *dev);
+	void (*sync_state)(struct device *dev);
 	int (*remove)(struct device *dev);
 	void (*shutdown)(struct device *dev);
 
@@ -341,6 +349,13 @@ enum probe_type {
  * @probe:	Called to query the existence of a specific device,
  *		whether this driver can work with it, and bind the driver
  *		to a specific device.
+ * @sync_state:	Called to sync device state to software state after all the
+ *		state tracking consumers linked to this device (present at
+ *		the time of late_initcall) have successfully bound to a
+ *		driver. If the device has no consumers, this function will
+ *		be called at late_initcall_sync level. If the device has
+ *		consumers that are never bound to a driver, this function
+ *		will never get called until they do.
  * @remove:	Called when the device is removed from the system to
  *		unbind a device from this driver.
  * @shutdown:	Called at shut-down time to quiesce the device.
@@ -380,6 +395,7 @@ struct device_driver {
 	const struct acpi_device_id	*acpi_match_table;
 
 	int (*probe) (struct device *dev);
+	void (*sync_state)(struct device *dev);
 	int (*remove) (struct device *dev);
 	void (*shutdown) (struct device *dev);
 	int (*suspend) (struct device *dev, pm_message_t state);
@@ -1137,12 +1153,14 @@ enum dl_dev_state {
  * @suppliers: List of links to supplier devices.
  * @consumers: List of links to consumer devices.
  * @needs_suppliers: Hook to global list of devices waiting for suppliers.
+ * @defer_sync: Hook to global list of devices that have deferred sync_state.
  * @status: Driver status information.
  */
 struct dev_links_info {
 	struct list_head suppliers;
 	struct list_head consumers;
 	struct list_head needs_suppliers;
+	struct list_head defer_sync;
 	enum dl_dev_state status;
 };
 
@@ -1218,6 +1236,9 @@ struct dev_links_info {
  * @offline:	Set after successful invocation of bus type's .offline().
  * @of_node_reused: Set if the device-tree node is shared with an ancestor
  *              device.
+ * @state_synced: The hardware state of this device has been synced to match
+ *		  the software state of this device by calling the driver/bus
+ *		  sync_state() callback.
  * @dma_coherent: this particular device is dma coherent, even if the
  *		architecture supports non-coherent devices.
  *
@@ -1314,6 +1335,7 @@ struct device {
 	bool			offline_disabled:1;
 	bool			offline:1;
 	bool			of_node_reused:1;
+	bool			state_synced:1;
 #if defined(CONFIG_ARCH_HAS_SYNC_DMA_FOR_DEVICE) || \
     defined(CONFIG_ARCH_HAS_SYNC_DMA_FOR_CPU) || \
     defined(CONFIG_ARCH_HAS_SYNC_DMA_FOR_CPU_ALL)
@@ -1656,6 +1678,8 @@ struct device_link *device_link_add(struct device *consumer,
 				    struct device *supplier, u32 flags);
 void device_link_del(struct device_link *link);
 void device_link_remove(void *consumer, struct device *supplier);
+void device_links_supplier_sync_state_pause(void);
+void device_links_supplier_sync_state_resume(void);
 
 #ifdef CONFIG_DEVICE_NOTIFICATIONS
 extern void post_device_notification(struct watch_notification *n, u64 id);
-- 
2.23.0.187.g17f5b7556c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190904211126.47518-5-saravanak%40google.com.
