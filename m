Return-Path: <clang-built-linux+bncBDYJPJO25UGBBM4VUL5AKGQEUWYIEUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B4B42553D5
	for <lists+clang-built-linux@lfdr.de>; Fri, 28 Aug 2020 06:40:21 +0200 (CEST)
Received: by mail-il1-x13f.google.com with SMTP id v15sf2499178ilm.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 21:40:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598589620; cv=pass;
        d=google.com; s=arc-20160816;
        b=sibAcdv4FmdJJnqyx2MFR/tSppb3wiJx+Zh3l0X6z9Phn3Zy9QOQr6ZgiaFCp/+kwo
         wfjr9iUq0W5igMpvJ6tNZ/r9o6/tm6DUpEnahZ8+/TiNHaChiTGrWqrvVJ5TxKmbWyDj
         j+cY4XA9eBEHw0t8cmXai8jOfsQjGlJmkV71Y+nt4PJiIulxkrveko+b78qCsLVXYxhF
         cSpZJ/oXEiMnFIAlL4Yn9hQkrutIi6XZFP5cjI6VYHVGXhqQhEJAO7dcZ6s5b/rQy8lM
         TYt1dKyI88TGDlfbCzKGRG/LoX+ZtQ4PmYJtRJkQ7pQwEhTdPCXY7mxEAKpRD+koWrzc
         iiOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Ne9v/h0lFdbuLMMYi7b5UEsB91It191Kgp8yI12pMtg=;
        b=Z6HP0AumvxmbYAFU5IXa7bB/CIm3AE6eJf0hRCx5kTbgLTpi5BdGz3+e2WVVNoW7US
         LQEkWDPV1igARxWPadfMGUBM1usK9cH0q6Qvh5yErukFkLkZRr8+GRsiitsJ3vkvdCd5
         NQDxujJNs3GJg2D4BE+faseKda3SnEGlM0EHIwEfagXIrOXXi3d49WdYkPD1UDIyT5O/
         6qqXKAa8Gsmz0vI2+pPWqP695bl41Dulm4HG66jpv3VURYuQ+QkG+c4rnbG91A9I5O0y
         RysrC93ZEbb3Qjakfuxd0TSjrcWDiIkhMvFVReDcLcPbRyMXIHCd05+DJnjt0WCwRDnr
         nZlQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DW1AqPYD;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1030 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ne9v/h0lFdbuLMMYi7b5UEsB91It191Kgp8yI12pMtg=;
        b=YCtU9+tGU1PFBzcC5+YosGiDPV+tE0m5psr0GaJceyov9+tIxF8lmvcJAz9LZsm7vZ
         s4Ax5T7hxvwcMxDXyH22kfPXYpYJS3CqYBxqQgx/gAd+5XRJWftt6qYRJkg7KaGYRAfE
         +fjh/eRYKC8KNbSRctitbCJBT7EKzNvpjEGjPgdlwWxg3kAxODoTCwxBQhLOLtt2w4JP
         vIPRJrVuh0MJmosK5Eaenl/xdYtWwFAqklY0ZiIbP+rrYM4B3Hj/ZE7+S+bFsQW4HNAk
         vge4JF6H3b/XnAsn0LpUq3L5fz8CnHH2EEj1SPBKhp+WzEFc8xYQ1jZIi3n7twjFQprT
         X4yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ne9v/h0lFdbuLMMYi7b5UEsB91It191Kgp8yI12pMtg=;
        b=d3sglmITrHzKP/kkkYoYRH0fh/eJUGTEGbwfj8SOn0K/I9v7ns29m4HJOQWANHGj8h
         43V5RhU0PisGahLvryBblNAixgVsZdlJMnJ0R/6t8W0seI7/Vud4NBBJY1lX/X428SE9
         nVfHoUqVDPjdzPcer0ToF2dumG9oKzzVMkGtI5neYP1V6G4ibpuNf/+C7QhwthxeQ1K9
         f8Cha54HCpgANZVgcA3QOsl0RIelrvs7Gw2jRnZ7WSkCG4WK+J5+OOAq9Tx0qJZAZmG9
         kSXQCtvfZywTX/drEFSehuW8XeHFjM+GkMkFQZJdg7Ms79qA/SFxKchcJXF8K2tq+1Wz
         WzkA==
X-Gm-Message-State: AOAM530lQN9OwREsFPS+2Uh0jbaFrdqkJvPqJdEUDU1WnyUYLps2Exg0
	+8q6tHo1IxjvyY0N4BH96tI=
X-Google-Smtp-Source: ABdhPJy68pZB1ic5Ba2gPT194/fvcWQBRh7rlf0r29aa0YdUdI7GyIAfQAtE7yxwgVh1fJrh+RE0IA==
X-Received: by 2002:a05:6638:2653:: with SMTP id n19mr22933864jat.34.1598589619945;
        Thu, 27 Aug 2020 21:40:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:a1d2:: with SMTP id b79ls311ill.0.gmail; Thu, 27 Aug
 2020 21:40:19 -0700 (PDT)
X-Received: by 2002:a92:6a09:: with SMTP id f9mr30574ilc.273.1598589619584;
        Thu, 27 Aug 2020 21:40:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598589619; cv=none;
        d=google.com; s=arc-20160816;
        b=bItuD3AsZDxmu36aYyFLCvHNaxO6HLYSG5p+ckquyL4RbUuiM21XoL1YMBlvUvNa5f
         1OTRoYPGQPNLgq0ZrcAZIAWFDD8fHOU3LE+FtT+RxCApdUmZNkPfTDsCsXWRjv5I1pZK
         7aitH4v3ERYYsXqlZGAwmNOTxnNb56b2mggxfJfbRc8F7oF4q9w4qx47e8UOXPfTsgKD
         USaSj9BhDA9akYzaqLYS/uyc2Ma1qBbTk5ejKqpAZsE2iJxBp/BX9DrnBlybCo0FSS+l
         xuEFB5Bp6QuEqGdcQ2/OkEP7grxNWFnzxWxIesHRf8H7UGaYmM0+YM644uWdNtJwsjoZ
         MXUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4XDIin7rEsBXSlEJP37LdY74HQO4Sc7+qQHr62gkHQo=;
        b=04+peQ8APxMz6o1pffQmqZbhLykaLRei4vJjtx9YrU+PwUs/sjCml/4XgDRWIKcEP4
         UPjdJJ7N3V/h1HLvJWx/M3nnGoSv8TjdiK+gURf06nuR+X03LTT4K8iUHdGmCU1qre5S
         pYClpHSYFfcX3mGZDGJ38JMAuNx+p+t8pd/As/abndF0n1iS/0LjDYqu/nV8d3JjzXjz
         P+EVUieG8FCkGW3y3W4SY+WtUmvKUllCCrhNLiLkiaDR+jSXyuae1KYWJGBpO7vncIrY
         d79GpaIIIPu5QyTUxW/kCIfB7M8RVsoT0W9mhanzk2k92UsvNcV733rqayz/o4IEtVvO
         ci+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DW1AqPYD;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1030 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com. [2607:f8b0:4864:20::1030])
        by gmr-mx.google.com with ESMTPS id j9si55139iow.3.2020.08.27.21.40.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Aug 2020 21:40:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1030 as permitted sender) client-ip=2607:f8b0:4864:20::1030;
Received: by mail-pj1-x1030.google.com with SMTP id mw10so21469pjb.2
        for <clang-built-linux@googlegroups.com>; Thu, 27 Aug 2020 21:40:19 -0700 (PDT)
X-Received: by 2002:a17:902:be0f:: with SMTP id r15mr19104641pls.84.1598589618408;
 Thu, 27 Aug 2020 21:40:18 -0700 (PDT)
MIME-Version: 1.0
References: <202008270229.SO2NVhto%lkp@intel.com>
In-Reply-To: <202008270229.SO2NVhto%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 27 Aug 2020 21:40:07 -0700
Message-ID: <CAKwvOdnAOE+NCOg3r732UbaQaW474h-zBdKhBZoYRw=yyM1GZA@mail.gmail.com>
Subject: Re: [linux-next:master 3345/3539] ld.lld: warning:
 drivers/built-in.a(nvme/host/hwmon.o):(.data..compoundliteral) is being
 placed in '.data..compoundliteral'
To: Kees Cook <keescook@chromium.org>, Michael Ellerman <mpe@ellerman.id.au>
Cc: kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, 
	Linux Memory Management List <linux-mm@kvack.org>, kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=DW1AqPYD;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1030
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

On Wed, Aug 26, 2020 at 11:21 AM kernel test robot <lkp@intel.com> wrote:
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   f37be72473a007d5d66c52f6cdf43fc8c0961f95
> commit: 5934637641c863cc2c1765a0d01c5b6f53ecc4fc [3345/3539] lib/string.c: implement stpcpy
> config: powerpc64-randconfig-r001-20200826 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 7cfcecece0e0430937cf529ce74d3a071a4dedc6)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install powerpc64 cross compiling tool for clang build
>         # apt-get install binutils-powerpc64-linux-gnu
>         git checkout 5934637641c863cc2c1765a0d01c5b6f53ecc4fc
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
>    ld.lld: warning: kernel/built-in.a(trace/trace_syscalls.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'

We probably need to add `.data..compoundliteral*` to the ppc linker scripts?

> >> ld.lld: warning: drivers/built-in.a(nvme/host/hwmon.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >> ld.lld: warning: drivers/built-in.a(nvme/host/hwmon.o):(.data..compoundliteral.13) is being placed in '.data..compoundliteral.13'
>    ld.lld: warning: drivers/built-in.a(nvme/host/hwmon.o):(.data..compoundliteral.14) is being placed in '.data..compoundliteral.14'
>    ld.lld: warning: drivers/built-in.a(nvme/host/hwmon.o):(.data..compoundliteral.15) is being placed in '.data..compoundliteral.15'
>    ld.lld: warning: drivers/built-in.a(media/tuners/tuner-types.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>    ld.lld: warning: drivers/built-in.a(media/tuners/tuner-types.o):(.data..compoundliteral.79) is being placed in '.data..compoundliteral.79'
>    ld.lld: warning: drivers/built-in.a(power/supply/power_supply_hwmon.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>    ld.lld: warning: drivers/built-in.a(power/supply/power_supply_hwmon.o):(.data..compoundliteral.3) is being placed in '.data..compoundliteral.3'
>    ld.lld: warning: drivers/built-in.a(power/supply/power_supply_hwmon.o):(.data..compoundliteral.4) is being placed in '.data..compoundliteral.4'
>    ld.lld: warning: drivers/built-in.a(power/supply/power_supply_hwmon.o):(.data..compoundliteral.5) is being placed in '.data..compoundliteral.5'
>    ld.lld: warning: drivers/built-in.a(power/supply/power_supply_hwmon.o):(.data..compoundliteral.6) is being placed in '.data..compoundliteral.6'
>    ld.lld: warning: drivers/built-in.a(power/supply/power_supply_hwmon.o):(.data..compoundliteral.7) is being placed in '.data..compoundliteral.7'
> >> ld.lld: warning: drivers/built-in.a(hwmon/w83773g.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >> ld.lld: warning: drivers/built-in.a(hwmon/w83773g.o):(.data..compoundliteral.6) is being placed in '.data..compoundliteral.6'
>    ld.lld: warning: drivers/built-in.a(hwmon/w83773g.o):(.data..compoundliteral.7) is being placed in '.data..compoundliteral.7'
>    ld.lld: warning: drivers/built-in.a(hwmon/w83773g.o):(.data..compoundliteral.8) is being placed in '.data..compoundliteral.8'
>    ld.lld: warning: drivers/built-in.a(hwmon/adm1177.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>    ld.lld: warning: drivers/built-in.a(hwmon/adm1177.o):(.data..compoundliteral.9) is being placed in '.data..compoundliteral.9'
>    ld.lld: warning: drivers/built-in.a(hwmon/adm1177.o):(.data..compoundliteral.10) is being placed in '.data..compoundliteral.10'
>    ld.lld: warning: drivers/built-in.a(hwmon/adm1177.o):(.data..compoundliteral.11) is being placed in '.data..compoundliteral.11'
>    ld.lld: warning: drivers/built-in.a(hwmon/adt7411.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>    ld.lld: warning: drivers/built-in.a(hwmon/adt7411.o):(.data..compoundliteral.4) is being placed in '.data..compoundliteral.4'
>    ld.lld: warning: drivers/built-in.a(hwmon/adt7411.o):(.data..compoundliteral.5) is being placed in '.data..compoundliteral.5'
>    ld.lld: warning: drivers/built-in.a(hwmon/adt7411.o):(.data..compoundliteral.6) is being placed in '.data..compoundliteral.6'
> >> ld.lld: warning: drivers/built-in.a(hwmon/axi-fan-control.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >> ld.lld: warning: drivers/built-in.a(hwmon/axi-fan-control.o):(.data..compoundliteral.12) is being placed in '.data..compoundliteral.12'
>    ld.lld: warning: drivers/built-in.a(hwmon/axi-fan-control.o):(.data..compoundliteral.13) is being placed in '.data..compoundliteral.13'
>    ld.lld: warning: drivers/built-in.a(hwmon/axi-fan-control.o):(.data..compoundliteral.14) is being placed in '.data..compoundliteral.14'
>    ld.lld: warning: drivers/built-in.a(hwmon/axi-fan-control.o):(.data..compoundliteral.15) is being placed in '.data..compoundliteral.15'
>    ld.lld: warning: drivers/built-in.a(hwmon/axi-fan-control.o):(.data..compoundliteral.16) is being placed in '.data..compoundliteral.16'
> >> ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >> ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.16) is being placed in '.data..compoundliteral.16'
>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.17) is being placed in '.data..compoundliteral.17'
>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.18) is being placed in '.data..compoundliteral.18'
>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.19) is being placed in '.data..compoundliteral.19'
>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.20) is being placed in '.data..compoundliteral.20'
>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.21) is being placed in '.data..compoundliteral.21'
>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.22) is being placed in '.data..compoundliteral.22'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.7) is being placed in '.data..compoundliteral.7'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.8) is being placed in '.data..compoundliteral.8'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.9) is being placed in '.data..compoundliteral.9'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.10) is being placed in '.data..compoundliteral.10'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.11) is being placed in '.data..compoundliteral.11'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.12) is being placed in '.data..compoundliteral.12'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.13) is being placed in '.data..compoundliteral.13'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.14) is being placed in '.data..compoundliteral.14'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.15) is being placed in '.data..compoundliteral.15'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.16) is being placed in '.data..compoundliteral.16'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.17) is being placed in '.data..compoundliteral.17'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.18) is being placed in '.data..compoundliteral.18'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.19) is being placed in '.data..compoundliteral.19'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.20) is being placed in '.data..compoundliteral.20'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.21) is being placed in '.data..compoundliteral.21'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.22) is being placed in '.data..compoundliteral.22'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.23) is being placed in '.data..compoundliteral.23'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.24) is being placed in '.data..compoundliteral.24'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.25) is being placed in '.data..compoundliteral.25'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.26) is being placed in '.data..compoundliteral.26'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.27) is being placed in '.data..compoundliteral.27'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.28) is being placed in '.data..compoundliteral.28'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.29) is being placed in '.data..compoundliteral.29'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.30) is being placed in '.data..compoundliteral.30'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.31) is being placed in '.data..compoundliteral.31'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.32) is being placed in '.data..compoundliteral.32'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.33) is being placed in '.data..compoundliteral.33'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.34) is being placed in '.data..compoundliteral.34'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm95245.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm95245.o):(.data..compoundliteral.5) is being placed in '.data..compoundliteral.5'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm95245.o):(.data..compoundliteral.6) is being placed in '.data..compoundliteral.6'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm95245.o):(.data..compoundliteral.7) is being placed in '.data..compoundliteral.7'
>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.24) is being placed in '.data..compoundliteral.24'
>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.25) is being placed in '.data..compoundliteral.25'
>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.26) is being placed in '.data..compoundliteral.26'
>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.27) is being placed in '.data..compoundliteral.27'
>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.28) is being placed in '.data..compoundliteral.28'
>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.29) is being placed in '.data..compoundliteral.29'
>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.30) is being placed in '.data..compoundliteral.30'
>    ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>    ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compoundliteral.15) is being placed in '.data..compoundliteral.15'
>    ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compoundliteral.16) is being placed in '.data..compoundliteral.16'
>    ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compoundliteral.17) is being placed in '.data..compoundliteral.17'
>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral.3) is being placed in '.data..compoundliteral.3'
>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral.4) is being placed in '.data..compoundliteral.4'
>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral.5) is being placed in '.data..compoundliteral.5'
>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral.6) is being placed in '.data..compoundliteral.6'
>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral.7) is being placed in '.data..compoundliteral.7'
>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral.8) is being placed in '.data..compoundliteral.8'
>    ld.lld: warning: net/built-in.a(ipv6/addrconf_core.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>    ld.lld: warning: <internal>:(.symtab) is being placed in '.symtab'
>    ld.lld: warning: <internal>:(.shstrtab) is being placed in '.shstrtab'
>    ld.lld: warning: <internal>:(.strtab) is being placed in '.strtab'
>    ld.lld: warning: kernel/built-in.a(trace/trace_syscalls.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >> ld.lld: warning: drivers/built-in.a(nvme/host/hwmon.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >> ld.lld: warning: drivers/built-in.a(nvme/host/hwmon.o):(.data..compoundliteral.13) is being placed in '.data..compoundliteral.13'
>    ld.lld: warning: drivers/built-in.a(nvme/host/hwmon.o):(.data..compoundliteral.14) is being placed in '.data..compoundliteral.14'
>    ld.lld: warning: drivers/built-in.a(nvme/host/hwmon.o):(.data..compoundliteral.15) is being placed in '.data..compoundliteral.15'
>    ld.lld: warning: drivers/built-in.a(media/tuners/tuner-types.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>    ld.lld: warning: drivers/built-in.a(media/tuners/tuner-types.o):(.data..compoundliteral.79) is being placed in '.data..compoundliteral.79'
>    ld.lld: warning: drivers/built-in.a(power/supply/power_supply_hwmon.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>    ld.lld: warning: drivers/built-in.a(power/supply/power_supply_hwmon.o):(.data..compoundliteral.3) is being placed in '.data..compoundliteral.3'
>    ld.lld: warning: drivers/built-in.a(power/supply/power_supply_hwmon.o):(.data..compoundliteral.4) is being placed in '.data..compoundliteral.4'
>    ld.lld: warning: drivers/built-in.a(power/supply/power_supply_hwmon.o):(.data..compoundliteral.5) is being placed in '.data..compoundliteral.5'
>    ld.lld: warning: drivers/built-in.a(power/supply/power_supply_hwmon.o):(.data..compoundliteral.6) is being placed in '.data..compoundliteral.6'
>    ld.lld: warning: drivers/built-in.a(power/supply/power_supply_hwmon.o):(.data..compoundliteral.7) is being placed in '.data..compoundliteral.7'
> >> ld.lld: warning: drivers/built-in.a(hwmon/w83773g.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >> ld.lld: warning: drivers/built-in.a(hwmon/w83773g.o):(.data..compoundliteral.6) is being placed in '.data..compoundliteral.6'
>    ld.lld: warning: drivers/built-in.a(hwmon/w83773g.o):(.data..compoundliteral.7) is being placed in '.data..compoundliteral.7'
>    ld.lld: warning: drivers/built-in.a(hwmon/w83773g.o):(.data..compoundliteral.8) is being placed in '.data..compoundliteral.8'
>    ld.lld: warning: drivers/built-in.a(hwmon/adm1177.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>    ld.lld: warning: drivers/built-in.a(hwmon/adm1177.o):(.data..compoundliteral.9) is being placed in '.data..compoundliteral.9'
>    ld.lld: warning: drivers/built-in.a(hwmon/adm1177.o):(.data..compoundliteral.10) is being placed in '.data..compoundliteral.10'
>    ld.lld: warning: drivers/built-in.a(hwmon/adm1177.o):(.data..compoundliteral.11) is being placed in '.data..compoundliteral.11'
>    ld.lld: warning: drivers/built-in.a(hwmon/adt7411.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>    ld.lld: warning: drivers/built-in.a(hwmon/adt7411.o):(.data..compoundliteral.4) is being placed in '.data..compoundliteral.4'
>    ld.lld: warning: drivers/built-in.a(hwmon/adt7411.o):(.data..compoundliteral.5) is being placed in '.data..compoundliteral.5'
>    ld.lld: warning: drivers/built-in.a(hwmon/adt7411.o):(.data..compoundliteral.6) is being placed in '.data..compoundliteral.6'
> >> ld.lld: warning: drivers/built-in.a(hwmon/axi-fan-control.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >> ld.lld: warning: drivers/built-in.a(hwmon/axi-fan-control.o):(.data..compoundliteral.12) is being placed in '.data..compoundliteral.12'
>    ld.lld: warning: drivers/built-in.a(hwmon/axi-fan-control.o):(.data..compoundliteral.13) is being placed in '.data..compoundliteral.13'
>    ld.lld: warning: drivers/built-in.a(hwmon/axi-fan-control.o):(.data..compoundliteral.14) is being placed in '.data..compoundliteral.14'
>    ld.lld: warning: drivers/built-in.a(hwmon/axi-fan-control.o):(.data..compoundliteral.15) is being placed in '.data..compoundliteral.15'
>    ld.lld: warning: drivers/built-in.a(hwmon/axi-fan-control.o):(.data..compoundliteral.16) is being placed in '.data..compoundliteral.16'
> >> ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >> ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.16) is being placed in '.data..compoundliteral.16'
>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.17) is being placed in '.data..compoundliteral.17'
>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.18) is being placed in '.data..compoundliteral.18'
>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.19) is being placed in '.data..compoundliteral.19'
>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.20) is being placed in '.data..compoundliteral.20'
>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.21) is being placed in '.data..compoundliteral.21'
>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.22) is being placed in '.data..compoundliteral.22'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.7) is being placed in '.data..compoundliteral.7'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.8) is being placed in '.data..compoundliteral.8'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.9) is being placed in '.data..compoundliteral.9'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.10) is being placed in '.data..compoundliteral.10'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.11) is being placed in '.data..compoundliteral.11'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.12) is being placed in '.data..compoundliteral.12'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.13) is being placed in '.data..compoundliteral.13'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.14) is being placed in '.data..compoundliteral.14'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.15) is being placed in '.data..compoundliteral.15'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.16) is being placed in '.data..compoundliteral.16'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.17) is being placed in '.data..compoundliteral.17'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.18) is being placed in '.data..compoundliteral.18'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.19) is being placed in '.data..compoundliteral.19'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.20) is being placed in '.data..compoundliteral.20'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.21) is being placed in '.data..compoundliteral.21'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.22) is being placed in '.data..compoundliteral.22'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.23) is being placed in '.data..compoundliteral.23'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.24) is being placed in '.data..compoundliteral.24'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.25) is being placed in '.data..compoundliteral.25'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.26) is being placed in '.data..compoundliteral.26'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.27) is being placed in '.data..compoundliteral.27'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.28) is being placed in '.data..compoundliteral.28'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.29) is being placed in '.data..compoundliteral.29'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.30) is being placed in '.data..compoundliteral.30'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.31) is being placed in '.data..compoundliteral.31'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.32) is being placed in '.data..compoundliteral.32'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.33) is being placed in '.data..compoundliteral.33'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.34) is being placed in '.data..compoundliteral.34'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm95245.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm95245.o):(.data..compoundliteral.5) is being placed in '.data..compoundliteral.5'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm95245.o):(.data..compoundliteral.6) is being placed in '.data..compoundliteral.6'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm95245.o):(.data..compoundliteral.7) is being placed in '.data..compoundliteral.7'
>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.24) is being placed in '.data..compoundliteral.24'
>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.25) is being placed in '.data..compoundliteral.25'
>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.26) is being placed in '.data..compoundliteral.26'
>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.27) is being placed in '.data..compoundliteral.27'
>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.28) is being placed in '.data..compoundliteral.28'
>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.29) is being placed in '.data..compoundliteral.29'
>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.30) is being placed in '.data..compoundliteral.30'
>    ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>    ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compoundliteral.15) is being placed in '.data..compoundliteral.15'
>    ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compoundliteral.16) is being placed in '.data..compoundliteral.16'
>    ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compoundliteral.17) is being placed in '.data..compoundliteral.17'
>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral.3) is being placed in '.data..compoundliteral.3'
>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral.4) is being placed in '.data..compoundliteral.4'
>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral.5) is being placed in '.data..compoundliteral.5'
>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral.6) is being placed in '.data..compoundliteral.6'
>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral.7) is being placed in '.data..compoundliteral.7'
>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral.8) is being placed in '.data..compoundliteral.8'
>    ld.lld: warning: net/built-in.a(ipv6/addrconf_core.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>    ld.lld: warning: <internal>:(.symtab) is being placed in '.symtab'
>    ld.lld: warning: <internal>:(.shstrtab) is being placed in '.shstrtab'
>    ld.lld: warning: <internal>:(.strtab) is being placed in '.strtab'
>    ld.lld: warning: kernel/built-in.a(trace/trace_syscalls.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >> ld.lld: warning: drivers/built-in.a(nvme/host/hwmon.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >> ld.lld: warning: drivers/built-in.a(nvme/host/hwmon.o):(.data..compoundliteral.13) is being placed in '.data..compoundliteral.13'
>    ld.lld: warning: drivers/built-in.a(nvme/host/hwmon.o):(.data..compoundliteral.14) is being placed in '.data..compoundliteral.14'
>    ld.lld: warning: drivers/built-in.a(nvme/host/hwmon.o):(.data..compoundliteral.15) is being placed in '.data..compoundliteral.15'
>    ld.lld: warning: drivers/built-in.a(media/tuners/tuner-types.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>    ld.lld: warning: drivers/built-in.a(media/tuners/tuner-types.o):(.data..compoundliteral.79) is being placed in '.data..compoundliteral.79'
>    ld.lld: warning: drivers/built-in.a(power/supply/power_supply_hwmon.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>    ld.lld: warning: drivers/built-in.a(power/supply/power_supply_hwmon.o):(.data..compoundliteral.3) is being placed in '.data..compoundliteral.3'
>    ld.lld: warning: drivers/built-in.a(power/supply/power_supply_hwmon.o):(.data..compoundliteral.4) is being placed in '.data..compoundliteral.4'
>    ld.lld: warning: drivers/built-in.a(power/supply/power_supply_hwmon.o):(.data..compoundliteral.5) is being placed in '.data..compoundliteral.5'
>    ld.lld: warning: drivers/built-in.a(power/supply/power_supply_hwmon.o):(.data..compoundliteral.6) is being placed in '.data..compoundliteral.6'
>    ld.lld: warning: drivers/built-in.a(power/supply/power_supply_hwmon.o):(.data..compoundliteral.7) is being placed in '.data..compoundliteral.7'
> >> ld.lld: warning: drivers/built-in.a(hwmon/w83773g.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >> ld.lld: warning: drivers/built-in.a(hwmon/w83773g.o):(.data..compoundliteral.6) is being placed in '.data..compoundliteral.6'
>    ld.lld: warning: drivers/built-in.a(hwmon/w83773g.o):(.data..compoundliteral.7) is being placed in '.data..compoundliteral.7'
>    ld.lld: warning: drivers/built-in.a(hwmon/w83773g.o):(.data..compoundliteral.8) is being placed in '.data..compoundliteral.8'
>    ld.lld: warning: drivers/built-in.a(hwmon/adm1177.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>    ld.lld: warning: drivers/built-in.a(hwmon/adm1177.o):(.data..compoundliteral.9) is being placed in '.data..compoundliteral.9'
>    ld.lld: warning: drivers/built-in.a(hwmon/adm1177.o):(.data..compoundliteral.10) is being placed in '.data..compoundliteral.10'
>    ld.lld: warning: drivers/built-in.a(hwmon/adm1177.o):(.data..compoundliteral.11) is being placed in '.data..compoundliteral.11'
>    ld.lld: warning: drivers/built-in.a(hwmon/adt7411.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>    ld.lld: warning: drivers/built-in.a(hwmon/adt7411.o):(.data..compoundliteral.4) is being placed in '.data..compoundliteral.4'
>    ld.lld: warning: drivers/built-in.a(hwmon/adt7411.o):(.data..compoundliteral.5) is being placed in '.data..compoundliteral.5'
>    ld.lld: warning: drivers/built-in.a(hwmon/adt7411.o):(.data..compoundliteral.6) is being placed in '.data..compoundliteral.6'
>    ld.lld: warning: drivers/built-in.a(hwmon/axi-fan-control.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>    ld.lld: warning: drivers/built-in.a(hwmon/axi-fan-control.o):(.data..compoundliteral.12) is being placed in '.data..compoundliteral.12'
>    ld.lld: warning: drivers/built-in.a(hwmon/axi-fan-control.o):(.data..compoundliteral.13) is being placed in '.data..compoundliteral.13'
>    ld.lld: warning: drivers/built-in.a(hwmon/axi-fan-control.o):(.data..compoundliteral.14) is being placed in '.data..compoundliteral.14'
>    ld.lld: warning: drivers/built-in.a(hwmon/axi-fan-control.o):(.data..compoundliteral.15) is being placed in '.data..compoundliteral.15'
>    ld.lld: warning: drivers/built-in.a(hwmon/axi-fan-control.o):(.data..compoundliteral.16) is being placed in '.data..compoundliteral.16'
>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.16) is being placed in '.data..compoundliteral.16'
>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.17) is being placed in '.data..compoundliteral.17'
>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.18) is being placed in '.data..compoundliteral.18'
>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.19) is being placed in '.data..compoundliteral.19'
>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.20) is being placed in '.data..compoundliteral.20'
>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.21) is being placed in '.data..compoundliteral.21'
>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.22) is being placed in '.data..compoundliteral.22'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.7) is being placed in '.data..compoundliteral.7'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.8) is being placed in '.data..compoundliteral.8'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.9) is being placed in '.data..compoundliteral.9'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.10) is being placed in '.data..compoundliteral.10'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.11) is being placed in '.data..compoundliteral.11'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.12) is being placed in '.data..compoundliteral.12'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.13) is being placed in '.data..compoundliteral.13'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.14) is being placed in '.data..compoundliteral.14'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.15) is being placed in '.data..compoundliteral.15'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.16) is being placed in '.data..compoundliteral.16'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.17) is being placed in '.data..compoundliteral.17'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.18) is being placed in '.data..compoundliteral.18'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.19) is being placed in '.data..compoundliteral.19'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.20) is being placed in '.data..compoundliteral.20'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.21) is being placed in '.data..compoundliteral.21'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.22) is being placed in '.data..compoundliteral.22'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.23) is being placed in '.data..compoundliteral.23'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.24) is being placed in '.data..compoundliteral.24'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.25) is being placed in '.data..compoundliteral.25'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.26) is being placed in '.data..compoundliteral.26'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.27) is being placed in '.data..compoundliteral.27'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.28) is being placed in '.data..compoundliteral.28'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.29) is being placed in '.data..compoundliteral.29'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.30) is being placed in '.data..compoundliteral.30'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.31) is being placed in '.data..compoundliteral.31'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.32) is being placed in '.data..compoundliteral.32'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.33) is being placed in '.data..compoundliteral.33'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.34) is being placed in '.data..compoundliteral.34'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm95245.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm95245.o):(.data..compoundliteral.5) is being placed in '.data..compoundliteral.5'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm95245.o):(.data..compoundliteral.6) is being placed in '.data..compoundliteral.6'
>    ld.lld: warning: drivers/built-in.a(hwmon/lm95245.o):(.data..compoundliteral.7) is being placed in '.data..compoundliteral.7'
>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.24) is being placed in '.data..compoundliteral.24'
>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.25) is being placed in '.data..compoundliteral.25'
>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.26) is being placed in '.data..compoundliteral.26'
>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.27) is being placed in '.data..compoundliteral.27'
>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.28) is being placed in '.data..compoundliteral.28'
>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.29) is being placed in '.data..compoundliteral.29'
>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.30) is being placed in '.data..compoundliteral.30'
>    ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>    ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compoundliteral.15) is being placed in '.data..compoundliteral.15'
>    ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compoundliteral.16) is being placed in '.data..compoundliteral.16'
>    ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compoundliteral.17) is being placed in '.data..compoundliteral.17'
>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral.3) is being placed in '.data..compoundliteral.3'
>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral.4) is being placed in '.data..compoundliteral.4'
>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral.5) is being placed in '.data..compoundliteral.5'
>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral.6) is being placed in '.data..compoundliteral.6'
>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral.7) is being placed in '.data..compoundliteral.7'
>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral.8) is being placed in '.data..compoundliteral.8'
>    ld.lld: warning: net/built-in.a(ipv6/addrconf_core.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
>    ld.lld: warning: <internal>:(.symtab) is being placed in '.symtab'
>    ld.lld: warning: <internal>:(.shstrtab) is being placed in '.shstrtab'
>    ld.lld: warning: <internal>:(.strtab) is being placed in '.strtab'
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnAOE%2BNCOg3r732UbaQaW474h-zBdKhBZoYRw%3DyyM1GZA%40mail.gmail.com.
