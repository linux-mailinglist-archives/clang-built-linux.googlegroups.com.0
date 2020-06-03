Return-Path: <clang-built-linux+bncBCA6RCEUQQFBBTFU333AKGQEIGN4R6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B98E1ECFF5
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Jun 2020 14:40:45 +0200 (CEST)
Received: by mail-wm1-x33e.google.com with SMTP id t145sf834579wmt.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Jun 2020 05:40:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591188044; cv=pass;
        d=google.com; s=arc-20160816;
        b=e7/YykHpQfcMmhcNrqJsCSKl4mJUBo6BsbujbmI3S8pws5vSsdSQI6Y6kpIDxova1H
         nxsh2UphHQBhKFVIjhdDlBpP6XU8+8d3Z5kMXb/48DbyaKXbB3sGzN+NwoXVd0Foi8Kk
         4J3x2jRj14mqCov5jmKoVDGQofZjxD25JDYOwR9Eq1Pra7gpU8atcRMB4kWhXSX/4LLs
         QweHSC/b1OEr+jOosh3+8Qa5Bu2+EkXTpyYYWkUpejfkk7pJcGTc0091g/Fe9dFIFvFi
         MwtF3W6qiFJ1aVswbNJGZw4ljG8bmV9cnDV52rq2Ho/FvFTyCYGAJVrp9L2LgbmjCPMs
         W50w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=UcBBYri50sjeKIy2T5U4cxQ2mVHF/Bfdp8333RLDidg=;
        b=kJtGy18LF+/9JLjuAlLKVQr97diRYBO6xC0UiS2jl5ZQH0RCDASxXpT9vmDre8ELUj
         ONA4zniFnNCeonbL0nsMKRYIMryg1umLLwUCno+7Xz9W7huqQ3Hm6sqWyswKrgEfsMLd
         Ag7AWtfDO9zf/cwnZ4Bg0e623rMbyxkE2m3NFBzndyO8xrs16Pj/bx1TZy5Omd+O2kTV
         GYydq6tqtcPUpipyN3gRpSMAf/AiABEz+0RWyAvilnZ9LoNxWbY3Y4wiBrX39B1H+UF9
         byMmtemQEhzTG1GJ2LfM2fqGsDoF8baARAjiFkL79Hgr/8D9BYGjHD+b+kKC4jWv/2I4
         BNcA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@cloud.ionos.com header.s=google header.b=gzRBwijp;
       spf=pass (google.com: domain of jinpu.wang@cloud.ionos.com designates 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=jinpu.wang@cloud.ionos.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UcBBYri50sjeKIy2T5U4cxQ2mVHF/Bfdp8333RLDidg=;
        b=HQi3YVYGoQV/GhBobpsPqhkofjRIkgANtKLEFosd1dBdhOaMSbyXAyTRxh4GDBxB2U
         uRRgzhuF9hqWWzbJcFf/vOK0fewp/Y6WVQZQZxWQUrL+73U6bkVgsityhr2ef8/5IQZy
         sN+e4v/5X2bBUVE8N81cIcjX4hv2/QeGd97CXM0AuE6lZfOPt5G78+skQ1A5ruWu5FCg
         brxRxuOQDE4d435hgwsUAq49HEW5sshLKQYtcLZ0dOnb65XsXoxXdYv50Wn/ENm5di/l
         JwDHwPQL0PPA4P89C7gGOnjYoLKYOHMbt+9XJOL66YOvTAQG4snhs4KtlCAY0F7BDpZN
         5+Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UcBBYri50sjeKIy2T5U4cxQ2mVHF/Bfdp8333RLDidg=;
        b=kSY5wjivlEjxPpu84LpUG/D8fUq7UmkITyeI82a4o+cuJH+ZT1/7VfsfEoDdruft4c
         fDc8u455dpb6qb4AYWoYE20kkmEkJUPwlQruuNqs1hlcxg+rMKaJRhyCvFLp6oGvtBnq
         kQg75BKsezGYhLtiS8MgSE9Z/NILhRyEY5xLIi+RcW/eUbuHGBgSZ5jiXJ0hlTM4qw99
         UmIYfuqvP9MccKsiODar13orExbY2xmoI+rypRojGkzhDEyDNVqqp86WrFiWd+GV49ug
         W2FUKwrfpubkAhM10dw2w09KUS5FyVwHk0U+6KSJwL+bCYHrR5yh+Lu6hqrkyq6Eds4d
         XLRw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530OqiEhXjSG8yx9+NHYhpW0JRC9VM4SatP4XJ4seNYXVz9caciy
	zKJkYbPX1qgorNZDNkGU+Zk=
X-Google-Smtp-Source: ABdhPJxdai4eC35C7xmrX1oPmog1RYEoIHBdMXk0BJtmQ1cf17IxVXlx4ootxZ1GtiVrVGQ9EkmMNg==
X-Received: by 2002:adf:a4dd:: with SMTP id h29mr32957257wrb.372.1591188044851;
        Wed, 03 Jun 2020 05:40:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:e510:: with SMTP id j16ls2715819wrm.2.gmail; Wed, 03 Jun
 2020 05:40:44 -0700 (PDT)
X-Received: by 2002:adf:f74e:: with SMTP id z14mr31916074wrp.338.1591188044314;
        Wed, 03 Jun 2020 05:40:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591188044; cv=none;
        d=google.com; s=arc-20160816;
        b=n09jT9a5/HAPPLwPbBHBO7oiaHhlHWytqtIRAmhMHZuZOuaVs0Jd3ZXkpyTBgM31Hk
         J9rvw/98PGlJa5hL2va8ew8jPyyiPOIXfFR+68GrHceGhr9y83gPJ6SybAtmCgaLPV5w
         j3rhGVVo2OeRspyiWS9xSr+yScfktnhka/G3Fd7JGjw9A5AVuEVEEqWLoZGRMvQ1XiZa
         m935p3rVuuIEkEzTHm1Xhe+HC4yidw1US5r4DvKrpA81yWtrdANfdAplrodXkkJGXJpc
         pud5uXXZ3Hj1vGk4/A6gn83h9bYAv0sb0EO9GHrS8IPNrYO3aK1t7CbhilWhWvwGwXus
         U92w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0ES2VzOBxtQvaqMJLVGuxCClw93Dx0k7J+GfTF1OuTo=;
        b=fKfamb0BMsmKYDz+yl/hxZ5u0ToCbb7ffCx1nqwsi62PV0+Jyyg0nFGZpjat9WPLiK
         mre9oI9L2u3U+ctM9POqd9F44bhM3dNAYSUGFiFdwhtw1T8/HKcePrk3mBtc24UhqnRm
         doXPwzFdmZcVVWhEhSJYJTji+KPqHvhWDq2zpyLKSH3VWHv/I/mzkcYrywRs05497tj6
         QL6ZOGtll9x2iFXVQa5Qd6zJ+T/EYhndaG8ee5Pwxtt1N/xhYIk2IdRW9smt+SoYzLr+
         vAYRf+JCjoM1GuyPfoqqUnT+C3kI6CCOFXqL1fgsBmOEP2TuGtZx+VF5NxOQ4kgx7jWR
         KMVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@cloud.ionos.com header.s=google header.b=gzRBwijp;
       spf=pass (google.com: domain of jinpu.wang@cloud.ionos.com designates 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=jinpu.wang@cloud.ionos.com
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com. [2a00:1450:4864:20::543])
        by gmr-mx.google.com with ESMTPS id r204si164069wma.1.2020.06.03.05.40.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jun 2020 05:40:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of jinpu.wang@cloud.ionos.com designates 2a00:1450:4864:20::543 as permitted sender) client-ip=2a00:1450:4864:20::543;
Received: by mail-ed1-x543.google.com with SMTP id g9so1595557edw.10
        for <clang-built-linux@googlegroups.com>; Wed, 03 Jun 2020 05:40:44 -0700 (PDT)
X-Received: by 2002:a50:f28e:: with SMTP id f14mr10951518edm.100.1591188044028;
 Wed, 03 Jun 2020 05:40:44 -0700 (PDT)
MIME-Version: 1.0
References: <202006032000.GlvcJ2ct%lkp@intel.com>
In-Reply-To: <202006032000.GlvcJ2ct%lkp@intel.com>
From: Jinpu Wang <jinpu.wang@cloud.ionos.com>
Date: Wed, 3 Jun 2020 14:40:33 +0200
Message-ID: <CAMGffEnn+UqFmTXMboA=Uvz=ycMxkmggrdGbB8Cc8xrobcLQnQ@mail.gmail.com>
Subject: Re: [rdma-rdma:wip/jgg-for-next 106/230] drivers/infiniband/ulp/rtrs/rtrs-clt.c:1447:42:
 error: use of undeclared identifier 'BLK_MAX_SEGMENT_SIZE'
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, 
	Jason Gunthorpe <jgg@mellanox.com>, Danil Kipnis <danil.kipnis@cloud.ionos.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jinpu.wang@cloud.ionos.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@cloud.ionos.com header.s=google header.b=gzRBwijp;       spf=pass
 (google.com: domain of jinpu.wang@cloud.ionos.com designates
 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=jinpu.wang@cloud.ionos.com
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

Hi,

On Wed, Jun 3, 2020 at 2:15 PM kernel test robot <lkp@intel.com> wrote:
>
> Hi Jack,
>
> First bad commit (maybe != root cause):
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/rdma/rdma.git wip/jgg-for-next
> head:   193ba03141bb987c3af985f6479840030fec0534
> commit: c013fbc1fd341d28269cf0a6b465925186b9a1e1 [106/230] RDMA/rtrs: include client and server modules into kernel compilation
> config: arm64-randconfig-r011-20200603 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 16437992cac249f6fe1efd392d20e3469b47e39e)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         git checkout c013fbc1fd341d28269cf0a6b465925186b9a1e1
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> Note: the rdma-rdma/wip/jgg-for-next HEAD 193ba03141bb987c3af985f6479840030fec0534 builds fine.
>       It only hurts bisectibility.
>
> All errors (new ones prefixed by >>, old ones prefixed by <<):
>
> >> drivers/infiniband/ulp/rtrs/rtrs-clt.c:1447:42: error: use of undeclared identifier 'BLK_MAX_SEGMENT_SIZE'
> sess->max_pages_per_mr = max_segments * BLK_MAX_SEGMENT_SIZE >> 12;
> ^
> 1 error generated.

This should be fix already
by:https://git.kernel.org/pub/scm/linux/kernel/git/rdma/rdma.git/commit/?h=for-next&id=d6ea395072457153f2120e2361657e00f3c0958d

Regards,

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMGffEnn%2BUqFmTXMboA%3DUvz%3DycMxkmggrdGbB8Cc8xrobcLQnQ%40mail.gmail.com.
