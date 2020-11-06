Return-Path: <clang-built-linux+bncBCNODNHUQUJBBUGAS36QKGQE4RCWFQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id A88182A9DA8
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Nov 2020 20:13:22 +0100 (CET)
Received: by mail-pf1-x43e.google.com with SMTP id s201sf1973817pfs.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Nov 2020 11:13:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604690001; cv=pass;
        d=google.com; s=arc-20160816;
        b=h71Pr86qkc5T9DTAxiTfAymrWuvqtvIGRxfiGwBcZAgVVCBlikD0v2eCobs/+fxLXz
         YRIxTg4HbmofCuf+8LjRmZsHckJjc5yuPUPS0tSND/wtHNDA7RMvE4vqWe7BK5LTgthO
         gwciAAoeQKgyAGSb7Pi0MCUfqSPeL8k6ADRSgv5CuRbAUCRI8xkqFHJ0O53ei19x5xb9
         6cIDKuRUsHa2E56m5ETAnpV+6plTf4BSecjObmkWv0t1UPYTHMKHq6wsfZZEWm6V6qS3
         oZVX+oFQJlajI43lG45wE6PGs9NA3Sa5XxlN1+DJau1TDSlubeiwa1++PfEgG+2yUNel
         5f+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=tpE4xHq4R6zagixYBJmi1e+oaezZ/4AvhQ/cZ9zEmyA=;
        b=DmejEORsnpr78fFLcFuuJ8vJPNztJFpZfXyggqcbTN151aoARXGzV0vxpYqFPEBMF0
         mvrTLb2klA6UHsNPaU2ISpyQjukUKfKHhBYEMXM3qfXMaQ3TRIdbnPBBtNrpsdZN/O2h
         sm7xtVDxEh1CIMytOtQBSiZDVSWJjPpj9F2/0hSihcdxdL++RPMKj9I8/1i6FM74Iig2
         8i7juu2mDTubAiMIFqU1z5L3DH/GvDnBqX6qpnF08Xwg5qwyo6HVWGBvTO2ejyAJw9D2
         VtRz0WYE8dqdSPS5gTqyIYvE9kkY/+YF/4kqxeLfub0mnzheQOpkU2KTtpRnU8ty2VGf
         mGDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qDSXDHqV;
       spf=pass (google.com: domain of saravanak@google.com designates 2607:f8b0:4864:20::b42 as permitted sender) smtp.mailfrom=saravanak@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tpE4xHq4R6zagixYBJmi1e+oaezZ/4AvhQ/cZ9zEmyA=;
        b=W0wfUbjj84ccwyTbzNHmR016b7bnErt/Tx8fkk+vtwj+y4akf6wGB8+pf7/TZNwmIo
         VORLrzHpwxxNBhOMBJ1L3YJSkOM30ysFELloE8VWNj4fWxKMu/+EgqZjAH4ThtMCtdhn
         X0JUFXPA9DRnqqolkJTdk/qatEN0XcMYrcGtWG/vmx7cI1JeN0RFtQgL7fo0V1RgtS1z
         mFTooF6b8Ey5BeXT7iUUkyBoCiJft3ZDt++lyube9Pxib6qgX7fw5heUBKrMURHemCps
         Ojh2KwQrvvNjcnWm+mvIT9NjSLG4o5+MaTUBgy5aRc+na0DAMjeODOVNlkaFJYfLqJv6
         zINw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tpE4xHq4R6zagixYBJmi1e+oaezZ/4AvhQ/cZ9zEmyA=;
        b=pGyW50wHQDAzRtEvgWyMSV8Y0+Y1+NEIUe23WgwHGqIfmA0YhuEmsHucWiPxumRfgG
         10lwjS2v7F5sY0y0qJxBCvpGt5Cmqfpn32etRKdlhvPZC2bvjWmTo7Y3Tdgq8SrBUfIB
         BjKSdx5BfKF520bnRKBWCQwTnpSsUbIq6V2IHdpj6Elo4e7qgd4tc7V94S7qmjjJzgwt
         M2OeLUB6S15AfrNDkDCq7RUCHuz4NF8IGFpBGcj6O4nhgxnP/NUVN/PprZJ3s9ZQR823
         lqU3ZHgBQ4h+uaFUTe9bz2ErjbVgcXpcNj+HyJTH/ZXLNLee3bCEsfThWdm+qZOA7tsw
         L5DQ==
X-Gm-Message-State: AOAM532xd/vR9fR9fn9PpDQeS3WDeWDog2sTx8bj5R8acyDMxVkUWPiM
	Gh06NMOgqX81b7DowrUvDio=
X-Google-Smtp-Source: ABdhPJzl3yYtMKSm2AKIxNz0PTR6a6zZQyHa7ehGj/IPcXZQA3Rp+D/Em3ABD3PAHHK/Bh1v1Rn0pw==
X-Received: by 2002:a17:90b:3314:: with SMTP id kf20mr1143760pjb.156.1604690000868;
        Fri, 06 Nov 2020 11:13:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:f68f:: with SMTP id cl15ls1403586pjb.0.canary-gmail;
 Fri, 06 Nov 2020 11:13:20 -0800 (PST)
X-Received: by 2002:a17:902:b401:b029:d6:87cb:2e88 with SMTP id x1-20020a170902b401b02900d687cb2e88mr2843038plr.71.1604690000329;
        Fri, 06 Nov 2020 11:13:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604690000; cv=none;
        d=google.com; s=arc-20160816;
        b=mgQH0pgZaxwdPtEvqe/96RJowKbL06YeIl54yDwX5PLwv37zwihg86ZziGJ6a1LO/9
         Vm36JGc/kgGlO45mS3iDmtpOi55LPoboEz7qeO9vGBPYwmWhG3jvM7b04ZFfo6aumQ/E
         DuZOsfKFjspOhDruiCGqCnKjrdNdX91h13RFveLRbMl/4q9a/81DogUrrLEekolybpzi
         7aJ4WpBHbjarXA1Fx4BJ+ydZB+CvfNUG72v6cLrbiO7ZNr3agM022hcFkTr0xsaJEcgw
         6ndapwR0eKC34sTYEX8qw6iYse4pIHbWRhh5alZXuh0/DUiODgXHMenkApDRR4J4p72V
         DvbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=lDPmrGFyyFCuKqcXej1vTwCKboywcjbteDegF6u/TEM=;
        b=ja8ppxTeTRYITPeIN8DJhOcrtTJxJ1ahi6xorCCd6SEoWsO/NFm70m9BdVko5U1Ozy
         tfbCvBFphjTL2alk6ne+EFLCaXyvxax4y22v0fDHUDOfMj/cvSd3nBuqGzyJgn0mJJaA
         9I6bF/hfKopGTsdn62GH6rdl5VCmjIWmAcPhL7DHI80xvIFDzg+A8HY5L794kUtseyAg
         tQb0aEEfLHRMCgYPS8ULTBhEJh3sxR6BlUUVYQ82OvxP3qxi3ajyzziIn1zhrYjTZjEa
         mR2PAPJ6qJV/7N9ipJLXAUTIpDv/0InTnwf35M+PdCaI0UUWb/UYi3mV62gFZeZziDPt
         X41w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qDSXDHqV;
       spf=pass (google.com: domain of saravanak@google.com designates 2607:f8b0:4864:20::b42 as permitted sender) smtp.mailfrom=saravanak@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb42.google.com (mail-yb1-xb42.google.com. [2607:f8b0:4864:20::b42])
        by gmr-mx.google.com with ESMTPS id i4si151227pjj.2.2020.11.06.11.13.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Nov 2020 11:13:20 -0800 (PST)
Received-SPF: pass (google.com: domain of saravanak@google.com designates 2607:f8b0:4864:20::b42 as permitted sender) client-ip=2607:f8b0:4864:20::b42;
Received: by mail-yb1-xb42.google.com with SMTP id h196so2075474ybg.4
        for <clang-built-linux@googlegroups.com>; Fri, 06 Nov 2020 11:13:20 -0800 (PST)
X-Received: by 2002:a25:c483:: with SMTP id u125mr4486728ybf.310.1604689999367;
 Fri, 06 Nov 2020 11:13:19 -0800 (PST)
MIME-Version: 1.0
References: <20201104205431.3795207-1-saravanak@google.com>
 <20201104205431.3795207-2-saravanak@google.com> <20201105171201.GF4856@sirena.org.uk>
 <CAGETcx9_En10j0DwktXtPDrx=Aqdr2iWEuHmYB-=SnfODTmMfg@mail.gmail.com> <20201106151011.GE49612@sirena.org.uk>
In-Reply-To: <20201106151011.GE49612@sirena.org.uk>
From: "'Saravana Kannan' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 6 Nov 2020 11:12:43 -0800
Message-ID: <CAGETcx-i--K+1go-+126bBB85BG8kksgRr3j3hnCRfkt0vqBMA@mail.gmail.com>
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
 header.i=@google.com header.s=20161025 header.b=qDSXDHqV;       spf=pass
 (google.com: domain of saravanak@google.com designates 2607:f8b0:4864:20::b42
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

On Fri, Nov 6, 2020 at 7:10 AM Mark Brown <broonie@kernel.org> wrote:
>
> On Thu, Nov 05, 2020 at 11:26:44AM -0800, Saravana Kannan wrote:
> > On Thu, Nov 5, 2020 at 9:12 AM Mark Brown <broonie@kernel.org> wrote:
>
> > > >       of_node_get(nc);
> > > >       spi->dev.of_node = nc;
> > > > +     spi->dev.fwnode = of_fwnode_handle(nc);
>
> > > Why is this a manual step in an individual subsystem rather than
> > > something done in the driver core
>
> > It can't be done in driver core because "fwnode" is the abstraction
> > driver core uses. It shouldn't care or know if the firmware is DT,
> > ACPI or something else -- that's the whole point of fwnode.
>
> Clearly it *can* be done in the driver core, the question is do we want
> to.  The abstraction thing feels weaker at init than use after init,
> "init from X" is a common enough pattern.  If it's done by the driver
> core there would be no possibility of anything that creates devices
> getting things wrong here, and the driver core already has a bunch of
> integration with both DT and ACPI so it seems like a weird boundary to
> have.
>
> > > and wouldn't that just be a case of
> > > checking to see if there is a fwnode already set and only initializing
> > > if not anyway?
>
> > Honestly, we should be deleting device.of_node and always use
> > device.fwnode. But that's a long way away (lots of clean up). The
> > "common" place to do this is where a struct device is created from a
> > firmware (device_node, acpi_device, etc). I don't see a "common place"
> > for when a device is created out of a device_node, so I think this
> > patch is a reasonable middle ground.
>
> That is obviously a much bigger job that's going to require going
> through subsystems (and their drivers) properly to eliminate references
> to of_node, I'm not clear how doing this little bit per subsystem rather
> than in the core helps or hinders going through and doing that.  I don't
> think you'll ever have a single place where a device is constructed, and
> I'm not sure that that is even desirable, since there are per subsystem
> things that need doing.
>
> I'd be totally happy with eliminating all references to of_node from the
> subsystem but for this it seems more sensible to do it in the driver
> core and cover everything rather than running around everything that
> creates a device from DT individually and having stuff fall through the
> cracks - it's been a year since the equivalent change was made in I2C
> for example, we've had new buses merged in that time never mind SPI not
> being covered.

Since you kicked off another thread while we were still discussing it
here, I'll just move to that thread. I don't want to discuss the same
thing in two different places.

> BTW I'm also missing patch 1 and the cover letter for this series, not
> sure what's going on there?

Sorry, scripting error. There is no series.

-Saravana

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGETcx-i--K%2B1go-%2B126bBB85BG8kksgRr3j3hnCRfkt0vqBMA%40mail.gmail.com.
