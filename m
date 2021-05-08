Return-Path: <clang-built-linux+bncBDU43XP6ZAGRB7PY3KCAMGQEWTX3WBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53d.google.com (mail-ed1-x53d.google.com [IPv6:2a00:1450:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7087D3772F5
	for <lists+clang-built-linux@lfdr.de>; Sat,  8 May 2021 18:29:50 +0200 (CEST)
Received: by mail-ed1-x53d.google.com with SMTP id bm3-20020a0564020b03b0290387c8b79486sf6219505edb.20
        for <lists+clang-built-linux@lfdr.de>; Sat, 08 May 2021 09:29:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620491390; cv=pass;
        d=google.com; s=arc-20160816;
        b=F3r4Gd7E0GnIuP+NPhJ5iCGRAZs8KdTR+eWOZtcrO2yyU4KKDsha16oNg3uVrGcb7u
         KeUDOgn17JGs5yfr8qhO1ZCMGTTlALYDylo0wwq2tEzMfPKlolRjFCYalCbNAWDLzB3p
         7NBzU6UUe4ex+uTD09bd5nDdLiDUtuJm3U3IaulQwnyCRWAUNgUzI7+x8gAiz/mfyPPy
         E/O57jkkWDXunaM7Iw0EVW/nFUGyeeIU+6WtwL6pguqGn0/tvqAu4RMaZNPhpuimoCX/
         QLCt3GlUupy8NfOZLw8DQFLJUeK0YVecVpgQhplCe7LkW5Z+NGhtt80QFjVslhwTD5cc
         q2BA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:date:dkim-signature;
        bh=k9eMhQVv3799ZLPeW9op8N754WAz8iSPOcOukSJNTu8=;
        b=ufzbcJGXkVBvoj6+PuzoNMIZ1VGUJlSQMJsgKdBJMrQkJgBHRmsdjWfAgvaSFx69YP
         0PEBrb6qyT6NTYhKk6rizCQUiWv8Ha8aIYNh1ZDD3hzOhzMvWLjX4TqjJAy0S6EuCR3T
         HHLVZJe3rv2iTnQnuPvRk0ThmDB6BEtvOnDBsmyILtolUurQqYDoRxl/W9o/Gr/OQYCT
         I8QBha+L6LvS47rFtrxj6KSIHf0vxirJqwXFbrO1g5vR/1lq9WtmMTO6wfIZha/gaJ/D
         X5qG7K0IuCsov/gK+dinW5o0pD74yf+qkNzm0kRf1S8x4tcPkMd8SJZV9eMrk5hLWPZ3
         V7Sw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b="WyD5ez/5";
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.22 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:to:from:cc:reply-to:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k9eMhQVv3799ZLPeW9op8N754WAz8iSPOcOukSJNTu8=;
        b=X5WRKw3o6Mo3oAdzUTcIHLSq3pMYCQjkPRV2UtvrkyfThGlALWXpDUEg7iGdlF89a7
         tkH7feneNSRWZpr2S+BPG/WjmuuBEdiAphJQZLODouuyog9VGowD5y8ogVRhCcmvmij0
         qc84G5AKeFnAsMmzLmdN1+vTzuKtdiUcRUMy7Ih7mmOsz1CYCHFxE+9t5N2anw7+qRob
         POMWY22fFo2hTJs5W9YJnrD21u90QT/4b0sTgWLlnRUPvvWJjAekg6gFT9xdph/UBaDh
         w8YOzu2uQx1PhaPyhJ9c9gmlcniWYWv+oyzJ8gtsnOqhQkr0oK2UWXv6YZIOBQ1JLRCj
         VURA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:to:from:cc:reply-to:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k9eMhQVv3799ZLPeW9op8N754WAz8iSPOcOukSJNTu8=;
        b=jST4/4NvDLykOgsV2BKN9JfrFm+ogTgqJBMndiqyDJI+tdtoAq6D8x1/J+nwIOki4p
         G4kfJQHG7PzDw8dikOKzW7DNsA/X3Xn5nfA04HuhERZ6ar4SDNF3BN3Shd5JiRzA+e5b
         jEXaKxn0OUo5eubIMN+NYyqoovV9TZQZQJF1ajBXlPf5AZiDXtH23kbwjWg441LSruYx
         jbAl+RG31ux8mcMfidAUcK5nY7Q7ESKANt/o8OJYuA7r2UZMye4cArzgE/E0wE8nxeDk
         L+i7RS50tOOeYajuPdoko6Wvpyrk+ZXBrxcuhhPZ+hL5NmWAvD5AfAmxeTKZ70xxXLTk
         QCMw==
X-Gm-Message-State: AOAM5335rVnnjf1SEBNu0dyuExDyQMO64rhxvyc0y+yMGURZc1UogP5o
	Y44Y5syUs6fwkl8CtXhFN/I=
X-Google-Smtp-Source: ABdhPJy8RKRV/Sv8FoPhvahi00nQkJ21Nk0icnMrqxZe3zE3/L6uKlxrayAbYxvQsrJeMQV9J1UT9w==
X-Received: by 2002:a17:907:766d:: with SMTP id kk13mr16516425ejc.417.1620491390013;
        Sat, 08 May 2021 09:29:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:e046:: with SMTP id g6ls1495823edl.3.gmail; Sat, 08 May
 2021 09:29:49 -0700 (PDT)
X-Received: by 2002:aa7:cb10:: with SMTP id s16mr18757830edt.313.1620491389148;
        Sat, 08 May 2021 09:29:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620491389; cv=none;
        d=google.com; s=arc-20160816;
        b=xSlMuc3imkyJsWpm3qSmey1vlo05zUEgu+QQEGLbFtZFA3k9ODJsCHeexVZ3dR+nbe
         +KCs0FFSQClMF92TTEDzIIDKZXeulOrfjSJKIvLUp/0/oi0ieHnu2pLBjofOr/GJteab
         jsnF0OgbDmI1CXinh0cOnBx87BxcVyVU+ckRwy6ZO+01SxEYAnFDDyGiGb6cFq4SrysX
         9d4qkrotpvLBViA4NzTJEn7KRPX8HwEF5TzCkMizjZNwceIpBtMiWNxai9ZIvHiXjfE3
         9z3Oo7BUjjMIOTGkoymreLgO0lfj7l07u9AR9hjca358yjs+rBygl5Mk51sQbB9G7Xeq
         ZllQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:dkim-signature:date;
        bh=5rNl+kAanqy5Ow6PHG0Nk/iTcHfaHO7mTi0wPOmmCc0=;
        b=qbHxNMVEW9RdLDqW2oADi3x8WejukpiGGgo3AZF7Wh0Lp7BfjF38zK+vSxY4DJI+d5
         0dHEmwzWlSzblOlSn3CyoXdqfqVJCLr/XSNA+siszWKC8vum//1SvnXk1zd/ixrYwaww
         Q7R6cl2/5PDoPwYFP4mhjGRcIzDfzIslsKPPYODEoLbL5YYBoXUigcfXqGkurprk6PYl
         C+hMq84ApfZfHazgN5cgsvbcp2bzDxNPYpyyGmcVnlVwQVftUTHr+SlhMLNkjrJgLdad
         hrTKs+wrdFj9tXoghIE1yDZi2veyPrByW67lUf46tfweuXNQZ7X0Zt+DbBrjlaq0chKu
         KCbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b="WyD5ez/5";
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.22 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
Received: from mail2.protonmail.ch (mail2.protonmail.ch. [185.70.40.22])
        by gmr-mx.google.com with ESMTPS id h3si486943edz.1.2021.05.08.09.29.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 May 2021 09:29:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of alobakin@pm.me designates 185.70.40.22 as permitted sender) client-ip=185.70.40.22;
Date: Sat, 08 May 2021 16:29:33 +0000
To: Nathan Chancellor <nathan@kernel.org>
From: "'Alexander Lobakin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: clang-built-linux@googlegroups.com, linux-mips@vger.kernel.org, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Kees Cook <keescook@chromium.org>, Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, Fangrui Song <maskray@google.com>, Sami Tolvanen <samitolvanen@google.com>, Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org
Reply-To: Alexander Lobakin <alobakin@pm.me>
Subject: Re: [BUG mips llvm] MIPS: malformed R_MIPS_{HI16,LO16} with LLVM
Message-ID: <s6F4SDP26btK3zHEtGxYELVAR2oXYQu1JaXYCbCj4VyBigG5ROOk2JTLIw4Gs8fVC6SALoV7tgH7uJ7_fg0cQdpJ9TXJZmQSychOLMczMC4=@pm.me>
In-Reply-To: <YJTwglbUOb67r733@archlinux-ax161>
References: <20210109171058.497636-1-alobakin@pm.me> <YJTwglbUOb67r733@archlinux-ax161>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
	autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
X-Original-Sender: alobakin@pm.me
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pm.me header.s=protonmail header.b="WyD5ez/5";       spf=pass
 (google.com: domain of alobakin@pm.me designates 185.70.40.22 as permitted
 sender) smtp.mailfrom=alobakin@pm.me;       dmarc=pass (p=QUARANTINE
 sp=QUARANTINE dis=NONE) header.from=pm.me
X-Original-From: Alexander Lobakin <alobakin@pm.me>
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

From: Nathan Chancellor <nathan@kernel.org>
Date: Fri, 7 May 2021 00:47:14 -0700

> On Sat, Jan 09, 2021 at 05:11:18PM +0000, Alexander Lobakin wrote:
> > Machine: MIPS32 R2 Big Endian (interAptiv (multi))
> >
> > While testing MIPS with LLVM, I found a weird and very rare bug with
> > MIPS relocs that LLVM emits into kernel modules. It happens on both
> > 11.0.0 and latest git snapshot and applies, as I can see, only to
> > references to static symbols.
> >
> > When the kernel loads the module, it allocates a space for every
> > section and then manually apply the relocations relative to the
> > new address.
> >
> > Let's say we have a function phy_probe() in drivers/net/phy/libphy.ko.
> > It's static and referenced only in phy_register_driver(), where it's
> > used to fill callback pointer in a structure.
> >
> > The real function address after module loading is 0xc06c1444, that
> > is observed in its ELF st_value field.
> > There are two relocs related to this usage in phy_register_driver():
> >
> > R_MIPS_HI16 refers to 0x3c010000
> > R_MIPS_LO16 refers to 0x24339444
> >
> > The address of .text is 0xc06b8000. So the destination is calculated
> > as follows:
> >
> > 0x00000000 from hi16;
> > 0xffff9444 from lo16 (sign extend as it's always treated as signed);
> > 0xc06b8000 from base.
> >
> > =3D 0xc06b1444. The value is lower than the real phy_probe() address
> > (0xc06c1444) by 0x10000 and is lower than the base address of
> > module's .text, so it's 100% incorrect.
> >
> > This results in:
> >
> > [    2.204022] CPU 3 Unable to handle kernel paging request at virtual
> > address c06b1444, epc =3D=3D c06b1444, ra =3D=3D 803f1090
> >
> > The correct instructions should be:
> >
> > R_MIPS_HI16 0x3c010001
> > R_MIPS_LO16 0x24339444
> >
> > so there'll be 0x00010000 from hi16.
> >
> > I tried to catch those bugs in arch/mips/kernel/module.c (by checking
> > if the destination is lower than the base address, which should never
> > happen), and seems like I have only 3 such places in libphy.ko (and
> > one in nf_tables.ko).
> > I don't think it should be handled somehow in mentioned source code
> > as it would look rather ugly and may break kernels build with GNU
> > stack, which seems to not produce such bad codes.
> >
> > If I should report this to any other resources, please let me know.
> > I chose clang-built-linux and LKML as it may not happen with userland
> > (didn't tried to catch).
> >
> > Thanks,
> > Al
> >
>
> Hi Alexander,

Hi!

> Doubling back around to this as I was browsing through the LLVM 12.0.1
> blockers on LLVM's bug tracker and I noticed a commit that could resolve
> this? It refers to the same relocations that you reference here.
>
> https://bugs.llvm.org/show_bug.cgi?id=3D49821
>
> http://github.com/llvm/llvm-project/commit/7e83a7f1fdfcc2edde61f0a535f9d7a=
> 56f531db9

This really seems very related to the bug I encountered.
Currently I don't have a MIPS setup to try since I've moved to
another country, but I should "deploy" it again soon. So I'll
definitely take a look a bit later, thanks for pointing on this
commit!

> I think that Debian's apt.llvm.org repository should have a build
> available with that commit in it. Otherwise, building it from source is
> not too complicated with my script:
>
> https://github.com/ClangBuiltLinux/tc-build
>
> $ ./build-llvm.py --build-stage1-only --install-stage1-only --projects "cl=
> ang;lld" --targets "Mips;X86"
>
> would get you a working toolchain relatively quickly.

I could just build llvm-git from Arch Linux User Repository :) I did
that last time when was checking if the latest snapshot also suffers
from the bug, and I think it didn't take much time to build.

> Cheers,
> Nathan

Thanks,
Al

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/s6F4SDP26btK3zHEtGxYELVAR2oXYQu1JaXYCbCj4VyBigG5ROOk2JTLIw4Gs8fVC6SALoV7tgH7uJ7_fg0cQdpJ9TXJZmQSychOLMczMC4%3D%40pm.me.
