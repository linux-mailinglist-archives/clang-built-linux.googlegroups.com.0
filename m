Return-Path: <clang-built-linux+bncBDYJPJO25UGBB2XOX32AKGQE3TW4KTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id E0F5C1A3D28
	for <lists+clang-built-linux@lfdr.de>; Fri, 10 Apr 2020 02:01:47 +0200 (CEST)
Received: by mail-ua1-x93a.google.com with SMTP id c3sf136309uae.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Apr 2020 17:01:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586476906; cv=pass;
        d=google.com; s=arc-20160816;
        b=dxqL/tvuJPQVdOg5P4Y/7ccCCgAu3GW4948V9pDQHg2L9HYq5c69wVTeKZlbzhEg2A
         Z+BO8XuXoYXvzejrxs4aBhhHCWqZOW77WkFE2PfQH6PDiw/Bh2lSGnEpQxF5oMOo8o4D
         IoiNDZp8ZBx6IG0P2xRgooT0Za/ltHdFUDSxi7GLHIn/iaBDG5xBAEoTaDgS5Bp5mXhj
         WD/iioJsntIBrULsMdn7+Xzo+0JlATwjrVV/ZoDVIgvXlz3yGRVZyvcUgjOlt+Awks74
         KVfIWV9Q49O1UsSSFYjrh/EfD9Y3+fnn66RTrkkCaYmPYL/HCzAjVE6zXcNY/PrcN044
         j0zw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Z06Qik4XhJ11OxlDc2BfhqxYvb2dhXPnCCVnfUjdesg=;
        b=B14LumkkzF3C5tW/9KXD5yVkb+gBXr9OK+7v6Rwt1RtZAYHBLxH0e+KGEeEbBu12EW
         21SYtQw1cWqcHNIwtncGtBgYhVYc2V1EnZIHQYv4CzMnuPM/3cKXJd51FQMCXQHrEd+s
         Pcc3ohag4jnPUhBXEtLA7OQXqFE3HGnoBhlQkZGXT98GQZvhFRSdE8V71Xm8Rf1tVXDY
         FYzF2a+A8jg+In7MxCBCihmbV4fMcqdnIneSdLUzt7PP4v+GQXs+H1PmG3sJrsyk18Sx
         zfYhd9q/Eudud+g684nhvq8KxccEsVLWtEVmOqtv3+OZDJSgM49tUQAccNx8EgZmshz2
         20Jg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DvFGg3oF;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z06Qik4XhJ11OxlDc2BfhqxYvb2dhXPnCCVnfUjdesg=;
        b=ENG++7mMmfpgMbELkjeCecl6J+zJu7+7YEAt9Cg1hMkwhdG8OuSwzcTsIKUCcUOLwI
         6Ry/sap9da5CVre58ncOhPuKSj1uxfak+5xI2JCtfDl0mTrxHPGXrE4TIrlEkXYshPbJ
         IIID8c+LCYcP6BfS7G/b/7AX8VSewHJeopVJEnyjEhnP6+eOdWP2XfjXNzLbI5WLBej9
         hzr6C4ZrqBpQuDeM+nVgbdk9Oa2tREx5oE2j1cptJtqIxMTem7YlCQL0/CDaxXMnbTPj
         W6ihFeh9PjMEyBOXk8jbwrRr2dWc1EUP+Kz0RkAR6Nd5H94wC0h0ZNo122eirziq+1qR
         oepw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z06Qik4XhJ11OxlDc2BfhqxYvb2dhXPnCCVnfUjdesg=;
        b=Xp+VzXEpfCOdGYVEqRrFiAkjrEQfLyrs7PW8I/FQhRWT7hZ5bxjGCn8gdXrSGCSyi8
         F2ylaIv449tmpyRFa/iXf0Z45kQgPZCqVONm3jiqfV+5TzEJ7Y7Veb5MXtQBrFGNYDch
         V5jzrhozsaYhGp28PWfL2I8k7MNkhOf8bqTYClO6N+o9vxpm+jWFoSF/M8rO45nBQmaQ
         g9JHigUe9MBYjn1ohdmiulCL72STfjy4iQku06CTcwJ7CQnDsO9f6eH81jFwTXDRPLeS
         o4eS+sDvmW7coAA0dutKBLuTMrb1MFJiypMFQT3qnnBgSxs5LFy22Wur6PiKYTZ+1PTd
         66yg==
X-Gm-Message-State: AGi0Pua82BqzUfuXV1pPg5cwOrTdie7WaC7cwZFBpohOa4z+Mxnq3r+S
	gV2jY03ei5CsFK3WLuuaOhE=
X-Google-Smtp-Source: APiQypKfZSfdSaP+zNaa7cUKHo59H2BmyvJnuGs9lP/x1bk+jbLaX+0pW429h2nUVTn7RiDyHc4mRQ==
X-Received: by 2002:ab0:5550:: with SMTP id u16mr1362331uaa.62.1586476906640;
        Thu, 09 Apr 2020 17:01:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:114b:: with SMTP id j11ls88434vsg.6.gmail; Thu, 09
 Apr 2020 17:01:46 -0700 (PDT)
X-Received: by 2002:a67:3102:: with SMTP id x2mr2055454vsx.193.1586476906114;
        Thu, 09 Apr 2020 17:01:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586476906; cv=none;
        d=google.com; s=arc-20160816;
        b=HuaVLK3YIkATFDY9zB65OlwUdSplmRFxiDTv+P2iUsLdI9DhlWC7n59tUpx1tePxjg
         KbBpe3NAe1S7XnyLqR/irfFdStGapfu1nzO0om/HEq7wWbF0tXpHuvvUlaqoOuUNhjne
         FMJxY2RcDx5JGgOjSbsJy/kdh7DGrQXA4g0d82MO6N0zTLS4AxdxY6jwQFLfodqBQwLB
         MCPGRRJRml81cI+G1AwyDVcGbk3dps6f7Ry9kpExh7ctEoGkYlixEgy5227fH/9zd/x8
         j3ZHNvT/osXWuGvlrPyGstH/A9J7ubdI4si2j4r1Ev2BeG9OTJU3cJ70P1aS39cEPjE4
         XaLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=WfliXDX1Ymsggc4DabpVxNTeN6zHMaFuavIUQZv83/0=;
        b=EAznkwOVnP1pMnTC3D/LTDVg818s9qwcsGSt5kwmGv9TU2L53VZRcpj+/XIq21Av9J
         MFrmn1yJKwGW1NvEO54bvalHX62dU0sA7EkN29r/8M4nyn7Pnyy7tDyCMAD1D16bUNLK
         CbdVOyaYdTC9WaB4yvfkzY21s8E/YHdnKg1pQA+hMreXWBv+irThiHehw9M6XjmrS4vP
         ph+EItzGzCe8fY3h2aXFauAlOhmBU6HDpVMEKaO+9eV/kxt2bp5nkpe52GN3HwfvRR1z
         HG3mADTJx56ZACGWBoKqvUTKgW/jV0YjYZKiJ7nTDIcTc1SEAxMopZceqqqcOsUHnnY8
         5dnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DvFGg3oF;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id q67si20471vkb.1.2020.04.09.17.01.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Apr 2020 17:01:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id c21so303273pfo.5
        for <clang-built-linux@googlegroups.com>; Thu, 09 Apr 2020 17:01:46 -0700 (PDT)
X-Received: by 2002:a65:6704:: with SMTP id u4mr1927192pgf.263.1586476904758;
 Thu, 09 Apr 2020 17:01:44 -0700 (PDT)
MIME-Version: 1.0
References: <20200409232728.231527-1-caij2003@gmail.com>
In-Reply-To: <20200409232728.231527-1-caij2003@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 9 Apr 2020 17:01:33 -0700
Message-ID: <CAKwvOdkot0Q7FSCMKGm6ti4hhvD3N+AMUK4Xv2Xxiiu3+pURgQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: do not assemble iwmmxt.S with LLVM toolchain
To: Jian Cai <caij2003@gmail.com>, Masahiro Yamada <masahiroy@kernel.org>
Cc: Manoj Gupta <manojgupta@google.com>, Peter Smith <Peter.Smith@arm.com>, 
	Stefan Agner <stefan@agner.ch>, Sami Tolvanen <samitolvanen@google.com>, 
	Ilie Halip <ilie.halip@gmail.com>, Jian Cai <jiancai@google.com>, 
	Russell King <linux@armlinux.org.uk>, Arnd Bergmann <arnd@arndb.de>, 
	Linus Walleij <linus.walleij@linaro.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, Doug Anderson <armlinux@m.disordat.com>, 
	Benjamin Gaignard <benjamin.gaignard@linaro.org>, 
	Bartosz Golaszewski <bgolaszewski@baylibre.com>, Masami Hiramatsu <mhiramat@kernel.org>, 
	"Steven Rostedt (VMware)" <rostedt@goodmis.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Tejun Heo <tj@kernel.org>, "Joel Fernandes (Google)" <joel@joelfernandes.org>, 
	Patrick Bellasi <patrick.bellasi@arm.com>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Dan Williams <dan.j.williams@intel.com>, "Eric W. Biederman" <ebiederm@xmission.com>, 
	David Howells <dhowells@redhat.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=DvFGg3oF;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444
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

On Thu, Apr 9, 2020 at 4:28 PM Jian Cai <caij2003@gmail.com> wrote:
>
> iwmmxt.S contains XScale instructions LLVM ARM backend does not support.
> Skip this file if LLVM integrated assemmbler or LLD is used to build ARM

Hi Jian, thank you for the patch.  It's pretty much spot on for what I
was looking for.  Some notes below:

s/assemmbler/assembler

:set spell

;)

Also, could use a link tag, ie.

Link: https://github.com/ClangBuiltLinux/linux/issues/975

(Always include the link tag to help us track when and where patches land).

Finally, I think the hunks for the two different files should be
split; the init/Kconfig change should be it's own dedicated change
that goes to Masahiro, the maintainer of the Kbuild tree.  Then when
we have that, the dependent configs should go separately.  Would you
mind splitting this patch in two, and re-sending just the Kbuild patch
for now?  Since you used Sami's patch for inspiration
(https://github.com/ClangBuiltLinux/linux/issues/975#issuecomment-611694153,
https://github.com/samitolvanen/linux/commit/fe9786cb52a0100273c75117dcea8b8e07006fde),
it would be polite to Sami to add a tag like:

Suggested-by: Sami Tolvanen <samitolvanen@google.com>

or maybe better yet, take Sami's patch, add your signed off by tag
(maintaining him as the git author, see `git log --pretty=fuller`),
then rebase your AS_IS_CLANG hunk on top, make that a second patch,
then finally have the arm change as a third patch.

This change is exactly what I'm looking for, so these are just process concerns.

> kernel.
>
> Signed-off-by: Jian Cai <caij2003@gmail.com>
> ---
>  arch/arm/Kconfig | 2 +-
>  init/Kconfig     | 6 ++++++
>  2 files changed, 7 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 66a04f6f4775..39de8fc64a73 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -804,7 +804,7 @@ source "arch/arm/mm/Kconfig"
>
>  config IWMMXT
>         bool "Enable iWMMXt support"
> -       depends on CPU_XSCALE || CPU_XSC3 || CPU_MOHAWK || CPU_PJ4 || CPU_PJ4B
> +       depends on !AS_IS_CLANG && !LD_IS_LLD && (CPU_XSCALE || CPU_XSC3 || CPU_MOHAWK || CPU_PJ4 || CPU_PJ4B)
>         default y if PXA27x || PXA3xx || ARCH_MMP || CPU_PJ4 || CPU_PJ4B
>         help
>           Enable support for iWMMXt context switching at run time if
> diff --git a/init/Kconfig b/init/Kconfig
> index 1c12059e0f7e..b0ab3271e900 100644
> --- a/init/Kconfig
> +++ b/init/Kconfig
> @@ -19,6 +19,12 @@ config GCC_VERSION
>  config CC_IS_CLANG
>         def_bool $(success,$(CC) --version | head -n 1 | grep -q clang)
>
> +config AS_IS_CLANG
> +       def_bool $(success,$(AS) --version | head -n 1 | grep -q clang)
> +
> +config LD_IS_LLD
> +       def_bool $(success,$(LD) --version | head -n 1 | grep -q LLD)
> +
>  config CLANG_VERSION
>         int
>         default $(shell,$(srctree)/scripts/clang-version.sh $(CC))
> --

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkot0Q7FSCMKGm6ti4hhvD3N%2BAMUK4Xv2Xxiiu3%2BpURgQ%40mail.gmail.com.
