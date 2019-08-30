Return-Path: <clang-built-linux+bncBCNODNHUQUJBBAGOULVQKGQE6O7VHVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FC0BA2E6A
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 06:33:06 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id q12sf4303422pfl.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 21:33:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567139584; cv=pass;
        d=google.com; s=arc-20160816;
        b=vWdZ8b+U4OSbs8JFOYLEQnl648YyVIII80DFOKyMBu3dO1HOFMyHJFdoqp42Nd/5Ds
         IaLG1Zs5nSWcDE3wOuv1JA6jms4sLNs4XcxvYcEJBlPvDWzKFqJNA5fZkL4AMoPzK6W4
         p0y1KpfynFYlozqDFukwaQnokNqky1S+sbRJu8GHP5ek8WPyFNkT+XmzlmnR2sHx8dAX
         dySUvQKulHKQNZSkOpqzktzyA+EE2fKZGMW3qt8IECYgrEx379HTF/7rBowSeR5bHIll
         MpnH6A3otKrsjuWty0+q8Hy8VtQB6gXHm0cB5V2yWgDkNGPQJOk2zrVv+cOpPE9GCUCg
         rGmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=H73h1jhe2lYjpNI1yMPkO/ivSMa7AXmdRZORVv3oA+Y=;
        b=C0H3saNWYyHy6oVttrYGi2sFE7437CqtKozfqKr1UUd/7zTRKDZHeBhJdJ9TJp8ctU
         bGazw9XqWLTy60LiAreLUB4s/xME4kB+avF0hLwXJKRr1vHM8foF/qBBQumayxWNaiPt
         iqPs52cNaL+6udAjXwHjIfdcvpBmBS5Sc+xU4RRnZItcCY54x0ttZBWVgLR792iyUxUc
         p9szso+aOZOQYdLZi+PgmTi8QV7ORo2YwcFrT/C5mhnq1wmtssOku1J/ZPr1ESdoSv/7
         OpmF0wYO9caxcjE6I3UiQ4OyGxdm2z9Q9oL4nfZBJr2peFzligAjXOqxI4eZZgCl/UTi
         4Oug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sHAapob+;
       spf=pass (google.com: domain of saravanak@google.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=saravanak@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H73h1jhe2lYjpNI1yMPkO/ivSMa7AXmdRZORVv3oA+Y=;
        b=Y6T7gLQCVH7r6gufNdjTdnX24aLaRUpJEBtbKn+zdGVhGsxrnkxXq5H06JqJkRqx6T
         yhGNZshTzNRlmxiis3rf3/XMpnraCuqvXIIhX1RGvCO+D/VmINN7Sdy9JaYlvDJ27dVh
         eya0efvuxbgkHH0k5uKkHsXLsPkU8WcUT6NjAveE289WV3307Bj/pT98ba7Mv84fhpkB
         +Eq+JQEjJwgMO/4Z5qbzNeMS1EKb/pWDs95QGiVdfDFauFub6XUjO/0dMJr5XTi+1G+O
         e+v2esHrcl5VCXRVbk+7jopQ0nfoDcDpW3wKTJDfmOctORGrLyZmHv6j95NPd7nbhWNF
         sBuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H73h1jhe2lYjpNI1yMPkO/ivSMa7AXmdRZORVv3oA+Y=;
        b=agtvVewidQNYZUs2P3VImuJsVPROVOalWcZCooUu0KaPdMQkma8KGbF8fw12L7hARb
         qDm07dh00cb+VuC740/vc2jFj42w/wBajPtpl27BTq0yDq3OpJCnhsr0unZfSGXm5Ja5
         a5yANQMZCqlvIiXHV1JyPfWZ1C4ECvxKESmdVsg0GPpz9xKSby1LpZMbWIkszE09kSEk
         a658N3Hnq734gSqTe3AeX176C6EW8vCXEL6Lmb5EjrDXIcBe+APnaigJSrK3ENNEGZ+L
         IGyB+3i4+RPbwkNeg/wFc6wtvv8sInBU8bmU6Jzw23R1knYlc3Et2xvY03zyOVPhCx/T
         kxJA==
X-Gm-Message-State: APjAAAUVP0uQG3qWRbDjzKZwF4ppGu8XcJMQyRrVMCU8aI1nB96ZPGnD
	/uKVQoes1uSljBo7QotLha0=
X-Google-Smtp-Source: APXvYqwkBg6P+YlCiTJz7lHIST/RLGlcdrFUMSVm1jF9Sfl5xlxd3iS2YMBPRTJSNsDq/bCIfRg2Cw==
X-Received: by 2002:a62:3681:: with SMTP id d123mr15752541pfa.147.1567139584289;
        Thu, 29 Aug 2019 21:33:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:90:: with SMTP id 138ls1121884pga.1.gmail; Thu, 29 Aug
 2019 21:33:04 -0700 (PDT)
X-Received: by 2002:a62:7789:: with SMTP id s131mr15790866pfc.50.1567139584016;
        Thu, 29 Aug 2019 21:33:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567139584; cv=none;
        d=google.com; s=arc-20160816;
        b=YpwA4gIjdHQXIgfB4Wq+EyMSnw+QjHl4sI7BmKrd6uSGP+MRRyF0DcIu6gmtAanDTf
         W+LiBTlXdTpYCKVYfZFCNF+Ve/+qh/U44DIJYg2gjse5jtKnU+TK1sp7C93PFPNiJb1E
         VxHKOoUpmkIpvKqf6vSKMp4GC1aNNd+JWZQDu5PTT4S4iFtKVXioOAAI79IUKy3s96UR
         PyEqDSXFtFKcuhPUvA5F27BhBkZBZ9pMmV4qio2/nxsqatgm97x29k/3OjCdfIX7USLT
         m10nlws8sUSuXDsXIXhoHIyuFzs7+ysgom76e+T/HcxLhTCpkzAEBCeOtu7QpuYRSn3f
         RBSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=dckypzty3MXWBDTJpI2rCDfqM2cRZodYiUO2dmQlaCU=;
        b=BPtnmpnRQw7zd6fmlO2iM8a/3ZvgoGWeo0BYsoJa1yEykgkOFQIg3JJ3BWlBRSCV7B
         sWCFibdi2xPUF5H8VNMGIwk1eqVvcZ6WckLAcof/x1PKGGtOMhKh1WqKBO5j4UatAE7t
         n+9yaGRVTIXELSNhibzJ7LEWP5TnB+145Dz5JLZ9P1O0pSAr27v0e92A80KhREdUomy2
         OxPxn8MV6at5cDz/ncmYYwHPeVaTiOYGqxxhcK/PFIpejUDHjutyX7Fx+vCij06hdXvR
         OoWB8rtntADyRou/1W40Dg5N55QBbOg9R1XsTUUkCBoNoQfq3H+/HMTT0Jzfq+4tKJ99
         ZCaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sHAapob+;
       spf=pass (google.com: domain of saravanak@google.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=saravanak@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id f125si262274pgc.4.2019.08.29.21.33.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Aug 2019 21:33:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of saravanak@google.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Received: by mail-oi1-x242.google.com with SMTP id l2so4414488oil.0
        for <clang-built-linux@googlegroups.com>; Thu, 29 Aug 2019 21:33:03 -0700 (PDT)
X-Received: by 2002:aca:cc81:: with SMTP id c123mr9117245oig.30.1567139582896;
 Thu, 29 Aug 2019 21:33:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190829074603.70424-1-saravanak@google.com> <CAL_Jsq+2vR75ofq=aKOt1bb1T-JfhiGSR9dnHWQf7VLmgJP4eA@mail.gmail.com>
In-Reply-To: <CAL_Jsq+2vR75ofq=aKOt1bb1T-JfhiGSR9dnHWQf7VLmgJP4eA@mail.gmail.com>
From: "'Saravana Kannan' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 29 Aug 2019 21:32:26 -0700
Message-ID: <CAGETcx_8AS8AVB-95vSzXXC=Rs0+0sp3OnJvFWXWtwEn-wH-ew@mail.gmail.com>
Subject: Re: [PATCH v10 0/7] Solve postboot supplier cleanup and optimize
 probe ordering
To: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Frank Rowand <frowand.list@gmail.com>, 
	Jonathan Corbet <corbet@lwn.net>, Len Brown <lenb@kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, linux-acpi@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	David Collins <collinsd@codeaurora.org>, Android Kernel Team <kernel-team@android.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: saravanak@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=sHAapob+;       spf=pass
 (google.com: domain of saravanak@google.com designates 2607:f8b0:4864:20::242
 as permitted sender) smtp.mailfrom=saravanak@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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

On Thu, Aug 29, 2019 at 9:43 AM Rob Herring <robh+dt@kernel.org> wrote:
>
> On Thu, Aug 29, 2019 at 2:46 AM Saravana Kannan <saravanak@google.com> wrote:
> >
> > Add device-links to track functional dependencies between devices
> > after they are created (but before they are probed) by looking at
> > their common DT bindings like clocks, interconnects, etc.
> >
> > Having functional dependencies automatically added before the devices
> > are probed, provides the following benefits:
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
> >   resources. This leads to downstream hacks to handle cases like this
> >   that can easily be solved in the upstream kernel.
> >
> >   By linking devices before they are probed, we give suppliers a clear
> >   count of the number of dependent consumers. Once all of the
> >   consumers are active, the suppliers can turn off the unused
> >   resources without making assumptions about the number of consumers.
> >
> > By default we just add device-links to track "driver presence" (probe
> > succeeded) of the supplier device. If any other functionality provided
> > by device-links are needed, it is left to the consumer/supplier
> > devices to change the link when they probe.
> >
> > v1 -> v2:
> > - Drop patch to speed up of_find_device_by_node()
> > - Drop depends-on property and use existing bindings
> >
> > v2 -> v3:
> > - Refactor the code to have driver core initiate the linking of devs
> > - Have driver core link consumers to supplier before it's probed
> > - Add support for drivers to edit the device links before probing
> >
> > v3 -> v4:
> > - Tested edit_links() on system with cyclic dependency. Works.
> > - Added some checks to make sure device link isn't attempted from
> >   parent device node to child device node.
> > - Added way to pause/resume sync_state callbacks across
> >   of_platform_populate().
> > - Recursively parse DT node to create device links from parent to
> >   suppliers of parent and all child nodes.
> >
> > v4 -> v5:
> > - Fixed copy-pasta bugs with linked list handling
> > - Walk up the phandle reference till I find an actual device (needed
> >   for regulators to work)
> > - Added support for linking devices from regulator DT bindings
> > - Tested the whole series again to make sure cyclic dependencies are
> >   broken with edit_links() and regulator links are created properly.
> >
> > v5 -> v6:
> > - Split, squashed and reordered some of the patches.
> > - Refactored the device linking code to follow the same code pattern for
> >   any property.
> >
> > v6 -> v7:
> > - No functional changes.
> > - Renamed i to index
> > - Added comment to clarify not having to check property name for every
> >   index
> > - Added "matched" variable to clarify code. No functional change.
> > - Added comments to include/linux/device.h for add_links()
> >
> > v7 -> v8:
> > - Rebased on top of linux-next to handle device link changes in [1]
> >
> > v8 -> v9:
> > - Fixed kbuild test bot reported errors (docs and const)
> >
> > v9->v10:
> > - Changes made based on reviews on LKML [2] and discussions at ELC [3]
> > - Dropped the edit_links() patch
> > - Dropped the patch that skips linking for default bus nodes
> > - 1/7: Changed from bus.add_links() to fwnode.ops.add_links()
> > - 1/7: Update device link doc
> > - 1/7: Lots of comments/fn doc updates
> > - 1/7: Renamed device_link_check_waiting_consumers() to
> >   device_link_add_missing_supplier_links()
> > - 2/7: Moved DT parsing/linking code from of/platform.c to of/property.c
>
> Why? You'll notice that of/property.c doesn't know anything about
> platform_device (and struct device):
>
> $ git grep platform_device -- drivers/of/property.c
> $
>
> Everything related to platform_device goes in of/platform.c.
> Everything related to struct device only goes in of/device.c. I'd be
> okay with a new file for this too.

The only platform_device related code in what got moved to
of/property.c is the call to of_find_device_by_node(). And that's
because I forgot that function returns a platform_device --- it should
really have been called of_find_plat_device_by_node() or something
similar. Outside of that, of/property.c makes sense because that's
where the fwnode ops are implemented.

As you mentioned in the other email, just searching platform_bus is
not sufficient. So I'll have to figure something out for that. Once I
do, I think the code will be fine in of/property.c as it shouldn't
have any reference to platform_device.

Thanks for catching what I missed.

-Saravana

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGETcx_8AS8AVB-95vSzXXC%3DRs0%2B0sp3OnJvFWXWtwEn-wH-ew%40mail.gmail.com.
