Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWXRWD6QKGQERFVEACI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 752BB2AF8D3
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Nov 2020 20:17:47 +0100 (CET)
Received: by mail-il1-x138.google.com with SMTP id o12sf2051064ilq.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Nov 2020 11:17:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605122266; cv=pass;
        d=google.com; s=arc-20160816;
        b=PDp4y4BKo5OmPpAzXN5FrZcQkXQxTDpb0aqcvLIiH/ogxni6Q3DBd9pY1ruAP781vz
         z2YoKT04SSWJbe3Joc7F7LSJSFm04MXl8xBb2zYNIg1CZjZ8OIHX1pWL4rdfBFM7FnhY
         TfMhaSc2ckLdl6JRY5HlPVjQ3yvkWJ5AyeqGTTBkWgU1AHpE8U/aLQvmYlKcZxMr+9RA
         6gM5Eoo+TAeZerva6jz9z4h8cZghwkoePoZ2YNY0iWOqJvPFhlJA46Xu9md3XmABoz91
         WFwfyx8qK/XmFi8Md2s1wfCv7MUSLrBo6lmkmfMR6PNsXaT5SICrjhq1v6dKi/O/G3TE
         7LJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=qiIWxftXhdJRuwn70IogB4xQOw8tdZtPFNoyJRDLrS4=;
        b=ROQCS6wU05Phn3qJxAFtdHWI3+E4dfp4ThLKbQm1LEcp4lw14qUA4vTjjVzojkr+uZ
         vDPMr2j+RvL2LAMf4vBQ08r9y++t39+iWv0YyLyHB8q5JTsiFmd3fqT0+BdP65/64XN2
         yMTIHfPm2IuIlCqJOCxG1aaRFpl0qmF7IwvPigl+kTce5j8/PLAa8Y0ULJa7HNulR89i
         nMFV+nLPr2AgLctYBDe0VsCYHNc9Tv/dkn1sTAAZd91Nzkjn40B/mdJ3lLpKKKqXzVng
         UFyH9/mAjfQHwxp0ylWpSxMLmkhhmptyaqawXU/HYDsRv2r2i38bSHtbx/ItWOAllGT3
         OZZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tEx3+cUw;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qiIWxftXhdJRuwn70IogB4xQOw8tdZtPFNoyJRDLrS4=;
        b=syOkTind+dccx5yxsYXrq9aU49WC8R+8Vk5c7FHQq2GanDmpO16Du8IX62Ep34GzH4
         pWMb79OlPqfwUCzCFsLQqBL812IZljlDj5X54nkdlJjyOytbePspXhoUnYm/4syNruOU
         eO8O2CP/arxsE5ZrX/ozMeFzMnNAwKayuzRw5AQHCU9d9Grt7Yfr2WBOeXtvVUqymBYK
         ZKpsKDUXPBRy5ZQJUUW/4kURP5Pi7osvUFig/I+3eVt4J9FXgx7AKZKHv2a2gQfTHeLE
         2nXbgVc6BIC4VuZ+m3OzDw1tDyDJIwi/UEWPtUeHGDas9af+vQUXBwhxGhBItPCbn6vN
         d3DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qiIWxftXhdJRuwn70IogB4xQOw8tdZtPFNoyJRDLrS4=;
        b=YtDVQirtESPOImZY2b26ghvl/H+BmPM5LxDrpgdNfqzMtZyOYfdIeW8Ht5sL17BlOa
         nrCrqm+GGuGq2ZR3KAZfmBiO7sW57Fo+jfpAlNdBn/FbWObb4gC5D89tM5Yug0qCB7nB
         SfdnUeWbKXPjknGg7xGADZmC0Mv2K76A2p0xZN2q66P39Fw69dGcaJhPArwCly96UojD
         3bo99whAZGR2XaxaHi0KxuJksxkuhcPq9OrDJsyNFYAx2lcver1XOadbw18edO3VmwSj
         uOkNBUDF8eRCGLxB/E/9yPGdOvFUKijdCV7ah86fs2uHDnHPalYNfUT9faFW3bhub0xr
         Uoug==
X-Gm-Message-State: AOAM530wbFNi4QCMytprKKeZIqTlChdJfvMplQb/ZuihLdblMPIIyXL/
	cQb3hic1kWcbb2VWu2GHmoc=
X-Google-Smtp-Source: ABdhPJyuqAzBLECPqCV4lkuhXd+p8i8UUIxElrPQxz79PBpUuBh84pWCar/j9LM95AWbGfiJxYQmaQ==
X-Received: by 2002:a6b:780b:: with SMTP id j11mr19359944iom.5.1605122266390;
        Wed, 11 Nov 2020 11:17:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:ba5d:: with SMTP id o90ls194688ili.11.gmail; Wed, 11 Nov
 2020 11:17:46 -0800 (PST)
X-Received: by 2002:a92:8707:: with SMTP id m7mr19237358ild.217.1605122265940;
        Wed, 11 Nov 2020 11:17:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605122265; cv=none;
        d=google.com; s=arc-20160816;
        b=lwawEf8PCPULBCBinlMPKNXnXk+5whB5Xa5RhQ/pN1G0fsPjd7qKTMhCMXimdsc3l0
         P9/DXgTS/k/+NtrJD1UGmsVppDS3sKabwJOi/+qDVp583NlOBXzJWhJrz/uKnX2HmFNx
         dMmFsAUUjB2K3rYcjZIKRqVNTOi56gS8yWKOrpPazEPsetcVn4eyJYGJHP6G60QC8Bwc
         scFirC9WKr6EDhUX9eSV5CbqCswpmEeiu5FknpUz3HwcFeVp7Ksr31YdQWYPdT2FeBkx
         YBFwDDy9u0MmOtnUQRpSwyWl1duOIVTIvBoil0LyXFSH2eKWEh/djZ7ZwrfiP+ggDdgl
         oPGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=kf+IhFTPyZTTlDyox8J9Z56FZQkaP/Km5ujsS42dgok=;
        b=kQ5OcySLhWh5i3FLXXOK93TDsRmeqnXcTMq1QARUBTC1SkgDRBlH8JsPGzMjjXTyN+
         QewKSwRuU95WIjtVJ9vNdlWpJO2DX/pzWCHkGAAg4T1mJR8BeWOmot6F0rmOpjapcJvn
         0HkkvJPU3zkbKtphZQaMMkx65Q9vX5/C6naLCEHoKRgbi+IV2Sag53ds3lZ41y4NDa9Y
         sZWJiQ4QNBYukK3vCPrJkwj1DshRjQPszPT6XveMFadoYOhPWNKF+ocGN/TDKryrvsqd
         Xm4Tjh4ZpNmnc8p3HuSqwTUA723xqSAkgo7qAvgNA8D5PJt5YP5pwLbwWNUF7WEAdQf1
         fA4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tEx3+cUw;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com. [2607:f8b0:4864:20::535])
        by gmr-mx.google.com with ESMTPS id j1si195584ilk.3.2020.11.11.11.17.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Nov 2020 11:17:45 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::535 as permitted sender) client-ip=2607:f8b0:4864:20::535;
Received: by mail-pg1-x535.google.com with SMTP id i26so2024876pgl.5
        for <clang-built-linux@googlegroups.com>; Wed, 11 Nov 2020 11:17:45 -0800 (PST)
X-Received: by 2002:a63:b55e:: with SMTP id u30mr22270319pgo.381.1605122265157;
 Wed, 11 Nov 2020 11:17:45 -0800 (PST)
MIME-Version: 1.0
References: <202011111359.9269wNfz-lkp@intel.com>
In-Reply-To: <202011111359.9269wNfz-lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 11 Nov 2020 11:17:33 -0800
Message-ID: <CAKwvOd==c6XLZaVXECet6pfVLTLaBDbH-J0xKVR4QvkLXCiHWQ@mail.gmail.com>
Subject: Re: arch/s390/include/asm/atomic_ops.h:56:45: error: invalid operand
 for inline asm constraint 'i'
To: kernel test robot <lkp@intel.com>, Ulrich Weigand <Ulrich.Weigand@de.ibm.com>, 
	Jonas Paulsson <paulsson@linux.vnet.ibm.com>
Cc: Vasily Gorbik <gor@linux.ibm.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	Heiko Carstens <hca@linux.ibm.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=tEx3+cUw;       spf=pass
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

+ Ulrich, Jonas

On Tue, Nov 10, 2020 at 9:29 PM kernel test robot <lkp@intel.com> wrote:
>
> Hi Vasily,
>
> FYI, the error/warning still remains.
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   eccc876724927ff3b9ff91f36f7b6b159e948f0c
> commit: f0cbd3b83ed47803df941865f720934c69abb803 s390/atomic: circumvent gcc 10 build regression
> date:   3 months ago
> config: s390-randconfig-r013-20201110 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 4d81c8adb6ed9840257f6cb6b93f60856d422a15)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install s390 cross compiling tool for clang build
>         # apt-get install binutils-s390x-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=f0cbd3b83ed47803df941865f720934c69abb803
>         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>         git fetch --no-tags linus master
>         git checkout f0cbd3b83ed47803df941865f720934c69abb803
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
>    In file included from drivers/tty/tty_buffer.c:8:
>    In file included from include/linux/tty.h:5:
>    In file included from include/linux/fs.h:6:
>    In file included from include/linux/wait_bit.h:8:
>    In file included from include/linux/wait.h:7:
>    In file included from include/linux/list.h:9:
>    In file included from include/linux/kernel.h:12:
>    In file included from include/linux/bitops.h:29:
>    In file included from arch/s390/include/asm/bitops.h:39:
> >> arch/s390/include/asm/atomic_ops.h:56:45: error: invalid operand for inline asm constraint 'i'
>    __ATOMIC_CONST_OPS(__atomic_add_const, int, "asi")
>                                                ^
>    1 error generated.
>
> vim +/i +56 arch/s390/include/asm/atomic_ops.h
>
> 126b30c3cb476c Martin Schwidefsky 2016-11-11  51
> eb3b7b848fb3dd Martin Schwidefsky 2017-03-24  52  #define __ATOMIC_CONST_OPS(op_name, op_type, op_string)                       \
> eb3b7b848fb3dd Martin Schwidefsky 2017-03-24  53        __ATOMIC_CONST_OP(op_name, op_type, op_string, "\n")            \
> eb3b7b848fb3dd Martin Schwidefsky 2017-03-24  54        __ATOMIC_CONST_OP(op_name##_barrier, op_type, op_string, "bcr 14,0\n")
> eb3b7b848fb3dd Martin Schwidefsky 2017-03-24  55
> eb3b7b848fb3dd Martin Schwidefsky 2017-03-24 @56  __ATOMIC_CONST_OPS(__atomic_add_const, int, "asi")
> eb3b7b848fb3dd Martin Schwidefsky 2017-03-24  57  __ATOMIC_CONST_OPS(__atomic64_add_const, long, "agsi")
> eb3b7b848fb3dd Martin Schwidefsky 2017-03-24  58
>
> :::::: The code at line 56 was first introduced by commit
> :::::: eb3b7b848fb3dd00f7a57d633d4ae4d194aa7865 s390/rwlock: introduce rwlock wait queueing
>
> :::::: TO: Martin Schwidefsky <schwidefsky@de.ibm.com>
> :::::: CC: Martin Schwidefsky <schwidefsky@de.ibm.com>
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202011111359.9269wNfz-lkp%40intel.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D%3Dc6XLZaVXECet6pfVLTLaBDbH-J0xKVR4QvkLXCiHWQ%40mail.gmail.com.
