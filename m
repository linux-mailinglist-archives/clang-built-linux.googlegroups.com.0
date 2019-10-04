Return-Path: <clang-built-linux+bncBCNODNHUQUJBBDNU37WAKGQEFVNKMAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 80B37CC6A6
	for <lists+clang-built-linux@lfdr.de>; Sat,  5 Oct 2019 01:47:26 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id o32sf5373697pgm.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Oct 2019 16:47:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570232845; cv=pass;
        d=google.com; s=arc-20160816;
        b=IxpAYS8xrGWeCIuXi6KHViryrdYMior5PT1PC0DJTfAz2umjPaWhhAtLto2rz9UqXI
         zbNMvPO/vdiSBuAKjQR2dGrgYtWLiSNMd9pqIV/dFkwDh27nULJpUFomc5wzph5v3/r5
         N883zi/G3+ajEWzB6ofQtG7eW5KeTag3Vq5f8gJttfnTDxS9af2CUSaBCjbuElv+Yg65
         +5joxcC8eUbBsnwCR7ywoZCT6S47TLNPh+lP7js0IHtKKpQN23wAS+W5G+dNmlc1k/xs
         URQycBdPVf6ywb0ANnFNLAB4rea2ERA8+BrKdRurmUYjdhm/4BVUej+RKnLG8iGKUL+Y
         Zs8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=HobBx5pd3T3F+5aJ9/U8w7X1cHXLP/7rYxyfiCS2BA0=;
        b=ARCbQTbLBrJhTj7nA3jz+L6bcqjMZOhvTWhWGueriZzSsk1JdfGjQdvvmv8uN0cPhT
         1bhfooaOac83Qy8yI55sITwUuhtyWRQMv5F85aerdt9Tazi8RZUtJ7aX/5GsEdVVqbbV
         SuQLJlyOs0DwVMvxy+zlystEM83f34uTZbxjZaXpg6Ldza0XQxRaWFSMnxtZJAQdSlMI
         SVl4XiWI09Vu0UVCabovugIiC4wiOXSKdyMh69V8vRFgNa3FSew8SLDzFFv6/CMtSaMN
         7rif6aUs5SxX5nQuiMmU37ZGzZyVuW5jyyB3IDz9qfNOmVm5K7aye6QsFiqnXhBLBVxy
         4rUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sByyKd4d;
       spf=pass (google.com: domain of saravanak@google.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=saravanak@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HobBx5pd3T3F+5aJ9/U8w7X1cHXLP/7rYxyfiCS2BA0=;
        b=rw6cVJQDUjGjb8WzSVmJLf4J7DTntBHbCClP+1iszqR9HO851QthZyBiO1cDrrwmJO
         vFc49jfQvvhR7gdCCfvpLezaWHfJNfxanUIKyelHgTBD7WgOtvYOyUvvUhF54iFrGum0
         YGyUQsnt5N4/Rac+mzne2kngin6EPfXfC3zGGX/XWnfiNwJSFj5UPRecn3Gfh7NV9wRL
         X1zd5R9awA3iX7g9yVb3iScFWf5Tz4ThhgqqMyOhJm/dp8QhW3l5Eh70cS2ONLYSb6zB
         giupOwGAoPBYT53WhjVdO4zyqe0fTPvc0Zj6lrvYqBKV9ojJIzQPc1rNsP64S5z9S04j
         YC1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HobBx5pd3T3F+5aJ9/U8w7X1cHXLP/7rYxyfiCS2BA0=;
        b=DWZk2Yv7O9O9M1L5QiTnKdd80t/Q9rIiYEkTYFFh6AUmvA5RhM2rviEgQydEi/zZBh
         3UPt8hStj9PZBh9o3fpN4RGmMGDdey+q6Rbu4d5mDyiLVMA03V76RwSGhjAurIUCG3Di
         y/kzXdz4hJZGBZKyeOUBgrrL/tlRnTRz5eGuVkBC4bDC759rjUqkr/ooS0RuQBlQ8/n6
         LIgVZYxCaDwDQyA7BSY9UsFgVhrPkzyvtHixLC/7l3xICYp6Eh5drX7+/qwiQJ5DccNm
         DKKc7p1bfXbVjP1he8OaTnpMdOtDersuN4xgpAMe+TyJ/FrNck6Ls4kgddTPf53Wb5Xb
         aCdg==
X-Gm-Message-State: APjAAAUBH+aB07ueo7edCHyygB0ACikhJqqeoyJ9y94WHz2swTnygc18
	8lJeeZe7lWy13m5vGAR6PcU=
X-Google-Smtp-Source: APXvYqyBOu9ANF0tddlUdXxyNb8YrxGI6B3qQ9I64V4l6gMday77Q5ctiEJ9pLt0OefUoVW4NoxFgw==
X-Received: by 2002:aa7:920d:: with SMTP id 13mr19790603pfo.17.1570232845191;
        Fri, 04 Oct 2019 16:47:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:2b4e:: with SMTP id r75ls2490106pgr.0.gmail; Fri, 04 Oct
 2019 16:47:24 -0700 (PDT)
X-Received: by 2002:aa7:9a92:: with SMTP id w18mr20703010pfi.244.1570232844776;
        Fri, 04 Oct 2019 16:47:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570232844; cv=none;
        d=google.com; s=arc-20160816;
        b=KA4HLZgKSiydFOhCqu3xpbyf4Ho6iaAQtjZ0HuoQW54jX9tStu9OlCf+687lUxV4y2
         gOskfBwQYXY/KDsz3N4mRPVDVPpgF48J79yDHZ1iyiiWVkYx/T20p+e2VWyRgQXyijrN
         Uy7Oh/JwBOD8chWCXwwUBvMXCpCF6038XUNYjQW7mQzvT+W1PY6+0fxvs/0qJBWXMG+t
         UbWmGhKhwQJOJoafW5shDAkKowm2d652f8JY+qmXrihjn4Oqcf2Dm9AdJljeHFlF5Oto
         p0uB1GCpSWHlkkEi4hhJUmMVdDRo+PsQw0l4nnv08XCDrSz5wmOl4EOOknN6b/GsG6vf
         KJ3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3hvzIJAwdUIDj60PRswdy4jtQ7pq65dmvuMEDrZAxmY=;
        b=kwiW6ExGsN4PBj+2NyIWx4KZZPfQFUmODoOPJOfMvXWnaXIJERQf5qt3VGIZtZKE7u
         VebTJMFyu3NAwh4ByzT29MHZrTp/+HIm+rjW1g3jPyvfrittwgxY7h3ALZgF60L78K9M
         lvj42GgZvsItpW+B261KuRXCSr9Agd1FkEmdrBfPFOrWr9vykzZcwY2nU8hf82XTXQvu
         ah3DtEZo1qpoY902A/CHmXhrx0zVkLJP+BIRRBHIaaM8eg82CHyDj3nrnAp0If/85kkK
         t20Oz4wtLegTPef7GOEOo4UIU+UBDAjSsqfWY6Grzyi8u10XcRbl/bi5cXl8c/G+l9/H
         3dJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sByyKd4d;
       spf=pass (google.com: domain of saravanak@google.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=saravanak@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id br8si879154pjb.3.2019.10.04.16.47.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Oct 2019 16:47:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of saravanak@google.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Received: by mail-oi1-x241.google.com with SMTP id w144so7207622oia.6
        for <clang-built-linux@googlegroups.com>; Fri, 04 Oct 2019 16:47:24 -0700 (PDT)
X-Received: by 2002:aca:a88e:: with SMTP id r136mr9366466oie.30.1570232843672;
 Fri, 04 Oct 2019 16:47:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190904211126.47518-1-saravanak@google.com> <20190904211126.47518-4-saravanak@google.com>
 <20190911102926.A9F8D2082C@mail.kernel.org> <20191004153750.GB823823@kroah.com>
In-Reply-To: <20191004153750.GB823823@kroah.com>
From: "'Saravana Kannan' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 4 Oct 2019 16:46:47 -0700
Message-ID: <CAGETcx-TFL3OAtPvU9_Sjovz4zk+YU+S7yAC7T0Vo7aRuQdWAA@mail.gmail.com>
Subject: Re: [PATCH v11 3/6] of: property: Add functional dependency link from
 DT bindings
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Stephen Boyd <sboyd@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Frank Rowand <frowand.list@gmail.com>, Jonathan Corbet <corbet@lwn.net>, Len Brown <lenb@kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, linux-acpi@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	David Collins <collinsd@codeaurora.org>, Android Kernel Team <kernel-team@android.com>, 
	kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: saravanak@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=sByyKd4d;       spf=pass
 (google.com: domain of saravanak@google.com designates 2607:f8b0:4864:20::241
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

On Fri, Oct 4, 2019 at 8:37 AM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Wed, Sep 11, 2019 at 03:29:25AM -0700, Stephen Boyd wrote:
> > Quoting Saravana Kannan (2019-09-04 14:11:22)
> > > Add device links after the devices are created (but before they are
> > > probed) by looking at common DT bindings like clocks and
> > > interconnects.
> > >
> > > Automatically adding device links for functional dependencies at the
> > > framework level provides the following benefits:
> > >
> > > - Optimizes device probe order and avoids the useless work of
> > >   attempting probes of devices that will not probe successfully
> > >   (because their suppliers aren't present or haven't probed yet).
> > >
> > >   For example, in a commonly available mobile SoC, registering just
> > >   one consumer device's driver at an initcall level earlier than the
> > >   supplier device's driver causes 11 failed probe attempts before the
> > >   consumer device probes successfully. This was with a kernel with all
> > >   the drivers statically compiled in. This problem gets a lot worse if
> > >   all the drivers are loaded as modules without direct symbol
> > >   dependencies.
> > >
> > > - Supplier devices like clock providers, interconnect providers, etc
> > >   need to keep the resources they provide active and at a particular
> > >   state(s) during boot up even if their current set of consumers don't
> > >   request the resource to be active. This is because the rest of the
> > >   consumers might not have probed yet and turning off the resource
> > >   before all the consumers have probed could lead to a hang or
> > >   undesired user experience.
> > >
> > >   Some frameworks (Eg: regulator) handle this today by turning off
> > >   "unused" resources at late_initcall_sync and hoping all the devices
> > >   have probed by then. This is not a valid assumption for systems with
> > >   loadable modules. Other frameworks (Eg: clock) just don't handle
> > >   this due to the lack of a clear signal for when they can turn off
> > >   resources.
> >
> > The clk framework disables unused clks at late_initcall_sync. What do
> > you mean clk framework doesn't turn them off because of a clear signal?
>
> There's a number of minor things you pointed out in this review.
>
> Saravana, can you send a follow-on patch for the minor code cleanups
> like formatting and the like that was found here?

Will do next week.

Thanks,
Saravana

>
> > > +static int of_link_to_phandle(struct device *dev, struct device_node *sup_np)
> > > +{
> > > +       struct device *sup_dev;
> > > +       u32 dl_flags = DL_FLAG_AUTOPROBE_CONSUMER;
> >
> > Is it really a u32 instead of an unsigned int or unsigned long?
> >
> > > +       int ret = 0;
> > > +       struct device_node *tmp_np = sup_np;
> > > +
> > > +       of_node_get(sup_np);
> > > +       /*
> > > +        * Find the device node that contains the supplier phandle.  It may be
> > > +        * @sup_np or it may be an ancestor of @sup_np.
> > > +        */
> > > +       while (sup_np && !of_find_property(sup_np, "compatible", NULL))
> > > +               sup_np = of_get_next_parent(sup_np);
> >
> > I don't get this. This is assuming that drivers are only probed for
> > device nodes that have a compatible string? What about drivers that make
> > sub-devices for clk support that have drivers in drivers/clk/ that then
> > attach at runtime later? This happens sometimes for MFDs that want to
> > split the functionality across the driver tree to the respective
> > subsystems.
>
> For that, the link would not be there, correct?
>
> > > +static int of_link_property(struct device *dev, struct device_node *con_np,
> > > +                            const char *prop_name)
> > > +{
> > > +       struct device_node *phandle;
> > > +       const struct supplier_bindings *s = bindings;
> > > +       unsigned int i = 0;
> > > +       bool matched = false;
> > > +       int ret = 0;
> > > +
> > > +       /* Do not stop at first failed link, link all available suppliers. */
> > > +       while (!matched && s->parse_prop) {
> > > +               while ((phandle = s->parse_prop(con_np, prop_name, i))) {
> > > +                       matched = true;
> > > +                       i++;
> > > +                       if (of_link_to_phandle(dev, phandle) == -EAGAIN)
> > > +                               ret = -EAGAIN;
> >
> > And don't break?
>
> There was comments before about how this is not needed.  Frank asked
> that the comment be removed.  And now you point it out again :)
>
> Look at the comment a few lines up, we have to go through all of the
> suppliers.
>
> > > +static int __of_link_to_suppliers(struct device *dev,
> >
> > Why the double underscore?
> >
> > > +                                 struct device_node *con_np)
> > > +{
> > > +       struct device_node *child;
> > > +       struct property *p;
> > > +       int ret = 0;
> > > +
> > > +       for_each_property_of_node(con_np, p)
> > > +               if (of_link_property(dev, con_np, p->name))
> > > +                       ret = -EAGAIN;
> >
> > Same comment.
>
> Same response as above :)
>
> thanks,
>
> greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGETcx-TFL3OAtPvU9_Sjovz4zk%2BYU%2BS7yAC7T0Vo7aRuQdWAA%40mail.gmail.com.
