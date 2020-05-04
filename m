Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHVHYH2QKGQEPJJG4RY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 754DE1C4310
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 May 2020 19:40:48 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id e9sf188940pls.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 May 2020 10:40:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588614047; cv=pass;
        d=google.com; s=arc-20160816;
        b=L4dSMNOsEPL0G/1o5QWpvrb3+C1QZevUuGzitH0416t75lf10HjrU7upeCn/kWg8Dy
         ZRfnUA5BQ340B0XD3mOSbUbgrvYvJVKvJwSvn+zXGi1/v9i3zZvLK6fbl+mwyIUSaQ1v
         5b65XZI2W+TuDFn0PobkkqO5Xl3fQCo+Nr/Lrr3MCbrr0JBT3VfUtsBc/YiLi2BBVXjk
         KVcjHBTIPzCMuUIBM1ftd9JHDSOhLoh9AUASWZ06djQDcoK9DCfHszfEPLLqqDgTJ+G/
         15+jc2kfjjIpZVgeeHTTsf8eaeZ0JNrNacNY7hhduVo+F38IaPuvANeDt5XJywXP2Gcl
         mV0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=N2ph6VF0ReZlIkL4Xup4JF+0mNuE1kMoMXCsFQCQYY4=;
        b=FVodaOVJjlaBL3DF1GvgAthMza7QMHzulkJ6AlmXNEQCoKdd5wC2Pmp8oh1+eZeM0v
         UCcwlkBsOb9qnm4xXj3TgUO9mFhumsRozFiuXNyLPw2vhzKJHx/kP2szRpDLuvMsoEmm
         JLZZaCHcaRPTCrfwBk9iNSJ8+DBSQ1jujhhhJ9Vc7lqYc10cxfSI0HnLdvSFB6WcEzcT
         En5NgG1TNevB3E80ejfs8wO4vivd5AZVGmIYOECyIYtBubVnNUoulvIUwwknz+24kpNf
         iEJ39dwxp2ir+mD3Sq/NNdF5S8oq3QxYxc9Rw7Jxekn4Yb3Jr//6JOOA1ORcaWEMIoMq
         mW/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sCmvSk9J;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N2ph6VF0ReZlIkL4Xup4JF+0mNuE1kMoMXCsFQCQYY4=;
        b=HR8wzOlPyNC0DHDbA+XliyQuofBXlKNpYDSNrP7YmZ9jvYamn/YbmkvK8dlL3GD+69
         Ig8PEgIpngnLyfpnbjqssKgz+gzm7Pnn6kBjpOM1Eytw+clldCgnPUjN78RN29C+G7sW
         Wotl+U1okuKXrK8uuYGerspMYv3AiD3+xtqp78h6skS54uramoal5n+1xgocB8qsqf/k
         xLeOnStO1hI2m0wFonS3b9aABXO0uogpKGuACr6suHs64+ftZNEX+Xnqx9mjWP0GNAzn
         WdR2M5ERzMorMRvZN6koGlTbfGmrp+6nw0iJuHON0gmgxsTuSlqMY8h6ts8gUNZFROxP
         OmgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N2ph6VF0ReZlIkL4Xup4JF+0mNuE1kMoMXCsFQCQYY4=;
        b=WvtEOr2nh6D5eynDIMtl3lE9eu/NgCSnONp+hAL55PoErgPbihEEfrkznV+VSrUF+q
         T7DlsOgEmPE0A/T71qpv1Qd7rAxd6hTW+7Ys9C4mjxyjO/MjoXqrC/YIzygGsQ4gLQXo
         pFRC9TAeiMJ0A1yRwTCKFSFsHPiIpEu+ljwFp+hJH+iPzgz5o8NMujUHn6164l2uMtQ4
         DXxxLkU5JZRcb14ADbJuSUTP/x7pjhnYNXZHFP7toYV/6RgnOg0m0fOy92xJVgzPH8oe
         rCMc7bVgGSyR416w1Qe4WKq6Gt71Snf4F4PSk9cGfNW7YSK8TkgFk5FKyYj6WCu5YOu7
         G7nw==
X-Gm-Message-State: AGi0PuYjLOyJyHsqxMcNkYnvhDZE8G/+fXSQ/ew2FuQZouZttw8Or4ar
	NuZMpvo5eTsg/dTIEhGSX4c=
X-Google-Smtp-Source: APiQypL/DTeEy6azKviB7KKcUNswvR9lcDBw7CSUNtJlaC8VguIgzoenTNV+W7WcfleduzUnML1gfw==
X-Received: by 2002:a17:90a:8c3:: with SMTP id 3mr69221pjn.147.1588614046892;
        Mon, 04 May 2020 10:40:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:4383:: with SMTP id q125ls15320222pga.7.gmail; Mon, 04
 May 2020 10:40:46 -0700 (PDT)
X-Received: by 2002:aa7:934d:: with SMTP id 13mr18056291pfn.305.1588614046352;
        Mon, 04 May 2020 10:40:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588614046; cv=none;
        d=google.com; s=arc-20160816;
        b=JQrBgIfikjBxqzjFVbLWGi8WNQNRuPfQ2LlJ56vvpe7QIji3tYPsld/CMr3Tmhz0tT
         2VK3nnCvNRv/peVc6yTw2OZzu7qZ5k25D0+mzxsuz5+tPyBKTbQK7SOts4FlaV+L8C/N
         2klFl+nkmS6Ajh0H+WZtUxjZE16GBLQXfirWbWnIPARksKTmJHZVMLsY/TCzmNsNrjIc
         pLbDjELg4aVezxRItrei5Sbg5nCyu4bFnuogIwFRFkrGty6UbZlAjKwRs3/BMPmXR9Aq
         Cwu1Iea3yv+Jp8FSpJsxd1SsI6C6ul31WD/ROBPCZdnH3MpZyMCs93A7w1FkS0dW/HWc
         Fm9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=vCUIqY3ZybzOFNhbrLtb4vaKRJg3odek+iEj8348L0k=;
        b=GKo7VXxrkEzgOQnygh6D5p6Zm6DII4h0VQY3qU9dcLLNrNHiEAiKZpf/LuiZPBxvCv
         dC+k8v44flkPt0Ub6bq4npJHN+sg79Zrbe6xr7VWzumvkrF9e3YSa4BAcmlvA9xWFvbv
         qiAGfd6O5zxnbOOTg95MUESK8rlubeMwQfv3iDsEyJ0eI5Hh3UWQiCJFiSX5/MJIlRoZ
         zE9Q4nRBb+RPDgNVOllQv8/D1WDC8IIdf5C1Y5lY5DV+8Kk3PTwK3U7ArUA+41m2/LIp
         C+fUa4rVp6TqBlKibHK6Ev/nfHhKfSKyk7/yulgizLSkg255A7FKdZoMmyx/nl/RAiGw
         8DFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sCmvSk9J;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com. [2607:f8b0:4864:20::535])
        by gmr-mx.google.com with ESMTPS id g23si808170pgi.5.2020.05.04.10.40.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 May 2020 10:40:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::535 as permitted sender) client-ip=2607:f8b0:4864:20::535;
Received: by mail-pg1-x535.google.com with SMTP id a4so166560pgc.0
        for <clang-built-linux@googlegroups.com>; Mon, 04 May 2020 10:40:46 -0700 (PDT)
X-Received: by 2002:aa7:9535:: with SMTP id c21mr18171053pfp.39.1588614045754;
 Mon, 04 May 2020 10:40:45 -0700 (PDT)
MIME-Version: 1.0
References: <202005041106.4EO0eLIB%lkp@intel.com>
In-Reply-To: <202005041106.4EO0eLIB%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 4 May 2020 10:40:35 -0700
Message-ID: <CAKwvOdniUJj+RTiD886=TA4gC8g0iZ16phRSDK=vLcZfTUa_RA@mail.gmail.com>
Subject: Re: [linux-next:master 4258/6218] drivers/gpu/drm/i915/i915_drv.o:
 warning: objtool: __llvm_gcov_writeout()+0x14: call without frame pointer save/setup
To: Chris Wilson <chris@chris-wilson.co.uk>
Cc: kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=sCmvSk9J;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::535
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

On Mon, May 4, 2020 at 7:01 AM kbuild test robot <lkp@intel.com> wrote:
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   fb9d670f57e3f6478602328bbbf71138be06ca4f
> commit: 9f4069b055d1508c833115df7493b6e0001e5c9b [4258/6218] drm/i915: re-disable -Wframe-address
> config: x86_64-randconfig-d001-20200502 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 45b7d44ecb01780e26dc8d3c30bc34e32c08dd70)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         git checkout 9f4069b055d1508c833115df7493b6e0001e5c9b
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> drivers/gpu/drm/i915/i915_drv.o: warning: objtool: __llvm_gcov_writeout()+0x14: call without frame pointer save/setup
> >> drivers/gpu/drm/i915/i915_drv.o: warning: objtool: __llvm_gcov_flush()+0x0: call without frame pointer save/setup

Known Issue: https://github.com/ClangBuiltLinux/linux/issues/955
please ignore, sorry for the noise

> --
> >> drivers/gpu/drm/i915/i915_getparam.o: warning: objtool: __llvm_gcov_writeout()+0x13: call without frame pointer save/setup
> >> drivers/gpu/drm/i915/i915_getparam.o: warning: objtool: __llvm_gcov_flush()+0x0: call without frame pointer save/setup
> --
> >> drivers/gpu/drm/i915/i915_pci.o: warning: objtool: __llvm_gcov_writeout()+0x14: call without frame pointer save/setup
> >> drivers/gpu/drm/i915/i915_pci.o: warning: objtool: __llvm_gcov_flush()+0x0: call without frame pointer save/setup
> --
> >> drivers/gpu/drm/i915/i915_params.o: warning: objtool: __llvm_gcov_writeout()+0x14: call without frame pointer save/setup
> >> drivers/gpu/drm/i915/i915_params.o: warning: objtool: __llvm_gcov_flush()+0x0: call without frame pointer save/setup
> --
> >> drivers/gpu/drm/i915/i915_irq.o: warning: objtool: __llvm_gcov_writeout()+0x14: call without frame pointer save/setup
> >> drivers/gpu/drm/i915/i915_irq.o: warning: objtool: __llvm_gcov_flush()+0x0: call without frame pointer save/setup
> --
> >> drivers/gpu/drm/i915/i915_scatterlist.o: warning: objtool: __llvm_gcov_writeout()+0x13: call without frame pointer save/setup
> >> drivers/gpu/drm/i915/i915_scatterlist.o: warning: objtool: __llvm_gcov_flush()+0x0: call without frame pointer save/setup
> --
> >> drivers/gpu/drm/i915/i915_suspend.o: warning: objtool: __llvm_gcov_writeout()+0x14: call without frame pointer save/setup
> >> drivers/gpu/drm/i915/i915_suspend.o: warning: objtool: __llvm_gcov_flush()+0x0: call without frame pointer save/setup
> --
> >> drivers/gpu/drm/i915/i915_sysfs.o: warning: objtool: __llvm_gcov_writeout()+0x14: call without frame pointer save/setup
> >> drivers/gpu/drm/i915/i915_sysfs.o: warning: objtool: __llvm_gcov_flush()+0x0: call without frame pointer save/setup
> --
> >> drivers/gpu/drm/i915/i915_switcheroo.o: warning: objtool: __llvm_gcov_writeout()+0x14: call without frame pointer save/setup
> >> drivers/gpu/drm/i915/i915_switcheroo.o: warning: objtool: __llvm_gcov_flush()+0x0: call without frame pointer save/setup
> --
> >> drivers/gpu/drm/i915/i915_utils.o: warning: objtool: __llvm_gcov_writeout()+0x14: call without frame pointer save/setup
> >> drivers/gpu/drm/i915/i915_utils.o: warning: objtool: __llvm_gcov_flush()+0x0: call without frame pointer save/setup
> --
> >> drivers/gpu/drm/i915/intel_device_info.o: warning: objtool: __llvm_gcov_writeout()+0x14: call without frame pointer save/setup
> >> drivers/gpu/drm/i915/intel_device_info.o: warning: objtool: __llvm_gcov_flush()+0x0: call without frame pointer save/setup
> ..
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdniUJj%2BRTiD886%3DTA4gC8g0iZ16phRSDK%3DvLcZfTUa_RA%40mail.gmail.com.
