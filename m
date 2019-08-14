Return-Path: <clang-built-linux+bncBCQMFSVRS4ORBA4PZ3VAKGQEOMFBWVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E66F8CA00
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Aug 2019 06:01:08 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id 137sf6523722ybd.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 21:01:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565755267; cv=pass;
        d=google.com; s=arc-20160816;
        b=Bi6INAs1u17LsYRXmxU/UVNrEdKCruoa7EkF5wxdBgpB3CCxAJdHZeUFQu1z1FZEnW
         Cl6+f7M73vq0CZbwjDELoC854U42keVns7lTIdwlk7axMs9ATSBzi28bKZeXWGCrvqLC
         akWjg8x6myraN+rlDsmfYyKE1YXceiV02vclMswOeQac04IzkJRKvEddS9eTa98/2zXY
         EQtSKJ8NnqN8GTTP1ftn9QiCkh2hulb+3V9vpOTe6RPTZydL2jXmksg+J0R9NWvugjL8
         fXTVKxGU5aYlxaBWUPDZ/nsTnzgGG49ssdz4SOQteSGq3dkS1ngrNUdXGOCapY7/89T5
         fyNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=PuJCjOkQZt4nKPbOtszaigYra0R67M5XNHNsgHABq8E=;
        b=pgE9PKBcnYhG4CAlE9uRvi3SZlrehl4MrfteGrSjVPk3JuxDdHNiUxsVd13o1G1VGb
         H1fiyu8WaaO9ZFaK3lBZMaxnIsDner9XSoTjLe6n/faiZqgGZ/H/89zoqnnbR2rIs64D
         AgTQKg2lsI9pPecxUsQYJo/OqugukjLg2asv7ChTk8PmSutXKbOtHi1lUTFt7Q7zbMRa
         +3b8C+zZkubiaMTy8EfIdONyzLiG08PViAxt+lDwcyJAhBAsCrIooaf4gCb4nSR+0L8s
         huWX6DY8KOGxywq74tvEKWX0Yc+OATjOj9HOcN9ozrspjsPYSZ5ORk6vLGRreh14aCKY
         kMIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ONnlQGzs;
       spf=pass (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=vkoul@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PuJCjOkQZt4nKPbOtszaigYra0R67M5XNHNsgHABq8E=;
        b=qKwGN5JbTdJQ3ihrBiCNLhRd+i8NypF8AfypSA4RQQUvII/VsHMJ2aykyDJwuqEVJS
         Z2k4Fa0R0mbRSyBROu82ijh23ggunSZCdExD9RlkB/LX8BSS/j1mM6XVPEa4RRNkV3OB
         gbYrmTuD+O8cI44O8nEnI2HqgsydaL8EckJAjJ0ibmbbTDLu63uOBpoidxTZtUzc63jC
         fD02a0OVsGH3PoC1vxnMnGcTGVmYCzBac7aUYaV4M/1amCK6RDxLwQfZHWXYt2MpgCLO
         Jfnj0i3MFHpWyHXWKBBJM/smK08D4PHoa71vhYvZCWAvpqwHoNwodfqNyBU/AO1o2fBb
         AH7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PuJCjOkQZt4nKPbOtszaigYra0R67M5XNHNsgHABq8E=;
        b=It/pltIOiAhQPjnDbeM6cwt5cnyrr9I3WD3jxPN1DUAb2RndUWBo0liBr1Naym9y+H
         ylK9iQ2NT7BUdrLtl+YhlfcTY3iDWghcGYA1gvpB7gmrFJoaRajY2WRgwL6rErAD4E/H
         ZzomhOH3z8wIvfkc8ouf6wfe9mcg6PSrWZJ6mIXuhyeewJkZkU4boKrYOSfvXvmIhmRy
         VZlDf55cZ19thxi97Uv1fOuPFjFlK5cMJ+GuCRAg4aAHolJL6m4dQbJbTWMCOAnAoJa5
         kKpnzXDa/cG2QM72tRgnZIKWIezRWi4z+sa8ZTA0/RdhNPQYQZcBEPaTk0Ugla9YpMeN
         ZGfw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWe035uBUs0C6CUqyBLK1FBH+YIOEUWVfG9A6gcrVqWjB1y3S0G
	GOmAn7G3/b8YfOYC6OrJaeQ=
X-Google-Smtp-Source: APXvYqwNSQbOvO3AnUS3M21CLuBe8JJFG/pKCELyYTuTdP9Ouh2jwMe0wJu6o4KLXqB8/1k4NKYoHQ==
X-Received: by 2002:a81:3acf:: with SMTP id h198mr19881928ywa.352.1565755267164;
        Tue, 13 Aug 2019 21:01:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:8544:: with SMTP id v65ls127260ywf.16.gmail; Tue, 13 Aug
 2019 21:01:06 -0700 (PDT)
X-Received: by 2002:a81:780f:: with SMTP id t15mr21924750ywc.74.1565755266830;
        Tue, 13 Aug 2019 21:01:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565755266; cv=none;
        d=google.com; s=arc-20160816;
        b=EEjvBzHZmT7BWYgeX0PuA+avVjNfG3BJun3BbARgS3yanqIr+FO+n212R8EYCKLyfs
         KJR+D38fSonmy7WF7bk5TxgOCevA3mIHMiS5h8bpsO0hN/UqqsrENwl0W8zAyr6XEzmy
         GWQ5gNvaJ+BKvMLr2pmj31z5J3zPcWueREvQ7seN8iM/IjyE77xVtt2BeSe3vGqQEyDj
         QZwLiBqK3GXXyBcdAMI3UMY4/cqeFY/g9rEVVMFEl19/dgBAZ0YxYBqce28LUyX7cwW5
         LeNOCIe5CVwEMawBX6R3+QYsMv3fwmLYmx+3cBHBGNdd6JyZMXRxUntOPSFWTDKDh6iU
         mvgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=lXef3OrrLNpsIK7vdtH4rKwnBBU6VPCqVDSJ5Ex87M4=;
        b=npxSo+zGKIOSIccLIlJJSNGAyIGZiEA4f//q/zaBNqhpFdloOHiD55gm6jx8lAjjt/
         eObNLDnvoVQbvOlFZCkQIubmih5oOheZu4nT54O5RZlmJfc+wlrdr4/kqdS/XBdfAvKB
         Pj3Xb+Jys0qjqH72mbgPCmc9tRoxJVApkTExdL5Kl70W1W7Od5wGotigCIdt4RKMySjA
         3VxY6j9fANmAFZwXXvfbpcivEeKE+sArrXBKUgy63gfhkrWc+GohWUxeeolI4jhHpXHk
         ZDqLCTKWZDz8tJnfg5/7QmO9Psol4dGLnaosqbRMj58IH6OMqoWGQOXhb35CMLVzHlxg
         KU/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ONnlQGzs;
       spf=pass (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=vkoul@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p188si5258160ywd.1.2019.08.13.21.01.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Aug 2019 21:01:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (unknown [106.51.111.160])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9C3262083B;
	Wed, 14 Aug 2019 04:00:59 +0000 (UTC)
Date: Wed, 14 Aug 2019 09:29:47 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Sanyog Kale <sanyog.r.kale@intel.com>,
	clang-built-linux@googlegroups.com, alsa-devel@alsa-project.org,
	linux-kernel@vger.kernel.org
Subject: Re: [alsa-devel] [PATCH] soundwire: Don't build sound.o without
 CONFIG_ACPI
Message-ID: <20190814035947.GS12733@vkoul-mobl.Dlink>
References: <20190813061014.45015-1-natechancellor@gmail.com>
 <445d16e1-6b00-6797-82df-42a49a5e79e3@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <445d16e1-6b00-6797-82df-42a49a5e79e3@linux.intel.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Original-Sender: vkoul@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ONnlQGzs;       spf=pass
 (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=vkoul@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On 13-08-19, 09:22, Pierre-Louis Bossart wrote:
> On 8/13/19 1:10 AM, Nathan Chancellor wrote:
> > clang warns when CONFIG_ACPI is unset:
> > 
> > ../drivers/soundwire/slave.c:16:12: warning: unused function
> > 'sdw_slave_add' [-Wunused-function]
> > static int sdw_slave_add(struct sdw_bus *bus,
> >             ^
> > 1 warning generated.
> > 
> > Before commit 8676b3ca4673 ("soundwire: fix regmap dependencies and
> > align with other serial links"), this code would only be compiled when
> > ACPI was set because it was only selected by SOUNDWIRE_INTEL, which
> > depends on ACPI.
> > 
> > Now, this code can be compiled without CONFIG_ACPI, which causes the
> > above warning. The IS_ENABLED(CONFIG_ACPI) guard could be moved to avoid
> > compiling the function; however, slave.c only contains three functions,
> > two of which are static. Only compile slave.o when CONFIG_ACPI is set,
> > where it will actually be used. bus.h contains a stub for
> > sdw_acpi_find_slaves so there will be no issues with an undefined
> > function.
> > 
> > This has been build tested with CONFIG_ACPI set and unset in combination
> > with CONFIG_SOUNDWIRE unset, built in, and a module.
> 
> Thanks for the patch. Do you have a .config you can share offline so that we
> add it to our tests?
> 
> > 
> > Fixes: 8676b3ca4673 ("soundwire: fix regmap dependencies and align with other serial links")
> > Link: https://github.com/ClangBuiltLinux/linux/issues/637
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > ---
> >   drivers/soundwire/Makefile | 6 +++++-
> >   drivers/soundwire/slave.c  | 3 ---
> >   2 files changed, 5 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/soundwire/Makefile b/drivers/soundwire/Makefile
> > index 45b7e5001653..226090902716 100644
> > --- a/drivers/soundwire/Makefile
> > +++ b/drivers/soundwire/Makefile
> > @@ -4,9 +4,13 @@
> >   #
> >   #Bus Objs
> > -soundwire-bus-objs := bus_type.o bus.o slave.o mipi_disco.o stream.o
> > +soundwire-bus-objs := bus_type.o bus.o mipi_disco.o stream.o
> >   obj-$(CONFIG_SOUNDWIRE) += soundwire-bus.o
> > +ifdef CONFIG_ACPI
> > +soundwire-bus-objs += slave.o
> > +endif
> 
> I am fine with the change, but we might as well rename the file acpi_slave.c
> then?

Srini's change add support for DT for the same file, so It does not make
sense to rename. Yes this patch tries to fix a warn which is there due
to DT being not supported but with Srini's patches this warn should go
away as sdw_slave_add() will be invoked by the DT counterpart

Sorry Nathan, we would have to live with the warn for few more days till
I apply Srini's changes. So I am not taking this (or v2) patch

Thanks

> 
> > +
> >   #Cadence Objs
> >   soundwire-cadence-objs := cadence_master.o
> >   obj-$(CONFIG_SOUNDWIRE_CADENCE) += soundwire-cadence.o
> > diff --git a/drivers/soundwire/slave.c b/drivers/soundwire/slave.c
> > index f39a5815e25d..0dc188e6873b 100644
> > --- a/drivers/soundwire/slave.c
> > +++ b/drivers/soundwire/slave.c
> > @@ -60,7 +60,6 @@ static int sdw_slave_add(struct sdw_bus *bus,
> >   	return ret;
> >   }
> > -#if IS_ENABLED(CONFIG_ACPI)
> >   /*
> >    * sdw_acpi_find_slaves() - Find Slave devices in Master ACPI node
> >    * @bus: SDW bus instance
> > @@ -110,5 +109,3 @@ int sdw_acpi_find_slaves(struct sdw_bus *bus)
> >   	return 0;
> >   }
> > -
> > -#endif
> > 

-- 
~Vinod

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190814035947.GS12733%40vkoul-mobl.Dlink.
