Return-Path: <clang-built-linux+bncBCQJP74GSUDRBUP2QKEQMGQEIM66DMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DD3163F3990
	for <lists+clang-built-linux@lfdr.de>; Sat, 21 Aug 2021 10:46:10 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id r6-20020a92c506000000b002246015b2a4sf6770236ilg.21
        for <lists+clang-built-linux@lfdr.de>; Sat, 21 Aug 2021 01:46:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629535569; cv=pass;
        d=google.com; s=arc-20160816;
        b=P7I5Vh8JXKPNLva6yb7o9hN/guRI6OK83OOGqYBpFMSNqGlVUMmHZaZ/WwAPaNvWrw
         C9qJWrT2XhodaoGDlpP/xz5GVOCcGwCL+jW4N0V2kwvnfCltro17uuiEuTPVlViLnIS9
         FOK8n2MaLEjuGhmkxkgM9A92flckvhog1FYM96DWM+He28o+HshgVEWg8w5rtDvMuls7
         E0T0nxM6Nv9Y9yIoWnQW+J7WcUWskqQgLX8jyvOCHErInzQc8EY37OsAsjumU1E4wuA3
         K2jGw0AIVxkXsEX2ysgkcHY+ZZ3jYi1ygBlM8WU8kOFl42XVlikodRsnkfEriF7BzjeY
         gQMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=z+fZFDxaRzFzEUbHb2zE6kSx0cjvr2nX9xyS4aoSS0o=;
        b=o6oTBMB5AQnUCRZnWQXNcIrhQuKO6Plda0/7TWVVQrOdpyex1FC+8QYcaByRx95LIj
         IDIO20m7Svb65smJ/auEbzsRzcYasigcw2A0m35KazvysN6oAo1fymfu7oncrNQfcGGV
         iOVj4gFrDJhGWW/QvTp+qYUmOafuQ0U/oqHlpKmGF+ejC7KVLBUVOpLGQ6xbWox4mqdi
         gtZUalcr3PcG+oLndI09lyoyqu48pGH27t+kzpHFrBrfR18J42fEG85eSCoL31GZuHEn
         E/e0DpOYhHKZ2AMgeZ9zYupeenNJ436U+dsFY4BGJQoJ7w6zXi3kcKrt4zB5wxygKBT6
         g4RA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.217.51 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z+fZFDxaRzFzEUbHb2zE6kSx0cjvr2nX9xyS4aoSS0o=;
        b=SLN+w/DUTt2Abkpj2UUkWK27txsfcmDVhaa99cw9TTKFNiADYH5xFCGhmhkRhSRRXk
         pgmksUPCDM7ong52rX0E/2yLDJWQFxS9BgL5R3Tn5fTwnOkmo7AMnqH7/0CrzPPHeQz0
         YIXCyQR0RpvX7DHeZbCOihWWukhMI3PeAb5kTx20q73EyFR+LP69xws/BM9Bw+Tgw1/6
         u5vs0zBPAYIoGEB7jXoQzGXgcCksT7u8eaXHNfa88S+1ykazog1w18F7KtMK7lZpICX+
         0lgk3ay0jGrXLmg74btY32KDrHax/w+gu6fJ/AcOj7mI4/z8bKpYWc3kM0uXjF1o7uWi
         QiHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z+fZFDxaRzFzEUbHb2zE6kSx0cjvr2nX9xyS4aoSS0o=;
        b=qJNha00mIWsxnkXPoH47zsWg+EdhnZQWnGwN7hmvhNuB2TYAKBCpscwtZSVyt5WVkO
         GfRLwLZdz6MKWy7Vh9+J8iRPqECh4LtA9gVW0hoPFEno/jbbxHE8OYoBHLJF4L0sT8S9
         cyG4BpyvYLIA8S3AMXmc5c63LCuKGDjnmCG3orFWyqmwoQI67MSFhi2Blc2IWKECma2b
         WemtIAzBCLrSVyGS+/GwdlVOy88nT0xT1mMz7ZwY0TgE5R8NMOWcnE3ph0hYmCpY7pM4
         n7Igv8FwSaEPpY3HDr6nsljA2i5uzgt6KfWzznzETE/wuSXt6AP0O1oG0D149y7T8vG4
         9aHg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532gUVea1ai3Dx+UaXLmQQvYf6QlfC7LaXmv6Mo9gOJcnjXs9HNd
	DcYr83FYc++5/s8rQDVWOBs=
X-Google-Smtp-Source: ABdhPJyV4LlDzk6dMUAWnbwmgqJpb/WrvynWfSL+L61ftb5IRIoLlQAGTi0LIG0yfTmBIQmD1kcl3g==
X-Received: by 2002:a5d:9284:: with SMTP id s4mr19400604iom.131.1629535569687;
        Sat, 21 Aug 2021 01:46:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:c55:: with SMTP id g21ls1539604jal.4.gmail; Sat, 21
 Aug 2021 01:46:09 -0700 (PDT)
X-Received: by 2002:a02:a317:: with SMTP id q23mr17664273jai.83.1629535569221;
        Sat, 21 Aug 2021 01:46:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629535569; cv=none;
        d=google.com; s=arc-20160816;
        b=Jc5ZU7O7GFT1X9JEC/xcjnxEpt2/GmZUAHBXWr1BS7N6qCvf2w3c2zQ1ab1lKsWJfr
         idf26yNm6Ah3Xdxp/HopRq/xMZxiQ7LPLKfSMWq81Zb6UZUpLIZIOR6rIAd67B8OdB0i
         igJYHMsSpmlfWryuPLKWXx1jT1PH6SkjVKZEaQdbYXex3zUKoZFIRgjNfesMUB2Y6HNc
         A94HwRnnTiqKOCK1sQmTByYdzL2W59YUpXmlhzB1pegdjVYfHRUJ5LfmBsrbWXD1YtFJ
         /7yhCTLkKGYICRmJw6r0iMDz6F6+7owwYQAaWU2pvOXTjWRi6DxXQrtKMQrVNM+x7MCo
         rnYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=va6Gb7rjmVjoeAGLob0DQSqpDmgniEt7RkRQXhCDyoI=;
        b=tqTrEj4xDrFHlaUrVuS4vJjNupPUsKtlVECVeBhwWY3Tyr+znjLPbvHqD2ilQQgqFi
         w1w74O4BoC/jrtcWkxxav9IS0TZdCUWnf5pXExmRVGGEhgZJ83jNSiZ2GgFRyiFP1mJd
         xuOqBGkxu4NvXzJVH4zNTPmL4Q+5R5JnmefCYDQXPVEbS6xkfmUZjpKlBwCTuGoaBh1w
         xmERdeLGCPoVcmdN9whwzBocNu/SQV+/gtfkwa4xZvx/VyLZtvaajVErcTE0LFCol67c
         hQfGiEL/ud9RWNhtvDykJGxuhEyAkZuolg60QVHrm1AWk+PKIkXUyXPLf+BdL+s2SNp7
         xdxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.217.51 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com. [209.85.217.51])
        by gmr-mx.google.com with ESMTPS id v7si578392ilo.0.2021.08.21.01.46.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Aug 2021 01:46:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.217.51 as permitted sender) client-ip=209.85.217.51;
Received: by mail-vs1-f51.google.com with SMTP id e9so7722943vst.6
        for <clang-built-linux@googlegroups.com>; Sat, 21 Aug 2021 01:46:09 -0700 (PDT)
X-Received: by 2002:a67:5c41:: with SMTP id q62mr19777652vsb.7.1629535568565;
 Sat, 21 Aug 2021 01:46:08 -0700 (PDT)
MIME-Version: 1.0
References: <202108141331.fMjjWaW2-lkp@intel.com>
In-Reply-To: <202108141331.fMjjWaW2-lkp@intel.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Sat, 21 Aug 2021 10:45:57 +0200
Message-ID: <CAMuHMdXUpk_dLhvcdgs1H6yLPrwXFJz_86dfXpm8PYxNq+DXrQ@mail.gmail.com>
Subject: Re: arch/arm/boot/compressed/fdt_check_mem_start.c:62:10: warning: no
 previous prototype for function 'fdt_check_mem_start'
To: kernel test robot <lkp@intel.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, kbuild-all@lists.01.org, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Russell King <rmk+kernel@armlinux.org.uk>, 
	Ard Biesheuvel <ardb@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: geert@linux-m68k.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.217.51
 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
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

Dear Robot,

On Sat, Aug 14, 2021 at 7:43 AM kernel test robot <lkp@intel.com> wrote:
> FYI, the error/warning still remains.

Yes, and that's fine, as this function is never called from C code,
only from assembler.

> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   dfa377c35d70c31139b1274ec49f87d380996c42
> commit: 0673cb38951215060d7993b43ad3c45cd413c2c3 ARM: 9045/1: uncompress: Validate start of physical memory against passed DTB
> date:   6 months ago
> config: arm-randconfig-r003-20210814 (attached as .config)
> compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 62df4df41c939205b2dc0a2a3bfb75b8c1ed74fa)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=0673cb38951215060d7993b43ad3c45cd413c2c3
>         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>         git fetch --no-tags linus master
>         git checkout 0673cb38951215060d7993b43ad3c45cd413c2c3
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> arch/arm/boot/compressed/fdt_check_mem_start.c:62:10: warning: no previous prototype for function 'fdt_check_mem_start' [-Wmissing-prototypes]
>    uint32_t fdt_check_mem_start(uint32_t mem_start, const void *fdt)
>             ^
>    arch/arm/boot/compressed/fdt_check_mem_start.c:62:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    uint32_t fdt_check_mem_start(uint32_t mem_start, const void *fdt)
>    ^
>    static
>    1 warning generated.
>
>
> vim +/fdt_check_mem_start +62 arch/arm/boot/compressed/fdt_check_mem_start.c
>
>     46
>     47  /*
>     48   * Check the start of physical memory
>     49   *
>     50   * Traditionally, the start address of physical memory is obtained by masking
>     51   * the program counter.  However, this does require that this address is a
>     52   * multiple of 128 MiB, precluding booting Linux on platforms where this
>     53   * requirement is not fulfilled.
>     54   * Hence validate the calculated address against the memory information in the
>     55   * DTB, and, if out-of-range, replace it by the real start address.
>     56   * To preserve backwards compatibility (systems reserving a block of memory
>     57   * at the start of physical memory, kdump, ...), the traditional method is
>     58   * always used if it yields a valid address.
>     59   *
>     60   * Return value: start address of physical memory to use
>     61   */
>   > 62  uint32_t fdt_check_mem_start(uint32_t mem_start, const void *fdt)
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org



-- 
Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMuHMdXUpk_dLhvcdgs1H6yLPrwXFJz_86dfXpm8PYxNq%2BDXrQ%40mail.gmail.com.
