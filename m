Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBEF4UD2AKGQEAZHWYDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 833B319E308
	for <lists+clang-built-linux@lfdr.de>; Sat,  4 Apr 2020 07:41:38 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id 64sf7098912plf.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 03 Apr 2020 22:41:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585978897; cv=pass;
        d=google.com; s=arc-20160816;
        b=HuULHQ8ojcRAFfMoD+SKqFW78eoOi7Wxia+ZbweZwtGuqkinv2LmVPqQ4YlIpOUTnx
         qGi1JHoT/gUUiTb3J1wN843mcFWKqctVjWrsVdaFw52n7KasPh8/zOP2NgvV80Ii+Tba
         poQazBFMG9sOyCBuDWvlcfQSMxGheLDSovrDfIxPGQ1Hjx9W9QJtjeSUD8Mt0WVI77Nn
         CuINMolACLMTueVKZ5mwZijASzjZPN23lj+0hCKNyQh0sF5EQyhVvOOu08g4IPqywnPN
         oSFkFCo5njneHxUl8Fr23L1EkQ9y9quq2YIDXpHjRRdAXZpZ0eWKRtrpCNmMEGW+zhS3
         IDbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=HK7KTDg2brPTbMRAvqkmntWvnNkan62Qe4TNGL49N1g=;
        b=Q+2GdpoaO0HoXFFGEeVtLdTxz9S99Iyo3N5VpSzHWYUCGSNOIiL/jXTq2dld3+l46a
         Jk0yg3l0Xt3HX52AbRorl+4e4wzjY6brMI81SiL42balyA1f+UUNEngn/tMosKilyv7K
         3J16dLKxCHiogPG+r9pb9iWw4PvtnmnQ6m3mnT9Ud5pZnlGuH76mnDlJkEAJDRW5mCHX
         nrdEKbDAjPi4lCa5F0/YMeL8xDX9GiGhD9vmVdr82cLXk/kp4Qlg65pKZajEW43uk+df
         2+/vp5lxjWRaU49VbRsWP4z1JQyRZCegXiAtdjzYp22UeVnprcoqSCEr5Ocaq1uhc3Uz
         eVTA==
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
        bh=HK7KTDg2brPTbMRAvqkmntWvnNkan62Qe4TNGL49N1g=;
        b=I7iqLH4bhbMpywtfjPXecZebgG3ovHzLrUdV9DHzLYjvuKHxv8vxRQ4iyU2Nk9qF4t
         cUpxxTkQEQfafxUb8++nmUJvIEO3G0VSDBDzceJKleoltTS9AvCSUSzQsIGM+nQgBLaZ
         htpnsaoUPZaLrLIsQJu4E9QUUJaHWxD7U3cJyryGNeAAaUkeEorlrCatVcrwR/MMCdrt
         loxssyp6lFQcPiqpmpV6gxOF2cUl5gDOnWs0AxuNy5jvr43CVM56pnXJNpGfNCnkSRG/
         +rpGTIMogIIEwboCQOQdn8rmryJvyTieYPoRjrfG3PlRuWuCLd5sxFA8aBlO3/YiMP6V
         r9vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HK7KTDg2brPTbMRAvqkmntWvnNkan62Qe4TNGL49N1g=;
        b=snajin64U67otIQ6owLJ71Qm30+zsf3Yb2yJttrMf8x/Q70SEFtTDSVCg+BjPSuE8O
         AKDbkXRrBqzfwlP5U1X7bHCgbzfzE57t9YURW8LbAwVIb7O7UOWvCvbSmYAV+0k6I0x+
         tn0aEFe1IsMFypTharIXz7UAH+HWIpPly5ZXddxOXgWTLqc21xa+3FR+lGzVOdLBF12N
         TDHe97nllIoxI85par6V9DoM9fp0kuCY8aLYCa3ZfjKB610KK/pXK69445CKzxOhI23j
         QhJMGwEF1F1pyYz9DOI0FOGDZIZk7sD5L0cC8W7ktS5Ti35h/bysJCuD7MzSu3tZFPhR
         Em1w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubyHSnBgis1pU82CChKfpHRN3gTOIRn+dbeijMgIiwHYjy4WHQ2
	XB7YjzPp6Fwql/yyMrNAFfA=
X-Google-Smtp-Source: APiQypKK3JXjURV+NzZXvXOg090/A8VEbU0hBqOnExNMxwat0dSCtsIED/c/V8DdJecfM7Y2ChyQVA==
X-Received: by 2002:a17:90a:32c1:: with SMTP id l59mr14093713pjb.36.1585978896891;
        Fri, 03 Apr 2020 22:41:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bb93:: with SMTP id m19ls6582713pls.6.gmail; Fri, 03
 Apr 2020 22:41:36 -0700 (PDT)
X-Received: by 2002:a17:90b:1a8b:: with SMTP id ng11mr14328036pjb.109.1585978896350;
        Fri, 03 Apr 2020 22:41:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585978896; cv=none;
        d=google.com; s=arc-20160816;
        b=mt8lKg+iiDCrNyozEg5Z335QboFK13YJSmBDEoQcWCq7zOXIhLvtFJlM4WN6STqpqo
         47JkFCK0ug6vdMwSFy8FEHA/0ozxO3Zt5ZQEwTD2CLMVJ/++hNMfePe580HwD48LdA3H
         CldsjrSyUL18Ysivu/gxadhDNxDX0PXyC3ruKZ/LlTGLrxD5U0kdyzbyW9JoOJhM0YZL
         sD7bvg05O+I42kI7eMTfHGRxxoq1iUIgUXbklTx2sPF5DyHTIl1vieVQVl/OtqelZC/i
         m1rd8L9KmuvujWUvP8DRVmnNR3KemuuwRuJ3V405ORRh/GscdDgkdq6mbfxAtIdTGH9C
         tzgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=RgVOqTKWVxRv34ONaAU0Hj+sg1zxiFcGePS48nBVkRw=;
        b=vyPHJ4PJbNmDRVoBe/yLKpDJ2SX/nRNO3uCWI+ZOUus7kSbreBgwsv9Z8jJKFS9L6V
         E8x7o/lQYo16ZpEiCqr+ymF0eVYeGid67onyr3bKvGArN1SRqMB6USQutYQwKA5oKKvS
         wCB1ytZ0WxYqG5gwdZbTpxpQkQA+XwayCR47fgGbm4XneXJpStGH5Bn4++LMJhseBlql
         lKa56BzrQ3YDVgxfC4jdrz0ZBSvb0tYTBlU3MhCS2zITa/MeufAeHDDOiZs4Ic0Mvxu0
         5Xf0+Apy7qIueEtUGqJeBkpQ3pj54nulBg5fU72yc/ygyVCv2V63J7FxTu2ikQO9puLz
         Aatg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id c125si786176pga.5.2020.04.03.22.41.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Apr 2020 22:41:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: qPNe4tgE64z61ukgVya1FjyPmnweTGOB+rNSES9pyCkQgs9nfZjsRBSzaUt1BWZiQ9T6boG26E
 a+ynT2P998YQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Apr 2020 22:41:35 -0700
IronPort-SDR: dvvBybKvnPMqtcErhBDUMQuPEM5PZJ1oSKDuo357+qSwAriBgqbX5Xt2AVSb0IO2PoghhB6RWY
 SiDtq1Ua8CjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,342,1580803200"; 
   d="scan'208";a="423761938"
Received: from unknown (HELO intel.com) ([10.239.159.39])
  by orsmga005.jf.intel.com with ESMTP; 03 Apr 2020 22:41:33 -0700
Date: Sat, 4 Apr 2020 13:41:02 +0800
From: Philip Li <philip.li@intel.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: kbuild test robot <lkp@intel.com>, Dirk Mueller <dmueller@suse.com>,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	David Gibson <david@gibson.dropbear.id.au>,
	Rob Herring <robh@kernel.org>
Subject: Re: [linux-stable-rc:linux-4.14.y 9935/9999]
 drivers/staging/vc04_services/bcm2835-camera/controls.c:62:18: warning:
 variable 'mains_freq_qmenu' is not needed and will not be emitted
Message-ID: <20200404054102.GC3907@intel.com>
References: <202004041100.rvsmgIy4%lkp@intel.com>
 <20200404041239.GA38008@ubuntu-m2-xlarge-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200404041239.GA38008@ubuntu-m2-xlarge-x86>
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

On Fri, Apr 03, 2020 at 09:12:39PM -0700, Nathan Chancellor wrote:
> On Sat, Apr 04, 2020 at 11:46:06AM +0800, kbuild test robot wrote:
> > Hi Dirk,
> > 
> > First bad commit (maybe != root cause):
> > 
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-4.14.y
> > head:   e0066de56999ad01b6367b6a42064233ad8bc932
> > commit: 88f7a6aa7fb9aa5076b65489146045dac865f1d3 [9935/9999] scripts/dtc: Remove redundant YYLOC global declaration
> > config: x86_64-randconfig-b002-20200403 (attached as .config)
> > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project f68cc2a7ed766965028b8b0f0d9300a0460c3cf1)
> > reproduce:
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         git checkout 88f7a6aa7fb9aa5076b65489146045dac865f1d3
> >         # save the attached .config to linux build tree
> >         COMPILER=clang make.cross ARCH=x86_64 
> > 
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kbuild test robot <lkp@intel.com>
> > 
> > All warnings (new ones prefixed by >>):
> > 
> > >> drivers/staging/vc04_services/bcm2835-camera/controls.c:62:18: warning: variable 'mains_freq_qmenu' is not needed and will not be emitted [-Wunneeded-internal-declaration]
> >    static const s64 mains_freq_qmenu[] = {
> >                     ^
> >    1 warning generated.
> > 
> > vim +/mains_freq_qmenu +62 drivers/staging/vc04_services/bcm2835-camera/controls.c
> > 
> > 7b3ad5abf027b76 drivers/staging/media/platform/bcm2835/controls.c Eric Anholt 2017-01-27  61  
> > 7b3ad5abf027b76 drivers/staging/media/platform/bcm2835/controls.c Eric Anholt 2017-01-27 @62  static const s64 mains_freq_qmenu[] = {
> > 7b3ad5abf027b76 drivers/staging/media/platform/bcm2835/controls.c Eric Anholt 2017-01-27  63  	V4L2_CID_POWER_LINE_FREQUENCY_DISABLED,
> > 7b3ad5abf027b76 drivers/staging/media/platform/bcm2835/controls.c Eric Anholt 2017-01-27  64  	V4L2_CID_POWER_LINE_FREQUENCY_50HZ,
> > 7b3ad5abf027b76 drivers/staging/media/platform/bcm2835/controls.c Eric Anholt 2017-01-27  65  	V4L2_CID_POWER_LINE_FREQUENCY_60HZ,
> > 7b3ad5abf027b76 drivers/staging/media/platform/bcm2835/controls.c Eric Anholt 2017-01-27  66  	V4L2_CID_POWER_LINE_FREQUENCY_AUTO
> > 7b3ad5abf027b76 drivers/staging/media/platform/bcm2835/controls.c Eric Anholt 2017-01-27  67  };
> > 7b3ad5abf027b76 drivers/staging/media/platform/bcm2835/controls.c Eric Anholt 2017-01-27  68  
> > 
> > :::::: The code at line 62 was first introduced by commit
> > :::::: 7b3ad5abf027b7643b38c4006d7f4ce47a86dd3a staging: Import the BCM2835 MMAL-based V4L2 camera driver.
> > 
> > :::::: TO: Eric Anholt <eric@anholt.net>
> > :::::: CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > 
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 
> Obviously not causes by that patch... Is there any way for 0day to
> blacklist that patch as being a problem so that it stops sending emails
> to the patch author?
Got it, we will blacklist this warning, meanwhile to check the bisection
to see anything we can do better.

> 
> I did solve this warning a while ago, it just never got backported to
> 4.14: https://git.kernel.org/linus/9e3701b3809ab3ef22235c96ea69510e26d18d30
> 
> Cheers,
> Nathan
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200404054102.GC3907%40intel.com.
