Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBV6BQD7QKGQEJTAI6FI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0746C2DF82B
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Dec 2020 05:13:13 +0100 (CET)
Received: by mail-io1-xd3f.google.com with SMTP id t23sf4772469ioh.0
        for <lists+clang-built-linux@lfdr.de>; Sun, 20 Dec 2020 20:13:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608523991; cv=pass;
        d=google.com; s=arc-20160816;
        b=LVQs2jxA99SxNr+vB/Z2qRwNYjl6z5xEKoMin4PXKoRFlvU6FxQ8C9skE+gp3jDQN2
         CazAGgTgbny6Fo6BVM+OMhtzM37ZlvaED+OvjdqdqtodDTH6icTTzKsyCd8C7cWu57LX
         e2OrgOA8aK2PW5SxppaQ6FWPGoQI1xNaBcsl9bJa6kj97AohFGi5sr/we36YCvyWQ00F
         OuI3zk0q8aWpr7gyRgrToAmL+sH2tfBYtimgnFIWTJvAOh2jvGRGnUEO6L/5KKeIGnqp
         Jwj3gH+wnioUObG+x0Re4KFKaFk38wOtBi3p09vw90EEFMtCV+gyDxnfINdwLaAmrDyi
         LsSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=fRtg4SPkRnlvfeBPUTL3882zL0gNS9tNX94E3WgNPd8=;
        b=Lwt/3qu/q/4oIXV7808AcTwOCYq9WgRHG64ztrAksqAKV6VUC/x0qLWdPrmVxv4Yzb
         v6cr9KSxcUkWNKL9g6GiGUX5tyQtsEpk2wEi2f8XflJFwxME4wcurXyDQkSyjFgBsfJw
         yHzYSuDIj5HLq1x/ARsSDBWUzFoOou3UT81DpekreAe0dymJph5f0LM5XD92k5XXb0i4
         GpfILN9lG4b5wZCsAYIV1W3lsDfpR6CyyxOICsfdpc8wNJTGkD/+I2GBCFGDQu+dFiWd
         48Qs7cWp7vH4Jx3SZAA85EvAKMzop9jrxF2v65/KzrTAq55nY1CmEUi9LE4cxGLB3aWB
         XSxw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fRtg4SPkRnlvfeBPUTL3882zL0gNS9tNX94E3WgNPd8=;
        b=W17nfYLNIkDVbfK96KxQ6CxTXiE4nieT9MIErG4oXsz0Tz1+jJMKpFdM2vlEADEP3t
         4NH365SkhNet+ob2TBtzWOr/kXBP4g36MGgF7+9eaFrxfJKujcYZYNX7FpgHS+QuWjXd
         uX+dj6XPGP44dSsnhWnsXb+9QHM5vGJNA3dcEd724Pvj87e1kJ/YRxmWe+E8FplWK5v6
         mPRsbzQabFJ++L7+rcn5PcOszVn2v2FEsYJpPEEgMcFsW0O4WF4jUpIGYux+yCy9dcDq
         tdUnQd/BIPtJzvvck4uumhQCEE9BAVuDT50lFBzw2y6dzOr50sY7WH+pxAjLcEscal1b
         bfdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fRtg4SPkRnlvfeBPUTL3882zL0gNS9tNX94E3WgNPd8=;
        b=GPqUri4IkQZ1a7puqlGqS8btcHON1nGW1Js6cL2SYatehCZlFXkMztZNgug6bNU+wC
         bUem22yUD6Oqrvsk2Rl/w8+7hiN+Jxrklx7MhUobR6rsHPhFzc/uYxmHJRKJQ/iV+SLH
         5x3BeWsooQIAdGjAVmc5UnbFp7Km0V7p1sd0tr6cE25mHSEF5Cr6AqpGKiyybzMktqgN
         WPaaGtWjDYe01CR/sK2QYWoqrXvXzihDIHhe15JXEnFDYrYJTkLhMKacq8GiuDXFSojn
         +OVcyKnFALu74PIaZ6uvsgbl0HW/WwVR5xnrT6j/ibhSZpNWRDH3uxJq7jNQB+/bFR09
         /7sA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533UtdRVTRq/MzzCB58ZOjsDBi6hIf/6Yx3ren1np3YaOoDAbUq+
	GPI20kUVfEyaG/f2Ylhe9SM=
X-Google-Smtp-Source: ABdhPJwa0Quqy4XOUtW9BtuSEuXdE8YooAKQf+7p2JZivB5uEVV0doba5bdFNvQLKENOqyOC1xsuIg==
X-Received: by 2002:a92:d1c9:: with SMTP id u9mr14622607ilg.211.1608523991788;
        Sun, 20 Dec 2020 20:13:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:8719:: with SMTP id y25ls6003831ioj.2.gmail; Sun, 20 Dec
 2020 20:13:11 -0800 (PST)
X-Received: by 2002:a5d:8a1a:: with SMTP id w26mr12831108iod.112.1608523991374;
        Sun, 20 Dec 2020 20:13:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608523991; cv=none;
        d=google.com; s=arc-20160816;
        b=ekxHoArKgzXsjvf04jxLs9zmL/c1q1qt4bun8YBcXnRnWT9dkrttS3eRq2oU6pbcZa
         Zm7ZaASl6fHKcn4NOoHKBVMnqVlcuY/MTvwcqsg4yv9iY38vXa0Cnab048cSOhzJyZhJ
         rpWI4k8Aq468hqQN3Q9tU/NS3Uu3RKCzegq0apBWnN351RlwM6SXTWB/RpfbXhEghC2W
         SMK0OosS9Cf0tIQmFBMoInpJnGGFMK+96MUZoqfnY7hDmkgrpAwn0JO8JxJRbpquOIIb
         iRxRWAKrPY2nPughkCRiBIgj3u5asdIw7n9MeeHQUuAaEnkaTu+ikZDvw+McERmmpx8y
         kBAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=66hjD2yRuUiiR+e5I5GaRseupXmknUcHAwvX+ffJQIw=;
        b=bo6nbi1j9kWINad8/8qSCMrzaTIwG8wTr3D9CzYdUzHlwzNIoMX3Q+BZJvsNIKO7eZ
         xLugEB786gKXSYxTnqJ86OAMSoQC5WoGmc0dMxNQG8CV9zFS28iy9hrwW1VE+4QuC6xI
         QMporCo9aVp1jkzovBN6MFacnY8+X1TQgqRAoDzArnPSr5nQKcCeDzsVqg7gGiKJxGVW
         rBRhSp5yPbMcDEI9BhJv3tlpYIvrbGSVt95hru9aYIRegzyKTWj+EHuVGVNY1VQW4GQn
         nWxfNGLvYaOJ1y8dnqTereCUUYLxJQvbnCfcDuKIO86nzUHACOaMvwV8u3mHnV8IGnU0
         MdJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id b76si1461473ill.3.2020.12.20.20.13.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 20 Dec 2020 20:13:11 -0800 (PST)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: ZqoyNE/H1oGGAT8q88aSD3KxD7hCwyPeqNvH2Ch+Y3Buyp0FiSW2BvXqLNEqEp7bFdRUTCuUEp
 nObP5GgGY7gQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9841"; a="155470108"
X-IronPort-AV: E=Sophos;i="5.78,436,1599548400"; 
   d="scan'208";a="155470108"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Dec 2020 20:13:09 -0800
IronPort-SDR: 2e6+EDVG09xs0KSwhSVwh5sUHxPtxNxR4F/gr9Nmmg7qdCXVAYPLifofn2ANDASWfGAS+Fxb2s
 QM7xdpt6x08Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,436,1599548400"; 
   d="scan'208";a="372175808"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
  by orsmga008.jf.intel.com with ESMTP; 20 Dec 2020 20:13:06 -0800
Date: Mon, 21 Dec 2020 12:09:27 +0800
From: Philip Li <philip.li@intel.com>
To: Antoine Tenart <atenart@kernel.org>
Cc: davem@davemloft.net, kernel test robot <lkp@intel.com>, kuba@kernel.org,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	netdev@vger.kernel.org, pabeni@redhat.com
Subject: Re: [kbuild-all] Re: [PATCH net 1/4] net-sysfs: take the rtnl lock
 when storing xps_cpus
Message-ID: <20201221040927.GA26736@intel.com>
References: <20201217162521.1134496-2-atenart@kernel.org>
 <202012182344.1bEcUiOJ-lkp@intel.com>
 <160830788823.3591.10049543791193131034@kwain.local>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <160830788823.3591.10049543791193131034@kwain.local>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 192.55.52.151 as
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

On Fri, Dec 18, 2020 at 05:11:28PM +0100, Antoine Tenart wrote:
> That build issue seems unrelated to the patch. The series as a whole
> builds fine according to the same report, and this code is not modified
> by later patches.
Hi Antoine, this is a false positive report, kindly ignore this.
Sorry for inconvenience.

> 
> It looks a lot like this report from yesterday:
> https://www.spinics.net/lists/netdev/msg709132.html
> 
> Which also seemed unrelated to the changes:
> https://www.spinics.net/lists/netdev/msg709264.html
> 
> Thanks!
> Antoine
> 
> Quoting kernel test robot (2020-12-18 16:27:46)
> > Hi Antoine,
> > 
> > I love your patch! Yet something to improve:
> > 
> > [auto build test ERROR on net/master]
> > 
> > url:    https://github.com/0day-ci/linux/commits/Antoine-Tenart/net-sysfs-fix-race-conditions-in-the-xps-code/20201218-002852
> > base:   https://git.kernel.org/pub/scm/linux/kernel/git/davem/net.git 3ae32c07815a24ae12de2e7838d9d429ba31e5e0
> > config: riscv-randconfig-r014-20201217 (attached as .config)
> > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cee1e7d14f4628d6174b33640d502bff3b54ae45)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install riscv cross compiling tool for clang build
> >         # apt-get install binutils-riscv64-linux-gnu
> >         # https://github.com/0day-ci/linux/commit/f989c3dcbe4d9abd1c6c48b34f08c6c0cd9d44b3
> >         git remote add linux-review https://github.com/0day-ci/linux
> >         git fetch --no-tags linux-review Antoine-Tenart/net-sysfs-fix-race-conditions-in-the-xps-code/20201218-002852
> >         git checkout f989c3dcbe4d9abd1c6c48b34f08c6c0cd9d44b3
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 
> > 
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> > 
> > Note: the linux-review/Antoine-Tenart/net-sysfs-fix-race-conditions-in-the-xps-code/20201218-002852 HEAD 563d144b47845dea594b409ecf22914b9797cd1e builds fine.
> >       It only hurts bisectibility.
> > 
> > All errors (new ones prefixed by >>):
> > 
> >    /tmp/ics932s401-422897.s: Assembler messages:
> > >> /tmp/ics932s401-422897.s:260: Error: unrecognized opcode `zext.b a1,s11'
> >    /tmp/ics932s401-422897.s:362: Error: unrecognized opcode `zext.b a1,s11'
> >    /tmp/ics932s401-422897.s:518: Error: unrecognized opcode `zext.b a1,s11'
> >    /tmp/ics932s401-422897.s:637: Error: unrecognized opcode `zext.b a1,s11'
> >    /tmp/ics932s401-422897.s:774: Error: unrecognized opcode `zext.b a1,s11'
> >    /tmp/ics932s401-422897.s:893: Error: unrecognized opcode `zext.b a1,s11'
> >    /tmp/ics932s401-422897.s:1021: Error: unrecognized opcode `zext.b a1,s11'
> > >> /tmp/ics932s401-422897.s:1180: Error: unrecognized opcode `zext.b a1,s2'
> >    clang-12: error: assembler command failed with exit code 1 (use -v to see invocation)
> > 
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> _______________________________________________
> kbuild-all mailing list -- kbuild-all@lists.01.org
> To unsubscribe send an email to kbuild-all-leave@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201221040927.GA26736%40intel.com.
