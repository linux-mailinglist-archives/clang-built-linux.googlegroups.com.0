Return-Path: <clang-built-linux+bncBDYJPJO25UGBB4WMTX2AKGQEAIFZNYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F1B919DBD3
	for <lists+clang-built-linux@lfdr.de>; Fri,  3 Apr 2020 18:38:11 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id v46sf9204526ybi.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 03 Apr 2020 09:38:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585931890; cv=pass;
        d=google.com; s=arc-20160816;
        b=ASL39gU57DmkTbmatQt89y3bBUzEEUFVrJSg+ivEf9loJHRlbUSePzFMyls8JnC4U/
         ukxRE07jzaV9OWOcgZgtBVjYbjQQRvAnhCXuc6Hd4MgIOHJH8Jn4u55nbdL94yptZqIc
         EAVfqiifngt6Q9N39z5YCKdK1MGrLCtHhpuc9Z3Cfhb8nfAwUjHhZ7B5+labcmWdKw+8
         7wAxy1NY7rKeSl9u5NC6KupuvxtWHq6GI5CIi2SGtBhoh5GNTU+UZtPgOj3lFN/yj8pJ
         GV/1mUxQNhu++Uq92Jbhr8ejwfrPsCimhjwk7GIhydV8/qFHT6hkLnT61J42xbDDHCZi
         Ud4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=TJdrWyAskj0RCykV3gfWxkbhI7MzXiuzyCGrst2YAsk=;
        b=UcOkg/hLB1oWTTajUKKBwlDeVZzSnArpe30cdhQPVnxVLeU2fGzvsHEs73iG0AeS5b
         bxzgDU0+RjMRfMcwOWAn1FK3Gn0sB5LcNMPEFK5EqfkMhP4zQo+0DHssp217IGhh1ql0
         sqwFjQKKjyvFSncYPs00TSfq7wIHQ59wOJbzb2+a3XMX1p/7+xyX6YC+JjhhPzkPDf9N
         DWx5ozyRHQcA5X3RAA4VhUu6IwM/9y+8Oqkio2WcN05YEk5tldC2UKSWoPhMojMQlEkr
         pZzcc5Ole0slIj9xcr1Cl4iocLW/SSPvS5AGqILy2ljB9ycHNRSfJd9vSeUsvwqbOpoj
         Wh+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BVa+Abzn;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TJdrWyAskj0RCykV3gfWxkbhI7MzXiuzyCGrst2YAsk=;
        b=ow7cgo69GX/krG/Y1zTRkUjah6qS0el2/LvWvN5/yQFapYOwz9+XZiWnl9lVUflDAT
         Yx+FwbV9VCf/BfYnLHCHDL6+vta490Pz57ai4zZGLKl2nI5XU5WkLY5Hl1wsYoNVRGQy
         EGjK+fqqfKRIlrY7p4uY6nMFk9PhtDvJP6VVdQW7YSMwKIMQANMAja9aQ84pBPJdfkQm
         LaunTO55Gm+Yz4ZqaE5spF+kX0HCFGirToIs1cC+KX2yzB05qggJB2OoGRd/eTZWsR3d
         Lhj1TSr7qkD28zuV4Z6n/zuPAsOhVLq3NGDa8ii71AFZy0HNe/QjyhBMlNNucBUGF9P0
         Xd+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TJdrWyAskj0RCykV3gfWxkbhI7MzXiuzyCGrst2YAsk=;
        b=nl1t2Ed/MCHJtxLOBlROCw57PMaP3e+5OXvzlam6P94/kdg0XuEK4GxXgPB+vE++iq
         dInYN4qwwpUFQD7gEjRKSBnXesphb/JJK0YkZmOSVFrPEh90j9wyZHUTTq8B1nb8MoR9
         Puiz3dXeJR2AOOvaRNJUmd/WQIPdnaAVuZJAQ4XWaYsC2JvOwionob8iiC4IklA2xJyU
         OMGBiyeK11iLTwPQoERgEjc6qDV3eE6zuFGRnO8a3aOWqRsn0He2gnfPCZrfxF1QGHaX
         OSg0oTsEai6340Ob+7uWxX/vtjusU4cBDYpposSG5fYeTzLGIe9UAyyYiOmIPFKmSPHu
         LAUQ==
X-Gm-Message-State: AGi0PubC4dODMRGff6bfZBlvyTXcw1JmCYm5BFVqbnMsFmPPvfIn2Lun
	h4SCb6N/dap7UMwbpGdrrjw=
X-Google-Smtp-Source: APiQypKB3CRJetTfIvAsUY8p+tPzvfotdyZSt4KLcN6e5S1wEUEsuUM27Xe7sAjPndqdooMHllZxfA==
X-Received: by 2002:a25:5e44:: with SMTP id s65mr11409236ybb.183.1585931890286;
        Fri, 03 Apr 2020 09:38:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:dcf:: with SMTP id 198ls2535555ybn.8.gmail; Fri, 03 Apr
 2020 09:38:09 -0700 (PDT)
X-Received: by 2002:a05:6902:688:: with SMTP id i8mr16646653ybt.447.1585931889905;
        Fri, 03 Apr 2020 09:38:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585931889; cv=none;
        d=google.com; s=arc-20160816;
        b=0XBbQBmT3us6nNmIJnPGKrt/PvabUTEOqtMK2lrm5LS6qTKLOU2Jfnlxemrir5krrI
         ENC0Ee/fMaNsjXB/IZgmq7MxOgBlVjJEnUkWoYrVOp7vvXwNmnc+qEG4coj6EboYUobe
         crXxckPUV/GtyBhbJ5LwB7fz3L+GqHiwvk3jkspjClC3y9VTq6LhRPrfRugTMDBz2Pk6
         g9aqDGDxknqInbKIbsM6yNqmOtJM00985nk4eekPg6FK7ePTNZTRIVKvOS7786ObGgNc
         L1JDJ+uzF1GcbTAiqJkGYJpgZsz/W5V1215QKQEwfTWO8UOH1InFZ1ZMZtrBQjNKJG0Y
         494Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=FOZc64xSasKXlfFP8ksksf9ibBNYrojqa8G3JsjpREQ=;
        b=fvFmwMh13lmWwa6qERmfcsjuJjV6zyIDOGH+wmkqWG9ufDz9k592rfMTYkB+gbIT6l
         1H0qW2AIYxlk/wAJgHsHuTdrstftILvdycU82HsqPXp7o24MJXbjmN9lurfibmmAIduv
         oUK+jl6vhekKrJ2iHmRNh9kQOo44uzcSj5jru1QC1hvPx/gfPX2TQ+feD6xlzJIFgRT/
         U2aRj2eXTXnB/bJ/vekNWZqL91WElkIfigdMg3kL9GOTBro51kN+xU0T/mKmnXoWJZtm
         FNK0Zye4TdhV8ChXI4j4HRSHBB3K7Bnr/fs2fO8aqMxaKx4YwXcy4zHHfESAg8ukSKr4
         s/qw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BVa+Abzn;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com. [2607:f8b0:4864:20::62f])
        by gmr-mx.google.com with ESMTPS id f195si661345ybg.4.2020.04.03.09.38.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Apr 2020 09:38:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62f as permitted sender) client-ip=2607:f8b0:4864:20::62f;
Received: by mail-pl1-x62f.google.com with SMTP id a23so2910556plm.1
        for <clang-built-linux@googlegroups.com>; Fri, 03 Apr 2020 09:38:09 -0700 (PDT)
X-Received: by 2002:a17:902:988e:: with SMTP id s14mr8486856plp.179.1585931889029;
 Fri, 03 Apr 2020 09:38:09 -0700 (PDT)
MIME-Version: 1.0
References: <202004032329.oBqXCsfi%lkp@intel.com>
In-Reply-To: <202004032329.oBqXCsfi%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 3 Apr 2020 09:37:57 -0700
Message-ID: <CAKwvOd=H71Q=r=S6Zr=N1zgkXTb9HyEwF78ZbuKkoigWZxiBDA@mail.gmail.com>
Subject: Re: [peterz-queue:sched/urgent 4/5] ld.lld: error: section .text at
 0xFFFFFFFF80200000 of size 0x1E8915C exceeds available address space
To: Fangrui Song <maskray@google.com>, Rui Ueyama <ruiu@google.com>, 
	George Rimar <grimar@accesssoftek.com>
Cc: Sebastian Andrzej Siewior <bigeasy@linutronix.de>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Peter Zijlstra <peterz@infradead.org>, 
	kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=BVa+Abzn;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62f
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

+ Fangrui, Rui, George
The below errors from LLD look new to me, thoughts?

On Fri, Apr 3, 2020 at 8:42 AM kbuild test robot <lkp@intel.com> wrote:
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git sched/urgent
> head:   59d4dade8ccbaa299f5f5dcd775f7a9b7277fb5a
> commit: ae1177617ed17157f29959b0fe4d60f532a5b36e [4/5] workqueue: Remove the warning in wq_worker_sleeping()
> config: mips-randconfig-a001-20200403 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project f68cc2a7ed766965028b8b0f0d9300a0460c3cf1)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout ae1177617ed17157f29959b0fe4d60f532a5b36e
>         # save the attached .config to linux build tree
>         COMPILER=clang make.cross ARCH=mips
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
> >> ld.lld: error: section .text at 0xFFFFFFFF80200000 of size 0x1E8915C exceeds available address space
> >> ld.lld: error: section __ex_table at 0xFFFFFFFF82089160 of size 0x27B0 exceeds available address space
> >> ld.lld: error: section __dbe_table at 0xFFFFFFFF8208B910 of size 0x0 exceeds available address space
>    ld.lld: error: section .rodata at 0xFFFFFFFF8208C000 of size 0x480F81 exceeds available address space
>    ld.lld: error: section .data..page_aligned at 0xFFFFFFFF8250D000 of size 0x2000 exceeds available address space
>    ld.lld: error: section .got at 0xFFFFFFFF8250F000 of size 0x8 exceeds available address space
>    ld.lld: error: section .rodata1 at 0xFFFFFFFF8250F008 of size 0x0 exceeds available address space
>    ld.lld: error: section .pci_fixup at 0xFFFFFFFF8250F008 of size 0x0 exceeds available address space
>    ld.lld: error: section .builtin_fw at 0xFFFFFFFF8250F008 of size 0x0 exceeds available address space
>    ld.lld: error: section __ksymtab at 0xFFFFFFFF8250F008 of size 0x145EC exceeds available address space
>    ld.lld: error: section __ksymtab_gpl at 0xFFFFFFFF825235F4 of size 0x12378 exceeds available address space
>    ld.lld: error: section __ksymtab_unused at 0xFFFFFFFF8253596C of size 0x0 exceeds available address space
>    ld.lld: error: section __ksymtab_unused_gpl at 0xFFFFFFFF8253596C of size 0x0 exceeds available address space
>    ld.lld: error: section __ksymtab_gpl_future at 0xFFFFFFFF8253596C of size 0x0 exceeds available address space
>    ld.lld: error: section __kcrctab at 0xFFFFFFFF8253596C of size 0x0 exceeds available address space
>    ld.lld: error: section __kcrctab_gpl at 0xFFFFFFFF8253596C of size 0x0 exceeds available address space
>    ld.lld: error: section __kcrctab_unused at 0xFFFFFFFF8253596C of size 0x0 exceeds available address space
>    ld.lld: error: section __kcrctab_unused_gpl at 0xFFFFFFFF8253596C of size 0x0 exceeds available address space
>    ld.lld: error: section __kcrctab_gpl_future at 0xFFFFFFFF8253596C of size 0x0 exceeds available address space
>    ld.lld: error: section __ksymtab_strings at 0xFFFFFFFF8253596C of size 0x40CB3 exceeds available address space
>    ld.lld: error: too many errors emitted, stopping now (use -error-limit=0 to see all errors)
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202004032329.oBqXCsfi%25lkp%40intel.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DH71Q%3Dr%3DS6Zr%3DN1zgkXTb9HyEwF78ZbuKkoigWZxiBDA%40mail.gmail.com.
