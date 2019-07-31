Return-Path: <clang-built-linux+bncBCNODNHUQUJBBANHRDVAKGQEAYYSB5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id 069317D093
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Aug 2019 00:17:38 +0200 (CEST)
Received: by mail-qt1-x840.google.com with SMTP id x11sf58370385qto.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 31 Jul 2019 15:17:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564611457; cv=pass;
        d=google.com; s=arc-20160816;
        b=fK+3jerMXC43pOPa1UUKIs4O9nxKPwsWxvdhaZUFEaJ+DJrhYd7znfd2cL4tDgOkT5
         VV5V2OM1/O7RFxluprjw5R8EzEDreg0pzVLd2ds73ufQOvc+g4MV86aE2dKP6kqq1aoQ
         4sIWwfC+jPxdh4JnFnug/EFkwQasGt3/gCml15Zyt1VjmphS4RrK9qaSQnCHcnb8e71H
         xaX+0NLGopiohpnepk5gF48G4lE12IoNKcHUkQOo9VrXtzD85xrzIVNT+Z6WXXpQB38J
         KlrbHXHLoKXYFNwcbbbqpOAfF8AaDSFSJRcqktqRHtClRJ2vpQOLFfaEA+2m3WwYn+il
         h60Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=CS4J0WjzQ5LTARp0ydQfn3TW0pmB6c4/qUqrN6kaeYM=;
        b=vMv89XSe9EP5JeAFuFZBcz5/JDYsLBplKTHaAV92jw1j7RTcGYwYcGT9o5PqaPMEgo
         XFiy+AsWaJQ8hzgRhUZ2rCIyuHH7iMUPjbPDcXoNeE32OS6UJrWxVKhJxO9zkWwdQHrz
         CaDTc6k6kiPBLz2XLT5uMXk8aAHD3SHdiucKHqwDIpalMXtlE2SDipLoziYdgiaVdXDm
         uMlSBcflF4m7JliN4a8XvRVyoYtpCQisGtKhWcIniiHmqOyRlbpaVt3pTBGo1Zt+TvxB
         D9gvIQz2DvIYIRfCB7TdeN2RzuoIYShB4Y/hju/6oxzXEp7myiPUmhCHqHJ3uoqj5x1C
         SesQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dj3vZucQ;
       spf=pass (google.com: domain of 3gbncxqkkaj8r9q9u9m9jfnnfkd.bnl@flex--saravanak.bounces.google.com designates 2607:f8b0:4864:20::e49 as permitted sender) smtp.mailfrom=3gBNCXQkKAJ8R9Q9U9M9JFNNFKD.BNL@flex--saravanak.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CS4J0WjzQ5LTARp0ydQfn3TW0pmB6c4/qUqrN6kaeYM=;
        b=lU8miDshWlTKBRYCBlPO8s+PO+q8xpxHmP9ZpLETljr2hRzzMfrIQver8Q3xO1e165
         hc5gV1M5uuM2ZWxsAsL6AQAjfh6j1l5FBnk19VSACHKd6MBR5+BMM3kstQhZwdWXzr21
         +ZRz8deOYRc3GigjpHVg+CzIt7kYnKrbSiQFTwdY2NrLlCAeJeh4Rii3y7Y7+vQFUEta
         3+uYBSDLtgct8CizzFiKl8MPlD72IkDUTSzPwmzUMryO2fmQNP7B3C/ntfkQzwE4yP9e
         lVzzUJ7F/r3KP5IlSpkyKOzZtHDIvIqRdJt1MctrpVNHMyl8qpJdsT8rjJzkAZ4bGO5r
         0VkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CS4J0WjzQ5LTARp0ydQfn3TW0pmB6c4/qUqrN6kaeYM=;
        b=mkTFFXLhaDaR/JtllyzFSzhwUEDuzjq7xexlq+57wjNpT4xIwNCMfEVKq8Lmn/6Sqv
         UQrZ0UXr35LXqIeT3sTPvJ+SgmqBZ/+AZVSK7ZdOLQZpIGeQk7DExrRlBzGkX2XfyhZa
         1X3+RW6OXI5elM0IWpCSQJkXTTZpOCmaBL3YOY+HLCBPmcSY5gIT+fqynfkVoulMSIn8
         769QnLz3+M6iG8uQ/5HtK1gSWBt/rHQN0bEF5YLlsqgnD5o3In0L1wZdMkCHdEtOAJJ9
         QOL63LMzypJMSYdRFwGCJ1YveKVM2UXxpyv/y7cVTdMZmRumredX7QPf1zcywIPn1zUF
         u6eg==
X-Gm-Message-State: APjAAAWqpuF0u7iZ4GRhFfs3x2ay+5ZZUwyncH3hgbVp6HOiCafDL3we
	R7f77r10bXCZmX7IMjXd9QU=
X-Google-Smtp-Source: APXvYqwBij6EqQ9xpDNtCOVe/5f+xssQphdFusFPdpDFxQeghf62D8VgFO2bgPtUVzr9BdFfJM/svA==
X-Received: by 2002:a37:8604:: with SMTP id i4mr81155827qkd.255.1564611457077;
        Wed, 31 Jul 2019 15:17:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4594:: with SMTP id l20ls632020qtn.10.gmail; Wed, 31 Jul
 2019 15:17:36 -0700 (PDT)
X-Received: by 2002:ac8:26e3:: with SMTP id 32mr87438442qtp.79.1564611456844;
        Wed, 31 Jul 2019 15:17:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564611456; cv=none;
        d=google.com; s=arc-20160816;
        b=X+VvRhkuBY8LzBSpGMhZnpkqi4C0Lc1/FAcaoxNQRStsMLj40Jylk406qc/2Gck+Ea
         Neb8ZMVjTmYwJVVAIg5V8h1efYA8UwsxLZfRz5lDsDLddu3bpRbDgtXyoj/P4WYXGlR8
         PqGxZsXsDQNCE42Wf+K0KQ0d0Li++SFObfk9G3yxRqpq5m2ylZONZ/i9nFjdMjkgWC++
         Vy3UwWDK5MzXPfnTayeCaXUY7/d3CMXTTzSPq+/FCjQjwS8ZzKitcKPUTsjf1zG2hNDZ
         txRZot2K+emfErJEli5nnN69gzWjKzV+SiiORL5gwpZgNAp2embb1y0i1G+zcJh9/e4P
         r8HQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=F1x6WFgPkTZJmpaDCy6OZ07+Zdk1yJqiISlq1S9YeH0=;
        b=ofxf3kY4TI+ArS2BJAjXv8TSDBOkQk6yp5u0CxXz9TGDEGwXGI8RM+SDvG6AqZhBh8
         pZxUam5GSx414ymwoTP9rNKiGg6sD6/gnYH6USm/Ln3dmL0VGkFQv7eIV1zmfB+AwjWJ
         fKOGJavi2esm2vLv78Y/GB0xroakq7iK8RUQ9Onvdq+ifeh8q7S7JXwXVgLyAfrpyMYJ
         C3QTKLg/wH1+jAMcn8frxGn1f6IH42e+dOPBrtKFYxa2F11IusDun/VXz2SezwWCjLkn
         Hd/YECmCeXnqIwtOnd2ky2jYCX/N3Vyp2qIgoqcIeQwpY0oWfAf6hqjgLpkYkpkZ4Qao
         QMBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dj3vZucQ;
       spf=pass (google.com: domain of 3gbncxqkkaj8r9q9u9m9jfnnfkd.bnl@flex--saravanak.bounces.google.com designates 2607:f8b0:4864:20::e49 as permitted sender) smtp.mailfrom=3gBNCXQkKAJ8R9Q9U9M9JFNNFKD.BNL@flex--saravanak.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe49.google.com (mail-vs1-xe49.google.com. [2607:f8b0:4864:20::e49])
        by gmr-mx.google.com with ESMTPS id z145si3165369qka.3.2019.07.31.15.17.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Jul 2019 15:17:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3gbncxqkkaj8r9q9u9m9jfnnfkd.bnl@flex--saravanak.bounces.google.com designates 2607:f8b0:4864:20::e49 as permitted sender) client-ip=2607:f8b0:4864:20::e49;
Received: by mail-vs1-xe49.google.com with SMTP id g189so18238719vsc.19
        for <clang-built-linux@googlegroups.com>; Wed, 31 Jul 2019 15:17:36 -0700 (PDT)
X-Received: by 2002:a67:da99:: with SMTP id w25mr44938520vsj.141.1564611456276;
 Wed, 31 Jul 2019 15:17:36 -0700 (PDT)
Date: Wed, 31 Jul 2019 15:17:16 -0700
In-Reply-To: <20190731221721.187713-1-saravanak@google.com>
Message-Id: <20190731221721.187713-4-saravanak@google.com>
Mime-Version: 1.0
References: <20190731221721.187713-1-saravanak@google.com>
X-Mailer: git-send-email 2.22.0.709.g102302147b-goog
Subject: [PATCH v9 3/7] of/platform: Add functional dependency link from DT bindings
From: "'Saravana Kannan' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Frank Rowand <frowand.list@gmail.com>, Jonathan Corbet <corbet@lwn.net>
Cc: Saravana Kannan <saravanak@google.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, David Collins <collinsd@codeaurora.org>, 
	kernel-team@android.com, kbuild test robot <lkp@intel.com>, linux-doc@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: saravanak@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=dj3vZucQ;       spf=pass
 (google.com: domain of 3gbncxqkkaj8r9q9u9m9jfnnfkd.bnl@flex--saravanak.bounces.google.com
 designates 2607:f8b0:4864:20::e49 as permitted sender) smtp.mailfrom=3gBNCXQkKAJ8R9Q9U9M9JFNNFKD.BNL@flex--saravanak.bounces.google.com;
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

Add device-links after the devices are created (but before they are
probed) by looking at common DT bindings like clocks and
interconnects.

Automatically adding device-links for functional dependencies at the
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
 .../admin-guide/kernel-parameters.txt         |   5 +
 drivers/of/platform.c                         | 165 ++++++++++++++++++
 2 files changed, 170 insertions(+)

diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
index 7ccd158b3894..dba3200d3516 100644
--- a/Documentation/admin-guide/kernel-parameters.txt
+++ b/Documentation/admin-guide/kernel-parameters.txt
@@ -3170,6 +3170,11 @@
 			This can be set from sysctl after boot.
 			See Documentation/admin-guide/sysctl/vm.rst for details.
 
+	of_devlink	[KNL] Make device links from common DT bindings. Useful
+			for optimizing probe order and making sure resources
+			aren't turned off before the consumer devices have
+			probed.
+
 	ohci1394_dma=early	[HW] enable debugging via the ohci1394 driver.
 			See Documentation/debugging-via-ohci1394.txt for more
 			info.
diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index 7801e25e6895..64c4b91988f2 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -508,6 +508,170 @@ int of_platform_default_populate(struct device_node *root,
 }
 EXPORT_SYMBOL_GPL(of_platform_default_populate);
 
+bool of_link_is_valid(struct device_node *con, struct device_node *sup)
+{
+	of_node_get(sup);
+	/*
+	 * Don't allow linking a device node as a consumer of one of its
+	 * descendant nodes. By definition, a child node can't be a functional
+	 * dependency for the parent node.
+	 */
+	while (sup) {
+		if (sup == con) {
+			of_node_put(sup);
+			return false;
+		}
+		sup = of_get_next_parent(sup);
+	}
+	return true;
+}
+
+static int of_link_to_phandle(struct device *dev, struct device_node *sup_np)
+{
+	struct platform_device *sup_dev;
+	u32 dl_flags = DL_FLAG_AUTOPROBE_CONSUMER;
+	int ret = 0;
+
+	/*
+	 * Since we are trying to create device links, we need to find
+	 * the actual device node that owns this supplier phandle.
+	 * Often times it's the same node, but sometimes it can be one
+	 * of the parents. So walk up the parent till you find a
+	 * device.
+	 */
+	while (sup_np && !of_find_property(sup_np, "compatible", NULL))
+		sup_np = of_get_next_parent(sup_np);
+	if (!sup_np)
+		return 0;
+
+	if (!of_link_is_valid(dev->of_node, sup_np)) {
+		of_node_put(sup_np);
+		return 0;
+	}
+	sup_dev = of_find_device_by_node(sup_np);
+	of_node_put(sup_np);
+	if (!sup_dev)
+		return -ENODEV;
+	if (!device_link_add(dev, &sup_dev->dev, dl_flags))
+		ret = -ENODEV;
+	put_device(&sup_dev->dev);
+	return ret;
+}
+
+static struct device_node *parse_prop_cells(struct device_node *np,
+					    const char *prop, int index,
+					    const char *binding,
+					    const char *cell)
+{
+	struct of_phandle_args sup_args;
+
+	/* Don't need to check property name for every index. */
+	if (!index && strcmp(prop, binding))
+		return NULL;
+
+	if (of_parse_phandle_with_args(np, binding, cell, index, &sup_args))
+		return NULL;
+
+	return sup_args.np;
+}
+
+static struct device_node *parse_clocks(struct device_node *np,
+					const char *prop, int index)
+{
+	return parse_prop_cells(np, prop, index, "clocks", "#clock-cells");
+}
+
+static struct device_node *parse_interconnects(struct device_node *np,
+					       const char *prop, int index)
+{
+	return parse_prop_cells(np, prop, index, "interconnects",
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
+					    const char *prop, int index)
+{
+	if (index || strcmp_suffix(prop, "-supply"))
+		return NULL;
+
+	return of_parse_phandle(np, prop, 0);
+}
+
+/**
+ * struct supplier_bindings - Information for parsing supplier DT binding
+ *
+ * @parse_prop:		If the function cannot parse the property, return NULL.
+ *			Otherwise, return the phandle listed in the property
+ *			that corresponds to the index.
+ */
+struct supplier_bindings {
+	struct device_node *(*parse_prop)(struct device_node *np,
+					  const char *name, int index);
+};
+
+static const struct supplier_bindings bindings[] = {
+	{ .parse_prop = parse_clocks, },
+	{ .parse_prop = parse_interconnects, },
+	{ .parse_prop = parse_regulators, },
+	{ },
+};
+
+static bool of_link_property(struct device *dev, struct device_node *con_np,
+			     const char *prop)
+{
+	struct device_node *phandle;
+	const struct supplier_bindings *s = bindings;
+	unsigned int i = 0;
+	bool done = true, matched = false;
+
+	while (!matched && s->parse_prop) {
+		while ((phandle = s->parse_prop(con_np, prop, i))) {
+			matched = true;
+			i++;
+			if (of_link_to_phandle(dev, phandle))
+				/*
+				 * Don't stop at the first failure. See
+				 * Documentation for bus_type.add_links for
+				 * more details.
+				 */
+				done = false;
+		}
+		s++;
+	}
+	return done ? 0 : -ENODEV;
+}
+
+static bool of_devlink;
+core_param(of_devlink, of_devlink, bool, 0);
+
+static int of_link_to_suppliers(struct device *dev)
+{
+	struct property *p;
+	bool done = true;
+
+	if (!of_devlink)
+		return 0;
+	if (unlikely(!dev->of_node))
+		return 0;
+
+	for_each_property_of_node(dev->of_node, p)
+		if (of_link_property(dev, dev->of_node, p->name))
+			done = false;
+
+	return done ? 0 : -ENODEV;
+}
+
 #ifndef CONFIG_PPC
 static const struct of_device_id reserved_mem_matches[] = {
 	{ .compatible = "qcom,rmtfs-mem" },
@@ -523,6 +687,7 @@ static int __init of_platform_default_populate_init(void)
 	if (!of_have_populated_dt())
 		return -ENODEV;
 
+	platform_bus_type.add_links = of_link_to_suppliers;
 	/*
 	 * Handle certain compatibles explicitly, since we don't want to create
 	 * platform_devices for every node in /reserved-memory with a
-- 
2.22.0.709.g102302147b-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190731221721.187713-4-saravanak%40google.com.
