Return-Path: <clang-built-linux+bncBCQPVKWLVAIRBEE7WKCQMGQEXQ5Z34A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id AA0F238FA1C
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 May 2021 07:48:01 +0200 (CEST)
Received: by mail-pl1-x63e.google.com with SMTP id j20-20020a170902f254b02900f8d1e07b12sf2694447plc.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 May 2021 22:48:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621921680; cv=pass;
        d=google.com; s=arc-20160816;
        b=wVtm0q9xiwsCsawnfqeE+ppm1NY6M+CNBX9f47UrSDiHewfrSMcX/0/v6qMjDS4pu0
         1uirJZWvEIs8IuKpX+XjhJtTTlf6k7MSFg0O3ayaZV+3E79s6v+dJFeTLGJ1B7Y9TXg4
         XCnwBz3A/h4ngH7NImG2WF+Xuiiax4muJAEofx734U8J5NVqUfbeM7ewZffv8ad/8ifJ
         jxNfa+5i6V/3bgWMW5pVUqS2l+aEoeNLhMQUw/gUC3tnwJR/5SyzMeF+ZkRWKpvVLRYd
         6/D5mFE+BgGoCGAVNJY53oRx9PTks4KtTdqNLngPrVWdqdi8/+PtVtZoHRzA0nqF2ob/
         qzcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=xdPBirP51OCUshjrBq/IfKo+zCOxKW2QqEr3e8WcesU=;
        b=SEuI/jAmg/bxcY/8TRzljoQljMHw7XGjETbDnHnfMiDaYkLQlzJR5w54iRFbBzGWh2
         wlrl3VAG6Jnv5iN0gcnLuNfpmQIm+1zU/CbzPlHOtAqUhHk0qf0Re9WKweH9wtXRU21L
         +GucgX84YgDVGC0KCR8tRAT70ycgueoH3GRb1ZEFmOyVcfN5oVMK/tjyop8m5RguYLtx
         N3adYqvdhGXYJpOvTLJaThjgWq04mM2kSNZTVAYpL+ZtW4D5CzCoLP2Zs2wFJlu0j2pY
         gL8tei6BFoouzCJYd+JeTnvjLcUVMLgYznVENo88hQHeg69gJr/ZpZhZi/hnmol2wNyu
         cESA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 72.249.23.125 is neither permitted nor denied by best guess record for domain of tony@atomide.com) smtp.mailfrom=tony@atomide.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xdPBirP51OCUshjrBq/IfKo+zCOxKW2QqEr3e8WcesU=;
        b=F6VDyaeMWmn16Ywi7BJGllgn4FvgfVZHbdV90hufBBJFzJKPcO/5rl+SQn79lyvyqY
         Bgbu+uLTPgiD9IT2dpUUTQUtWLVyB34h/pWKTJUKCkzq6JpRKHttq8b9xMSfb4gXkQXg
         Eay0DPdaAkss122hRlODsy8LDn/aAUqZ0KIof7syhRmBcImn8yhqg50v8qi5VrbQjknj
         nIAmRAU9nouF1oALm+M0/MJkE687F6nYlakZcHRW5bwvbWOTWxQH+mCAheLQITDeqwxZ
         1yRgZzpdxnXm/tFb1sfHRDvOhzVsFA9t5JqNgAwIX30R7zahCDNnbPe4uqBauIiAHM8j
         7qSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xdPBirP51OCUshjrBq/IfKo+zCOxKW2QqEr3e8WcesU=;
        b=EZSKc4X1lCfU2FHQANeup4wHj/yUJTH4vZ53kLkxmqCm5f1tzQ5ZAmcpJ3FkLHEQP8
         iZxdifUVh5vMZwK8Ce+qkqcrHQaNhDXe/tv1gv/qelwNYwLY/iiuB8pysiYJHpjDplli
         5gWX02+fsMUgG0G0BpQ5BhI5RtStVtvfHr5mfFto3M0N91Q6/c+MCCs9c2sk0JZ4TNtf
         OXBrSPzpO/DgKkiBGJelyNxvkXX9XO0JNC2BjXbqOwbPUxJe5ioAOSR55/mlK2WTFKmJ
         H48poq1k9xfx8CViY1GJiyPFSusoGHA+VHj+Jdvd8DCq2YsByW8KraLzj0uwVkZugJpO
         bK8A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531sFDisqlEfBSkVx4jvV4HKUwUROmeJ1imxGsJWATuC67u5nJeC
	BHhboFRLBw+AUGhei28CzbE=
X-Google-Smtp-Source: ABdhPJzw/LIDtqsRU8W6sC13qdUAfh5dCeRuFiWR+RQrONAJeWqyFXLWO/1jxMOUxK39wGodX2F/Ow==
X-Received: by 2002:a63:6c87:: with SMTP id h129mr16935965pgc.419.1621921680228;
        Mon, 24 May 2021 22:48:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:aa8d:: with SMTP id d13ls9768208plr.5.gmail; Mon, 24
 May 2021 22:47:59 -0700 (PDT)
X-Received: by 2002:a17:90a:dac1:: with SMTP id g1mr2985214pjx.199.1621921679622;
        Mon, 24 May 2021 22:47:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621921679; cv=none;
        d=google.com; s=arc-20160816;
        b=zsWD5AZ1ejv1baZUhvFBdEYOESA3+0ReO7Oo1MdnSD6D5a8g+FzmtdyOW3R109HX6t
         n3MSd3fMsUORtygvVSwAKBUO7xheSC06figViKhygI+QgkR3j++BqgwyWRDlzA1GRs2r
         z/8z4TVgya0tMA3uDw7KkvQmGs9amwsUEob9BcJTKqJgbQuKo9jepGWqBX0LzGRQ92Sm
         G1i2myhDANELXT4M7ykDvltUYpu/rtQ/pkF2uc3Rq/wvdOnt2Y+JZ7R2vWlTS9K5p+o2
         ccufGgGDBFEPZdREwwP1OIjFEGt0Lh3WGT2qYR3GU+TUcw9KS+pHv0FHBOOSrNvgT1vS
         j++w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=tMvtlMdtVIS9YTV0zUNPb26DEGw6uw//tWubwO7Q6Qs=;
        b=xi4yWk+/q1rB6vCs+GsS8ymWhcDEtgsom7qHOTwVTTo0Lf56rdl+ry8f3V8Ocm+HgA
         xjPUJXHv3AKq9gGbOFW/SyjT9zYrCcSsWsy26SBb1y1jG4ODNVcv9+z2qK6e21eUyGYG
         agTXxDcbFwbonCVNU7wpotd9mfE6CjG2FsIkG6MFzXwjbXvHI6Q3GCqNAuemqLdBElEJ
         bQU/rs4zlKIsLv7GkQ+y8vi4huJp3N7dnJguV/V1DNk4d846nI1rc8Lu229YE9DGU7Yf
         nWo0g22erYzQP2ZR9mlE/6aFSNcqHrJjBwW55rBnQ17hZ2PK3ABAuV/8/OkUUIrXJXwR
         iVAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 72.249.23.125 is neither permitted nor denied by best guess record for domain of tony@atomide.com) smtp.mailfrom=tony@atomide.com
Received: from muru.com (muru.com. [72.249.23.125])
        by gmr-mx.google.com with ESMTP id i2si272593pju.2.2021.05.24.22.47.59
        for <clang-built-linux@googlegroups.com>;
        Mon, 24 May 2021 22:47:59 -0700 (PDT)
Received-SPF: neutral (google.com: 72.249.23.125 is neither permitted nor denied by best guess record for domain of tony@atomide.com) client-ip=72.249.23.125;
Received: from atomide.com (localhost [127.0.0.1])
	by muru.com (Postfix) with ESMTPS id 7C916807E;
	Tue, 25 May 2021 05:48:03 +0000 (UTC)
Date: Tue, 25 May 2021 08:47:55 +0300
From: Tony Lindgren <tony@atomide.com>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>
Subject: Re: [linux-next:master 2881/4780] drivers/bus/ti-sysc.c:1398:13:
 warning: variable 'error' is used uninitialized whenever 'if' condition is
 false
Message-ID: <YKyPi2aXpnQZDnw/@atomide.com>
References: <202105241750.2S5ZpIyU-lkp@intel.com>
 <YKyNo2Nf4Z03gfaf@atomide.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YKyNo2Nf4Z03gfaf@atomide.com>
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

* Tony Lindgren <tony@atomide.com> [210525 08:39]:
> * kernel test robot <lkp@intel.com> [210524 10:00]:
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > head:   674dc447b09fb668976c6ab1356b11e02ff209ed
> > commit: ec527f23e06a0521cd5b043aa31a4ccdf6cea549 [2881/4780] bus: ti-sysc: Fix am335x resume hang for usb otg module
> > config: arm-randconfig-r035-20210524 (attached as .config)
> > compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 93d1e5822ed64abd777eb94ea9899e96c4c39fbe)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install arm cross compiling tool for clang build
> >         # apt-get install binutils-arm-linux-gnueabi
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=ec527f23e06a0521cd5b043aa31a4ccdf6cea549
> >         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
> >         git fetch --no-tags linux-next master
> >         git checkout ec527f23e06a0521cd5b043aa31a4ccdf6cea549
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm 
> > 
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> > 
> > All warnings (new ones prefixed by >>):
> > 
> > >> drivers/bus/ti-sysc.c:1398:13: warning: variable 'error' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
> >            } else if (ddata->needs_resume) {
> >                       ^~~~~~~~~~~~~~~~~~~
> >    drivers/bus/ti-sysc.c:1406:9: note: uninitialized use occurs here
> >            return error;
> >                   ^~~~~
> >    drivers/bus/ti-sysc.c:1398:9: note: remove the 'if' if its condition is always true
> >            } else if (ddata->needs_resume) {
> >                   ^~~~~~~~~~~~~~~~~~~~~~~~~
> >    drivers/bus/ti-sysc.c:1386:11: note: initialize the variable 'error' to silence this warning
> >            int error;
> >                     ^
> >                      = 0
> >    1 warning generated.
> > 
> > 
> > vim +1398 drivers/bus/ti-sysc.c
> > 
> >   1382	
> >   1383	static int __maybe_unused sysc_noirq_resume(struct device *dev)
> >   1384	{
> >   1385		struct sysc *ddata;
> >   1386		int error;
> >   1387	
> >   1388		ddata = dev_get_drvdata(dev);
> >   1389	
> >   1390		if (ddata->cfg.quirks &
> >   1391		    (SYSC_QUIRK_LEGACY_IDLE | SYSC_QUIRK_NO_IDLE))
> >   1392			return 0;
> >   1393	
> >   1394		if (ddata->cfg.quirks & SYSC_QUIRK_REINIT_ON_RESUME) {
> >   1395			error = sysc_reinit_module(ddata, ddata->needs_resume);
> >   1396			if (error)
> >   1397				dev_warn(dev, "noirq_resume failed: %i\n", error);
> > > 1398		} else if (ddata->needs_resume) {
> >   1399			error = sysc_runtime_resume(dev);
> >   1400			if (error)
> >   1401				dev_warn(dev, "noirq_resume failed: %i\n", error);
> >   1402		}
> >   1403	
> >   1404		ddata->needs_resume = 0;
> >   1405	
> >   1406		return error;
> >   1407	}
> >   1408	
> 
> Thanks for the report, I'll update the patch to init error = 0 here.

Oh this was already fixed in v2 version of this patch:

[PATCHv2] bus: ti-sysc: Fix am335x resume hang for usb otg module

Regards,

Tony

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YKyPi2aXpnQZDnw/%40atomide.com.
