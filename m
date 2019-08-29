Return-Path: <clang-built-linux+bncBDGNZTVZVAFRBA4FUDVQKGQECJP7FQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id A802AA2159
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 18:51:16 +0200 (CEST)
Received: by mail-vk1-xa40.google.com with SMTP id y73sf900492vky.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 09:51:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567097475; cv=pass;
        d=google.com; s=arc-20160816;
        b=Pz888dh3zBCeZbdULvvnIQTwwA0kY9zLUMUHZkGnZEFaF0u887Rk2HHHZ351yC9XQY
         cdXf9bF3/njReC0jt9G4HrFUM05bhgSPonuSNgNNVL/rD7cM5lgSGmJqf/s/9g9GFnCz
         Hke+TGmGE5/QDiqAVtjE/Ofa5R+DbbD5ILx0wwbwmOU+dgrSsIEehW2YXqLl4xEVhPc0
         joTdr/MnLMK6h0ovatombPS3DM8WZvfiI7+CbaFJ7GQEMvxsz5J/V6mfaR4bc/G16S/y
         efU7qtQp1hl42uih5TpSWRqIX8i3hc8Gwb629zLasBUmu+omalvS9SNnXJEJNTQNX4rN
         KjVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=nF6ZIBBlnphv+h92VMvj3jzxiybOnZBfnEWO3NEzEac=;
        b=CJqk6/OBvsULYL2652+ddjo4a5WV3/unnw5yoSJ5+cf1UrmaVK8S33Dxbv2CGd9gYQ
         AdmdfGcmpWDxIRP9G/zxCwJ66IFKPsNcpxTr/OG1I8bNvthFOnsjOh10k4GIWy+biYDL
         aGa7DZGfUbAvJejlQlD6rLlSJW3w+RZPpVQMS+sbZP5VtmhWOZJ24WXWG0JWW5EZtg4a
         7J5oVgFmG9KilSRFqYCRwGycqbcFnQ80qJ9zJo4xxi/xI3pP9jsTHitGF9sXm8O2f43B
         gp6LyTwAjRu/s6WWRSJlKrw7ayUC5IYjaXS8lphDS7sTyOGN5Y3im+pNsp5DWQeJ7Aht
         7VwQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="o6/1mtIq";
       spf=pass (google.com: domain of robh+dt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=robh+dt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nF6ZIBBlnphv+h92VMvj3jzxiybOnZBfnEWO3NEzEac=;
        b=Nq6vFYMwoGWw4xw21R6YEm1LJXiVL/KlweWxwqiRpD2lVvWPIchqlHFLKaGH2jY71M
         AuzTqxPS52gla0n3Vqk1QVgBmUlZQFiy8A7bcQQ+1rO9s+Sjbohp6GQYm5Rf9gIwvAKT
         rwAgn+3KwN1bfb4zokNzMzGMEL9sXBSOj1NHCi4Wbcq02Y5R4UTm4QeiJ+/p7t/7KAU2
         eFO66XVnjYuwEGVIjSqeOz6B1Z5A2cOoRQUFAFov/3AwEpfO2wXk0mEagLlRzY8DMoxK
         0TYbUs1yVBGAZdX+a5DQ0Tr0mAXvOboojXfPyxm/CAYsi6OrrRlJ4AlTacgUdaruTKJA
         BZvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nF6ZIBBlnphv+h92VMvj3jzxiybOnZBfnEWO3NEzEac=;
        b=sFOB9Bsvpisa6iNWibbWoUrzYgMAvkhRbuqqCWS9u9cGlHAevfvi5z4SHRJ6UMJ4Wy
         9q+ubcXuRyrFuDDf4b2ijl1x9+m5NjJh09lWjtINbH0m46Dz9YRIgexmFV+eZOVu6cmj
         Rti8LyFJp/yo3mkrufv4AxXe57SOlo9MrDYTDpI6j/7n+I2vabe4Lgdbtc3mbYs/O/g9
         ecmauAouB6oAR5HErc46+MYS3bcfUfPuCziWcVFhinaATxltkbbUbfdbEEggrmtpm7a6
         RzBsuMeZE6gWsRuhmbGRIdUsoLE44K2Yvde+SsZtlxNklAq6UGQG+Pt3Drfp+M4kJaqQ
         zVNQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWLlI36wphFzbPsmW5/zJn6BUDVuNvFpnmVjmc6E3uRiBSjB0MW
	iSmS/FkxZ5s5UOFRkPb/rW0=
X-Google-Smtp-Source: APXvYqxDExTHYcj3SOnI0ZdDmTxx1mtQnsWnuICAKMN2qIWZScvX0i6EnXhbAS4+ZFyuxR044CeBnA==
X-Received: by 2002:a1f:1486:: with SMTP id 128mr5755537vku.40.1567097475424;
        Thu, 29 Aug 2019 09:51:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:3b0d:: with SMTP id i13ls175629uah.15.gmail; Thu, 29 Aug
 2019 09:51:15 -0700 (PDT)
X-Received: by 2002:ab0:630e:: with SMTP id a14mr5401122uap.37.1567097475017;
        Thu, 29 Aug 2019 09:51:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567097475; cv=none;
        d=google.com; s=arc-20160816;
        b=C9tA19GXgGwsZeBPioOEumTXBTsExdisnPQefRBBo5HP+gRbHf6lLlPYenAUJWGvel
         Lij+MOF6VvqyIWv1B3ladY6t6h3qWmCyQ7fmgmF/Q+YwXE4ox2WMV67xfFcPsGWx6YoO
         DwFj4WUVIiWJWcBoMUTTJunylHiEVz304Ertc/x554A9UT1owIq36W0tpETcBgGWxoi/
         6urHErFzq7Pv4klK8s4kgjderYrxKXabgD2jSrBZPphnCkuQ7BqSTKc+8MmD6S19IpRV
         EyDuCLAeRGO6C01SjN6ZHXvh1wHflSO7qi9NwyKifcraacYMO/eEcY9FFs9Y99pYr9lS
         8l7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=WXkmY9dKDZOaUdG/SQpzdL0Fp/MnkopnRwdDQ6IEl2w=;
        b=fVQLVhqpKyJkpOzvR1CvJlRFxVd5lJShdX4ZcFGf3fB9at1FAQCy9UhLb2EKRKhxsa
         SkWbUMkX/a+/NvUXIlDiFV2L+G2FnkO9L4dZXOD9S1QdJZlPqcoT8TRkltdj8f/TEKUy
         /+ZorSpjKojkA8I+1MlEWL2kVhQ7u6YJWyRXITgyQhxCwhj2VTkZJ4Hw6l7OcLZpwI7P
         FCaAdt76EyayS5l1PN4OxCgpRGTGM5ERH3n4vHTXkbMzhJFWHnUwRojvbiDM9WVAZdVP
         tyHmeTujNs7u48d6qP8T06789kFH/UGGGAQrVJMGs5DuZ7S8qS5tZb4zSGC1vEgIJE5K
         ri5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="o6/1mtIq";
       spf=pass (google.com: domain of robh+dt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=robh+dt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u189si137980vkb.2.2019.08.29.09.51.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Aug 2019 09:51:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of robh+dt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B50F82339E
	for <clang-built-linux@googlegroups.com>; Thu, 29 Aug 2019 16:51:13 +0000 (UTC)
Received: by mail-qt1-f180.google.com with SMTP id v38so4466115qtb.0
        for <clang-built-linux@googlegroups.com>; Thu, 29 Aug 2019 09:51:13 -0700 (PDT)
X-Received: by 2002:ac8:368a:: with SMTP id a10mr10808259qtc.143.1567097472930;
 Thu, 29 Aug 2019 09:51:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190829074603.70424-1-saravanak@google.com> <20190829074603.70424-3-saravanak@google.com>
In-Reply-To: <20190829074603.70424-3-saravanak@google.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 29 Aug 2019 11:51:02 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJ7U-kXZ9zYY+Appkh_D76oU+qzUOGz-2Zq05r3nZtCBw@mail.gmail.com>
Message-ID: <CAL_JsqJ7U-kXZ9zYY+Appkh_D76oU+qzUOGz-2Zq05r3nZtCBw@mail.gmail.com>
Subject: Re: [PATCH v10 2/7] of: property: Add functional dependency link from
 DT bindings
To: Saravana Kannan <saravanak@google.com>
Cc: Mark Rutland <mark.rutland@arm.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Frank Rowand <frowand.list@gmail.com>, 
	Jonathan Corbet <corbet@lwn.net>, Len Brown <lenb@kernel.org>, devicetree@vger.kernel.org, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, linux-acpi@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	David Collins <collinsd@codeaurora.org>, Android Kernel Team <kernel-team@android.com>, 
	kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: robh@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="o6/1mtIq";       spf=pass
 (google.com: domain of robh+dt@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=robh+dt@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Aug 29, 2019 at 2:46 AM Saravana Kannan <saravanak@google.com> wrote:
>
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
>   resources. This leads to downstream hacks to handle cases like this
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
> kbuild test robot reported clang error about missing const
> Reported-by: kbuild test robot <lkp@intel.com>
> Signed-off-by: Saravana Kannan <saravanak@google.com>
> ---
>  .../admin-guide/kernel-parameters.rst         |   1 +
>  .../admin-guide/kernel-parameters.txt         |   6 +
>  drivers/of/property.c                         | 241 ++++++++++++++++++
>  3 files changed, 248 insertions(+)


> +static int of_link_to_phandle(struct device *dev, struct device_node *sup_np)
> +{
> +       struct platform_device *sup_dev;
> +       u32 dl_flags = DL_FLAG_AUTOPROBE_CONSUMER;
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
> +       sup_dev = of_find_device_by_node(sup_np);

What if the supplier isn't a platform_device? A regulator supply is
quite likely not.

Rob

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAL_JsqJ7U-kXZ9zYY%2BAppkh_D76oU%2BqzUOGz-2Zq05r3nZtCBw%40mail.gmail.com.
