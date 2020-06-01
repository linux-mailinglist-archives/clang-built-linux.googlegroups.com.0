Return-Path: <clang-built-linux+bncBDYJPJO25UGBBOUF2X3AKGQE4XOMRGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 915CB1EA96D
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Jun 2020 20:02:35 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id 66sf4374395otf.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Jun 2020 11:02:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591034554; cv=pass;
        d=google.com; s=arc-20160816;
        b=fpE+Kgq6VzVFUW464+NsFbWqvf6rgFGIycna4b1pTEeLePWysEiAvpy2ylna4pDUTQ
         fy8nIG3Zbl64fsULdwozJt2ulXwKDS1ozCk+ubEEvAcq3sswuZ/QoPjO2uvrOMgPmsTF
         GnKEr/xZ/cUPHvU7MkZoEzXmx9M9WRI70yVGW7UDtoLWzXL5qttUWSi7j/VsJU9uV6uV
         9CGI91yScwAVuYI73fMAqW3IDtQEyWwwM/ocpAN7x+R3tMpP5eUskdopOw8w5efs5zHk
         dlooIVJmZhWteuZqJe9sP4mkpLTPzsk+GTmEFIPO+VLCRrXN9/mtHU/6//+UxfHvGDsA
         buUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=1Mz8rxl8Ka1RtZoejE35kjM0bOGWpRvh4XJvviBAe7U=;
        b=HaGdiRoezV/ITK10rN/sgwfDbOohyeyTcHH+GcVqK94LulXEfT103+2c1cNhNb0HGN
         kEODwBnsIGhEIjkfU3A3SfrwrV3JKHV99oL6HZvtq3QAp+br1ZFkix567UHZTay+qhDU
         uE7GJnvIxnDvjBxBR30CuMf9vm3JMXSTHOV8cKtER9wyeERPAQZCPySC4GwoOHqVOOSy
         obY7XEXB/U7ZGjZ0y9wr4AbJhFKOPoiJULfU7fpvrsAEYu1M+ma2LUYtxGA1WB3n/LM3
         6JOfv2w4q/sqvkPyYyhS2DPGcr9Z6ERPby34MmArFEk5o6o/nCb68pPWsorQgjhPCKkp
         RMTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kByfvhbr;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::629 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1Mz8rxl8Ka1RtZoejE35kjM0bOGWpRvh4XJvviBAe7U=;
        b=KkOHXMQCWY4zgVnEu5LpIghw4dv7uuTluldNJAcq12pL7vtRazfNWhWNvAI3Tx6Fwx
         2toEWJJ3W+CWCl4S5Kan9E1CWIR5Pl+M5DJbWqPkalTsvldCodLMvFZtWCh7B0/PUiP2
         +nNvNfNQEL6Ha6nHvbautBI7vznCGeg2AMy6sjOvBxvRQQa35kXmw5pkJ9tRNb3i8omL
         N2ITANNgFI62E1ZVA+UiPiJLZcmdrvrPKNi479tbPVzCmjLuF3rWsYV1G1MzErwGpenq
         bREiuvEwMHn46CLVdm9ej454d+jVcyVza1noXnLiBTc0vVLxtkeNRm/h5RKQPrj99hX2
         QTiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1Mz8rxl8Ka1RtZoejE35kjM0bOGWpRvh4XJvviBAe7U=;
        b=Gfbv9uW/RxQBxQmHOME5ncC1voPAKtc7x0SATd++l5+wTgy+fP1FXscO0cEsFVIUST
         M70Z3Df+tjncc7sMsVEC6P9XQEGdA/br31M9NpZr1GMMSkgepWsl8pB4HxlLUvbYBtmY
         O4taNLqnt5VhEr5BTWlprIJw6BcMKRbJ7B0tECLrTAISzYyWAKygjJ1MYjdzuhgrxxeH
         nErZaTSa+gQsFssjQnKU0XPYRc8kUvtdbfCA930elQ2Vt1HOiWUwF+ipy26IZt90KXF0
         6gcykacWKVlr8HNtt2Z3uKq6rCDxqzMRwfbufRa1oh0IHV6dliCVw/PrIjSU49+YOebr
         nrCQ==
X-Gm-Message-State: AOAM533TAviVkZvcWmYknMjxk5ifYS8xVrfPI627gRAGLZd3xITQPQUJ
	XDWsPxIoam3XD34hbvLU3R0=
X-Google-Smtp-Source: ABdhPJzYlbYLCr4GNu40p7elTdAmRJWs6MJNdjeVxyZ0/0GafAZSGq6jD7uPmcoogsyxGg8Fm6hJfw==
X-Received: by 2002:a05:6830:4ad:: with SMTP id l13mr14355198otd.353.1591034554252;
        Mon, 01 Jun 2020 11:02:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a54:460f:: with SMTP id p15ls2683517oip.7.gmail; Mon, 01 Jun
 2020 11:02:33 -0700 (PDT)
X-Received: by 2002:aca:6144:: with SMTP id v65mr350163oib.33.1591034553684;
        Mon, 01 Jun 2020 11:02:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591034553; cv=none;
        d=google.com; s=arc-20160816;
        b=Qs5s8eCylIXDu9Wd59JlV3oMN0i/SrX3fG1Sjm188d1AUhEq+Ww2tYoZx8x+lWdGxo
         C0+rAT7fLFauVtFDKqBitu3NnYWgPlOFT5fdkG7j3aDsNF26Gg4Jc59B7dIP0oHCedxs
         IQVIW4FTE+3leaNilY9tJ+kvd/yUpbK9UFY4+dFevQmTz4QNCD5mdFAV/G9+xgOY/hzY
         J1YOyjbp0f6dkW/6WtO31CTHRAjjzut/zH8YOZ7FP24FPdZCHHmIMd0lOyK/dE5AJWjP
         6A75PJ9HlPIy4QBgRQEuyFeifoXjXKM/6c428KjZHlCoIoF2KLq271egJO83eQFc6dYO
         SYaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=5r2FLJZvS4apnVJUvia1LdiyjeetiucFqacIaJB0qwE=;
        b=Nh6wNlUriKENBmo2W7dUVDZSUwpXb4+dYnIiTrKz5aUk7D3wO8G7jncEYiXq+Vb0GM
         si7HT8nsWD7ls16J4Kz0GdnhWdZtvw+6DL4rMmVARbfbshbrlEq/M4Zeq7bv8etX1i5l
         jjdBwUheOMXNBHjvHbiTgYHhO6H8L707BfTFJFISpxjDoxdwVf5gD+dOoqayAy4/iBrb
         rR4rmhU86TvyDfSCeN2nFAjYIa5IEPmhOS1BBCgFNHAOSUVijM25jG6WYLRjHyJMq3fK
         cgRhpQVZTCA3skDQPA4NmitqoCLsjK+xYDjZnZ+F85quqc2q1WH6Q1WpYxIKPnN6KsTK
         bi8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kByfvhbr;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::629 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com. [2607:f8b0:4864:20::629])
        by gmr-mx.google.com with ESMTPS id e20si9393oie.4.2020.06.01.11.02.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Jun 2020 11:02:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::629 as permitted sender) client-ip=2607:f8b0:4864:20::629;
Received: by mail-pl1-x629.google.com with SMTP id bh7so247047plb.11
        for <clang-built-linux@googlegroups.com>; Mon, 01 Jun 2020 11:02:33 -0700 (PDT)
X-Received: by 2002:a17:902:82c9:: with SMTP id u9mr21165072plz.179.1591034552563;
 Mon, 01 Jun 2020 11:02:32 -0700 (PDT)
MIME-Version: 1.0
References: <202006011907.ocBGNEZT%lkp@intel.com>
In-Reply-To: <202006011907.ocBGNEZT%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 1 Jun 2020 11:02:20 -0700
Message-ID: <CAKwvOdkff8dwqHGkrnyK++e+yWTTYZwefPJ4wqqXQCQhmePE5A@mail.gmail.com>
Subject: Re: [ext4:dev 41/50] fs/ext4/mballoc.c:1494:2: error: invalid input
 size for constraint 'qi'
To: kbuild test robot <lkp@intel.com>
Cc: "Ritesh, Harjani," <riteshh@linux.ibm.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, linux-ext4@vger.kernel.org, 
	"Theodore Ts'o" <tytso@mit.edu>, Philip Li <philip.li@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=kByfvhbr;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::629
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

nevermind this failure. Clang doesn't support i386 yet (WIP).

On Mon, Jun 1, 2020 at 4:41 AM kbuild test robot <lkp@intel.com> wrote:
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tytso/ext4.git dev
> head:   38bd76b9696c5582dcef4ab1af437e0666021f65
> commit: 42f56b7a4a7db127a9d281da584152dc3d525d25 [41/50] ext4: mballoc: introduce pcpu seqcnt for freeing PA to improve ENOSPC handling
> config: i386-randconfig-a014-20200601 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 2388a096e7865c043e83ece4e26654bd3d1a20d5)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install i386 cross compiling tool for clang build
>         # apt-get install binutils-i386-linux-gnu
>         git checkout 42f56b7a4a7db127a9d281da584152dc3d525d25
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=i386
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>, old ones prefixed by <<):
>
> >> fs/ext4/mballoc.c:1494:2: error: invalid input size for constraint 'qi'
> this_cpu_inc(discard_pa_seq);
> ^
> include/linux/percpu-defs.h:520:28: note: expanded from macro 'this_cpu_inc'
> #define this_cpu_inc(pcp)               this_cpu_add(pcp, 1)
> ^
> include/linux/percpu-defs.h:509:33: note: expanded from macro 'this_cpu_add'
> #define this_cpu_add(pcp, val)          __pcpu_size_call(this_cpu_add_, pcp, val)
> ^
> include/linux/percpu-defs.h:377:11: note: expanded from macro '__pcpu_size_call'
> case 1: stem##1(variable, __VA_ARGS__);break;                                      ^
> <scratch space>:160:1: note: expanded from here
> this_cpu_add_1
> ^
> arch/x86/include/asm/percpu.h:432:34: note: expanded from macro 'this_cpu_add_1'
> #define this_cpu_add_1(pcp, val)        percpu_add_op(volatile, (pcp), val)
> ^
> arch/x86/include/asm/percpu.h:147:16: note: expanded from macro 'percpu_add_op'
> : "qi" ((pao_T__)(val)));                                                          ^
> >> fs/ext4/mballoc.c:1494:2: error: invalid input size for constraint 'qi'
> include/linux/percpu-defs.h:520:28: note: expanded from macro 'this_cpu_inc'
> #define this_cpu_inc(pcp)               this_cpu_add(pcp, 1)
> ^
> include/linux/percpu-defs.h:509:33: note: expanded from macro 'this_cpu_add'
> #define this_cpu_add(pcp, val)          __pcpu_size_call(this_cpu_add_, pcp, val)
> ^
> include/linux/percpu-defs.h:378:11: note: expanded from macro '__pcpu_size_call'
> case 2: stem##2(variable, __VA_ARGS__);break;                                      ^
> <scratch space>:185:1: note: expanded from here
> this_cpu_add_2
> ^
> arch/x86/include/asm/percpu.h:433:34: note: expanded from macro 'this_cpu_add_2'
> #define this_cpu_add_2(pcp, val)        percpu_add_op(volatile, (pcp), val)
> ^
> arch/x86/include/asm/percpu.h:147:16: note: expanded from macro 'percpu_add_op'
> : "qi" ((pao_T__)(val)));                                                          ^
> >> fs/ext4/mballoc.c:1494:2: error: invalid input size for constraint 'qi'
> include/linux/percpu-defs.h:520:28: note: expanded from macro 'this_cpu_inc'
> #define this_cpu_inc(pcp)               this_cpu_add(pcp, 1)
> ^
> include/linux/percpu-defs.h:509:33: note: expanded from macro 'this_cpu_add'
> #define this_cpu_add(pcp, val)          __pcpu_size_call(this_cpu_add_, pcp, val)
> ^
> include/linux/percpu-defs.h:379:11: note: expanded from macro '__pcpu_size_call'
> case 4: stem##4(variable, __VA_ARGS__);break;                                      ^
> <scratch space>:210:1: note: expanded from here
> this_cpu_add_4
> ^
> arch/x86/include/asm/percpu.h:434:34: note: expanded from macro 'this_cpu_add_4'
> #define this_cpu_add_4(pcp, val)        percpu_add_op(volatile, (pcp), val)
> ^
> arch/x86/include/asm/percpu.h:147:16: note: expanded from macro 'percpu_add_op'
> : "qi" ((pao_T__)(val)));                                                          ^
> fs/ext4/mballoc.c:1636:2: error: invalid input size for constraint 'qi'
> this_cpu_inc(discard_pa_seq);
> ^
> include/linux/percpu-defs.h:520:28: note: expanded from macro 'this_cpu_inc'
> #define this_cpu_inc(pcp)               this_cpu_add(pcp, 1)
> ^
> include/linux/percpu-defs.h:509:33: note: expanded from macro 'this_cpu_add'
> #define this_cpu_add(pcp, val)          __pcpu_size_call(this_cpu_add_, pcp, val)
> ^
> include/linux/percpu-defs.h:377:11: note: expanded from macro '__pcpu_size_call'
> case 1: stem##1(variable, __VA_ARGS__);break;                                      ^
> <scratch space>:12:1: note: expanded from here
> this_cpu_add_1
> ^
> arch/x86/include/asm/percpu.h:432:34: note: expanded from macro 'this_cpu_add_1'
> #define this_cpu_add_1(pcp, val)        percpu_add_op(volatile, (pcp), val)
> ^
> arch/x86/include/asm/percpu.h:147:16: note: expanded from macro 'percpu_add_op'
> : "qi" ((pao_T__)(val)));                                                          ^
> fs/ext4/mballoc.c:1636:2: error: invalid input size for constraint 'qi'
> include/linux/percpu-defs.h:520:28: note: expanded from macro 'this_cpu_inc'
> #define this_cpu_inc(pcp)               this_cpu_add(pcp, 1)
> ^
> include/linux/percpu-defs.h:509:33: note: expanded from macro 'this_cpu_add'
> #define this_cpu_add(pcp, val)          __pcpu_size_call(this_cpu_add_, pcp, val)
> ^
> include/linux/percpu-defs.h:378:11: note: expanded from macro '__pcpu_size_call'
> case 2: stem##2(variable, __VA_ARGS__);break;                                      ^
> <scratch space>:37:1: note: expanded from here
> this_cpu_add_2
> ^
> arch/x86/include/asm/percpu.h:433:34: note: expanded from macro 'this_cpu_add_2'
> #define this_cpu_add_2(pcp, val)        percpu_add_op(volatile, (pcp), val)
> ^
> arch/x86/include/asm/percpu.h:147:16: note: expanded from macro 'percpu_add_op'
> : "qi" ((pao_T__)(val)));                                                          ^
> fs/ext4/mballoc.c:1636:2: error: invalid input size for constraint 'qi'
> include/linux/percpu-defs.h:520:28: note: expanded from macro 'this_cpu_inc'
> #define this_cpu_inc(pcp)               this_cpu_add(pcp, 1)
> ^
> include/linux/percpu-defs.h:509:33: note: expanded from macro 'this_cpu_add'
> #define this_cpu_add(pcp, val)          __pcpu_size_call(this_cpu_add_, pcp, val)
> ^
> include/linux/percpu-defs.h:379:11: note: expanded from macro '__pcpu_size_call'
> case 4: stem##4(variable, __VA_ARGS__);break;                                      ^
> <scratch space>:62:1: note: expanded from here
> this_cpu_add_4
> ^
> arch/x86/include/asm/percpu.h:434:34: note: expanded from macro 'this_cpu_add_4'
> #define this_cpu_add_4(pcp, val)        percpu_add_op(volatile, (pcp), val)
> ^
> arch/x86/include/asm/percpu.h:147:16: note: expanded from macro 'percpu_add_op'
> : "qi" ((pao_T__)(val)));                                                          ^
> fs/ext4/mballoc.c:3996:2: error: invalid input size for constraint 'qi'
> this_cpu_inc(discard_pa_seq);
> ^
> include/linux/percpu-defs.h:520:28: note: expanded from macro 'this_cpu_inc'
> #define this_cpu_inc(pcp)               this_cpu_add(pcp, 1)
> ^
> include/linux/percpu-defs.h:509:33: note: expanded from macro 'this_cpu_add'
> #define this_cpu_add(pcp, val)          __pcpu_size_call(this_cpu_add_, pcp, val)
> ^
> include/linux/percpu-defs.h:377:11: note: expanded from macro '__pcpu_size_call'
> case 1: stem##1(variable, __VA_ARGS__);break;                                      ^
> <scratch space>:150:1: note: expanded from here
> this_cpu_add_1
> ^
> arch/x86/include/asm/percpu.h:432:34: note: expanded from macro 'this_cpu_add_1'
> #define this_cpu_add_1(pcp, val)        percpu_add_op(volatile, (pcp), val)
> ^
> arch/x86/include/asm/percpu.h:147:16: note: expanded from macro 'percpu_add_op'
> : "qi" ((pao_T__)(val)));                                                          ^
> fs/ext4/mballoc.c:3996:2: error: invalid input size for constraint 'qi'
> include/linux/percpu-defs.h:520:28: note: expanded from macro 'this_cpu_inc'
>
> vim +/qi +1494 fs/ext4/mballoc.c
>
>   1473
>   1474  static void mb_free_blocks(struct inode *inode, struct ext4_buddy *e4b,
>   1475                             int first, int count)
>   1476  {
>   1477          int left_is_free = 0;
>   1478          int right_is_free = 0;
>   1479          int block;
>   1480          int last = first + count - 1;
>   1481          struct super_block *sb = e4b->bd_sb;
>   1482
>   1483          if (WARN_ON(count == 0))
>   1484                  return;
>   1485          BUG_ON(last >= (sb->s_blocksize << 3));
>   1486          assert_spin_locked(ext4_group_lock_ptr(sb, e4b->bd_group));
>   1487          /* Don't bother if the block group is corrupt. */
>   1488          if (unlikely(EXT4_MB_GRP_BBITMAP_CORRUPT(e4b->bd_info)))
>   1489                  return;
>   1490
>   1491          mb_check_buddy(e4b);
>   1492          mb_free_blocks_double(inode, e4b, first, count);
>   1493
> > 1494          this_cpu_inc(discard_pa_seq);
>   1495          e4b->bd_info->bb_free += count;
>   1496          if (first < e4b->bd_info->bb_first_free)
>   1497                  e4b->bd_info->bb_first_free = first;
>   1498
>   1499          /* access memory sequentially: check left neighbour,
>   1500           * clear range and then check right neighbour
>   1501           */
>   1502          if (first != 0)
>   1503                  left_is_free = !mb_test_bit(first - 1, e4b->bd_bitmap);
>   1504          block = mb_test_and_clear_bits(e4b->bd_bitmap, first, count);
>   1505          if (last + 1 < EXT4_SB(sb)->s_mb_maxs[0])
>   1506                  right_is_free = !mb_test_bit(last + 1, e4b->bd_bitmap);
>   1507
>   1508          if (unlikely(block != -1)) {
>   1509                  struct ext4_sb_info *sbi = EXT4_SB(sb);
>   1510                  ext4_fsblk_t blocknr;
>   1511
>   1512                  blocknr = ext4_group_first_block_no(sb, e4b->bd_group);
>   1513                  blocknr += EXT4_C2B(sbi, block);
>   1514                  ext4_grp_locked_error(sb, e4b->bd_group,
>   1515                                        inode ? inode->i_ino : 0,
>   1516                                        blocknr,
>   1517                                        "freeing already freed block "
>   1518                                        "(bit %u); block bitmap corrupt.",
>   1519                                        block);
>   1520                  ext4_mark_group_bitmap_corrupted(sb, e4b->bd_group,
>   1521                                  EXT4_GROUP_INFO_BBITMAP_CORRUPT);
>   1522                  mb_regenerate_buddy(e4b);
>   1523                  goto done;
>   1524          }
>   1525
>   1526          /* let's maintain fragments counter */
>   1527          if (left_is_free && right_is_free)
>   1528                  e4b->bd_info->bb_fragments--;
>   1529          else if (!left_is_free && !right_is_free)
>   1530                  e4b->bd_info->bb_fragments++;
>   1531
>   1532          /* buddy[0] == bd_bitmap is a special case, so handle
>   1533           * it right away and let mb_buddy_mark_free stay free of
>   1534           * zero order checks.
>   1535           * Check if neighbours are to be coaleasced,
>   1536           * adjust bitmap bb_counters and borders appropriately.
>   1537           */
>   1538          if (first & 1) {
>   1539                  first += !left_is_free;
>   1540                  e4b->bd_info->bb_counters[0] += left_is_free ? -1 : 1;
>   1541          }
>   1542          if (!(last & 1)) {
>   1543                  last -= !right_is_free;
>   1544                  e4b->bd_info->bb_counters[0] += right_is_free ? -1 : 1;
>   1545          }
>   1546
>   1547          if (first <= last)
>   1548                  mb_buddy_mark_free(e4b, first >> 1, last >> 1);
>   1549
>   1550  done:
>   1551          mb_set_largest_free_order(sb, e4b->bd_info);
>   1552          mb_check_buddy(e4b);
>   1553  }
>   1554
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006011907.ocBGNEZT%25lkp%40intel.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkff8dwqHGkrnyK%2B%2Be%2ByWTTYZwefPJ4wqqXQCQhmePE5A%40mail.gmail.com.
