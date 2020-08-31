Return-Path: <clang-built-linux+bncBDYJPJO25UGBB7HAWT5AKGQE3JS2KHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 66DC7257F65
	for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 19:16:45 +0200 (CEST)
Received: by mail-oi1-x239.google.com with SMTP id u190sf915177oif.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 10:16:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598894204; cv=pass;
        d=google.com; s=arc-20160816;
        b=zROi22i8ns6c5VOQKVi5/WTVtfCM4E4i9eQIFLaCE5vcQ3TPZ9u0hdWYnisUJP/zdt
         CAwmymWin2IlqlHZ0Z0z9NWhz4Vpr88Hiqq7HqH61TRYD3kXhiVHaDmayDlIgTUjzLsU
         bekEQwWNOa6UQI6XlU9xd29J6Bsrh/xICFhS29DYA7mNcSWjreKlZndWzQ+0W/Yeqvnq
         Z6U+gOGsfw9VweYGYQfLoHBIhvTiO0p0KCDvR6UiKBt7SSCTd5E0CDT/3N9ipsywvqe/
         dWR0hlll4ckt5YJO7E+GtUn7bvaeS8O3wOfw4lvJNrE/74N6n+EZIkcnNYBRdYa/nL5d
         NzCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=IHC13uwYd29UVaIjBsCoZXxeqjMzwyi4Clp+5HQPSk4=;
        b=hDrVUucazgvoJNHcvhh7rnKq20bqpGTw/b0slMw4E77jY54S2aaNa99nepvO87ddmt
         ZaD57Akuyk7g4EtV50rnzNb6db8IQP3jz9UBNjERQe3+9WCKFOO3lxl0TJErm2oaDaMr
         0G8PRtMJ65jwS4n9/EuiUJOmLIjIBhOZ2N6dHQ+9a+j+wyEjDGZ3o/FZhCLKmpeEV4G4
         eM7vkBa+yCjkkrqC2RFoLyrXyhnRXkOPcG5C/KjDU0RKTO2pYg6Md6oh5qj/UbiIvV4n
         ZovTXAcKAh1vfKhe1zYS4PDZOBCHk21kKKk8QPmbCwnaqAcp61yRmus29C5CXcVr6uNi
         oZPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uicsTTZK;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::534 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IHC13uwYd29UVaIjBsCoZXxeqjMzwyi4Clp+5HQPSk4=;
        b=aiWyPskLTxA2/KM+gzF94RhVqfHqm+HFu8sRI60BpciJF6EddeX1VsZGAsokMec2OQ
         AUQOJ2+fDcGPNgDAmK+3uIkzHYvPD6Id+InNY2yQhmrTfOl9mNxdsI+eR4LMi2Tx4Qkx
         Swf1wGg2Wnv/2vLEOPA3vwNWow/OkD+dbW83iqCdgY0RDDFOh7ll41cQUiD7fwSwJN0+
         Ohdruc46fqBsmZBQnJUpByMIskzqubDXgZ36mIH/1gal2M5hi+okcKP9DmGorXOGnglC
         Clf1ZWw/2Vf6hcS70TbZSHU740Fkyw9hEezjxp7+ejYNt6FZxnVBqD6fHaLusO4tkcl9
         rc6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IHC13uwYd29UVaIjBsCoZXxeqjMzwyi4Clp+5HQPSk4=;
        b=HCycS8uKVBjmKAt5Vvqemu/qVNqZ2rERf91JDjvsJwB69Cm0BVaMPUFcFhpyPXzK1J
         +dqOAkruV3IqOKIcynMcux3CWR/ps2zVw4XrCJTC8Mm1bmlkTS/EnYNTVKLNygqk9emF
         T8S6FIdfcs2hS5kDMRZBEBFtksxNSzNnRBJW4OKZ6kIgeawqfsTntI1vTGp8C0EQW97W
         YbICCQATkHzqUpi0MFOF4tZJCg1PX099g6LFkt36dXNrPWqzor6cM/bZzvxO2N0gOFBy
         rJsn1ua0lUIjHBEx8TCp3DGOumsoYKLoqLB/rmZ43mUZDOT8tMts+56gVQAMtBM598K3
         mqpQ==
X-Gm-Message-State: AOAM530n6Y+b1P9H6nY09aSFyAk2LSrsDND1FxtnQYnXOzSOdyhPA+Pv
	vssRJKDwmtEexwUGtKp9dQE=
X-Google-Smtp-Source: ABdhPJzh+hnK7MqWxVO6ICN9RjGufkyDuZMLzhvx97Jrt+qtEECHY05lP6YQwCqrRw6qt9UPEkvU/g==
X-Received: by 2002:aca:4dd3:: with SMTP id a202mr213241oib.157.1598894204338;
        Mon, 31 Aug 2020 10:16:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4816:: with SMTP id v22ls415333oia.6.gmail; Mon, 31 Aug
 2020 10:16:44 -0700 (PDT)
X-Received: by 2002:aca:ea54:: with SMTP id i81mr221733oih.133.1598894204006;
        Mon, 31 Aug 2020 10:16:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598894204; cv=none;
        d=google.com; s=arc-20160816;
        b=Clb08U3/FHjBMATBZgxT+EXMa3xAtK05if7B+OAP1UenPsk5WWKKlhfQ7EDu6I0pNa
         mJDnPf2+ofizqYpkne+b+9CuaMmHP30yjgX9oXdY4og8XNYsWPk7Hs+xkuqMZfldcCy7
         RLJ7Xe5QRkWz/z+vlRpfzhwn77RKqS/i2vvT3Nv03UBN0NKoXJA2Pm3dWoyKqt+PcFd3
         T8Sd2RqSw4UL21aYFFi83lvX64WBRgYcmSWJBjt1fsdT1wkvYLDeiuDE+kFNhSONt98N
         3evcSb9PCt68GytwjXYNNIEhZXZJUPS0WYI6dkVePiJ9b1vsj70toTbnLrgKHxkFwoc7
         biLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=SMlbIXByZ9qyq1hqi6QozJ1mUhZbRHii5ATHR8B5v9U=;
        b=zU0p8Aif6Q7D5k7N1d65jNcpHDS9A5cRRjMEenLG1uygUmprRqFqIapwXYTX4SmK7I
         x6O6cgsU20+Czq1mZvMdQ2Tn7GhqLc/S1XRyjUEOOdQKkhmkLlDPC/hLjcK42losrpjk
         YRZpbT1KFgeG6Mgky/Z3g0voH+p2MXjqzWpdH+fRWPgAMxaJ8ChnOcLa1W7azM8NqeZX
         ym2JCkrKbEj6Uueu/XXrbgTBDW1Ao8nwCISiiql47CAY4NaW50164ZGWzwunHLc4cT7J
         tGv4bIK++NFc78NGsPAS9K7+ozIYqzWTSHovTp9GlEXGPpCJtQtwZs6HKGMqzgvHEBsl
         nmiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uicsTTZK;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::534 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com. [2607:f8b0:4864:20::534])
        by gmr-mx.google.com with ESMTPS id d1si472120oom.0.2020.08.31.10.16.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2020 10:16:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::534 as permitted sender) client-ip=2607:f8b0:4864:20::534;
Received: by mail-pg1-x534.google.com with SMTP id d19so945951pgl.10
        for <clang-built-linux@googlegroups.com>; Mon, 31 Aug 2020 10:16:43 -0700 (PDT)
X-Received: by 2002:a63:cd57:: with SMTP id a23mr1969909pgj.10.1598894203068;
 Mon, 31 Aug 2020 10:16:43 -0700 (PDT)
MIME-Version: 1.0
References: <202008300852.g7xJG2Lq%lkp@intel.com>
In-Reply-To: <202008300852.g7xJG2Lq%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 31 Aug 2020 10:16:32 -0700
Message-ID: <CAKwvOdkk5Q1yCuBaT5+y4sjMf_TJiFMXhKNr2G-k_3=-duGusg@mail.gmail.com>
Subject: Re: [linux-next:master 2248/3958] ld.lld: error: undefined symbol: i2c_get_adapter
To: jorge@foundries.io
Cc: kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kernel test robot <lkp@intel.com>, 
	jens.wiklander@linaro.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=uicsTTZK;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::534
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

+ Jorge, Jens

On Sat, Aug 29, 2020 at 5:46 PM kernel test robot <lkp@intel.com> wrote:
>
> TO: "Jorge Ramirez-Ortiz" <jorge@foundries.io>
> CC: Jens Wiklander <jens.wiklander@linaro.org>
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   b36c969764ab12faebb74711c942fa3e6eaf1e96
> commit: c05210ab975771e161427eb47696b869d820bdaf [2248/3958] drivers: optee: allow op-tee to access devices on the i2c bus
> config: arm-randconfig-r002-20200830 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c10e63677f5d20f18010f8f68c631ddc97546f7d)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm cross compiling tool for clang build
>         # apt-get install binutils-arm-linux-gnueabi
>         git checkout c05210ab975771e161427eb47696b869d820bdaf
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
> >> ld.lld: error: undefined symbol: i2c_get_adapter
>    >>> referenced by rpc.c:88 (drivers/tee/optee/rpc.c:88)
>    >>> tee/optee/rpc.o:(optee_handle_rpc) in archive drivers/built-in.a
> --
> >> ld.lld: error: undefined symbol: i2c_transfer_buffer_flags
>    >>> referenced by rpc.c:105 (drivers/tee/optee/rpc.c:105)
>    >>> tee/optee/rpc.o:(optee_handle_rpc) in archive drivers/built-in.a
> --
> >> ld.lld: error: undefined symbol: i2c_put_adapter
>    >>> referenced by rpc.c:115 (drivers/tee/optee/rpc.c:115)
>    >>> tee/optee/rpc.o:(optee_handle_rpc) in archive drivers/built-in.a
>    >>> referenced by rpc.c:129 (drivers/tee/optee/rpc.c:129)
>    >>> tee/optee/rpc.o:(optee_handle_rpc) in archive drivers/built-in.a
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008300852.g7xJG2Lq%25lkp%40intel.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkk5Q1yCuBaT5%2By4sjMf_TJiFMXhKNr2G-k_3%3D-duGusg%40mail.gmail.com.
