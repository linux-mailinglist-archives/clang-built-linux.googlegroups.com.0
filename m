Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJ7CWT5AKGQEG2ITMGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 335E5257F7C
	for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 19:19:37 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id mu14sf115322pjb.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 10:19:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598894376; cv=pass;
        d=google.com; s=arc-20160816;
        b=MKBNUvSEx2J3KmAa8nCvjnG7iW4P6/ByKm6G6yi1SRHTnM4yzwD+wBrblhpe6jQ6Mc
         6EUsY3HdJ2oldI+3h0BKEBnRmldPAqF4AYmTb8ccsA5r0DELKmRS3yyuzv0gsIwul3+z
         hmypzWSuolfv99n0sKNicdr4i47tfMFfokjUp92r51rm9yPETnoLbIGp3WcphTjJ3fSD
         /XW+MehuekNGfZCHwaDD7tSplaEUlsJjVLiPqCdlTq3+VKGLgNQzLqINFsn7dM1v2qyc
         32NbtGypSKBnvs6o9veyXGSEvhzRm1KLjJjKTssgMiFHNrOWdC4sWIkQeqJlndHuXnHV
         oiuA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=dpGKAqtw82WgDRROQbAb9uqV1NwFYkGdF9+GTCG178k=;
        b=qSmXD1akLkw3WHeYN44dvcIBDIcxrZwZ3/WPXkbeM1btvVX2QSbdicqIevoCcng2Ov
         SaweFcThDY3IUj9F/MnnLBeYlyalXhgWZCZyfzHY8ydq7L/cpWPIKsz5exCPBomDNYCe
         xP8MsHZXYbdtddZ+Id8PmsksPlUxjso9QtaiKo9KCmEEf7dSOGYakB3u9+X2hlpRoeaS
         jMn1U1+CzJA379jxrSgdY10+gNzQjAH4qfo3jFzV2U7/TUjDEfPYed3NaHpDvigwhRfx
         SZj1BQpKNu/zB2k+trS0hTbifoDfGfrpmdXinHHAdP1BSf2r+C3gn0xDwYi/psI0EG7z
         8nzQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=v9feUoCj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dpGKAqtw82WgDRROQbAb9uqV1NwFYkGdF9+GTCG178k=;
        b=OnyOjf8At076zn94855hpvhwaNoceZT7fYUnKBfdKvI14/XuiEb/MoLvwrxQbQZQ3I
         m7XSsq/qzIoIwDd+XSRf2DrjWIEM6ryd5dIDMHaCdp4eXLC9Uq0a7YPfhX4Tqn4hfVEI
         RIKzGpDaZf5NYpG2QKi4w7/Go1fWqOwhgUZ2OvFUe/X8oXx4Mg/0MhKerOLHAgn/Rohn
         nOdb7McN0WdfMNydMi5PqTx2sEjoHoK4Qik996+39zBmZ1vLv1uOSFrn/xslQgoast6a
         09Wi0AEttZhx19GjbWjPYXWOnu0CkR95nTls8lrUxMWSszUEZnlYQ1lSWAGIs6KaoZzA
         QIqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dpGKAqtw82WgDRROQbAb9uqV1NwFYkGdF9+GTCG178k=;
        b=OjrlraBC/tz9KK5RPYmUi1komP9pc7fEfLXQTrQgtsWqtstEIRt92x3AN5vZYlUYIL
         NzElduQPSNP5AAQTOEj3yj+9zrM+WJCD5uROnzPZcYwVcKwuSPlkDHHORo71zaTKFgi+
         ohZqDE6yXXWCl8/vbr41mJOtxtrXAu4jA4g+Q/oE+wg/fR/tGMpf8HFpS4j4JqgqHjZ5
         MTtE5Xe8dtxEb1eMDUnvyp/8dXlYKsS5sVei6dSZsKZzGojmNAtR+HdelHJpKh2vcLdA
         3gPcG+4h22FI72PFxysgcpR9qP5wL1j7MZXfyQdykEi13QbBBKE6lb22+AW1aIx3H0r1
         dMNA==
X-Gm-Message-State: AOAM5306JxNbdJN3BgobV+RvyyLchN5adpbQ06F2S2FlGcOC0VkLUPnJ
	g3B70dwGORKHIQf5+1nPga8=
X-Google-Smtp-Source: ABdhPJzGZje9NehRIGUQOWjyR7OqJIlOJJvkqoegKrbUdHyGCu/RBEzuxE+ngW7ESoXX+/gigyuuDA==
X-Received: by 2002:a65:5c0d:: with SMTP id u13mr2057692pgr.333.1598894375893;
        Mon, 31 Aug 2020 10:19:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ec17:: with SMTP id l23ls100554pjy.1.gmail; Mon, 31
 Aug 2020 10:19:35 -0700 (PDT)
X-Received: by 2002:a17:90a:1910:: with SMTP id 16mr360669pjg.76.1598894375424;
        Mon, 31 Aug 2020 10:19:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598894375; cv=none;
        d=google.com; s=arc-20160816;
        b=EbZXf8YW4i+uOmWNgCIO73GIkXyEVJLMDEJb2BnPH4U9epT/LosXmW89Mm3eO+sE4F
         ROZzaFJJ46Hjf5eGnqPu/c/zgK0USzI/XbrCgSMg2T+ncjp04Z1lL4Z70ze4PQMvBmR0
         V3bZ2/98Lo/muaEtD/RxpZc1O2HKMe1AkVc36NNBJuQ4cxz8NvPk+raoi5WOE2dJXRDA
         hdrCM8nuJXSQHNj0/LKg8RTAvdTgI0K2d8nhMcD57M9ftFaMgp04J3UT/pv1PyBtXQPH
         dYAcgEodwqy3n6h+ZCluQ+PN+zY31s5ACZ4aZbbm5ETDXvudPPB7rqDQvUz7AP36As2s
         hWfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=9MpipiwXTNzZHkf9cIRXt5D63hj3ZsJzvV/rogss4Ck=;
        b=FZGetQBdEV/8P42/rzZMsAOyayo3Okd54taN9zUOSrM3eWeImnETbn/RFQ4BUZnDLy
         r5tAGUKrB3+sZpczca8jJ4OhQnMCX+i28Pk2gFA8YScaMIBkXkWcJoIZKf8SqzOZBoTU
         pwkO3hnPq9bWyTjC/4jZz1VpJhIEdYLk6BF48K5vVLlXHPMkvbzHVcN42RiJYxhHbJ1Q
         qQIvXWDbJ78MZoi0p17d35VDKZgTK5tfDqj/VwV4f2YwMo0DpXuqPjiraTVOovyluPMi
         1h41RPewu4k+NDHBi6q7LaDfWuuliDqJwgB46KONq3SzyNYwKMHmbYKK6W8LtBCsgFS/
         cxFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=v9feUoCj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id s2si452709pgh.4.2020.08.31.10.19.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2020 10:19:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id z15so3362606plo.7
        for <clang-built-linux@googlegroups.com>; Mon, 31 Aug 2020 10:19:35 -0700 (PDT)
X-Received: by 2002:a17:902:9f8a:: with SMTP id g10mr1800684plq.158.1598894374692;
 Mon, 31 Aug 2020 10:19:34 -0700 (PDT)
MIME-Version: 1.0
References: <202008292210.L44zhfiq%lkp@intel.com>
In-Reply-To: <202008292210.L44zhfiq%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 31 Aug 2020 10:19:23 -0700
Message-ID: <CAKwvOdm0fZLf5BoF9RDdsRWKDpzomJzE=dy5QgpJnstTLHBGxg@mail.gmail.com>
Subject: Re: ld.lld: error: include/linux/trace_events.h:613:(.text+0x748):
 relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile
 with -mno-relax
To: clang-built-linux <clang-built-linux@googlegroups.com>
Cc: kbuild-all@lists.01.org, kernel test robot <lkp@intel.com>, 
	Fangrui Song <maskray@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=v9feUoCj;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
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

https://github.com/ClangBuiltLinux/linux/issues/1020 sounds like we
should add `-mno-relax` to KBUILD_LDFLAGS when using LLD for now.

On Sat, Aug 29, 2020 at 7:29 AM kernel test robot <lkp@intel.com> wrote:
>
> CC: linux-kernel@vger.kernel.org
> TO: Feng Tang <feng.tang@intel.com>
> CC: Andrew Morton <akpm@linux-foundation.org>
> CC: Linux Memory Management List <linux-mm@kvack.org>
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   4d41ead6ead97c3730bbd186a601a64828668f01
> commit: 09c60546f04f732d194a171b3a4ccc9ae1e704ba ./Makefile: add debug option to enable function aligned on 32 bytes
> date:   2 weeks ago
> config: riscv-randconfig-r014-20200829 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c10e63677f5d20f18010f8f68c631ddc97546f7d)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install riscv cross compiling tool for clang build
>         # apt-get install binutils-riscv64-linux-gnu
>         git checkout 09c60546f04f732d194a171b3a4ccc9ae1e704ba
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
>    ld.lld: error: arch/riscv/kernel/head.S:52:(.head.text+0x8): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
>    ld.lld: error: init/main.c:664:(.text+0x0): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
>    ld.lld: error: include/linux/trace_events.h:611:(.text+0x25C): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
>    ld.lld: error: include/linux/trace_events.h:612:(.text+0x46C): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
>    ld.lld: error: include/linux/trace_events.h:613:(.text+0x6BC): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
>    ld.lld: error: include/linux/trace_events.h:613:(.text+0x6FC): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
> >> ld.lld: error: include/linux/trace_events.h:613:(.text+0x748): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
>    ld.lld: error: include/linux/trace_events.h:613:(.text+0x788): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
>    ld.lld: error: include/linux/trace_events.h:614:(.text+0x7D0): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
>    ld.lld: error: include/linux/trace_events.h:614:(.text+0x810): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
>    ld.lld: error: include/trace/events/initcall.h:10:(.text+0xFD4): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
>    ld.lld: error: include/trace/events/initcall.h:10:(.text+0x103C): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
>    ld.lld: error: include/trace/events/initcall.h:10:(.text+0x1150): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
>    ld.lld: error: include/trace/events/initcall.h:10:(.text+0x1254): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
>    ld.lld: error: include/trace/events/initcall.h:10:(.text+0x1394): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
>    ld.lld: error: include/trace/events/initcall.h:10:(.text+0x13FC): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
>    ld.lld: error: include/trace/events/initcall.h:10:(.text+0x1450): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
>    ld.lld: error: include/trace/events/initcall.h:10:(.text+0x1538): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
>    ld.lld: error: include/trace/events/initcall.h:10:(.text+0x15FC): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
>    ld.lld: error: init/main.c:664:(.init.text+0x0): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
>    ld.lld: error: too many errors emitted, stopping now (use -error-limit=0 to see all errors)
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008292210.L44zhfiq%25lkp%40intel.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm0fZLf5BoF9RDdsRWKDpzomJzE%3Ddy5QgpJnstTLHBGxg%40mail.gmail.com.
