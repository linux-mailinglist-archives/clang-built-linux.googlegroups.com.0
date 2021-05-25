Return-Path: <clang-built-linux+bncBCQPVKWLVAIRBJ43WKCQMGQEWZR34KY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D8DD38FA01
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 May 2021 07:39:53 +0200 (CEST)
Received: by mail-oo1-xc40.google.com with SMTP id g19-20020a4a6b130000b029020ebe83598fsf12861355ooc.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 May 2021 22:39:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621921192; cv=pass;
        d=google.com; s=arc-20160816;
        b=C5xtEFRRlmmKGFKaFCv7OsElgQFhe9j4HsCVT6kghiJl9WbyJWMaCUz+il3uMErNZo
         /4ihp+RuXHW50bunoGa5vAnRNf0VH4s0yh/o2PQ8cnE6qD5XX0slPfSc6lLiS+ahfLco
         c9uyTocJIf6lNNs8XY0IfKGOPwdzK5SUtkiS7mFTIhB4rrwpF9/2vJ+gTvbMGbcj/QQz
         B/5ILXVFJpoH8qhBVo6HVAij2rH9hhQWKZ19TXt0+eVoQ0BFWJepxDbOXtct1aHhuuKW
         yWCwoCshRKWTfP6SzVUcw9bLFhdrj/6zaMYFfiaC9qTDgS3rTOPFU2Iy14AsnTac5yKA
         AOqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Bdd7li2Xqv9vrsgQiWMu1BybJVPjXHZEKUBVAh/XhSM=;
        b=Pjx2pwdFNHS0An2Bk1khhADnKbXDl0VmxANjQOj6ghOz4XlCKcjGyjRXEwH9Ym1VBe
         yTjtlsdKNLMKpgMwLk93viWaDUEawp1g1EP63PhnGVlF0K/jOvebHCkXI166vYwybZK/
         x/RtUgp+MltoMuiA/ExiP8csT7geb+CdGzMM7s3pctz40RA92VhUbtPnIzIuC5I5CHG1
         ZUxqAJCmo/WwSR0rlPSpJhyfcreCS0WKthezvzdMLH5CEv5kHAgbmr6CpINdLcD89Pbp
         wwabuohmYyL3cnjU+PadEEnecv9f3t3qbq2B3A0IKuWE3lA/5reDXF0bHijmehc6rNR3
         zYZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 72.249.23.125 is neither permitted nor denied by best guess record for domain of tony@atomide.com) smtp.mailfrom=tony@atomide.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Bdd7li2Xqv9vrsgQiWMu1BybJVPjXHZEKUBVAh/XhSM=;
        b=MNSf+Rqgsw8f1PULNA2g2IslsazYB8S2BN7566P9WRlqpopYqbEJ8H58zFCZKQCcQL
         jTXCnXadqrCDJGBwBrRtHw4oLx+4zvVq9Uv7YePNAioN1IkA5Js6CwztgwVkJGmruBGb
         emSPIYDkq1mm3ofFUT0tQzZ/UUrUwudDRdrY6TCYLm8nvhBr2Eo9vtIkQVrNNFbxcYG9
         IVm/p/kllhi4oUWHZW9BiuxqBiWL82Ip+YLYJsXzL2BNjWu+RhdGh1LGpPBfrOwCCoam
         QLZpaUwpFfsNEy9xeywXNZt6n0bdhs+H56JYYnLbHbbFiIV6mh1JTcxfmFb7d/r6NNo4
         Q+iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Bdd7li2Xqv9vrsgQiWMu1BybJVPjXHZEKUBVAh/XhSM=;
        b=g1T7gs5bGm6JKl3f4AibQqr3Y0g8gHmOq9ZnTwooxCsQO52J4CAIR2x1a72ku461i4
         1I+8tx80eGQ1IT942IE104z3SuN8hy9hAoFcbPiYxizZOxTSwXzRJHBVLkfvHoduLCo2
         TWnp1OHmrGp9ffzNtAHbrw6HrOaKOd204O9z7e0Ge3p93aC5bG6CfYvNhT9TU8CkoYtJ
         Y4NMYtge41/xgErzqVJaMbo8ox/sU2Uc4Le2zgcNKRXpVno6GwuZMBcy9Pi2QVhmsF7Z
         fW2LbLmTajPRDX6b4cMoDdDb8om84Onuro3PgrHF4ntn6tBEkWfVo/5ROkY5Vm9s42NT
         Fkyg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Xxp9TjYuK7dzcYo4RXG5bpGuEgmeAiXtWKxG9kgPQtwzeZ8j7
	hifi0Knty4gJ1BpTW5Vp9NE=
X-Google-Smtp-Source: ABdhPJxwbTZhkeIEvQRqE5ZrLBzcRmIzb5oFIzlsuTtiG5Ar3kPTtnkS/DCF8Rf1Q1i6u5y2LkwJ4Q==
X-Received: by 2002:a4a:d004:: with SMTP id h4mr21096138oor.90.1621921191880;
        Mon, 24 May 2021 22:39:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:49d8:: with SMTP id z207ls418392ooa.9.gmail; Mon, 24 May
 2021 22:39:51 -0700 (PDT)
X-Received: by 2002:a4a:c88f:: with SMTP id t15mr20824929ooq.84.1621921191462;
        Mon, 24 May 2021 22:39:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621921191; cv=none;
        d=google.com; s=arc-20160816;
        b=bFeUU8I4P0Iw+JGn9Rm4z0cZq14wrc9U8DON2UTRnjIVAuEY7Ev/RAZPysJcTRnerL
         7G181vJnrmSiRTEIsrlTQKwoFIwCP9zY6Mb1sS90lz1vYgUF4761eFrsjiy95kb6LjL9
         o2nCH2KxbI7Y1/k+Cek/LaTJ2kluuWgpYvaCcl243ny3Eu7AwDqFKb8AB0/Ax4/2xGwi
         3B9YoOB4d1q3X6iieFAbEE9UIznWePNbeoY4FtByEG6r84w+8aZtIrDak4EZFMsQY349
         DMtntZgkAaixTIdorbS4qByFMng/Xl45wEuJW35tOwVVDthZK6esfn6K3P5ffG6iqfyT
         D/kQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=2IW37WMX3B6eySw1zlD1MEdL3fxnj6621soCkl4j3eQ=;
        b=MQBiShrRdd55C3szbxsdsZ7lODVyunXm9BDsBTxlmIFVnREr/EYs39dh9pFxsx2Ydt
         4BgDZMXMlCkzHWRJy25vE4LsSYGIbiR3CQWwFQGBP4EFZgfBnsVcSL4e8vtRzlrlhLtG
         m8BFaCm7CrZTjGl95jh9RC1tFzd535aRfbZd3QtDkXMQAqjo0d8E08VxYWontGIE9Icn
         EseU2w8NduTiyFVXtn3tiNGZKvpGuBX8PoDjC3tHQxUk49kC3/TjDyNHvtsHFl/3r0lp
         nV41MHWBGFVnqnvc+6p5j5R8g5mjCwgdBxiX6COnTY3pvX5YuwMzLSUiZ0zmiKAmPKtZ
         Dt6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 72.249.23.125 is neither permitted nor denied by best guess record for domain of tony@atomide.com) smtp.mailfrom=tony@atomide.com
Received: from muru.com (muru.com. [72.249.23.125])
        by gmr-mx.google.com with ESMTP id c9si2152980ots.4.2021.05.24.22.39.51
        for <clang-built-linux@googlegroups.com>;
        Mon, 24 May 2021 22:39:51 -0700 (PDT)
Received-SPF: neutral (google.com: 72.249.23.125 is neither permitted nor denied by best guess record for domain of tony@atomide.com) client-ip=72.249.23.125;
Received: from atomide.com (localhost [127.0.0.1])
	by muru.com (Postfix) with ESMTPS id 5B8CC807E;
	Tue, 25 May 2021 05:39:56 +0000 (UTC)
Date: Tue, 25 May 2021 08:39:47 +0300
From: Tony Lindgren <tony@atomide.com>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>
Subject: Re: [linux-next:master 2881/4780] drivers/bus/ti-sysc.c:1398:13:
 warning: variable 'error' is used uninitialized whenever 'if' condition is
 false
Message-ID: <YKyNo2Nf4Z03gfaf@atomide.com>
References: <202105241750.2S5ZpIyU-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202105241750.2S5ZpIyU-lkp@intel.com>
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

* kernel test robot <lkp@intel.com> [210524 10:00]:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   674dc447b09fb668976c6ab1356b11e02ff209ed
> commit: ec527f23e06a0521cd5b043aa31a4ccdf6cea549 [2881/4780] bus: ti-sysc: Fix am335x resume hang for usb otg module
> config: arm-randconfig-r035-20210524 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 93d1e5822ed64abd777eb94ea9899e96c4c39fbe)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm cross compiling tool for clang build
>         # apt-get install binutils-arm-linux-gnueabi
>         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=ec527f23e06a0521cd5b043aa31a4ccdf6cea549
>         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>         git fetch --no-tags linux-next master
>         git checkout ec527f23e06a0521cd5b043aa31a4ccdf6cea549
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/bus/ti-sysc.c:1398:13: warning: variable 'error' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
>            } else if (ddata->needs_resume) {
>                       ^~~~~~~~~~~~~~~~~~~
>    drivers/bus/ti-sysc.c:1406:9: note: uninitialized use occurs here
>            return error;
>                   ^~~~~
>    drivers/bus/ti-sysc.c:1398:9: note: remove the 'if' if its condition is always true
>            } else if (ddata->needs_resume) {
>                   ^~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/bus/ti-sysc.c:1386:11: note: initialize the variable 'error' to silence this warning
>            int error;
>                     ^
>                      = 0
>    1 warning generated.
> 
> 
> vim +1398 drivers/bus/ti-sysc.c
> 
>   1382	
>   1383	static int __maybe_unused sysc_noirq_resume(struct device *dev)
>   1384	{
>   1385		struct sysc *ddata;
>   1386		int error;
>   1387	
>   1388		ddata = dev_get_drvdata(dev);
>   1389	
>   1390		if (ddata->cfg.quirks &
>   1391		    (SYSC_QUIRK_LEGACY_IDLE | SYSC_QUIRK_NO_IDLE))
>   1392			return 0;
>   1393	
>   1394		if (ddata->cfg.quirks & SYSC_QUIRK_REINIT_ON_RESUME) {
>   1395			error = sysc_reinit_module(ddata, ddata->needs_resume);
>   1396			if (error)
>   1397				dev_warn(dev, "noirq_resume failed: %i\n", error);
> > 1398		} else if (ddata->needs_resume) {
>   1399			error = sysc_runtime_resume(dev);
>   1400			if (error)
>   1401				dev_warn(dev, "noirq_resume failed: %i\n", error);
>   1402		}
>   1403	
>   1404		ddata->needs_resume = 0;
>   1405	
>   1406		return error;
>   1407	}
>   1408	

Thanks for the report, I'll update the patch to init error = 0 here.

Regards,

Tony

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YKyNo2Nf4Z03gfaf%40atomide.com.
