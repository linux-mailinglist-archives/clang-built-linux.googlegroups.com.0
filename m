Return-Path: <clang-built-linux+bncBCA6RCEUQQFBBONN2OCQMGQELPNLBUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id EBA9A395A86
	for <lists+clang-built-linux@lfdr.de>; Mon, 31 May 2021 14:29:45 +0200 (CEST)
Received: by mail-wm1-x337.google.com with SMTP id p19-20020a1c54530000b029019d313d614dsf316119wmi.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 May 2021 05:29:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622464185; cv=pass;
        d=google.com; s=arc-20160816;
        b=c9FRPQS3yRvbNmjEx9IQmzdBOdyh7bhtHiZIWHhmH3y+YR17Qqt8H4f+4sqUJpeGG0
         r7Fbb44fCAHQrQihpSfJeqp3qvXvXF6XJGNk2oASzF4HEwWn+geVKgq7eqEa4gj3RoMs
         gbXUnFpILjX2UuKlXGR1CQwwKDm53sVhBq3h9MFzOBPoiu5vLP6OJfj0GHKQWiWlgxN4
         5CD+nSrKAfXN4oNgmeL5EjxhUgttZD+1c7s8hLvW7YODDP2PKWualYfPP483mhXdMBe/
         713gOROAzdleSQg2ITPDBuZmK9q3/BTWaKhos2iGtYo2xCFChvwUkqYK7Cb7T4auHZgK
         I8Tg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=pGDf7ajkgfYrVGbk7vG+ZsOLRvAxEKA/+tO830jAagw=;
        b=K9PtlTrbiHhJ2+vmJR4Mv++TIqicEL08MsmXopSdGdE4qjjTzNTYgz6Y1dPtXyhpop
         vwwC2i6GPmLF7EiUJWBof7fcNMgKzF1GQ2dYR+Y4x5Lbv/PWDSyXbTjV5I51HFSIRyUN
         K8TLzDAE+qVooXFfgcvdKD4sYTBY68XyzmAGftzp8HPRQtz1nMuCanLLpdgxUbd+xPt9
         qvp/mdX1FVhDL4+z0jz+lwG7UenFkOWHQwsmHpD2XHwlTB2WSTz5ycBL6R+3hYC893HJ
         /7sgHU3lmVAyf1hqPt4ljYsLKO0/6hyIL6ymHaamOGbw3i08GDml+BOTgf2FbBvoo/y5
         j52Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ionos.com header.s=google header.b=JF8+d6QK;
       spf=pass (google.com: domain of jinpu.wang@ionos.com designates 2a00:1450:4864:20::636 as permitted sender) smtp.mailfrom=jinpu.wang@ionos.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ionos.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pGDf7ajkgfYrVGbk7vG+ZsOLRvAxEKA/+tO830jAagw=;
        b=SMrDJ5g1680KCjB30UV8/i1XCNJC/5wJ9sgCopPvGkrzsZCilqStTDfkgdT7ENnGpf
         ooa+k2fp4TKyjU7sx/XoFxQ19mMt6mtwUA5+TVYbeO0Cdcb3yzgYkyde5/+KePqzSRAR
         nSMd5uhVw44R863JlGS55/LEMqG+AN2I7G4svZcjm91FcgLdw0ZpjjUaJFUQaH9F/OGF
         m4vLzadmRIQrSKQrvOEtgB6tnHy3YvVfex9j7IsShFU9nUJ20BFjY2MSOiDZrVbi8clK
         F9PhAdk/lcM3u1zVynV4u5kO4UgwQ9nmCjgO2SPcso3L8Q3/HxXCtD9+BEoLU0tIJ7gb
         57Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pGDf7ajkgfYrVGbk7vG+ZsOLRvAxEKA/+tO830jAagw=;
        b=uOAWesXWMu/C847AP5XwaHF7HZs65VjB4b29beUfmwkfI6ib3O4bPE8OgNQmmpqXOV
         f8roL+/LPWEAeJ9hjNWAl94Di5tAKx9a/kYm/v1qjpFhCKAPWGuKegf77I9ubcVNl1UZ
         lFQX/LCsKlOITTeCRCyOQJLO2vNoYN15Ipn/XwDUAa52WhKDxM7CYieH/uBmI75pXAKm
         gSvVM86rXUiLTIMK3wSSc/+APepfRzhBKv5/FBlkrrgat6qKG0R7biRRZyRvR3ipKggL
         reu4cmrHZJxi5Q1YuwylwmAlgT/zyxlW3VdcT0sK6j9lXeeOHbMCbXXe8DCZ56tNWfIT
         4ayg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530AF2lVrGI2DkH4gF4G79ePaIF05Gv1jAr2PuMYSbVztULFIpoB
	c0/pKNDLSsqYBkMVss4gifQ=
X-Google-Smtp-Source: ABdhPJxOzCfZWW4XLay7yxUDto5gE0T5Svv+e2uMqIHGRmClitnMYil6R86AqxTIjrzSVzS4cUcshw==
X-Received: by 2002:a7b:c052:: with SMTP id u18mr26324532wmc.105.1622464185746;
        Mon, 31 May 2021 05:29:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:d7:: with SMTP id u23ls5575773wmm.3.gmail; Mon, 31
 May 2021 05:29:44 -0700 (PDT)
X-Received: by 2002:a1c:b306:: with SMTP id c6mr26079421wmf.37.1622464184886;
        Mon, 31 May 2021 05:29:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622464184; cv=none;
        d=google.com; s=arc-20160816;
        b=tH1xOd3tgiZ5NWJnqZlFASN17nYSe4WUlCiEoRyRIaqYs5qWhZfIRFq1llbFbz9qzS
         NWyG25e8A7uqZyMyOMK2pRnZNeld/J2IxcYRQgUfDYlEJW5pTxsylhTVmrpsPy45KJe/
         lweRF0WHkbbVQ/dzRR2i1DWg1VyxN+cmmT19KN/yEv9ms/n1c1K2Bp3t/+pEJScfEn5F
         IU8tW8jobAxE7JV+sfvHcTmRrcXhf+XU3UrD4wXRWN3OPQ8THtaKKtCAREx6EGdcKA2g
         nK0mdo4VDB4DJ+aw8MGjMGpBHnbzXppEHouuiVjboizeBguzq+R8AtR1fXQ/5cqwyVGT
         1AhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Jb4Z+AjvdPnfhjdG6ljrgOIwgIPkJCbpwwj29e2IazI=;
        b=KnymSfGQ3d4gCLUVtoz88vcqXDF/QDYDSH+JLLhs0krb31rR7QZu1Y3FPTo5jPiHPh
         qTxIxIhKIm+KMTeq0mjAGzHlddd4mS8T0VSiAvbL+D91Ku+OzweH7z3NURVNuxseWfdZ
         ahiVEW+lAp1LdH7/V+URvH+Zl+hXxyAP0+Njmffr/mKx2Fmp1aG2IK+oOetrbz2u7TKB
         wpKt0tmQ0OBCAc0NNbR/Hs7yEwVLMae9N7FqG2l8/WZWpnykCGFmbHG+2a5fjgFQ3wYN
         ts8kjXHc7R3n9Fl7bdMJBNUFgF7vZmy9yTPsBJd03N42r1Sgw+zuCgKPgFbqLgvPq6DD
         rRVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ionos.com header.s=google header.b=JF8+d6QK;
       spf=pass (google.com: domain of jinpu.wang@ionos.com designates 2a00:1450:4864:20::636 as permitted sender) smtp.mailfrom=jinpu.wang@ionos.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ionos.com
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com. [2a00:1450:4864:20::636])
        by gmr-mx.google.com with ESMTPS id r26si545744wra.1.2021.05.31.05.29.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 May 2021 05:29:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of jinpu.wang@ionos.com designates 2a00:1450:4864:20::636 as permitted sender) client-ip=2a00:1450:4864:20::636;
Received: by mail-ej1-x636.google.com with SMTP id g20so976008ejt.0
        for <clang-built-linux@googlegroups.com>; Mon, 31 May 2021 05:29:44 -0700 (PDT)
X-Received: by 2002:a17:906:b794:: with SMTP id dt20mr22434508ejb.521.1622464184476;
 Mon, 31 May 2021 05:29:44 -0700 (PDT)
MIME-Version: 1.0
References: <20210528113018.52290-6-jinpu.wang@ionos.com> <202105290002.LSBHvezM-lkp@intel.com>
 <CAMGffEnoYGoNwXe75KcP8WCTXAYBKkhJ=cx3aC=4mm77stWzUA@mail.gmail.com> <20210531121725.GK1096940@ziepe.ca>
In-Reply-To: <20210531121725.GK1096940@ziepe.ca>
From: Jinpu Wang <jinpu.wang@ionos.com>
Date: Mon, 31 May 2021 14:29:33 +0200
Message-ID: <CAMGffE=qe8Ki1e0QjhEpiT7UGB4s+2W3Ov9VpA++wH4uTpGE7g@mail.gmail.com>
Subject: Re: [PATCHv3 for-next 05/20] RDMA/rtrs: Change MAX_SESS_QUEUE_DEPTH
To: Jason Gunthorpe <jgg@ziepe.ca>
Cc: kernel test robot <lkp@intel.com>, Leon Romanovsky <leon@kernel.org>, 
	RDMA mailing list <linux-rdma@vger.kernel.org>, kbuild-all@lists.01.org, 
	clang-built-linux@googlegroups.com, Bart Van Assche <bvanassche@acm.org>, 
	Doug Ledford <dledford@redhat.com>, Haris Iqbal <haris.iqbal@ionos.com>, 
	Gioh Kim <gi-oh.kim@cloud.ionos.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jinpu.wang@ionos.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ionos.com header.s=google header.b=JF8+d6QK;       spf=pass
 (google.com: domain of jinpu.wang@ionos.com designates 2a00:1450:4864:20::636
 as permitted sender) smtp.mailfrom=jinpu.wang@ionos.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=ionos.com
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

On Mon, May 31, 2021 at 2:17 PM Jason Gunthorpe <jgg@ziepe.ca> wrote:
>
> On Mon, May 31, 2021 at 01:44:22PM +0200, Jinpu Wang wrote:
> > On Fri, May 28, 2021 at 6:20 PM kernel test robot <lkp@intel.com> wrote:
> > >
> > > Hi Jack,
> > >
> > > Thank you for the patch! Perhaps something to improve:
> > >
> > > [auto build test WARNING on rdma/for-next]
> > > [also build test WARNING on v5.13-rc3 next-20210528]
> > > [If your patch is applied to the wrong git tree, kindly drop us a note.
> > > And when submitting patch, we suggest to use '--base' as documented in
> > > https://git-scm.com/docs/git-format-patch]
> > >
> > > url:    https://github.com/0day-ci/linux/commits/Jack-Wang/RTRS-update-for-5-14/20210528-193313
> > > base:   https://git.kernel.org/pub/scm/linux/kernel/git/rdma/rdma.git for-next
> > > config: x86_64-randconfig-a012-20210526 (attached as .config)
> > > compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 6505c630407c5feec818f0bb1c284f9eeebf2071)
> > > reproduce (this is a W=1 build):
> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         # install x86_64 cross compiling tool for clang build
> > >         # apt-get install binutils-x86-64-linux-gnu
> > >         # https://github.com/0day-ci/linux/commit/66f95f659060028d1f0f91473ad1c16a6595fcac
> > >         git remote add linux-review https://github.com/0day-ci/linux
> > >         git fetch --no-tags linux-review Jack-Wang/RTRS-update-for-5-14/20210528-193313
> > >         git checkout 66f95f659060028d1f0f91473ad1c16a6595fcac
> > >         # save the attached .config to linux build tree
> > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
> > >
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kernel test robot <lkp@intel.com>
> > >
> > > All warnings (new ones prefixed by >>):
> > >
> > > >> drivers/infiniband/ulp/rtrs/rtrs-clt.c:1786:19: warning: result of comparison of constant 'MAX_SESS_QUEUE_DEPTH' (65536) with expression of type 'u16' (aka 'unsigned short') is always false [-Wtautological-constant-out-of-range-compare]
> > >                    if (queue_depth > MAX_SESS_QUEUE_DEPTH) {
> > >                        ~~~~~~~~~~~ ^ ~~~~~~~~~~~~~~~~~~~~
> >  Thanks for the reporting.
> >
> > As the check is checking against u16 max,I think we should reduce
> > MAX_SESS_QUEUE_DEPTH to 65535, and drop the check in line rtrs-clt:
> > 1786
> >
> > Jason, you mentioned v3 is applied in for-next, I guess I'll wait when
> > you push it out, and send the patch to fix this. is it ok?
>
> Send me a fix right away and I'll fix the original patch
ok, it's here:
https://lore.kernel.org/linux-rdma/20210531122835.58329-1-jinpu.wang@ionos.com/T/#u
>
> Jason
Thanks!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMGffE%3Dqe8Ki1e0QjhEpiT7UGB4s%2B2W3Ov9VpA%2B%2BwH4uTpGE7g%40mail.gmail.com.
