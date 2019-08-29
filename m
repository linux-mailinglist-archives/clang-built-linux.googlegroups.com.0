Return-Path: <clang-built-linux+bncBCNODNHUQUJBBSEFT3VQKGQEFNDFAKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CBB1A12D3
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 09:46:18 +0200 (CEST)
Received: by mail-vk1-xa3e.google.com with SMTP id c199sf1013708vkc.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 00:46:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567064776; cv=pass;
        d=google.com; s=arc-20160816;
        b=tmnXQoTugbjNlNOTCW3IrIQfMf1dv1MfRscgHd3doVJGO4X94j5NFcAClRQrhJ/W9B
         BUCjaeyh9K12xPsf/YXRV4hLfkoX/igyUjemGalfJt4jKaIFmRO8FbT+sc5r3LkoIRBT
         l1wlbb2+/IUip23bcgpCrP15s7D2Q5jlHJxoEocJL0G26RqX9sdr0mHpOwathwbK51D7
         z5fiWCCpTQulKu++0f5A09NfLORowq9HKAQ1kUnvdRT3cSiTzarAJgML3jrcVpPPpn3y
         E+tGu/AbMbz+46FFotMz6nSJi4WA4/Aq3dMgVZegX/G+bLoR/LZ8mWZNJvDwl9NeTzMs
         qdXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=Me+Uy1lTSGmxBhrhkVYQrQP83lTyP6frJA426XKGwuI=;
        b=lWxOsavB4dt0BlQXMWQDq+ht0BAfsbcXTXQdDijebfc0K4mUwkkmXLwLROPovXX+y6
         WpoQShgRtKQSAofcn0w+Q+ZSJrPUhm6XMQk8kglprPDoJVSd1scQOb3fesfAjVlAH1/C
         BLyCTUDjuLBmUna1loeEYfTK0BM3jbxC4AercEy/nkc/rUACXHdKWVSYOkLTewD9BCFb
         +enSXgvtA4QAHU1cb4ItZI7OVjG/49ESeWN0lgxqxcn/RFpwGI1SD3B4FgjhJKMWL90z
         Gl5MHTkS0E4BFC9LmNSFdhvIw10h3uRWroBUke2rqzcOng1E9Z/SNmkHZuQEqhnw+0iK
         VjLQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rlEvcm7f;
       spf=pass (google.com: domain of 3x4jnxqkkafwm4l4p4h4eaiiaf8.6ig@flex--saravanak.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3x4JnXQkKAFwM4L4P4H4EAIIAF8.6IG@flex--saravanak.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Me+Uy1lTSGmxBhrhkVYQrQP83lTyP6frJA426XKGwuI=;
        b=BoSBOAYwestK9e9fo8RCZBKBA/b5eogZE9BaT/You00reFegwiDqX5D+7w6n4o0sdX
         2YEcj+iFUJGPc7wD7+guMGNNAxAmzqHx8YuIjsAZ3aWybQoV05MzCiG5YiXRa66XTsBg
         vq/hltk8H63haTQvn/kedFXjhT96ZR25ZRL8BRmyeRucXMQ9+kn3epH2FeLMF81uDPqR
         l4XIp19OoLeKKaMpYT8zQcNgKvaxUSBhnutQUuAsnCXuoSWHVoUxb+MMwBk+94jqpEnP
         nFIbttlKw3sbSDBrPhmV/zTUF5jS/9Z6kIhJMb+kNB6FZZgcBwYVjSxm5d1vmM8hqfuQ
         2KBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Me+Uy1lTSGmxBhrhkVYQrQP83lTyP6frJA426XKGwuI=;
        b=GG95FdDrgXaMsJDBypAUzzoJZb42bGnIe6m4CzQVC3+Nj872hxW8JcQjbaD7v7GzpO
         9NTV0TTAjSmr5SKAhpSMcBASa3o+VDHhck3/ImDAQRxCAQdTpvmu0pNmwK9b3yBRTpW9
         tanq/6wlgl0Y8O5IUE8WXVtoLS0rum6gP98PHkK7Dvd1HMqiRP3ZHdFje7A09NjhobvD
         OyEUge19zuE67ILJYyuX3UJxrD9u6Lm7F18NWelUTkoC67O6FDViVqBx9D8xbCKRO+Xl
         JrZktEbBye6XzjKme+yLdISgutfstHdgCPmHOWYWz3nZhn06+P5Rx0S4HkOsfORWg5Az
         /aFQ==
X-Gm-Message-State: APjAAAVznzbVF1DJdXMg8bDFDJ0qxD3WU2Lun1kRaI0d+dfrGF6S/qUV
	/e3fNuBPHJeUv3OcLBURvLY=
X-Google-Smtp-Source: APXvYqxhmc2cuFztRni0wrAfAoswEgUuMqu4YxC6wPf9rwf36EU3zKoEBzK2k2xxWutKPSBbqqKNWQ==
X-Received: by 2002:a05:6102:216:: with SMTP id z22mr4562093vsp.87.1567064776716;
        Thu, 29 Aug 2019 00:46:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:e0dc:: with SMTP id m28ls192950vsl.10.gmail; Thu, 29 Aug
 2019 00:46:16 -0700 (PDT)
X-Received: by 2002:a67:fa0f:: with SMTP id i15mr4679397vsq.184.1567064776452;
        Thu, 29 Aug 2019 00:46:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567064776; cv=none;
        d=google.com; s=arc-20160816;
        b=J7zJ/e5ovrLICr9cNuqwOsgIFLwKvmwI0ptH8PpE8ZBLzH4pbPCHevMoiQQJb6Wfwp
         0eJOPBmXJt3tf3wFDtj7C+myEoGrC/ynN6bhZsP/8/c4KmwbARZlPfDWudUNa/DeAkEY
         3pzc/YicTantoyPw+OhMl9R8u+sk9myRZZUNbHfQwofOifP+hAg2ej/Yjz4s4tvD4If/
         yXFZf/J4IFl2Ab3BqQbkBtyWoBHU+5E0FF/+S1pY1/HIaDJeIWo+G5BNUnHXo23GeNdG
         kQK+xLVluuVwKy3bhpDSkGEhQHJtkm9u9uCzPEZnS3YMO+Dy9+k5gE0sEVNBp8XGAc0C
         0D/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=F6QAIhrugZ+PukBlpD2gloWtuf8xLVG9Z9trdps5QwY=;
        b=bk/7h8TkqTzk8xKDraiDAW0j5GI+py4izC+Me0ScWqjhOXt10WQMcR8xy7nL6Bd9FD
         JPBi2dmooslrRr4cuIZZaUC5oplF3UhKkFtVELFWyUYJqp3rLI0OS2yorAzBhdONqxa2
         nrF7H6XrImFMvCLnnhRDxfEgJs7vg7YrxtcehIYpwddIDzGLCJKOLT+ntyB/bZA5g5aW
         3EG6f0VjpAsssO3KuFi5L6kBoblJcNgRkehEQuJ0Dh7h4C8M+lQ2u+VbgjRsEAwhCcPP
         /9QaK3QhoL/e7eYLCS7bIZCWEF4E3NxgJY6OyubdWPf7knuaXUXfzzWnInQtiRgwa0nI
         jUoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rlEvcm7f;
       spf=pass (google.com: domain of 3x4jnxqkkafwm4l4p4h4eaiiaf8.6ig@flex--saravanak.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3x4JnXQkKAFwM4L4P4H4EAIIAF8.6IG@flex--saravanak.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com. [2607:f8b0:4864:20::549])
        by gmr-mx.google.com with ESMTPS id w19si77952vkm.3.2019.08.29.00.46.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Aug 2019 00:46:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3x4jnxqkkafwm4l4p4h4eaiiaf8.6ig@flex--saravanak.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) client-ip=2607:f8b0:4864:20::549;
Received: by mail-pg1-x549.google.com with SMTP id q9so1488105pgv.17
        for <clang-built-linux@googlegroups.com>; Thu, 29 Aug 2019 00:46:16 -0700 (PDT)
X-Received: by 2002:a63:a346:: with SMTP id v6mr7066405pgn.57.1567064775140;
 Thu, 29 Aug 2019 00:46:15 -0700 (PDT)
Date: Thu, 29 Aug 2019 00:45:58 -0700
In-Reply-To: <20190829074603.70424-1-saravanak@google.com>
Message-Id: <20190829074603.70424-3-saravanak@google.com>
Mime-Version: 1.0
References: <20190829074603.70424-1-saravanak@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v10 2/7] of: property: Add functional dependency link from DT bindings
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
 header.i=@google.com header.s=20161025 header.b=rlEvcm7f;       spf=pass
 (google.com: domain of 3x4jnxqkkafwm4l4p4h4eaiiaf8.6ig@flex--saravanak.bounces.google.com
 designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3x4JnXQkKAFwM4L4P4H4EAIIAF8.6IG@flex--saravanak.bounces.google.com;
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

Add device links after the devices are created (but before they are
probed) by looking at common DT bindings like clocks and
interconnects.

Automatically adding device links for functional dependencies at the
framework level provides the following benefits:

- Optimizes device probe order and avoids the useless work of
  attempting probes of devices that will not probe successfully
  (because their suppliers aren't present or haven't probed yet).

  For example, in a commonly available mobile SoC, registering just
  one consumer device's driver at an initcall level earlier than the
  supplier device's driver causes 11 failed probe attempts before the
  consumer device probes successfully. This was with a kernel with all
  the drivers statically compiled in. This problem gets a lot worse if
  all the drivers are loaded as modules without direct symbol
  dependencies.

- Supplier devices like clock providers, interconnect providers, etc
  need to keep the resources they provide active and at a particular
  state(s) during boot up even if their current set of consumers don't
  request the resource to be active. This is because the rest of the
  consumers might not have probed yet and turning off the resource
  before all the consumers have probed could lead to a hang or
  undesired user experience.

  Some frameworks (Eg: regulator) handle this today by turning off
  "unused" resources at late_initcall_sync and hoping all the devices
  have probed by then. This is not a valid assumption for systems with
  loadable modules. Other frameworks (Eg: clock) just don't handle
  this due to the lack of a clear signal for when they can turn off
  resources. This leads to downstream hacks to handle cases like this
  that can easily be solved in the upstream kernel.

  By linking devices before they are probed, we give suppliers a clear
  count of the number of dependent consumers. Once all of the
  consumers are active, the suppliers can turn off the unused
  resources without making assumptions about the number of consumers.

By default we just add device-links to track "driver presence" (probe
succeeded) of the supplier device. If any other functionality provided
by device-links are needed, it is left to the consumer/supplier
devices to change the link when they probe.

kbuild test robot reported clang error about missing const
Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 .../admin-guide/kernel-parameters.rst         |   1 +
 .../admin-guide/kernel-parameters.txt         |   6 +
 drivers/of/property.c                         | 241 ++++++++++++++++++
 3 files changed, 248 insertions(+)

diff --git a/Documentation/admin-guide/kernel-parameters.rst b/Documentation/admin-guide/kernel-parameters.rst
index d05d531b4ec9..6d421694d98e 100644
--- a/Documentation/admin-guide/kernel-parameters.rst
+++ b/Documentation/admin-guide/kernel-parameters.rst
@@ -127,6 +127,7 @@ parameter is applicable::
 	NET	Appropriate network support is enabled.
 	NUMA	NUMA support is enabled.
 	NFS	Appropriate NFS support is enabled.
+	OF	Devicetree is enabled.
 	OSS	OSS sound support is enabled.
 	PV_OPS	A paravirtualized kernel is enabled.
 	PARIDE	The ParIDE (parallel port IDE) subsystem is enabled.
diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
index 96383f63cc55..a07f86ba2fd7 100644
--- a/Documentation/admin-guide/kernel-parameters.txt
+++ b/Documentation/admin-guide/kernel-parameters.txt
@@ -3187,6 +3187,12 @@
 			This can be set from sysctl after boot.
 			See Documentation/admin-guide/sysctl/vm.rst for details.
 
+	of_devlink	[OF, KNL] Create device links between consumer and
+			supplier devices by scanning the devictree to infer the
+			consumer/supplier relationships.  A consumer device
+			will not be probed until all the supplier devices have
+			probed successfully.
+
 	ohci1394_dma=early	[HW] enable debugging via the ohci1394 driver.
 			See Documentation/debugging-via-ohci1394.txt for more
 			info.
diff --git a/drivers/of/property.c b/drivers/of/property.c
index d7fa75e31f22..82052172f508 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -25,6 +25,7 @@
 #include <linux/of_device.h>
 #include <linux/of_graph.h>
 #include <linux/string.h>
+#include <linux/moduleparam.h>
 
 #include "of_private.h"
 
@@ -985,6 +986,245 @@ of_fwnode_device_get_match_data(const struct fwnode_handle *fwnode,
 	return of_device_get_match_data(dev);
 }
 
+static bool of_is_ancestor_of(struct device_node *test_ancestor,
+			      struct device_node *child)
+{
+	of_node_get(child);
+	while (child) {
+		if (child == test_ancestor) {
+			of_node_put(child);
+			return false;
+		}
+		child = of_get_next_parent(child);
+	}
+	return true;
+}
+
+/**
+ * of_link_to_phandle - Add device link to supplier from supplier phandle
+ * @dev: consumer device
+ * @sup_np: phandle to supplier device tree node
+ *
+ * Given a phandle to a supplier device tree node (@sup_np), this function
+ * finds the device that owns the supplier device tree node and creates a
+ * device link from @dev consumer device to the supplier device. This function
+ * doesn't create device links for invalid scenarios such as trying to create a
+ * link with a parent device as the consumer of its child device. In such
+ * cases, it returns an error.
+ *
+ * Returns:
+ * - 0 if link successfully created to supplier
+ * - -EAGAIN if linking to the supplier should be reattempted
+ * - -EINVAL if the supplier link is invalid and should not be created
+ * - -ENODEV if there is no device that corresponds to the supplier phandle
+ */
+static int of_link_to_phandle(struct device *dev, struct device_node *sup_np)
+{
+	struct platform_device *sup_dev;
+	u32 dl_flags = DL_FLAG_AUTOPROBE_CONSUMER;
+	int ret = 0;
+	struct device_node *tmp_np = sup_np;
+
+	of_node_get(sup_np);
+	/*
+	 * Find the device node that contains the supplier phandle.  It may be
+	 * @sup_np or it may be an ancestor of @sup_np.
+	 */
+	while (sup_np && !of_find_property(sup_np, "compatible", NULL))
+		sup_np = of_get_next_parent(sup_np);
+	if (!sup_np) {
+		dev_dbg(dev, "Not linking to %pOFP - No device\n", tmp_np);
+		return -ENODEV;
+	}
+
+	/*
+	 * Don't allow linking a device node as a consumer of one of its
+	 * descendant nodes. By definition, a child node can't be a functional
+	 * dependency for the parent node.
+	 */
+	if (!of_is_ancestor_of(dev->of_node, sup_np)) {
+		dev_dbg(dev, "Not linking to %pOFP - is descendant\n", sup_np);
+		of_node_put(sup_np);
+		return -EINVAL;
+	}
+	sup_dev = of_find_device_by_node(sup_np);
+	of_node_put(sup_np);
+	if (!sup_dev)
+		return -EAGAIN;
+	if (!device_link_add(dev, &sup_dev->dev, dl_flags))
+		ret = -EAGAIN;
+	put_device(&sup_dev->dev);
+	return ret;
+}
+
+/**
+ * parse_prop_cells - Property parsing function for suppliers
+ *
+ * @np:		Pointer to device tree node containing a list
+ * @prop_name:	Name of property to be parsed. Expected to hold phandle values
+ * @index:	For properties holding a list of phandles, this is the index
+ *		into the list.
+ * @list_name:	Property name that is known to contain list of phandle(s) to
+ *		supplier(s)
+ * @cells_name:	property name that specifies phandles' arguments count
+ *
+ * This is a helper function to parse properties that have a known fixed name
+ * and are a list of phandles and phandle arguments.
+ *
+ * Returns:
+ * - phandle node pointer with refcount incremented. Caller must of_node_put()
+ *   on it when done.
+ * - NULL if no phandle found at index
+ */
+static struct device_node *parse_prop_cells(struct device_node *np,
+					    const char *prop_name, int index,
+					    const char *list_name,
+					    const char *cells_name)
+{
+	struct of_phandle_args sup_args;
+
+	if (strcmp(prop_name, list_name))
+		return NULL;
+
+	if (of_parse_phandle_with_args(np, list_name, cells_name, index,
+				       &sup_args))
+		return NULL;
+
+	return sup_args.np;
+}
+
+static struct device_node *parse_clocks(struct device_node *np,
+					const char *prop_name, int index)
+{
+	return parse_prop_cells(np, prop_name, index, "clocks", "#clock-cells");
+}
+
+static struct device_node *parse_interconnects(struct device_node *np,
+					       const char *prop_name, int index)
+{
+	return parse_prop_cells(np, prop_name, index, "interconnects",
+				"#interconnect-cells");
+}
+
+static int strcmp_suffix(const char *str, const char *suffix)
+{
+	unsigned int len, suffix_len;
+
+	len = strlen(str);
+	suffix_len = strlen(suffix);
+	if (len <= suffix_len)
+		return -1;
+	return strcmp(str + len - suffix_len, suffix);
+}
+
+static struct device_node *parse_regulators(struct device_node *np,
+					    const char *prop_name, int index)
+{
+	if (index || strcmp_suffix(prop_name, "-supply"))
+		return NULL;
+
+	return of_parse_phandle(np, prop_name, 0);
+}
+
+/**
+ * struct supplier_bindings - Property parsing functions for suppliers
+ *
+ * @parse_prop: function name
+ *	parse_prop() finds the node corresponding to a supplier phandle
+ * @parse_prop.np: Pointer to device node holding supplier phandle property
+ * @parse_prop.prop_name: Name of property holding a phandle value
+ * @parse_prop.index: For properties holding a list of phandles, this is the
+ *		      index into the list
+ *
+ * Returns:
+ * parse_prop() return values are
+ * - phandle node pointer with refcount incremented. Caller must of_node_put()
+ *   on it when done.
+ * - NULL if no phandle found at index
+ */
+struct supplier_bindings {
+	struct device_node *(*parse_prop)(struct device_node *np,
+					  const char *prop_name, int index);
+};
+
+static const struct supplier_bindings bindings[] = {
+	{ .parse_prop = parse_clocks, },
+	{ .parse_prop = parse_interconnects, },
+	{ .parse_prop = parse_regulators, },
+	{},
+};
+
+/**
+ * of_link_property - Create device links to suppliers listed in a property
+ * @dev: Consumer device
+ * @con_np: The consumer device tree node which contains the property
+ * @prop_name: Name of property to be parsed
+ *
+ * This function checks if the property @prop_name that is present in the
+ * @con_np device tree node is one of the known common device tree bindings
+ * that list phandles to suppliers. If @prop_name isn't one, this function
+ * doesn't do anything.
+ *
+ * If @prop_name is one, this function attempts to create device links from the
+ * consumer device @dev to all the devices of the suppliers listed in
+ * @prop_name.
+ *
+ * Any failed attempt to create a device link will NOT result in an immediate
+ * return.  of_link_property() must create links to all the available supplier
+ * devices even when attempts to create a link to one or more suppliers fail.
+ */
+static int of_link_property(struct device *dev, struct device_node *con_np,
+			     const char *prop_name)
+{
+	struct device_node *phandle;
+	const struct supplier_bindings *s = bindings;
+	unsigned int i = 0;
+	bool matched = false;
+	int ret = 0;
+
+	/* Do not stop at first failed link, link all available suppliers. */
+	while (!matched && s->parse_prop) {
+		while ((phandle = s->parse_prop(con_np, prop_name, i))) {
+			matched = true;
+			i++;
+			if (of_link_to_phandle(dev, phandle) == -EAGAIN)
+				ret = -EAGAIN;
+			of_node_put(phandle);
+		}
+		s++;
+	}
+	return ret;
+}
+
+static int __of_link_to_suppliers(struct device *dev,
+				  struct device_node *con_np)
+{
+	struct device_node *child;
+	struct property *p;
+	int ret = 0;
+
+	for_each_property_of_node(con_np, p)
+		if (of_link_property(dev, con_np, p->name))
+			ret = -EAGAIN;
+
+	return ret;
+}
+
+static bool of_devlink;
+core_param(of_devlink, of_devlink, bool, 0);
+
+static int of_fwnode_add_links(const struct fwnode_handle *fwnode,
+			       struct device *dev)
+{
+	if (!of_devlink)
+		return 0;
+
+	if (unlikely(!is_of_node(fwnode)))
+		return 0;
+
+	return __of_link_to_suppliers(dev, to_of_node(fwnode));
+}
+
 const struct fwnode_operations of_fwnode_ops = {
 	.get = of_fwnode_get,
 	.put = of_fwnode_put,
@@ -1001,5 +1241,6 @@ const struct fwnode_operations of_fwnode_ops = {
 	.graph_get_remote_endpoint = of_fwnode_graph_get_remote_endpoint,
 	.graph_get_port_parent = of_fwnode_graph_get_port_parent,
 	.graph_parse_endpoint = of_fwnode_graph_parse_endpoint,
+	.add_links = of_fwnode_add_links,
 };
 EXPORT_SYMBOL_GPL(of_fwnode_ops);
-- 
2.23.0.187.g17f5b7556c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190829074603.70424-3-saravanak%40google.com.
