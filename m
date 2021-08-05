Return-Path: <clang-built-linux+bncBDYJPJO25UGBBCHGWGEAMGQE3SNMK5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id F3DB23E1F4F
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Aug 2021 01:23:52 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id h6-20020a05651c1146b029019d82baae44sf1456452ljo.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Aug 2021 16:23:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628205832; cv=pass;
        d=google.com; s=arc-20160816;
        b=BqB32ah7T5+pyoNF5g/g2nZzcBiNrppsu1X4PkoXcobVHpRkMhTZS05QB4mK7Du5Az
         bFy8JYS0nBjIPMDYNOXEHc2hhndXaamZvOLdCIKfmdN2ZCpYQe8Gpn4N8mygl3PMO82N
         Q18s/uIm7CIlKgPeZzEiaizGSFuyipJlyCyG5a+cfDHiYGdV/y0gOLYTH+qSBzpw2eju
         YITpxcMnnlrluF+UZFfDmhI0GRI1RRze+dIdgxijtvWr2DvkZXy0ZPZxLpbTQLcJWNRo
         J3CXq5JOW1v4YeJm86O9n5h2F5WNs87eBm4RxNPAV3wXeLjKQSf7zwOJ15O8sfeIifWA
         EeDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=YbVkDUaLp7pWXzGniTFRV6Iy/MnUf5B2U+UDMrAkZCQ=;
        b=EklckRqr1IzvxUpU4aFV6dEu8FMdrzjlwDGWN39Xa9HWFt/xDxVb2c1s1G7RWtEpaP
         gNT8VGBX4aymqIxe585g0/io+d3lw+tyERa25ZI6+4OY4GjeTs2xMZyU0sOhZNbl4YoB
         /9kpdbT2yrLerPFTXWXZRUp3gnidisObWlMlts6/mQrcDwRvMcluPKscJptnlLdh7S6S
         0pOnOu33LX8yeCb2BwqW3i8ycAGVIvaHJooZNp+4IEyir2z7BaqKu7vGHNA/yS5yq6BE
         l6F5EKODiNFcX9b4O2Iiqi4ARd6fX2LwI0hT71Q7XHHdJGEMg3AgHPcknOkEKq2qT3My
         LA3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rHqn6IRz;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::232 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YbVkDUaLp7pWXzGniTFRV6Iy/MnUf5B2U+UDMrAkZCQ=;
        b=tCcUsz38Zq6wo/qhhx18sv3gtHzrWTaR6tl1SDAg9WwA24CViNI+GazHRxMTg6fLJO
         Jg95oHadjkfEBEYidcz6P7q3UlMhG2eFQEUhXnL+LkC3vZ5CQlZ3qFAOrhoUkaEovk4g
         uPJ1X+idYandk+Av+8KNSylh+5MtXpzTfI2fhhWJSRxih07uiDMQd11A1/QaBY8JHNNt
         MApqdwAbiKdmoLMqy0y8riwRugUfVw9kahDMsLvBFuNxDpsbTdlDMF3fsdVaTaHddulQ
         4Nacrmg5dKffkNjNnuKvzSDS9bMQgEJE0HfkfSiVdHeLGNciebT/ze64+ItEu1UhGMCR
         XyEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YbVkDUaLp7pWXzGniTFRV6Iy/MnUf5B2U+UDMrAkZCQ=;
        b=kIhyku3WBp1r0MhbyG3ymkjpub1BsoNTltvrJorCvjP1LUTnBuHVq21bM8LbtF6U+n
         x59zm35ekXvUxqMfCsbxElFtflmzQjLPpGx1Q2zfGXgj/rvt7riPw6u5q5ircc6tuQZi
         07RqngZmydlwswzIAA3IbiYVVS7+PC5mdq+SQ9MmCpNFidFNT+UCbWhNFxXCiLzxPspM
         2sop8gVLPTkSUCbn9G2F52n/8AMGU5qXz++qew4nXrTnfiRf13rm38bQEUCBnenae/o9
         OIQvDYgpoIN4YL8JwiEW7bLmran12jrGlW+eTWR9Eyrhky0W6F+1hhrQTkANuGCg3NVH
         aanw==
X-Gm-Message-State: AOAM530a34zl4E+E8boS2Co49ngzRk5KD5CbNTGyWODkY9sm9QggxfzN
	me/XBV9t+RA6ei5cTn8z/i4=
X-Google-Smtp-Source: ABdhPJwSN0BBiLVg1gpEv833vWe4FuDBYC34IRvCJH0GtMWBKgnNwHhMUaIOMC2B62jIQFZWSeLGnA==
X-Received: by 2002:a05:651c:909:: with SMTP id e9mr4838530ljq.114.1628205832548;
        Thu, 05 Aug 2021 16:23:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8790:: with SMTP id n16ls971820lji.7.gmail; Thu, 05 Aug
 2021 16:23:51 -0700 (PDT)
X-Received: by 2002:a2e:a543:: with SMTP id e3mr1780320ljn.454.1628205831550;
        Thu, 05 Aug 2021 16:23:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628205831; cv=none;
        d=google.com; s=arc-20160816;
        b=fCOOFqyzEeoOd/KOW8AeqUqHmNf8bPRRfj+rdOzZIXz8IL7f+sguSh4frxR9tSaKRY
         ubMxr5jCkkyRxmHg43ekEwrN1RkCkxRd+DKCWO1Vet/aAGekGL/d/Zy5F0EJjxWbd2F6
         7bFPpwbsMbfY03rL3l142Yu6bKX97xaHiiPzlFwrSwR1hL4mir6tvHSXMLMa0mEOGM0t
         F8jqOqQ+sizV2RfVAQsnEOP9xCGhMKh7RpMdm2fmDB8U0NmcKkKZQ1eTSQqicicgC523
         4m4EUB+d64pRTDT4I94zhPcpE67dMPevLNYC1VMe+Nnwe11EDNnGaFFAJj9MMAIWbFEt
         JjGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=47DQLvtp4ztjhlhi+MnYXklbjCJaPGn/G49mrBRqTus=;
        b=F6NaUygaLX6cgpOzH8TykbbBOFFpIE5KqvBr09LYkkHme6MKx1S7Bc2rUG7hD9Pv2Y
         52h1DkrZU10TUo4PQIC0zKdcx9eWdeDISikf9xsf1VdtAvaWkebfTX7+JZQ7UTgF2pMN
         YsohLijePVHnjsg97XBYgPfSgX5RMZLUZgJ4deJ/hB7rfRs/TX5tG75g5xPd2dt4n08j
         eJrEe/AQFfehKRSUioBkVmR1LXVD8DsiMYAuLlJ0SwnI125HIaGTTXEMuxz6ik/O65cT
         R0reZAlVm4vzvLhui/R61w/MsCp06vIi0FJ5GiL1JLoVwPP7iUjRZtujcteSLmVVh0F5
         OQTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rHqn6IRz;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::232 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com. [2a00:1450:4864:20::232])
        by gmr-mx.google.com with ESMTPS id j7si373385ljc.1.2021.08.05.16.23.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Aug 2021 16:23:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::232 as permitted sender) client-ip=2a00:1450:4864:20::232;
Received: by mail-lj1-x232.google.com with SMTP id e5so9303596ljp.6
        for <clang-built-linux@googlegroups.com>; Thu, 05 Aug 2021 16:23:51 -0700 (PDT)
X-Received: by 2002:a05:651c:38f:: with SMTP id e15mr4651454ljp.233.1628205831069;
 Thu, 05 Aug 2021 16:23:51 -0700 (PDT)
MIME-Version: 1.0
References: <202108060412.oMqAe0rc-lkp@intel.com>
In-Reply-To: <202108060412.oMqAe0rc-lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 5 Aug 2021 16:23:40 -0700
Message-ID: <CAKwvOdk6PNK1unJ2Yym4WHV=AXjdYwEyfWf_fPxO013ZtJa6Yw@mail.gmail.com>
Subject: Re: [linux-stable-rc:linux-4.19.y 1181/1498] ERROR:
 "__compiletime_assert_491" [drivers/gpu/drm/i915/i915.ko] undefined!
To: kernel test robot <lkp@intel.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org, 
	linux-kernel@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Andrew Morton <akpm@linux-foundation.org>, 
	Linux Memory Management List <linux-mm@kvack.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rHqn6IRz;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::232
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

On Thu, Aug 5, 2021 at 1:24 PM kernel test robot <lkp@intel.com> wrote:
>
> Hi Nick,
>
> First bad commit (maybe != root cause):
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-4.19.y
> head:   7457eed4b647560ae1b1800c295efc5f1db22e4b
> commit: 7c29fd831799d09474dfdae556207b7102647a45 [1181/1498] lib/string.c: implement stpcpy
> config: x86_64-randconfig-r024-20210805 (attached as .config)
> compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 31a71a393f65d9e07b5b0756fef9dd16690950ee)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git/commit/?id=7c29fd831799d09474dfdae556207b7102647a45
>         git remote add linux-stable-rc https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git
>         git fetch --no-tags linux-stable-rc linux-4.19.y
>         git checkout 7c29fd831799d09474dfdae556207b7102647a45
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
> >> ERROR: "__compiletime_assert_491" [drivers/gpu/drm/i915/i915.ko] undefined!

^ I'm actively trying to improve these diagnostics in LLVM at the
moment. Hopefully that will make this report clearer!
https://reviews.llvm.org/D106030

>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk6PNK1unJ2Yym4WHV%3DAXjdYwEyfWf_fPxO013ZtJa6Yw%40mail.gmail.com.
