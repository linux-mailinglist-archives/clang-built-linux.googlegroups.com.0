Return-Path: <clang-built-linux+bncBDZYPUPHYEJBBCPJ2X6QKGQE7S4HWTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63f.google.com (mail-ej1-x63f.google.com [IPv6:2a00:1450:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id A8F9B2B84E2
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 20:22:49 +0100 (CET)
Received: by mail-ej1-x63f.google.com with SMTP id i18sf1252017ejf.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 11:22:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605727369; cv=pass;
        d=google.com; s=arc-20160816;
        b=pCK4KrhP+Wg2AumG4uEwF2YEH3rQ46YNl4HdhCs4tM2ZmPd1KvNZIXyzH715w/HKXX
         iiumCiRE6DXJ7w65ema/jejWOBuG93tj6cn/FJw1f30ao8sT/qQxUuEm4WbnaL8pd2Zj
         kAmhFmIQh4cop1mjtl4nCfr7IqdZkmkF5Lr6czzdQ2vMX3kl4W+fZBrwCC1lPQTAyYMu
         nZ8X+S85D4StaJsT/qtDAztwix3FO4N9Cs9I/1RDnPPZhGOXhtFT/z6E0S/7hmhpMKol
         dwpf65YUzEndt7oaCqcHP8nvVLEHK/CAcRBntPCdCTd5o6xbijf1XnXrdnbzXZc5Q/FY
         cpIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=orn86iwbOKRpnx1C4PIpoLH+2sE429TgkWUa1gGfW9g=;
        b=E1zVlylhAU5WDL+h+zxWJuIksXDrnyE66lKoPts+nLza4PDtSoBD4PUq3jwGQW6yD6
         hVkZG8UWhpyaM8TuPHZUSNbUEq2lP00UX4CbUR0L3Plcjc+e/oU8cLbmgGAGlQquhWxX
         F1dajJqr+bz4qLAh23cRbK2I3w1sMTiswSbSttl4XiAui/G3BGAlunmQ/kwEXYLvtHc7
         8eoaJPmZAMQbkIVFBBqcLOoZTVTpVKW4TJ0wqIjkp7Yw/FruiLESMbsgSJPZff3FYYLg
         y8twUENNRrEVV1UNHNYDm3JzZEIBaYAs/pbWn1Ie/F4Yn9lAk6zGnRUVLr10+jEd40Xd
         wnxg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel-com.20150623.gappssmtp.com header.s=20150623 header.b=P7TRTa4a;
       spf=pass (google.com: domain of dan.j.williams@intel.com designates 2a00:1450:4864:20::541 as permitted sender) smtp.mailfrom=dan.j.williams@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=orn86iwbOKRpnx1C4PIpoLH+2sE429TgkWUa1gGfW9g=;
        b=i+BKNwEEwvG2VA/LZaJcYBZHaDEUOSAYjboXn89q0TA8EXj9BP7MqUkAj/eH78CqL7
         Mdf97D0H3Zqf51JrppgmSe6hNYu21auNd1lwv7dw8n8bjz4zxdr9uWBxi7qk2iOleIIy
         BAa8rwcE1YVDhP2WGqGlro9yam1dIM1LCeM2cvO6G00YS3I2pPQT9cXjPSjT6E/b7k7b
         zJL6eh7JYjxsRpeuK9gJBsXFEKVh3/VpY0kQCidQbRtsOMWzzmHSPDGGAO70pTE7TcBm
         A85437lpKaP3wqGtg/AK99kWeT5pTrarYPx7QX6QWuqmtwc4scs1O+flRFQ+HiJnbt+r
         oA4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=orn86iwbOKRpnx1C4PIpoLH+2sE429TgkWUa1gGfW9g=;
        b=TY5ZiQdYlpkIzVMwA4AP2c12MuHxKj+n9Uwin8vwqLn1S78mBxOXNk8LhXIElCVP4e
         kl8FjhCQlQsN08aWbkjDToMupbksHrL7AKtALoh87dIHhVJwF1eSpEDHGwQApXrRaM2y
         zMGMJDTPMV/OtIkGewSXZBGiKygJTqIFbSWgNDSkCGzIwbZjhgfckX54/1W8wYQmNeKy
         ibZS09SlbTIyufdnu4iHZ3MjEFzLpkMaBURl3KTTp6TKE7wCFKiwLozhjusANUrGgZqM
         RX0coe79NWNC8L+sEKI/wZMu3rVT217Y3foge9vySHIuh4GjA6Nii0bgCHVC1372ZHZD
         7pHQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Un1qEFAX1g2SB4Bwub7bv7RF5DvRFB0tDnQ7pg81A9E15ogpn
	f6YPfsUU7PqYIfiwp4t8yzc=
X-Google-Smtp-Source: ABdhPJxqbqjZZ/hRg/JKB2oFf3LNPHDMgaerD+992MbKDZrG7U5kp0udJVRZDG5oMvRRJCayrSnYlA==
X-Received: by 2002:aa7:d2c4:: with SMTP id k4mr8421735edr.367.1605727369360;
        Wed, 18 Nov 2020 11:22:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:c04:: with SMTP id co4ls182445edb.0.gmail; Wed, 18
 Nov 2020 11:22:48 -0800 (PST)
X-Received: by 2002:a05:6402:31a5:: with SMTP id dj5mr28276280edb.325.1605727368355;
        Wed, 18 Nov 2020 11:22:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605727368; cv=none;
        d=google.com; s=arc-20160816;
        b=wcqfkVMiCKY/uT2iGdf2+AF3g3ZQHOtGvF2znGx+TCfrO4Vz6h4AZB6Kvewe2JX0Bi
         2UCg471cyNKw4k3/v1rP4ndLQ6Y6ov8ZFPziZrzjuTAuqODTq+XjLophKvpB7lzJF/S2
         qLFUFBXNiFfHRleJHKJIjqrZq+Lm8BjHj87SW+FhDI+08N1sLQj0fxPui592iDWY18Bs
         CuPwPYbQcrFPchjbgNNuiNOazDi/VX0ZqTxLhbbeYduPInVBtepZqBFi+eYYCtAYGhuK
         JVx30Bf+J8LWdhqlz4QO+TPrRsk+GMu8dbPqZHF200UhOKnn/n0z6kdgC38QYiPVXGt4
         1ZZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=umb65MLE2msjrtMuZ3o2OTviSiMLexBt/JRde1eeqlc=;
        b=qQ2/VKVOjck2Lzs60CNXtAjIke/omgslx6SHS2er+iqg3tnGZPA4TbK2m8+IoDIM2G
         BF/GAHxPGz5CT48Qp1XiSXJBUG50XiBqgd19ZDRuYsRDP22a+E27Chhe/qXgpvqrTeor
         +7e+G0UUG+MYMN6Y0KelnEmhDSEbO6/yeY/Fw9ayKkV3Os+Nz9K/ONGFE6nhF6/BvJ9N
         g/sTCSjN6+Jre8mixz2g7C9/aeachZocQQB0eGkUzaTdBFL6V3WmNGWOm61N3R+f6I3J
         LDuLtgwEEIhM0eF2WGeQvuzl2uGsk5S4H4FaiKllGs7lFn7kvg/TqG1oAAkdrxc09xCg
         W0GQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@intel-com.20150623.gappssmtp.com header.s=20150623 header.b=P7TRTa4a;
       spf=pass (google.com: domain of dan.j.williams@intel.com designates 2a00:1450:4864:20::541 as permitted sender) smtp.mailfrom=dan.j.williams@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com. [2a00:1450:4864:20::541])
        by gmr-mx.google.com with ESMTPS id c11si712593edn.0.2020.11.18.11.22.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Nov 2020 11:22:48 -0800 (PST)
Received-SPF: pass (google.com: domain of dan.j.williams@intel.com designates 2a00:1450:4864:20::541 as permitted sender) client-ip=2a00:1450:4864:20::541;
Received: by mail-ed1-x541.google.com with SMTP id m16so3242132edr.3
        for <clang-built-linux@googlegroups.com>; Wed, 18 Nov 2020 11:22:48 -0800 (PST)
X-Received: by 2002:a05:6402:144f:: with SMTP id d15mr27852669edx.300.1605727368170;
 Wed, 18 Nov 2020 11:22:48 -0800 (PST)
MIME-Version: 1.0
References: <202011182008.u7jsMtBl-lkp@intel.com>
In-Reply-To: <202011182008.u7jsMtBl-lkp@intel.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Wed, 18 Nov 2020 11:22:37 -0800
Message-ID: <CAPcyv4haEaWN9f6eCpnQEcjo4kcGwYp8dcs2PLDnvhG6wj8cDw@mail.gmail.com>
Subject: Re: [linux-next:master 5868/6773] arch/powerpc/mm/mem.c:91:12:
 warning: no previous prototype for function 'create_section_mapping'
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Memory Management List <linux-mm@kvack.org>, Thomas Gleixner <tglx@linutronix.de>, Christoph Hellwig <hch@lst.de>, 
	Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dan.j.williams@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel-com.20150623.gappssmtp.com header.s=20150623
 header.b=P7TRTa4a;       spf=pass (google.com: domain of dan.j.williams@intel.com
 designates 2a00:1450:4864:20::541 as permitted sender) smtp.mailfrom=dan.j.williams@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

On Wed, Nov 18, 2020 at 4:27 AM kernel test robot <lkp@intel.com> wrote:
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   2052923327794192c5d884623b5ee5fec1867bda
> commit: d106ad47e292fde47fc09e16a2ddc13609ff2ad1 [5868/6773] mm-fix-phys_to_target_node-and-memory_add_physaddr_to_nid-exports-v4
> config: powerpc64-randconfig-r026-20201118 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project b2613fb2f0f53691dd0211895afbb9413457fca7)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install powerpc64 cross compiling tool for clang build
>         # apt-get install binutils-powerpc64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=d106ad47e292fde47fc09e16a2ddc13609ff2ad1
>         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>         git fetch --no-tags linux-next master
>         git checkout d106ad47e292fde47fc09e16a2ddc13609ff2ad1
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64

I get:

Makefile:597: arch/powerpc64/Makefile: No such file or directory
make[1]: *** No rule to make target 'arch/powerpc64/Makefile'.  Stop.
make: *** [Makefile:712: include/config/auto.conf.cmd] Error 2

...changing it to ARCH=powerpc I get:

Assembler messages:
Fatal error: invalid listing option `3'
clang: error: assembler command failed with exit code 1 (use -v to see
invocation)
make[1]: *** [scripts/Makefile.build:283: scripts/mod/empty.o] Error 1
make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:1199: prepare0] Error 2

This is on a Fedora 31 host.

>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> arch/powerpc/mm/mem.c:91:12: warning: no previous prototype for function 'create_section_mapping' [-Wmissing-prototypes]
>    int __weak create_section_mapping(unsigned long start, unsigned long end,
>               ^
>    arch/powerpc/mm/mem.c:91:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    int __weak create_section_mapping(unsigned long start, unsigned long end,
>    ^
>    static
>    1 warning generated.

I do not see these errors with gcc.

I feel like clang errors should be flagged / de-emphasized when the
same error does not appear on gcc.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAPcyv4haEaWN9f6eCpnQEcjo4kcGwYp8dcs2PLDnvhG6wj8cDw%40mail.gmail.com.
