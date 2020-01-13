Return-Path: <clang-built-linux+bncBDYJPJO25UGBBM6K6LYAKGQE2H7MMUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 55963139745
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jan 2020 18:13:25 +0100 (CET)
Received: by mail-io1-xd3d.google.com with SMTP id 13sf6164850iof.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jan 2020 09:13:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578935604; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ra3hZKsxHm1Jd9nQ7TJvEv9NnLEkrX8fOsNrxY+v1Bqr5KXm45d/D6MOrrC8Adc3g+
         Ye/79LND1oTQ941quo+1bNjqhqTTA3UyUVHue3YELuscpl/onMB23WyGAYBWvy3kF4R1
         Ul2eHLCu9+/tCJcZTv9lGgHQMkq19IHsOmUFbzzJSIn5sAyxMzjHzAW1KcYUvxZoTW6d
         9+Fo3YCi8kudbaFY/FxwanB3FdDgL66+RNLyLy12sb024dYt3nYAjTuy1UeDHJGDj3F3
         74L4DKG8FtM8Mf++9n8khxmuWQ1d3WeM5Nkxy0oZhkQQjyS/4s9yWH1RwGQJbUOT2b4D
         H+WQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=5Bx/uqM7bKsAOwAJzV+AaSj6GEcbHueaNQzD/dt9l6Q=;
        b=nPf6mU71Pb+/wZs2Hvkdh/npRtw4LNEtYrvOnzbX1HVGPH2yCIARzYg11QPrqMIs+E
         rgvZpRbZML49X4Pf6xjWHvAGDskXL2z4r+7QkzWozT6tGt+RKJJCXsOii6AcUtissTWF
         0vIsOilim2s2AgJp5PMwJBANnC9M116/4A3xY5ZQVaiJyz50X/70jGq0uHFxLJc0D/93
         tzigMCY+u4Lg0ugiKL84WvxdYm1cn5RKuBk6xeUJjGvWGHUKrrUoZLcoJ/cIh9zQEony
         LfAEBNCjWfpXqEAPH61VEwIEXJQlbscf5NOsfsAUy7ce89+wAACsRIyt9uEORClcje50
         7oJw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uk7ZlSy8;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5Bx/uqM7bKsAOwAJzV+AaSj6GEcbHueaNQzD/dt9l6Q=;
        b=FTZOu9RA1hcUqce0mLAP6RrYL5ioYifkjPJJxec5V9NqXzwi/Bk/ki76HRPt+TDJUG
         QfcD/gdhGgJ7GhlLZjTsnRoOLSJCB35OKFKUciMxgEb27ebboco9ia3mCIZrzZ9rqUXC
         d1h4qWNXwqN8g3RqjlD/T+50wIe84jVC9A+8+RF2mXwUIatOoQ0MP5J5WngJO834JSeA
         PKNU4X36AZCMXvC6AsuLxd34/QBREZAOLXNut6ZqS12Fuj88MrNZ+PtEPSJ/RL/4Wd02
         /DAF4ZujvvzJqN1Z8EbutNgbHrUnEias1M3EOWg2tUHeZKQjbPZ8uWXlkgAnYmlnP2mM
         UqHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5Bx/uqM7bKsAOwAJzV+AaSj6GEcbHueaNQzD/dt9l6Q=;
        b=p5qzeNMvgr5Ch7pDCTgQZs7VAaC1DSQJPfVTiy00rn9uz67N789zBOfAsbZG9DuMe/
         W1kK/ZhCgOdbo+UWEbFVnRlwsATMEiy8Dv/VhgyS4GHInOrNUiCN1PkElIF3BreZZ9j0
         nPBzQ6+QdN17T+nNCmXp1wP3blogD1lNwKiKvnmbG68S9PuNBqsWulVj9m4v85hcMSMN
         l3xSvnFlUyw86bfKP4QkKlDFm57dgbWHt/bDI2fsq99ZHhLKQ4NOez6k2oLGyKQH3U1c
         RhPXUQURv+FiuSkYKXifU/jWbY1b4V78mtBsATpwKpiHuopySN4LqL0/p36ls16fJXAx
         7UAg==
X-Gm-Message-State: APjAAAUmPf0mafw90Ayb8gLDmMfJSBQcnI/FwcQDl7uCon1J1AR6i7I6
	rjpGfYG77aZzqrjrF1Hy3jM=
X-Google-Smtp-Source: APXvYqy5UYDEPEiT/+5VZHlcUr/5Ug8XE+cmF5Z8KlpFrtbM3l0IfNrcxAlYbC0BwsuUnspfe07/4Q==
X-Received: by 2002:a92:b06:: with SMTP id b6mr14938996ilf.127.1578935603949;
        Mon, 13 Jan 2020 09:13:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:8d49:: with SMTP id p70ls1927900iod.1.gmail; Mon, 13 Jan
 2020 09:13:23 -0800 (PST)
X-Received: by 2002:a6b:3b49:: with SMTP id i70mr13729107ioa.106.1578935603514;
        Mon, 13 Jan 2020 09:13:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578935603; cv=none;
        d=google.com; s=arc-20160816;
        b=YCDxsOD+Ao996Lx5cq8mnxbq0JRIGCF57pOqkN2dBD3Y8sDcJlO4qMEGtE6ezgBpAd
         8Wqf/znG6/J4jAgQy7A0XHrMyQT+GFxACKJ/L9ajsB3Ul87DP4qjJJDfutiJG1yOPa78
         s6cbvm6CB292IsErOg/GdCzKs9SrZRxw9sMDid7ZwSVunR9VXbTQomGwfCM1RfSM+Dk5
         vQS5e1hMQvVatgtlxGeHhNDN3ft9xwvTdc46fwwYyAdbRnt75VeOCgLznExM/dD5piFL
         N8DT7KXG7Cr9/yV16EIvBOY8rc5UQzI8kCk4GaqVNmwxCidVNjAWhgYTca5zhhjVWjaW
         xceQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1TrMHfEWDxOV19ckxwyqlB8KbVcyydx7FgNXDmFt87o=;
        b=Vzh9mCZHYLLuJgIoK2DbswBsnomPE3IeWb7D/36v+pN4/sqdckyS9TDu14dDx7Shcg
         GISK85r7xa0Ivu34z4oxzJVaO2g4QFjdSFLWT/m3RC66JJHAIr+vVMJ+8DB0rEv2FDQS
         HwQh5aPhBhMlSUfzLc6wMql15Y/sbQcCztVObhTNQhTGMuDcsBQOFAB7fRcqCu6FBqUH
         5FQeB2IaUR1m4JEM8U53DOB7ogRzeKOx9QcKmbATaaLVmkY7y3Sxy3InFPWLZiV4hVaf
         OyCrsnuHcgxy4CT5VqBPlaflzzDfuZmvEQQpj6+7tRBPHGhbNXd3LGzCIyfTqQwoBxQn
         ltUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uk7ZlSy8;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id g12si393548iok.4.2020.01.13.09.13.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jan 2020 09:13:23 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id f20so4056258plj.5
        for <clang-built-linux@googlegroups.com>; Mon, 13 Jan 2020 09:13:23 -0800 (PST)
X-Received: by 2002:a17:902:bd05:: with SMTP id p5mr14380545pls.119.1578935602536;
 Mon, 13 Jan 2020 09:13:22 -0800 (PST)
MIME-Version: 1.0
References: <202001110924.mDLWOBnu%lkp@intel.com>
In-Reply-To: <202001110924.mDLWOBnu%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 13 Jan 2020 09:13:11 -0800
Message-ID: <CAKwvOdnMeLaA2n3yVgP+RPO6dBOQPPUtmo99JhbseDYMekWbOg@mail.gmail.com>
Subject: Re: [linux-rt-devel:linux-5.4.y-rt 206/261] drivers/gpu/drm/i915/display/intel_sprite.c:84:30:
 warning: unused variable 'pipe_update_lock'
To: umgwanakikbuti@gmail.com
Cc: kbuild@lists.01.org, kbuild test robot <lkp@intel.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Sebastian Andrzej Siewior <bigeasy@linutronix.de>, Thomas Gleixner <tglx@linutronix.de>, kbuild-all@lists.01.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=uk7ZlSy8;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
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

Hi Mike,
Below is a report from a 0day bot build w/ Clang. Can you please take
a look? Apologies if this has already been reported.


On Fri, Jan 10, 2020 at 5:53 PM kbuild test robot <lkp@intel.com> wrote:
>
> CC: kbuild-all@lists.01.org
> TO: Mike Galbraith <umgwanakikbuti@gmail.com>
> CC: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> CC: Thomas Gleixner <tglx@linutronix.de>
>
> Hi Mike,
>
> FYI, the error/warning still remains.
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/rt/linux-rt-devel.git linux-5.4.y-rt
> head:   1fbcaa9506f953b1f054c0d1ae79776fb77887b3
> commit: f5bcd1ba26d178d80c1424195832325a2daa923b [206/261] drm,i915: Use local_lock/unlock_irq() in intel_pipe_update_start/end()
> config: x86_64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 016bf03ef6fcd9dce43b0c17971f76323f07a684)
> reproduce:
>         git checkout f5bcd1ba26d178d80c1424195832325a2daa923b
>         # save the attached .config to linux build tree
>         make ARCH=x86_64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> drivers/gpu/drm/i915/display/intel_sprite.c:84:30: warning: unused variable 'pipe_update_lock' [-Wunused-const-variable]
>    static DEFINE_LOCAL_IRQ_LOCK(pipe_update_lock);
>                                 ^
>    1 warning generated.
>
> vim +/pipe_update_lock +84 drivers/gpu/drm/i915/display/intel_sprite.c
>
>     83
>   > 84  static DEFINE_LOCAL_IRQ_LOCK(pipe_update_lock);
>     85
>
> ---
> 0-DAY kernel test infrastructure                 Open Source Technology Center
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnMeLaA2n3yVgP%2BRPO6dBOQPPUtmo99JhbseDYMekWbOg%40mail.gmail.com.
