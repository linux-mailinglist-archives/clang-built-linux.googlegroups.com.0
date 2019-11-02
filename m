Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBAMK67WQKGQEDBKRF6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 5084CED02C
	for <lists+clang-built-linux@lfdr.de>; Sat,  2 Nov 2019 19:03:47 +0100 (CET)
Received: by mail-pf1-x440.google.com with SMTP id f21sf10050133pfa.3
        for <lists+clang-built-linux@lfdr.de>; Sat, 02 Nov 2019 11:03:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572717826; cv=pass;
        d=google.com; s=arc-20160816;
        b=X5b1kflBHKS/6r3EMuf92KZvknyor4VO9NqaNEfmnPtL/hwgWypAbST3g2/myy66ip
         InVxQT9q3gpI2FNYJ2PQWaZl5mupO67Kn5BFQVJcg85NM1kkS6jSmYmJ38Xv4QxpSMIO
         +QXxVffUTc5l9f/iGsOJuwMHTdxfO4v/IVZ/O2HYZz1tKSSyGhSim14jeuPI14mEpH6p
         sImjedKQXJ/ITQoX+/zMbk+PMnV1VXeb58LZNNtfwArlb2eEVQC0KD3X3VXA1kMkQErr
         x1/k4iCUfOPmmLKnSKeBlmGcygM7sQk2uEsApbiNxQJXqC2+ZdrNmZqWxh1sOm8vkifu
         wT1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=7nO+Gyk9QrftfK8CjXFAXIvzxoq5XIGah2xspCbRZ/0=;
        b=C8JS+IYh3sOPwQq3HakAay15JON3RhUvWp0anGB3AXVRv7N2rzpoa5+Pvq+lz9wGjw
         hhgTE5ztM5lJ8ycY9aFNsAPinqsk0jtNfQFaDUhDcn7iQQExeeXgGJka3MChX1q1y5iu
         iYFXw0sVMBisd+615VCEHMqL4fGbs/eftQVAH6ZmYDmrSRHM1KNE+ajpSrLTlBaJ1mQu
         SP9vWA3sOtCX+lf+D0bc9F9PBilajQkam3oOlHEkGZQ5ecngEdsqjZXDULjk//baRJdT
         nKbjyxXmk6Xz6FsGaLolaXOtV3Kaw2ynyYKkLmFyqDz9BWLfVV3R+pfAJy7r2G7SyGSh
         78QQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ox96JQQs;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7nO+Gyk9QrftfK8CjXFAXIvzxoq5XIGah2xspCbRZ/0=;
        b=dzD+t8k8GRdnd+t3itsu7UncroUogbeNLxgvvvPRbRnunSYGApzBfY267jhJdmZ/ea
         XjTv7Ic7eWAtx6QZf0T+uJi6MrUlPgJWScftR2zeoXx1R/SbfCuuRGAPxXQGCYSAKa8D
         Q/rm/pV4I2zeCJ+hlmHrU4tVOfUrjgyzu0RMtkCU7v6aHxKuy/jFDNLa9M5p8VAUBhVq
         bAju1UCyhfcHwlQPZ/Sb/B3tnh7aOZY+zMpACEVOEd/AMIGMLK6CBPTv7Ihtd1LsM9lK
         7EOZZEx510+8BwwM2+skb3e36lw4nnMJem/endBbZpwRNawnBcjb01cddP5IOqvhExh3
         jxig==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7nO+Gyk9QrftfK8CjXFAXIvzxoq5XIGah2xspCbRZ/0=;
        b=gptAJT3jUCSD/O/dyNoB0vYuaHnEqKMYZjriOiY1kn0ZewUGhCKXCoAFZSdv7Wms3K
         eSAaYmbggpxBaY3tSXVb8xVZNDLq4Alyxu4rv4/WbsAUZRgydB1+pB4cos+RmlpEUP2m
         l1FENdt2SH7Suft7KIRJr6U52eTwfVTApHh8CBLM+gxNIq1cSkEwb+x7uWiAEcl5xW56
         WyzWP5HYx78trWn9iWwsysold339AArLvRQI2L9hnHrfXNwJmhrEMGE0Ok7qgd3urUsV
         ylW3BfUuZn260pg9sXV2Ejm6be7ga4TNAjJgg80jVtJArgJlRiH3BJSi43BUmYzW8wVO
         K7zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7nO+Gyk9QrftfK8CjXFAXIvzxoq5XIGah2xspCbRZ/0=;
        b=JDpjIJMewRgrvpM8xP4RuZS4pEHzVkRyhJtGnhr+gTtRPrR2U1Ul+4cd264wD5dvFu
         vi2dfefs4pCfFmueYAPcCRkQN+WhO+w3f06XrDyURxxmWIeTmWutSC7NPS8f6gktwdzE
         i4eAacBYe5HEiGjEhXQHf6Zvb1IdfOUR7b8LKQRh16X7QVHPmKffp6EYihpxHbYR9e9G
         sYTmBDyGRXUBjGca7/92Jyz7IoWwfXRUMCC9icQdm0G4HcGTuY8PiTZCknU9LyaF+H9s
         DYbeZqtjDVjjBNgJjK412qCFYLizMQuWLGpzlHwHhmZTLccAoXqBq658lgDXJwfKPOVm
         pWYA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXKPzlVBG99dE0nnRP+YIjfPhSnANoBCeGIdAAAv6WG0agrS3mX
	WLIc28Xaj40PZbOAfxzCkZE=
X-Google-Smtp-Source: APXvYqynO5uNroA/F+CiG7ylLGcxylU6ltAgpCLycsqYf/rqZVeDnlOepbFs6q6GTpFKSwFtbTYZNA==
X-Received: by 2002:aa7:9d09:: with SMTP id k9mr21479591pfp.154.1572717825961;
        Sat, 02 Nov 2019 11:03:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9a02:: with SMTP id v2ls2361642plp.15.gmail; Sat, 02
 Nov 2019 11:03:45 -0700 (PDT)
X-Received: by 2002:a17:902:144:: with SMTP id 62mr19777584plb.197.1572717825607;
        Sat, 02 Nov 2019 11:03:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572717825; cv=none;
        d=google.com; s=arc-20160816;
        b=OecGeoMZu4aYrm32rhW89Zlxzsri+h6nJ29/bseoc17hIg/2Vze1H7/E05Erzzow9m
         8G/DOt/05j186rSqTFkgxlFe3bzCZL9za30xEhtiCUemKgT1FIRtqjsESJQCz5PObABN
         y8LeHXv1XQtLPG+N+LiMbznX699rXX0jCicl/G5K2SkExpWIKoQ945T69VbGvSp7ZJ5D
         03oVti1VzFKWEA1Kt+9y+C23kGCzpFrprhp1mJBaIW+Q8NrcyEOkKmZWQVWtg9HmRt1U
         1Yx8b41NgXvsXw3C8KCLaJvceHywISOEQu0NPxFOGliXhkix7BlKM6qPCP1zdEEMU/e6
         DNag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Q0Bu42B8rv6jjsRq2wanoeMjM3O9f0bbEwNigRXS1DE=;
        b=0d1jOFx5MeYpSRhyYq2OX9OreKOFkl4GYXl/zoWjiDUvrOJhdNVhmB5bNTkeMHNOdx
         TOxyvaAqvEf6ft3SHAF7NGf7GnF74uK72jOgZrRDUUWq/apX2pH5w6EAlhXT3qwPD8C/
         v6DtOXOZsLAXRwETdlXg/EzakCnUayoHxGZAuvKLklNz4+BEzOfIdJO4gPvz1bX6Powm
         tIqxm8Ra2rO4COj2Sf2yffEFkRyEtO3mEZtvmIeo2ijJ0rkS14M00o5/HWEQWPqlUq5J
         01oi0Cq6+6/N5ERwl7xLSJIzJEmFFLgJgA1w/1mJNF5ChPmsNtAyufBHLcX2JxP61XBY
         tvGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ox96JQQs;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id f8si137036plr.4.2019.11.02.11.03.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 Nov 2019 11:03:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id z6so11122132otb.2
        for <clang-built-linux@googlegroups.com>; Sat, 02 Nov 2019 11:03:45 -0700 (PDT)
X-Received: by 2002:a9d:7dca:: with SMTP id k10mr2313450otn.38.1572717824441;
        Sat, 02 Nov 2019 11:03:44 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id h4sm1847761oti.8.2019.11.02.11.03.43
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 02 Nov 2019 11:03:43 -0700 (PDT)
Date: Sat, 2 Nov 2019 11:03:42 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@lists.01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [RFC v2] mm: Proactive compaction
Message-ID: <20191102180342.GA48944@ubuntu-m2-xlarge-x86>
References: <201911021053.pHwI6Y2V%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201911021053.pHwI6Y2V%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ox96JQQs;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Sat, Nov 02, 2019 at 10:32:49AM +0800, kbuild test robot wrote:
> CC: kbuild-all@lists.01.org
> In-Reply-To: <20191031005127.8037-1-nigupta@nvidia.com>
> References: <20191031005127.8037-1-nigupta@nvidia.com>
> TO: Nitin Gupta <nigupta@nvidia.com>
> 
> Hi Nitin,
> 
> [FYI, it's a private test report for your RFC patch.]
> [auto build test ERROR on mmotm/master]
> 
> url:    https://github.com/0day-ci/linux/commits/Nitin-Gupta/mm-Proactive-compaction/20191102-074747
> base:   git://git.cmpxchg.org/linux-mmotm.git master
> config: x86_64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project cecc0d27ad58c0aed8ef9ed99bbf691e137a0f26)
> reproduce:
>         # save the attached .config to linux build tree
>         make ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>    ld: mm/compaction.o: in function `compact_finished':
> >> compaction.c:(.text+0x4670): undefined reference to `__compiletime_assert_1860'
>    ld: mm/compaction.o: in function `kcompactd_work_requested':
>    compaction.c:(.text+0x540d): undefined reference to `__compiletime_assert_1860'
> >> ld: compaction.c:(.text+0x5423): undefined reference to `__compiletime_assert_1869'
> 
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> 

This happens with GCC as well, nothing for us to worry about right now.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191102180342.GA48944%40ubuntu-m2-xlarge-x86.
