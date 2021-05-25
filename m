Return-Path: <clang-built-linux+bncBCQPVKWLVAIRBZVAWKCQMGQEMKQRFDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id 693BE38FA43
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 May 2021 07:51:35 +0200 (CEST)
Received: by mail-qv1-xf38.google.com with SMTP id b24-20020a0cb3d80000b02901e78b82d74asf29518022qvf.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 May 2021 22:51:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621921894; cv=pass;
        d=google.com; s=arc-20160816;
        b=oFB9eRf8i/jOCWOB8jN5p+IR3juaspB0rBkYquabGgbxeIBqMSBhQNNyZTofAbrfoO
         JW22j+OTOX8qTmThbr9ppwtJekqNsfYnfMW+sQKz3HjScMu+eKfdsIufQONifSFs5cbz
         YGYpVXbCA5dlC9SRDI6LZW9cxfw+E9M8qw2N2GpQ9KRy5n66TCM5Ja7JBMY2uoBXZA+u
         RT3TBIjkCvIoIVhvzepa+g4IvNYGEJr4qHov9x7X1NXjen/BmxXqKIY6QelczoHfx78P
         0l1+EKN5smpSsMXRxXbMwmS1gaOkOcLoEutRxCwb9L2J5BB2mdxPIWEJRKmhq8aKv2Db
         lkjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=RmXY57Ox/FrAfh+uEvdSjI1bGG0Iw93WLpoBj49eusg=;
        b=Op5vmgJqnMkxvgnlrTHbnOMfwPFzTUELDRLDuEnXVmmsXBh01LsN/XwrfMrwbsDLd1
         0C2HL+YOgBGZhLJVWv7mNSY7/5pcBKYhw2npir28btvreFH3CTWtPDfdoIrScmttH+m/
         OEKL4USjyApk6Y3e3R17kinaCSN5/+SuMHOjsZC7BzHomI+1E/i9vK2jGSZACOPIn4iA
         LN2HDHGKMm5S7PS04GQiNxl73f5jALlZPYb5VWQ3BXY7NDmrsPW1Q6Wb95JwgoBVgekf
         mNEO3zPpa/+Zr/1NabCcyRKqRpmILhs8ohTEZtd6PqEf5WrRUqlehBwKBLqe9PyoYZVt
         UpSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 72.249.23.125 is neither permitted nor denied by best guess record for domain of tony@atomide.com) smtp.mailfrom=tony@atomide.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RmXY57Ox/FrAfh+uEvdSjI1bGG0Iw93WLpoBj49eusg=;
        b=mOKXOFjEfIeJzWj6bKMhlHWV1EiNPe31hZ4gazzERFol8/fdV4n2IOi7oe8kpwwFBX
         +bM+y66bmkPT264YZX0s84Becmio0f5qa4HSQdiqBsd0JgG6tvxapmUD0m6VV3kRM4uH
         twg3JaXy30nj8NQVkSRLNOytufxUmIe7Di0TYZZzad8J6ZQXZ5oTuRm1NyG/xZsiCq1u
         0QvD5NCEeK6XWb7p8g+y5LRFZakoRg0q6jDXjThpvuLRy+EeONBW+ySV4UzJeg8QF/RA
         eT2na6/kAomKt9kcYe5lEJe/Au/+NfylcL6fH2Dp/8CIlTV7wbwHGQfpn7wH+R/Dcb/U
         yaIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=RmXY57Ox/FrAfh+uEvdSjI1bGG0Iw93WLpoBj49eusg=;
        b=uYsZfTc1klhXCrC/HF2+htktjeZOz+vMmSgqoMHkIGlD7sTC4XmNviPLVHmY9s/gHL
         vCyn48WCs4GBulS/SbZxTpTTxy5zX+9UrwdWTcaGl+8PVRYPU0S+Qp95fgDZW1HFGhbG
         fXFJryLvuBo8K046OKkWn9+dSKZ7vfBquRQPeZgu17pYNGrHZoLV332gRILdXMdT0dq8
         xaMwKUj/GLY6zrY8w+8M/JfXfszZVZejEamBQZebCodFobkO2Ofc0mlBxOdpqFx+RAyT
         oZDzT5kAnMot2CP6/uCkMrK18Ohp134wKFBVNJnjAtghRk+r4axq0VKgpg6OW4Qy6VdT
         MnVg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531FSCscTxd1TXIGuVJMpocofgGjAoy35xkc8+1h7qk7enMTZ9N5
	rJb6q3D3xvuHcln6KBBVFcE=
X-Google-Smtp-Source: ABdhPJx4tOHyu0FIXJLWN7MCLHxstfUrj90Ine8GFpCix0CwqFMRdnWhs7cKhw1Po1Rb+uWopjCMvg==
X-Received: by 2002:a05:620a:2093:: with SMTP id e19mr33637505qka.247.1621921894345;
        Mon, 24 May 2021 22:51:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:8d02:: with SMTP id r2ls5056008qvb.1.gmail; Mon, 24 May
 2021 22:51:34 -0700 (PDT)
X-Received: by 2002:a05:6214:d06:: with SMTP id 6mr13901390qvh.56.1621921893944;
        Mon, 24 May 2021 22:51:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621921893; cv=none;
        d=google.com; s=arc-20160816;
        b=HhtLqkuIt8xTvHJKaE8vZEl7iptByW9awlqKx1OQAD23HnUsciszuuCNKdsBippsDb
         BHvKHUvsMbyvzdormw5+JvG7PuGnwFeVvieSd7pC2KTBlRTNoasVAPOO2tJ4XTK1Z/3g
         vcRSid5eZeTo86pzFAd2NR558EBjWa4rPofdhpjseg/4wsOfyfVRLC11i1oSxfUCraKq
         L15cPX2vCYzcWa1TR0HvpC5PpZiyntZYNdM7ABD0bcAiBOKbHAUJH9MUqyIkvaHZ3RJ+
         I7+U1j2BbqHO3DoDSoqU0Tz5W4x87thPl5PEPLmT/VpdlRGwud/SCfwtJVM0S+dq8h2K
         stHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=5w/zIRePYrJZmaXE2hcDjzUfRlVPAHGiDOXvEWCLgo8=;
        b=eNSUjidoKcg175C/HK8qR3hL8pjG1wcSGgXa9Vau+LYRf06vlp/17M0XTzqaxoz+eV
         DSDQ6Mk8hJ1YuhWD+3M20r5PGcc9f6jLzHB3dnihySw6uoVKisVx3xAG3AB/5kbb3LeZ
         bCoWQHDKfs3xDRVTfJG9+TqnHviBwG1SWLRD3Tw3TmizRx3wLo9hiOkN8J1Nfk1qjG52
         2CyOXmmwpyTreCExliJB7Tu2YY2K/ceTl2vcHTaan3UNh4nvWR04e5tV5cSiRkDUJuhW
         ggEPDqIJUZ04EN1Yvhqwm7DCXO0bJF2DapIcPsZOEdGm7ef4sB8vHQfFlAYgCOHS3dK4
         CFpA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 72.249.23.125 is neither permitted nor denied by best guess record for domain of tony@atomide.com) smtp.mailfrom=tony@atomide.com
Received: from muru.com (muru.com. [72.249.23.125])
        by gmr-mx.google.com with ESMTP id 142si1920581qko.4.2021.05.24.22.51.33
        for <clang-built-linux@googlegroups.com>;
        Mon, 24 May 2021 22:51:33 -0700 (PDT)
Received-SPF: neutral (google.com: 72.249.23.125 is neither permitted nor denied by best guess record for domain of tony@atomide.com) client-ip=72.249.23.125;
Received: from atomide.com (localhost [127.0.0.1])
	by muru.com (Postfix) with ESMTPS id 5A79C807E;
	Tue, 25 May 2021 05:51:38 +0000 (UTC)
Date: Tue, 25 May 2021 08:51:29 +0300
From: Tony Lindgren <tony@atomide.com>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>
Subject: Re: [linux-next:master 2881/4780] drivers/bus/ti-sysc.c:1398:13:
 warning: variable 'error' is used uninitialized whenever 'if' condition is
 false
Message-ID: <YKyQYWsKsO/28uy5@atomide.com>
References: <202105241750.2S5ZpIyU-lkp@intel.com>
 <YKyNo2Nf4Z03gfaf@atomide.com>
 <YKyPi2aXpnQZDnw/@atomide.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YKyPi2aXpnQZDnw/@atomide.com>
X-Original-Sender: tony@atomide.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 72.249.23.125 is neither permitted nor denied by best guess
 record for domain of tony@atomide.com) smtp.mailfrom=tony@atomide.com
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

* Tony Lindgren <tony@atomide.com> [210525 08:47]:
> * Tony Lindgren <tony@atomide.com> [210525 08:39]:
> > * kernel test robot <lkp@intel.com> [210524 10:00]:
> > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > > head:   674dc447b09fb668976c6ab1356b11e02ff209ed
> > > commit: ec527f23e06a0521cd5b043aa31a4ccdf6cea549 [2881/4780] bus: ti-sysc: Fix am335x resume hang for usb otg module
> > > config: arm-randconfig-r035-20210524 (attached as .config)
> > > compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 93d1e5822ed64abd777eb94ea9899e96c4c39fbe)
> > > reproduce (this is a W=1 build):
> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         # install arm cross compiling tool for clang build
> > >         # apt-get install binutils-arm-linux-gnueabi
> > >         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=ec527f23e06a0521cd5b043aa31a4ccdf6cea549
> > >         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
> > >         git fetch --no-tags linux-next master
> > >         git checkout ec527f23e06a0521cd5b043aa31a4ccdf6cea549
> > >         # save the attached .config to linux build tree
> > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm 
> > > 
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kernel test robot <lkp@intel.com>
> > > 
> > > All warnings (new ones prefixed by >>):
> > > 
> > > >> drivers/bus/ti-sysc.c:1398:13: warning: variable 'error' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
> > >            } else if (ddata->needs_resume) {
> > >                       ^~~~~~~~~~~~~~~~~~~
> > >    drivers/bus/ti-sysc.c:1406:9: note: uninitialized use occurs here
> > >            return error;
> > >                   ^~~~~
> > >    drivers/bus/ti-sysc.c:1398:9: note: remove the 'if' if its condition is always true
> > >            } else if (ddata->needs_resume) {
> > >                   ^~~~~~~~~~~~~~~~~~~~~~~~~
> > >    drivers/bus/ti-sysc.c:1386:11: note: initialize the variable 'error' to silence this warning
> > >            int error;
> > >                     ^
> > >                      = 0
> > >    1 warning generated.
> > > 
> > > 
> > > vim +1398 drivers/bus/ti-sysc.c
> > > 
> > >   1382	
> > >   1383	static int __maybe_unused sysc_noirq_resume(struct device *dev)
> > >   1384	{
> > >   1385		struct sysc *ddata;
> > >   1386		int error;
> > >   1387	
> > >   1388		ddata = dev_get_drvdata(dev);
> > >   1389	
> > >   1390		if (ddata->cfg.quirks &
> > >   1391		    (SYSC_QUIRK_LEGACY_IDLE | SYSC_QUIRK_NO_IDLE))
> > >   1392			return 0;
> > >   1393	
> > >   1394		if (ddata->cfg.quirks & SYSC_QUIRK_REINIT_ON_RESUME) {
> > >   1395			error = sysc_reinit_module(ddata, ddata->needs_resume);
> > >   1396			if (error)
> > >   1397				dev_warn(dev, "noirq_resume failed: %i\n", error);
> > > > 1398		} else if (ddata->needs_resume) {
> > >   1399			error = sysc_runtime_resume(dev);
> > >   1400			if (error)
> > >   1401				dev_warn(dev, "noirq_resume failed: %i\n", error);
> > >   1402		}
> > >   1403	
> > >   1404		ddata->needs_resume = 0;
> > >   1405	
> > >   1406		return error;
> > >   1407	}
> > >   1408	
> > 
> > Thanks for the report, I'll update the patch to init error = 0 here.
> 
> Oh this was already fixed in v2 version of this patch:
> 
> [PATCHv2] bus: ti-sysc: Fix am335x resume hang for usb otg module

Sorry nope, error still needs to be initialized to 0. Only noirq_suspend()
changed in v2, while noirq_resume() did not change. Will send out v3.

Regards,

Tony

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YKyQYWsKsO/28uy5%40atomide.com.
