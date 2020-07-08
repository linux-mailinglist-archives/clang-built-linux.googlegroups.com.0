Return-Path: <clang-built-linux+bncBCX2JBVY5MBBB5GCST4AKGQEB6CY5MI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D483217C95
	for <lists+clang-built-linux@lfdr.de>; Wed,  8 Jul 2020 03:29:25 +0200 (CEST)
Received: by mail-vk1-xa39.google.com with SMTP id j198sf3158047vkc.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Jul 2020 18:29:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594171764; cv=pass;
        d=google.com; s=arc-20160816;
        b=kOeFzx5Jfa7l9e3EMJePkA2JCuTy+3K8OWfmG1LAMTVy+gUVzxCtvhAvlyGRqf+8Xy
         RBOa7lSpUEyeSd975Eq593b/CtVSHThYTdSRsI9i0AFrj4uOyD2XiRpe60qEB636lMuz
         ohVmMs/KEAi5/Dw1VfwJfVJ1CMzIDQL+pXbDTKufsH6knlGZMHxpaIXuND/DZIinf+GA
         7gZP7H4cW4KjTZyKebosFQcFkPAz2PG51daD4CjqS92bxyLBmmGdn63d5crjJ6KAt7iw
         ChCCFnG/7ncbziN3z9K4a9foEdSkD+vzucSBhqFxmkoPxdPmQr3Al4TszhcG1847cHP7
         fMHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=JiDSqTdi56jdFuOwct/+19JtxK/TN37UNyecYLiI0zk=;
        b=SX/lHvl5utRav5zvEqj49KEFYR4q7Ke9inWox+WkO4pkgkMuOqaCSHGQaIii+ZRty8
         iKOTuIKRiIePIWgjnf9Xr6vMWokjDaaNMYtjPFuh5RXARgf62sLCN534hUZnSrrozs8D
         coOeGsKn4Y4MPyBzcVKCgOw98MRg4XcFhCRQk+smoDJmTrdAukipElZEhAwhah+e72h5
         k5wpfDX6FpCfzjYZeY6XFyt6m/zkp9e8rbhLtY8Ib80qhfrfovy4+1f6aEWrhq9wtfsA
         R81310Ad7GTL/No5K80YgsftrkUWoty9L8NzNyIdXsE2Pt8P/iyomGJjNP/X8+fS8E/F
         mAIA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JiDSqTdi56jdFuOwct/+19JtxK/TN37UNyecYLiI0zk=;
        b=B8cJLQe4k4/76KhyAHostb0TyEULE3lOiwMOoPaR+yrd0LUJp1x9Ot6Yk3QtUUyJ4C
         3vhdpH4LMpHJ7oYrs9XRFweWjALxPoTvvOoJFl/nGaxv5cmh42APqo+WLM9Q2pknaTda
         0LtJNbEDDVuV9rJEKzsJmPP9KkJy3bgv+Ay4/rMDNwspy3GZ0aLVb4WZjm3rgfLJQFeT
         j/KkUmFk/tw67Sh9ZmOVmnQ/xshgUN3kcOx1beEa5eFJAphcVYraBGXyDUuW607IknxU
         Ng2tiIljP1ZYBPylBVrflExiyAkcPmFpbHuX25kRt+Pxvg4uBqhyiGfe3HdZ4ziLavfM
         RYow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JiDSqTdi56jdFuOwct/+19JtxK/TN37UNyecYLiI0zk=;
        b=CvN2OKzsUKcpALTZSqqsV7HMxoSsW2eJkWixl39uMwXc/g0+3xTeUj7eFp1qWlRc3s
         pK9MdpOu6sd3oZS4ceIPtkNOf2UrPpdFqHJzxlgYxIs5TwL9yQdikpV+oBB+aGo02Xwp
         c3T5LmHZLfTNfzjEoN0LgMGMYsTcDpsUR6e8VQQPLEzJR85INUcpLjmtXjqs7cPA0WGl
         QLVX0dDwbAPtQAy+X+b58b1AYTgMgOo8MdkmBv9XDTdErwS3pabhCXaOdyylh2Wb30e1
         bCq7o1lZUFt8BeLMqNGJN72KWzb4GjEy70eQZF7oK5wQ2ovPB5uymPaVb7F5+GXJQBZU
         Cnpw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5307RlSywy9DuDTQnxfXUB+YmXkaSOkD/QQ5tC2E8yUN7CzVpqkc
	xdFzHzFP5oMA2WFHJ7zbc5k=
X-Google-Smtp-Source: ABdhPJyYcf2y0F4Axsuk4qUCBITFWOz+4nonqiCHBFsckUJUWDKspmg2rC7GbASNFwavBVOgaHGBKg==
X-Received: by 2002:a1f:185:: with SMTP id 127mr41450359vkb.102.1594171764162;
        Tue, 07 Jul 2020 18:29:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:b6cf:: with SMTP id g198ls32196vkf.5.gmail; Tue, 07 Jul
 2020 18:29:23 -0700 (PDT)
X-Received: by 2002:a1f:a14f:: with SMTP id k76mr10452385vke.0.1594171763754;
        Tue, 07 Jul 2020 18:29:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594171763; cv=none;
        d=google.com; s=arc-20160816;
        b=Tas9cJ8E1oD0UX9D3HZNC9RUXMs1vE4xkp/WOGanytYhG3TGjvrx4+aBaPpj5kyuwz
         KEWZGs077R7Ceajxm9V2FktTll8H6lAz1Kh9eVnKdX+RQ4cVTJ9pkqf4+8d9+NH08z7N
         Q2YtBekCfORvDKwhTY+e2CNumEAbsGJl77F8ro+LpIU8TZC61IEx2UkVcdvM0w/A6lds
         MUH84nZ/ZyV9c1/FNWaeLc24b5ag4pKTOiM8D6U5Vjv4zMc06xDWVEKhRcQbwtBKwMnY
         ysXzV/fywRaIDhULu6rGx1CFZ7bPDLA7OfGX4c/iIYFOP8RONhJUm9erXD104Pjqirrk
         Wtkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=XPK4uWCj5NhX1L0q+AZbtZYnWwclaWzP22wnNZx/Bj0=;
        b=rhIFIAG/ws9bLx0QseIsQaCptyEpgNHZ5DaAGxJy1s0PjMPZr6bQ6uHfbfBO1dJlX2
         JFtxb73TQsf0rXnBBA5NfSWKGn1gTRxqP0P64XCfzuGCDuSQB0A0GvaT7pfuJz1byltr
         Gu1DIhZe2kxP9sVSzunX2EldqGXbLfIBemWnxEwYcPEQjCkkLRhIGPriMjG0uwu7wCWi
         RtjXqWN9tfXyH4DxUUfc3yqduIS+3N5yL2Ew3qn2a4lpJrMCYmy06Yn4wQpmyXFufXv7
         kWLrB8G4/r47llul7ZXTVg+N4abP2jLKBntWrMlXyEIG3NIu0UGnupywMq+PVGLPl6mm
         nHAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id c186si185992vke.3.2020.07.07.18.29.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Jul 2020 18:29:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: +uyM9bZTmOl9FB8NoMWLuYrq67qN31fuAIzlmnINbkMrkCeZjX3oNEvTU5/Bsba+m7cMUVdMXL
 aIKJHGXRUURw==
X-IronPort-AV: E=McAfee;i="6000,8403,9675"; a="165794581"
X-IronPort-AV: E=Sophos;i="5.75,326,1589266800"; 
   d="scan'208";a="165794581"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Jul 2020 18:29:21 -0700
IronPort-SDR: 08UVssqdXrTEL2Fc3SNQcRCPcl1+soUzdo/XQ2700faymSxnAjPmNx449Gh6/HWD/7UXIeuFYs
 Ee2fAntFKCxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,326,1589266800"; 
   d="scan'208";a="483705004"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
  by fmsmga005.fm.intel.com with ESMTP; 07 Jul 2020 18:29:19 -0700
Date: Wed, 8 Jul 2020 09:29:32 +0800
From: Philip Li <philip.li@intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	kernel test robot <lkp@intel.com>, Mans Rullgard <mans@mansr.com>,
	kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Sasha Levin <alexander.levin@microsoft.com>,
	Wolfram Sang <wsa-dev@sang-engineering.com>
Subject: Re: [linux-stable-rc:queue/5.4 109/220] /tmp/filter-273424.s:50187:
 Error: bad expression
Message-ID: <20200708012932.GA18919@intel.com>
References: <202007061558.jOn3THo0%lkp@intel.com>
 <CAKwvOdnA27AKP4aMGWBQXdjr3wi2XtbK2rvFj2btCGq6RCqGVw@mail.gmail.com>
 <20200707023303.GA277193@ubuntu-s3-xlarge-x86>
 <CAKwvOd=fdVa0K=cVLhuj2EEhAj7fs6Z7r50vwBAps9njbBpmJA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=fdVa0K=cVLhuj2EEhAj7fs6Z7r50vwBAps9njbBpmJA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 192.55.52.88 as
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

On Tue, Jul 07, 2020 at 10:01:12AM -0700, Nick Desaulniers wrote:
> On Mon, Jul 6, 2020 at 7:33 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > On Mon, Jul 06, 2020 at 10:01:07AM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
> > > On Mon, Jul 6, 2020 at 12:20 AM kernel test robot <lkp@intel.com> wrote:
> > > >
> > > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git queue/5.4
> > > > head:   bb26a37d5a4bf25b8377c83fa407a219b3822ed1
> > > > commit: 5cee9e67596f7d694e94d7def7cd9d65a7599f66 [109/220] i2c: core: check returned size of emulated smbus block read
> > > > config: s390-randconfig-r024-20200706 (attached as .config)
> > > > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project a378c0449507e00e96534ff9ce9034e185425182)
> > > > reproduce (this is a W=1 build):
> > > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > > >         chmod +x ~/bin/make.cross
> > > >         # install s390 cross compiling tool for clang build
> > > >         # apt-get install binutils-s390x-linux-gnu
> > > >         git checkout 5cee9e67596f7d694e94d7def7cd9d65a7599f66
> > > >         # save the attached .config to linux build tree
> > > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390
> > > >
> > > > If you fix the issue, kindly add following tag as appropriate
> > > > Reported-by: kernel test robot <lkp@intel.com>
> > > >
> > > > Note: the linux-stable-rc/queue/5.4 HEAD bb26a37d5a4bf25b8377c83fa407a219b3822ed1 builds fine.
> > > >       It only hurts bisectibility.
> >
> > Is this note talking about the config in general? Because that config
> > does not build at all... I see this over and over, even on mainline
> > (note that this report is initially against 5.4, which does not build
> > with versions of clang that support asm goto):
> >
> > ./arch/s390/include/asm/bitops.h:69:4: error: invalid operand in inline asm: 'oi        $0,${1:b}'
> >                         "oi     %0,%b1\n"
> >                         ^
> > ./arch/s390/include/asm/bitops.h:90:4: error: invalid operand in inline asm: 'ni        $0,${1:b}'
> >                         "ni     %0,%b1\n"
> >                         ^
> >
> > This might be solved with commit c4e5c229b610 ("s390/jump_label: use "i"
> > constraint for clang").
> 
> Looks like c4e5c229b610, should we ask stable to backport to 5.4?  I
> don't think we had clang builds working for 5.4 for s390, so maybe we
> should just Philip to disable Clang builds of this stable branch for
> s390? (There may not be too many backports to support, but I don't
Got it, we will disable s390 for the linux-stable-rc.

BTW: does the bot need switch to use clang's as instead of gnu's?

> know the amount of work involved there).
> 
> 
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200708012932.GA18919%40intel.com.
