Return-Path: <clang-built-linux+bncBCS7XUWOUULBB2XJWT5AKGQEFDL5YXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id E677D257FAB
	for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 19:35:39 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id z189sf1097828pfz.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 10:35:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598895338; cv=pass;
        d=google.com; s=arc-20160816;
        b=FisUikxEyz4j62IuU7vLltfZQFCr+vypYWBQVB8FAmvuk+bFN+c1/mTsR93YgqmNaz
         uPPA7Et1cQGAYZbC4BG8tbkV2uyc913gEepCuwEMUC66yuX5FRPsF/8pyunKDgM/i48k
         NKf87BXM1OpHe7UcTCxIxnL1UOJ2/xLvfI3OPMJ6pPrzW33BxC+UGJMidZe189OOJryr
         03ELHkqo5FdqKMdyy/te1Jt+7jBq1DPzhoAckrSe2nJNhIUizWCKohBmB8eycdBIvhl7
         74/o2X/oGuPUf3vJ5Fug6ht4MSwtSD0mseuEM1idjXqatuuvDWWubCbsVIRjGjBSotCg
         s3kQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=HuqXAgS6JC0t/b+yyKGDG7Ipe7ay7DwDhkygdVhYU5g=;
        b=ApqJnrYKD5j0o6t8otXFjN/HAMvYham6bupgnmFbYiZExrFu0qPP8r7jaqskOZTksZ
         CFSvXolfSFQQMqefuv6EqXVuRSJ4cKQLBg8Ao9qGSN5J0wJp65wA9iRPpy7d/3cC+VpY
         0vKbRD9mMiQJeLYIDefsXQTzAEzGD5r/z4xRB7nrLf9VWydY47xzhdtq8QBtXHI5aEAG
         Gti2bXjzaZrsZiKkuUcysyY0XIZduR41TwjDVWXVwk/Musp9qBKBNElQGgxNwy4mcfDk
         Ygd3QgY+5nBLf/DOll2CPWj+JpCD3BV3/Af3uHl4DReTfAAO01pyHdqUynU84ykGZiCt
         DlmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Wv4aZIG8;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=HuqXAgS6JC0t/b+yyKGDG7Ipe7ay7DwDhkygdVhYU5g=;
        b=dfsXebNlo3aDXv4bayicg6dpnqrKhLthFw2JiZXJySS83ra2yFJngiqknSrVt3XO2r
         ro/ewnIKZ6kux1jQrJ2eRh1HrdI8VGoK2YuAtdjUptOaA42AIsQyjoZcNtT7lpLAOxdw
         VUj2+IOlooCC6GZvbUVRbe/L1/iQvXAFe+tG7q39jL6Y73LazIUG0rselMlIz4p/B/jU
         gAoMziqxtJNqlt2HO88ry5VDRnVebnoelHPilZbd1jPGR1mGiXFehEQYKbDlCiBtWhE8
         ZNJUNZK7Z9jgKqyLMHmDXOF7FgSGSF+7uoPSta840F+uYQscFVKhdK0F4MZ5eMdPzR3k
         PJ8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HuqXAgS6JC0t/b+yyKGDG7Ipe7ay7DwDhkygdVhYU5g=;
        b=OoehZDRA66M3i1UYWGeeqv1ZQjm4LGpRUXN7tGbvPeXxUpTgcPN526tYHL9D0X7ZLW
         K0fWaAq3C3eOa3X0c1p2r2bORG4tOEdjYyn+pJNtMLKO4mFpH6sFuDlRJ5w/hRcd3MTl
         XeD9TwEBKDyAuTkPAn9+McwWu3e/svy0uCywfj6YkLkb7sX3KW38f5WySdEtBgI2SSoq
         iA71EIbGD0XzDTFQS3BgzQ7mDiH+fWD8h2CQgGO8fpTztQGRAqsr17jVWMe8RrFxYFN0
         pJ7Qyr6gym55P76/sQRQ4gCR3FKnk8saZ2ol8nKQ0HO/0v0tl9uSRxUziwR2CDu77Mvu
         LiKw==
X-Gm-Message-State: AOAM533abKrrydd/8mpddeaNW9XqI8ePzcwmNZECplHqFOTksD8/s8C/
	quvbnA2BCP3TVD+dW+F04J0=
X-Google-Smtp-Source: ABdhPJyXzBk4gp+Ejw1+GEur+x3naKpAKKBggXMRZgfp6qK6jZmee+cKEwDyam1ngWaCeSR1JBtj6w==
X-Received: by 2002:a17:90a:4fe2:: with SMTP id q89mr437806pjh.70.1598895338634;
        Mon, 31 Aug 2020 10:35:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:3502:: with SMTP id ls2ls117828pjb.1.canary-gmail;
 Mon, 31 Aug 2020 10:35:38 -0700 (PDT)
X-Received: by 2002:a17:902:780f:: with SMTP id p15mr1891288pll.56.1598895338211;
        Mon, 31 Aug 2020 10:35:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598895338; cv=none;
        d=google.com; s=arc-20160816;
        b=GN/wTWLLncHV7eLfmca++S6r6sNjY3virWitIrLE4BtiAdNX+tWaNjVZbv4PbDmW28
         X/2fzTfxsEug+WnbmaysIWYlqXWHnDVX32YMkzj5tkrF7ItaZYGHx/e07T94zcO7wqQW
         TATX6RNszqNZ6IG4JCQ32f3vUMLkZTU2hoHohKI6q2sqZyPF9619ERLqfeyng2Wk4WAF
         t0QDADqLuPYp0OzBvO8lZ4cwv/7sYd2Wf4frQCJ5joGbwxuB3E686qV6zkgyBcvm9NmX
         P9Gwvwz2GIgwJPwCwnHiVhoLAP1s8We+UhnKVwC2dBESKbEGcqmpTmGyarjpk5Orpgx3
         fo3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=HlY9JCWqGpTX5dWN6Kfq35IbFz8F2BcgP29ffHwdGwE=;
        b=Rb42v3gQFHaiGd0ZssvF47G7G7pBCDxH/zA5o+QsEMx4y8xB2vC8Xz639vl6+SsJC0
         TiHFUGXq//ZCR3A6tGMKv2IuRcYPC1sM6PEoXSak/BgHqKRPYUhquJPAM87kkShyVrJw
         IsPA6fSYeUMsHBqVbszyeyhjq20K6Q9kUVBu9f++40y5LLplfv+eWN2yL6aeCEP+U8nP
         0bujjyulebUPF9Spmx5MaDLTajZ5zzw58gW3BGPYgkK5810Eny1Y/eiLNzxBawdZVn8b
         C/p+YU/5ZoMw5OX77Ear6A/j6yAKX5qRp4FWpSqyWCJviPcfvEhZJfbLoLWB+cC8inYH
         uq+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Wv4aZIG8;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id 129si430514pgf.2.2020.08.31.10.35.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2020 10:35:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id j11so3382920plk.9
        for <clang-built-linux@googlegroups.com>; Mon, 31 Aug 2020 10:35:38 -0700 (PDT)
X-Received: by 2002:a17:902:778a:: with SMTP id o10mr1829564pll.204.1598895337668;
 Mon, 31 Aug 2020 10:35:37 -0700 (PDT)
MIME-Version: 1.0
References: <202008292210.L44zhfiq%lkp@intel.com> <CAKwvOdm0fZLf5BoF9RDdsRWKDpzomJzE=dy5QgpJnstTLHBGxg@mail.gmail.com>
In-Reply-To: <CAKwvOdm0fZLf5BoF9RDdsRWKDpzomJzE=dy5QgpJnstTLHBGxg@mail.gmail.com>
From: =?UTF-8?B?J0bEgW5nLXJ1w6wgU8OybmcnIHZpYSBDbGFuZyBCdWlsdCBMaW51eA==?= <clang-built-linux@googlegroups.com>
Date: Mon, 31 Aug 2020 10:35:26 -0700
Message-ID: <CAFP8O3+yR1Hcd22DFREBzGRZGytA1TdCNmkdu-9ZMLmhZxqbPg@mail.gmail.com>
Subject: Re: ld.lld: error: include/linux/trace_events.h:613:(.text+0x748):
 relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile
 with -mno-relax
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, kbuild-all@lists.01.org, 
	kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Wv4aZIG8;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::642
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Reply-To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
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

On Mon, Aug 31, 2020 at 10:19 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> https://github.com/ClangBuiltLinux/linux/issues/1020 sounds like we
> should add `-mno-relax` to KBUILD_LDFLAGS when using LLD for now.

Yes. R_RISCV_ALIGN & R_RISCV_RELAX are difficult to implement. In the
foreseeable future we have to use -mno-relax with LLD>

> On Sat, Aug 29, 2020 at 7:29 AM kernel test robot <lkp@intel.com> wrote:
> >
> > CC: linux-kernel@vger.kernel.org
> > TO: Feng Tang <feng.tang@intel.com>
> > CC: Andrew Morton <akpm@linux-foundation.org>
> > CC: Linux Memory Management List <linux-mm@kvack.org>
> >
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.=
git master
> > head:   4d41ead6ead97c3730bbd186a601a64828668f01
> > commit: 09c60546f04f732d194a171b3a4ccc9ae1e704ba ./Makefile: add debug =
option to enable function aligned on 32 bytes
> > date:   2 weeks ago
> > config: riscv-randconfig-r014-20200829 (attached as .config)
> > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c1=
0e63677f5d20f18010f8f68c631ddc97546f7d)
> > reproduce (this is a W=3D1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/s=
bin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install riscv cross compiling tool for clang build
> >         # apt-get install binutils-riscv64-linux-gnu
> >         git checkout 09c60546f04f732d194a171b3a4ccc9ae1e704ba
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross =
ARCH=3Driscv
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All errors (new ones prefixed by >>):
> >
> >    ld.lld: error: arch/riscv/kernel/head.S:52:(.head.text+0x8): relocat=
ion R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with =
-mno-relax
> >    ld.lld: error: init/main.c:664:(.text+0x0): relocation R_RISCV_ALIGN=
 requires unimplemented linker relaxation; recompile with -mno-relax
> >    ld.lld: error: include/linux/trace_events.h:611:(.text+0x25C): reloc=
ation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile wit=
h -mno-relax
> >    ld.lld: error: include/linux/trace_events.h:612:(.text+0x46C): reloc=
ation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile wit=
h -mno-relax
> >    ld.lld: error: include/linux/trace_events.h:613:(.text+0x6BC): reloc=
ation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile wit=
h -mno-relax
> >    ld.lld: error: include/linux/trace_events.h:613:(.text+0x6FC): reloc=
ation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile wit=
h -mno-relax
> > >> ld.lld: error: include/linux/trace_events.h:613:(.text+0x748): reloc=
ation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile wit=
h -mno-relax
> >    ld.lld: error: include/linux/trace_events.h:613:(.text+0x788): reloc=
ation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile wit=
h -mno-relax
> >    ld.lld: error: include/linux/trace_events.h:614:(.text+0x7D0): reloc=
ation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile wit=
h -mno-relax
> >    ld.lld: error: include/linux/trace_events.h:614:(.text+0x810): reloc=
ation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile wit=
h -mno-relax
> >    ld.lld: error: include/trace/events/initcall.h:10:(.text+0xFD4): rel=
ocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile w=
ith -mno-relax
> >    ld.lld: error: include/trace/events/initcall.h:10:(.text+0x103C): re=
location R_RISCV_ALIGN requires unimplemented linker relaxation; recompile =
with -mno-relax
> >    ld.lld: error: include/trace/events/initcall.h:10:(.text+0x1150): re=
location R_RISCV_ALIGN requires unimplemented linker relaxation; recompile =
with -mno-relax
> >    ld.lld: error: include/trace/events/initcall.h:10:(.text+0x1254): re=
location R_RISCV_ALIGN requires unimplemented linker relaxation; recompile =
with -mno-relax
> >    ld.lld: error: include/trace/events/initcall.h:10:(.text+0x1394): re=
location R_RISCV_ALIGN requires unimplemented linker relaxation; recompile =
with -mno-relax
> >    ld.lld: error: include/trace/events/initcall.h:10:(.text+0x13FC): re=
location R_RISCV_ALIGN requires unimplemented linker relaxation; recompile =
with -mno-relax
> >    ld.lld: error: include/trace/events/initcall.h:10:(.text+0x1450): re=
location R_RISCV_ALIGN requires unimplemented linker relaxation; recompile =
with -mno-relax
> >    ld.lld: error: include/trace/events/initcall.h:10:(.text+0x1538): re=
location R_RISCV_ALIGN requires unimplemented linker relaxation; recompile =
with -mno-relax
> >    ld.lld: error: include/trace/events/initcall.h:10:(.text+0x15FC): re=
location R_RISCV_ALIGN requires unimplemented linker relaxation; recompile =
with -mno-relax
> >    ld.lld: error: init/main.c:664:(.init.text+0x0): relocation R_RISCV_=
ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
> >    ld.lld: error: too many errors emitted, stopping now (use -error-lim=
it=3D0 to see all errors)
> >
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> >
> > --
> > You received this message because you are subscribed to the Google Grou=
ps "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send =
an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/ms=
gid/clang-built-linux/202008292210.L44zhfiq%25lkp%40intel.com.
>
>
>
> --
> Thanks,
> ~Nick Desaulniers



--=20
=E5=AE=8B=E6=96=B9=E7=9D=BF

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAFP8O3%2ByR1Hcd22DFREBzGRZGytA1TdCNmkdu-9ZMLmhZxqbPg%40m=
ail.gmail.com.
