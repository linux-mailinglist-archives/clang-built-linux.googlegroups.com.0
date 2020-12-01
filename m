Return-Path: <clang-built-linux+bncBDGNZTVZVAFRBAOITL7AKGQECIYWFNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA412CAD17
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Dec 2020 21:13:54 +0100 (CET)
Received: by mail-oi1-x23f.google.com with SMTP id a9sf1582629oie.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Dec 2020 12:13:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606853633; cv=pass;
        d=google.com; s=arc-20160816;
        b=EiwIxmuOGjv1xiVsKJ/iSHhBDoBISgTh7+clYUMnCcx8xwrfKnv304r1cIOqoROB33
         MkX7rbigojnEBwBYKtwvULEUMc+p1dYSWr2J6lEFg/NS9NpEUr0GDek7Wktai3gT2jaK
         8pG0PGcPXwGbtihBeZvCyFdO4yAbNk126Ajb+j/DyCW5D0+0pIrTFvly+hmL7sSPSWxH
         kzJqWX/74M+UWQioALjqk2jEjISjSK2onitjFkuiwBNV3Gw4bOA3Ctq6NpNrF8hh8Ff9
         KGwbqkHBLGs6GuAe7GbgdGvSoK89W90DA0KYCu5a2WzNMyIZz7FKl/+egLZf7ZYVZbi0
         k2KA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=HYNiHl2dhzTl+e4HVGvWVZi7B8I6p2TXxMST+hB1k3c=;
        b=r9xsjaWVpOvvKQ1FGhsvCsse5IYz2iVjldzpxzzpLp6lq2atILfM2xgzxLQNmfaGUT
         1P/mzlFjMKfnkIYCwx98mmbNl+1GDbRypqpvhw+da1+ZS/610zToVwSW9M7CjqucQBNQ
         +DvI2QE8vYvUpKr4ho427VBBP7TW2sKOw66kvHs3D02aF2d+Kp7gNtbxgNzrqiVHI1WU
         LEh2fT8gmi4u0IVNfGByMgQdJ3nTBlrWNeUVnTpoS3MDLo+MsjTXs2qFPRkI/Uy+r+gL
         0lwXoMsrcYeTB+nQ6jBGHvqZii4urzAWBPh8r4IEdECQhmx/D5JfaIr7tKvcyVtsGRnG
         2K6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="L++/HF+O";
       spf=pass (google.com: domain of robh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=robh@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HYNiHl2dhzTl+e4HVGvWVZi7B8I6p2TXxMST+hB1k3c=;
        b=SNB+Yo+fLHFYsz34+6rRWGAN3p1IM+jlc3Z3d/X4a3MJxfvuTDHNl1wQWeen1inG5R
         nROvFxC3xS/TOt/Emb0mQwYJGrLldj0RopY4J9zZLQAa36/Wm3OVt28G7UXr4t/n3SEC
         1dp0FkDFMcGheiQQp2nA9elIoyvxNslghKmfOzwl9BUpm1kpimzNGgorqZp/udAekPbp
         ftH0g+RBtleYi7YjfOWf3Nw1nOiuHdN970HKAMrrqJA4k8rLU3BfX5an/K2I9gXAhKOZ
         3Hc/WDd7H1A7ENsrwo4QqLvkFdDsz/bUzzslT2w8UnB71NBNUkXbZ9xIKNj+jEizksRN
         0Wjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HYNiHl2dhzTl+e4HVGvWVZi7B8I6p2TXxMST+hB1k3c=;
        b=j27RFqgSPcSixWJfE27uBx9g3FXrp6iTJjzlUrhnAiioxR/+HabgUJ7+YHSgYfSCVm
         X6ZKckMZmfyxmeM/y4iuYzjSXOsfO6svole/Hr2rf4ir5BUfuk0MrkJW70LQfQI0bO/t
         BKw4Mew9l9+j5dGLv1SgDz1Pkuyi5Cb2CkoYt35x2Ii8PtlnZ+S9MOfg5HR85ZssYH9G
         MAzntjPeBcV+vKJW3VZiDrXKlkv/I60RkPTC4C6tmiIgM2n51h+XBSamrRm6nB860JBE
         5poe7Kyo3FZGRFJFNQnvaMnANlGCY6q5EOtCrvb5I+U9MxSHz99HFRonQQSxDnvRHnIK
         j6rA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Qfq4aYgL4zIAZcUJmYaKp1HhWvEScCPa3tZS2uZazXxS2X1o8
	pPJ6+MRPEBLEOjTjb8EV57g=
X-Google-Smtp-Source: ABdhPJzOkGckVCQSbkmokxxmZwIAAXrBsz7M+FC/P6ArjoqfASNOqWCLkDsF1upyKpBaCAwAOyNvDg==
X-Received: by 2002:a9d:609e:: with SMTP id m30mr3099754otj.349.1606853633378;
        Tue, 01 Dec 2020 12:13:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:4c0e:: with SMTP id l14ls830746otf.11.gmail; Tue, 01 Dec
 2020 12:13:53 -0800 (PST)
X-Received: by 2002:a9d:5381:: with SMTP id w1mr3130212otg.7.1606853632954;
        Tue, 01 Dec 2020 12:13:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606853632; cv=none;
        d=google.com; s=arc-20160816;
        b=gCzzz4oaw1rkjNkdIy1Szpj7VlYWbe2wErviI3XFx+R5ZTgEy45Hv35fsjRGsFq/mE
         FAAp1odRNj2ssZSxf4SEgWp1IwfEQSHOLvH8zek5Md2Z8g9hIesxSj2MGLyWamNC6dhA
         1VyonB8KOAibWp+DecDrxlMLS+DA8OZ/vlOvh+6IUAkyft5OoF7pvjKZFUlzqWDpee8C
         2Adj9FuM32MZ0G0s7M34gl8DohfAU+v3sEdqoc/mjzany77ec/43RhSx8f7XsHrJWjFh
         XBkXbXcXYrKiQh0KEHEC8Qn5e/GemJUANGRZRIWf+3S9JStECaQVPr7X4gtIKlnKeE+F
         3Z4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=60b66msLi4SKJQnRVqDnKGEVi+NTrnA/4moDiygGOro=;
        b=fTFd8t6qyhZiI2s01pfskEpedgRD2W5DvJ4leKeDfFBE/FxPtHS6zkUrGJm9yuZWG4
         fmDK57Xl/LxbC6UJ8sOI3tteLGaGZYh4xf91KNg8FRebmgnftAvueQtKYsnNbwh8Rbl2
         tBYsggJy+VAw33/okaKgUmHBV22hF39u0B0aVDzrd63yoMiavz3c34StixP+S//ViMBr
         awscSaZuCMfh3NkFYva2PCuVMUQaLxH8zEa0zmaDhvPISQtVMOJVb6hKEbvgpnbaPSVH
         9IxEi6Ln7M5uTPFtRJEOsOAdPDZdp3OhW6eLOiordcik4f3xkIZfbAU1Ntkm3LHQ93T3
         4wgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="L++/HF+O";
       spf=pass (google.com: domain of robh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=robh@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l192si111903oih.3.2020.12.01.12.13.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Dec 2020 12:13:52 -0800 (PST)
Received-SPF: pass (google.com: domain of robh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 974892151B
	for <clang-built-linux@googlegroups.com>; Tue,  1 Dec 2020 20:13:51 +0000 (UTC)
Received: by mail-ed1-f49.google.com with SMTP id q16so5244167edv.10
        for <clang-built-linux@googlegroups.com>; Tue, 01 Dec 2020 12:13:51 -0800 (PST)
X-Received: by 2002:a05:6402:553:: with SMTP id i19mr4964942edx.194.1606853630068;
 Tue, 01 Dec 2020 12:13:50 -0800 (PST)
MIME-Version: 1.0
References: <202012011747.PIcmivAO-lkp@intel.com> <20201201122915.GC31404@gaia>
In-Reply-To: <20201201122915.GC31404@gaia>
From: Rob Herring <robh@kernel.org>
Date: Tue, 1 Dec 2020 13:13:38 -0700
X-Gmail-Original-Message-ID: <CAL_Jsq+iRn3YdTi_PBkDoY86mJkSp=1-oKmG+Fsz8HrEwyNNhA@mail.gmail.com>
Message-ID: <CAL_Jsq+iRn3YdTi_PBkDoY86mJkSp=1-oKmG+Fsz8HrEwyNNhA@mail.gmail.com>
Subject: Re: [linux-next:master 6272/9613] unittest.c:undefined reference to `of_dma_get_max_cpu_address'
To: Catalin Marinas <catalin.marinas@arm.com>
Cc: kernel test robot <lkp@intel.com>, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Memory Management List <linux-mm@kvack.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: robh@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="L++/HF+O";       spf=pass
 (google.com: domain of robh@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=robh@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Tue, Dec 1, 2020 at 5:29 AM Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> On Tue, Dec 01, 2020 at 05:32:51PM +0800, kernel test robot wrote:
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > head:   c6b11acc5f85b6e11d128fad8e0b7b223aa7e33f
> > commit: 07d13a1d6120d453c3c1f020578693d072deded5 [6272/9613] of: unittest: Add test for of_dma_get_max_cpu_address()
> > config: s390-randconfig-r034-20201201 (attached as .config)
> > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project ac40a2d8f16b8a8c68fc811d67f647740e965cb8)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install s390 cross compiling tool for clang build
> >         # apt-get install binutils-s390x-linux-gnu
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=07d13a1d6120d453c3c1f020578693d072deded5
> >         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
> >         git fetch --no-tags linux-next master
> >         git checkout 07d13a1d6120d453c3c1f020578693d072deded5
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All errors (new ones prefixed by >>):
> >
> >    s390x-linux-gnu-ld: kernel/dma/coherent.o: in function `dma_declare_coherent_memory':
> >    coherent.c:(.text+0xf8): undefined reference to `memunmap'
> >    s390x-linux-gnu-ld: kernel/dma/coherent.o: in function `dma_init_coherent_memory':
> >    coherent.c:(.text+0x174): undefined reference to `memremap'
> >    s390x-linux-gnu-ld: coherent.c:(.text+0x344): undefined reference to `memunmap'
> >    s390x-linux-gnu-ld: drivers/of/unittest.o: in function `of_unittest':
> > >> unittest.c:(.init.text+0x120): undefined reference to `of_dma_get_max_cpu_address'
>
> Thanks for the report. I think it needs the diff below. If Rob/Nicolas
> are ok with it, I'll add it to the arm64 tree (with some commit text):
>
> diff --git a/drivers/of/unittest.c b/drivers/of/unittest.c
> index 98cc0163301b..799125ef66fc 100644
> --- a/drivers/of/unittest.c
> +++ b/drivers/of/unittest.c
> @@ -871,6 +871,7 @@ static void __init of_unittest_changeset(void)
>
>  static void __init of_unittest_dma_get_max_cpu_address(void)
>  {
> +#ifdef CONFIG_OF_ADDRESS

       if (!IS_ENABLED(CONFIG_OF_ADDRESS))
               return;

This once again makes me want to kill off HAS_IOMEM. Or at least
always have a dummy ioremap() and friends for !HAS_IOMEM.

>         struct device_node *np;
>         phys_addr_t cpu_addr;
>
> @@ -884,6 +885,7 @@ static void __init of_unittest_dma_get_max_cpu_address(void)
>         unittest(cpu_addr == 0x4fffffff,
>                  "of_dma_get_max_cpu_address: wrong CPU addr %pad (expecting %x)\n",
>                  &cpu_addr, 0x4fffffff);
> +#endif
>  }
>
>  static void __init of_unittest_dma_ranges_one(const char *path,
>
> --
> Catalin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAL_Jsq%2BiRn3YdTi_PBkDoY86mJkSp%3D1-oKmG%2BFsz8HrEwyNNhA%40mail.gmail.com.
