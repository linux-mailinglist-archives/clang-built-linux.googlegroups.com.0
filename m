Return-Path: <clang-built-linux+bncBDYJPJO25UGBB4MXZD2QKGQEXBH3O6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id A66351C654A
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 May 2020 02:59:30 +0200 (CEST)
Received: by mail-yb1-xb3c.google.com with SMTP id o134sf761860yba.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 17:59:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588726769; cv=pass;
        d=google.com; s=arc-20160816;
        b=dLPM2PZozwyEyL94ymK9LE16NGFO7ed84M3fyinAHwXAXaTyYnpxT+b3bH+LpfdXmK
         khtQMgR0HZeaArBvohKQmTHF032GFDsD+h0BPNsv8KayR6vWK/oZy4HMBJJmIXCX9y0e
         wuh4rwFT9NJPfh5lzzhjPUM7PEm08P9wcRJ+0sSEwh2v/1pfngGM3AZCb1sHb0XaFxHH
         ZK71y3FSDv8tZ1vUAXc/HFDjbWOljuFSJbJ9/ypdWbH7ci+CwIS1z+HSRwHbpX3qiUXn
         Ty1XILLsD1qvCPN0xN48FMyqFDrM7Hu909qhN6Ni9ra9tFi7V0X/P+0Hf+3umC45z7rD
         bUhQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=tiZRyOjteO3B+lUcIUvys686xLv9HDsw7iVKeUxh4ys=;
        b=w6T7UqfVbsrMnUljn+x8V1LZ10xTRf95WlvpCGUi+AZs+J8BaM42kzHZFm+wyL/2Tg
         0Qet1NXs/UohmXSlePoQeTsJ6BGPYpJKJiCA5aPAUu/rF0CB7z/gqh6x+0MTZdTRYctc
         1NvBwZn9yocHSVUIaD72+6RwtOAjjXkw+2glNYeC/uL+enXt//hwZPPuvMr0GjFG+CWJ
         4lL+anrrVHsUE9ZNhrUVqsPNgs3mNCA4Hf1iDVL0to9IYZzLxPhZeYJUKILgVy684ej3
         0znsq8sHvwPU7RgHG+7Ov+sBaeb42GOypPrBlODx9MSUpGLxOb3/y37RHiRO550zhGUO
         KjTg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=K5e+LQR8;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::635 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tiZRyOjteO3B+lUcIUvys686xLv9HDsw7iVKeUxh4ys=;
        b=p8P6ZGn3PrwV3OnqhjS0CaQ2r37+DG8ZHfOkwN8qb9jX8tW7vUMBC5DQN4u3uOvcSS
         eakWrq51r6fzSYqFujce9PtHdY83ovIeTvLImR85z51jlqL+XyM1rDXIIxN0f+N7b6YY
         SjoTnLbN6rXycU/wP50RTTNzA2IN1uFwku4ZSl55yM9/BfegnnIGnhIYBxw44jpvGBMh
         REwBgbiGAsU9xqj4qQdVfSADNItbkmPHYzhn2flblrYgPdOWiQz/apPpERIewQNDkiYA
         8Zj1ZPcPD29a20p2z1XCdQDcjhQlCpeAr56rkO26V1MXcAu7xIvMtrVTvZZ8uW2dXZ6y
         PjMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tiZRyOjteO3B+lUcIUvys686xLv9HDsw7iVKeUxh4ys=;
        b=j3iCu3We92xfxSBeYjFupqlZ7Q8zzEX6FY1T7MWgf448bSITss4TvrX+9skbBn1Yjf
         aLcIlCVVyOiK+GV4Epr/TJNooqIjzVxMb+QuW6saCs/lO7s8Km5jfNAqJbhG4lXOYp6y
         vMUPSLTJQoo/qNx11OciKH12RY+xJXtjDZOrXxN7kCrJzmGowq1HmFq5pZkNkDgHltS0
         oitj1Tw84RROEWI/Qco1boX4EGJdckv276wD3eWsySDdVp2fmpRQ09UcepieXdkEmtmq
         1QLycEHB+oNfn0iBb3jFSgjfnnrvMR4yJS60ZYsgkQNJpVN0xwnaesboq1dGCqYWBhn3
         lbxA==
X-Gm-Message-State: AGi0PuYmDRXe3GggNUD33fSppRAVIcfxG01CJgtAUlN0LVNJNh95KydN
	H8jo9giygLKyyOJfSGU2pEE=
X-Google-Smtp-Source: APiQypIN3cF7OFsOP28H+OOJwlcJrDoyYFmEOfwxiRBbAMHonWKERJppiFpSyhqiRY5jZ6t6uQD+3Q==
X-Received: by 2002:a25:b70c:: with SMTP id t12mr9918529ybj.273.1588726769432;
        Tue, 05 May 2020 17:59:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:3897:: with SMTP id f145ls30942yba.9.gmail; Tue, 05 May
 2020 17:59:29 -0700 (PDT)
X-Received: by 2002:a25:1c44:: with SMTP id c65mr10370948ybc.518.1588726769098;
        Tue, 05 May 2020 17:59:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588726769; cv=none;
        d=google.com; s=arc-20160816;
        b=pqDWKxacElhbtcYG54mK7NrIW0LaCDDx17ZYsjBY8DfUvemUG64zgIVfloAYsICHf1
         NrV4x7xZ9L3I8AyjFbSfu+hD18o96l6h6GTssKT7IWI4ULw+NkOOfwDLvMtrXaKtGWR9
         Gzt2f4NkdH50x2gwyoE54+ZTBaCE9ByxJHQ4c64PgMY4B5xBWhDHgcprqp+vrsBsB0Et
         NunBG+uHpD7mnf6vbjrnlQdDp9GLhOTrlomlJBtD63Kdi7750+G1m6ZtcTHaAh3dQHxY
         BN3NxKhVtRbAYp/a2TGv18AVCCIfuLEDRF0uQ9yfQD6RT8lTvN9W88bdG77ZdJAX8UE7
         3E2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=LF2ljxzQr6cx4aE4YWP3+gMVmE3iLqrlQuzt/WAi/Y8=;
        b=ZEcmr2Xb5VCyrfM9SRqkGocerSMSIN59SxKnIWWXnj9XSfALAIcg1eHCzHMYBzwTg1
         zvw/+zxSVrhd5fEjH35ff04MX0V+TMjtH9TyaqFp+trGqi/CFWgaFG7xPNuB7tv/V2yI
         /e5NSSNxQNYuM1ro9cxaWQbw2pYlfI0aBF4PoJMKvIi6+0EFRIPL7bob9ZOtnumd608S
         ix8PIxyO0nNUT8kJ+48ZxPmKL4TkV6feWKJGo63av+QpPb8VM4hlx/RS5+OeqaIBfeJL
         Ouxv3B+ntDtRbuJ+5b9yRgkHCYq1MSH/+hFq1tvdAKAkiZ7HXwU+i0Vli7qV4ZhSN3RL
         rdzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=K5e+LQR8;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::635 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com. [2607:f8b0:4864:20::635])
        by gmr-mx.google.com with ESMTPS id o65si21853yba.5.2020.05.05.17.59.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 May 2020 17:59:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::635 as permitted sender) client-ip=2607:f8b0:4864:20::635;
Received: by mail-pl1-x635.google.com with SMTP id h11so1585158plr.11
        for <clang-built-linux@googlegroups.com>; Tue, 05 May 2020 17:59:29 -0700 (PDT)
X-Received: by 2002:a17:902:b20e:: with SMTP id t14mr5347014plr.223.1588726767917;
 Tue, 05 May 2020 17:59:27 -0700 (PDT)
MIME-Version: 1.0
References: <202005060844.QaKkh5m9%lkp@intel.com>
In-Reply-To: <202005060844.QaKkh5m9%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 5 May 2020 17:59:17 -0700
Message-ID: <CAKwvOdnhzcFThaFp05f1urE9W7BDZ2VfETE7=pwnqhZhvt_K2w@mail.gmail.com>
Subject: Re: [linux-next:master 5848/6711] drivers/net/ethernet/aquantia/atlantic/hw_atl2/hw_atl2_utils.o:
 warning: objtool: __llvm_gcov_writeout()+0x13: call without frame pointer save/setup
To: Philip Li <philip.li@intel.com>
Cc: Dmitry Bogdanov <dbogdanov@marvell.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Igor Russkikh <irusskikh@marvell.com>, 
	Mark Starovoytov <mstarovoitov@marvell.com>, kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=K5e+LQR8;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::635
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
Can we please have this particular warning filtered to only our
mailing list? It's another known issue that's emailing unrelated
authors.  Sorry, and we'll get it fixed.

On Tue, May 5, 2020 at 5:52 PM kbuild test robot <lkp@intel.com> wrote:
>
> Hi Dmitry,
>
> First bad commit (maybe != root cause):
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   7def1ef0f72c3ebe3e42467d2f73c4e56153fa49
> commit: c1be0bf092bd292ee617622c116f5981a34cce96 [5848/6711] net: atlantic: common functions needed for basic A2 init/deinit hw_ops
> config: x86_64-randconfig-d001-20200502 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project ff6a0b6a8ee74693e9711973028a8a327adf9cd5)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         git checkout c1be0bf092bd292ee617622c116f5981a34cce96
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> drivers/net/ethernet/aquantia/atlantic/hw_atl2/hw_atl2_utils.o: warning: objtool: __llvm_gcov_writeout()+0x13: call without frame pointer save/setup
> >> drivers/net/ethernet/aquantia/atlantic/hw_atl2/hw_atl2_utils.o: warning: objtool: __llvm_gcov_flush()+0x0: call without frame pointer save/setup
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202005060844.QaKkh5m9%25lkp%40intel.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnhzcFThaFp05f1urE9W7BDZ2VfETE7%3DpwnqhZhvt_K2w%40mail.gmail.com.
