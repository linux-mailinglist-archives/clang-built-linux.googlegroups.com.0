Return-Path: <clang-built-linux+bncBDYJPJO25UGBBTM45P4QKGQE5XW3VNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 617D72471FA
	for <lists+clang-built-linux@lfdr.de>; Mon, 17 Aug 2020 20:37:03 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id 15sf8623145pfy.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 Aug 2020 11:37:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597689422; cv=pass;
        d=google.com; s=arc-20160816;
        b=E9FeWPFQaxG/V8AXxUFhxUyR+sSQtwougKCgii/KKJseUmDpLTKsRJg+PtDtzZaopT
         PPHoeOXeXYH3CbS9guXwMehyu3hFSc/12cTnrP48601jKZe+oC7mzzZo3eilB+19b0cP
         oKTLYxy24OFWpE25RckNHrD1xBhEzoy+4SF4YJlzKYFfLUYZe5eXP/bd/8rARBd1r7uq
         9lUB7ztAGavGZkWxkMDRqpQkKQ8SFv9oY0W+Tt6uqltEiv1/VEyamp3fXm5+j7QmNXTa
         YMr6DQreJgMQsbb3Ig7KvS551QcNmx0NtXJ95EzVBrtuFOL9zKzyAgklUv+LPUXwEKoH
         jAdQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=TsAGHthBh05iSdWtD1pgbGoXx6LVpY0+OnuDbEwgZ3o=;
        b=SPdXJGsrreTljSkJHAlpYsQa0QjmgTkcQvjDlCADL9SL5S+PU3TBqe6bP469ilAxTi
         KYbkhQge3LM87Pk0DGTWh28xY/MYyQsbcH3FiJfKJ1B2n7FLUlGy1sNMThFXEQ9YeBPE
         +QYl+ppAxeTFUoc/qPsc/pi3hlm21CMxXEgn6zkEllOuT2cQoxF7DgV9agkSHKSiYVcy
         CyVBob736jA9843SwicmI0CVnShICMRQJesZZaVSlDJBvc03tXa3eXXA641e2Vl1fKEN
         CvP4BPNqL2Tz+MlwxPyOjQD6PKT40PyBmoBL6fgrAfl109ybAHCypgZMMTYoHiIHkfd6
         IDfg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SISFndTk;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TsAGHthBh05iSdWtD1pgbGoXx6LVpY0+OnuDbEwgZ3o=;
        b=qxuWQ4Zm38q/GIk16nNkEgX8ACVHEs59H/v6GYkNnwFD3J65JUe6YX9p5PvsX/sWcA
         uWZ1uJIXgFgLba2vD6cVhUKinmSNpqCQhwJbMqCH+uGWx6M6e+SifCxH7IqlKdk4YtKU
         JLi1eiSE62q2DuVXWcleMy67764aaD/mkBIc5i04Dts2vDxl9gR2KcpSvmM545wm1mjs
         KiGrRahT56P7BM7CEbNWg+GTymBqGeKYkr5318zKP5sDod93GJqAKTVwr1A0TMnCSSuj
         VG7wGYGCsbf7ulUc8hWcH1aTHjANMbnEOfQGEHxqJFhiPEaRx+bouZ9j/Ew0ZMuNhA+s
         Cr9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TsAGHthBh05iSdWtD1pgbGoXx6LVpY0+OnuDbEwgZ3o=;
        b=ojzAs1lLEcl2Ci3+sZQx1+WpffvYlft/sI/iM1oO5duRSirYmbSn3QlbR8uOlVaHZD
         3UnRYDAJEGa1Nlk3bWfFMBdrIvon7Ew8pL4pLWjGmzjt2+60Jqo3WqwDRKOYD+VDDegv
         LU10DlTgb2SDsZvckDsfdUHFL2ygSfXqII0uOohNAkdly1NHkhmodSs21c6MBMYt154X
         AEr/b/iO8C/J/W9riRWXvxARFub5paVh4xoUGq4Zm6kfftAoT2dE/Ijl6V1BPIe0/6ma
         1in/hpe0s96qUN0tdfNz26droS04BEgyEgjHLTLbyKpUAdGL81M3prrg5d6UfRDnh+1Z
         sGFg==
X-Gm-Message-State: AOAM533VnET5rxjuMuyWa1IboR0g2xMNbSxJzK47f0zvZNgl1nOzKX16
	39nT/vo/qJyh1HD3uuT12bg=
X-Google-Smtp-Source: ABdhPJy1iCe+bAczCxKwgJF3uolgsgDJd6h3R+zvGQ8qF/36Uj/9fxiyV3mxDBSL/NA+pY25UE0ejQ==
X-Received: by 2002:a62:d10a:: with SMTP id z10mr12723361pfg.7.1597689421779;
        Mon, 17 Aug 2020 11:37:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:951d:: with SMTP id p29ls4788167pgd.2.gmail; Mon, 17 Aug
 2020 11:37:01 -0700 (PDT)
X-Received: by 2002:a63:1262:: with SMTP id 34mr4725212pgs.37.1597689421355;
        Mon, 17 Aug 2020 11:37:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597689421; cv=none;
        d=google.com; s=arc-20160816;
        b=aL3vaDz8VNPlv+OMItnPfnWZqjwOpNXxZLkPL4sZH9wgq8CfsqVGB+yNy4UDIPKhfc
         UdCCTXxHmGwu1Zj7Ac7kDM12KKxX16Qd/HPD7ZCQQrGbih6vd1gTyVDTF2G8xRaOuhK+
         +Ifdiv3p2BlvPGvZ1lUBq8h0TQz5Qg82ZDG+I58eMP+xl0bk2Kia/yGnfMpehG2NkgPW
         6h8s3GP7xQwTrmkdJiBsn+AA/EphYzhi53m0UNq04SD1Y9JO0Sz6EiNrHqKbqaG6fvfS
         gkXPRiTWwZ9wtKkA2EVFYj6/hC6zJ4PsLLUb2q3A0UD/TeXCn2n5AKAZNINVvJ8eejJm
         wdCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Qs4A+yO1as0umF/I9cYQ72bVP8PG6ZMKCk38nSsEIIo=;
        b=bid3Htyyh6UorC7afljdT208eIRXO6PMy3HkUMaS1hsgDByYl06zMYAJV8CtCznn6Y
         fD8gRmxaiMMEV/6KQs2cnfCjDSBkXOy6RV9cmjak1AFk8E5h7J8Hs/werz6Sza2IPzER
         UT12jakABsUwyxNSe0TD19oylEPTA6/XKNdsTgOcyAIeqtIucyQWXDX9ei2j1FWtm8l6
         I0C2R/a5DKz3oxH7+3fJNhuKdjdstgFgINnrmtzcH7mqz4GM0sMkyHmgl7Qp31EBMOsz
         NT4MDpKYIUFhTvnK5tGDVnicCPxl6cOUJ5UJaHDQCOx++gT531Tj0LjE2baBmFl4TxM6
         lJ4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SISFndTk;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id kr1si1358345pjb.2.2020.08.17.11.37.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Aug 2020 11:37:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id r11so8628910pfl.11
        for <clang-built-linux@googlegroups.com>; Mon, 17 Aug 2020 11:37:01 -0700 (PDT)
X-Received: by 2002:a05:6a00:14d0:: with SMTP id w16mr12126301pfu.39.1597689420744;
 Mon, 17 Aug 2020 11:37:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200815014006.GB99152@rani.riverdale.lan> <20200815020946.1538085-1-ndesaulniers@google.com>
 <202008150921.B70721A359@keescook> <CAKwvOdnyHfx6ayqEoOr3pb_ibKBAG9vj31LuKE+f712W=7LFKA@mail.gmail.com>
 <457a91183581509abfa00575d0392be543acbe07.camel@perches.com>
 <CAKwvOdk4PRi45MXCtg4kmeN6c1AK5w9EJ1XFBJ5GyUjwEtRj1g@mail.gmail.com>
 <ccacb2a860151fdd6ce95371f1e0cd7658a308d1.camel@perches.com>
 <CAKwvOd=QkpmdWHAvWVFtogsDom2z_fA4XmDF6aLqz1czjSgZbQ@mail.gmail.com>
 <20200816001917.4krsnrik7hxxfqfm@google.com> <CA+icZUW=rQ-e=mmYWsgVns8jDoQ=FJ7kdem1fWnW_i5jx-6JzQ@mail.gmail.com>
 <20200816150217.GA1306483@rani.riverdale.lan> <CABCJKucsXufD6rmv7qQZ=9kLC7XrngCJkKA_WzGOAn-KfcObeA@mail.gmail.com>
In-Reply-To: <CABCJKucsXufD6rmv7qQZ=9kLC7XrngCJkKA_WzGOAn-KfcObeA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 17 Aug 2020 11:36:49 -0700
Message-ID: <CAKwvOd=Ns4_+amT8P-7yQ56xUdDmL=1zDUThF-OmFKhexhJPdg@mail.gmail.com>
Subject: Re: [PATCH v2] lib/string.c: implement stpcpy
To: Sami Tolvanen <samitolvanen@google.com>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Kees Cook <keescook@chromium.org>
Cc: Sedat Dilek <sedat.dilek@gmail.com>, Fangrui Song <maskray@google.com>, 
	Joe Perches <joe@perches.com>, Andrew Morton <akpm@linux-foundation.org>, 
	=?UTF-8?B?RMOhdmlkIEJvbHZhbnNrw70=?= <david.bolvansky@gmail.com>, 
	Eli Friedman <efriedma@quicinc.com>, "# 3.4.x" <stable@vger.kernel.org>, 
	Vishal Verma <vishal.l.verma@intel.com>, Dan Williams <dan.j.williams@intel.com>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	"Joel Fernandes (Google)" <joel@joelfernandes.org>, Daniel Axtens <dja@axtens.net>, Ingo Molnar <mingo@kernel.org>, 
	Yury Norov <yury.norov@gmail.com>, Alexandru Ardelean <alexandru.ardelean@analog.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Rasmus Villemoes <linux@rasmusvillemoes.dk>, Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=SISFndTk;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
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

On Mon, Aug 17, 2020 at 10:14 AM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> On Sun, Aug 16, 2020 at 8:02 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> >
> > On Sun, Aug 16, 2020 at 07:22:35AM +0200, Sedat Dilek wrote:
> > > On Sun, Aug 16, 2020 at 2:19 AM 'Fangrui Song' via Clang Built Linux
> > > <clang-built-linux@googlegroups.com> wrote:
> > > >
> > > > Adding a definition without a declaration for stpcpy looks good.
> > > > Clang LTO will work.
> > > >
> > > > (If the kernel does not want to provide these routines,
> > > > is http://git.kernel.org/linus/6edfba1b33c701108717f4e036320fc39abe1912
> > > > probably wrong? (why remove -ffreestanding from the main Makefile) )
> > > >
> > >
> > > We had some many issues in arch/x86 where *FLAGS were removed or used
> > > differently and had to re-add them :-(.
> > >
> > > So if -ffreestanding is used in arch/x86 and was! used in top-level
> > > Makefile - it makes sense to re-add it back?
> > > ( I cannot speak for archs other than x86. )
> > >
> > > - Sedat -
> >
> > -ffreestanding disables _all_ builtins and libcall optimizations, which
> > is probably not desirable. If we added it back, we'd need to also go

I agree.

> > back to #define various string functions to the __builtin versions.
> >
> > Though I don't understand the original issue, with -ffreestanding,
> > sprintf shouldn't have been turned into strcpy in the first place.

Huh? The original issue for this thread is because `-ffreestanding`
*isn't* being used for most targets (oh boy, actually mixed usage by
ARCH. Looks like MIPS, m68k, superH, xtensa, and 32b x86 use it?); and
I'm not suggesting it be used.

> > 32-bit still has -ffreestanding -- I wonder if that's actually necessary
> > any more?

Fair question.  Someone will have to go chase git history, since
0a6ef376d4ba covers it up.  If anyone has any tricks to do so quickly;
I'd love to know.  I generally checkout the commit prior, then use vim
fugitive to get git blame.

> > Why does -fno-builtin-stpcpy not work with clang LTO? Isn't that a
> > compiler bug?

Yes; Sami found a recent patch that looks to me like it may have
recently solved that bug.
https://reviews.llvm.org/D71193 which landed Dec 12 2019. The bug
report was based on
https://github.com/ClangBuiltLinux/linux/issues/416#issuecomment-472231304
(Issue reported March 8 2019).  And I do recall being able to
reproduce the bug when I sent
commit 5f074f3e192f ("lib/string.c: implement a basic bcmp")

Now that that is fixed as reported by Sami below, I don't mind sending
a revert for 5f074f3e192f that adds -fno-builtin-bcmp, because the
current implementation of bcmp isn't useful.

That said, this libcall optimization/transformation (sprintf->stpcpy)
does look useful to me.  Kees, do you have thoughts on me providing
the implementation without exposing it in a header vs using
-fno-builtin-stpcpy?  (I would need to add the missing EXPORT_SYMBOL,
as pointed out by 0day bot and on the github thread).  I don't care
either way; I'd just like your input before sending a V+1.  Maybe
better to just not implement it and never implement it?

>
> I just confirmed that adding -fno-builtin-stpcpy to KBUILD_CFLAGS does
> work with LTO as well.
>
> Sami

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DNs4_%2BamT8P-7yQ56xUdDmL%3D1zDUThF-OmFKhexhJPdg%40mail.gmail.com.
