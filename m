Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB5VN2H7AKGQEUN25Q7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id 681982D84E4
	for <lists+clang-built-linux@lfdr.de>; Sat, 12 Dec 2020 06:36:55 +0100 (CET)
Received: by mail-vk1-xa40.google.com with SMTP id g199sf4683884vke.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 21:36:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607751414; cv=pass;
        d=google.com; s=arc-20160816;
        b=QiRqqG23otNxUK89hDykrQh0guj6lMR1xP7/hGvU0fAaZ0N+ueYwK85HbFLc4CYDAN
         TrvlWXOHHaDvLKRYPZCHT6CAs7Y7tjN8DTHJEQgaNms78opQIj4PVgVJj0dN8rNeQnpY
         MgvGaVEfxZEtg/TjdARmza6yvbKCqFEMYhqtWkFWmtn+DjVc5YsEtI09KwojRlwWe5Ao
         wvam+bO52t0N1jkxgaaSbMKBLF3YFnf3QNj831HNDZoCHSCHUHeVTsWM+CB0pnluHp0q
         qUoSyX1ot6ZuRgH1ExXhGmeielAC4inB1JPLJzQck5qHlDL463hcAUTxurfdfav/jbNF
         lL7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=aFMa0lQUG3CDXHLL++0KlKWs7FQM/D2jXt/Ws1Bxe98=;
        b=KpDhFEDqQjHUJbIYyx4En97pcup19D0K7jcMT88tCv6aE7dfJ2Xce0i+1XKTaOW8RW
         VZQNXkrFdAoWLdnLhecK/7KXz5Jd6G9dYd6kc5l6//ID1wo/qcW0Vk7BmB5A4tjZcn9W
         00+6yTJQkkfsl/zW0wqWX5Lu0TrdQAhu1r3TqYBeY16HdRRITbzCvwkqfSSggZ4461Oq
         /In1VxWgbPjv7LIe1qE2O/WAiYMoklGasVE+pNKZSyXAjcvDClq6RtV86fyAycGttMSP
         /C5Qhg+VE5TtQIeXVuw7wULv73Vu909vmJXC/wLaFhNtope0WpfeOJ4OoqtdWJ1SpaIz
         8PoQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YvJPlg3j;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::131 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aFMa0lQUG3CDXHLL++0KlKWs7FQM/D2jXt/Ws1Bxe98=;
        b=AI3eKmmU0sV06+mlnxjljglsQ+qrCgTzGd95iy7i57/Xa3On4zUiPsU2DTCJ/SBo7X
         wSxETid80RtWHSs9eKnsERueLia/YSzu5I8Fgn7aOVIw80cD4vKGF4cU7T+4IRn1CC20
         lcBs0uEuSBsQdVCshe2VST91FgWZDiQIwAVQjbEhhP3SNK47Ra3C6c6QTyiXTOx1ZJ19
         3t4rSXnr1wSKOWbAKjbkOsbqw+CdmO1GH9vKBXDu+7bMOcQWyw7riKvkp2xEB1T6l2BY
         1UDCOeJS8ae8h/suOriePfnf4DmRS3Ey1mC47ScDVXcN7K3uWK7OitNKgvGk25Z4+Lhu
         ulJA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aFMa0lQUG3CDXHLL++0KlKWs7FQM/D2jXt/Ws1Bxe98=;
        b=qDv11kACSABwU+/ea8ZDZM2BjaicbXuKw4foGIdeycO8rB5JoSNzU9tuOOJbSA/LEi
         bWALwFHOD9cAeh/I+x4EcyXXD6k3+Hki9WvX4FAhb1frqYnql4NZnwJvxk34VqfDt+/b
         hHj1HvAS+9mXl+TAt3DjmG8yHXJb3+ga+b8iPPdKjBRn9S2bJgRBzciWHBmcE6d6w5KC
         p4qR0LjNO3bwqaUqbIQyoxorzZc3uJIJjdInNXBKUt2+KAnDpsWTgpqbWn6xWXkeOMwJ
         YCjhxojjJr/UnAmyC1XbnLArTSlaOFEPWN0mFWAGAtDdYLI320etBWZWLGnigehqU6FB
         ANog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=aFMa0lQUG3CDXHLL++0KlKWs7FQM/D2jXt/Ws1Bxe98=;
        b=DdlhEpEaKd9Iu16fppJksEpiNeUYBBGAfq5iuUrBQ3Ncl7eonr3/hvDEEgSKHAa7uI
         GIfD67uX75PYcq2CmVVrHtRXoKMg/vw78JzGYsK287FOllGNCACTLKLtPuFxcbD14h5V
         YU6E8dlo/SOll2EJQ92RfaTTezBQf5lm8ZmBTSqdLwAi1H/LneqofVZpvXfPZbbNVa7m
         tk7V+g9H3w0c+8JGSiP1cUHScevl4XpybEJAJqXb9jdQ2GQ1diYxdBfxGkMgFLkTtcgJ
         COnfEBWGvYrrpSHaGqIKCaGOUcp3maCZiGal7+1XB5lt2Zq00/yfXy1Xv/K+MsDCQ8bj
         l2/w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532z5VGDmmNeoeg5T2HomcgMfx58cIL+e+rxCRuFHLSmYNunl/4W
	uBLH7qao/1iOCc5SgRd8XTc=
X-Google-Smtp-Source: ABdhPJw2hMinALYorKBr6QAnril4ixrtz2XXEkQMSptqYfRQySYXcmEsomCW1c8ChgQX/k9r4Eo+mg==
X-Received: by 2002:ab0:2a4a:: with SMTP id p10mr15804994uar.95.1607751414154;
        Fri, 11 Dec 2020 21:36:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f315:: with SMTP id p21ls1403819vsf.6.gmail; Fri, 11 Dec
 2020 21:36:53 -0800 (PST)
X-Received: by 2002:a05:6102:1cd:: with SMTP id s13mr16338777vsq.26.1607751413631;
        Fri, 11 Dec 2020 21:36:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607751413; cv=none;
        d=google.com; s=arc-20160816;
        b=VNalIbK1fKIrphhgspSjM4bKZTGYYEfVj8tPk2c6f/jkUOSFU5ccwrdIRVeCGSc4Op
         x0Cq3y7963kh+PF943VAhJYIjqjAdJKX+RNHTfv77oYIg+xtJGBnHvh03gBIwLrwurBu
         cOYRxEP8UkTA/AW1TrQSfcNQfX0+ai8dZRCt2S6dhUddOsNKSdJVi8n1YWQM9mcVCtTw
         Tk2Q2/qQg34X3rJy6fOlCiL41iuul9M53OU+Pd2Z/TgWO7TmEUlclUnnXS18r8Qiofug
         ssrUNeY7AIa5JuYlzdrQgjh44+uBcXeDKOOSF+9IXISSQV/QWnpM0h9PJJOnPFFLDs09
         wQlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=vSCDB4EHCQU9ROBR/VZlKTRCV+Sd9/bSdKUOb1rebYE=;
        b=Q3EcOEGqFPdYbXHnlo7pMlJ5+BKa/SU+j2lkgWSx+D+oL7QbLF1fB66P2OvYc4Imbs
         psf6QLJJxtkd9NLbzCQoPhmg/jol0Bcx6J0bTENSP+JjHCNV9kyhr6gUFa3l3YVVamLG
         1nRnCtrZ6BZ/rXiRqbN7cCPy+A6sofT3AqQ9zOFsN0P6nCdt/XzIIIjzxSY1Q4Ioz5LZ
         sklg25DJ1Pji1Xyaw+MVVyig/sOg0JVTYppTZrloaczhNsA3aABGKmOgYV/4jbs7wbx2
         gWvnz3qDljnRWwgPIR+kXfMhpdA2NWZtVOiJ22TqNmlOCldFmLveSyw5jGelpxEg238B
         MCWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YvJPlg3j;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::131 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x131.google.com (mail-il1-x131.google.com. [2607:f8b0:4864:20::131])
        by gmr-mx.google.com with ESMTPS id k67si668659vkg.1.2020.12.11.21.36.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Dec 2020 21:36:53 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::131 as permitted sender) client-ip=2607:f8b0:4864:20::131;
Received: by mail-il1-x131.google.com with SMTP id q1so10882060ilt.6
        for <clang-built-linux@googlegroups.com>; Fri, 11 Dec 2020 21:36:53 -0800 (PST)
X-Received: by 2002:a05:6e02:1021:: with SMTP id o1mr942459ilj.277.1607751412966;
        Fri, 11 Dec 2020 21:36:52 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id t22sm6935458ill.35.2020.12.11.21.36.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Dec 2020 21:36:52 -0800 (PST)
Date: Fri, 11 Dec 2020 22:36:50 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kernel test robot <lkp@intel.com>
Cc: Kees Cook <keescook@chromium.org>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>,
	Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [linux-next:master 12465/13205] ld.lld: error: undefined symbol:
 __compiletime_assert_323
Message-ID: <20201212053650.GA744550@ubuntu-m3-large-x86>
References: <202012120730.ofPw8Ytp-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202012120730.ofPw8Ytp-lkp@intel.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=YvJPlg3j;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::131 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sat, Dec 12, 2020 at 07:19:35AM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   3cc2bd440f2171f093b3a8480a4b54d8c270ed38
> commit: ae56c5a72eadc2149cc49306c4a00e4c6e970384 [12465/13205] ubsan: enable for all*config builds
> config: mips-randconfig-r012-20201209 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 5ff35356f1af2bb92785b38c657463924d9ec386)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install mips cross compiling tool for clang build
>         # apt-get install binutils-mips-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=ae56c5a72eadc2149cc49306c4a00e4c6e970384
>         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>         git fetch --no-tags linux-next master
>         git checkout ae56c5a72eadc2149cc49306c4a00e4c6e970384
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> Note: the linux-next/master HEAD 3cc2bd440f2171f093b3a8480a4b54d8c270ed38 builds fine.
>       It may have been fixed somewhere.
> 
> All errors (new ones prefixed by >>):
> 
> >> ld.lld: error: undefined symbol: __compiletime_assert_323
>    >>> referenced by mremap.c
>    >>>               mremap.o:(get_extent) in archive mm/built-in.a
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

Also filed here: https://github.com/ClangBuiltLinux/linux/issues/1212

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201212053650.GA744550%40ubuntu-m3-large-x86.
