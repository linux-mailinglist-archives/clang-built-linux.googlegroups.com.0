Return-Path: <clang-built-linux+bncBAABBSPUTXWQKGQEHF6UV4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 18C7BD9B46
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Oct 2019 22:15:07 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id l84sf20179589ybc.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Oct 2019 13:15:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571256906; cv=pass;
        d=google.com; s=arc-20160816;
        b=ikSMSnjwl251euZRiDMYwNFWOFAWuA7k4cxIk2Siu8Y5C/NrfF9hE9SvphkdF7S7F6
         DXcXtaBaiOeEd1wyHS9m/Bj2nnJUpnedSCMAQ4J+suLtGsfeMfzVh43XAhlr4o2BagFM
         OP9/zdhHQNfAF0cbm7ZpEXnQjwEv/71s93ctOTJhhK+QW2hVRa6CoyTQzw/fHI9cb4r2
         X89FUiS3CnmTO0pg2JaxsORtmMnxE136GThxhXoH+bPSx2zSpSagDS1Cok2skGDPguyN
         FSn2OlwosjU8WyPe7o0NjLFhRB1bBLRdJ0G3eiKOwJsvcWAeA2TMn2GiIO2Yylim5Hov
         9OzA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:user-agent:subject
         :cc:to:from:references:in-reply-to:mime-version:sender
         :dkim-signature;
        bh=afJW5h0gyIXfGWExJeDbthZKu8wD1mA++Urj6N5O0b0=;
        b=iKPaWST0ZfBDNb//M+qySzCh2A79ZjWfnCaqS4XEAKDAe6BYAe7pKPSYosSTs9RxNV
         GuMhI9ZlgjMAUqiO5UzUjIPTL4K1mvYXJobUodZOm9PxOTYgb7gE88NlMeo4bGm5RVe1
         nCBe8QOnI3eHCO7S/rn5qdF7W4Cf1yahkfhABHbuwwUWBLuClHEj7QYe7up++v1RuB3+
         KPQ2GZOOYyGugkO+lCbI/RxhkePZ7yXHQHXAU8VouZk8ckFQyf8E6OSCo6pmWbUVmRWn
         5nJLNM9QEkz3xL2CRuhNy7KR/1Xthqjh7YXIRfaOCbEJ0ee0RDDphqJn3cKXHoGlDST4
         wYDQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=dsobUYKK;
       spf=pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sboyd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:in-reply-to:references:from:to:cc:subject
         :user-agent:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=afJW5h0gyIXfGWExJeDbthZKu8wD1mA++Urj6N5O0b0=;
        b=SVR7fhmn3xusoqudI+dplhDx8eeLgGo7ser3Hh2HwYa0M0YgyOu3Jz9btFcZcWzP8R
         p6apuybE9nnw5mzGBnoacCwzBWgbsge9tdXNaGG3PLSe9DFj23UbMn1RhjU7afK+mbC9
         QaC2CzWpKiEowRt0YwDfTd/FeZVHvrMXiDOWQ7bDOgHHIJXG5SxnUHh7kfJGwEasX/Ug
         53uuTLirLfvP5XCq+U3CDJHX++Pd+OSn+oIEnbiDpcHeQ7DuXMULikhC9Khj8GILQopA
         2pFEpd6r+oyj+7Y7ftWJKOW+8lyKLfjBPiiU972k7ACDcLQGjNT7d20UMxjaS4uNETYk
         UZOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:in-reply-to:references:from
         :to:cc:subject:user-agent:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=afJW5h0gyIXfGWExJeDbthZKu8wD1mA++Urj6N5O0b0=;
        b=KsGtlOeHDpjR7E0vGt5O4iXsH0LzlOZRXoppxyaIORR1+sFkLL3EV7GGXFm561GNJ+
         f9OHJmxpUKY4vY+kUVyWyuC0/zZpOZsiDadPcYoYSoECZusQ/tzEeOtzTXHLTVaaMy0y
         uR6WAM21369AnkgiRQJPNJLr2YdZVgDeZ2Yl0Z850QnFh83cqVEo7i/8yJjnrQ+cHH/5
         Q3qZQMpu8WhVQqHjz7smcbuoEqA426fPq8Fzu5mBi/JBF6WRYJCt5ONbtCNxMp2XOzVD
         /o6xfzmghRdQvKcKpP1mXm3UDJj8bNtJxVufGe9FS2qV79sBGJRzZuUujWui9M4bt7Fk
         d27Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXTJPVtxoxSZ2fO2BhpB349j0TF0WoEzvGHnK3q2z0RFdrtcAuY
	ANOzPy9EF02MiXQ2ZuLHMpY=
X-Google-Smtp-Source: APXvYqzlzjJCMNfnsyF2syG5BXw6Nxr6+Fa/bjafAnFOk6aGDiZ3gRVYnbBIp7Zq9De+tVPUQ5s05w==
X-Received: by 2002:a25:e7c4:: with SMTP id e187mr309833ybh.235.1571256906006;
        Wed, 16 Oct 2019 13:15:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:6e54:: with SMTP id j81ls3628234ybc.11.gmail; Wed, 16
 Oct 2019 13:15:05 -0700 (PDT)
X-Received: by 2002:a25:d015:: with SMTP id h21mr338692ybg.11.1571256905657;
        Wed, 16 Oct 2019 13:15:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571256905; cv=none;
        d=google.com; s=arc-20160816;
        b=gZIVFlaffHVhF4/6SA2I8wC4GJiGkoQ+ZlYfDipWoXoAIkFCpOaVVmtvzUTwLQ+M72
         ABVWsyu1y4eCJEqlIZdf5rs/mf9CYq6StE881KaDygNcmbD4Sj6r+k4L3Kz4Fr6/z9/d
         /PjQKN6XRvKJIv6NSNBfgxfnaLLROBv4t2pKQUEscvS1F7N4pRVaUq4XCnzmk20fIVgH
         ym+8Wt4PjMMIZUKGd/97vqMDBxfKrALhUsW/ELurkRG584zdrbRC/DO3CkF4m+T0+Hzx
         0y1M3lIXnh0wOmeXONVrrIvXwBpS16DrAFAfYsYaZ1AY0+ttWY++baO4f29E+OKyahmF
         KMhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:user-agent:subject:cc:to:from:references
         :in-reply-to:content-transfer-encoding:mime-version:dkim-signature;
        bh=C18TKPatM27cxuZiQQ51vbqNVnanZ1reMcxBFNnzAZM=;
        b=jTMOo9yfatxJ2tLAz/5GfZ2IfyBDe3j7nMl/NvYP7PIeq1/ntOSM+SxbxhPZ086Lou
         cmnhSvl/Zxzy1fxiZK9CuPZ6Ja93Zw8ohmXk4QI8PGRxskTwnb9zErItYvo4LxzMGkox
         QjUZvlU8kWa0fSMIuB2A0IkmbAOWJgcQ5ZT9xASWep4fOVRdzWNY3hTlSa3hrc/Dgcg8
         BpfFoEvWXPEPhu/c6iIQDgAhsfDQn/rGFx8zvCNuDcVjw2OZOS2Wzb94rEy0oXusfi0o
         FTzcI6E0ZyoEp7OrpXlfuX534+6ZfmDxbAf5yS3ae3s8Z7fQT+ZEoeO2Gw8LAvk6jYFF
         cVSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=dsobUYKK;
       spf=pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sboyd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x188si1187100ywg.0.2019.10.16.13.15.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Oct 2019 13:15:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from kernel.org (unknown [104.132.0.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8810120659;
	Wed, 16 Oct 2019 20:15:04 +0000 (UTC)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
In-Reply-To: <CAGETcx-FjF+bktBgL6h0ORH3MU4vMM9JNC2oB8Myn8KqvnmhDg@mail.gmail.com>
References: <20190904211126.47518-1-saravanak@google.com> <20190904211126.47518-4-saravanak@google.com> <20190911102926.A9F8D2082C@mail.kernel.org> <20191004153750.GB823823@kroah.com> <20191008145304.2BD54205F4@mail.kernel.org> <CAGETcx-FjF+bktBgL6h0ORH3MU4vMM9JNC2oB8Myn8KqvnmhDg@mail.gmail.com>
From: Stephen Boyd <sboyd@kernel.org>
To: Saravana Kannan <saravanak@google.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, Frank Rowand <frowand.list@gmail.com>, Jonathan Corbet <corbet@lwn.net>, Len Brown <lenb@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>, "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, Linux Doc Mailing List <linux-doc@vger.kernel.org>, linux-acpi@vger.kernel.org, clang-built-linux <clang-built-linux@googlegroups.com>, David Collins <collinsd@codeaurora.org>, Android Kernel Team <kernel-team@android.com>, kbuild test robot <lkp@intel.com>
Subject: Re: [PATCH v11 3/6] of: property: Add functional dependency link from DT bindings
User-Agent: alot/0.8.1
Date: Wed, 16 Oct 2019 13:15:03 -0700
Message-Id: <20191016201504.8810120659@mail.kernel.org>
X-Original-Sender: sboyd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=dsobUYKK;       spf=pass
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

Quoting Saravana Kannan (2019-10-08 11:57:49)
> On Tue, Oct 8, 2019 at 7:53 AM Stephen Boyd <sboyd@kernel.org> wrote:
> >
> > Quoting Greg Kroah-Hartman (2019-10-04 08:37:50)
> > > On Wed, Sep 11, 2019 at 03:29:25AM -0700, Stephen Boyd wrote:
> > > > Quoting Saravana Kannan (2019-09-04 14:11:22)
> > > > > +       int ret = 0;
> > > > > +       struct device_node *tmp_np = sup_np;
> > > > > +
> > > > > +       of_node_get(sup_np);
> > > > > +       /*
> > > > > +        * Find the device node that contains the supplier phandle.  It may be
> > > > > +        * @sup_np or it may be an ancestor of @sup_np.
> > > > > +        */
> > > > > +       while (sup_np && !of_find_property(sup_np, "compatible", NULL))
> > > > > +               sup_np = of_get_next_parent(sup_np);
> > > >
> > > > I don't get this. This is assuming that drivers are only probed for
> > > > device nodes that have a compatible string? What about drivers that make
> > > > sub-devices for clk support that have drivers in drivers/clk/ that then
> > > > attach at runtime later? This happens sometimes for MFDs that want to
> > > > split the functionality across the driver tree to the respective
> > > > subsystems.
> > >
> > > For that, the link would not be there, correct?
> >
> > The parent device (MFD) would have the links because that is the device
> > node with the provider property like '#clock-cells'. The child clk
> > device that's populated by the MFD would be the one actually providing
> > the clk via a driver that may probe any time later, or never, depending
> > on if the clk driver is configured as a module or not. I fail to see how
> > this will work for these cases.
> >
> > Is this logic there to find the parent of a regulator phandle and match
> > that to some driver? It looks like it.
> 
> In the case of an MFD creating "fake" children devices, the parent MFD
> device's driver is responsible for handling the sync state callback.
> It'll get the sync_state callback after all the child devices'
> consumers have probed. The MFD driver will need to do the sync state
> clean up for the children devices or pass it on to the child devices'
> drivers (whatever makes sense for that specific MFD) by whatever means
> those specific drivers talk to each other (direct calls, registering
> callbacks, etc).
> 
> If they are real sub-devices, then they should really be captured in
> DT as child devices and then the child device's drivers will get the
> sync state callback directly.

It seems sort of hand-wavy at the moment. Is the plan to actually
implement this for MFDs that are doing these things? It's really hard to
understand this patch series without any actual users.

From my perspective using driver probe as the signal that some resource
like clks or regulators has been consumed and configured into the proper
state is completely wrong. It makes a large assumption that driver probe
is actually putting the device into some state that has taken over
ownership of the device state by the time probe returns. That isn't
always the case when you consider things like the display or GPU don't
do much until their device is opened by userspace.

It would be better to involve the various kernel frameworks in this
decision by having those frameworks intercept the acquisition of the
resources they provide and track consumers to the point where we can be
certain all consumers have requested and configured the resources they
need to operate properly without something go wrong. Maybe we need
drivers to indicate this to frameworks somehow so that we don't turn the
regulator off for the screen when the screen driver probes but the GPU
driver hasn't started drawing anything there because userspace isn't
running yet?

I'm trying to take a step back and understand the bigger picture here.
From what I can tell we're trying to answer the question "When have all
the consumers of this resource put their constraints in place?" This is
because we want to actively cleanup resources that have been left on or
misconfigured by bootloader/firmware code but we can't be certain when
to do that and if we should do that at all. Is that right?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191016201504.8810120659%40mail.kernel.org.
