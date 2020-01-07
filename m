Return-Path: <clang-built-linux+bncBC4Y5GGK74JBBPEJ2DYAKGQEUQ3QH3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id CE020131E41
	for <lists+clang-built-linux@lfdr.de>; Tue,  7 Jan 2020 05:10:37 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id y15sf35402839pgk.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Jan 2020 20:10:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578370236; cv=pass;
        d=google.com; s=arc-20160816;
        b=jl+a4ytKi50yn3NRiTkirUUJfO+wIQa0wVXYX3Kq65SdpK8qqMsfWFuyf23pDsSPVf
         eJ2SBy0Fu6krC9atodMQhz2OTpduOvvSR3vJJwT9rPbfZqqn4GJikGzSE2EaQyY27l9+
         Crt7foIi0Bj27rJ+6it2eJMoKwZY1feYU7uQG726JKO7VC3pedB26Gl4g/IhwznyTZBJ
         SJfYxhO8i3YpJknzQ+Fm6rt6BVrwGE0+sARrXLlKJTeaSih2XlUJVIdpuDVT9romD281
         4UapcER0Dh5qcbjsTvoRVtTAPNtt6gkfUJwp8uXm0E+Nk3bWJ4GCqneqhd37lyaRugIu
         p0Kw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=nKJEfOR17xOHR2Z2fUyE31ViRfucKaqHVryPDX4M6gk=;
        b=bNQ0BiPUrstRurEIbgkbK3oXcXvuzhTfjOIZpY73hUxRPcsgjNs177lQGf4dEUPPE5
         H2LwKNp2CqIJc1Ua6atuNjrTYbm6Gc1nrs2/qH+E9RUljzuZ6TtgLj0Ev6EnF/84bOBS
         lFCGMhkcvV91tqy3rAeiKouMs49giTjUKR3612f94QR89YQIUzi8wjK7K1lAsCmkBJC8
         GPAQy6PcCsCPV/452AdQmf5Og0TQfrqmjAzvfSLrYfuLdmOEu9UxqzlD1oTmpG9wAcuo
         0sPbpWCaO4M/+qvy8Lv6Il6TL2MNy1LguEay7BEp/TDvtsqUVhn6ely6Bze7UMTfwIz5
         lfEw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="I/Ldayhp";
       spf=pass (google.com: domain of yury.norov@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=yury.norov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nKJEfOR17xOHR2Z2fUyE31ViRfucKaqHVryPDX4M6gk=;
        b=qQl7+ycYstmMnuOqAcam11nwXIwJ4wa08suK9vMt/zY1VOGm+2IREN25DJWwNDH3r5
         JauN+zsCQ5k8ZZONNA50gGkj7Kz7u+GKfwVuIPPQFi1sLWa/VajIzP6M86Od7iWvxZv/
         DYE8B3dFODlJRIcpoYm/qQ0h+rqUQ6O7G+qrs9B5IF/inhxZFuEDBtGphCHW4J2vrbr8
         T9RLEmowsjOUZoQSqqpgI/hrw6eE+1HElL6i1Z9PsM85hXKp/XYHvM3h8o3BtlhML9HM
         /gzr6j4MF3dYeTzUHZtFbeWS2NBhvnTpeemIEMmZnH2D3QbiCkRisI/tGH4qoxFJsfHk
         IIRA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nKJEfOR17xOHR2Z2fUyE31ViRfucKaqHVryPDX4M6gk=;
        b=RoeSb6+RoqQkhjjCOtLKOkwBs+ajj+cEm1nW+hhX46paq8kEU1W3VKlEufD+PHAppz
         YsgZzBgyzlzTEnGbiJdzzx/HI/y01YAiQJGTxY12tTwrjlU2KbE8cEPpyNfpv047046b
         /1Sj6z/4jWJznjE8kSOOXbPFmVt9/43aHfdO+IZAYtRrjAoyyJrjdTRmO1jguhXaKdic
         h6xgSWnACRvGCBExhxBys+G0g6mkhj79/oQ4Fq+5JD8sdtnaA1jVvE048BDwmFcf5jjL
         OyYnQGOY5KdP96q3RvXargcv8rZmitImIrtpnu4xeTuubCmwN9q6ono58ulmMq1l3ehK
         ogRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nKJEfOR17xOHR2Z2fUyE31ViRfucKaqHVryPDX4M6gk=;
        b=qxSD7pmIeZzSbUpOKQ68WqNMVEbFtNLYqDYMJ52Pj/Ux+zef7/BFueU+TRMYJWx4di
         Gu0wjvr4sfTQkaBsfJ83rb6m6NqkxfUdzio0I/HpyShDTVP+L0zxEmdhr/dEXJGTVfzX
         bNLR5+l6Z9y0U6A43prvDYbwNaMyM45z+NYPV8Au/I1ObZxX1Xo6+LgIHNvBKGA7AKhF
         DdwJsskr3cHrTwVaYXzpbx9jLOmzuhsB0VVqQdO+Ivu1LTYd6qli/ViJ/zXvNLksfs60
         0UKnDvHZi2RLwGz1wZVZZM7eB/vOPWmYDBMAHGJpXLVV6Au8XaONX8DUb+1iJtYqtzF7
         LHQw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXiGEtPhXufITUlJ+ruW8OSSYOgnjS9J7BbYrF3Gywr9NNi1h23
	7v1nBar22qI6/DM3gWj13jM=
X-Google-Smtp-Source: APXvYqwjQFdjbivCVsXtrcVuUOPyjX93kv3YS6VapdO+FKH1bAOQiySn+rF6V2q4g40GYItAbyOPRw==
X-Received: by 2002:a63:4a1c:: with SMTP id x28mr109894192pga.7.1578370236217;
        Mon, 06 Jan 2020 20:10:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:6483:: with SMTP id y125ls13050619pfb.9.gmail; Mon, 06
 Jan 2020 20:10:35 -0800 (PST)
X-Received: by 2002:a62:a515:: with SMTP id v21mr113543649pfm.128.1578370235819;
        Mon, 06 Jan 2020 20:10:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578370235; cv=none;
        d=google.com; s=arc-20160816;
        b=wyBF6+VfpGsK3HOJv7GZZnCdsBT2N0lQU8L8/DmHhHvbuwAS0SpgepKV95GsqpwUif
         YsQBsWTYT9KMH8TbiJqeMR2qzSZCDOQloV2xQVgbgrVQDKnl74jr7dGybbc44sjp5z5S
         gBEbVfXxxW0SDrODMgmJtUN8KcmwVZboiEu1+Kg3R8v5z0BoK3x5dBy7/ovWiq6961Zd
         B1328/aax4NVvqYJ6pTgJPpZu15kTQ1aa0OJcZbHOAqU27Di8r3CkQDIvRn8qDiz5s+D
         AhQ/cPc3WwmEINbJa6ntPU3xmrN8vu5RVEPwGJ+aFfo/gPgy5WueEhKAW0Uwlzc26sm9
         Kkww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=f8dixElIN+TPoOzKkT8MQ35VKXmfEX1OqlDEH0umuu4=;
        b=yk/y5gw93aNRlUeEDaJWKRI7MHTYVD9Soz3o3jxH7PxjS5bfpUB/6v+mv22T/X/78Q
         Vx3wALSRSRgWzUXALUc91FizAN8eonu08idmbyV04UIEr+W0xvZs8dxUiB8XkZfyu1lP
         WSlap/abh31TAEihSy3Jbfb8E3i2a4evSCCWfBSINi0gmgsxUHzfznIU47oaLAYx/tXG
         g9TSVJ/S/IPJgnz/DANPWeNrekpbd9Pm2XskSNUiqiVBpaE9JFiKFhZWc7LT7EAOUcrU
         NA5P5r7U5JgOsLBtJgl19pkE2w1P50ODEAKVs4bYqUD244YncURwSUhbO3jHtRVsd8li
         OTFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="I/Ldayhp";
       spf=pass (google.com: domain of yury.norov@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=yury.norov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qv1-xf42.google.com (mail-qv1-xf42.google.com. [2607:f8b0:4864:20::f42])
        by gmr-mx.google.com with ESMTPS id m11si601760pjb.0.2020.01.06.20.10.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jan 2020 20:10:35 -0800 (PST)
Received-SPF: pass (google.com: domain of yury.norov@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) client-ip=2607:f8b0:4864:20::f42;
Received: by mail-qv1-xf42.google.com with SMTP id x1so19994336qvr.8
        for <clang-built-linux@googlegroups.com>; Mon, 06 Jan 2020 20:10:35 -0800 (PST)
X-Received: by 2002:a0c:fc12:: with SMTP id z18mr82928554qvo.17.1578370235081;
        Mon, 06 Jan 2020 20:10:35 -0800 (PST)
Received: from localhost ([2604:2000:4185:2300:b196:4884:e960:2cb8])
        by smtp.gmail.com with ESMTPSA id 200sm21850945qkn.79.2020.01.06.20.10.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2020 20:10:34 -0800 (PST)
Date: Mon, 6 Jan 2020 20:10:33 -0800
From: Yury Norov <yury.norov@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kbuild@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	kbuild test robot <lkp@intel.com>, kbuild-all@lists.01.org
Subject: Re: [PATCH 2/7] bitops: more BITS_TO_* macros
Message-ID: <20200107041033.GA2754@yury-thinkpad>
References: <202001041127.OfJhgtyl%lkp@intel.com>
 <CAKwvOdmnMHwOy3sUmtiKpTTwX6nLRMxPmpqkDAu=L0Azi9_k0A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmnMHwOy3sUmtiKpTTwX6nLRMxPmpqkDAu=L0Azi9_k0A@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: yury.norov@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="I/Ldayhp";       spf=pass
 (google.com: domain of yury.norov@gmail.com designates 2607:f8b0:4864:20::f42
 as permitted sender) smtp.mailfrom=yury.norov@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Jan 06, 2020 at 02:28:24PM -0800, Nick Desaulniers wrote:
> Yury,
> Apologies if it was already reported (working backwards through emails
> missed during the holidays), but this warning looks legit. Can you
> please take a look?
> 

Hi Nick,

Andrew Morton has already fixed it. Now it's in next-20200106
4804ed1be212ea33d92ea3456ce3b4466f01fb21
Together with this one:
68370850225a8c6cad0494ad6909e64ec1b4fb54

Yury

> On Fri, Jan 3, 2020 at 8:20 PM kbuild test robot <lkp@intel.com> wrote:
> >
> > CC: kbuild-all@lists.01.org
> > In-Reply-To: <20200102043031.30357-3-yury.norov@gmail.com>
> > References: <20200102043031.30357-3-yury.norov@gmail.com>
> > TO: Yury Norov <yury.norov@gmail.com>
> >
> > Hi Yury,
> >
> > Thank you for the patch! Perhaps something to improve:
> >
> > [auto build test WARNING on linus/master]
> > [also build test WARNING on v5.5-rc4 next-20191220]
> > [if your patch is applied to the wrong git tree, please drop us a note to help
> > improve the system. BTW, we also suggest to use '--base' option to specify the
> > base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> >
> > url:    https://github.com/0day-ci/linux/commits/Yury-Norov/lib-rework-bitmap_parse/20200104-032153
> > base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git 7ca4ad5ba886557b67d42242a80f303c3a99ded1
> > config: arm64-defconfig (attached as .config)
> > compiler: clang version 10.0.0 (git://gitmirror/llvm_project 8ca79dac559219358b0c6bb00bded30935c7aa6a)
> > reproduce:
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # save the attached .config to linux build tree
> >         make.cross ARCH=arm64
> >
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> >    In file included from drivers/net/ethernet/broadcom/bnx2x/bnx2x_main.c:63:
> > >> drivers/net/ethernet/broadcom/bnx2x/bnx2x_init.h:299:9: warning: 'BITS_TO_BYTES' macro redefined [-Wmacro-redefined]
> >    #define BITS_TO_BYTES(x) ((x)/8)
> >            ^
> >    include/linux/bitops.h:18:9: note: previous definition is here
> >    #define BITS_TO_BYTES(nr)       DIV_ROUND_UP(nr, BITS_PER_TYPE(char))
> >            ^
> >    1 warning generated.
> >
> > vim +/BITS_TO_BYTES +299 drivers/net/ethernet/broadcom/bnx2x/bnx2x_init.h
> >
> > 619c5cb6885b93 drivers/net/bnx2x/bnx2x_init.h                   Vlad Zolotarov 2011-06-14  281
> > 619c5cb6885b93 drivers/net/bnx2x/bnx2x_init.h                   Vlad Zolotarov 2011-06-14  282
> > dbedd44e982d61 drivers/net/ethernet/broadcom/bnx2x/bnx2x_init.h Joe Perches    2015-03-06  283  /* congestion management port init api description
> > b475d78f464195 drivers/net/ethernet/broadcom/bnx2x/bnx2x_init.h Yuval Mintz    2012-04-03  284   * the api works as follows:
> > b475d78f464195 drivers/net/ethernet/broadcom/bnx2x/bnx2x_init.h Yuval Mintz    2012-04-03  285   * the driver should pass the cmng_init_input struct, the port_init function
> > b475d78f464195 drivers/net/ethernet/broadcom/bnx2x/bnx2x_init.h Yuval Mintz    2012-04-03  286   * will prepare the required internal ram structure which will be passed back
> > b475d78f464195 drivers/net/ethernet/broadcom/bnx2x/bnx2x_init.h Yuval Mintz    2012-04-03  287   * to the driver (cmng_init) that will write it into the internal ram.
> > b475d78f464195 drivers/net/ethernet/broadcom/bnx2x/bnx2x_init.h Yuval Mintz    2012-04-03  288   *
> > b475d78f464195 drivers/net/ethernet/broadcom/bnx2x/bnx2x_init.h Yuval Mintz    2012-04-03  289   * IMPORTANT REMARKS:
> > b475d78f464195 drivers/net/ethernet/broadcom/bnx2x/bnx2x_init.h Yuval Mintz    2012-04-03  290   * 1. the cmng_init struct does not represent the contiguous internal ram
> > b475d78f464195 drivers/net/ethernet/broadcom/bnx2x/bnx2x_init.h Yuval Mintz    2012-04-03  291   *    structure. the driver should use the XSTORM_CMNG_PERPORT_VARS_OFFSET
> > b475d78f464195 drivers/net/ethernet/broadcom/bnx2x/bnx2x_init.h Yuval Mintz    2012-04-03  292   *    offset in order to write the port sub struct and the
> > b475d78f464195 drivers/net/ethernet/broadcom/bnx2x/bnx2x_init.h Yuval Mintz    2012-04-03  293   *    PFID_FROM_PORT_AND_VNIC offset for writing the vnic sub struct (in other
> > b475d78f464195 drivers/net/ethernet/broadcom/bnx2x/bnx2x_init.h Yuval Mintz    2012-04-03  294   *    words - don't use memcpy!).
> > b475d78f464195 drivers/net/ethernet/broadcom/bnx2x/bnx2x_init.h Yuval Mintz    2012-04-03  295   * 2. although the cmng_init struct is filled for the maximal vnic number
> > b475d78f464195 drivers/net/ethernet/broadcom/bnx2x/bnx2x_init.h Yuval Mintz    2012-04-03  296   *    possible, the driver should only write the valid vnics into the internal
> > b475d78f464195 drivers/net/ethernet/broadcom/bnx2x/bnx2x_init.h Yuval Mintz    2012-04-03  297   *    ram according to the appropriate port mode.
> > b475d78f464195 drivers/net/ethernet/broadcom/bnx2x/bnx2x_init.h Yuval Mintz    2012-04-03  298   */
> > b475d78f464195 drivers/net/ethernet/broadcom/bnx2x/bnx2x_init.h Yuval Mintz    2012-04-03 @299  #define BITS_TO_BYTES(x) ((x)/8)
> > b475d78f464195 drivers/net/ethernet/broadcom/bnx2x/bnx2x_init.h Yuval Mintz    2012-04-03  300
> >
> > :::::: The code at line 299 was first introduced by commit
> > :::::: b475d78f464195cbdeeda0d80a2ffbd54653a4bd bnx2x: congestion management re-organization
> >
> > :::::: TO: Yuval Mintz <yuvalmin@broadcom.com>
> > :::::: CC: David S. Miller <davem@davemloft.net>
> >
> > ---
> > 0-DAY kernel test infrastructure                 Open Source Technology Center
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
> 
> 
> 
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200107041033.GA2754%40yury-thinkpad.
