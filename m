Return-Path: <clang-built-linux+bncBCNODNHUQUJBBS4FT3VQKGQEJ3LZI4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F012A12D4
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 09:46:21 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id f40sf2058089ybj.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 00:46:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567064780; cv=pass;
        d=google.com; s=arc-20160816;
        b=bKiHl1kM4JA9Vvk8l58MlUlqEsiJlPAujpRyVOuwx8GhxvJnnRX8EoGo4hiUqnxmyB
         TqIg2aGuOTSBHT/8CV7EWO1CzufspLWQxn9JIqx3SMocADF2nBI6LLNNxdJjFguC6ghI
         ihKEBTtZtA8vh/q5WE3W1axEd4vuwtBw0H4Lg3xmOBUX5nolI09D4R5oeuqpSeqLvd2S
         seICVKWNBXUhUnWZUAQW2vX7YlttU5mQUM4JIVxUn9O/DQiD1VhV9akdV5ZptsweLAqn
         ENVwjE3ssWRWzUM7HFt3+NtJJrFQMc/PINbor+IHm2E5P56gqn/dseDIXmQdyG8CBIrX
         2Nxg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=hEcMXuknH+CQcgKHw/0VTfktxnTi7Dd0VMbUf/Anuyo=;
        b=u7I67J8yvjAteRTUOaCRg3qsOF7WcWo7ftQL3q6taFN7e/9YjsihTeHz6Lsxl4Ri8t
         4fpIVG9j8ut2pcwvLrUnLJXxD64s4D6cGjE1jrrbywOmBu4x0f0YaKdIhGta6NAqAtXj
         QWhCsf4YYDSOSn6COkreS08J48iR0YfgNSVQ6s1I7WpFVplfPgALa5xrlu+NRBKUe4Jb
         4j6f1yDUuJ2/ZwV0U/j7pSfiSRzJelzGwnwJFQ9fQd1nKKiwhyks6vB4otIlRIkltHpg
         NJbJItW/5mXtnKnrF3h7y3RgViW5m2QtmvgmOx+X4Goi4/u40/QdDHWqv+mBGyk2oeBW
         Urpw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="H/wSFEaN";
       spf=pass (google.com: domain of 3yojnxqkkaf8p7o7s7k7hdlldib.9lj@flex--saravanak.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3yoJnXQkKAF8P7O7S7K7HDLLDIB.9LJ@flex--saravanak.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hEcMXuknH+CQcgKHw/0VTfktxnTi7Dd0VMbUf/Anuyo=;
        b=mYAXkfqCLzNUV5Ds6Q1v+n8Z4GPn9adJsmCFT7xsQf8sN7Ov0CmtJzkbHzkN69XAHy
         mfkibEMF4R3+kSRqVq+i507Vby1XkaL6lX8uocmOFi1I2T9qYcng0EmAq8HhptyzPJJx
         0HgAWEQl11fz0bwB7pMy0+XVDeSRzYJJDXXeXamVbl/YOYxbfke5bwQ6XN9sWShFavdp
         UtQWMMa4IzjvTADB/Px8vBnanCMQ81Pl+EbC/XI3fpglwxfonYEaevUvB2bkUq3ozYCF
         7+MpxImmuBLv5O3c/XegvShSwRtA99jQYmXIyBd21Lv2eWs+ddVFxuNiXQLUH4K17nAM
         MXIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hEcMXuknH+CQcgKHw/0VTfktxnTi7Dd0VMbUf/Anuyo=;
        b=fp1J7Dk/wYf0k7h/RFmGSJc8zkvEVLO4M74nbU7qlWpaas5ta+bI33F9EnOeorAyC0
         xlFlOMqxahmM0RdBxQ3j+6QR3jXbfpz9pP3YxbACNkMQm3pg3pzbUE/J6HR/8JTpAY4C
         p4sNYeE4kUZFbJGGXmtGkdVawHtU2TFNRyCE4lnhSa92dZaJYAfBgGMvrUd860yLhBTq
         hk3na5dOldaVsbFilkCW+B8OU+bBqfi8BVbEoEoEcRPcVBJEN0bYVUq6E0uaU3kGwm3d
         odwLJIml/g3koPDFkL1aE9D86uPGh57PU8iytz8FScm7bbZpvA19bI69m/5xNqbF0EpF
         IOig==
X-Gm-Message-State: APjAAAVOG3aoRePkQ7QMhEyONOmcHT6cjkvkIxI5XBYCddMXEiQ08ZCO
	1RV6jSZiW+UU+3nHF4GFPWQ=
X-Google-Smtp-Source: APXvYqzyF3CM1VSJhqit8Oqqwp+FNJ792gASRmmqdgjZI45ZgeipwYPf8W1chTdmd/O6VcChp0yuCg==
X-Received: by 2002:a25:8b01:: with SMTP id i1mr5862704ybl.342.1567064779924;
        Thu, 29 Aug 2019 00:46:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:8c8:: with SMTP id 191ls259611ybi.11.gmail; Thu, 29 Aug
 2019 00:46:19 -0700 (PDT)
X-Received: by 2002:a25:a2c1:: with SMTP id c1mr6034875ybn.177.1567064779656;
        Thu, 29 Aug 2019 00:46:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567064779; cv=none;
        d=google.com; s=arc-20160816;
        b=VFEErd7+TUKhPeZa0TyjZq9IUNkHYI7sNLpW6os+vhiQQlzdn6Q3GrJ0YRPiRz7PSx
         3vsJSkjG+OUoJvLniEwSWN6YULW4qtcpefHVZSBZ26I9W2KYwVMXM29yselc86vf6ZB2
         /7W/SDNIninjdak5JVYMyfyXlNNac/K44cln0KDrP0fIkto9QxLiKGaFT4aAhNsKmK/z
         zKHXhUbEjB9t/0v8B7yC1Jn2Bv3d5NQc1kUI/G1Dv3togv/gzWJ69oOO1wJFR1opyLCV
         GjTiVkxBtPvTuFtjt5q3CpsU0PIygIPsZla2nn3Vi9YTLuVxJ5TfBm8h+d5ol1LUo7Nk
         EGIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=clQn5smHaXibZ7cDcawjYf/96GrLwIoU4JeSrK4yhyY=;
        b=htxRQqWOFGdXzmNyo6HQDrSEEERjUQk2bQYfwj5TKrmzjuCJeppsHL0G9OpZhOwR08
         SIElVnwgbMslMfw1uO5A4qRYFKYSOF2bxBxyi0Q4AP4U/kB1aTh94PzG3dicBgxfn/ir
         tTe9fABOg2rm8OOGx9RJy5mETveFgPkPfjJjlhQMllCVC3kpfs6aFN6X6B6zKek7YWk+
         gHQ8/kfvoeAilGRM0AmYc82tQz+H7FTh4VqVZRIGA/C2Q7Jdrm3xn2KDCM3QrRoKRGh8
         iIZpKNeQKhAY5gvLgMrxZSNtuvNuY2Q3T+j0mIRYhq+F3EFbPW+jwWUrtRHmYiSCgGm9
         GuSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="H/wSFEaN";
       spf=pass (google.com: domain of 3yojnxqkkaf8p7o7s7k7hdlldib.9lj@flex--saravanak.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3yoJnXQkKAF8P7O7S7K7HDLLDIB.9LJ@flex--saravanak.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com. [2607:f8b0:4864:20::549])
        by gmr-mx.google.com with ESMTPS id c76si126883ybf.3.2019.08.29.00.46.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Aug 2019 00:46:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3yojnxqkkaf8p7o7s7k7hdlldib.9lj@flex--saravanak.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) client-ip=2607:f8b0:4864:20::549;
Received: by mail-pg1-x549.google.com with SMTP id g126so1485464pgc.22
        for <clang-built-linux@googlegroups.com>; Thu, 29 Aug 2019 00:46:19 -0700 (PDT)
X-Received: by 2002:a63:ee04:: with SMTP id e4mr7029591pgi.53.1567064778413;
 Thu, 29 Aug 2019 00:46:18 -0700 (PDT)
Date: Thu, 29 Aug 2019 00:45:59 -0700
In-Reply-To: <20190829074603.70424-1-saravanak@google.com>
Message-Id: <20190829074603.70424-4-saravanak@google.com>
Mime-Version: 1.0
References: <20190829074603.70424-1-saravanak@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v10 3/7] driver core: Add sync_state driver/bus callback
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
 header.i=@google.com header.s=20161025 header.b="H/wSFEaN";       spf=pass
 (google.com: domain of 3yojnxqkkaf8p7o7s7k7hdlldib.9lj@flex--saravanak.bounces.google.com
 designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3yoJnXQkKAF8P7O7S7K7HDLLDIB.9LJ@flex--saravanak.bounces.google.com;
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
 drivers/base/core.c    | 65 ++++++++++++++++++++++++++++++++++++++++++
 include/linux/device.h | 24 ++++++++++++++++
 2 files changed, 89 insertions(+)

diff --git a/drivers/base/core.c b/drivers/base/core.c
index 39633bb75f0f..5e79d5820e79 100644
--- a/drivers/base/core.c
+++ b/drivers/base/core.c
@@ -46,6 +46,8 @@ early_param("sysfs.deprecated", sysfs_deprecated_setup);
 /* Device links support. */
 static LIST_HEAD(wait_for_suppliers);
 static DEFINE_MUTEX(wfs_lock);
+static LIST_HEAD(deferred_sync);
+static unsigned int supplier_sync_state_disabled;
 
 #ifdef CONFIG_SRCU
 static DEFINE_MUTEX(device_links_lock);
@@ -648,6 +650,62 @@ int device_links_check_suppliers(struct device *dev)
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
+	supplier_sync_state_disabled++;
+	device_links_write_unlock();
+}
+
+void device_links_supplier_sync_state_resume(void)
+{
+	struct device *dev, *tmp;
+
+	device_links_write_lock();
+	if (!supplier_sync_state_disabled) {
+		WARN(true, "Unmatched sync_state pause/resume!");
+		goto out;
+	}
+	supplier_sync_state_disabled--;
+	if (supplier_sync_state_disabled)
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
+static void __device_links_supplier_defer_sync(struct device *sup)
+{
+	if (list_empty(&sup->links.defer_sync))
+		list_add_tail(&sup->links.defer_sync, &deferred_sync);
+}
+
 /**
  * device_links_driver_bound - Update device links after probing its driver.
  * @dev: Device to update the links for.
@@ -692,6 +750,11 @@ void device_links_driver_bound(struct device *dev)
 
 		WARN_ON(link->status != DL_STATE_CONSUMER_PROBE);
 		WRITE_ONCE(link->status, DL_STATE_ACTIVE);
+
+		if (supplier_sync_state_disabled)
+			__device_links_supplier_defer_sync(link->supplier);
+		else
+			__device_links_supplier_sync_state(link->supplier);
 	}
 
 	dev->links.status = DL_DEV_DRIVER_BOUND;
@@ -808,6 +871,7 @@ void device_links_driver_cleanup(struct device *dev)
 		WRITE_ONCE(link->status, DL_STATE_DORMANT);
 	}
 
+	list_del_init(&dev->links.defer_sync);
 	__device_links_no_driver(dev);
 
 	device_links_write_unlock();
@@ -1782,6 +1846,7 @@ void device_initialize(struct device *dev)
 	INIT_LIST_HEAD(&dev->links.consumers);
 	INIT_LIST_HEAD(&dev->links.suppliers);
 	INIT_LIST_HEAD(&dev->links.needs_suppliers);
+	INIT_LIST_HEAD(&dev->links.defer_sync);
 	dev->links.status = DL_DEV_NO_DRIVER;
 }
 EXPORT_SYMBOL_GPL(device_initialize);
diff --git a/include/linux/device.h b/include/linux/device.h
index 76458cfbb267..7ab29bb3eb8c 100644
--- a/include/linux/device.h
+++ b/include/linux/device.h
@@ -80,6 +80,13 @@ extern void bus_remove_file(struct bus_type *, struct bus_attribute *);
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
@@ -123,6 +130,7 @@ struct bus_type {
 	int (*match)(struct device *dev, struct device_driver *drv);
 	int (*uevent)(struct device *dev, struct kobj_uevent_env *env);
 	int (*probe)(struct device *dev);
+	void (*sync_state)(struct device *dev);
 	int (*remove)(struct device *dev);
 	void (*shutdown)(struct device *dev);
 
@@ -340,6 +348,13 @@ enum probe_type {
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
@@ -379,6 +394,7 @@ struct device_driver {
 	const struct acpi_device_id	*acpi_match_table;
 
 	int (*probe) (struct device *dev);
+	void (*sync_state)(struct device *dev);
 	int (*remove) (struct device *dev);
 	void (*shutdown) (struct device *dev);
 	int (*suspend) (struct device *dev, pm_message_t state);
@@ -1132,12 +1148,14 @@ enum dl_dev_state {
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
 
@@ -1213,6 +1231,9 @@ struct dev_links_info {
  * @offline:	Set after successful invocation of bus type's .offline().
  * @of_node_reused: Set if the device-tree node is shared with an ancestor
  *              device.
+ * @state_synced: The hardware state of this device has been synced to match
+ *		  the software state of this device by calling the driver/bus
+ *		  sync_state() callback.
  * @dma_coherent: this particular device is dma coherent, even if the
  *		architecture supports non-coherent devices.
  *
@@ -1309,6 +1330,7 @@ struct device {
 	bool			offline_disabled:1;
 	bool			offline:1;
 	bool			of_node_reused:1;
+	bool			state_synced:1;
 #if defined(CONFIG_ARCH_HAS_SYNC_DMA_FOR_DEVICE) || \
     defined(CONFIG_ARCH_HAS_SYNC_DMA_FOR_CPU) || \
     defined(CONFIG_ARCH_HAS_SYNC_DMA_FOR_CPU_ALL)
@@ -1651,6 +1673,8 @@ struct device_link *device_link_add(struct device *consumer,
 				    struct device *supplier, u32 flags);
 void device_link_del(struct device_link *link);
 void device_link_remove(void *consumer, struct device *supplier);
+void device_links_supplier_sync_state_pause(void);
+void device_links_supplier_sync_state_resume(void);
 
 #ifndef dev_fmt
 #define dev_fmt(fmt) fmt
-- 
2.23.0.187.g17f5b7556c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190829074603.70424-4-saravanak%40google.com.
