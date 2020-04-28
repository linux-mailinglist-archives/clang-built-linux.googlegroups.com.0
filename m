Return-Path: <clang-built-linux+bncBDYJPJO25UGBBCVUUH2QKGQE2AHCHZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BBD71BC52B
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Apr 2020 18:30:03 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id 22sf19223191otg.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 28 Apr 2020 09:30:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588091402; cv=pass;
        d=google.com; s=arc-20160816;
        b=p8amn7Fuw3+/Z+eY+1VOUWhjIYEkxTI0ccWh50U7x59CROz0IboLd0rt/yMMzIuAZI
         CJ0smFtkKy1s0ALpQsyx6q5rqppYBkay7ZK63DSRDVgzy/o9MaCXRjpvgVE3Wz7gKWq+
         34pzVxHlW4vvoZUQ6+6DvwNXVZzoh9ncIpfhthv+PnpckKKL6d7VPmk6AlQb3XKhYT8Q
         ttueAfof4nRnJfnMgUS2/cWzaXdkXxvCfElDvYOrXri+S/Zn9jOr3O0KJfatSnaA64YE
         5k1aRrlLVJFPlHCyiFCtiZd+gTJNf390k9HAyH7MibT60WHxIjvqCsToEgweEX9KxFhz
         xZ3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=yp/TXx9guFhXyWUKp7iS28vpDPM8bFgJDBGnBDGLk7U=;
        b=vmD4vh2ZeeQ2JILe0O97urIjp0j2Fz+0lKfJ6j2Ifa9Nie6Rfh1WtZ52Kphnv8tYuL
         ZAkrzntNrXCOvcpy9oMQefWGKEnnh9BEXGne0UKt8Di2m4/3XbmOCKcH1izmU/Wgya6O
         DKIRD/VLk8mlsq8DxW/JHDhx0Y5wMH9/yp2tu/IGaWJtDteV0CVynR1o8U641mTiaPZL
         kR7qtS85Zj4eV7l/jbDUdZ5z+V9QAadl0VF9AKutq4+W7o7cIc9UIZ3kIwfklio7xj6P
         IJdJHGK+mAY1CaGwXdduh4nOM84r1RoZ5urDLdquUDdKMRuOH8c3Q0gdc1CXxtz/1pzr
         ZQDQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qx2jU62q;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yp/TXx9guFhXyWUKp7iS28vpDPM8bFgJDBGnBDGLk7U=;
        b=BhML87qhFR3PnKFIAc/wxNme0MU8SrDKatZnbmoffXuiwOXuIZ7GPfOqOksqwZtWhM
         PLIVZGsxTQW0kazbbsZDu5EpFXfd48DkwHnQuVAYYpl8G6b6SGvvwBQZ7MKo9i43WikM
         bUHy4RmR/ICjSPGvmbQvHZJ+xY9nPWugswcfU9mwjb9zLIAZj0wzIrHt690Ls9xGsgPv
         vEk9OOm86OKzYCeCcLeLyz2yL1vcv21HN5syRmOqhlxohk3mMYJIh/QJhiKAGmpRaLZw
         U9DRIreU/7YOa8s5a48BPiS6Rm5fDCyScrJJ7PeGeOpih++qE6s3/rEoY9eaM7T8HgCI
         rBlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yp/TXx9guFhXyWUKp7iS28vpDPM8bFgJDBGnBDGLk7U=;
        b=lxbB8nsUw+/KLnS/poLZwZPLfKwuy0rS+7i/9saYt43UdhUGKTQRzxByXtCZJGtz+W
         FwJWjbY/aiXONHcq91eS26Ct1qTXqT4KT8tk9KaOJR4/sSegbwDCIwEXRQ2H1OwBATIv
         IiFROHUsQ3798AL8kAtbC3Eus6wSo6NJD5zxsLHB8IIsy5Oovx9TNAYTKeKHgIt8XmzW
         NH4vSNR+NAE+Oti0MWNkgs/stSBHwnO0ey9mUBWZOwa3l7GG9zpSe/G3DeYD6kqshgbi
         oWwmxtF1534swqLvwa4BnKALTbJ1DABSIFCEqyyrS9Rs26AAlk0yJ4M0LIDgmd3TA+Qm
         jJIw==
X-Gm-Message-State: AGi0PuaM4YELG6pXjlSeiPHJdnEUZMaT3F7NZ19rviy6L4SgWU+dcYbN
	LNFEJr/K4wS5j5zhvyFqud8=
X-Google-Smtp-Source: APiQypKA3m6totgGQlN7PHXp5VlzklAzpwf0uBdv3mokdKlEMB+elgKmxWOsLw1GZKuUjgTj0Ckgkw==
X-Received: by 2002:a05:6830:92:: with SMTP id a18mr23947647oto.317.1588091402148;
        Tue, 28 Apr 2020 09:30:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:69d7:: with SMTP id v23ls5747379oto.0.gmail; Tue, 28 Apr
 2020 09:30:01 -0700 (PDT)
X-Received: by 2002:a9d:620c:: with SMTP id g12mr23764717otj.158.1588091401719;
        Tue, 28 Apr 2020 09:30:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588091401; cv=none;
        d=google.com; s=arc-20160816;
        b=hgiFFfJo0nvPGbnk6bMQeDjM/1cMEfRgCFf7NHj2VymLEXBl8QVf+0qRNvlIQhprkM
         L74pXRXRcl2MA6Njc64sKBi3mrxCeXdtJ7tUZakbiQxvBsYhURRvxVN6VQXxfJKDaSO0
         exhS93nl0F8UvgawKFdl+cXvyWKoYqXbyUI/HMSNyJ8XuKbX93/GCPJitttSXNGCXEVg
         SwQ4Je8x4kF/1wFg9h38XAeqoB6ibPbJ/+HA8G5+JPZyr+yKlXcNcq+JWTZ/GMoGqRT/
         N5ISVTOHs6kDOO0Qp4cS0sG+uo7kU/1bwBtXYiZ32FlW4gp1+DjtuUTdHWWm3XZRFUBx
         FH3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=sXS7825xL4jBZlpw8Qc+4a/hbXcXxvTjm+BaLEIjegQ=;
        b=Mk45+npKsx/qLP3wp1HSq88hkZ6woPk8pUNUw/y/9/UfGKdwWcvMyuL1uIuSx/WkW3
         LwIiLIvibjHQSKpcgrW45jD9+ITcyFWqjAYcL1Hvya+CAxwqMxyPXA0yFuh25mZI6fjv
         Ayi/WXEY5p4aAjsaCXUVa8kv9BzYTcLFsiwPhD2ap/3IYHLCQuj4kRvherQt/2YzYK4K
         E3P5yE9q5u3ddND8FN1FcFIvMyggbQrlHpOxYDaA37F9P3jH4EsjKUJpuBtLtDkE6vb9
         8tvviHyXGXiSqxm0JP4EM8A84j7hl8gOFBUb5oQQMiU7oQ0O9FQ/Y7A/GOcCOPjMXYJ9
         kgQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qx2jU62q;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com. [2607:f8b0:4864:20::52f])
        by gmr-mx.google.com with ESMTPS id o6si464030otk.5.2020.04.28.09.30.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Apr 2020 09:30:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52f as permitted sender) client-ip=2607:f8b0:4864:20::52f;
Received: by mail-pg1-x52f.google.com with SMTP id n16so10560559pgb.7
        for <clang-built-linux@googlegroups.com>; Tue, 28 Apr 2020 09:30:01 -0700 (PDT)
X-Received: by 2002:a62:5c6:: with SMTP id 189mr30078168pff.39.1588091400363;
 Tue, 28 Apr 2020 09:30:00 -0700 (PDT)
MIME-Version: 1.0
References: <202004281944.ls16q15M%lkp@intel.com>
In-Reply-To: <202004281944.ls16q15M%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 28 Apr 2020 09:29:49 -0700
Message-ID: <CAKwvOdk-1BvgbZn1gi9s-fsrpuZ1qDkrRmNpakr54Zj3Cb-yjw@mail.gmail.com>
Subject: Re: [joe-lawrence:jp-v3-klp-convert 2/46] ld.lld: error: section
 .text at 0xFFFFFFFF80200000 of size 0xBFCE0C exceeds available address space
To: clang-built-linux <clang-built-linux@googlegroups.com>, Philip Li <philip.li@intel.com>
Cc: kbuild-all@lists.01.org, kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qx2jU62q;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52f
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

so this is the MIPS bug that Nathan and Fangrui are chasing, though it
was only sent to us likely because the bisection stopped on a patch
that had to do with objtool (not a warning from objtool).

On Tue, Apr 28, 2020 at 4:06 AM kbuild test robot <lkp@intel.com> wrote:
>
> TO: Josh Poimboeuf <jpoimboe@redhat.com>
> CC: Joe Lawrence <joe.lawrence@redhat.com>
>
> tree:   https://github.com/joe-lawrence/linux jp-v3-klp-convert
> head:   63a04f6899f095c7c184b531668894262b5f8f03
> commit: 30afccd232a9f34801c903e9c4f35e80f65d85e0 [2/46] livepatch: Apply vmlinux-specific KLP relocations early
> config: mips-randconfig-a001-20200428 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project f30416fdde922eaa655934e050026930fefbd260)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install mips cross compiling tool for clang build
>         # apt-get install binutils-mips-linux-gnu
>         git checkout 30afccd232a9f34801c903e9c4f35e80f65d85e0
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
> >> ld.lld: error: section .text at 0xFFFFFFFF80200000 of size 0xBFCE0C exceeds available address space
> >> ld.lld: error: section __ex_table at 0xFFFFFFFF80DFCE10 of size 0x1A78 exceeds available address space
> >> ld.lld: error: section __dbe_table at 0xFFFFFFFF80DFE888 of size 0x0 exceeds available address space
> >> ld.lld: error: section .rodata at 0xFFFFFFFF80DFF000 of size 0x624084 exceeds available address space
>    ld.lld: error: section .data..page_aligned at 0xFFFFFFFF81424000 of size 0x2000 exceeds available address space
>    ld.lld: error: section .data..compoundliteral at 0xFFFFFFFF81426000 of size 0x1FC exceeds available address space
>    ld.lld: error: section .data..compoundliteral.79 at 0xFFFFFFFF814261FC of size 0x5 exceeds available address space
>    ld.lld: error: section .data..compoundliteral.41 at 0xFFFFFFFF81426204 of size 0x84 exceeds available address space
>    ld.lld: error: section .data..compoundliteral.42 at 0xFFFFFFFF81426288 of size 0x58 exceeds available address space
>    ld.lld: error: section .data..compoundliteral.43 at 0xFFFFFFFF814262E0 of size 0x88 exceeds available address space
>    ld.lld: error: section .data..compoundliteral.4 at 0xFFFFFFFF81426368 of size 0x40 exceeds available address space
>    ld.lld: error: section .data..compoundliteral.5 at 0xFFFFFFFF814263A8 of size 0x64 exceeds available address space
>    ld.lld: error: section .data..compoundliteral.6 at 0xFFFFFFFF8142640C of size 0x78 exceeds available address space
>    ld.lld: error: section .data..compoundliteral.18 at 0xFFFFFFFF81426484 of size 0x10 exceeds available address space
>    ld.lld: error: section .data..compoundliteral.19 at 0xFFFFFFFF81426494 of size 0x2C exceeds available address space
>    ld.lld: error: section .data..compoundliteral.20 at 0xFFFFFFFF814264C0 of size 0x18 exceeds available address space
>    ld.lld: error: section .data..compoundliteral.21 at 0xFFFFFFFF814264D8 of size 0x1C exceeds available address space
>    ld.lld: error: section .data..compoundliteral.22 at 0xFFFFFFFF814264F4 of size 0x10 exceeds available address space
>    ld.lld: error: section .data..compoundliteral.3 at 0xFFFFFFFF81426504 of size 0x34 exceeds available address space
>    ld.lld: error: section .data..compoundliteral.23 at 0xFFFFFFFF81426538 of size 0x8 exceeds available address space
>    ld.lld: error: too many errors emitted, stopping now (use -error-limit=0 to see all errors)
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202004281944.ls16q15M%25lkp%40intel.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk-1BvgbZn1gi9s-fsrpuZ1qDkrRmNpakr54Zj3Cb-yjw%40mail.gmail.com.
