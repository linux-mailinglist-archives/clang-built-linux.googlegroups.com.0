Return-Path: <clang-built-linux+bncBC5JPJ45Q4MRBOPHZ34QKGQEUBFLOLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B4B7242752
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 Aug 2020 11:17:46 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id f23sf595670ots.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 Aug 2020 02:17:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597223865; cv=pass;
        d=google.com; s=arc-20160816;
        b=mbVw3Z6LeMWjEBTG63zTR13VMx7nFWIkH2+28wQI2bfUEQn2hbTyN8vYtaIfdfi3sq
         MtWZQCj6y0Kb7mCOMbuuHoa8kPJKcwgUyMwj/Ac3AIb37RWVzWUM1MsD8ZkmXMRkJpxT
         7t57GnnQC7/GZm4KTVFxJZ7s+FfeW0Z1zGRWcexXeHY9qs4opUEaBpYp1wpUPvaA24BR
         yassbug5IYMh7QhhV8l9EfeWshwCdVm4w84wKKJIH7co1lTRo8YAbJTz1i2437fBy16/
         3YaEzAX4Xz2tI5DfVpKjsREhG32vRNvhlRGOfpBxomiBSeaynKL7fboKNaDx5mO4zKGr
         1CDg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :date:cc:to:from:subject:message-id:sender:dkim-signature;
        bh=1OZhrIKwhc2jqP2hEPPVkvh2YyfY2IlGsE6sEBO+wEQ=;
        b=iZBrEB0zQQWuBLNJX2Q3n50RiUuL/AMBNdVMkDh+3U8uJDklGc5tqVBbaccT08TiMt
         lZjvU593lS9Mcit/WYHfyClVVQjwlTlKCuslxeqRBhuj172lOjEjkWDZlN2/6CLfT+Vf
         Pl6jFnNWY0Gq/8KxH5H1GQS6349IQWzQ5zjsBa+XPM/TInNZ97ITRvwrVs5xd0oVwRys
         +MnpGioogrTCQspEGWANsf9R0aJDECHN7ASiga0deRYEimlZREJVJ7dRzdAPWjWu6d+e
         JykSmlUopvLoqcy5cGC9dh1oJxuyyLjivOsqL1V/o4sQh7d3Fz6CxERYBuhnObJDaWuf
         4GPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=bR8KKaZI;
       spf=pass (google.com: domain of miles.chen@mediatek.com designates 210.61.82.183 as permitted sender) smtp.mailfrom=miles.chen@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1OZhrIKwhc2jqP2hEPPVkvh2YyfY2IlGsE6sEBO+wEQ=;
        b=TENr0H1yne16lKkfGKyaoWbf8O1uVfwOtgpjHDJMhbZPZ8R9t83pqxOBVbLkcIBbyT
         UbVZ0c6eyXGXU/1ktF2wQe6ZzCX4WeaySTeFCWpoCMEqMnB5WtXWPRemMlJ5FY33QZNZ
         aYv12xOOnIAlUNZtfyH8VLp5KZ/QbMCkKsnalNp5uA9hS5mGT0PYSIJM504yOwYnsYDa
         fMGB1gY46ZV3ypu0Pq3npFNodpOOWTJ3iRs2Mm68cw9oV1qSKnYKMifQj97Pk/cZyDGX
         KKAJVQBjmS5dycGwdq9GidziqCGrGWfMqqUX8hmYWnCXDh41U3sF43RMsz9nq03lX5mu
         TTiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1OZhrIKwhc2jqP2hEPPVkvh2YyfY2IlGsE6sEBO+wEQ=;
        b=U5TsbVZnFyk4ftF4KWdS4/4m3YuPSDUoCv+1uc9QJzK67m9vElHpacu4wBEtaNZXGf
         5MzjmTN4Qn3RS5wAaeH/kLxg3HOInt21NqzEXgtfncORPo/ruJeAloQOwKyo/U5Z6ANA
         EbQ8yYZKG/trSETV8z2ba5tk2s1izHKm/1eRrSvQ328Wtttfn93qNLQrPyv4m41Ci5Js
         bShBy6PLJ3b7dOmM4DXZkWp60DGUW7YUjsWdzR7H5LUHTZ4ZfVaw16gsudiidYxqD2Ib
         EZ/hZdC0pjQFybTiU6g9A1dvS15RsYkrUb3d4btUT4YyUp3/wCa5wZW4HCbKvk29pVPR
         J/Gg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531hdfkryfh49CTidXEQ9v3GfqqZITE/TiO12tnz5EdM3oo9v2Kb
	6IWfU83n8I3RKDWfv4qQrtg=
X-Google-Smtp-Source: ABdhPJxYcZ56/c+/Lm+afoCa+2+DDTSkEXaAHGPI8lB1hyt2Lztr1W+uROJKNG2SttdpHMVtdJKdJg==
X-Received: by 2002:a05:6830:1090:: with SMTP id y16mr8045606oto.365.1597223865124;
        Wed, 12 Aug 2020 02:17:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7ad9:: with SMTP id m25ls301663otn.11.gmail; Wed, 12 Aug
 2020 02:17:44 -0700 (PDT)
X-Received: by 2002:a05:6830:82b:: with SMTP id t11mr8591572ots.104.1597223864777;
        Wed, 12 Aug 2020 02:17:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597223864; cv=none;
        d=google.com; s=arc-20160816;
        b=mVFD/+NjW9q491Hc9Txd2OfjvkPUZKsK1R9/CifhaG4c7XV2HoO7Xewu3T/uf2IB26
         1C9ff0gVvTWqTKnvoT9rcCAb5N4UBFBC0PSTKa/MnrGef2acsHZDeH+sNCqo2gZOdx/d
         KwSSpPvCEAufX6jzYOUwMqkY0nhy+EHSIyqcclBrnQEjzB/zsEFUhMYAU7ro9Mmdr6D7
         aVI60mDeuqe15i7oZcdo4AE7Czw/FylXGKHbE3SMdq+t0DDG5bzzE7Inf46Ex5xeQT9F
         nVF3Td3Ii1O5GetJJsbSeQh0bzwgJymEDt/9h6wpuL7dmaAh1zrujUKaQyI6EIZJnomT
         P8vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:dkim-signature;
        bh=UqdzDWD86OrCp6wEU2YB9Bwu97TCSXyPz6lXG6Qwo4U=;
        b=EXEs4or5qXQq4j/doafDf04jHVVm7v4gl0QXV1zxCl2+xscWHhzRQqpiWq4l9cR/Mq
         OpjkTvsG/5wK6YoNy5w6PYHOx9tlYZEfrZM0zJI6q9+JF1GDDcyziYyQWNGwNefiTzlR
         S81xbCTyTIuBWfNGHuo+JW9n3SBzIGZAbzLxscpFoMCnaaOtmZf4PFiF+yfxNOP1/jr1
         S0zd5SdWG2nPoRnMmDR12K/Ls3fM5XttMrkCtyJm0qLaUtnW3EiTqZ1wtRNROgGlmPo1
         4BKzjC8fogzGiqBZ0UHe+OSi/GE7ZL03XgIbEvfS1db40uwsiYzIworzvDTWuchT9pxY
         KCwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=bR8KKaZI;
       spf=pass (google.com: domain of miles.chen@mediatek.com designates 210.61.82.183 as permitted sender) smtp.mailfrom=miles.chen@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
Received: from mailgw01.mediatek.com ([210.61.82.183])
        by gmr-mx.google.com with ESMTP id w1si63200otm.5.2020.08.12.02.17.44
        for <clang-built-linux@googlegroups.com>;
        Wed, 12 Aug 2020 02:17:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of miles.chen@mediatek.com designates 210.61.82.183 as permitted sender) client-ip=210.61.82.183;
X-UUID: 25e573d41ef8423a8439bfebe68ac62f-20200812
X-UUID: 25e573d41ef8423a8439bfebe68ac62f-20200812
Received: from mtkcas10.mediatek.inc [(172.21.101.39)] by mailgw01.mediatek.com
	(envelope-from <miles.chen@mediatek.com>)
	(Cellopoint E-mail Firewall v4.1.10 Build 0809 with TLS)
	with ESMTP id 1663623647; Wed, 12 Aug 2020 17:17:38 +0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 12 Aug 2020 17:17:29 +0800
Received: from [172.21.77.33] (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Wed, 12 Aug 2020 17:17:29 +0800
Message-ID: <1597223851.5467.12.camel@mtkswgap22>
Subject: Re: [PATCH] net: untag pointer in sockptr_is_kernel
From: Miles Chen <miles.chen@mediatek.com>
To: kernel test robot <lkp@intel.com>
CC: Christoph Hellwig <hch@lst.de>, "David S . Miller" <davem@davemloft.net>,
	<kbuild-all@lists.01.org>, <clang-built-linux@googlegroups.com>,
	<linux-kernel@vger.kernel.org>, <linux-mediatek@lists.infradead.org>,
	<wsd_upstream@mediatek.com>
Date: Wed, 12 Aug 2020 17:17:31 +0800
In-Reply-To: <202008112018.fpLyWmTj%lkp@intel.com>
References: <20200811102704.17875-1-miles.chen@mediatek.com>
	 <202008112018.fpLyWmTj%lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.2.3-0ubuntu6
MIME-Version: 1.0
X-MTK: N
X-Original-Sender: miles.chen@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mediatek.com header.s=dk header.b=bR8KKaZI;       spf=pass
 (google.com: domain of miles.chen@mediatek.com designates 210.61.82.183 as
 permitted sender) smtp.mailfrom=miles.chen@mediatek.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
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

On Tue, 2020-08-11 at 20:28 +0800, kernel test robot wrote:
> Hi Miles,
> 
> Thank you for the patch! Yet something to improve:
> 
> [auto build test ERROR on net-next/master]
> [also build test ERROR on linus/master]
> [cannot apply to net/master hch-configfs/for-next sparc-next/master v5.8 next-20200811]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]

hi test robot,

thanks for the report.

6d04fe15f78a ("net: optimize the sockptr_t for unified kernel/user
address spaces") has been reverted, so I will not sent patch v2 for this
build error.

Miles

> url:    https://github.com/0day-ci/linux/commits/Miles-Chen/net-untag-pointer-in-sockptr_is_kernel/20200811-18303
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/davem/net-next.git bfdd5aaa54b0a44d9df550fe4c9db7e1470a11b8
> config: x86_64-randconfig-a013-20200811 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 4f2ad15db535873dda9bfe248a2771023b64a43c)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>    In file included from net/ipv6/af_inet6.c:29:
>    In file included from include/linux/net.h:24:
> >> include/linux/sockptr.h:23:24: error: implicit declaration of function 'untagged_addr' [-Werror,-Wimplicit-function-declaration]
>            return (unsigned long)untagged_addr(sockptr.kernel) >= TASK_SIZE;
>                                  ^
>    1 error generated.
> --
>    In file included from net/ipv6/udp.c:24:
>    In file included from include/linux/net.h:24:
> >> include/linux/sockptr.h:23:24: error: implicit declaration of function 'untagged_addr' [-Werror,-Wimplicit-function-declaration]
>            return (unsigned long)untagged_addr(sockptr.kernel) >= TASK_SIZE;
>                                  ^
>    net/ipv6/udp.c:1029:30: warning: no previous prototype for function 'udp_v6_early_demux' [-Wmissing-prototypes]
>    INDIRECT_CALLABLE_SCOPE void udp_v6_early_demux(struct sk_buff *skb)
>                                 ^
>    net/ipv6/udp.c:1029:25: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    INDIRECT_CALLABLE_SCOPE void udp_v6_early_demux(struct sk_buff *skb)
>                            ^
>                            static 
>    net/ipv6/udp.c:1070:29: warning: no previous prototype for function 'udpv6_rcv' [-Wmissing-prototypes]
>    INDIRECT_CALLABLE_SCOPE int udpv6_rcv(struct sk_buff *skb)
>                                ^
>    net/ipv6/udp.c:1070:25: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    INDIRECT_CALLABLE_SCOPE int udpv6_rcv(struct sk_buff *skb)
>                            ^
>                            static 
>    2 warnings and 1 error generated.
> 
> vim +/untagged_addr +23 include/linux/sockptr.h
> 
>     20	
>     21	static inline bool sockptr_is_kernel(sockptr_t sockptr)
>     22	{
>   > 23		return (unsigned long)untagged_addr(sockptr.kernel) >= TASK_SIZE;
>     24	}
>     25	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1597223851.5467.12.camel%40mtkswgap22.
