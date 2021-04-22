Return-Path: <clang-built-linux+bncBC4JBM6XX4IRBROWQSCAMGQEZAR3ZNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id 59CA2367B7E
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Apr 2021 09:52:39 +0200 (CEST)
Received: by mail-vs1-xe39.google.com with SMTP id q4-20020a67cc040000b02902221bedbe6bsf3065934vsl.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 22 Apr 2021 00:52:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619077958; cv=pass;
        d=google.com; s=arc-20160816;
        b=VEOGkfFi8q6MotFigNHjrSMXhkLTzACV5BBgQ5b9+7JAofUBAopEO74FfRGB7kv1tL
         RIlTsEUH/zGeQznSUh3eD/yxOg+eEZJxshWkHZwbdE9y7BlvIE2Z6icdYKXRY1VHWS7Q
         RrB0gb7prJRgAqstHzM+aqqaI2RvFriExcb5RWMeSf9EYxugjwtJxAnEurCJovYGTiRJ
         jWAPOe7bhfpDHNQ4Z4DEIwaCB6GUUA8iRWXPl5JRTxxXgmpDf35m1/d5nNrVjAPDtJc1
         C9UzqNh5Sdidky7nvjySybWpQ9+xrLp5aMQT3I12iiHS6rXJvS6w9FEiD4AnW54gFQe9
         J8gw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=9EO5KchUNNDMplRC1HRdPrMIyGAfvFT3JPcBHK6QbUg=;
        b=ESt3RWA4qdFVlh19P5nN+PPylkUobMkT7nO3kBOJhKiOXKgOH83ga8tKRmcyZPiMPn
         ZrtbkZ/HROkZgynCp9YunvNhicQWRJ2NXAesjHGlqRzIowRLywa03Rya0j2TfI04KLhw
         bNLJBhl15hQl23F2kYs05OPKvGXO37HcP4XBkPiX1E/XIBl0exEgUoeCQ60AIdvmnQUn
         Nlh+HGW6N06yBxp87Fug7vWeissZEV4r08vAIP/OdIJf7sQEG2k2pnICwWA19gfLDLXd
         9cCjEv25xZ1OgP5lNMPNH6lBuDs2KoG6gwEpnneFZLjX00BUq4F8qc1rjRY2jYsX4KNP
         FaZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=S9mp3w9a;
       spf=pass (google.com: domain of johan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=johan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9EO5KchUNNDMplRC1HRdPrMIyGAfvFT3JPcBHK6QbUg=;
        b=YcW4KUx2h0zzXksRZkT5PntKNalXB9PCDIFRG4Q11kWFNWvgACixTOP9rVd38Ig6iJ
         p59xCTmc3ygUBU7u6kMJgQQ2dOpIQYZG75yfALFx+xoL5XePS1EGCmybiuO64MH9WswH
         qhhwoLR755u6MSbP4IfhceKOkmPbxzicDtGSjLGwXVRdQld7wM0MqPeSHASSQxT9CpmB
         aa8afb0IyMigJXEIH0DIFlD7PYxAG9yDtIODl3Ljy2aiKBwzd8NuNEDjxl/eVXdr7pg2
         Dz/ybSWCE+Muwq9y86mvpB7lVFFN+DWVPofdeRtANq7gf54URkM3gzoEKk0QluCMCOb5
         W1+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9EO5KchUNNDMplRC1HRdPrMIyGAfvFT3JPcBHK6QbUg=;
        b=BYS0mKN+runCT6oxRFgSNhvAgkvRxI+F+9JPVy1DaCG3CIOvtbd4A0QMV6HZ8dWwTW
         SrTjLzvZ3lWJp0azZM3o+I1uPMVSmElf8KoXS88KTIk3wxOvrAp6prKrXiMiIWF3MbWh
         wTTuDGCFSRHpdyI4D9MxIQXt+fnItYh7/T0T/oak/rjiPprTmTRsURgztOQUotWqR2tu
         DOhRk84Fv/y0dh+kmkbDcAZWUF9KxLKZD2hkU3fr0yhmR+0YKnje8AZInQ6h5GlQhYi7
         gI5gsj5j12785nMLfpgnlaC8C4Zlb3kCuT2t7BIneLpvfBlXEQsO0NaQieNWwYZAbony
         j3uw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ER8EyLtbTI3V7MrNUKy/XPXCra55wtoab1ef+PGAYk3hZVuhp
	cnPpCdfRIyGZXpVWB20Elog=
X-Google-Smtp-Source: ABdhPJxzONPKNAcmGoSZdsOAzdWOazH1PGgfhyQrCIi5rgPn+OcKA3ArGJwJz6Xm6i1rk5EV2mMEUg==
X-Received: by 2002:a9f:3601:: with SMTP id r1mr1273572uad.54.1619077957722;
        Thu, 22 Apr 2021 00:52:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:3346:: with SMTP id z67ls805605vsz.7.gmail; Thu, 22 Apr
 2021 00:52:37 -0700 (PDT)
X-Received: by 2002:a05:6102:322f:: with SMTP id x15mr1283278vsf.9.1619077957212;
        Thu, 22 Apr 2021 00:52:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619077957; cv=none;
        d=google.com; s=arc-20160816;
        b=UXu3rbb8ewNJ5Dy9RG1lFkkdmC5gNwhuBtKkKTcCCSf2m6R+8+qTPsEJ9w0LAN4nEL
         VpEPMENHB38vXgWb8pNgXXPiHKn190g4lNzDGiW616vbY30a0oHuY9n/M5zvQpoIuwNN
         5tdY3fC2nqrY9PCRC23tpIyOckxkIRlHXS1qnD9R9jusqYENrfmIbkycHq0zh21WeSvq
         IqE2seh7hOMqaIAamNyBuM//7jO7F2nSqxXusRYjpM80aDanHnNruUTT4h+FRaePBjTz
         UzO8nTOSIFLFyNbYHolLcSUgftOyg1JOYsEQXg3lpeK//5OFespZZO8TvrG3vEva88Iv
         0zmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Sa5WSQcBTCa5heL1kr1733n0pVeDX57N65MTjzbNL8A=;
        b=MchmKg34wSsXvgxlcn0Hs88SzA+jqHQ42NNa1fkwPQHboOfyySUDB71uypbVRdOvnw
         8oN/C4XzuNZ1fYPZSqh3YYQZ78i/al1AKDACjhERCwJXSY+IAjWKWyQLPS7bwcxYvksi
         iHfINvScSzQdEdWJLqgSxAql460NFztuPjiS85RN5zjHuUfnmJUyJxHtvqlcPdSxmP64
         YPdCaDOOC5VeVByf81Vibn+U+36va7hcoha6x3lon41FYT2w3shWIt7f/gg4fCeoVpYd
         t4sBrE4VvompADvvLFO9PNk4iOm+8qpLW3CzaAmip9sXU912yuy6vC6OTlyc110SIe+Q
         F33A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=S9mp3w9a;
       spf=pass (google.com: domain of johan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=johan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 27si559130vke.1.2021.04.22.00.52.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Apr 2021 00:52:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of johan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id D504D61445;
	Thu, 22 Apr 2021 07:52:35 +0000 (UTC)
Received: from johan by xi.lan with local (Exim 4.93.0.4)
	(envelope-from <johan@kernel.org>)
	id 1lZU8f-0007XQ-2M; Thu, 22 Apr 2021 09:52:41 +0200
Date: Thu, 22 Apr 2021 09:52:41 +0200
From: Johan Hovold <johan@kernel.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: kernel test robot <lkp@intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Jiri Slaby <jirislaby@kernel.org>,
	"open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] serial: extend compile-test coverage
Message-ID: <YIErSfPrBbUtJ5bf@hovoldconsulting.com>
References: <20210421143115.22797-1-johan@kernel.org>
 <202104220355.v8nwWx2T-lkp@intel.com>
 <CAMuHMdXKWDB89Hm-LQcpfTq=0yjm_xvQsQiD4QuEtW=yVymuRw@mail.gmail.com>
 <YIEnr9g8AmYFuLPh@hovoldconsulting.com>
 <CAMuHMdV94SLyuyHUbrMue-0f_mTNn87WbWJu6an=aPFAjyHY8w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAMuHMdV94SLyuyHUbrMue-0f_mTNn87WbWJu6an=aPFAjyHY8w@mail.gmail.com>
X-Original-Sender: johan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=S9mp3w9a;       spf=pass
 (google.com: domain of johan@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=johan@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Thu, Apr 22, 2021 at 09:40:38AM +0200, Geert Uytterhoeven wrote:
> Hi Johan,
> 
> On Thu, Apr 22, 2021 at 9:37 AM Johan Hovold <johan@kernel.org> wrote:
> > On Thu, Apr 22, 2021 at 09:11:50AM +0200, Geert Uytterhoeven wrote:
> > > On Thu, Apr 22, 2021 at 3:20 AM kernel test robot <lkp@intel.com> wrote:
> > > > >> drivers/tty/serial/serial_txx9.c:987:12: warning: no previous prototype for function 'early_serial_txx9_setup' [-Wmissing-prototypes]
> > > >    int __init early_serial_txx9_setup(struct uart_port *port)
> > > >               ^
> > > >    drivers/tty/serial/serial_txx9.c:987:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
> > > >    int __init early_serial_txx9_setup(struct uart_port *port)
> > > >    ^
> > > >    static
> > > >    1 warning generated.
> > >
> > > This function is called from arch/mips/txx9/generic/setup.c, and does
> > > have a forward declaration in arch/mips/include/asm/txx9/generic.h.
> > > Unfortunately the latter cannot be included from the driver, unless
> > > the || COMPILE_TEST is dropped again.
> >
> > Thanks, Geert. I was just about to send a v2 without the txx9 hunk.
> 
> well, I guess apart from this (W=1!) warning, this driver still
> compile-tests fine.
> Do we consider hard-to-fix W=1 warnings to be legitimate blockers
> for enabling compile-testing?

Since the build bots have enabled them (and people have turned it into a
crusade to suppress every W=1 warning by any means) I think it's
reasonable to not introduce new ones knowingly.

And I'm not too motivated right now to try to work around this one
myself. The idea here was just to enable COMPILE_TEST for drivers that
did not have any build-time dependencies.

Johan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YIErSfPrBbUtJ5bf%40hovoldconsulting.com.
