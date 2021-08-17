Return-Path: <clang-built-linux+bncBDRZXY4CYYORBM4O56EAMGQEW4C6DVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 811703EEE7D
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 16:27:00 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id o185-20020acaf0c20000b029025cacdf2ac0sf8120110oih.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 07:27:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629210419; cv=pass;
        d=google.com; s=arc-20160816;
        b=kNzNXPZrz8JnnmPhxpNYPM4GASA8GnpQr8URuPyMwA+YNOLJcZNQn7M0ASB4kwnsxb
         hAKDOg2INJYmNiaPdTwT7vDJJA8qWjDjvm5yl22uQyif9rr0V5hyTVumtu1r+/Od5LZU
         qfH29SRr26DwrkGFMmi+SjoA0belEhvz/G6GxuVjlEHgPqGIS7TBSmUt2PC0zk6MrklH
         B7R/b4Y5Ufkzj0QHt87qRLUkliNfBkWG3/sOqU75nTQ0tYNU+lhHUzW+1HgJEXYPsr2g
         wRuxnP+lnf4Js0M+FHv8dKxDYTLLov0MBoQWLO0art8osPxdJ+Nz0mPxuECCuWS05KFX
         Z2VA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=5pKz+T8AarAFFQk/urLD5C/v8O7e4L3UzdmsSKqCAAY=;
        b=qq+DvVd9sjFv7Yss1vOyqx55WxGOGpz+QOq7045JGi5vo4BTVvjV8aPdftsO23wbjo
         fTmADhnzXoYy/uGFRkS9eXbR67O8Q+PTZ4SgRGIIZeufcmz2tG3yINfw9jjQtfFJzhis
         NU2PmKFFuIrnB4OWyulFVN/8jbkiseD3bXY0nlm+e7DADJjXQt/bN/t2Qy6Dih2aq0KM
         IVzkawKkne2p5ZS3jHD3t0mdRmNxwgq8KMaePLQWHVwI7vqpoqs/RbGigZm1JqaSfURQ
         LAz/pknQJYwNTehjgA+Z+kGr9M2c831NA1dfBS9Ji5Ez33Bn/Q5a9aCyjgbC29tyQNFz
         4IMw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=BA5l4vSg;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5pKz+T8AarAFFQk/urLD5C/v8O7e4L3UzdmsSKqCAAY=;
        b=V6w7fXzkMDki+M2THT6wlVyI4EF4us5aBKDvjpm4/FzaB17qR8+CxRaadCc35OAtgV
         ok6jkrTzxCe3Xv294/R894F3BvtjVeTDaitowwsIR6hTTc/HWyXf4GY4AACb0ezPL5uW
         nFG+0dL7bN/lAJXJELmSj4TPEfURRlkXH2EO3FpiN4V4TxF3+NzBJaO63UwbpV9ieuta
         OFdCf4evFrzHVG8xBank2cMRKQiSG/NYKCQtpjO8xBtJk6iXNAGyO0ClRRjPdZk5Nut5
         3RHr6wZq/6A6Fl4dx81zpsfJRjGJLwTmRLiwSN+Bklpn2llL4/hZA94GXtnpc7RxrOuI
         7ABw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5pKz+T8AarAFFQk/urLD5C/v8O7e4L3UzdmsSKqCAAY=;
        b=EKLrn1hc7ulk7SJuI2hzuybU4UhVN2iSeDavzvahZKKkUPyPFANmc9d/PeHYRHgtnE
         BviOnobWoFp/bmmSQtwO4aLsnhore7q34uMWVQFaN/FHd1f4zGyUzX0+7pB9dg+H/jBu
         so7BSgGdXQckP+uQ4oUajH748I6evZJKzYgCOBHiyr5eMsiTLzpzjhzN/aFUpCItZot8
         wzMUpiOp81c87LoHupQ8zUl+v+PvUnpUk4oV+KgZU0PUVPYDk/kZEUsm7OXq2+oMM5i5
         6SbiqX5C4Rmf/TE9k63x0wuYN4gIGL454YM4sSvmh5EIOuJPwPqFwmcUIisx8FPuy9j6
         CstA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533lhzHkucUz/flkvvVtKZ+GXl7CPmKjrIwxWFqJq8dDIrP40tui
	ZEJUpoVGtld9UvDepZRQwBc=
X-Google-Smtp-Source: ABdhPJzRjPjOAeiNXVBPzAwVgpaw40KlzuMlcIwSivdQ7UACipJsK/RNDT1lM453R7Q2/qiVvbcb8A==
X-Received: by 2002:a9d:c04:: with SMTP id 4mr2770391otr.180.1629210419350;
        Tue, 17 Aug 2021 07:26:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:2186:: with SMTP id be6ls561529oib.8.gmail; Tue, 17
 Aug 2021 07:26:58 -0700 (PDT)
X-Received: by 2002:a54:4584:: with SMTP id z4mr2636411oib.166.1629210418936;
        Tue, 17 Aug 2021 07:26:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629210418; cv=none;
        d=google.com; s=arc-20160816;
        b=uNdnFQos7tvN1DLdntYTVFtS4kMYiuVUw2A6eTbJxzCw02gEMu5K/9LRabROTKUJJB
         pU/f+jOY/kACcGr/sd7P6gKzM5aJiwaVaBUNAUEk/S5gbnQb4+CtwJOK+6JY9pp1AuDS
         89+AwaWTQIvg91OtjpO9Mzq6gmMXAfcmKCxO8DjRe+nW0h0MEBbZgFYHUDfmOpZupRBt
         RjmByGLDWxJKhOaK7dDkq/UEuUqJ3S6k9IyM84EOR/tkwTVwlvjZTx2MHOyfiHS6+WcM
         KBqp4g00X63vU1OMSR1rCF8kXx4sgWgwIYhaN5t57WuuM5w3GnoZPPMDGDxOtjG6Mc7Q
         geuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=P18V3Y1UkGJAL0dJiKZVY2k8X9U+Z9RqyxrsbtqzpJI=;
        b=o5EoHEx4EfEdpoo5zg3aCgjYCCPUcjBJ+8rBE+yYvRqL4lks8O1/FGPu7gJHrN08oh
         SVM7ru1qjvxG4TBaSzay7Mbsil+S+b3eqefYJx9w2Px8Pxg+gAzSNuKXZVEOmmxMa/Gn
         ZyZeV/nio1M5mXsIqk5S2+1L/FimMjWYxG294Ub90Hum+KhhqtTjCReA42zp9oPYhhCp
         ddiHFqxLYCBqiYrE+9jzZDNOUIiqu3OPj/UNaEFz0us7U6wDx6xrnYZXQcBIglPO+qfh
         Yg11c2JXuE+U7dY6Ek9D773hArxcvEK1BfTJFjW0a9jZ64gviFxg0+ngay8wd/yeoI9x
         OCCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=BA5l4vSg;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id q18si109077otm.3.2021.08.17.07.26.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Aug 2021 07:26:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of hdegoede@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-294-tt0EZJhePxG-MtWljwy-oA-1; Tue, 17 Aug 2021 10:26:51 -0400
X-MC-Unique: tt0EZJhePxG-MtWljwy-oA-1
Received: by mail-ed1-f70.google.com with SMTP id y22-20020a0564023596b02903bd9452ad5cso10641959edc.20
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 07:26:51 -0700 (PDT)
X-Received: by 2002:a17:906:a01:: with SMTP id w1mr4318925ejf.117.1629210409948;
        Tue, 17 Aug 2021 07:26:49 -0700 (PDT)
X-Received: by 2002:a17:906:a01:: with SMTP id w1mr4318888ejf.117.1629210409676;
        Tue, 17 Aug 2021 07:26:49 -0700 (PDT)
Received: from x1.localdomain (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl. [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
        by smtp.gmail.com with ESMTPSA id q5sm1149194edt.50.2021.08.17.07.26.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 07:26:49 -0700 (PDT)
Subject: Re: [PATCH v2 06/20] platform/x86: intel_scu: Move to intel
 sub-directory
To: kernel test robot <lkp@intel.com>, Kate Hsuan <hpa@redhat.com>,
 Alex Hung <alex.hung@canonical.com>, Mark Gross <mgross@linux.intel.com>,
 Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>,
 AceLan Kao <acelan.kao@canonical.com>, Jithu Joseph
 <jithu.joseph@intel.com>, Maurice Ma <maurice.ma@intel.com>,
 Sujith Thomas <sujith.thomas@intel.com>,
 Rajneesh Bhardwaj <irenic.rajneesh@gmail.com>,
 Zha Qipeng <qipeng.zha@intel.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org
References: <20210816105119.704302-7-hpa@redhat.com>
 <202108172041.GntPTXkz-lkp@intel.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <3baafb92-5f0f-4401-f13c-0934762ed8f9@redhat.com>
Date: Tue, 17 Aug 2021 16:26:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <202108172041.GntPTXkz-lkp@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: hdegoede@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=BA5l4vSg;
       spf=pass (google.com: domain of hdegoede@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

Hi all,

On 8/17/21 2:23 PM, kernel test robot wrote:
> Hi Kate,
> 
> Thank you for the patch! Perhaps something to improve:
> 
> [auto build test WARNING on next-20210816]
> [cannot apply to linus/master v5.14-rc6 v5.14-rc5 v5.14-rc4 v5.14-rc6]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]

This seems to be a warning related to generating the docs and
specifically the /** */ kerneldoc comment above the function
claims to be for a different function.

Something which we may fix with a follow-up patch, but of scope for
this patch-series which is just moving the file.

Regards,

Hans



> 
> url:    https://github.com/0day-ci/linux/commits/Kate-Hsuan/Intel-platform-driver-code-movement/20210816-185713
> base:    b9011c7e671dbbf59bb753283ddfd03f0c9eb865
> config: i386-randconfig-r023-20210816 (attached as .config)
> compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 2c6448cdc2f68f8c28fd0bd9404182b81306e6e6)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # https://github.com/0day-ci/linux/commit/30a4d97d4248adef672f46eeb0e32b816b6f531c
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Kate-Hsuan/Intel-platform-driver-code-movement/20210816-185713
>         git checkout 30a4d97d4248adef672f46eeb0e32b816b6f531c
>         # save the attached .config to linux build tree
>         mkdir build_dir
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross O=build_dir ARCH=i386 SHELL=/bin/bash drivers/platform/x86/intel/
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>>> drivers/platform/x86/intel/scu/ipc.c:478: warning: expecting prototype for intel_scu_ipc_command_with_size(). Prototype was for intel_scu_ipc_dev_command_with_size() instead
> 
> 
> vim +478 drivers/platform/x86/intel/scu/ipc.c
> 
> 9a58a3333923c7 drivers/platform/x86/intel_scu_ipc.c Sreedhara DS               2010-04-26  458  
> 9a58a3333923c7 drivers/platform/x86/intel_scu_ipc.c Sreedhara DS               2010-04-26  459  /**
> f57fa18583f538 drivers/platform/x86/intel_scu_ipc.c Mika Westerberg            2020-04-16  460   * intel_scu_ipc_command_with_size() - Command with data
> f57fa18583f538 drivers/platform/x86/intel_scu_ipc.c Mika Westerberg            2020-04-16  461   * @scu: Optional SCU IPC instance
> 8b236565600833 drivers/platform/x86/intel_scu_ipc.c Mika Westerberg            2020-01-22  462   * @cmd: Command
> 8b236565600833 drivers/platform/x86/intel_scu_ipc.c Mika Westerberg            2020-01-22  463   * @sub: Sub type
> 8b236565600833 drivers/platform/x86/intel_scu_ipc.c Mika Westerberg            2020-01-22  464   * @in: Input data
> f57fa18583f538 drivers/platform/x86/intel_scu_ipc.c Mika Westerberg            2020-04-16  465   * @inlen: Input length in bytes
> f57fa18583f538 drivers/platform/x86/intel_scu_ipc.c Mika Westerberg            2020-04-16  466   * @size: Input size written to the IPC command register in whatever
> f57fa18583f538 drivers/platform/x86/intel_scu_ipc.c Mika Westerberg            2020-04-16  467   *	  units (dword, byte) the particular firmware requires. Normally
> f57fa18583f538 drivers/platform/x86/intel_scu_ipc.c Mika Westerberg            2020-04-16  468   *	  should be the same as @inlen.
> 8b236565600833 drivers/platform/x86/intel_scu_ipc.c Mika Westerberg            2020-01-22  469   * @out: Output data
> f57fa18583f538 drivers/platform/x86/intel_scu_ipc.c Mika Westerberg            2020-04-16  470   * @outlen: Output length in bytes
> 9a58a3333923c7 drivers/platform/x86/intel_scu_ipc.c Sreedhara DS               2010-04-26  471   *
> 9a58a3333923c7 drivers/platform/x86/intel_scu_ipc.c Sreedhara DS               2010-04-26  472   * Issue a command to the SCU which involves data transfers. Do the
> 8b236565600833 drivers/platform/x86/intel_scu_ipc.c Mika Westerberg            2020-01-22  473   * data copies under the lock but leave it for the caller to interpret.
> 9a58a3333923c7 drivers/platform/x86/intel_scu_ipc.c Sreedhara DS               2010-04-26  474   */
> f57fa18583f538 drivers/platform/x86/intel_scu_ipc.c Mika Westerberg            2020-04-16  475  int intel_scu_ipc_dev_command_with_size(struct intel_scu_ipc_dev *scu, int cmd,
> f57fa18583f538 drivers/platform/x86/intel_scu_ipc.c Mika Westerberg            2020-04-16  476  					int sub, const void *in, size_t inlen,
> f57fa18583f538 drivers/platform/x86/intel_scu_ipc.c Mika Westerberg            2020-04-16  477  					size_t size, void *out, size_t outlen)
> 9a58a3333923c7 drivers/platform/x86/intel_scu_ipc.c Sreedhara DS               2010-04-26 @478  {
> f57fa18583f538 drivers/platform/x86/intel_scu_ipc.c Mika Westerberg            2020-04-16  479  	size_t outbuflen = DIV_ROUND_UP(outlen, sizeof(u32));
> f57fa18583f538 drivers/platform/x86/intel_scu_ipc.c Mika Westerberg            2020-04-16  480  	size_t inbuflen = DIV_ROUND_UP(inlen, sizeof(u32));
> f57fa18583f538 drivers/platform/x86/intel_scu_ipc.c Mika Westerberg            2020-04-16  481  	u32 cmdval, inbuf[4] = {};
> ecb5646cb098d9 drivers/platform/x86/intel_scu_ipc.c Axel Lin                   2011-01-25  482  	int i, err;
> 9a58a3333923c7 drivers/platform/x86/intel_scu_ipc.c Sreedhara DS               2010-04-26  483  
> f57fa18583f538 drivers/platform/x86/intel_scu_ipc.c Mika Westerberg            2020-04-16  484  	if (inbuflen > 4 || outbuflen > 4)
> f57fa18583f538 drivers/platform/x86/intel_scu_ipc.c Mika Westerberg            2020-04-16  485  		return -EINVAL;
> f57fa18583f538 drivers/platform/x86/intel_scu_ipc.c Mika Westerberg            2020-04-16  486  
> 9a58a3333923c7 drivers/platform/x86/intel_scu_ipc.c Sreedhara DS               2010-04-26  487  	mutex_lock(&ipclock);
> f57fa18583f538 drivers/platform/x86/intel_scu_ipc.c Mika Westerberg            2020-04-16  488  	if (!scu)
> f57fa18583f538 drivers/platform/x86/intel_scu_ipc.c Mika Westerberg            2020-04-16  489  		scu = ipcdev;
> f57fa18583f538 drivers/platform/x86/intel_scu_ipc.c Mika Westerberg            2020-04-16  490  	if (!scu) {
> 9a58a3333923c7 drivers/platform/x86/intel_scu_ipc.c Sreedhara DS               2010-04-26  491  		mutex_unlock(&ipclock);
> 9a58a3333923c7 drivers/platform/x86/intel_scu_ipc.c Sreedhara DS               2010-04-26  492  		return -ENODEV;
> 9a58a3333923c7 drivers/platform/x86/intel_scu_ipc.c Sreedhara DS               2010-04-26  493  	}
> 9a58a3333923c7 drivers/platform/x86/intel_scu_ipc.c Sreedhara DS               2010-04-26  494  
> f57fa18583f538 drivers/platform/x86/intel_scu_ipc.c Mika Westerberg            2020-04-16  495  	memcpy(inbuf, in, inlen);
> f57fa18583f538 drivers/platform/x86/intel_scu_ipc.c Mika Westerberg            2020-04-16  496  	for (i = 0; i < inbuflen; i++)
> f57fa18583f538 drivers/platform/x86/intel_scu_ipc.c Mika Westerberg            2020-04-16  497  		ipc_data_writel(scu, inbuf[i], 4 * i);
> 9a58a3333923c7 drivers/platform/x86/intel_scu_ipc.c Sreedhara DS               2010-04-26  498  
> f57fa18583f538 drivers/platform/x86/intel_scu_ipc.c Mika Westerberg            2020-04-16  499  	cmdval = (size << 16) | (sub << 12) | cmd;
> ea608f25fa09b5 drivers/platform/x86/intel_scu_ipc.c Mika Westerberg            2020-04-16  500  	ipc_command(scu, cmdval);
> b0b3f578a1c363 drivers/platform/x86/intel_scu_ipc.c Andy Shevchenko            2015-10-12  501  	err = intel_scu_ipc_check_status(scu);
> 9a58a3333923c7 drivers/platform/x86/intel_scu_ipc.c Sreedhara DS               2010-04-26  502  
> c7094d1d994c23 drivers/platform/x86/intel_scu_ipc.c Kuppuswamy Sathyanarayanan 2013-11-14  503  	if (!err) {
> f57fa18583f538 drivers/platform/x86/intel_scu_ipc.c Mika Westerberg            2020-04-16  504  		u32 outbuf[4] = {};
> f57fa18583f538 drivers/platform/x86/intel_scu_ipc.c Mika Westerberg            2020-04-16  505  
> f57fa18583f538 drivers/platform/x86/intel_scu_ipc.c Mika Westerberg            2020-04-16  506  		for (i = 0; i < outbuflen; i++)
> f57fa18583f538 drivers/platform/x86/intel_scu_ipc.c Mika Westerberg            2020-04-16  507  			outbuf[i] = ipc_data_readl(scu, 4 * i);
> f57fa18583f538 drivers/platform/x86/intel_scu_ipc.c Mika Westerberg            2020-04-16  508  
> f57fa18583f538 drivers/platform/x86/intel_scu_ipc.c Mika Westerberg            2020-04-16  509  		memcpy(out, outbuf, outlen);
> c7094d1d994c23 drivers/platform/x86/intel_scu_ipc.c Kuppuswamy Sathyanarayanan 2013-11-14  510  	}
> 9a58a3333923c7 drivers/platform/x86/intel_scu_ipc.c Sreedhara DS               2010-04-26  511  
> 9a58a3333923c7 drivers/platform/x86/intel_scu_ipc.c Sreedhara DS               2010-04-26  512  	mutex_unlock(&ipclock);
> ea608f25fa09b5 drivers/platform/x86/intel_scu_ipc.c Mika Westerberg            2020-04-16  513  	if (err)
> ea608f25fa09b5 drivers/platform/x86/intel_scu_ipc.c Mika Westerberg            2020-04-16  514  		dev_err(&scu->dev, "IPC command %#x failed with %d\n", cmdval, err);
> 9a58a3333923c7 drivers/platform/x86/intel_scu_ipc.c Sreedhara DS               2010-04-26  515  	return err;
> 9a58a3333923c7 drivers/platform/x86/intel_scu_ipc.c Sreedhara DS               2010-04-26  516  }
> f57fa18583f538 drivers/platform/x86/intel_scu_ipc.c Mika Westerberg            2020-04-16  517  EXPORT_SYMBOL(intel_scu_ipc_dev_command_with_size);
> 9a58a3333923c7 drivers/platform/x86/intel_scu_ipc.c Sreedhara DS               2010-04-26  518  
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/3baafb92-5f0f-4401-f13c-0934762ed8f9%40redhat.com.
