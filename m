Return-Path: <clang-built-linux+bncBDYJPJO25UGBBOF7RD2AKGQE2HXQBGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 46B28198154
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Mar 2020 18:35:06 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id l12sf6315782pjh.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Mar 2020 09:35:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585586105; cv=pass;
        d=google.com; s=arc-20160816;
        b=GkXZznZJlgdIgGtSctcfJrQ91ipEq+UXq1d84vz0tkmmfBv5JlRY4uPdLjQINsCefS
         SwONHqhSy9k1+MRPEc/6yL8Pu1gZGOLo5Oe7U9COR3EXibqdYeVxcUjx55dl/Wzk1Ev8
         F7N4BBuhPhNAPI2INN834MOGWM00R0fCMG8fnkGdqN8SbqJRErCrks3kothnK0BB5gDo
         MKjx5FZRm4BsCFXx81+svSG/ZV7Iu9QiXHp1BMpky+dqAN3XolN5N9OtUhs1A14oP4GC
         KApLWyE8498Dw0SkgQTyQZbUJPLGaOuQp2dmml/lyWGZYU7tE7a6ZsGZIHGjkz5fIOkX
         ZKGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=MV7hwKksBjHd0n8/DOY1ccBcuBPydRMLYQzAoa0kYzA=;
        b=WUK7Qv0m6Gwg/9pAGJuRzQWfsNSl4tLhJZBmNjUrzL+Zh8/yJ+sDN86GIrPblEHoUF
         KhxMhgBtVZABH2eCj6JnfuNXY2OvjhZ4brEd+TEEU9AMqi12NGkvMiz2kmiLspQnYMKp
         JsfUEvS2exK7CMhePyQETD9IfrO77FrfrnTLoJyRrQ/u0ExR+PNlLnUS17W7y0iO/7Et
         1R+K7atlfw9zxcHpdAfG4TuCpNPQ4kWhDXloMPDCQfCL2/ohaqq/6mdgTQiYtANBDLDM
         8Y0+EQqtRjsgbj8NJkn94J3Jw2lCyg7tzuv+VDJqSbTD4yo7cCU3IFvhshfhcoVtaWq3
         k9rg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fR7zKfJ6;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1033 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MV7hwKksBjHd0n8/DOY1ccBcuBPydRMLYQzAoa0kYzA=;
        b=l/VEzU2L3xTbJGNvMjoo8YvrHiRvJu/B+yOHJ/bj/T7qBhrBmeWFGoZmUyF4KkHQNV
         7aiPIuk6Q9I6hgVrlv9rHrZlpIwCJluWXw/q1yf+xC0Br49enON/DIEuEGu0m5wBJz37
         ADxR9ZglAfoUoyrYRonfs0llvFI5pidH0tzPE9oLDlTMdya2jQ9dry9rYkXWMeoAwVGN
         jyfsVO/oobcvRKo52is2D9fJV3Itr2cM3gzEZtpfOodfeuUYcdm0syTHXeskyYhiSSWp
         LSvoFkT8e8pj1J1Z7HG55MIfPXZaxXkNVxdC6aJh5y2ZXeC4RShngWshJUZrMCXE9kyn
         zAdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MV7hwKksBjHd0n8/DOY1ccBcuBPydRMLYQzAoa0kYzA=;
        b=UeLlQGLeglt7eXW62ZgnbuvBwA1PVxIoEwijD3ygr7FG54BpVNejkKqsFDzBQguEK8
         7yQcVuyHcHgyHiPNi69wViK04Sge3tuU4pqfzCErQ4Wr6QHsjz2gtVsBP19ins0OqDkc
         53P2C5lDv8Ei/V+XZ+pj1kisqBa40v69hPn68ym25Yz1xAWzS2rGb9wezASHCYrgdjsU
         j79gWuYgR++VLGZ64ayD72ZNOpG68wRwiS6HM4LRk3XXI5463xxnGqdpGof1Zes//q0A
         rIQGQGOCi7KcgQMYRbDMTk62v7FS33VcR3/+PrKELy0bisFxJKDxDANwNn+38s+ZNKnz
         sAow==
X-Gm-Message-State: AGi0Puab2C3IguwDTW/Bh0wxjPQLuWNrc/UzhFfmH4FLPG1tLpqwBuQh
	ob4Upo18mh5bdIDmjUBiAY4=
X-Google-Smtp-Source: APiQypLpPeaVRUHdTayo99hdqUOjyHl+lU+SPRNEvqBthd61JstcLwj2MYqz2iT2/uMLtXYQRRSk7A==
X-Received: by 2002:a17:90b:4396:: with SMTP id in22mr97977pjb.10.1585586104750;
        Mon, 30 Mar 2020 09:35:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1853:: with SMTP id 80ls12086227pfy.11.gmail; Mon, 30
 Mar 2020 09:35:04 -0700 (PDT)
X-Received: by 2002:a62:4ed1:: with SMTP id c200mr13514219pfb.207.1585586104221;
        Mon, 30 Mar 2020 09:35:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585586104; cv=none;
        d=google.com; s=arc-20160816;
        b=Htt5VDibHVpEdLzmUpxzVWVPu+d/z7eowUcpVdKFKgUm4+0XiYK57QSSWRolm6nVr/
         vHa40Hu3nia4ZlruK3M2fFqHSb3mB4O40rgbhfs4xaWmDUU+O1KCFVXoQL5Nk06utBGW
         S6ehAoxi+DueElDHTWrLDFvpzM0U0Z6hCPpi9X0TeVhIqX9xNFXYPYRVtmHIVNbSrxbo
         B8tr8aenNHbgIji+K2o2wQfcIJvP+nyTp4ACUm7x5guAb49rzbjoszpcS+jP1U+9p1Dj
         AZvImBieuWx5Q+wAkNNuAH6W/7wCoHk7i0NwKr+BICsK4dJ/Sp+jvi1S8D9CGwYji/cp
         Jvpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0DkF5DaZOAag2/irbXSyu73oTaL5+y5n50dR2X1e45g=;
        b=H932oBjxoXjJ7OLb/EPBRkPfSP8vIJCJMZMT7llQaEDD9cEvWEaBw/NaJqDyZ+6g66
         p6oLI4+lROLisoCcq8CLhKQbNXAHtNvseQnKn0rZ9u8hhOmeIXTr7k1QskqW3b5J/nea
         MNuM6y+7VS8SE/CjUZggPZcS5O2+8QSs6c3EtAVlqCf8McRGzod0/13T5LEUayq5EScI
         lpDEUnO2qeJog/MT+KfJLkPfX/GABk+Z/wkH9br5ztcICxdxEkvjGE22g2b63zt4mxKL
         iySpfUlfwUEom/I9n2Ao5rOn3lFq+grG9l0g4MQWe2RMG3gEIRZZE2q0+JxWNdotctuz
         ChZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fR7zKfJ6;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1033 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com. [2607:f8b0:4864:20::1033])
        by gmr-mx.google.com with ESMTPS id 62si798975pgf.0.2020.03.30.09.35.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2020 09:35:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1033 as permitted sender) client-ip=2607:f8b0:4864:20::1033;
Received: by mail-pj1-x1033.google.com with SMTP id nu11so7572456pjb.1
        for <clang-built-linux@googlegroups.com>; Mon, 30 Mar 2020 09:35:04 -0700 (PDT)
X-Received: by 2002:a17:90b:8e:: with SMTP id bb14mr50546pjb.27.1585586103643;
 Mon, 30 Mar 2020 09:35:03 -0700 (PDT)
MIME-Version: 1.0
References: <202003292330.Qob3rHkz%lkp@intel.com> <CAKwvOdk8U61y+LnQZXdnSJAmLgF4wzorVKDttUn8P1vdkC_zig@mail.gmail.com>
In-Reply-To: <CAKwvOdk8U61y+LnQZXdnSJAmLgF4wzorVKDttUn8P1vdkC_zig@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 30 Mar 2020 09:34:52 -0700
Message-ID: <CAKwvOd=4bNeNoOKsPQiTbmfDmOZsBo6ZprDwnoN-4UH-UE1gRw@mail.gmail.com>
Subject: Re: [linux-next:master 9903/12636] arch/x86/kernel/sys_ia32.o:
 warning: objtool: __llvm_gcov_writeout()+0x14: call without frame pointer save/setup
To: Matthias Kaehlcke <mka@google.com>
Cc: Brian Gerst <brgerst@gmail.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Dominik Brodowski <linux@dominikbrodowski.net>, kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=fR7zKfJ6;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1033
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

On Mon, Mar 30, 2020 at 9:33 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Sun, Mar 29, 2020 at 9:00 AM kbuild test robot <lkp@intel.com> wrote:
> >
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > head:   975f7a88c64dfdfde014530730ba7a6f3141f773
> > commit: 121b32a58a3af89a780cf194ce3769fc4120e574 [9903/12636] x86/entry/32: Use IA32-specific wrappers for syscalls taking 64-bit arguments
> > config: x86_64-randconfig-a002-20200329 (attached as .config)
>
> Interesting, second randconfig report mentioning gcov in my inbox this
> morning.  Will try to repro and file an issue to track.

Filed https://github.com/ClangBuiltLinux/linux/issues/955, will track there.

>
> > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project dd030036f0a2ace74d0bd2242cfdbcf726ef565d)
> > reproduce:
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         git checkout 121b32a58a3af89a780cf194ce3769fc4120e574
> >         # save the attached .config to linux build tree
> >         COMPILER=clang make.cross ARCH=x86_64
> >
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> > >> arch/x86/kernel/sys_ia32.o: warning: objtool: __llvm_gcov_writeout()+0x14: call without frame pointer save/setup
> > >> arch/x86/kernel/sys_ia32.o: warning: objtool: __llvm_gcov_flush()+0x0: call without frame pointer save/setup
> >
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202003292330.Qob3rHkz%25lkp%40intel.com.
>
>
>
> --
> Thanks,
> ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D4bNeNoOKsPQiTbmfDmOZsBo6ZprDwnoN-4UH-UE1gRw%40mail.gmail.com.
