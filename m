Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6EQ6TXQKGQEAGTNKKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 8438A128191
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Dec 2019 18:44:26 +0100 (CET)
Received: by mail-oi1-x238.google.com with SMTP id j3sf793102oij.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Dec 2019 09:44:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576863865; cv=pass;
        d=google.com; s=arc-20160816;
        b=fqw1Eyh0lKWlK/n1YhueVkkHanUjVyYPVR3OWSnEXm5ZjSvjSOLLyAThofbiysPPDB
         b+GS5IMZhYWHxjxTIbDoJC9DQfidlOiiaWQCP1tkBQzmmgUzGIPMS0FzU49HCYCFOTcu
         CVAXcNTZQ0tWm2XC/VaJm51rK6MDyTSn84jsjeXcdB3rNZHSpiQv3RaH97pS0mr4A7vr
         Ub8ia5srfaWfgYd35XlQVmgm1PI8cz5YpMEJEh8ziGjKSmDLnxDad9cv29SnloehQBF8
         8E1o3AoP0KjKOUU6lHWXTcEO0+dLlTJS46yo+aMXq91EQMVfiFGmVJ3DQitj+OGf/0jp
         Oy8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=NUAfv9KPCfzUtRhslooCxHCdzyIf2LSw9EOL5WxsJpM=;
        b=pvkmlqxl8yi7C3+OaqlhRJ0nFtd35xWk6X5iYGiM/cWO2xlXbIbw0z5w18/QeNIefi
         GJCjvL62k2bt2tyYwNhQMqVGy7r83bWPQ4ZPBHSm6rNn86GK7Q1GExwK+j3uKlSqu18X
         e+GKyR111imv2ohYLDCft8w6Zxxpvk5i+LgkAPepYt8pi/K2mTDVu9LRi4QVPStENOFK
         W6Tj1b+BCdrCQmi5L5hz470J82pzX91GDHmgGOk1Z2oONbhblDtZIJYHxY8eXkRmZ1Tw
         CpcvH+ktBGYuPF8H7J86E5Z/kZKXaULBkQLtlRQK2OEgR3h4MN3OmGiEdDUB0RVHh1Kh
         iJCw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LJNrnc5E;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NUAfv9KPCfzUtRhslooCxHCdzyIf2LSw9EOL5WxsJpM=;
        b=P8sgwvKc/8g9PnKqDe5Qadnjsn3nJBM3K1dF7jGAJ1e0yTY/TCrKOWHmozoew8e8v/
         QWysd2a41ektbbMQcFAHqs4FLuRPUcZjXpiPCqXEolpWfwsSXyM9DRcqQsZC4nKDGt9N
         g2q7fW2bwbQIP1cjmKBfLag0otBJgoelkMO3tkKJEH1IQPZHdIE9n7q91sCPY4lMV0zh
         L335gFWFdfhl6FZniXdt2vzwjsVnKZYRL3NwhODiTHNKmUBIGrBLaQcVDXWFCVc7ukhR
         DBlrR1W3Qf+381GdFnMMxN7T1qWzXe3jrwZlbzMwtHw8SMyYl6wTQCD81DvFbJTdab9t
         i+wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NUAfv9KPCfzUtRhslooCxHCdzyIf2LSw9EOL5WxsJpM=;
        b=uNIvJ/vCPjGGchRrWla64HZueDESNAvCFuyBZ6Q8IbwFaG1qXmMPjKmt807kHAM6K2
         j7JX6JePy2aZRt249answllIJvxZOpoMKKu1bfMQzXio2NpCWUqzBhoUXmb374I2iWUl
         iKt6VjLefK47tFnysgp3tBGXd1/HuQs1wX8/IIvjlKiT+P/eamOXrPXv7+DYs6C45ij8
         wgGSjkunnDZD/fChY2IZciwGvPs6t1Q2nembJ10f06Smh7B4Rw2Aqf+ZKwxXuHq3nEgZ
         UGtok4sEl5CiEjC4LT49Ur01qjHb4i1+bpDFOYM5m+l1gnWsdPpZOVIh3Ma3QJxCxyjz
         LnUA==
X-Gm-Message-State: APjAAAXwbQUTRd/YhKExnhJhW36IqNEV+EZfCWa+W5OlzHRTj+Ya5HG7
	RqPKYvnrM9QgIv2k5iXWju4=
X-Google-Smtp-Source: APXvYqwZyYOH/Vj8LLNolQHOF1BsZ+W3hDQVqpBmzQYgxqmOcpTufx++DryMFn3h8zHCfH/hUkTKGQ==
X-Received: by 2002:a05:6808:3c5:: with SMTP id o5mr4635211oie.142.1576863865031;
        Fri, 20 Dec 2019 09:44:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:5a87:: with SMTP id w7ls899845oth.1.gmail; Fri, 20 Dec
 2019 09:44:24 -0800 (PST)
X-Received: by 2002:a9d:7315:: with SMTP id e21mr2839925otk.255.1576863864366;
        Fri, 20 Dec 2019 09:44:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576863864; cv=none;
        d=google.com; s=arc-20160816;
        b=qVYLr22NwsVhyUSOJvuzlqVBt53ObgOcLNhnKeAjBOMe6ruONnxx7B5wO+n+3/SpwC
         xto4oAtBDoM7yiL8aldsLZGdApt/b+HEhOdeHRKVp+WvPod4CkJydvJIY2CIRJcdtGVa
         oStQbUPtmixNMExPkvUkTXHRo0GhWIUdY9jF8iEzX7/OLTNnagXL4Gq9SlcOVP6y/IWn
         QxKJ3tXUNgu0nW3K+2l0V1McgtUWa6DTe4feSWiOa4XazjYIp4CYMBEW58/AA0NUGYX6
         ypu5IqHkuuFf66D53QXkZoepU+lwrLua/qL6gjAZc+M9VfH0mxu06fxo/zyQBEGNnXAA
         5SsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=QqjQovLCySPQ/tLOKMqn8Y9XH4dG3YN8vvM1JqTlUMc=;
        b=hW5hw+rvDvPFkc7erg4XGzMhuzcM9gOzuGF70dPItV4hHQteeApMBNNbR5rWbHKQy0
         Ia79E+/Ole+HU8JyM/n/w3dSsNjsXAyG8CRwzmVtKfaUvpSKFHbZqgliL2ES0yFaktvK
         2d3+2m8LVGGCK3ZXDxocc0XQcjcaWQT1OpE6sccMiI99u9f6guwP6KiIrMjDTpQORmQz
         iDa1WeHyozepiAQ4F4TErpWbRUQksmZzX19IjJw+AeE5bqpw3QMKg3nKISq3bqPJUmdw
         2paIiJBNJxdsRleWq47GVZYxmUaqBwkhc/w+k7bZlAbIW0f41qZbhL0YV+LZMroGO6fP
         0y1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LJNrnc5E;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id d16si109331oij.1.2019.12.20.09.44.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Dec 2019 09:44:24 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id a33so5281927pgm.5
        for <clang-built-linux@googlegroups.com>; Fri, 20 Dec 2019 09:44:24 -0800 (PST)
X-Received: by 2002:a63:d249:: with SMTP id t9mr16536333pgi.263.1576863863232;
 Fri, 20 Dec 2019 09:44:23 -0800 (PST)
MIME-Version: 1.0
References: <201912201959.QalWUTrz%lkp@intel.com>
In-Reply-To: <201912201959.QalWUTrz%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 20 Dec 2019 09:44:12 -0800
Message-ID: <CAKwvOd=-G48735M_AMBc3_8993kaLMg0DN1YiBBov7PFVb80Hw@mail.gmail.com>
Subject: Re: [chanwoo:devfreq-testing 29/29] drivers//devfreq/devfreq.c:426:38:
 warning: variable 'freq' is uninitialized when used here
To: cw00.choi@samsung.com
Cc: kbuild@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild test robot <lkp@intel.com>, 
	kbuild-all@lists.01.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=LJNrnc5E;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

Hi Chanwoo,
The below warning from a 0day bot build w/ Clang looks legit, can you
please take a look?

On Fri, Dec 20, 2019 at 3:29 AM kbuild test robot <lkp@intel.com> wrote:
>
> CC: kbuild-all@lists.01.org
> TO: Chanwoo Choi <cw00.choi@samsung.com>
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/chanwoo/linux.git devfreq-testing
> head:   b5402cddb67cb59901cb74992831ef3015aed1a7
> commit: b5402cddb67cb59901cb74992831ef3015aed1a7 [29/29] PM / devfreq: passive: Add missing getting freq_range
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 50c3bd9e71254d623ed4f0b449d5620f4e965bfe)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout b5402cddb67cb59901cb74992831ef3015aed1a7
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
>    drivers//devfreq/devfreq.c:416:6: warning: unused variable 'flags' [-Wunused-variable]
>            u32 flags = 0;
>                ^
>    drivers//devfreq/devfreq.c:415:6: warning: unused variable 'err' [-Wunused-variable]
>            int err = 0;
>                ^
>    drivers//devfreq/devfreq.c:414:32: warning: unused variable 'max_freq' [-Wunused-variable]
>            unsigned long freq, min_freq, max_freq;
>                                          ^
>    drivers//devfreq/devfreq.c:414:22: warning: unused variable 'min_freq' [-Wunused-variable]
>            unsigned long freq, min_freq, max_freq;
>                                ^
> >> drivers//devfreq/devfreq.c:426:38: warning: variable 'freq' is uninitialized when used here [-Wuninitialized]
>            return devfreq_update_freq(devfreq, freq);
>                                                ^~~~
>    drivers//devfreq/devfreq.c:414:20: note: initialize the variable 'freq' to silence this warning
>            unsigned long freq, min_freq, max_freq;
>                              ^
>                               = 0
>    5 warnings generated.
>
> vim +/freq +426 drivers//devfreq/devfreq.c
>
>    404
>    405  /**
>    406   * update_devfreq() - Reevaluate the device and configure frequency.
>    407   * @devfreq:    the devfreq instance.
>    408   *
>    409   * Note: Lock devfreq->lock before calling update_devfreq
>    410   *       This function is exported for governors.
>    411   */
>    412  int update_devfreq(struct devfreq *devfreq)
>    413  {
>    414          unsigned long freq, min_freq, max_freq;
>  > 415          int err = 0;
>    416          u32 flags = 0;
>    417
>    418          if (!mutex_is_locked(&devfreq->lock)) {
>    419                  WARN(true, "devfreq->lock must be locked by the caller.\n");
>    420                  return -EINVAL;
>    421          }
>    422
>    423          if (!devfreq->governor)
>    424                  return -EINVAL;
>    425
>  > 426          return devfreq_update_freq(devfreq, freq);
>    427  }
>    428  EXPORT_SYMBOL(update_devfreq);
>    429
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D-G48735M_AMBc3_8993kaLMg0DN1YiBBov7PFVb80Hw%40mail.gmail.com.
