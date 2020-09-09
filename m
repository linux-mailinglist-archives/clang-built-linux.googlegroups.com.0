Return-Path: <clang-built-linux+bncBDYJPJO25UGBBKF74T5AKGQEDYKSRRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 2944A26360D
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Sep 2020 20:32:10 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id k9sf2370413pgs.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Sep 2020 11:32:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599676329; cv=pass;
        d=google.com; s=arc-20160816;
        b=cSjOcLVBQ8KT3Xsb11Hp+sKGZUj/DaIjskifFwtVkvDo0jTLJXcA0gCxSqzMrg74PB
         n6SZ4fvAMJtSQGvUFoBF4DkehKsmtrvgTluwawetyANoBf+aId8xEE/MfzlgJ/azdQBe
         as6dLUohLrlcv/hCsrtB2KAT8FU/ABRnFkLMWP8j0h6kShEnL5NBf5M2IypPVkp5nD6g
         g8i5MOaaUH6Mi3judh+0wzNMcTfGzrXa3wJmZ1TDyqAcOGIV3ks0tIsHxE/gTJFDhIbg
         R20+yQBziqAhQAr1JOXcgew4U7RTNnlfoFR6AVPFQoX5FfvazVD0GT0/hgc9AQTDZYP+
         yBCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=kQv7rhSidizeeyWDtgJlP30hP06907TY8qOI647+sDc=;
        b=0hq20zVIhhqLkdiuHck0wwZK/oBu1/TCS16/083wz4oP5Z5O5XQyQFooYrpnmoC5Wp
         bOqxXgY01ek9RgZhhxqfBrrbdALwGts1ml5oDIA70lt7/yc6oOLo2NjDGXlZLrE4NwYT
         MfKcrFLHTDTYpimHm7c/MbQ+xQaTA6mQQqoXbTL3bNu88TaOSvZLxtUdZg5dCMdQOMb2
         VyZCbwovEzeByQZDA7VLohvBnJ4AAoS1QJkuJfgXKBHRRVSUxx0rEC4dldpDzs6b7QPV
         UvLxuqQJwrInOVxwr29kNmvG+Qz+ZQGK5nxPhAPgPw/LrCLiG/lKWmZ/bshL3e4FzOxx
         RQPw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iGFiZNxZ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kQv7rhSidizeeyWDtgJlP30hP06907TY8qOI647+sDc=;
        b=Cmp6PjppgACJt9hRkOPGSn+WWT3AMWaRRTuqpC0sSbI1g9kfvREPN4ZTj+UPkwaSrN
         UhyrbSRBsAPiotid6i/daZiZsNXuy35+6jrPpe1f7ud8jKTDkNsha6d0n+ruVFeVpuCP
         xQ+Duk0EBV/rr1n/bvOcvRF3h22izVySGjpKG7tEg+FxRDiFAkc+zCuYSKXryXrxTQcD
         hUihnfy7iWfhS3dn6gFB/8Pnp3DPd84nY32vPwmrMXPtUbjR1vQh1+I9+PvqQWdqg3A3
         Xg7PHhcgaax+HRMSh1pgLhfzdPA8Nr359stemzEgasEe0OVxlm52GBJIKndTTbAVIiRS
         jBFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kQv7rhSidizeeyWDtgJlP30hP06907TY8qOI647+sDc=;
        b=RgQ7ckvlAOfeKFVkL4E3mN1vipsqVOI5Nsg4CdT1fz/bO2nA9IjsghydbLwfu8UVyG
         tN7Nan5CuqeeTP1RY6KnINBR/wABeQ8EJdh6YHgj9PRjOCD5K7wmLxStHtdl861CmTz7
         v7UBNUENJFiyQZMjaDESpsS0f0wm5aWxPO2mL1b4QFZqm0hR2BzvgT4W6BSiI8tPxwgx
         HWLE3hchz+uPpSuTqGKypwHDnUdzKpiHm+exUqic/9qIq9+NdWJzgLr1LT+56kUIYJeN
         FbPR76WMtpNbeUa+iW3V7qUhqzRgDoq022cZNUPfYf8BMbV+mxC8HlhLYzvAYLNhcf6f
         JZzA==
X-Gm-Message-State: AOAM532IjAOXvJ6FaSfpxMSNHgUkfbymLtd30wZX8WtJM6l/aQWXYAWU
	n8rMJ3O07WxdsQTS1qXufVg=
X-Google-Smtp-Source: ABdhPJwKvDtayKgUuwWZVF9xtEQyzvy3+ANvc8tOp6ePrFJP0M60JKyWjV5TtAmH8PwrLul9q0WGfg==
X-Received: by 2002:a63:1848:: with SMTP id 8mr1559904pgy.347.1599676328792;
        Wed, 09 Sep 2020 11:32:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ead1:: with SMTP id p17ls1887839pld.2.gmail; Wed, 09
 Sep 2020 11:32:08 -0700 (PDT)
X-Received: by 2002:a17:90a:9d82:: with SMTP id k2mr1906452pjp.197.1599676328158;
        Wed, 09 Sep 2020 11:32:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599676328; cv=none;
        d=google.com; s=arc-20160816;
        b=GOf4/gSCLqf/jn6L5KDUYExDch3gZ46D3C/Uh/fTngpxbpRjJaPvkxRPxorKbYfsEl
         OuO6xHiBeVBO3AjpQ7brTYbjxauyfNWVrLW+AogdaAAVyQkI/bJzlyIx+OKWuEwZyfAa
         XNyKN2voyLnQJssyjnXmTRHgw2YWL2AbXinMkKRTgrvWVySDj8PSaQP/cIyeKUrEqsbt
         ky4kHjRqGhR+7SlBt8nEzkCIw8i7DwvfKE/e6Dw+REts9jkzxN2qexVmszr5nvJCCDmI
         lVFdN+5LcG3H+Al8wRa9pETPwYeQmEjyzAxQVr8Nt/ANq+3eEtAY5iJIIlXOPawYhJh5
         btRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=BFA9mhByRTSRGHsD6cB13AJv9U4sWsz2IWW31+GjQfE=;
        b=OMJQapA9MrWaWI2Sxo+H+D13A/rAEnGhR1wyvMgC8TFOZr9o2mu5xktANJjKUJ5rLj
         DEKjPHiqR2AycYDTgURb0831yBJnwF++K/wpaghzFsNE/mNR3Y9Gw4mQi3lqVNsEekue
         WdLzrCHlOPr2WGdkxYXBzV6S0QEy4HD1d2Xb13yjUBI7wCaIextkq7yC8m0DDs6VvgCO
         w0e5Fo93juWGgN4MuD4ERHTlgwXTm4ePpYqByJ7jMkXLO9wp4fZkVIE3HPDhCn1VHxts
         QBSvsdTgXEu/Fem9sgS0ABayvOVfZUASU3or8FiMX4lCyRLNHAN+hgvLopJUa035CGYi
         +3cw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iGFiZNxZ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id q23si236289pls.2.2020.09.09.11.32.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Sep 2020 11:32:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id a9so1770082pjg.1
        for <clang-built-linux@googlegroups.com>; Wed, 09 Sep 2020 11:32:08 -0700 (PDT)
X-Received: by 2002:a17:90b:889:: with SMTP id bj9mr1916037pjb.101.1599676327628;
 Wed, 09 Sep 2020 11:32:07 -0700 (PDT)
MIME-Version: 1.0
References: <202009082116.CD6PqCXE%lkp@intel.com>
In-Reply-To: <202009082116.CD6PqCXE%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 9 Sep 2020 11:31:59 -0700
Message-ID: <CAKwvOd=WOoAAOEzSfx3t_nAGhXXgGHvg7gvWn5LM5Epcxzt2oQ@mail.gmail.com>
Subject: Re: [mlankhorst:locking-rework 20/38] drivers/gpu/drm/i915/gt/intel_timeline.c:90:30:
 warning: performing pointer arithmetic on a null pointer has undefined behavior
To: kernel test robot <lkp@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=iGFiZNxZ;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041
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

On Tue, Sep 8, 2020 at 6:26 AM kernel test robot <lkp@intel.com> wrote:
>
> tree:   git://people.freedesktop.org/~mlankhorst/linux locking-rework
> head:   a79fb96dfd8cc55fbe36c0ad3d51e78b43fd657e
> commit: cc7019a7b1c6adff2477768249c2a12f2bedac63 [20/38] drm/i915: Pin timeline after first pin.
> config: x86_64-randconfig-a004-20200908 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 5f5a0bb0872a9673bad08b38bc0b14c42263902a)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         git checkout cc7019a7b1c6adff2477768249c2a12f2bedac63
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> drivers/gpu/drm/i915/gt/intel_timeline.c:90:30: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            timeline->hwsp_seqno = NULL + timeline->hwsp_offset;
>                                   ~~~~ ^

Should this be `... = (void*)timeline->hwsp_offset`?

>    1 warning generated.
>
> git remote add mlankhorst git://people.freedesktop.org/~mlankhorst/linux
> git fetch --no-tags mlankhorst locking-rework
> git checkout cc7019a7b1c6adff2477768249c2a12f2bedac63
> vim +90 drivers/gpu/drm/i915/gt/intel_timeline.c
>
>     68
>     69  static int intel_timeline_init(struct intel_timeline *timeline,
>     70                                 struct intel_gt *gt,
>     71                                 struct i915_vma *hwsp,
>     72                                 unsigned int offset)
>     73  {
>     74          kref_init(&timeline->kref);
>     75          atomic_set(&timeline->pin_count, 0);
>     76
>     77          timeline->gt = gt;
>     78
>     79          if (hwsp) {
>     80                  timeline->hwsp_offset = offset;
>     81                  timeline->hwsp_ggtt = i915_vma_get(hwsp);
>     82          } else {
>     83                  timeline->has_initial_breadcrumb = true;
>     84                  hwsp = hwsp_alloc(gt);
>     85                  if (IS_ERR(hwsp))
>     86                          return PTR_ERR(hwsp);
>     87                  timeline->hwsp_ggtt = hwsp;
>     88          }
>     89          timeline->hwsp_map = NULL;
>   > 90          timeline->hwsp_seqno = NULL + timeline->hwsp_offset;
>     91
>     92          GEM_BUG_ON(timeline->hwsp_offset >= hwsp->size);
>     93
>     94          timeline->fence_context = dma_fence_context_alloc(1);
>     95
>     96          mutex_init(&timeline->mutex);
>     97
>     98          INIT_ACTIVE_FENCE(&timeline->last_request);
>     99          INIT_LIST_HEAD(&timeline->requests);
>    100
>    101          i915_syncmap_init(&timeline->sync);
>    102          i915_active_init(&timeline->active, __timeline_active, __timeline_retire);
>    103
>    104          return 0;
>    105  }
>    106
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009082116.CD6PqCXE%25lkp%40intel.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DWOoAAOEzSfx3t_nAGhXXgGHvg7gvWn5LM5Epcxzt2oQ%40mail.gmail.com.
