Return-Path: <clang-built-linux+bncBDJNHL5JSEOBBB62TX5QKGQEZHU5TBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 02F94271526
	for <lists+clang-built-linux@lfdr.de>; Sun, 20 Sep 2020 16:54:00 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id a10sf4635148wrw.22
        for <lists+clang-built-linux@lfdr.de>; Sun, 20 Sep 2020 07:54:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600613639; cv=pass;
        d=google.com; s=arc-20160816;
        b=mShyN/JT3SRDNlntSxaPNsE6RIZVqO5JUx3qy73QK0P6YEtCNCR0sGU6X3Tf2YbsGJ
         3+njwy5ugxKEZiAfqLeI/DKiZfgN+G8DRKCfOCBv2vtNfavFGoHUHreUWuxbM6rYQMRB
         fBOTGQyLzI29ErEv2IBaJ2Fi7GwkaHoqs7vqBOHsleKUoH/BAVvd9AiJ+v4ZT19N9kRO
         m9P3JXFcELJZ9P1p5IiXaINBe8KGZvsYIZmoZrRUeX3qyuiYS5ACF3LfL540QnMgqqBk
         +6kl+nB9Ti9VhRLAFvQc0bkvbjRiXtfOP1DZeWSG2ef2bYK4Cur8QFE19ahWsJ0Yb/ZZ
         qZug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=6ZOnrigOutSVFT6PLxkcYqxDh7olOss9WF7vt/bFSHw=;
        b=yFv0J2ixDyfytLctvptfLyLpm5HDPE2d7WbxuBmDYFltFK3ldgMt+SQoiPfKaDO0o/
         4cwcaPosK4t3RhjEua4vJOiK9EauUUHgnDBzWCDcCOlI1uTl8Rfwrtcyjbf41ekheGCb
         eUKVi1GJhzSo+hZMFHBfRl0rw8qfRLXHR1BME/U4rfsPwAZgPzQqFN47I1Cxvd0JkmJX
         rMkN9cRj6gkJUCnl9YR+fLqqEWDGLeH5fNwbXqtHETVP5DL1IKgeGRidFOySU5di3n2m
         weFVnqVcizkoW1yN0uGZ+8kmWgE2ZGKenVKJj/5P7fU6wGfCTU86+HnaMtULww+kVow6
         2ZtA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6ZOnrigOutSVFT6PLxkcYqxDh7olOss9WF7vt/bFSHw=;
        b=NQhVnk77a/GQPwy0nV1BVO2cUIGsLRgoAug+5dOTDVEWJ1FTynzJxRmLfvpK/hFYM3
         WjPDs5WO07wKvVEq67+pC7KYERdQy/lf46BrEBudghPSiaArgZEpD/i3Yz2waaAOO+p+
         pBYXPkZQxjgpGspnEe+Q9WRXws7PVV3NvMGfvGKj+OM1KUn24f1PN6YdTjvj8udy/DPU
         OFAlJyH6ZgLBv026S3bNM61LX8KO2T3aSM31tAWG3b9BqjQeowd78RO6Qwo/ax5Rn5Ci
         f7BoMe66m7Xxrd8ZYTlvYIlZsUXRbNQjsN7xnhzRVvo+Ny8MsGt6gybnNoRzw3nG06NA
         dj5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6ZOnrigOutSVFT6PLxkcYqxDh7olOss9WF7vt/bFSHw=;
        b=C1P58EHMazrOKK2fi1OtHmTlmnroGcVpUemcrFePilQyTsSCa1zJfBP37LJC77SNCH
         iBCUcuMvoYSj5Pyfhc/hbLmgaMXiXINF1waur01QR6QaO+5OjFfvljQoW89YNgYC1hWs
         J9nxoazVqZGfcw00JiJeIq8lgoRjJkVgqdw9oUE2fj7QT9V0slZ5zQ1XSkCWD6JE8l0h
         hXCgHMLbJgLO7YMv1c7QqqoZVKom9KGUSseSgMuDpXUoEuWmioQUZEqNZalXSpd8kzYX
         gUVMC3fEpjed0S6/ATJULIeP8DpPIW5j6AfsrXWXw9N/V403xS7BpiluW+vxI02VWspM
         3C/g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532CAYuJrc69J6HVwfZSYIInwxk17AqyKi3sf+wt3ccC285RnINT
	a+SD8nrkIcY/DA/8UpNTQYM=
X-Google-Smtp-Source: ABdhPJxVPGbGFh0up4jIys/QJYSZR1iwzFXVcEs0/Z/tlhlfwB6H/nyrCgRcLfc85cjKTQXMzCq7SA==
X-Received: by 2002:adf:ec87:: with SMTP id z7mr51525072wrn.57.1600613639735;
        Sun, 20 Sep 2020 07:53:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:e3c3:: with SMTP id k3ls5518987wrm.1.gmail; Sun, 20 Sep
 2020 07:53:58 -0700 (PDT)
X-Received: by 2002:adf:f3c6:: with SMTP id g6mr52030152wrp.340.1600613638692;
        Sun, 20 Sep 2020 07:53:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600613638; cv=none;
        d=google.com; s=arc-20160816;
        b=WvtKFJ8HFBoGUdgUa9DyefOKjMU47nYBoCiStX45NbjwwL/R1UAMBmAXXR0MqvDHGF
         GOps2APyxgjofHSNmzDm6xKyUtPmyZ0nwBgvbROfhVj5o+eC9c12jRkldSdYbwlPYSSv
         WfD4X7eQ5vFncdSpbasUKuQR17YAK4MObpkkosxlh/wFq1WEp0xsZBLA+uD2wv50ZHVQ
         XM7Wf/At5Lejkhb5IRJ6ovVdLFN/ekqjDkOLN8Ot3cDBbASTj12+2nn34GAkywqyx9Te
         CjLMEH1gra+WwybIFd61JMuasjlxKgED0fxNAVZw1jOTJGsb1ssPC9OMRJIETWeKv/mw
         Wr9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=oXirT9vltCZnsS8ckuijkHm6WifgElYEUX8vEWaXzDI=;
        b=uWqPrWwhSP2EzdxY+KIWE8R8biI0i4qA5eFaA/+h/98ExJuxeAfL5eXiMYUZqcVDth
         WZfqfG+WXS1tfpTkdKOdr5H8VPFRNA2/lGYDZ7u8d7moMhuVevTe90E71QrWjpwegApy
         Cxej8gX+U12hCbeqcxiMbeBRR4+bdW9QPV23HvCuSpBa2XJl0cnWkTlliWm07vCtN0Sj
         UnqoEx5KH/CgzCf+pou2vbA4FuvtMruybxDnuBkUJguM5EKw60qMINrcDYMqrGSBFsef
         HDQgPg7r7Wq+aqRM6gTCZjLs7hytWifbVFYoRsEzU/aOjcQ4E+9inrTj2ISBY9bXfavx
         SVXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
Received: from vps0.lunn.ch (vps0.lunn.ch. [185.16.172.187])
        by gmr-mx.google.com with ESMTPS id b1si235134wmj.1.2020.09.20.07.53.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Sep 2020 07:53:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) client-ip=185.16.172.187;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
	(envelope-from <andrew@lunn.ch>)
	id 1kK0it-00FU26-QI; Sun, 20 Sep 2020 16:53:51 +0200
Date: Sun, 20 Sep 2020 16:53:51 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: netdev <netdev@vger.kernel.org>, David Miller <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH RFC/RFT 0/2] W=1 by default for Ethernet PHY subsystem
Message-ID: <20200920145351.GB3689762@lunn.ch>
References: <20200919190258.3673246-1-andrew@lunn.ch>
 <CAK7LNASY6hTDo8cuH5H_ExciEybBPbAuB3OxsmHbUUgoES94EA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK7LNASY6hTDo8cuH5H_ExciEybBPbAuB3OxsmHbUUgoES94EA@mail.gmail.com>
X-Original-Sender: andrew@lunn.ch
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted
 sender) smtp.mailfrom=andrew@lunn.ch
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

On Sun, Sep 20, 2020 at 12:42:51PM +0900, Masahiro Yamada wrote:
> On Sun, Sep 20, 2020 at 4:03 AM Andrew Lunn <andrew@lunn.ch> wrote:
> >
> > There is a movement to make the code base compile clean with W=1. Some
> > subsystems are already clean. In order to keep them clean, we need
> > developers to build new code with W=1 by default in these subsystems.
> >
> > This patchset refactors the core Makefile warning code to allow the
> > additional warnings W=1 adds available to any Makefile. The Ethernet
> > PHY subsystem Makefiles then make use of this to make W=1 the default
> > for this subsystem.
> >
> > RFT since i've only tested with x86 and arm with a modern gcc. Is the
> > code really clean for older compilers? For clang?
> 
> 
> I appreciate your efforts for keeping your subsystems
> clean for W=1 builds, and I hope this work will be
> extended towards upper directory level,
> drivers/net/phy -> drivers/net -> drivers/.
 
It definitely is.

drivers/net:
https://www.spinics.net/lists/netdev/msg683687.html

drivers/spi
https://www.spinics.net/lists/linux-spi/msg23280.html

drivers/mfd
https://www.mail-archive.com/linux-kernel@vger.kernel.org/msg2211644.html

etc.

> So, another idea might be hard-coding extra warnings
> like drivers/gpu/drm/i915/Makefile.
> 
> For example, your subsystem already achieved
> -Wmissing-declarations free.
> 
> You can add
> 
>    subdir-ccflags-y += -Wmissing-declarations
> 
> to drivers/net/phy/Makefile.
> 
> Once you fix all net drivers, you can move it to
> the parent, drivers/net/Makefile.
> 
> Then, drivers/Makefile next, and if it reaches
> the top directory level, we can move it to W=0.

Do you think this will scale?

Lets just assume we do this at driver/ level. We have 141
subdirectories in driver/ . So we will end up with 141

subdir-ccflags-y += 

lines which we need to maintain.

Given the current cleanup effort, many are going to be identical to
todays W=1.

How do we maintain those 141 lines when it is time to add a new flag
to W=1?

How often are new W=1 flags added? My patch exported
KBUILD_CFLAGS_WARN1. How about instead we export
KBUILD_CFLAGS_WARN1_20200920. A subsystem can then sign up to being
W=1 clean as for the 20200920 definition of W=1.

If you want to add a new warning

KBUILD_CFLAGS_WARN1_20201031 := KBUILD_CFLAGS_WARN1_20200920 + "-Wghosts"

W=1 will always use the latest. You then build with W=1, maybe by
throwing it at 0-day, find which subsystems are still clean, and
update their subdir-ccflags-y += line with the new timestamp?

This should help with scaling, in that a subsystem is not dealing with
a list of warnings, just a symbol that represents the warnings from a
particular date?

Or maybe others have better ideas?

   Andrew

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200920145351.GB3689762%40lunn.ch.
