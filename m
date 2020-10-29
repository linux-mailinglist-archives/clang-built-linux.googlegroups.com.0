Return-Path: <clang-built-linux+bncBDYJPJO25UGBBA5Q5T6AKGQESITWKTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B30429F530
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Oct 2020 20:29:08 +0100 (CET)
Received: by mail-qk1-x73c.google.com with SMTP id h23sf2018621qka.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Oct 2020 12:29:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603999747; cv=pass;
        d=google.com; s=arc-20160816;
        b=SCX5VwFPCxz5ZmqTatEKrSiyV7LzRl37GJkbtAvP/r1sQ4KHRlnfUu9OvtiCcLlq7J
         6Y2694L0BflcCCp+OO/+rg5lEPDx5BnQMlBK4MJ6aBAjl52sOsTPIYkWaThSQuTIW1Rn
         Nr/6UGjbK/N2I2Wy3En1Sy4bYzusZ0eWWwbzM7lcPEeFxzllkj1AwepWgGWnDhgqJASE
         TQg6LaYfVxSoDIl8a0HBzonuAcQVZLmVqWtGB+HxU2uqjkD/yh4gjcXpRlDiKZdVtrx0
         441MQPzzWC87pj87U8McLBoDO07AY7XTSMfwNmF4alNqiKHeAfX8A2f2tjN+PmeIRf3j
         Q8Yw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=28mXPlpSGU7u1ohE/AjNazL9vcZIEjC/sHx4nEXX8eA=;
        b=ic9ZO3AaVEWvUgFitvEmHKAoZFYWCZavQ4wygble6hcH/JUOMHBf7GCHq4FeduttGe
         QsmsWhSMul3DdWYq2dW18911t4Z0Bzxq1joAPIlUkdPkwK9raqzfzhuPhhhWgSLDpczl
         xfrjnnnwLQ/KAnuD4JS4YOG43M0m0hOIpY2sInpm8e10PfgtkV5p/cq/Z1Zf4pSb40lp
         yOvOxu9UdYqs3GP4FeF1CUyav3QNVW8lM1MQyp6h8UuDWREQDnFhs6hIgILD2NeQiUZa
         48NM1QABVrCma7mv+QNb5H2X5e3HJ8zSKTB/AI0Z95uaI8Dj5lmkV8Be3c2xYLYe4PnB
         hwFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=eKEuZeql;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=28mXPlpSGU7u1ohE/AjNazL9vcZIEjC/sHx4nEXX8eA=;
        b=fZw50qA0MwmQxhCvWs3YnI1aDvQUT8DCHBYqe894acnzUp5Br62jiZ5ej/D7GSvYh3
         2/6eXFTLYCufzj98M7aUC6YMR6KmIqgfzKdxyVO051r1EIZPg9NVHVaEK+Qbim9K0uhN
         L8xaoDEjGMhejifOvOpdsMdUP28SKK1rsU4iNd+scvjyH688AIu0TeV1j7jcyhrH6Ayv
         B6p7hbRW9CnG5v5gqhjNsw7HOBtT+5e2TgJ+aSzhL5nwVRqzMzcD/NrLhr53Frn2bKfs
         U3d3N3/to6bqNoqqjqziu2P2qjf1tPjwDJpX2GkxFpxhD1pb2E28sm35+cw0SZq9tbwi
         qwrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=28mXPlpSGU7u1ohE/AjNazL9vcZIEjC/sHx4nEXX8eA=;
        b=fTs4AtA/V1/CBhsjMkpedWy1x+nioHTX6QKHwjAfVqquZfjV0QJJMp92k0Slcvl48a
         6UHQOOTbJkdNPlrdTwh7r7rDJniafqL980joUA0KeAKMiYPDijPnm8cn1wUbrsi58cf2
         N2Isbh5ULZj455vwPle3ZzaFCx8kT0OfVpaVcqY+aIxvBKeQOn2agSOae287FEvwCyTU
         qOQ/HiTDuJ888bYKcOE2ZyAo8QlT4ux0EsikGTehm+jbdqheLIDqD8550CjLivG7rZdb
         23uAKRVzGhUHsZ6g0mNY21TuH19VtDsoLKPhl7OtOvYkKy98zprNuPBp/NWROsaBzus6
         BS9w==
X-Gm-Message-State: AOAM530biIQJh5Ea+rUaNkMKyw9FA859SNd2mCopnPSrf/8Q8kpSvCR2
	pJSDQHYMCmuO62+Z0RE8Uxg=
X-Google-Smtp-Source: ABdhPJyP1ln6kJue2eFvrPz4W1WoEH0AfkLTY6HkPALLbYwZN5lEtIT7HKWwy1T1QtMjV3afrqlnKQ==
X-Received: by 2002:ac8:7a6a:: with SMTP id w10mr1170736qtt.161.1603999747304;
        Thu, 29 Oct 2020 12:29:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:1248:: with SMTP id a8ls1891985qkl.11.gmail; Thu,
 29 Oct 2020 12:29:06 -0700 (PDT)
X-Received: by 2002:a05:620a:a9c:: with SMTP id v28mr5188396qkg.25.1603999746880;
        Thu, 29 Oct 2020 12:29:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603999746; cv=none;
        d=google.com; s=arc-20160816;
        b=IkgeQdxhTKcSmzO21RSJF+DY7dyy9/arZ59YrIdv2OPZ0EGPx10FxP0mhinngF/re5
         q4y4OSbpF2NUc1bkRJW1L0SGObxFvuvDq/Fcc79mDJ+JXXh1Aq43jwXVWTMZkjUgnJDk
         Ys9IwZsvxc516JPmX7/CRTbjCwhZ6SAZqLSSKLwHudQyl5QWbyuItF6kDlQdZSwPXqil
         qrl8O9Og+S6kEqjxYSLpdpOseSk1mX1pZLlZSMztpYNo+YgL096zseH9yY4O7KFl4aGR
         6MTgRinF210vTjvE2oX36VUZu7dspRPWNgsKRSk/YnMwdE2VeZEgx7OBAi3ZkkcE1q6d
         2K6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hODTMe567eC6BMy7rW+EbRY7j8SWSkBEoRWcDjtLRZA=;
        b=VNz23vdFAqt2JDBEg7rDmbD2uHOUhDPvnwYE1iO1RWDrH3KVv9IEkloQGKpyxjedqD
         VTb+LhVTdQO980hTy44rzdt+e6DrsUG6qwmGlwXQNVvseFAm2G4BFEzGmq/OQvyE0eAK
         pzwbfg8NqMv9rCVn5bwSKogHQkYFYclvwYbxrmMHyslSWz+eC/KBlxWOH1E648jbbMvO
         Rn3vxsqZo5R510ouiwPINmQXHFC5UinIaIifzn+ibDcpoQpdgW23pehcgJPuvy60/pRk
         gAAvUmOE45PSWYr2EoQvVcdB7s6LYOed0Trzy1BP4yYQyKFJIU4Hstxs+JrCS3tKtRdb
         41Wg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=eKEuZeql;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com. [2607:f8b0:4864:20::434])
        by gmr-mx.google.com with ESMTPS id z2si265411qtb.3.2020.10.29.12.29.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Oct 2020 12:29:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::434 as permitted sender) client-ip=2607:f8b0:4864:20::434;
Received: by mail-pf1-x434.google.com with SMTP id e7so3164921pfn.12
        for <clang-built-linux@googlegroups.com>; Thu, 29 Oct 2020 12:29:06 -0700 (PDT)
X-Received: by 2002:a63:70d:: with SMTP id 13mr5476482pgh.263.1603999745918;
 Thu, 29 Oct 2020 12:29:05 -0700 (PDT)
MIME-Version: 1.0
References: <202010291249.MFjbb8tv-lkp@intel.com>
In-Reply-To: <202010291249.MFjbb8tv-lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 29 Oct 2020 12:28:54 -0700
Message-ID: <CAKwvOdk82WZnCh9G8CidN9tJ6qiMaHYdN-e+Ad5kRa6C87Vfxg@mail.gmail.com>
Subject: Re: ld.lld: error: undefined symbol: amba_driver_register
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=eKEuZeql;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::434
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Wed, Oct 28, 2020 at 9:57 PM kernel test robot <lkp@intel.com> wrote:
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   23859ae44402f4d935b9ee548135dd1e65e2cbf4
> commit: ea0c0ad6b6eb36726088991d97a55b99cae456d0 memory: Enable compile testing for most of the drivers
> date:   2 months ago
> config: arm-randconfig-r024-20201028 (attached as .config)

^ Note, this was a randconfig, so the preprocessor guards on CONFIGs
might be wrong.

> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 50dfa19cc799ae7cddd39a95dbfce675a12672ad)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm cross compiling tool for clang build
>         # apt-get install binutils-arm-linux-gnueabi
>         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=ea0c0ad6b6eb36726088991d97a55b99cae456d0
>         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>         git fetch --no-tags linus master
>         git checkout ea0c0ad6b6eb36726088991d97a55b99cae456d0
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
> >> ld.lld: error: undefined symbol: amba_driver_register
>    >>> referenced by pl353-smc.c
>    >>> memory/pl353-smc.o:(pl353_smc_driver_init) in archive drivers/built-in.a
> --
> >> ld.lld: error: undefined symbol: amba_driver_unregister
>    >>> referenced by pl353-smc.c
>    >>> memory/pl353-smc.o:(pl353_smc_driver_exit) in archive drivers/built-in.a
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010291249.MFjbb8tv-lkp%40intel.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk82WZnCh9G8CidN9tJ6qiMaHYdN-e%2BAd5kRa6C87Vfxg%40mail.gmail.com.
