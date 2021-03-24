Return-Path: <clang-built-linux+bncBDYJPJO25UGBBIHC5WBAMGQEGLQDMMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 55B3F347E78
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Mar 2021 18:04:33 +0100 (CET)
Received: by mail-lj1-x239.google.com with SMTP id s17sf1495587ljs.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Mar 2021 10:04:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616605473; cv=pass;
        d=google.com; s=arc-20160816;
        b=kQ5cVOD9P9bwCE7Jhzug42k1uP+uTyXVuCkEgqD83FGNcvMLl1m4svLCvVeBCOdyjJ
         pIS8y3LaLw7Fh7LiJzyVFQHoDKypyHKpLQHk6TkGLIim7DxAMoWVCIZtqHkkzDLQnVct
         EwinEyQGmeRBQAesD/Fh2DGnqMql0RYgWDAt4TQkesAaIINvRQon7MmQeAP1df6l8jA/
         kPZ6M+OinKPtmeAVOLF7aZwpkFNieenkBYebm3m7oFMXj3gRW1/QjTCsS9Si6S83a5h4
         E4GW8QBJDH0yuTQmrpR4pj2cckH6T6D2Q/27gWs9PhEMRrJ9b7JvFYvaPc8qZaj1679c
         o4cw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=8jONoAn60KraLBdOm6G6A63SyLJ/udlndbOdP4/Viu8=;
        b=MJ79v3KXLcVhvVkwbT56giORj8H+THCpOtfKnyAqjBTYz3ZO4U7x+oTLmz1QHYzyd0
         yPXSw8hjeM453YIRlem9eiSx0lWBgFsTfgawTcZQKezKSzGtrur/DQ6ba0OHizO5g4o5
         N0KDT/rbB/7cQTSpctsvBwYyp2b9MKddfhp9vwNnm+SvxBZ5sqGXdsV4y4UyoJSpdD3f
         bphrXxp/t6fZ0aVJhq54vXmLeypityIJTC3dRsVfT7yOwVpiNDViyrsX1CazOLP/D0kq
         mepgrOAuSSPJDQolx4GcOQ0UyamZM60OQznATG5n+7zsXv+nOIDexmR6c795k0R83+/a
         6aGg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LwDrzvPs;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8jONoAn60KraLBdOm6G6A63SyLJ/udlndbOdP4/Viu8=;
        b=r0RsWb/fT0GSyaC5Ml/LH6NObgpLBPi+DpgwWuPtlOmM3x/IJF433r4wVFxZnjdMn3
         AL09GW4eooyqrdiPwSy1/c/4TMu2BfPs/9OkfrF+Pk5/d8q7YkUywQp6/JsZVbxNnDuq
         mQd0cAsKH46SNMsMWBbLsbvGCJHPGR03/wIm9oFXw+oPuC09+RR06XfHZGxfcIrhpGQB
         BU/0ld5pOoWFl8/7jVSyHussbDtpOKjA3IZ2St3EAUzBtOec0Xja/cS3uGSr0tokquwc
         OKPvdX/Iyf9indc+wcb+WVBvaMji6yS6N0DTmnOY5drWbXEfO8C9PS8sTywn3Rq97lpQ
         g3kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8jONoAn60KraLBdOm6G6A63SyLJ/udlndbOdP4/Viu8=;
        b=jnEFb4qdfkaNlpxBaUHz7+NKiFnrEEMWZFp7FU61IMGb0HVJlGCwJAaQ4Y44d5XGjM
         J3yzG2p9kmwzGZt6M0mAGGhkIq89/dQzHGvjpRalEukxR153+TvdaaLfW/QSyqodI0SN
         vIcZFUnQ7duLr66WldRz/UB2gbou5aS6Ohk0/Bvcd/XYE5eOBU4euV3E2IX7/8lP+sd/
         EbF7pljWDoKsG84KhcAv9DmW9cDh3cfqfIziPLAG9nhQ4mLmZ+4kJQJBJtfmW49tXe02
         IdQ/17PxAp56wEE81ItUq8qyeMzzTCraGhMgOQmYO13Wae9LK30rgpWLA4ivtEvJRiEA
         mE6g==
X-Gm-Message-State: AOAM530ub6mh2t410UDywoiz2JwXoV2sVTSeUD/vZVLDmNpOezHXcBOK
	LFPaqOspbXBLXc0RfNGoGuo=
X-Google-Smtp-Source: ABdhPJzJGjR18hY7oOOFpKWZf1ZcwHayYkqq29g75y9zQWYuvsCvxgVSjrQ9F79fajws8e0EHrMV7A==
X-Received: by 2002:a05:6512:3a81:: with SMTP id q1mr2478839lfu.388.1616605472908;
        Wed, 24 Mar 2021 10:04:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:e86:: with SMTP id 128ls2209688lfo.0.gmail; Wed, 24 Mar
 2021 10:04:31 -0700 (PDT)
X-Received: by 2002:a19:6a11:: with SMTP id u17mr2529903lfu.501.1616605471833;
        Wed, 24 Mar 2021 10:04:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616605471; cv=none;
        d=google.com; s=arc-20160816;
        b=WJvEs8lzi1LOgHpf7eQ3UIzwYuAzS4wXTRKePfAVXH8qJgMVXasuVVnCNPsplNJnQm
         EtGRE+tRjKNBWG9uutgTwHAXNb7HWZ+V5n0AoYricTygymI97t9HfZE6FuF/HBjcAiT1
         /XrdlFuPNsvWPinXyHqbFecREuR2dHc0+dO+Woc//SwljqnxOBJcm2Q5l9PLze+Tkiiz
         XvSjwiXLG1Ks+05/XdpNrV8nLyGkxxgokIUiboGpkM6kq7m3VxhdL3gmYZMc1Vmf2ymJ
         aKhiS8MEaJLc2YmVxghGepVNy2bELILFRW2c9gfyNkaHClX4QojrbjERh52CQt1BxyWV
         MxnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qdzgWN/3EyVqs7LL1UB6MB8anRRzjh+ULV006vyWNDw=;
        b=j2RtytNS4Rqtb1Y64Sd1Te9HZlvl2jTZLbYlndtV5qbRAb7rnSaNhArFz1x0b3kYUn
         8sEOQJ+88olJE/WpHysAkFiRBnzFjbMfF2GsPjsrdUDVPll0c79yZIieeq0NV2fE1JEl
         koLx3LE9Jjxsc+KQrWMRpKIv5v/QzV2PnXBvXqBuxClYVONyO1znvcwWq2CBJ09N0unT
         5KiLlwPWVEIlNRC1GNxvuyq5Tko0tWeR69LclT0vYKYn1FTAHGyc7zmw8wvSpVR8FEkW
         Rsp3rB7pqF0Ij8tc6HB/brB2Dd2uphULDdkKQcDhuCx2BWKyc+3ycF0onh/yYXpSkkHs
         VSZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LwDrzvPs;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com. [2a00:1450:4864:20::22e])
        by gmr-mx.google.com with ESMTPS id 63si114978lfg.9.2021.03.24.10.04.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Mar 2021 10:04:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e as permitted sender) client-ip=2a00:1450:4864:20::22e;
Received: by mail-lj1-x22e.google.com with SMTP id 184so31129487ljf.9
        for <clang-built-linux@googlegroups.com>; Wed, 24 Mar 2021 10:04:31 -0700 (PDT)
X-Received: by 2002:a2e:7d03:: with SMTP id y3mr2787850ljc.0.1616605471373;
 Wed, 24 Mar 2021 10:04:31 -0700 (PDT)
MIME-Version: 1.0
References: <202103201405.UV0ZEGEW-lkp@intel.com> <CAKwvOdnik8k7-xMmwtVbwtnispGt03C0acPAPWJRuo7t+VkftQ@mail.gmail.com>
 <20210324085531.GL1551@zhen-hp.sh.intel.com>
In-Reply-To: <20210324085531.GL1551@zhen-hp.sh.intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 24 Mar 2021 10:04:20 -0700
Message-ID: <CAKwvOd=eCgAVqhdJzNGnkODD4BnTWGEDR_nbevH3cgbyf94zXg@mail.gmail.com>
Subject: Re: drivers/gpu/drm/i915/gvt/gtt.c:267:19: error: unused function 'get_pt_type'
To: Zhenyu Wang <zhenyuw@linux.intel.com>
Cc: Zhi Wang <zhi.a.wang@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, kernel test robot <lkp@intel.com>, 
	Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=LwDrzvPs;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e
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

On Wed, Mar 24, 2021 at 2:12 AM Zhenyu Wang <zhenyuw@linux.intel.com> wrote:
>
> On 2021.03.23 15:15:29 -0700, Nick Desaulniers wrote:
> > On Fri, Mar 19, 2021 at 11:45 PM kernel test robot <lkp@intel.com> wrote:
> > >
> > > Hi Nick,
> > >
> > > FYI, the error/warning still remains.
> > >
> > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> > > head:   1c273e10bc0cc7efb933e0ca10e260cdfc9f0b8c
> > > commit: 9f4069b055d1508c833115df7493b6e0001e5c9b drm/i915: re-disable -Wframe-address
> >
> > This in unrelated to my change.
> >
> > + Changbin, Zhenyu (authors of 3aff3512802) and Zhi (author of
> > 054f4eba2a298) in case there's any interest in fixing this up.
> > Otherwise I don't think these tiny helpful functions were meant to be
> > used somewhere but are not, so there's not much value in cleaning them
> > up.
>
> I'll check that, should be some left over last big gtt code refactor.
> Looks lkp guys don't apply -Wunused-function for gvt tree build test...

Thanks, yeah the report from the bot mentions it had `make W=1 ...` on.

>
> Thanks
>
> >
> > > date:   11 months ago
> > > config: x86_64-randconfig-a016-20210319 (attached as .config)
> > > compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project fcc1ce00931751ac02498986feb37744e9ace8de)
> > > reproduce (this is a W=1 build):

^ hidden note about W=1, easy to miss.

> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         # install x86_64 cross compiling tool for clang build
> > >         # apt-get install binutils-x86-64-linux-gnu
> > >         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=9f4069b055d1508c833115df7493b6e0001e5c9b
> > >         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> > >         git fetch --no-tags linus master
> > >         git checkout 9f4069b055d1508c833115df7493b6e0001e5c9b
> > >         # save the attached .config to linux build tree
> > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
> > >
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kernel test robot <lkp@intel.com>
> > >
> > > All errors (new ones prefixed by >>):
> > >
> > > >> drivers/gpu/drm/i915/gvt/gtt.c:267:19: error: unused function 'get_pt_type' [-Werror,-Wunused-function]
> > >    static inline int get_pt_type(int type)
> > >                      ^
> > > >> drivers/gpu/drm/i915/gvt/gtt.c:590:20: error: unused function 'ppgtt_set_guest_root_entry' [-Werror,-Wunused-function]
> > >    static inline void ppgtt_set_guest_root_entry(struct intel_vgpu_mm *mm,
> > >                       ^
> > >    2 errors generated.
> > >
> > >
> > > vim +/get_pt_type +267 drivers/gpu/drm/i915/gvt/gtt.c
> > >
> > > 2707e44466881d6 Zhi Wang 2016-03-28  266
> > > 054f4eba2a2985b Zhi Wang 2017-10-10 @267  static inline int get_pt_type(int type)
> > > 054f4eba2a2985b Zhi Wang 2017-10-10  268  {
> > > 054f4eba2a2985b Zhi Wang 2017-10-10  269        return gtt_type_table[type].pt_type;
> > > 054f4eba2a2985b Zhi Wang 2017-10-10  270  }
> > > 054f4eba2a2985b Zhi Wang 2017-10-10  271
> > >
> > > :::::: The code at line 267 was first introduced by commit
> > > :::::: 054f4eba2a2985b1db43353b7b5ce90e96cf9bb9 drm/i915/gvt: Introduce page table type of current level in GTT type enumerations
> > >
> > > :::::: TO: Zhi Wang <zhi.a.wang@intel.com>
> > > :::::: CC: Zhenyu Wang <zhenyuw@linux.intel.com>
> > >
> > > ---
> > > 0-DAY CI Kernel Test Service, Intel Corporation
> > > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> >
> >
> >
> > --
> > Thanks,
> > ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DeCgAVqhdJzNGnkODD4BnTWGEDR_nbevH3cgbyf94zXg%40mail.gmail.com.
