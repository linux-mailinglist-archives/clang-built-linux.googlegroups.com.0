Return-Path: <clang-built-linux+bncBDYJPJO25UGBBEUY3T6AKGQE2UQ65KI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id B5D8E299443
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 18:49:07 +0100 (CET)
Received: by mail-oi1-x237.google.com with SMTP id n62sf5987547oig.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 10:49:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603734546; cv=pass;
        d=google.com; s=arc-20160816;
        b=yiwcXyu8EO+SLhdvi0FFsVRdMfan0lchPi/V8e4gRiF0OzSxytP0WVNBbOE1/gB/2l
         XKJtBDyiPeE1kTIkrY2cYqlVxlL4fHm0oqgVo1EQ8JRN7ct92PQ4vRycQgUCSHhjcr0G
         Ghfx2NUy7nzlueJVs7mEJU/tMtzcVvWcjQw2Jb5egjRNUiCBtQ563+W7K9mxFK0z+pXA
         JV0tJHTgpCxXFz4e9dWbDXvLLhiW7qodhJW4joby0l/RHAgs8BgtsZ1fGuQhU0u/B+nb
         K70of4zE3AG3KxkBsdETjIKnATpr9vIg6N2lTVaoGARbYkLBZghJq41BZjgyE/Wv7XFG
         ebag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=bwYZSi4Or/85rPST/8JbY9bPDODt0D2ziKiwIJeLPes=;
        b=iSQsPZ4Z6sUMyBME7vpD/fpLAOhuD2Q5PkFxcoFPyj9WbedvsxTin4g0JKh6lM1/iI
         1405uagGURPN5UH9Duz0QHJ/C3mOyZ52BAgwdlOoSuD2jY0686MXuoa+O9LnBOC4WFQd
         1Z7enGvwn+DvGmaNv8KTAFUkxoRWlachhYA6jUZ2+VdV9f+HZFWQl41kH0XpNUSIktJ1
         MOb9Mve2I+kMzr7/wLGC1eZPaaJBuIq9UnMk3Vvr3lYxA8XgITApVD0SwMNoGHY42zTc
         tJbAHcwmyWO5mmFpZKO26aUsg7pK2eBkJDoH/Wo2LinYm2XgbgMPuOEvH5bYm2Lvu1/I
         R/9g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NDuAWgRk;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bwYZSi4Or/85rPST/8JbY9bPDODt0D2ziKiwIJeLPes=;
        b=YffVu71I0+jHETTw06LdKEf3sj0DSMXJoDoE+ERKCkPiqme6j2BmzrBOUAHu7UtXez
         EPrM1G28Wb1U6BVNXXd6j1KclLN/2hiZ8FtdPixPqtgVv81zuZuQKrT1fd3xm2AGhr19
         iery2YJ7bLbGSFIPZSlSjSxQlAkRtVNWI6YY9bgIjYxjx1MmAzIfsHMabRdDi8q8tWtW
         qF+PMPdOE6CO3tNZc+gRtX+UW1/2UZo1QoaEJHqUd7gfGXiPgXxXgzCwPAG9Rw5//awK
         md1P6qKMaSsdKCFMqB1TzDEZM/l9Ux52VY1ofD78dxWfS8GonWQ2RGwFxJP1HOThvF9s
         qThQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bwYZSi4Or/85rPST/8JbY9bPDODt0D2ziKiwIJeLPes=;
        b=FkcOWYwGKfqmkFGdJFwTmV/pQg7+guhz/zvQ8Jvp/vLQr8Ud1AEjjQcZpuGgQ45iLY
         yG6KNZliXau0O9EiekjVplqUcfUisi9xlAjyWJQHZ5723Y40Go7TMCA8Rc+ygLn90XtG
         UIu/btnEX1/MvUtI7XgcuhjNLeIP2luYL1L0yem96rxLUvOYe/FLSgZIEb1TA78SpB4W
         Q/9DOTxeDq7VRJ6VlHm6yjegZfdjYO8D6XHvnIuko5hY0y4fSFFDKJ8j3TAefbDhb0pd
         6Kdj2gtlucNUr4lPrvKJVZJZO/DW4UnSEIQUpEVI5+TFueEw9TsHdwpfTkpjoscxTuO8
         c4LQ==
X-Gm-Message-State: AOAM530djylz2JQiDbVQj7dqOv0ByYBGk6UuaCKRFzRE0vewcRAsswN6
	brB8E7Id5kFVOH42GcjMlRk=
X-Google-Smtp-Source: ABdhPJzTdByYvgY3PRYHeD1UbDzNjB6F16FGosfFSl3dpiU81tWkJEqp2vdD+xiQiDQhUSxx+9tcGw==
X-Received: by 2002:aca:ad48:: with SMTP id w69mr15207456oie.38.1603734546726;
        Mon, 26 Oct 2020 10:49:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:198c:: with SMTP id k12ls2354221otk.3.gmail; Mon, 26 Oct
 2020 10:49:06 -0700 (PDT)
X-Received: by 2002:a05:6830:154d:: with SMTP id l13mr16282799otp.61.1603734546390;
        Mon, 26 Oct 2020 10:49:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603734546; cv=none;
        d=google.com; s=arc-20160816;
        b=nfx0QpFz555pVyeRmqQCdEb9Fr92tjJTkjw974MSVcr7XkZ5om9CIL/tltYLpUsr1v
         B2tEcNxt5rECnpDA1m8kpapwx6rrd2tnUsyo74rGBIlJaJOxOdB4o/dwKf/Gy8msLoP5
         LYQGqO1GwpV+sVxbp/vr+QHPA8xhB8Wjg+IitAO8eD44iupdzIsYFb2gDSGM965FpKyP
         PNJOg+U2HM2evyTK9iBAnSxDRP4ez2xCoIvL6pgeBCfdyFcq6RH6Zc85jpbn6ljgAHdL
         nzMTeVUbr/XJgcrDOUux9EQ+ehkwn13mcQX5hyxl4K8OMpM+F31U54B5bOSy8ELXLc25
         VfPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=w1/6VKuaxtnOQSh9u+GNtF0PEm0CXIxJ72v1J6ceCSU=;
        b=vrhI2ck07z3K/OOXu3g6Z/9ihGKrCEji7+sncQQIZpiam2WiImzcqCv/3z+UUhUUyX
         /9tPwItfzMrm8ja/oZPoueGNj610V3UzgTaiQEm+MakiVarbZWG8+pEUt8X9H1fimK2Z
         DeEByVwr4PBTP9lEIVGaeg6VirVIBSK1goFQ/byOtcrT35GJPRfmRI48XzxcrKMAIHvE
         vvLo1hlPzKtcA/rk4kDZwwWUzQzAjbeFMjEH1PTxbNYQumAZml5K8JlFzj6wqw0CvF0E
         4wqjdZVfYFA+dLUJMBLdgsKWNasxLCcHeNcEK2dbmVZqcwFHId0FqkFQLKJoWzNtujJU
         Vhow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NDuAWgRk;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id m127si840094oig.2.2020.10.26.10.49.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Oct 2020 10:49:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id c17so3624638pjo.5
        for <clang-built-linux@googlegroups.com>; Mon, 26 Oct 2020 10:49:06 -0700 (PDT)
X-Received: by 2002:a17:90a:6b04:: with SMTP id v4mr21709795pjj.101.1603734545479;
 Mon, 26 Oct 2020 10:49:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200821194310.3089815-1-keescook@chromium.org>
 <20200821194310.3089815-14-keescook@chromium.org> <CAMuHMdUg0WJHEcq6to0-eODpXPOywLot6UD2=GFHpzoj_hCoBQ@mail.gmail.com>
 <CAMuHMdUw9KwC=EVB60yjg7mA7Fg-efOiKE7577p+uEdGJVS2OQ@mail.gmail.com>
 <CAMuHMdUJFEt3LxWHk73AsLDGhjzBvJGAML76UAxeGzb4zOf96w@mail.gmail.com>
 <CAMj1kXHXk3BX6mz6X_03sj_pSLj9Ck-=1S57tV3__N9JQOcDEw@mail.gmail.com> <CAMuHMdV4jKccjKkoj38EFC-5yN99pBvthFyrX81EG4GpassZwA@mail.gmail.com>
In-Reply-To: <CAMuHMdV4jKccjKkoj38EFC-5yN99pBvthFyrX81EG4GpassZwA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 26 Oct 2020 10:48:54 -0700
Message-ID: <CAKwvOdkq3ZwW+FEui1Wtj_dWBevi0Mrt4fHa4oiMZTUZKOMi3g@mail.gmail.com>
Subject: Re: [PATCH v6 13/29] arm64/build: Assert for unwanted sections
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Ard Biesheuvel <ardb@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Ingo Molnar <mingo@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Mark Rutland <mark.rutland@arm.com>, Peter Collingbourne <pcc@google.com>, James Morse <james.morse@arm.com>, 
	Borislav Petkov <bp@suse.de>, Ingo Molnar <mingo@redhat.com>, Russell King <linux@armlinux.org.uk>, 
	Masahiro Yamada <masahiroy@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	"the arch/x86 maintainers" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux-Arch <linux-arch@vger.kernel.org>, linux-efi <linux-efi@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Linux-Renesas <linux-renesas-soc@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=NDuAWgRk;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042
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

On Mon, Oct 26, 2020 at 10:44 AM Geert Uytterhoeven
<geert@linux-m68k.org> wrote:
>
> Hi Ard,
>
> On Mon, Oct 26, 2020 at 6:39 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> > On Mon, 26 Oct 2020 at 17:01, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > On Mon, Oct 26, 2020 at 2:29 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > > On Mon, Oct 26, 2020 at 1:29 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > > > On Fri, Aug 21, 2020 at 9:56 PM Kees Cook <keescook@chromium.org> wrote:
> > > > > > In preparation for warning on orphan sections, discard
> > > > > > unwanted non-zero-sized generated sections, and enforce other
> > > > > > expected-to-be-zero-sized sections (since discarding them might hide
> > > > > > problems with them suddenly gaining unexpected entries).
> > > > > >
> > > > > > Suggested-by: Ard Biesheuvel <ardb@kernel.org>
> > > > > > Signed-off-by: Kees Cook <keescook@chromium.org>
> > > > >
> > > > > This is now commit be2881824ae9eb92 ("arm64/build: Assert for unwanted
> > > > > sections") in v5.10-rc1, and is causing the following error with
> > > > > renesas_defconfig[1]:
> > > > >
> > > > >     aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from
> > > > > `kernel/bpf/core.o' being placed in section `.eh_frame'
> > > > >     aarch64-linux-gnu-ld: Unexpected GOT/PLT entries detected!
> > > > >     aarch64-linux-gnu-ld: Unexpected run-time procedure linkages detected!
> > > > >
> > > > > I cannot reproduce this with the standard arm64 defconfig.
> > > > >
> > > > > I bisected the error to the aforementioned commit, but understand this
> > > > > is not the real reason.  If I revert this commit, I still get:
> > > > >
> > > > >     aarch64-linux-gnu-ld: warning: orphan section `.got.plt' from
> > > > > `arch/arm64/kernel/head.o' being placed in section `.got.plt'
> > > > >     aarch64-linux-gnu-ld: warning: orphan section `.plt' from
> > > > > `arch/arm64/kernel/head.o' being placed in section `.plt'
> > > > >     aarch64-linux-gnu-ld: warning: orphan section `.data.rel.ro' from
> > > > > `arch/arm64/kernel/head.o' being placed in section `.data.rel.ro'
> > > > >     aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from
> > > > > `kernel/bpf/core.o' being placed in section `.eh_frame'
> > > > >
> > > > > I.e. including the ".eh_frame" warning. I have tried bisecting that
> > > > > warning (i.e. with be2881824ae9eb92 reverted), but that leads me to
> > > > > commit b3e5d80d0c48c0cc ("arm64/build: Warn on orphan section
> > > > > placement"), which is another red herring.
> > > >
> > > > kernel/bpf/core.o is the only file containing an eh_frame section,
> > > > causing the warning.

When I see .eh_frame, I think -fno-asynchronous-unwind-tables is
missing from someone's KBUILD_CFLAGS.
But I don't see anything curious in kernel/bpf/Makefile, unless
cc-disable-warning is somehow broken.

> > > > If I compile core.c with "-g" added, like arm64 defconfig does, the
> > > > eh_frame section is no longer emitted.
> > > >
> > > > Hence setting CONFIG_DEBUG_INFO=y, cfr. arm64 defconfig, the warning
> > > > is gone, but I'm back to the the "Unexpected GOT/PLT entries" below...
> > > >
> > > > > Note that even on plain be2881824ae9eb92, I get:
> > > > >
> > > > >     aarch64-linux-gnu-ld: Unexpected GOT/PLT entries detected!
> > > > >     aarch64-linux-gnu-ld: Unexpected run-time procedure linkages detected!
> > > > >
> > > > > The parent commit obviously doesn't show that (but probably still has
> > > > > the problem).
> > >
> > > Reverting both
> > > b3e5d80d0c48c0cc ("arm64/build: Warn on orphan section placement")
> > > be2881824ae9eb92 ("arm64/build: Assert for unwanted sections")
> > > seems to solve my problems, without any ill effects?
> > >
> >
> > I cannot reproduce the issue here with my distro GCC+binutils (Debian 8.3.0)
> >
> > The presence of .data.rel.ro and .got.plt sections suggests that the
> > toolchain is using -fpie and/or -z relro to build shared objects
> > rather than a fully linked bare metal binary.
> >
> > Which toolchain are you using? Does adding -fno-pie to the compiler
>
> gcc version 9.3.0 (Ubuntu 9.3.0-17ubuntu1~20.04)  from Ubuntu 20.04LTS.
>
> > command line and/or adding -z norelro to the linker command line make
> > any difference?
>
> I'll give that a try later...

This patch just got picked up into the for-next branch of the arm64
tree; it enables `-z norelro` regardless of configs.
https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/commit/?h=for-next/core&id=3b92fa7485eba16b05166fddf38ab42f2ff6ab95
If you apply that, that should help you test `-z norelro` quickly.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkq3ZwW%2BFEui1Wtj_dWBevi0Mrt4fHa4oiMZTUZKOMi3g%40mail.gmail.com.
