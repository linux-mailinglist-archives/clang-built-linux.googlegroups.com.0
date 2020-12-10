Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYPEZH7AKGQEDSHOKPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 688C02D65FB
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Dec 2020 20:09:23 +0100 (CET)
Received: by mail-pl1-x640.google.com with SMTP id c12sf3838469pll.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Dec 2020 11:09:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607627361; cv=pass;
        d=google.com; s=arc-20160816;
        b=0NDQXRrIqFdtTNDbyumCthXh8GbLTJ6htgsXe08LZAKo5+6Q7p49UCkRuUbHvYtKz/
         jrBhBeje6C4vcELhYnD7N2sD4cwZwn0uBZGwNGja+2twCHz7sO91sWaSCaiw1QeAcWvQ
         4/VoiF7LhIJzCkMbdzTa18Evr7JgK8NsQjYYn3bzN4FJ5/HPiaHaSzCFVUE/apmvunx9
         ZXqhtbBHCCknXrJ+XpfQPd92xSMosZszjnNr3uCJrwhGIHLRkbPaVlSQ91UWKZV/rOFI
         2mz3sdYImFlfSFGgLNpbOZpiAlnwRzrZ6I/vkN8xfzCzTXXBTuCqeqK+Hoh+yKuYD/lf
         ycPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ORqyN7ZLXvHXlVL04KWQ/GQgYhnqHUKia1oXZAOadQw=;
        b=s66ipWvQBtCBni2R+ZdB48lwqAQAwdW4CGi1s8YBTJ4Fu1OtazxrFItIplQOmnbmNm
         RGfsII7FW/YvusCph9itA1svX72nXT+8N+vqlUymrMXET72xDORwNQdZznz28FwMBxM8
         8WZpYOvzY/fHalpM7IG4/uksRYvY0FSORQzjaAiHK35Z2zZYz/KC+GXjkJ2FWlSixnCK
         IsQnchD1T5Ns+fmT2j+Riy/QneiFoL+qAseJoGSSstMkUycXhHs5QiP45KX7Da6ve6Vw
         MYVSrSY33EVPg7agBCHs91JiZ0D4hs5PNPNFAJ0AJsb5FvNj5kj0qa8M8i4kLxON2JYZ
         IbdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pTVH0elX;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ORqyN7ZLXvHXlVL04KWQ/GQgYhnqHUKia1oXZAOadQw=;
        b=qWXiQFiO/xMTP/Fp2U5jn1rQ+0tt1X1qKsSQpOglximrfzsOhqqABaE+pA/qznOmo/
         8gOFA/URhfIe6HgicnFZ6Yca4WqUtiwXjeBI+2Z/Mw/Ao8y+pxuo840Bx/MdGPY7bd8t
         J0ADZpUioWc8seX3wy9Ecb88fKGRkY6RpJmxQRUpwcLsf5B75DMozyF345nUsy7/QLip
         zHTUHZeeY72b0DFmju3yx+IzjzbowsN7Wb4XoN/lim5t5v6Bh1kkpSY39t2l7mJA37nR
         mGzc9kTTOcsNFPvnI5/VZZ3w4vN5Cjpg64kkhNNvTFw6i882pdp4NEAFuJSYEh3TAVeM
         s14w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ORqyN7ZLXvHXlVL04KWQ/GQgYhnqHUKia1oXZAOadQw=;
        b=PFvYJCgFOgnUOWrc9BmqUgK5zIoa/cPYVBQHgyfHknjInXyYsSdjuO6wImy6EeF97j
         ixNOpEYu4LpS199vICH5hOfEgdIbz9AKQzSdEOaiP+Omqu5muRAU3EM6tdRhte4+9uq9
         EqtxG9a69mou5WWYOfC8KxH2VYLXNBUlhEhl8V5NThvh9uk15jL83ZzM0Bi9EyP+kN2N
         Jl79c8+D652HV7ZU56DH1UsQErFNBgoUeWFs8gBpy9Qtr7JYonFIExY2D4xoYYapsCN3
         wS7PjUdjyDDMqxKuwQDafAjhueuFPW8RNmuycop3mx1i6lCoUq9R9jWwzNwQ6FV7Rwc3
         lcqw==
X-Gm-Message-State: AOAM5325eNs3JiS2tXBD4LO8HpjpzagQl82sc2dBVnSdejCKq8l84rWu
	UmmNUNqKaHyAZFKXd/49QEI=
X-Google-Smtp-Source: ABdhPJygh99QbTFKsMOXdKytIdKjMwzs7SELqs5Oh/iFlukeyXgVVOSJCo5khN7PRv3uzsBFDfGRoA==
X-Received: by 2002:a05:6a00:230d:b029:18b:9cb:dead with SMTP id h13-20020a056a00230db029018b09cbdeadmr8003112pfh.24.1607627361675;
        Thu, 10 Dec 2020 11:09:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:96b7:: with SMTP id g23ls2335420pfk.9.gmail; Thu, 10 Dec
 2020 11:09:21 -0800 (PST)
X-Received: by 2002:a63:ec57:: with SMTP id r23mr7724773pgj.315.1607627360970;
        Thu, 10 Dec 2020 11:09:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607627360; cv=none;
        d=google.com; s=arc-20160816;
        b=e6J6Ds/DhVitdKWnK1NzPwaAWoc2HyatPBwUZ3k7HtfAk/SAh7ZyaIHqDn79OHNvJD
         2bj9hqNAeFkrfAemrl7v7/b6PjWpce1tDXHc02wwPatF0Df1eKh6yg1cCSR67Z1Rzeol
         tl/UF5W2MppciQ6DVK8TpolnLiElq97nrHFEQQnzDTs9kHb6qKWK0pXV9vTxapxGjaDj
         kWy0ZvBnAHNODbB00/WghfWuTzR6J1hCfZDjOy9V2Hugic56a5Hn9d9++7GPzXLvhy9C
         g04R/MdvSwRvk5al3HVEMue0UnBR8e2NGj0ysJEXiPrQcCWMB+vhCIaMGA8eHxtVYYkl
         jogg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=dcz04tAdagNYUvKLrbeA8tP4ZHWkQupRbR9Xm8QRD5E=;
        b=feEetJe0m5hlCVKSEl189uzouT2/mr8UNBLB+73mf5EENAhlyQT0I6TZnOY/GvH4zI
         tcvXflKkIuuBgrJIbvrrd8hAbIYGp3LrBBgVqTM8TNPjCQL56hH8SVBqsSw0c8iQTeHX
         TEAeYZkCvL9GzIxSrgz0UMFDTZ0M3MT2uJ7CgqyrPIUvvhNWxGaTUuoElYu1FfoOGyqk
         CaC0y2VDNpLrp+OOyElFVdbz/9kWfvH+45yAF2LMV3e0LokSu/zv29dHhy7dUzYwmeFg
         LFlDJzZwvf9TCBskszVg8S1orJaRKozZVJvqtWxlgo3I2vNJ+/DFPJwtYo0zhsnFQAhO
         OevA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pTVH0elX;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com. [2607:f8b0:4864:20::429])
        by gmr-mx.google.com with ESMTPS id q18si483586pgv.5.2020.12.10.11.09.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Dec 2020 11:09:20 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::429 as permitted sender) client-ip=2607:f8b0:4864:20::429;
Received: by mail-pf1-x429.google.com with SMTP id i3so5021906pfd.6
        for <clang-built-linux@googlegroups.com>; Thu, 10 Dec 2020 11:09:20 -0800 (PST)
X-Received: by 2002:a63:184c:: with SMTP id 12mr553515pgy.381.1607627360455;
 Thu, 10 Dec 2020 11:09:20 -0800 (PST)
MIME-Version: 1.0
References: <202012101717.BwzOJEiz-lkp@intel.com>
In-Reply-To: <202012101717.BwzOJEiz-lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 10 Dec 2020 11:09:08 -0800
Message-ID: <CAKwvOdkOuEck7BB_-4_NkcJkDB8PsSjAsP0GjVvLMV3ECZheEw@mail.gmail.com>
Subject: Re: [lee-linaro:android-3.18-preview 213/310] clang-12clang-12:
 error: unknown argument: '-mtraceback=no'
To: Philip Li <philip.li@intel.com>
Cc: kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=pTVH0elX;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::429
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

Hi Philip,
We only supported kernel builds with Clang since v4.4.y; would you
mind disabling clang builds for Lee's 3.18 branch?

On Thu, Dec 10, 2020 at 1:58 AM kernel test robot <lkp@intel.com> wrote:
>
> TO: Lee Jones <lee.jones@linaro.org>
>
> tree:   https://git.linaro.org/people/lee.jones/linux.git android-3.18-preview
> head:   83102d5e212965387f1db5eef72bf3bf0d322b15
> commit: cdf2b03a6f4efd138211f1c38b0103031f7a62c1 [213/310] regulator: fan53555: fix I2C device ids
> config: powerpc64-randconfig-r036-20201209 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 1968804ac726e7674d5de22bc2204b45857da344)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install powerpc64 cross compiling tool for clang build
>         # apt-get install binutils-powerpc64-linux-gnu
>         git remote add lee-linaro https://git.linaro.org/people/lee.jones/linux.git
>         git fetch --no-tags lee-linaro android-3.18-preview
>         git checkout cdf2b03a6f4efd138211f1c38b0103031f7a62c1
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
> >> clang-12clang-12: error: unknown argument: '-mtraceback=no'
>    clang-12: error: unknown argument: '-mcall-aixdesc'
>    clang-12: error: unknown argument: '-mtraceback=no'
>    clang-12: error: unknown argument: '-mno-string'
>    : error: unknown argument: '-mcall-aixdesc'
>    make[3]: *** [scripts/Makefile.build:153: scripts/mod/devicetable-offsets.s] Error 1
>    clang-12: error: unknown argument: '-mno-string'
>    clang-12: error: unsupported argument '-maltivec' to option 'Wa,'
>    make[3]: *** [scripts/Makefile.build:258: scripts/mod/empty.o] Error 1
>    make[3]: Target '__build' not remade because of errors.
>    make[2]: *** [scripts/Makefile.build:402: scripts/mod] Error 2
>    /usr/bin/ld: scripts/dtc/dtc-parser.tab.o:(.bss+0x28): multiple definition of `yylloc'; scripts/dtc/dtc-lexer.lex.o:(.bss+0x58): first defined here
>    clang-12: error: linker command failed with exit code 1 (use -v to see invocation)
>    make[3]: *** [scripts/Makefile.host:100: scripts/dtc/dtc] Error 1
>    make[3]: Target '__build' not remade because of errors.
>    make[2]: *** [scripts/Makefile.build:402: scripts/dtc] Error 2
>    make[2]: Target '__build' not remade because of errors.
>    make[1]: *** [Makefile:560: scripts] Error 2
>    clang-12: error: unknown argument: '-mtraceback=no'
>    clang-12: error: unknown argument: '-mcall-aixdesc'
>    clang-12: error: unknown argument: '-mno-string'
>    make[2]: *** [./Kbuild:36: kernel/bounds.s] Error 1
>    make[2]: Target '__build' not remade because of errors.
>    make[1]: *** [Makefile:1022: prepare0] Error 2
>    make[1]: Target 'modules_prepare' not remade because of errors.
>    make: *** [Makefile:149: sub-make] Error 2
>    make: Target 'modules_prepare' not remade because of errors.
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012101717.BwzOJEiz-lkp%40intel.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkOuEck7BB_-4_NkcJkDB8PsSjAsP0GjVvLMV3ECZheEw%40mail.gmail.com.
