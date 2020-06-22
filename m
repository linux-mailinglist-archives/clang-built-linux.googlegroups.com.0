Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBF7EYH3QKGQEBFGELMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id B9FF9203298
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 10:55:52 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id l185sf12298990qkd.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 01:55:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592816151; cv=pass;
        d=google.com; s=arc-20160816;
        b=cjmIZfzA+GONFcNxBB5nwr452ajUDSNGB7aH3WDnKU99JxBtQzgOs8U0SdKvRrTewb
         4Apvd+NYJ3NhqBc4EiwIKJwCvHNBx61a5TolS82EwJValnUycgKWGy5TePkjNe4CjpMu
         TWpoRME/u4Il7WP4nhzqrVM0jjkrWNMJjaPWHPyqJgJmKIvrXFvmcp8Cf4/rdr225KRh
         UuBrsjj4BaftCx3Elj8pj9E1glavlP0k/9mxKcf4/9mqf5KqcHvuVqKnd0uja6eb2baW
         JxsVkKHncVba7Aqx2S9XuRTwGH8g0M27SSPZKLDlAIFfuDQT3Ir4a/tpSVEBW1WOnC2I
         mdlQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=l821qD29sd98rFpkLK1AhYwihmkSuiYJ3ByKZOKc31A=;
        b=Fbj+7c//6UY/2knwXKl5FEZ8PzsHNQk75Tli4C1+gyQAyaoCCGd8FvrR5/AlGyrCv4
         vjq1Qs/6kwQbDIieCazVKY3MpI74vigsvc0M7eATLvqeNpNFrVRW2jVMfe7njtBGRM/V
         iA8TE39gS+b7VQOlwLatCCg/V2rsY4bEvnng5OjGfVbXCpTEai8uns7YPUy0lzCDUhmT
         IoW8lympJj5UFiPDSwMZx6ooBfmiL/Dz4upAcowdK1Q8O8pH1LtyV65RVf8hoAe3Lo4q
         oI9D1Coga7413xf7qCbqDfej2QFGG6uP5nIHrYUflvhD5OT2TDeg3z182+2llUykrYsC
         1rMw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=f4M9bfUv;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::333 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=l821qD29sd98rFpkLK1AhYwihmkSuiYJ3ByKZOKc31A=;
        b=P+pP+y38d3W0+AKuVzwzwVDmiLdw6vD0+bKOK8GFMU6u9iOYh6EQSssdJgp5R8qz/i
         VLonY/u5RAyWbLYjXhvnQUnaxqdyBM2+DUEXVMukmFJbw+6bwmVLJ1eiSvinNRDd+pTG
         RFZHwb2too8aVL1J4LDRbcRy38Sfuof+xl43rrfwfXM69g49Oj3rIcWX8LYgV1lNj32o
         fiuvXxFEvHJ6g285umCpFtQQ8pEj4wyeBPR2XsiIlIRM/5qomKTsUGJbgks4aB0cf+Na
         njtzO2+r5OaouMy9ffZcOc7VGN46KFzs7thkXDbA+Ewmip7s2OfzMCnguqhyxTTyuHyg
         zfIw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=l821qD29sd98rFpkLK1AhYwihmkSuiYJ3ByKZOKc31A=;
        b=pBhg2a2O40YouQhMyQIY/5YTYjfyh2i/v8T6EgcWbg/cWh7XookZ3QtthIpo38OGYP
         RpG13lgFJ8sVdAR+wMgtdZISf1+oNkBv0ScHh9CHO6G/3RN0JMlTXjyYuncrTOH/mxIW
         qUTahzeixckfVAg62L6oRHm/jnPLWl+5rkARp8zYbtGwJHG7w/FLRm595raPFo0RFgbk
         VxIRzd84uFNbPmqT9ubmdiS3N3vTvBPj64tAdDSp3UPeTDSipXKUd138C449M0/f5rSw
         ApzGDX/l+KNDKD/xv9syfot/5EldJOcznUnX9Fe8Ga3FjZhq6uQj45wYB9VkNmDhPfKS
         2gTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=l821qD29sd98rFpkLK1AhYwihmkSuiYJ3ByKZOKc31A=;
        b=GIxKnxuEn9YeaiLsPF4znzRgKj7GNDsdP5WMKqate9RjaAh4cji9gp59x5cq6LPNRb
         52P3GmLZIa78RYRpue4KzJh04y9vLzh9YeKdUtJdMyASIB33ko2FH7mQ3o0qmPd5XdlL
         d+NHm56KqSEP8P3LnsNeANjWJT+AfTKCjVBUtrx4EjiHhu68OvSmJuoQsb3NQf95tz1Q
         m21kQ3l2m60ED2Q9ZI6n8OREDtzUPVRjulc6NuPapyKpsGQvp3gAxooN/mz5x8a+56gB
         f1wR5/oIrOrao4Vvpiv1Nl7SqCsTJqtKFFcXAJTvlUMPdhisEOR9JP8A/I1y83leM4b4
         zacQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531fsCnyzCuQ331GIFtJ9QM0Xtua9fQ/HVt74542MMFgqTNMAwQt
	c2shwj1tYUjAb03yxKT/Q30=
X-Google-Smtp-Source: ABdhPJxYpQ1Y0+KEDhWR2Yi75XUtWYo9TNjIWJBNKaVn/tjoKHklIiipb3jEXt+H04RLO/URWmS1+A==
X-Received: by 2002:ac8:17d6:: with SMTP id r22mr2915601qtk.15.1592816151561;
        Mon, 22 Jun 2020 01:55:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:f78b:: with SMTP id s11ls1556637qvn.5.gmail; Mon, 22 Jun
 2020 01:55:51 -0700 (PDT)
X-Received: by 2002:a0c:f293:: with SMTP id k19mr20787248qvl.157.1592816151186;
        Mon, 22 Jun 2020 01:55:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592816151; cv=none;
        d=google.com; s=arc-20160816;
        b=SacGgfCcJkiGOqr4zjHLQONZyjZfnrIggThOHq+Ai1aNKzEfNVg96FcMg45bG+/MUU
         Cjn2zLnxMURpkcOw0ekU4a4aMypssaJFq6QkmlD+g5FkPb43zZyIbHo94cq2Td1ogjhP
         eZHTpnVvYAeneR57/zCETolpInAjW+Br2kbDXJ27Y6aEIINlwu8d6/7JKlO16BezvR7V
         d24Qz2FGVNbBflvFp+p3nVpX5fbFLWRj6lWjFLXOYkvtIHcyt71lk3zgERbgfSVde3Vc
         z/Da/FCx6MCOQggICpUNrejTFdrOWuin3s8PxA5VbdxmM22MaagsotNOrhG0qDCanBmd
         QOVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=CLBRmr96abG4aHvazGL4nfQHT1RMNgaTnp85Soqj9kc=;
        b=wJXVSVKD5xIHdRPD3YdFJAEZb3DUjiCkJ5mG8kpY7kHAw0lUqNqQ2IcbQsSxQy+yLN
         kPP/KA/YsWTC9DZhYiB6w+wQdkP0bBOkolJHapOv2vP19M1y3frNuhUEreKlUivRzS57
         rMrw78TlPy+q9injSl+bkKdvCSLfHH4Zgdui67eN3EbGePstG2/7B9BR/M4hWKCdV9r2
         S63DZa26opjg+aBjBfeUfF/b1SrL5JQz/UqZktf00hAWaDF/A3bg6WLNhHHcfbCbMpI7
         tlsHbjwSd0RHhaMPTdGTmmnCF5s9zUIPY4wWWPmBehTp+Uxdvx4sp0irjIclG6LFuETR
         KDeA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=f4M9bfUv;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::333 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com. [2607:f8b0:4864:20::333])
        by gmr-mx.google.com with ESMTPS id m1si999383qki.3.2020.06.22.01.55.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2020 01:55:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::333 as permitted sender) client-ip=2607:f8b0:4864:20::333;
Received: by mail-ot1-x333.google.com with SMTP id n6so12480667otl.0
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jun 2020 01:55:51 -0700 (PDT)
X-Received: by 2002:a05:6830:1d8c:: with SMTP id y12mr13277460oti.162.1592816150529;
        Mon, 22 Jun 2020 01:55:50 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id o2sm3148056oti.80.2020.06.22.01.55.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jun 2020 01:55:49 -0700 (PDT)
Date: Mon, 22 Jun 2020 01:55:48 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Cristian Klein <cristian.klein@elastisys.com>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, Jiri Kosina <jkosina@suse.cz>
Subject: Re: [hid:for-5.9/core 4/4]
 drivers/hid/intel-ish-hid/ipc/ipc.c:12:10: fatal error: 'client.h' file not
 found
Message-ID: <20200622085548.GA2966479@ubuntu-n2-xlarge-x86>
References: <202006201202.0oBmfh6N%lkp@intel.com>
 <20200622084909.GA16222@minitrue>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200622084909.GA16222@minitrue>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=f4M9bfUv;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::333 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Jun 22, 2020 at 10:49:09AM +0200, Cristian Klein wrote:
> On Sat, Jun 20, 2020 at 12:37:07PM +0800, kernel test robot wrote:
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/hid/hid.git for-5.9/core
> > head:   470376737e88dc8e453f3d2739447c130f8ebeb6
> > commit: 470376737e88dc8e453f3d2739447c130f8ebeb6 [4/4] HID: allow building hid.ko as an external module
> > config: x86_64-allyesconfig (attached as .config)
> > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 487ca07fcc75d52755c9fe2ee05bcb3b6eeeec44)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install x86_64 cross compiling tool for clang build
> >         # apt-get install binutils-x86-64-linux-gnu
> >         git checkout 470376737e88dc8e453f3d2739447c130f8ebeb6
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> > 
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> > 
> > All errors (new ones prefixed by >>):
> > 
> > >> drivers/hid/intel-ish-hid/ipc/ipc.c:12:10: fatal error: 'client.h' file not found
> >    #include "client.h"
> >             ^~~~~~~~~~
> >    1 error generated.
> > --
> > >> drivers/hid/intel-ish-hid/ipc/pci-ish.c:22:10: fatal error: 'ishtp-dev.h' file not found
> >    #include "ishtp-dev.h"
> >             ^~~~~~~~~~~~~
> >    1 error generated.
> > 
> > vim +12 drivers/hid/intel-ish-hid/ipc/ipc.c
> > 
> > ae02e5d40d5f82 Srinivas Pandruvada 2016-08-07 @12  #include "client.h"
> > ae02e5d40d5f82 Srinivas Pandruvada 2016-08-07  13  #include "hw-ish.h"
> > ae02e5d40d5f82 Srinivas Pandruvada 2016-08-07  14  #include "hbm.h"
> > ae02e5d40d5f82 Srinivas Pandruvada 2016-08-07  15  
> > 
> > :::::: The code at line 12 was first introduced by commit
> > :::::: ae02e5d40d5f829c589412c6253f925e35cf7a22 HID: intel-ish-hid: ipc layer
> > 
> > :::::: TO: Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>
> > :::::: CC: Jiri Kosina <jkosina@suse.cz>
> > 
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 
> Hi test robot, :D
> 
> Sorry for top-posting. I could not reproduce this today.

Fixed it for you :)

> I am unfamiliar with the status of clang and the Linux kernel. Does this
> indicate a problem with the Linux kernel or with clang?
> 
> Cheers,
> Cristian

This was reported by Stephen Rothwell as well, who uses GCC:

https://lore.kernel.org/lkml/20200621140421.7f4552df@canb.auug.org.au/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200622085548.GA2966479%40ubuntu-n2-xlarge-x86.
