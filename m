Return-Path: <clang-built-linux+bncBDYJPJO25UGBBDOR5GBAMGQEK5CZCXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id E1731346BEB
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 23:15:41 +0100 (CET)
Received: by mail-wr1-x43e.google.com with SMTP id y5sf37829wrp.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 15:15:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616537741; cv=pass;
        d=google.com; s=arc-20160816;
        b=hKT5KBPxP/8gwqp7tqxjpopqRUpZemiAnRSBWgRvE5gA7Ge9gr04h32+qo7+kG1cdY
         GPGYX+8GkXGnbnnd8s69Zcs65WMuwzAKzk53I52FBKICtS8s2l1MvgBM59mmm/t8tbGM
         2FsRnyAHeknQWP+nJQ7g3703F2kAcXLXVW7tmZVLN3rHuMtsDoeP0AYzcvfqDoJdvdV/
         4tVSTPJNA7YXTrccHuSQauOdICHePbhcGf1s7RCkCxXi/tJs8wqtzM6BeK3RDBkBcCLJ
         zFCC8exsdtx7gwuV9fDP2EP9t4j3emg9m3+bi3BCJsPjUpoBpM4w98mUzBbCH1xZdVTO
         GA8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=v1WL/nfI+WpWT+UaDKz+O1UUuxmZKtiaZR89vkN1QsI=;
        b=LkxKFwZ4hDbR1iGdNn87EkQdUKIwxmOUvOngP7iGylbqy3G0hWm6UJCUJ/NAZbBW+2
         ZBnSlDkubyQ+UCXUWqt1KG4WI2SKcZm8yU0cCAtINPpEvt5u2GYQpZDmhgRtzYeHiCdf
         QFi101jyKxZrEA8HpRo5Wnb70fAGDboXT0e+D/KrRy0AusS48/rRQvqtmX1NYhNL3utl
         H8Pzl1U44PBXYgjah69LYjG7KnuMrITYjleDYD0eQkRqweUFVnD18nR2uH7XAKZp1v6v
         6VbbINmBpvDKGAT9vuc1GkjynttEnk4vOE1zQ3nZbueMAYKfA9GkAwnCaYCgGlwmZ0cp
         xd/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="kBSDOo/q";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=v1WL/nfI+WpWT+UaDKz+O1UUuxmZKtiaZR89vkN1QsI=;
        b=q2wkAchNM+0vjDW7X7UC5rV0aoC+i7hsgZ5ug+kZOWEiJUWfYc6ZSDtIXuG0JKTC3l
         TCUngav2j42cMbbuAOqKPztnzPHcnSUdJ0b+aH+JVkA0Uol9vZk2iV50xZQoZyK9Gcdy
         vQJz/mC1q+23DvJwJl661CWJScXis7guvO6SaRXmpS4SDg/gaSc4I6FnVOiYizgsLtf+
         E+EhC9ZQC973V/g4/HQ5ThDVI4jxugQIdapeE9F4VCkupHiyRt4eqGfvc+/mFW9OOOCU
         pzbmN/OYeTBzAfV1O9yIsIL1MGxuoA2v0bNl188YNMRyrK5DUzO1kT9wVM//qfxRFr2u
         VTCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=v1WL/nfI+WpWT+UaDKz+O1UUuxmZKtiaZR89vkN1QsI=;
        b=P/4WmdnVDGCfSLq7SeRd0dixFy9UM6iDcFNI6GCclIRn+0lVtGOEVQYIPMQ9YD4wyO
         XZUAVbaO74eJaaA+DbVF+UFN2mK7mMk8rW/MfQNezKEJZ7A8xp5eP9SFBY7zID4gnbPu
         0KxHKNzPk9FmqAJV9MYLwVinTp8Y8MTwOKwQQrppA+RWpejky2mKNWXtyrrhfIxrBnoP
         8crIn+rlk7Aj8b5GyPuUA3b79L8e0nN7UhkuYLPQSKkor2Jh3kCMCJsSW2DuPqjgsC9t
         1WcIfRNWSt4u9TEt/Ce/tHv2Y35bKgYHzJRCfo6jon/Rl942RcVU9ZFn6BMcMHoKWGE3
         AdnA==
X-Gm-Message-State: AOAM532FbMP2z7hbY5cYp5q4Xzbzx5oaRSa2cA60oR9TpQ3jHJ79JBxd
	BSzxesknQ1bea/CBMcWSBQA=
X-Google-Smtp-Source: ABdhPJz1LpLpTF6JopuIH44RrnjbXBPJHhpMaNfOS6yyPQviQ5gKDDpoQ6YYlmwFIKobFIxIKNWxWA==
X-Received: by 2002:a7b:c195:: with SMTP id y21mr131699wmi.178.1616537741711;
        Tue, 23 Mar 2021 15:15:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:58f0:: with SMTP id f16ls35040wrd.0.gmail; Tue, 23 Mar
 2021 15:15:40 -0700 (PDT)
X-Received: by 2002:a5d:5487:: with SMTP id h7mr132530wrv.348.1616537740878;
        Tue, 23 Mar 2021 15:15:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616537740; cv=none;
        d=google.com; s=arc-20160816;
        b=VPu/ibtTsfunix2PlHwVtAVLtLqeto/mvhJHgK6in9lCMOfEkqsdKJtPEavhnUXz71
         Hbu7kfZ6ykHc6MLiMvGl9/c8gsS31F40IrKrzMchR/GgzVGE5Wdcc6XHtpb7v+XVxL25
         Z75+KGZ+XuzgNgxy9ziFQby4j9COZ7Ugn21KPXNjctssD626mLtuhe9cDlB1HmwwMK6K
         QXi22JicZ2nL24SwS82OHkpzLCImPuRkRsXynjgcbRYM4s0VzmS42e3x1Oya42T3EHIG
         GJ64OZnL+mUyzfUeR3Cs0ytL0IEtU6GLmC6LuguvnSLWMl0V5MMh+xqUqDb2WzwoXo0X
         Q2TA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=vfMZah0K8UP5R6bi3ZoMbEq+3WDbUSDtHxKNt9kk6c4=;
        b=G6I2vCwjyfWIk88oc9ywH55E4dRJiUIHUE9VcF/CaPIMH5RHXSIvhlM8Mnm2XSseTk
         FYqVtVntnFONS9nQkdRDEEAsMgcmN4JM/spFRBaBRSaoLTg1ggk0+VwASua9nU93nFCa
         1mIVI3J8VAic19O52vQWg7HOyqpRRxJPc+taERF9W9lrzoD7SDmDlPEjsaQHrP6pmlb+
         uVlzARWScPx/HA7AxoxnSAYHqc9s0qEYFF2Ja8QTGMTIZwJftsuu3zlj/HKz5HluhO2f
         llt8QCmWv2dBtgYwnPDIHUq/0F67p0Pq+MVhX/Nq5pFfNpLF9a253re/tp6umsb0vbj8
         20gw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="kBSDOo/q";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com. [2a00:1450:4864:20::233])
        by gmr-mx.google.com with ESMTPS id b6si227905wmc.2.2021.03.23.15.15.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Mar 2021 15:15:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) client-ip=2a00:1450:4864:20::233;
Received: by mail-lj1-x233.google.com with SMTP id z8so27637644ljm.12
        for <clang-built-linux@googlegroups.com>; Tue, 23 Mar 2021 15:15:40 -0700 (PDT)
X-Received: by 2002:a2e:868e:: with SMTP id l14mr37001lji.479.1616537740161;
 Tue, 23 Mar 2021 15:15:40 -0700 (PDT)
MIME-Version: 1.0
References: <202103201405.UV0ZEGEW-lkp@intel.com>
In-Reply-To: <202103201405.UV0ZEGEW-lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 23 Mar 2021 15:15:29 -0700
Message-ID: <CAKwvOdnik8k7-xMmwtVbwtnispGt03C0acPAPWJRuo7t+VkftQ@mail.gmail.com>
Subject: Re: drivers/gpu/drm/i915/gvt/gtt.c:267:19: error: unused function 'get_pt_type'
To: Changbin Du <changbin.du@intel.com>, Zhenyu Wang <zhenyuw@linux.intel.com>, 
	Zhi Wang <zhi.a.wang@intel.com>
Cc: kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, kernel test robot <lkp@intel.com>, 
	Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="kBSDOo/q";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233
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

On Fri, Mar 19, 2021 at 11:45 PM kernel test robot <lkp@intel.com> wrote:
>
> Hi Nick,
>
> FYI, the error/warning still remains.
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   1c273e10bc0cc7efb933e0ca10e260cdfc9f0b8c
> commit: 9f4069b055d1508c833115df7493b6e0001e5c9b drm/i915: re-disable -Wframe-address

This in unrelated to my change.

+ Changbin, Zhenyu (authors of 3aff3512802) and Zhi (author of
054f4eba2a298) in case there's any interest in fixing this up.
Otherwise I don't think these tiny helpful functions were meant to be
used somewhere but are not, so there's not much value in cleaning them
up.

> date:   11 months ago
> config: x86_64-randconfig-a016-20210319 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project fcc1ce00931751ac02498986feb37744e9ace8de)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=9f4069b055d1508c833115df7493b6e0001e5c9b
>         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>         git fetch --no-tags linus master
>         git checkout 9f4069b055d1508c833115df7493b6e0001e5c9b
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
> >> drivers/gpu/drm/i915/gvt/gtt.c:267:19: error: unused function 'get_pt_type' [-Werror,-Wunused-function]
>    static inline int get_pt_type(int type)
>                      ^
> >> drivers/gpu/drm/i915/gvt/gtt.c:590:20: error: unused function 'ppgtt_set_guest_root_entry' [-Werror,-Wunused-function]
>    static inline void ppgtt_set_guest_root_entry(struct intel_vgpu_mm *mm,
>                       ^
>    2 errors generated.
>
>
> vim +/get_pt_type +267 drivers/gpu/drm/i915/gvt/gtt.c
>
> 2707e44466881d6 Zhi Wang 2016-03-28  266
> 054f4eba2a2985b Zhi Wang 2017-10-10 @267  static inline int get_pt_type(int type)
> 054f4eba2a2985b Zhi Wang 2017-10-10  268  {
> 054f4eba2a2985b Zhi Wang 2017-10-10  269        return gtt_type_table[type].pt_type;
> 054f4eba2a2985b Zhi Wang 2017-10-10  270  }
> 054f4eba2a2985b Zhi Wang 2017-10-10  271
>
> :::::: The code at line 267 was first introduced by commit
> :::::: 054f4eba2a2985b1db43353b7b5ce90e96cf9bb9 drm/i915/gvt: Introduce page table type of current level in GTT type enumerations
>
> :::::: TO: Zhi Wang <zhi.a.wang@intel.com>
> :::::: CC: Zhenyu Wang <zhenyuw@linux.intel.com>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnik8k7-xMmwtVbwtnispGt03C0acPAPWJRuo7t%2BVkftQ%40mail.gmail.com.
