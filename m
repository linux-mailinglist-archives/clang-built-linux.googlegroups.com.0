Return-Path: <clang-built-linux+bncBAABBB4Z4PVQKGQEYSGBOFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 559CEAFA56
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Sep 2019 12:29:29 +0200 (CEST)
Received: by mail-oi1-x239.google.com with SMTP id f80sf1780371oig.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Sep 2019 03:29:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568197768; cv=pass;
        d=google.com; s=arc-20160816;
        b=vY6D9idnUfPdfB11PHOHUhIIUMQdz82KLwPBdIPMMCxmbwF2UKGr0MYH/QN1KodlJj
         LzY6/1ailc3KWkmNloqVz8pduh7SbJqwZbhhfI3Gf/8O9lwpAm4T7AGoELfj110aLdjM
         KpFQfupq7Ut38wwGXDzpUyIDKtH6D7petCnQVyIjO1gVYC+rtGkEY0O5YX1Morsp7CeC
         YxJXYqMoeRKGeXMrjFGF22VD5g2qYiUUIp1rm5qkbIAoUJzFaoIyH8OV2FIDYZjNEmQn
         IGH9QxXqL0WttFNnSLTVi09F/q0+yICeJ0Z9rKxTVhlfi1YyynSQKbplsx6w/JuHOwWr
         J7XQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:user-agent:subject
         :from:to:cc:references:in-reply-to:mime-version:sender
         :dkim-signature;
        bh=xE9v0YHnIfiXfcPJnEBvDNH8YIC0af9oRciqie0Gmv4=;
        b=vpRVjzzGosUs0e4dOjWlROkdDuiTbFx8KS/J7adYQwq2E+E6zquvh9x57Q6vuM38sO
         c6E8u/VLW1oDpIQgI/lF17hrxd0FTvM0/tJNiZ1Gu094rsIDF/flowZ2dXWZn0C16MH8
         go2LVXDa00S7EPJ5Pc6RR85VHputy2Dbj3QkSixaxyaIgFptGHHCTA87BQk188+cZZqe
         Yn28FIjjO1bbEBNvjRYp82am2POneGn7T5jjFKjsK8BxEFTxeIlzxHkr7LIQcLUeqMvN
         u6hpCxc0kmyXMGxnSGAtcQ/+clueA70r5X5W7X5bqCf5nLjrJAsC8GQieJtkgdq3JZTB
         1lWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=lCE390KF;
       spf=pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sboyd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:in-reply-to:references:cc:to:from:subject
         :user-agent:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xE9v0YHnIfiXfcPJnEBvDNH8YIC0af9oRciqie0Gmv4=;
        b=d2EQrVzgCRkXC1AIjJoORHL9C2j85ZZIkPBqaW7PW2okZJPkzXZC/UCMYwbwXJ/uia
         lqEuW5Sr0KwsvFjhksVsPjnY3h2LsT4S+/W9YIekDMSPsOQrexUFUErBeXLNVIXkqUy0
         3HLp3/3tm+KpC2uOue+OIz68fYH2+GVH2HoUwi9ok0ioL/DSsyNDqKo5OmzsOC5vyzpu
         vt9dXEKkXRKSzLpkFYIWnGm2VHHHc5aF4szV+zMk/+o82lg5LnzCvZjHxAXaL8rCOctd
         ORxqq5eEnluXOswfpgSaSTJGtkzh1LdCHZ5MlwBkERaOYGyQPrl0RpvaVfNwq2iWmSDq
         Gdsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:in-reply-to:references:cc:to
         :from:subject:user-agent:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xE9v0YHnIfiXfcPJnEBvDNH8YIC0af9oRciqie0Gmv4=;
        b=T3jtcpNGCOJ9YnTX2sqHaeOxWhHiWG97kO7q2jHPc+zAC/1iIZQaH0m3iWrlbRHZKj
         kRMQBdfPlP9eGARmXfnGkYYuGHNPhsnCucWX2iwjKYe5Dax6FjlnYnTBkbYoZNCQzUNB
         NcXnHBRnED2gOktTqGlh7bjPx7BbFM4oMTCT1GLsPULAglHB5J4tFa3/7etQnMxNIGl1
         jvf6nwcOg9vAKxNoI56VM4R1UWdcErWmeaIcwVVqjOGdtYlV8jKRzI91XfmXlUmODs/J
         4BrYrejZxwo4Q30ADj6HgKb8l0VVKkgEhpO9n3+xPMYfLXivWT8NruEbhJk8StWv7cBc
         XQJQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXCwaz3CCS0bH2nyB509Y1HUuOGcpyacRKidqoxpPN9v/mu9yhN
	uKARiFkvUzus0+wwSLV4f+g=
X-Google-Smtp-Source: APXvYqzLocLlqQNBvDrpAMnhbzy3Xy9iUuSKSLuMui8d+Y8HMPXWzVLkTEdAj8/EanF5KLMsQkUMTw==
X-Received: by 2002:a9d:4103:: with SMTP id o3mr30405092ote.51.1568197767863;
        Wed, 11 Sep 2019 03:29:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:482:: with SMTP id 2ls4086758otm.14.gmail; Wed, 11 Sep
 2019 03:29:27 -0700 (PDT)
X-Received: by 2002:a9d:6b16:: with SMTP id g22mr30468518otp.86.1568197767616;
        Wed, 11 Sep 2019 03:29:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568197767; cv=none;
        d=google.com; s=arc-20160816;
        b=X5GolDtBPyCMr5i8+skFYmOoeKk/jDXLIKIaWBF6g3kJmpbTd+DDEpeI2zwWcgXSp3
         ttdBJDclSHB8SnliQv8NSquEuF4QXefT1gH89Im+IkrLYeAyvLlfC6urQwH3GQxL1OGD
         zKfJtZUoN+qmsYQEnrjWS2elqpbTHhPvyTUMWY8borcFShxf+TZ5GUu/6yii0PZxEDuo
         5AyXHBqcgxZekM4g6xHjsZqhXmR1LL6zyHFazqDH/xrP2C2qn5rENSgXCebxzd8+TgiW
         K3n8nNMWqJ4F2jh+0YNmeSUCHsafqOjLVbNAGssFDOeLZFlMJBUdhhmRkfr74sXp8MG3
         HAjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:user-agent:subject:from:to:cc:references
         :in-reply-to:content-transfer-encoding:mime-version:dkim-signature;
        bh=NvYzwzPQ3XCp1ZveluLap+4a90/z0HH/sLO47cK2vjI=;
        b=oNT/OKjAVqR9Pls718vqNen/2C8K/4jAZaK+coA2cHpQnN8xSLSVj0ng3e4k6I6RWf
         /3zQhv+yI40SU55MGG5d1dlAsIFxEzHASfRetpoZ8eLteOcXzFpDYdOsBD+XMNnQ+9e4
         NQkpYz4tumJMXXxLSpaYbGyIdquw5X/7f7V5eqCogny2vNTxRN7peByC9bLKdBn/CnZO
         shk91LsH+B47gR30GSj1UGdvCcCHCu3zahrpejXdRtj2Lb9OZvr+MWbLC2zzdexiXoui
         qhY4bpZoViy9yyTBKbmS0WtGvFFMI1vk/1orxFrGVjDjVZ5jweKIH1ZhlcxG7pQnfGXs
         AulQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=lCE390KF;
       spf=pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sboyd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c12si1024140oic.4.2019.09.11.03.29.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Sep 2019 03:29:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from kernel.org (unknown [104.132.0.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A9F8D2082C;
	Wed, 11 Sep 2019 10:29:26 +0000 (UTC)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
In-Reply-To: <20190904211126.47518-4-saravanak@google.com>
References: <20190904211126.47518-1-saravanak@google.com> <20190904211126.47518-4-saravanak@google.com>
Cc: Saravana Kannan <saravanak@google.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org, linux-acpi@vger.kernel.org, clang-built-linux@googlegroups.com, David Collins <collinsd@codeaurora.org>, kernel-team@android.com, kbuild test robot <lkp@intel.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>, Frank Rowand <frowand.list@gmail.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jonathan Corbet <corbet@lwn.net>, Len Brown <lenb@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>, Saravana Kannan <saravanak@google.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v11 3/6] of: property: Add functional dependency link from DT bindings
User-Agent: alot/0.8.1
Date: Wed, 11 Sep 2019 03:29:25 -0700
Message-Id: <20190911102926.A9F8D2082C@mail.kernel.org>
X-Original-Sender: sboyd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=lCE390KF;       spf=pass
 (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=sboyd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

Quoting Saravana Kannan (2019-09-04 14:11:22)
> Add device links after the devices are created (but before they are
> probed) by looking at common DT bindings like clocks and
> interconnects.
> 
> Automatically adding device links for functional dependencies at the
> framework level provides the following benefits:
> 
> - Optimizes device probe order and avoids the useless work of
>   attempting probes of devices that will not probe successfully
>   (because their suppliers aren't present or haven't probed yet).
> 
>   For example, in a commonly available mobile SoC, registering just
>   one consumer device's driver at an initcall level earlier than the
>   supplier device's driver causes 11 failed probe attempts before the
>   consumer device probes successfully. This was with a kernel with all
>   the drivers statically compiled in. This problem gets a lot worse if
>   all the drivers are loaded as modules without direct symbol
>   dependencies.
> 
> - Supplier devices like clock providers, interconnect providers, etc
>   need to keep the resources they provide active and at a particular
>   state(s) during boot up even if their current set of consumers don't
>   request the resource to be active. This is because the rest of the
>   consumers might not have probed yet and turning off the resource
>   before all the consumers have probed could lead to a hang or
>   undesired user experience.
> 
>   Some frameworks (Eg: regulator) handle this today by turning off
>   "unused" resources at late_initcall_sync and hoping all the devices
>   have probed by then. This is not a valid assumption for systems with
>   loadable modules. Other frameworks (Eg: clock) just don't handle
>   this due to the lack of a clear signal for when they can turn off
>   resources.

The clk framework disables unused clks at late_initcall_sync. What do
you mean clk framework doesn't turn them off because of a clear signal?

> This leads to downstream hacks to handle cases like this
>   that can easily be solved in the upstream kernel.
> 
>   By linking devices before they are probed, we give suppliers a clear
>   count of the number of dependent consumers. Once all of the
>   consumers are active, the suppliers can turn off the unused
>   resources without making assumptions about the number of consumers.
> 
> By default we just add device-links to track "driver presence" (probe
> succeeded) of the supplier device. If any other functionality provided
> by device-links are needed, it is left to the consumer/supplier
> devices to change the link when they probe.
> 

Are there tabs above? Indentation looks off.

> diff --git a/Documentation/admin-guide/kernel-parameters.rst b/Documentation/admin-guide/kernel-parameters.rst
> index d05d531b4ec9..6d421694d98e 100644
> --- a/Documentation/admin-guide/kernel-parameters.rst
> +++ b/Documentation/admin-guide/kernel-parameters.rst
> @@ -127,6 +127,7 @@ parameter is applicable::
>         NET     Appropriate network support is enabled.
>         NUMA    NUMA support is enabled.
>         NFS     Appropriate NFS support is enabled.
> +       OF      Devicetree is enabled.
>         OSS     OSS sound support is enabled.
>         PV_OPS  A paravirtualized kernel is enabled.
>         PARIDE  The ParIDE (parallel port IDE) subsystem is enabled.

This could be split off and applied for dt_cpu_ftrs= in
Documentation/admin-guide/kernel-parameters.txt

> diff --git a/drivers/of/property.c b/drivers/of/property.c
> index d7fa75e31f22..23b5ee5b0570 100644
> --- a/drivers/of/property.c
> +++ b/drivers/of/property.c
> @@ -25,6 +25,7 @@
>  #include <linux/of_device.h>
>  #include <linux/of_graph.h>
>  #include <linux/string.h>
> +#include <linux/moduleparam.h>
>  
>  #include "of_private.h"
>  
> @@ -985,6 +986,245 @@ of_fwnode_device_get_match_data(const struct fwnode_handle *fwnode,
>         return of_device_get_match_data(dev);
>  }
>  
> +static bool of_is_ancestor_of(struct device_node *test_ancestor,

Maybe add kernel-doc indicating that this function returns with the
of_node requiring an of_node_put() call on it, unless it returns false
in which case it doesn't?

> +                             struct device_node *child)
> +{
> +       of_node_get(child);
> +       while (child) {
> +               if (child == test_ancestor) {
> +                       of_node_put(child);
> +                       return false;
> +               }
> +               child = of_get_next_parent(child);
> +       }
> +       return true;
> +}
> +
> +/**
> + * of_link_to_phandle - Add device link to supplier from supplier phandle
> + * @dev: consumer device
> + * @sup_np: phandle to supplier device tree node
> + *
> + * Given a phandle to a supplier device tree node (@sup_np), this function
> + * finds the device that owns the supplier device tree node and creates a
> + * device link from @dev consumer device to the supplier device. This function
> + * doesn't create device links for invalid scenarios such as trying to create a
> + * link with a parent device as the consumer of its child device. In such
> + * cases, it returns an error.

Doesn't device links have problems with making cycles between providers
and consumers? We have some scenarios where two clk providers are
consumers of each other but it isn't a parent child relationship.
They're peers on the SoC bus and there isn't a cycle in the clk tree but
there is a cycle between the two device nodes and providers. I don't see
the avoidance here but maybe I missed something?

> + *
> + * Returns:
> + * - 0 if link successfully created to supplier
> + * - -EAGAIN if linking to the supplier should be reattempted
> + * - -EINVAL if the supplier link is invalid and should not be created
> + * - -ENODEV if there is no device that corresponds to the supplier phandle
> + */
> +static int of_link_to_phandle(struct device *dev, struct device_node *sup_np)
> +{
> +       struct device *sup_dev;
> +       u32 dl_flags = DL_FLAG_AUTOPROBE_CONSUMER;

Is it really a u32 instead of an unsigned int or unsigned long?

> +       int ret = 0;
> +       struct device_node *tmp_np = sup_np;
> +
> +       of_node_get(sup_np);
> +       /*
> +        * Find the device node that contains the supplier phandle.  It may be
> +        * @sup_np or it may be an ancestor of @sup_np.
> +        */
> +       while (sup_np && !of_find_property(sup_np, "compatible", NULL))
> +               sup_np = of_get_next_parent(sup_np);

I don't get this. This is assuming that drivers are only probed for
device nodes that have a compatible string? What about drivers that make
sub-devices for clk support that have drivers in drivers/clk/ that then
attach at runtime later? This happens sometimes for MFDs that want to
split the functionality across the driver tree to the respective
subsystems.

> +       if (!sup_np) {
> +               dev_dbg(dev, "Not linking to %pOFP - No device\n", tmp_np);
> +               return -ENODEV;
> +       }
> +
> +       /*
> +        * Don't allow linking a device node as a consumer of one of its
> +        * descendant nodes. By definition, a child node can't be a functional
> +        * dependency for the parent node.
> +        */
> +       if (!of_is_ancestor_of(dev->of_node, sup_np)) {
> +               dev_dbg(dev, "Not linking to %pOFP - is descendant\n", sup_np);
> +               of_node_put(sup_np);
> +               return -EINVAL;
> +       }
> +       sup_dev = get_dev_from_fwnode(&sup_np->fwnode);
> +       of_node_put(sup_np);
> +       if (!sup_dev)
> +               return -EAGAIN;
> +       if (!device_link_add(dev, sup_dev, dl_flags))
> +               ret = -EAGAIN;
> +       put_device(sup_dev);
> +       return ret;
> +}
> +
> +/**
> + * parse_prop_cells - Property parsing function for suppliers
> + *
> + * @np:                Pointer to device tree node containing a list
> + * @prop_name: Name of property to be parsed. Expected to hold phandle values
> + * @index:     For properties holding a list of phandles, this is the index
> + *             into the list.
> + * @list_name: Property name that is known to contain list of phandle(s) to
> + *             supplier(s)
> + * @cells_name:        property name that specifies phandles' arguments count
> + *
> + * This is a helper function to parse properties that have a known fixed name
> + * and are a list of phandles and phandle arguments.
> + *
> + * Returns:
> + * - phandle node pointer with refcount incremented. Caller must of_node_put()
> + *   on it when done.
> + * - NULL if no phandle found at index
> + */
> +static struct device_node *parse_prop_cells(struct device_node *np,
> +                                           const char *prop_name, int index,
> +                                           const char *list_name,
> +                                           const char *cells_name)
> +{
> +       struct of_phandle_args sup_args;
> +
> +       if (strcmp(prop_name, list_name))
> +               return NULL;
> +
> +       if (of_parse_phandle_with_args(np, list_name, cells_name, index,
> +                                      &sup_args))
> +               return NULL;
> +
> +       return sup_args.np;
> +}
> +
> +static struct device_node *parse_clocks(struct device_node *np,
> +                                       const char *prop_name, int index)
> +{
> +       return parse_prop_cells(np, prop_name, index, "clocks", "#clock-cells");
> +}

Can this use of_parse_clkspec() instead? If it is exported out of the
clk framework (which is weird to me for other reasons) then it should
work to call that with the index passed in to this function. Ideally we
don't have more than one place where we parse clock specifiers for a
node.

Another question is what happens for devices that are in DT but are
using "clock-ranges"? As far as I know there are some DTS files that use
that property to only send the clocks to some bus node that then lets
devices find the "clocks" and "clock-names" properties from the bus node
instead of from the node that corresponds to their device.

> +
> +static struct device_node *parse_interconnects(struct device_node *np,
> +                                              const char *prop_name, int index)
> +{
> +       return parse_prop_cells(np, prop_name, index, "interconnects",
> +                               "#interconnect-cells");
> +}
> +
> +static int strcmp_suffix(const char *str, const char *suffix)

And this doesn't go to lib/string.c why?

> +{
> +       unsigned int len, suffix_len;
> +
> +       len = strlen(str);
> +       suffix_len = strlen(suffix);
> +       if (len <= suffix_len)
> +               return -1;
> +       return strcmp(str + len - suffix_len, suffix);
> +}
> +
> +static struct device_node *parse_regulators(struct device_node *np,
> +                                           const char *prop_name, int index)
> +{
> +       if (index || strcmp_suffix(prop_name, "-supply"))
> +               return NULL;
> +
> +       return of_parse_phandle(np, prop_name, 0);
> +}
> +
> +/**
> + * struct supplier_bindings - Property parsing functions for suppliers
> + *
> + * @parse_prop: function name
> + *     parse_prop() finds the node corresponding to a supplier phandle
> + * @parse_prop.np: Pointer to device node holding supplier phandle property
> + * @parse_prop.prop_name: Name of property holding a phandle value
> + * @parse_prop.index: For properties holding a list of phandles, this is the
> + *                   index into the list

This is interesting kernel-doc. I've never seen it before. Does it work?

> + *
> + * Returns:
> + * parse_prop() return values are
> + * - phandle node pointer with refcount incremented. Caller must of_node_put()
> + *   on it when done.
> + * - NULL if no phandle found at index
> + */
> +struct supplier_bindings {
> +       struct device_node *(*parse_prop)(struct device_node *np,
> +                                         const char *prop_name, int index);

Maybe this should be a typedef instead of a struct unless you plan to
put more members in this struct? Or are arrays of function pointers
impossible?

> +};
> +
> +static const struct supplier_bindings bindings[] = {

This variable name is really bad. Please make it much more specific to
this file instead of being called 'bindings' so that grepping for it and
looking for it in kallsyms isn't difficult.

> +       { .parse_prop = parse_clocks, },
> +       { .parse_prop = parse_interconnects, },
> +       { .parse_prop = parse_regulators, },
> +       {},

Nitpick: Don't put a comma after the sentinel so that it causes a
compile error to follow it with another "valid" entry.

> +};
> +
> +/**
> + * of_link_property - Create device links to suppliers listed in a property
> + * @dev: Consumer device
> + * @con_np: The consumer device tree node which contains the property
> + * @prop_name: Name of property to be parsed
> + *
> + * This function checks if the property @prop_name that is present in the
> + * @con_np device tree node is one of the known common device tree bindings
> + * that list phandles to suppliers. If @prop_name isn't one, this function
> + * doesn't do anything.
> + *
> + * If @prop_name is one, this function attempts to create device links from the
> + * consumer device @dev to all the devices of the suppliers listed in
> + * @prop_name.
> + *
> + * Any failed attempt to create a device link will NOT result in an immediate
> + * return.  of_link_property() must create links to all the available supplier
> + * devices even when attempts to create a link to one or more suppliers fail.
> + */
> +static int of_link_property(struct device *dev, struct device_node *con_np,
> +                            const char *prop_name)
> +{
> +       struct device_node *phandle;
> +       const struct supplier_bindings *s = bindings;
> +       unsigned int i = 0;
> +       bool matched = false;
> +       int ret = 0;
> +
> +       /* Do not stop at first failed link, link all available suppliers. */
> +       while (!matched && s->parse_prop) {
> +               while ((phandle = s->parse_prop(con_np, prop_name, i))) {
> +                       matched = true;
> +                       i++;
> +                       if (of_link_to_phandle(dev, phandle) == -EAGAIN)
> +                               ret = -EAGAIN;

And don't break?

> +                       of_node_put(phandle);
> +               }
> +               s++;
> +       }
> +       return ret;
> +}
> +
> +static int __of_link_to_suppliers(struct device *dev,

Why the double underscore?

> +                                 struct device_node *con_np)
> +{
> +       struct device_node *child;
> +       struct property *p;
> +       int ret = 0;
> +
> +       for_each_property_of_node(con_np, p)
> +               if (of_link_property(dev, con_np, p->name))
> +                       ret = -EAGAIN;

Same comment.

> +
> +       return ret;
> +}

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190911102926.A9F8D2082C%40mail.kernel.org.
