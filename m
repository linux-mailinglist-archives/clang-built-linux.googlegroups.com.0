Return-Path: <clang-built-linux+bncBCNODNHUQUJBBGNESH6QKGQERALTNWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe40.google.com (mail-vs1-xe40.google.com [IPv6:2607:f8b0:4864:20::e40])
	by mail.lfdr.de (Postfix) with ESMTPS id D8C882A8718
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Nov 2020 20:27:22 +0100 (CET)
Received: by mail-vs1-xe40.google.com with SMTP id u14sf1152894vsp.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Nov 2020 11:27:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604604442; cv=pass;
        d=google.com; s=arc-20160816;
        b=q8zm2G2QceHq6STFZ3U64rn+H3hd3Ur9uyGCiCUmosNQS6V77ux081BbTWGNCNrauN
         U/A2gIRYHkGD4fgjUW4UJznwyJQdNh7x9wSYLZzXWNhADo5RgPKfJUBjq7W+tYISMLrz
         9ggcfNLMlblxfQ1bmZCJdENBwFjC3qtnQ7KmhrqEwLW0qUgwbhwLW9DQfFF31r+TZg4o
         RywqUZNLuqxytw+LcXtAS0o7ESKoyqKQMJk4Pbm2BiYWcShcjrIj+ECJtmzaIGzuoPlP
         fzwuQ2aYzRB3zBwexT30POrEwSeqGlWC0LFZJVL7gi0/s2eOusigcy+aIC6Pa57ieGrC
         I1PA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=W60J7MNLnfuc4k5vZeG2GwE3XRIjDJzhRsOT61Hxbjg=;
        b=A4lx2qj/uPC/JVaOCJaFW2TvODQ0gEbIhAxQIS5d+n9QDx3z7bDG/TZSDxROVRNeUJ
         c1WAq3isP8KtA+cCQYI4ez4ubcpEaTo39BBvYKFW9CJI3eArsemtUC+hQxA0+ujZlZOE
         NpBvi6RNZTCJ1N0tv3DbScsQwM0JRy7nI7FOzL1r+X2Q6yOZXF0n2c98l9i1KHH1BsSq
         FwyDAmiWTAvwRfrwaPVnqGU9EjyGabg2mUl1LgZ5vyVP5HSSX26Q99aGNamYLIalc5ir
         +4UMJlqB0b4j0EusRD42u+PHQeZbvllLw08T8SOOYWwUuVN4UjwAUx5d2BRNb9Oj+koV
         sD9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OQqCNHtf;
       spf=pass (google.com: domain of saravanak@google.com designates 2607:f8b0:4864:20::b44 as permitted sender) smtp.mailfrom=saravanak@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W60J7MNLnfuc4k5vZeG2GwE3XRIjDJzhRsOT61Hxbjg=;
        b=nPun0kLRl8gtSrfiZYRSKCN4//kKmXcrR0LzQJVcXoNGGHnQaGKK3nVf0jDoDinIh8
         6aq3xcicF/obTzO2wEoG1t6wZODKMQ7FVz6azST76uBl80c5peN7s6aqZuN2t1y227QL
         7y0w/PqM5/H7MGk5UzkvsLqMYKJ5PmThHAgjD5dCKvxQ2heguXWvY1gWtDO8Uti+CYVc
         w7QxYgMVcajPI2/Z565MUQrr6bZsziNr5oPBGvOGnQ+MEJ9mRPf9YuNZRA6o3N+HXtvX
         VkQV6TE7Y+AbwghD3S1Dt/Ad9yS671JM8O/1szNHFGNWlP/609arBlPlGS9l6i95+P0z
         dlVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W60J7MNLnfuc4k5vZeG2GwE3XRIjDJzhRsOT61Hxbjg=;
        b=SMU3WyN1BpZQINEArn7Yubp8dB4b8sPrS9c/oNlqdnKM3gars1O40dRFfx6O+ftNZU
         itQSu01sBwfHz8B7y+mkJlADVzUPsySkvH8uNnzv+Y1PJNRac53SQf3h5/9U+8QFXejG
         xsZjqE0OhrnM12GyR5NEb5eKdpkiGmjrQ+4Z3eil3VfWIve5N4EAmv1oalWfNhmrGMfA
         HNU9jvMkM2f7ZHINdNrTEZEZDNwVaK7XdePgiEtsGD5OqpXY2QK+IIrc4B97a6WUy5D0
         CKHMxjdQk8PyVi490edAS3MgbFobjKlFstFSbb1L+sNaQgSwUq5HdsOjXON480B2Yu45
         cm/A==
X-Gm-Message-State: AOAM532C+395YNUFul/M8tj30Uvr+72PqTIfsSJ9eb/A91AjAaRmwtvn
	1DP0UTl2/bT6T3gW+ciXSjQ=
X-Google-Smtp-Source: ABdhPJypjteWHaRrTj/ajfJTUhIFKC25HQ+8DJb5mX8+60rJrb+Mx+qVrBaOyTGS4teXAhcROqmPvA==
X-Received: by 2002:a67:7283:: with SMTP id n125mr2901574vsc.20.1604604441949;
        Thu, 05 Nov 2020 11:27:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:15c7:: with SMTP id 190ls366131vsv.1.gmail; Thu, 05 Nov
 2020 11:27:21 -0800 (PST)
X-Received: by 2002:a67:e9d0:: with SMTP id q16mr2896965vso.2.1604604441424;
        Thu, 05 Nov 2020 11:27:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604604441; cv=none;
        d=google.com; s=arc-20160816;
        b=T7+PaDNODHiKgdMND5ZOCeoM9oBcO6tTjj37dM8tV2rNCe2GiQVzfndb96Jh9dvxE1
         /uuh65br0bBhOR7ND4zsA5gfAL818vm4vt52492Fw4ox8NW08ShrOY0gh2rXG2KaDdE7
         m+IIo6dJRQwbREZMvP33cjY5j7X8YUpthND484KOiAXdUVlSVIRS0sceit78zclTW6nh
         p8FrKMhQgJ7M6rFlADQlht1o1m1+T7+UqxHdJ2pbuu7R3PMrENMiC3SCyn94g8Q0PA9g
         3ROt394ypYRzAT2FjfiExqcBZdpU8G39B4BYw0/0zt7OupNtJQj5Wq03u8jvx2jB21dp
         1I7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=OEJCPZbEVHfia1Epohqphy6Yj/smF64D3n/3+kypg8I=;
        b=F9t6laMGiGQs/XgY18LdOFO0mRdaOG875J1u+ApqveIQSkzKTamKd4tZk8U341GHbk
         jdEyZI+mnTxj/uHbTasTnDnG63BFTKHJ7XAOGpHpH5nmD0w/tFab4tmV6xa8H7Yd325P
         cw0s5ldyY2hD5P+oK9JEY5p8XZ1Y+NzpbM0jFIFcB6ByMzPKjIHKrygXj/115YiWLkgI
         0Ew5zaKlStRFElgzYCPHYS3+BXe8lMC0Kc1iZw6N7G8RuA4YWW/TzgXbZ89lciSLDDPk
         LusZGAYn+5gTdBedS5JqSCCknaSwNSgT3Fk9xXGw9vdVTZqhUdXb423S4+ypoh+f/bOo
         1eww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OQqCNHtf;
       spf=pass (google.com: domain of saravanak@google.com designates 2607:f8b0:4864:20::b44 as permitted sender) smtp.mailfrom=saravanak@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb44.google.com (mail-yb1-xb44.google.com. [2607:f8b0:4864:20::b44])
        by gmr-mx.google.com with ESMTPS id b16si178257vkn.5.2020.11.05.11.27.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Nov 2020 11:27:21 -0800 (PST)
Received-SPF: pass (google.com: domain of saravanak@google.com designates 2607:f8b0:4864:20::b44 as permitted sender) client-ip=2607:f8b0:4864:20::b44;
Received: by mail-yb1-xb44.google.com with SMTP id h196so2341283ybg.4
        for <clang-built-linux@googlegroups.com>; Thu, 05 Nov 2020 11:27:21 -0800 (PST)
X-Received: by 2002:a25:3:: with SMTP id 3mr5833833yba.412.1604604440845; Thu,
 05 Nov 2020 11:27:20 -0800 (PST)
MIME-Version: 1.0
References: <20201104205431.3795207-1-saravanak@google.com>
 <20201104205431.3795207-2-saravanak@google.com> <20201105171201.GF4856@sirena.org.uk>
In-Reply-To: <20201105171201.GF4856@sirena.org.uk>
From: "'Saravana Kannan' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 5 Nov 2020 11:26:44 -0800
Message-ID: <CAGETcx9_En10j0DwktXtPDrx=Aqdr2iWEuHmYB-=SnfODTmMfg@mail.gmail.com>
Subject: Re: [PATCH v1 2/2] spi: Populate fwnode in of_register_spi_device()
To: Mark Brown <broonie@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Cheng-Jui.Wang@mediatek.com, 
	Android Kernel Team <kernel-team@android.com>, LKML <linux-kernel@vger.kernel.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	"moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Daniel Mentz <danielmentz@google.com>, 
	linux-spi@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: saravanak@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=OQqCNHtf;       spf=pass
 (google.com: domain of saravanak@google.com designates 2607:f8b0:4864:20::b44
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

On Thu, Nov 5, 2020 at 9:12 AM Mark Brown <broonie@kernel.org> wrote:
>
> On Wed, Nov 04, 2020 at 12:54:31PM -0800, Saravana Kannan wrote:
> > From: Daniel Mentz <danielmentz@google.com>
> >
> > This allows the fw_devlink feature to work for spi devices
> > too.  This avoids unnecessary probe deferrals related to spi devices and
> > improves suspend/resume ordering for spi devices when fw_devlink=on.
>
> >       of_node_get(nc);
> >       spi->dev.of_node = nc;
> > +     spi->dev.fwnode = of_fwnode_handle(nc);
>
> Why is this a manual step in an individual subsystem rather than
> something done in the driver core

It can't be done in driver core because "fwnode" is the abstraction
driver core uses. It shouldn't care or know if the firmware is DT,
ACPI or something else -- that's the whole point of fwnode.

> - when would we not want to have the
> fwnode correspond to the of_node,

Never.

> and wouldn't that just be a case of
> checking to see if there is a fwnode already set and only initializing
> if not anyway?

Honestly, we should be deleting device.of_node and always use
device.fwnode. But that's a long way away (lots of clean up). The
"common" place to do this is where a struct device is created from a
firmware (device_node, acpi_device, etc). I don't see a "common place"
for when a device is created out of a device_node, so I think this
patch is a reasonable middle ground.

-Saravana

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGETcx9_En10j0DwktXtPDrx%3DAqdr2iWEuHmYB-%3DSnfODTmMfg%40mail.gmail.com.
