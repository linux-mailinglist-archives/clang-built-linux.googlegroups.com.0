Return-Path: <clang-built-linux+bncBDYJPJO25UGBBMEORP3AKGQEUDKSZAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E5F41D8035
	for <lists+clang-built-linux@lfdr.de>; Mon, 18 May 2020 19:34:42 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id x16sf7955981plr.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 May 2020 10:34:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589823280; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZNhoJWEFjktM4FCYMsD7ID00kwijQcTHKkF44pSkmacdrBtpy8f9aa3avnv4ItbtEe
         9vh2noWH1IeO2GLWDjkiPNvXf8nJQ0KIOc3fMLNFByotcRo+3YY7VkA9wXimNtwmgjdG
         COzpuQjFskrwTlFXOViU0pEzRVU5fsR7crjeHw2Kj9GXUSj6uL0sOq0zVqt81455HguV
         xiy1jfXDo5SHeCFZnyfZrCF78pQ16F7Vx8fHgVxX9RGGyMr5SkD5grslufgTv/VlJEDk
         gHEpRUp1TxTZzLwemKZJuv2afyzRaGar0nifwDmK4BLrwCOZIcQ4ru8OZsN2tjUdv2dK
         acpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=SSMVJj2v7/cD4TF4NvFKqNRobGK1n8EI9ErJbN/lT5A=;
        b=BXbXv1tRq0YtjnCrI58Ein+ICBXN4rVJ28PqajdPdbE5Yj4K7Q82p6Vpja52IMVBDj
         j4YRMfetI8QuXmwPSBiVFe1UVc7GAJi2qwUY7xTf4f+b27Zud1PGmHKkK3kprRBxT8Ia
         lUT4Qt0SIEqeT8hdQ++w0KJVt4LR2vr2ILyS58nZ7Z+TeV5wFqwPwxtmvyFDq5m6FscX
         pZaPrNXBkvDj7nEbeOfMN27HQ3x6l3okO9l6A2zvItYCalGKih45XBollVa4mOQS3hEu
         zAxmZeRGQ9ucPwROY6z0Qp9Dl2aETat+SxPyNK20SFX49FpBVsJha0ZM5/CLjKWSYmX+
         TuWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QXQ9yTCB;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SSMVJj2v7/cD4TF4NvFKqNRobGK1n8EI9ErJbN/lT5A=;
        b=KO9Cw5qE5ju5OfPknscYAoAoCzA4k4SXDSUmcrJrvYWLCNPriEuFg3eMGRQ0aY/+/f
         U079jD7FLnITesrtYmrr8FrAwj3CJMTuMJ6pdWmvpv411Ylnb2MkedG9NPOew3uhZRzu
         9wo/+BQlDBUGBlpaWdVKb8spPb/Yfd9TNQpq+PWtbrCmIRw5vcIQYMxrB4/JqA6+giQG
         GYUuDsdd44ycb5+fk686EJRb6rg+hVIcpKJaJ4F4Wn6guCGuTLGASxlsHvPDGUK+MWjC
         04LpiOMx0PeQjgWm9AeGge4KjVm1s+HPq/mcEh/bVnyyscMNjwqK8/ze9T5+8f5NCW6O
         4mBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SSMVJj2v7/cD4TF4NvFKqNRobGK1n8EI9ErJbN/lT5A=;
        b=qv6vbImQuBYzjYkHURrX6k7BjkRbMtf5PyUihYE9zVrWDMc9vAJjWSQOPxZci22p4U
         wj3iadVHUTdHYVLvh0zTr86zZarC39pRN9DPXO6zsCE7Ih8VpRiUevcTXJHqbsMLah/F
         JPtUWGf8FA1Hp4Xf2ZpxTUvWcTZu4ayFsQdZxJ3NDVZf1d3ywGtQyDlFLRh872Xt1t6W
         57P1AGS+XYRj5Arh2W2JgLvHy7Nng9ZVTV4m7PpHfXAdDO4qVUNLEA7CNmdGamZoms/s
         vLyTawmi5nYO8lyAqHOorkG+ny2NiS/bW+uhXBpOdxO8nzsAJuNgUeJnOP633Lnzxld3
         OrRQ==
X-Gm-Message-State: AOAM530l351WufBQL1YpbbqUsFZ3BcMTrmP3azTHabIuXzZG/zBvA6h/
	Xryw6AKN+EeY5ktjjeHQASQ=
X-Google-Smtp-Source: ABdhPJx5MT/lUToq1F6nbyJgT/7IHHNxv+mb4nX6qaKBEz5UOcM651Z05TZ5IwMzGfWzto92pDHubw==
X-Received: by 2002:aa7:93ac:: with SMTP id x12mr10579620pff.143.1589823280321;
        Mon, 18 May 2020 10:34:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:7143:: with SMTP id g3ls145582pjs.0.canary-gmail;
 Mon, 18 May 2020 10:34:40 -0700 (PDT)
X-Received: by 2002:a17:90a:268f:: with SMTP id m15mr567325pje.190.1589823279902;
        Mon, 18 May 2020 10:34:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589823279; cv=none;
        d=google.com; s=arc-20160816;
        b=iOXZmre4nyMm7jTYccrrzkfk+563WuZtl23yjVy3JL0tylm9jpojytA8o6wwF4UEux
         rUXZla3EEucbqeVsyOucBlfZW2WAaosei6f6QdiGE8/pX4syppySx6wpb5Nsx5mjj46V
         MCy3wTOa9aVnQmtDG2QeGutk7z+9OERWlmmBhpPDggJ6LDrRBQUjysfkMIK+feRvpCT8
         wLVNkAxEv8JqIDstBrh2f94zKK7SWPsgvOCoHAwdt8AZTuxKvGWvats24OO0GcF8Nbi4
         U5FWBkTbEzouGS1p/rPrliuLIKaxzdBiHq6DUqQ9QWrQlNafsWpIfRP+yIkHx87W6k3k
         1/yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=mrtV6FE9QmP+8hu8zE/XphbPEU1xU2coFB2eBKuMcJM=;
        b=hWPn0SaVtp5NghvxFGzSig4TOFKNA8nx6n1iispW4M+RNbzuTgd8l3Z8Bphtdl6p/o
         sfH8rUjSloA8mzFMUdzzaw1ShALx5ScBjmZ9PdcjVMCbxjjxy94bCofLJDWZwMOxLw2o
         ggiUeDekH5X2yn/KIOZdGHrpnRtAvYrzPBLjKlWJ7ixB+yuexH3HnUMxBw/0RY2POpv5
         PX6NDG2LHLwwgxDBZCxZnsPNlSFAyTTRIH5qWV/ymItBqA/M31j84AFHKYHoNnd4S620
         ejmW+dPlW9uAXIAEUIu9xBDQ+BOljncq/VCdiDJiN2uf4QR13vRn/sWa3kCzpwDOwAPI
         nyyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QXQ9yTCB;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com. [2607:f8b0:4864:20::429])
        by gmr-mx.google.com with ESMTPS id b5si65199pjn.0.2020.05.18.10.34.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 May 2020 10:34:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::429 as permitted sender) client-ip=2607:f8b0:4864:20::429;
Received: by mail-pf1-x429.google.com with SMTP id x15so5285484pfa.1
        for <clang-built-linux@googlegroups.com>; Mon, 18 May 2020 10:34:39 -0700 (PDT)
X-Received: by 2002:aa7:8c44:: with SMTP id e4mr17790113pfd.108.1589823279262;
 Mon, 18 May 2020 10:34:39 -0700 (PDT)
MIME-Version: 1.0
References: <20200518004335.GB4344@intel.com>
In-Reply-To: <20200518004335.GB4344@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 18 May 2020 10:34:27 -0700
Message-ID: <CAKwvOdkg6OKY_aX_vstYZhZL8F+YasDiVY+ZkCgKcFEDwX-Kfw@mail.gmail.com>
Subject: Re: [linux-stable-rc:linux-4.4.y 4867/9999] h8300-linux-ld: section
 .notes VMA [00000000004cb880,00000000004cb8a3] overlaps section .bss VMA [0000000000468088,00000000005e6053]
To: Philip Li <philip.li@intel.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=QXQ9yTCB;       spf=pass
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

On Sun, May 17, 2020 at 5:45 PM <philip.li@intel.com> wrote:
>
> Hi Nick, want to consult, whether below ld overlaps section is a problem or not?
> Since the commit looks to be relted to clang.
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-4.4.y
> head:   ceb6b0b3f45d368cf15b65cb3d690cffaab7bf38
> commit: 904ccb4cd1e5d4a46d96f008e00bf681b28150cb [4867/9999] kbuild: fix linker feature test macros when cross compiling with Clang
> config: h8300-randconfig-c002-20200517 (attached as .config)

Hi Philip,
The issue below is different from the MIPS LLD error.  Looks kind of
similar but:
1. this build isn't with LLD, it's binutils h8300-linux-ld
2. this build isn't with Clang, because LLVM doesn't support "SuperH"
(ah, dreamcast)

Here's the list of supported architectures in LLVM:
https://github.com/llvm/llvm-project/blob/master/llvm/CMakeLists.txt#L301-L317
We can probably enable s390 builds in 0day bot.  We've been doing
build tests in our CI, but not boot tests as buildroot has removed
support for s390. RISCV, build tests would be good, too.

Sparc and Hexagon can't be built yet, but are close.

Thanks for you and the team's hard work.  0day bot is invaluable to us!

>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>, old ones prefixed by <<):
>
> h8300-linux-ld: section .init.text LMA [0000000000432808,000000000045d6e5] overlaps section .text LMA [0000000000000158,00000000004cb87d]
> h8300-linux-ld: section .data VMA [0000000000400000,0000000000432807] overlaps section .text VMA [0000000000000158,00000000004cb87d]
> >> h8300-linux-ld: section .notes VMA [00000000004cb880,00000000004cb8a3] overlaps section .bss VMA [0000000000468088,00000000005e6053]
> arch/h8300/kernel/built-in.o: In function `resume_kernel':
> arch/h8300/kernel/entry.S:318: undefined reference to `TI_PRE_COUNT'
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkg6OKY_aX_vstYZhZL8F%2BYasDiVY%2BZkCgKcFEDwX-Kfw%40mail.gmail.com.
