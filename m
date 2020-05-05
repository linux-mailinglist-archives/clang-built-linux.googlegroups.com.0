Return-Path: <clang-built-linux+bncBDYJPJO25UGBBFG7Y32QKGQEST3FYJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 66E781C6004
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 20:25:25 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id y31sf2612423qta.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 11:25:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588703124; cv=pass;
        d=google.com; s=arc-20160816;
        b=IhCb71CIcyv4YvM6I77I84e5oRdc2m+ERbVGf15HFX3BZbzHNZDkO00Lutr8We4F86
         uvyhrvNikt+p4RK9deZb1gRE7fLO1Zquv2jZV7x216Kb/EwhudzT9KuRT9G8f0LKd1IS
         1sH4ObUNTtLUm1CBrm412CRiuE41gq3KABQM5mCbOIjQ6GdDuo/56XHC1VDGUBFTX3ev
         uLW22be1MiqdOFrjM4Jg6mwirIRoOw5jS8ms2kOBAImDfKd3twBxAw1goRPQRPrX+dJK
         GNTccB7RGkCf6B8YO+heVHtvgTHgAqC7joluT4nLIhKT2WHP1Z9RY1LRCWqQrMp93UWW
         mc1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=w0I60Ie/faH95M+o0pJ1YHwbI5M27LacGr4FM/mqgqc=;
        b=igzq9/S8Wy1ayVdvMd4tSAdVjcCHoWUsTyH3Xws/3xMKCxfIMcNxJZLzjU4DgaZp/u
         sG4L68/dCNaOUtAxIT4rs7Z3KsFdlFgupMfQVWE99r6gat1Rngf+A2yEMlqmNQyTjK7m
         FmUyVW4SfAqgXLk5KeSue+d9iHaeI6EqqfZ1cRhO9dHLL78Hmdve0R5lXBJqSr+SjLwI
         PjbGKzh9jYnMFR/ZRKsUJQOtQ02egtKUyBy0VYfdisU4S3xX02ktPkiS4sFcTh3PAu+g
         hF9nhohUg5NnDzC7gT1TqEQWixIQ9LJs63WufIvSCTMVGVAUwAc52CTEFq4FE0YcqyZP
         Y2Lg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TTXqSdYe;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w0I60Ie/faH95M+o0pJ1YHwbI5M27LacGr4FM/mqgqc=;
        b=T/n3cfnWORXQC0b09533tHSvI0ZQYQkJ5R5+dT+3fvgxfFUpuHUfntYxH2l33zYowE
         MFPgF/nJx6xxQrRX9PLtE3F7nHLYTwoRJ1E8W6Z9SXeneIRDG0Ct5CRkIYP6Dynkrt3t
         H3jpKNjIaieOef8fVOP8JSSyiyaFXUXuyMjp/bLVZ6MS7t/dxI1S3mQSmnivJDOsIkXL
         v28IFMI6stRGz7Or0aq3g+QKo0JpMpRH3PITKbK6oeUvxWji3nRlbU3U3VYARiHZANvw
         VL4xPnC/0EASte06/kxZRg/3+KTHwBcjPrHlrhavoqLVgS04mueL8FHqio3m9Uhd0kal
         pKkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w0I60Ie/faH95M+o0pJ1YHwbI5M27LacGr4FM/mqgqc=;
        b=AabwtQg0T6aYXFWza7GnvoK1U7GVpbqJUXVsT1bLW0Rto9hluR4a/FzPhG2f87pvM+
         +isQ3YgtBaiPI17Tn5Wq+4PflyQZPhkHA9SLkMNkCSkofEbgQclKF0pB+SVLbxqR+e6P
         86Zc3mnV6UWOz/+/xX2qtLff3/GU8qy9DiBsNAhXsN7Zm8whMC/f+21t/kTxXpZ26NCn
         KLZiWH1E4BF5QBXD+wOOGWbLSqQdWL65/cImR0JI6uF5IMZcXDA4C9a+uR9RpkCmFvBH
         lo19FSY2Wv8ywuA5nGi+rwf9zcA5bpb+euWqNfg8acEzS9GSa7dZcETIZyU5ncprl/H7
         7Hhw==
X-Gm-Message-State: AGi0PuZ/c9hTOXdEz39SWdPBlY4uYkKeRcWzs8nOazEoBm0uhmM3aqbp
	ltZstpTYWwpABkrWdxOKFcU=
X-Google-Smtp-Source: APiQypIigk/I09hcc5hXs/+l62JatkzWKPG947b+du+ToJaZAQ45z68D29fAoG3AQ1uqlDRHcMtz2w==
X-Received: by 2002:a37:a98c:: with SMTP id s134mr5038117qke.259.1588703124465;
        Tue, 05 May 2020 11:25:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:434f:: with SMTP id q15ls282297qvs.4.gmail; Tue, 05 May
 2020 11:25:24 -0700 (PDT)
X-Received: by 2002:ad4:4744:: with SMTP id c4mr4177218qvx.203.1588703124132;
        Tue, 05 May 2020 11:25:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588703124; cv=none;
        d=google.com; s=arc-20160816;
        b=W2xm8qpdDB15fEWKaeiII6ULVvk7Oe0F/1GgXgLYOCQ0KG6ioeSq842xsblo1tXt8N
         WZLafhFNNI5EhONN7qJdbucQMREIamBCvlaKqMedTilyNsSv7igI4N4Cxsw8Z2EJONZB
         N8p58hcirR+hzePAs3/pDs34lDgF7ZZUJ7Y9c9u2KUL6B5lboUjm0mKzrmYK8Od19VzG
         Afa9bLxLYZWapI/WtjoIYXm3br8O03FUW6YQkydEyNejB5GoIV/U/K9p9kFfIq3wG8xM
         JwhknqWUIUC0Zjd5R26IH7paitaozx2KjP4TNiTRYdjMj+T2NQg3XGIrYnr9Qz6uYH+s
         W9tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=NNRuq0AT40YPouot7CnciL/M4hY7BDihgw1u2XeF9f4=;
        b=z1XU6NgMoXg6EYafOB7gY3S1zmqhzhNaBSp0SsRJX09uISMSk0pfVWo5WlVGCbKdBi
         huHrbjke/bS3vSIomN6bTyAGGuGPLM6ZGsTxAkrLjldbWS/e9MrK9CQFRZ5mf0Tm2pT1
         O0WAhv7dICdx+hlIUnh1lbaXuIrPryUCIguUzUTHtzBHCdWR7LohEczUGfq7HSZkwwun
         3dZjedhTDjVUsY85UKTu7i3h1lvFgZP8aRDhyBDSJDgosVC3TuTcxsCY8gRMOonSb7UQ
         BmjPXcbuRSD3Y106rZTHNA2b9+P2VWoTc4dazdF8rk/A/OmMo+Lfkz/akC5SBfQ+W42I
         IaSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TTXqSdYe;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id h33si216963qtd.2.2020.05.05.11.25.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 May 2020 11:25:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id r14so1286780pfg.2
        for <clang-built-linux@googlegroups.com>; Tue, 05 May 2020 11:25:24 -0700 (PDT)
X-Received: by 2002:a65:5b84:: with SMTP id i4mr4038092pgr.263.1588703122954;
 Tue, 05 May 2020 11:25:22 -0700 (PDT)
MIME-Version: 1.0
References: <202005051634.Yx7kMDrZ%lkp@intel.com> <alpine.DEB.2.22.394.2005051117060.230747@chino.kir.corp.google.com>
In-Reply-To: <alpine.DEB.2.22.394.2005051117060.230747@chino.kir.corp.google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 5 May 2020 11:25:12 -0700
Message-ID: <CAKwvOdniBgjgqY_YFY+80isdturCb75zSqCdV0GLH8dT7yS4iA@mail.gmail.com>
Subject: Re: [linux-next:master 3972/6402] kernel/dma/pool.o: warning:
 objtool: __llvm_gcov_writeout()+0x14: call without frame pointer save/setup
To: David Rientjes <rientjes@google.com>
Cc: kbuild test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=TTXqSdYe;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

On Tue, May 5, 2020 at 11:19 AM 'David Rientjes' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> On Tue, 5 May 2020, kbuild test robot wrote:
>
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > head:   dfd71d381f7e1aa118e0368774aa05f5c4a48870
> > commit: 82fef0ad811fb5976cf36ccc3d2c3bc0195dfb72 [3972/6402] x86/mm: unencrypted non-blocking DMA allocations use coherent pools
> > config: x86_64-randconfig-d001-20200502 (attached as .config)
> > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 45b7d44ecb01780e26dc8d3c30bc34e32c08dd70)
> > reproduce:
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install x86_64 cross compiling tool for clang build
> >         # apt-get install binutils-x86-64-linux-gnu
> >         git checkout 82fef0ad811fb5976cf36ccc3d2c3bc0195dfb72
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> > >> kernel/dma/pool.o: warning: objtool: __llvm_gcov_writeout()+0x14: call without frame pointer save/setup
> > >> kernel/dma/pool.o: warning: objtool: __llvm_gcov_flush()+0x0: call without frame pointer save/setup
> > --
> > >> kernel/dma/remap.o: warning: objtool: __llvm_gcov_writeout()+0x14: call without frame pointer save/setup
> > >> kernel/dma/remap.o: warning: objtool: __llvm_gcov_flush()+0x0: call without frame pointer save/setup
> >
>
> At commit 82fef0ad811f ("x86/mm: unencrypted non-blocking DMA allocations
> use coherent pools") there should be no new kernel/dma/remap.o warnings,
> the Kconfig is merely selecting DMA_COHERENT_POOL.  The patch series
> actually only removed code from kernel/dma/remap.c, it did not add any
> code :)
>
> Since there are tons of warnings all over the kernel when building with
> this .config (probably because of CONFIG_FRAME_POINTER) I assume this is
> unrelated to this particular series or anything that gets introduced in
> dma-mapping.git.

Yes, this is an unrelated known issue, sorry.
https://github.com/ClangBuiltLinux/linux/issues/955
(We just got clang builds turned on 0day bot, and are now being
drowned in build reports from randconfigs we hadn't previously found.
Which is both good (what I want), and bad (what I don't have time to
fix all the different reports)).

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdniBgjgqY_YFY%2B80isdturCb75zSqCdV0GLH8dT7yS4iA%40mail.gmail.com.
