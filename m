Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBF4F4XZQKGQEQXTLKWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id DB5C21901AE
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 00:13:28 +0100 (CET)
Received: by mail-qt1-x83f.google.com with SMTP id z5sf14646651qtd.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 16:13:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585005208; cv=pass;
        d=google.com; s=arc-20160816;
        b=bnBokj1xKxg/ombjM8lXzB6u/CgXkKHErEBMXn9SfXOTo2JtQxFUwKHlyolsz4qr11
         Q5+ODZmX8wj56FJxIjtagec0yrWAdapf8gxYvFtAVWSxXRwRXMWMBSrAoCEGUrtWIHfw
         TDjjn8hffvBCO1FVM5KdRKwYRcSlXNsM+dK9P6legQJpQfPmWtFvj64kv9J3TzOYde2b
         GtQ8bLtpnXLAoSk3oG5ac0J0EV5LPNEytuU+usjqVu9CRvY81qSdkswQ0e6M94yS4ZFM
         akaPF0Ek6Js580xk/NXSQRl34NLu0IvPwXJmEkxzdbIn7IXtfx+mWoH6ItfUaNMo9jHu
         3T/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=OnIm6HorJOTFx7ZFqBLH8VQi1DPUWWWY4qOnudPJH90=;
        b=g2z9iGXN5JU5tzA9VRD6k6/FHUXSCJKDjQZ6UEvCQmOcLyjpbU6U5NE2ucBavZh6B4
         4pi+MrBz/NsOBXIXUOPQHb3TUF9nP1sRBiUyUw51z771yzncplyGmmKlPEcsJegTRCsC
         xJ2ffb2C3JYdY2b57qE6sF4f93915ArR7FIsPELjngP1HG1iuDAymNXpUQ1QzARgb2NR
         QjjdTrgAHVvLENUrBOq3FL92z5j+ozt/x4qfhDi7UVFVX18Zzo2GoH3S0JmD6q6JsdlU
         k0UIVuke1proI6pOIq8p1ZiasjI3LEgFD8wy361j094IWiXN1ky60F9icFaLKdzUO+6K
         vu6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OnIm6HorJOTFx7ZFqBLH8VQi1DPUWWWY4qOnudPJH90=;
        b=HtjhUNvAOcGzeg7IU/DTqbcbcx2etr9WEZDZWiBOQX8ObNgwV2bTD4gkgQsi8cccQo
         xCJ40kqKKXjXbIwlc0B0qvMlbBlRaOEyewf/71JlnyTWayFb8xszviq4vnzmpUbWhHHu
         jZViWVL6aFSNPoVzoba+KaZz8dspphAPQmvXL/SqLZLMaQzbV7GICc4qcX8i2Z/+GBpI
         QTrcdRYc6jllSYKpU+r35z6X75k7HuoZovaOxKZDHbRaWc6t330uvzQhZiCZLlO/TjRo
         Lo0lLnexJCnfA0aJvRkHcZYLzJ6oi0zjRbT2fjXRXQEO+6OLuuNPwKKt6h6S8NrNmwfO
         T4CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OnIm6HorJOTFx7ZFqBLH8VQi1DPUWWWY4qOnudPJH90=;
        b=WvjdSpOpyOXhHShkQKStSsnaSXlIzaJUpu3oiaivJt6JvOMy2I/f3aXiiBL4KwkNku
         VI21p5KmfEXE6ji0CNVvGTT6C7FtNAniUlHUdYRKLsok5uRzRTGAzfGu2Y2gtmTqx4gb
         2NdfMSFy6PqKebpj/CB1CgQOLw4VZy6ArIgHSqAmX8rOwNY4qavgtxUYzCTeCqSVW7nh
         IizIBuJOZtWIVmRQe4nsHtN9o01o/UyNgdyyWnf2HfmlKBY5CtFQP7qGMIh1XmAKZF/8
         DOwa3E1D6ITSYpxsm5C4575S2K8Y9Gzxh0SCy56S7KPJ0J9WJOJ/SxwU7xH+akrEBHbM
         3cYQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2nO5SXaV6mqqUa4cp2HWxN5ApPbBDj9BUc4ZfRMWqvRzFWDWm4
	b/MdumzVAn2svj6Nw71jOrs=
X-Google-Smtp-Source: ADFU+vvO8d51uvVv9sNIOrwnRe9SVDHwIJcRvmxQ1Ob01KAKHcEbveWiw+IcMwREWUGhBDsV9tRgFA==
X-Received: by 2002:aed:25a7:: with SMTP id x36mr23140232qtc.203.1585005207915;
        Mon, 23 Mar 2020 16:13:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:6192:: with SMTP id v140ls869423qkb.4.gmail; Mon, 23 Mar
 2020 16:13:27 -0700 (PDT)
X-Received: by 2002:ae9:e90e:: with SMTP id x14mr15015532qkf.323.1585005207476;
        Mon, 23 Mar 2020 16:13:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585005207; cv=none;
        d=google.com; s=arc-20160816;
        b=GkghuymC8Uw4ujInFjeMZA/O5VduoA5RkKnBRAnvULVotVvXXQbql5K/DFXjcDzeIq
         Tn7I5OdNiJ8TmSX7AZPP3gxGsDa6goSPpdmR/zV2c6Izrn96iCuPEsyGNDAibQCiZ0xY
         fHOc02shsH4YTIilEJsDqGW5xK72XgYQpHHrzmdn0/0+HqLvrvLe6F+znFXFKJnVaV0a
         RrE0QCxDbf2cpdRG6MjAtnMRkGcgorqjt7DiXu/ThKwbwyJYxbt4W0G2N/7nVwWRRzsR
         KOCiSk9dasa/EzV4WN2O+9BP5YnQsGSF/XnFpRAbTxXzKggW38iZZR9txUjJgadRjss1
         0Vfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=ptScZiVohrENiiln3BCbCnRlWk+9ALiouA9CfPFu7uU=;
        b=U6fqNKNWbR6gpB92xfmTQ5AegN22zhgWqAgRfCMTj07QFJsAVZGFqC9aGC09JGVeWv
         IwPtke17Fc7TAKs8ify4G1mFmfXZbdzs+JU6PKGVuIHsHJAYA0UemFvGbD9xzpB5sS16
         6awkoB2dNwMQjl9VS49GoCCqdEXwcg7fdw5qfq1DRwO+WYv8sa24D/QhKMhiagUh+emF
         HyYATb96KOGPH+yKXl/1NgntjGBuLJBo4y17VHUTAAZzSrOI9DcUH4S0Qc4nIKOiykH/
         dEeUwZ3tbAlLyeoU6KIVYXScn7icOJw8OUUEyNwoX9kWbD2vbGBUahoJYQqNltpFKbRk
         ef3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id z126si958518qkd.2.2020.03.23.16.13.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2020 16:13:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: b7fEyMIHZhCXhajZsycyIyrj0gpvwnAy6spRHfdIm2mZXqCHxCfzE3HMIaIRrK178JD7qDsZq4
 WK6wdWBxki6g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Mar 2020 16:13:25 -0700
IronPort-SDR: PECqXpSb0YXwj0zPUkKh21OSLMFtVpLO8hMcd82Qwn4fX2fheU2LQaFpx1AyJnTQ65sGhe+Ebi
 GJ8wsH9ny90w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,298,1580803200"; 
   d="scan'208";a="270043230"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
  by fmsmga004.fm.intel.com with ESMTP; 23 Mar 2020 16:13:22 -0700
Date: Tue, 24 Mar 2020 07:12:30 +0800
From: Philip Li <philip.li@intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>, yidingx.liu@intel.com
Cc: kbuild test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [kbuild-all] Re: [linux-next:master 8211/10629] clang-11: error:
 assembler command failed with exit code 1 (use -v to see invocation)
Message-ID: <20200323231230.GA27448@intel.com>
References: <202003210848.qj0RGHwY%lkp@intel.com>
 <CAKwvOd=4euJP5xkAvYzaopiNQD3hNatX-6DFA2ubkCMK83GuDA@mail.gmail.com>
 <20200321005717.GA19135@intel.com>
 <CAKwvOdko3Bw9ZyzGNm0yghNW+0F_6atWCO09EjGz=-d=AJ+NCg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdko3Bw9ZyzGNm0yghNW+0F_6atWCO09EjGz=-d=AJ+NCg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 134.134.136.20 as
 permitted sender) smtp.mailfrom=philip.li@intel.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=intel.com
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

On Mon, Mar 23, 2020 at 03:09:43PM -0700, Nick Desaulniers wrote:
> DTC folks to bcc
> 
> On Fri, Mar 20, 2020 at 5:58 PM Philip Li <philip.li@intel.com> wrote:
> >
> > On Fri, Mar 20, 2020 at 05:30:45PM -0700, Nick Desaulniers wrote:
> > > Known issue, please ignore: https://github.com/ClangBuiltLinux/linux/issues/675
> > thanks for info, 0-day ci will blacklist this error.
> 
> I'd rather not blacklist it.  So it looks like we don't see this in
> our CI (example:
> https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/jobs/301119543).
> It seems related to which config you compile with.  With the attached
> config, I was not able to reproduce:
> 
> $ gunzip config.gz
> $ cp config .config
> $ ARCH=powerpc CROSS_COMPILE=powerpc-linux-gnu- make CC=clang -j71
> olddefconfig # note this shouldn't be needed
> $ ARCH=powerpc CROSS_COMPILE=powerpc-linux-gnu- make CC=clang -j71
> scripts/mod/empty.o
> 
> Doesn't produce anything, no error from make about being an invalid
> target, but also no -mpower4 warning.  I also don't understand why the
> provided config doesn't set or unset many configs in linux-next.
> 
> Can you please triple check? I want to make sure the steps to
> reproduce are reproducible.
got it, we will check this to see what is wrong.

> 
> >
> > >
> > > On Fri, Mar 20, 2020 at 5:16 PM kbuild test robot <lkp@intel.com> wrote:
> > > >
> > > > Hi Dirk,
> > > >
> > > > FYI, the error/warning still remains.
> > > >
> > > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > > > head:   d8f289c16fbb72e17b783175c1fb0942816264fd
> > > > commit: 35595372d95c0d10784bce1aec8cc144a39eb66d [8211/10629] Remove redundant YYLOC global declaration
> > > > config: powerpc-defconfig (attached as .config)
> 
> 'powerpc-defconfig' doesn't seem to be a named config.  Seems I must
> use the attachment?
> 
> > > > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 1993f95f2b1eb2d8da7f1a01e977d8fe06314bcf)
> > > > reproduce:
> > > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > > >         chmod +x ~/bin/make.cross
> > > >         git checkout 35595372d95c0d10784bce1aec8cc144a39eb66d
> > > >         # save the attached .config to linux build tree
> > > >         COMPILER=clang make.cross ARCH=powerpc
> 
> Hi Philip, I tried the above commands to reproduce, but I see:
> 
> $ COMPILER=clang make.cross ARCH=powerpc
> E: Could not open lock file /var/lib/dpkg/lock-frontend - open (13:
> Permission denied)
> E: Unable to acquire the dpkg frontend lock
> (/var/lib/dpkg/lock-frontend), are you root?
> cross tool binutils-powerpc-linux-gnu install failed
> Please ensure powerpc cross tools has been installed.
> Please install: xz-utils lftp
> Install clang compiler failed
> setup_crosstool failed
> $ sudo apt install binutils-powerpc-linux-gnu
> binutils-powerpc-linux-gnu is already the newest version (2.33.1-2).
> 
> Should install_cross_packages() check for these first, instead of
> always trying to install them?
> 
> > > >
> > > > If you fix the issue, kindly add following tag
> > > > Reported-by: kbuild test robot <lkp@intel.com>
> > > >
> > > > All errors (new ones prefixed by >>):
> > > >
> > > >    /usr/bin/as: unrecognized option '-mpower4'
> > > > >> clang-11: error: assembler command failed with exit code 1 (use -v to see invocation)
> > > >    make[2]: *** [scripts/Makefile.build:268: scripts/mod/empty.o] Error 1
> > > >    make[2]: Target '__build' not remade because of errors.
> > > >    make[1]: *** [Makefile:1111: prepare0] Error 2
> > > >    make[1]: Target 'prepare' not remade because of errors.
> > > >    make: *** [Makefile:179: sub-make] Error 2
> > > >    34 real  9 user  19 sys  84.67% cpu  make prepare
> > > >
> > > > ---
> > > > 0-DAY CI Kernel Test Service, Intel Corporation
> > > > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> > > >
> > > > --
> > > > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > > > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > > > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202003210848.qj0RGHwY%25lkp%40intel.com.
> > >
> > >
> > >
> > > --
> > > Thanks,
> > > ~Nick Desaulniers
> > > _______________________________________________
> > > kbuild-all mailing list -- kbuild-all@lists.01.org
> > > To unsubscribe send an email to kbuild-all-leave@lists.01.org
> 
> 
> 
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200323231230.GA27448%40intel.com.
