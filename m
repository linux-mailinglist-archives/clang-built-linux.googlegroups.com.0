Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBUWO3XWAKGQEQ6T7QPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B45FCBF58
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Oct 2019 17:37:56 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id m17sf4543417pgh.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Oct 2019 08:37:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570203474; cv=pass;
        d=google.com; s=arc-20160816;
        b=MVWK4CpbLdepLW2YsI6xDSMeRmzCRjDzkoHQfJesD7DTDwpD0UXXmYFF+b5CdOkQbW
         xaTimCoCjoWDGb+Gdd18EYlXvPAPKG4I3XbMCv6VMorItzjUb1LlV+jifkFj6P/5vnzd
         X5hgOPI6q+8jua34TxiAXOG26ZmWyCb4A50YrzUQVKNjbSFIHucsjbUnhCkWK6ZNf5jV
         PH8qbd/w8fc+VJ65W98D5LXXz/9lbs7ONNFjymL50JbbeGLfTbo1T2Ex2hh19FuZeTLl
         EkjrEcka0uy/v7KsTfhvD8EN1Cg9PRpspO6kFrOK9JjCHht8ytHeQs5/s/9FY2O2TVVr
         2YaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Z0pac8zDNlXjej0PU5lGv4n77/dftqUcQhORx8UcYNU=;
        b=La9Mpbgl44wrKKeIdQ3/+LU5t1HrVlQUkHbU37OtG+qkkxr78KjfB7sMbfsaWXEi6J
         Ixe9nK7//FKBzzdhmMnf5fuIcvadCvLUzgpi4BfqY/ck9VBlI0L/21ig32gJyOyckx4J
         LLR0KnZXLdBzSuP7nRjmi55xvcY5Hc7u7sgUcC/UdfWCTRLyHooINvK63rH3cFF9hzU1
         SZD5VxfpgZJU5A39S0Xa3IbQWT9NSzziLYbhrrbJU97xxxj7VCZ4Zo3TYZujgAhBgZ1Z
         ehchCJydgBumKEQU8+Q04V5sPZMwX2zNGewQnVrkOEPjPMQIzmDlCgIuOdOdb7x6Cw6f
         XUlg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="XloKBE/p";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Z0pac8zDNlXjej0PU5lGv4n77/dftqUcQhORx8UcYNU=;
        b=oNJA0PGUO8j0fGBvly620zzd4XQprvONiZYgqMiG6nLhPQ4Pe9CcyKmWIsMrDazBZS
         WBZyFKuykbhK0gA5Moi+PDmpPbkxMBRMpXa7hvcdFfWq+ktgosQnxNUW7yuGz1JKsGu8
         kCnJ2C3kS9pbqClC41cZJx4kLmpohe8L6PpA2y7FYRRNeanu6sxLrRk2LaoUuFwRdOK0
         geJ10Q/LRxHKTarK90rFfDPvPGD3CgFO6t29u4Kp2UctK5zt5MNd/0WV0v7z83BOBaT/
         mH9tRuo+TiLcPJYaw/YTuiTLYYWsdrD2Tj3i9J+WsMAhujahsGt9p7ffD6NAhs8MuvKa
         ILNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Z0pac8zDNlXjej0PU5lGv4n77/dftqUcQhORx8UcYNU=;
        b=jVB3YoqRhsRhGU9ooCJQtBf3nUcKAUBBZlPAYsU1yaYTkc8BBlTGo9+WustuuMmGQd
         TkrYOmw5JxUWmfCylOzsptBGIXULH3CnDxZ2p7bAFta4eNDGnXZVKyWhI5bZvaH26kWE
         643jK0tkxk6EEH2Koli6KxLplVfGTASD2Eili+HlzBElvYa/7nTKa69IkFY1DtiPRh/L
         2kuTtfFy/3rQgRAuCyhsQCvOgjUDcU8rviqYsDXax03uQ187X+9ySMxpRK8zkRTXXSuN
         Q414gcuAwRhBGcuORi/GE6c4cTZZW2m23AK2obzIPrePnDsROhwyiYmhurIBXTWrDrdJ
         DmyA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX5JoynyWNL00PiwGcPqWTld4mljPH9BfRcB5ejotQdEtvs6QpN
	SvJAdMmGi2OCTsvFHZFzfqU=
X-Google-Smtp-Source: APXvYqyJFaUtJkZj7Fl07gSZfrA3YaG8XLNHz19gBe9P/2meFI4hk8ik+R8yuE4a6ADk3DBQYuBGfA==
X-Received: by 2002:a17:902:7244:: with SMTP id c4mr188628pll.178.1570203474764;
        Fri, 04 Oct 2019 08:37:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b413:: with SMTP id x19ls2496245plr.10.gmail; Fri,
 04 Oct 2019 08:37:54 -0700 (PDT)
X-Received: by 2002:a17:902:560f:: with SMTP id h15mr16255878pli.145.1570203474409;
        Fri, 04 Oct 2019 08:37:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570203474; cv=none;
        d=google.com; s=arc-20160816;
        b=rELQp9DmHCJh5bQXEcRnYTHR5iC0RclBOv/gjf2axckwp6KNGEKvq4v57Jwq/+i55t
         P/xqwKHWqQVxbkuna8BQ/lWoBjNZYMWSoqsSSzDd42CHUlYy1zzdbfkHG1k+3/xTu4lr
         +s86GNMiupMEFphKuOMAzseAsVLB9wxe2zZDBnYvDH4/Drt1SlF3XuzVJc5HRKtTkvPv
         FOPWryCgFdi9FUCEgruhHuSmmEozo5Vm2aNHvtg0i9rjHsxiefHQK3YM1OyzJgDc2hZ1
         FeSuaLIuc0xrjzkK7RsRW3w8l4ye+CN3n8T2dgY9fyFFZM5P+x4/U7RAWXRUl7JkKiHj
         IsaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=gCOZDkrDgLM5qp2SBbRxpKH7UZZoPf7vkjpQlOs0axU=;
        b=ebdXGpM4vlk7sg4ALvFiItBWEK4oh9Xe3R8ow/fRiukX6NOABmQRpT25U8jKs1Tcpn
         oMipbSoi17gyXtHd9dcQdP5QeaBGmaXKkuECioTllUe7atXq0+CnMBL2c/7XC7ccRYtf
         weOY4aejK9WM3fZC344k/Q1T0pGn9S6bMyyMXeG2UjrOHperPG9dSsQEJeuDkWa+N2s6
         GqHqm6TeERiaudXZhZ343xrUS4mqnhzE8roewGO2t6mXeL7OL5M+ZDCx7JIeDZ6uEJDj
         Wh9gCAjHHtx1ht4kdsjWK+ttkEHmq81t2tAnuzr09yAQu4RGRryG4N7qQlxBGYbCqJXA
         U7/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="XloKBE/p";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x2si430943pfq.3.2019.10.04.08.37.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 04 Oct 2019 08:37:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id AFB3420830;
	Fri,  4 Oct 2019 15:37:52 +0000 (UTC)
Date: Fri, 4 Oct 2019 17:37:50 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Stephen Boyd <sboyd@kernel.org>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>,
	Frank Rowand <frowand.list@gmail.com>,
	Jonathan Corbet <corbet@lwn.net>, Len Brown <lenb@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Rob Herring <robh+dt@kernel.org>,
	Saravana Kannan <saravanak@google.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org,
	linux-acpi@vger.kernel.org, clang-built-linux@googlegroups.com,
	David Collins <collinsd@codeaurora.org>, kernel-team@android.com,
	kbuild test robot <lkp@intel.com>
Subject: Re: [PATCH v11 3/6] of: property: Add functional dependency link
 from DT bindings
Message-ID: <20191004153750.GB823823@kroah.com>
References: <20190904211126.47518-1-saravanak@google.com>
 <20190904211126.47518-4-saravanak@google.com>
 <20190911102926.A9F8D2082C@mail.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190911102926.A9F8D2082C@mail.kernel.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="XloKBE/p";       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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

On Wed, Sep 11, 2019 at 03:29:25AM -0700, Stephen Boyd wrote:
> Quoting Saravana Kannan (2019-09-04 14:11:22)
> > Add device links after the devices are created (but before they are
> > probed) by looking at common DT bindings like clocks and
> > interconnects.
> > 
> > Automatically adding device links for functional dependencies at the
> > framework level provides the following benefits:
> > 
> > - Optimizes device probe order and avoids the useless work of
> >   attempting probes of devices that will not probe successfully
> >   (because their suppliers aren't present or haven't probed yet).
> > 
> >   For example, in a commonly available mobile SoC, registering just
> >   one consumer device's driver at an initcall level earlier than the
> >   supplier device's driver causes 11 failed probe attempts before the
> >   consumer device probes successfully. This was with a kernel with all
> >   the drivers statically compiled in. This problem gets a lot worse if
> >   all the drivers are loaded as modules without direct symbol
> >   dependencies.
> > 
> > - Supplier devices like clock providers, interconnect providers, etc
> >   need to keep the resources they provide active and at a particular
> >   state(s) during boot up even if their current set of consumers don't
> >   request the resource to be active. This is because the rest of the
> >   consumers might not have probed yet and turning off the resource
> >   before all the consumers have probed could lead to a hang or
> >   undesired user experience.
> > 
> >   Some frameworks (Eg: regulator) handle this today by turning off
> >   "unused" resources at late_initcall_sync and hoping all the devices
> >   have probed by then. This is not a valid assumption for systems with
> >   loadable modules. Other frameworks (Eg: clock) just don't handle
> >   this due to the lack of a clear signal for when they can turn off
> >   resources.
> 
> The clk framework disables unused clks at late_initcall_sync. What do
> you mean clk framework doesn't turn them off because of a clear signal?

There's a number of minor things you pointed out in this review.

Saravana, can you send a follow-on patch for the minor code cleanups
like formatting and the like that was found here?

> > +static int of_link_to_phandle(struct device *dev, struct device_node *sup_np)
> > +{
> > +       struct device *sup_dev;
> > +       u32 dl_flags = DL_FLAG_AUTOPROBE_CONSUMER;
> 
> Is it really a u32 instead of an unsigned int or unsigned long?
> 
> > +       int ret = 0;
> > +       struct device_node *tmp_np = sup_np;
> > +
> > +       of_node_get(sup_np);
> > +       /*
> > +        * Find the device node that contains the supplier phandle.  It may be
> > +        * @sup_np or it may be an ancestor of @sup_np.
> > +        */
> > +       while (sup_np && !of_find_property(sup_np, "compatible", NULL))
> > +               sup_np = of_get_next_parent(sup_np);
> 
> I don't get this. This is assuming that drivers are only probed for
> device nodes that have a compatible string? What about drivers that make
> sub-devices for clk support that have drivers in drivers/clk/ that then
> attach at runtime later? This happens sometimes for MFDs that want to
> split the functionality across the driver tree to the respective
> subsystems.

For that, the link would not be there, correct?

> > +static int of_link_property(struct device *dev, struct device_node *con_np,
> > +                            const char *prop_name)
> > +{
> > +       struct device_node *phandle;
> > +       const struct supplier_bindings *s = bindings;
> > +       unsigned int i = 0;
> > +       bool matched = false;
> > +       int ret = 0;
> > +
> > +       /* Do not stop at first failed link, link all available suppliers. */
> > +       while (!matched && s->parse_prop) {
> > +               while ((phandle = s->parse_prop(con_np, prop_name, i))) {
> > +                       matched = true;
> > +                       i++;
> > +                       if (of_link_to_phandle(dev, phandle) == -EAGAIN)
> > +                               ret = -EAGAIN;
> 
> And don't break?

There was comments before about how this is not needed.  Frank asked
that the comment be removed.  And now you point it out again :)

Look at the comment a few lines up, we have to go through all of the
suppliers.

> > +static int __of_link_to_suppliers(struct device *dev,
> 
> Why the double underscore?
> 
> > +                                 struct device_node *con_np)
> > +{
> > +       struct device_node *child;
> > +       struct property *p;
> > +       int ret = 0;
> > +
> > +       for_each_property_of_node(con_np, p)
> > +               if (of_link_property(dev, con_np, p->name))
> > +                       ret = -EAGAIN;
> 
> Same comment.

Same response as above :)

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191004153750.GB823823%40kroah.com.
