Return-Path: <clang-built-linux+bncBCU4TIPXUUFRBHUA6SAAMGQEKFQB4XY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 091BB31068A
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Feb 2021 09:21:52 +0100 (CET)
Received: by mail-oo1-xc3a.google.com with SMTP id l21sf3127679ooh.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Feb 2021 00:21:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612513311; cv=pass;
        d=google.com; s=arc-20160816;
        b=LDcGfbAFU6M/y+j9OdIs3EDlB1jU+Xi5UoY1fSfxNYeyVl5Bx7LbGIJH3AJI24PRf8
         uQ1VHSpNVzt1QTh/Le3eeSPqhxT0E0QOeS0O6QSPS8ltyBP2RmGKweh/vXKGNur2BRlK
         hoD3DjvujlKzus103wWqBw48Z97SsiUyf5gpODUjg42ADLX2zl32t/aR1u/KmsYM7Esn
         L4D/VovuqGHRi2JmWHLh4RkuTtQiGEzeMe2wYDeLiC+ZtgA/hgzv7H/uDTp2z4x1+9ov
         Adrl/Bjy4C43yw26avipruX2GJkjmiu1Ixqae4EI5g8KjFAAKAhdDaWNRwnUlQPLbYAM
         hejA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=2yGxoKUxkK1sATa1AU0XEpDphVt3zeN9Uy5fD5CLhjA=;
        b=lc5AMnfppuY9LELBF1iUGYfVkg5z0NXHZN/gStdWDUHYUE8mirCNXk23gJnM3VKOG+
         EaaZHwXZkhUmHDyn0aiSLa+bo4HMvwvjdKAwTTgJBq626SLxjmXBt+yA0HszZm2AQUKN
         JYdECzB7if9gyz0DlYv4mL+xQn23ZdDW1RsSCz6p2xTUemw1KIBkt0CoXb+SpdIW2XyI
         LOd7LF+YqceJs/G+6XwINsfjsdl8CT7PX2lZtYaHD2MH9DlhNXH0v6knl0fZA51TNr4V
         r34k1oYvFR13a9M7k9T+9IjZ5LsET3olkGyJ3vTwtYpnVBa/SFl3Wegmp0SgKzLWeQ4G
         9qmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=AqRQWFJf;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2yGxoKUxkK1sATa1AU0XEpDphVt3zeN9Uy5fD5CLhjA=;
        b=NjiEiLVcq3p/wUeOAMMywKTm/i0NmpFCs61h34hKI8TPk4w5YuJt4TY0lNvYcOReT8
         rusD9SWJg6Iu6Y+m4epgPGB69CwYNxOpMvV4enrcyWhoGoq0gFq1bMqHFf9RKy9V3Kr5
         75eVdeyAILLVlsadrGaB+0rGHZ+JsuMsCNJqxemL58XLS5uddipdsBDON6OEwx2LmyAG
         9ln4cutshmo4pktWueBI43iO/eEEaQlfm43TvQbK+Gokv2HL2+eKPyGM2kIBMFHtwFHh
         mZAbPJr65KBPFpAewN2ySJ2q+FV2UcFITwkXI+7PEAQvFRIMZUbTFdwYMx8D/9tqaSys
         uzag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2yGxoKUxkK1sATa1AU0XEpDphVt3zeN9Uy5fD5CLhjA=;
        b=gVbs+EMQTJjOOV3ZT0haeSoUuhzsMbAHX89faW2z19IHMGUBDIMzlwDybp2S7LKGg6
         OoOOAbyyM7fjttfD4QkWU38YaOUn9Nl3jn2WikzJ8g6toK/sRan/inag8v/VZ8a25eHc
         KAQLqvRMBhtCFkx+puLxKjzLI+55aG1GWShwDyQypgqhLQJDR5iRmzZeEhfbzPvg70cH
         jmnUaCFtMdS74k/XzeUIyTQsHpZJNBO4qduACipkaZb7Kegdjul6KmJSg+K4BS/lAwJK
         Ork98fjTJJLzgb2BGKjGnyvV1iCWiUbt9QYrud261y4omXkg1jDma3BlSHz68VNvVR3u
         OR6A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533393qptkDUhagLi3F+KXG02cEGbJ7wZEBTxJlMJxODIlp/F6Rx
	uPsRwTIXlTNriJqnsRbxJV4=
X-Google-Smtp-Source: ABdhPJwH9o95HBJctair9SQB44zZpc4Az6WjueK2cb8G4YxWHPvXxFkov4gaw57p+rq39Blbu/i8PA==
X-Received: by 2002:a4a:a289:: with SMTP id h9mr2651686ool.56.1612513311030;
        Fri, 05 Feb 2021 00:21:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1e4a:: with SMTP id e10ls2040431otj.7.gmail; Fri,
 05 Feb 2021 00:21:50 -0800 (PST)
X-Received: by 2002:a05:6830:1e50:: with SMTP id e16mr2659031otj.149.1612513310559;
        Fri, 05 Feb 2021 00:21:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612513310; cv=none;
        d=google.com; s=arc-20160816;
        b=AtjjL8bo7/mFAIZ8vwPm2op7E6F/MGJUbIb0GM2sW5s6mDmj8nxM8GIRZWDDs+yqJ0
         SzH4Pr4bt+n1eOgHU3GmWbAj1Dox5AxDhzM7+2DZCqtBpxN8eysCLzFgqQifrDY+PAZE
         RHs+rN+QZuwXLrdwivCw+DljpJ7MWKeUhlu+h9z+YNcpvxdoSrWlm7gwqU05zT5L+ePb
         ZvU/qhE0nv+ZsUOUIG9Z3JrLJS9I+tuQNgKMlH6oqhXUmUFP4YRvdg8LrRhY7I3cPrHK
         bFrPA8g3bG3hpwmaN1lAe5dYv3WKD0Hc2GSBzrSDc1FUYJAI3u9dOUTRS9dyi2W0z5ss
         5UDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=yhol4eIk7jd4CGW2dNGOKdc44aIOUvsQW5U3bY4cJaI=;
        b=aT2qyGLs2pgCSFsGiy8TMK0+j5yGj0SO1xmNC37dwBsa/wTQAP3NB36UiH7OsGiR6s
         3V8Yx4968dCLIm2tvm9OxiP8/NYTdo8GBRd/r2pUk/yFyqTcAep86QuVB+T2mbG5r4DJ
         Wcd2yRRZ8zVhDWCk7LQJNn+h+1CmbBgHclO4CpVkKpgbaS7080wSSeCq9FLQ/FcOpZEL
         gEgVncQ4uls6InuKSsVZKEENNGzYswrbc4Dq6fafA6jFomhJwYgiqagh8N55dbqDr3IB
         d948NRf/ABW9Mu6OSNYAwHmhN44vVYoPdPBauGxtRnLJh3zPIemwotPBJQvPTakXOELF
         EAxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=AqRQWFJf;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b124si506088oii.4.2021.02.05.00.21.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Feb 2021 00:21:50 -0800 (PST)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 84FB664FC1
	for <clang-built-linux@googlegroups.com>; Fri,  5 Feb 2021 08:21:49 +0000 (UTC)
Received: by mail-oi1-f169.google.com with SMTP id w8so6692540oie.2
        for <clang-built-linux@googlegroups.com>; Fri, 05 Feb 2021 00:21:49 -0800 (PST)
X-Received: by 2002:aca:b6c1:: with SMTP id g184mr2381863oif.47.1612513308661;
 Fri, 05 Feb 2021 00:21:48 -0800 (PST)
MIME-Version: 1.0
References: <6c65bcef-d4e7-25fa-43cf-2c435bb61bb9@collabora.com>
 <CAMj1kXHMw5hMuV5VapcTeok3WJu1B79=Z3Xho0qda0nCqBFERA@mail.gmail.com>
 <20210204100601.GT1463@shell.armlinux.org.uk> <CAMj1kXFog3=5zD7+P=cRfRLj1xfD1h1kU58iifASBSXkRe-E6g@mail.gmail.com>
 <c0037472-75c8-6cf9-6ecf-e671fce9d636@collabora.com> <46373679-a149-8a3d-e914-780e4c6ff8be@collabora.com>
 <CAMj1kXEshuPTrKvN4LpXQMftHJG+yH8+fgU7uVc6GYn0qd8-xA@mail.gmail.com>
 <7c685184-8688-9319-075b-66133cb0b0c3@collabora.com> <CAMj1kXH_CCYyd5zNVRL=KWpBXtsKamV7Bfg=O1YWBJL0f_eXLQ@mail.gmail.com>
 <CAKwvOd=ziPWHmBiPtW3h2VYLZ-CTMp4=aEonmMLM7c=Y0SeG1Q@mail.gmail.com>
 <20210204181216.GB2989696@localhost> <CAKwvOd=UYuKPp6rO7aWGFEsc9yLa_UCLnAL-vwqzi_5sZg7O3g@mail.gmail.com>
 <253b2987-c8e9-fcb6-c1b9-81e765c0cc2a@collabora.com>
In-Reply-To: <253b2987-c8e9-fcb6-c1b9-81e765c0cc2a@collabora.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Fri, 5 Feb 2021 09:21:37 +0100
X-Gmail-Original-Message-ID: <CAMj1kXFKzEPqG5j2bn5n_3imc9aFyOEHX7CVDdwe2=ugTq=bZQ@mail.gmail.com>
Message-ID: <CAMj1kXFKzEPqG5j2bn5n_3imc9aFyOEHX7CVDdwe2=ugTq=bZQ@mail.gmail.com>
Subject: Re: next/master bisection: baseline.login on rk3288-rock2-square
To: Guillaume Tucker <guillaume.tucker@collabora.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <nathan@kernel.org>, 
	Russell King - ARM Linux admin <linux@armlinux.org.uk>, 
	"kernelci-results@groups.io" <kernelci-results@groups.io>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Nicolas Pitre <nico@fluxnic.net>, Linus Walleij <linus.walleij@linaro.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=AqRQWFJf;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Thu, 4 Feb 2021 at 22:31, Guillaume Tucker
<guillaume.tucker@collabora.com> wrote:
>
> On 04/02/2021 18:23, Nick Desaulniers wrote:
> > On Thu, Feb 4, 2021 at 10:12 AM Nathan Chancellor <nathan@kernel.org> wrote:
> >>
> >> On Thu, Feb 04, 2021 at 10:06:08AM -0800, 'Nick Desaulniers' via Clang Built Linux wrote:
> >>> On Thu, Feb 4, 2021 at 8:02 AM Ard Biesheuvel <ardb@kernel.org> wrote:
> >>>>
> >>>> On Thu, 4 Feb 2021 at 16:53, Guillaume Tucker
> >>>> <guillaume.tucker@collabora.com> wrote:
> >>>>>
> >>>>> On 04/02/2021 15:42, Ard Biesheuvel wrote:
> >>>>>> On Thu, 4 Feb 2021 at 12:32, Guillaume Tucker
> >>>>>> <guillaume.tucker@collabora.com> wrote:
> >>>>>>>
> >>>>>>> Essentially:
> >>>>>>>
> >>>>>>>   make -j18 ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- LLVM=1 CC="ccache clang" zImage
> >>>
> >>> This command should link with BFD (and assemble with GAS; it's only
> >>> using clang as the compiler.
> >>
> >> I think you missed the 'LLVM=1' before CC="ccache clang". That should
> >> use all of the LLVM utilities minus the integrated assembler while
> >> wrapping clang with ccache.
> >
> > You're right, I missed `LLVM=1`. Adding `LD=ld.bfd` I think should
> > permit fallback to BFD.
>
> That was close, except we're cross-compiling with GCC for arm.
> So I've now built a plain next-20210203 (without Ard's fix) using
> this command line:
>
>     make LD=arm-linux-gnueabihf-ld.bfd -j18 ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- LLVM=1 CC="ccache clang" zImage
>
> I'm using a modified Docker image gtucker/kernelci-build-clang-11
> with the very latest LLVM 11 and gcc-8-arm-linux-gnueabihf
> packages added to be able to use the GNU linker.  BTW I guess we
> should enable this kind of hybrid build setup on kernelci.org as
> well.
>
> Full build log + kernel binaries can be found here:
>
>     https://storage.staging.kernelci.org/gtucker/next-20210203-ard-fix/v5.10-rc4-24722-g58b6c0e507b7-gtucker_single-staging-41/arm/multi_v7_defconfig/clang-11/
>
> And this booted fine, which confirms it's really down to how
> ld.lld puts together the kernel image.  Does it actually solve
> the debate whether this is an issue to fix in the assembly code
> or at link time?
>
> Full test job details for the record:
>
>     https://lava.collabora.co.uk/scheduler/job/3176004
>


So the issue appears to be in the way the linker generates the
_kernel_bss_size symbol, which obviously has an impact, given that the
queued fix takes it into account in the cache_clean operation.

On GNU ld, I see

   479: 00065e14     0 NOTYPE  GLOBAL DEFAULT  ABS _kernel_bss_size

whereas n LLVM ld.lld, I see

   433: c1c86e98     0 NOTYPE  GLOBAL DEFAULT  ABS _kernel_bss_size

and adding this value may cause the cache clean to operate on unmapped
addresses, or cause the addition to wrap and not perform a cache clean
at all.

AFAICT, this also breaks the appended DTB case in LLVM, so this needs
a separate fix in any case.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXFKzEPqG5j2bn5n_3imc9aFyOEHX7CVDdwe2%3DugTq%3DbZQ%40mail.gmail.com.
