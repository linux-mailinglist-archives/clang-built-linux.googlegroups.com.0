Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHHX6CAAMGQEK2NMJDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 57BAF30FB43
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 19:23:26 +0100 (CET)
Received: by mail-pf1-x437.google.com with SMTP id t22sf3014906pfc.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 10:23:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612463005; cv=pass;
        d=google.com; s=arc-20160816;
        b=TwHQb97rZDP6uVZPyQl1sv1Q8g6dB/8IE9J2B5cNr9+dVWWOFqUXtKpYbDBYg+uKbF
         qPZ0NP8Il9DDINStmWTKVQcEHE9Iic1BwZ4fSuUdnN6pIrAusqpCIv9EAMk+Vk8efNpn
         NQXcYWc7CP7ApAex8Z897HHlo2P+A43cjBV5y5JiT7FvyMHEOdhFKZMNm/1vUr+vsJkE
         QV66R3J0TuZYXkxlRvLXyW7Civ/N9+5zBB+0Tlnk71skIBfHYyv1YMxKXoDZfwQTqykg
         x/2EY/KNko/Z0YonXGs8eGv7Dwf61dxS4yxOWKHih//eQIYX61w6X7B73AgdLMO/CBDi
         fsNw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=EEt2/gHP2levRSFuvxvZpyrTy9oI87S7Pm9ZEua+jvQ=;
        b=tJ2YMWgYDdj6fztRtwBj+sdaQAYRnYgVK33i0CjbGYq7C57L4BJiRbqplvfoLUFrKo
         xyA7lWsfaA6enZdLdixGtyytS7ZDBCPKnSTj+qMi/RtnWB/AbfJ99bnU4X6tNHloxFVg
         z3vDxPctQWwvelDKUN+QQPnLp9ghJXE5TiLGP/GiPclSnK32Mi3c9Z450EUBXxny4Ceo
         GGTjCyBrUerp+6UFlx3VyhCWhA1LraHYLseoisUVLzH5YqBdLPVCAPdqWajjf5UFrvCP
         pRkjXevYcimBs4xks/VGgbDUh+cnxm2GGM3z5wDVqfkPyK0bAQO3gBLUq06NjGKYTfqE
         xRVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bvjpTD7o;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EEt2/gHP2levRSFuvxvZpyrTy9oI87S7Pm9ZEua+jvQ=;
        b=sXdCxNqkznvcRMw0e4dq4RTgDQuQQ34gsiXjcum6RMXNRZcT8u16iKZic1gRi5AE9b
         T9sXieueqSZG0PT3Uf+5eEEbKxx6g+5IlPaGXeBWFcUsTQuljv8gUJ7BjxM9580V0YeI
         6j/VonSEWHLExjhY49y/BTSZl5Zkg3wMlJakSo5efA/UrgrKnJK6Kqh3wzf1fF6vwir4
         +LImMH4eSIiXEm+05Apvqgy38A2jlQoiejTlj1zVi/uE+bCL1yt/ExPhj1P0Kc4t3eCw
         zm67e98vI53QoA5U/1yCPt/ztPTlVVpRCsaJ95HwUVwB9N9FjrlSxWW+qbUNYSIFtiMI
         fiAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EEt2/gHP2levRSFuvxvZpyrTy9oI87S7Pm9ZEua+jvQ=;
        b=UxxTXIn+iCsOpmrfMswS8DmPZ3O/TOANFKzh7b6jpCfFJoCMBd+yc4EOFpLJypoIn8
         /pcKS9M0z3m1egaQ/H0+CgtYRgau8e2l288fpG+LFHToBTaWj9a/eh4X6Z1gIctkjJ2S
         hU1HotAkLT21bcdljXqQ6UMKtGa9EC0ei6DPwTTo51h3MpD0taM5wyhM77NmFGIhOaBJ
         DNcVEyUaylqz3+ft4BcqAHJzU4eKvdt+FI28K/lFa4WPAXaU9lvt4Kca2mEL+owxDjLf
         jl/tjW9TwVq76tTV18+rvNU5kMmn5hEYrUZNU4jDmAheaT0Dfo7bp2IUW3Fb6sCWgszy
         3Eqw==
X-Gm-Message-State: AOAM530mvG4DbO9l+JlWWanda3ouftVnVP14/ZnMzkNX/mQ26spxTkYB
	6t4d6EMj8YsNX9iio6fFXVg=
X-Google-Smtp-Source: ABdhPJy0uRWmMR2r4vEN28NltC5dX8UiTca5FW8WOztuHPLqJ1bDz2je5N5ENnQjH0rlD3agjlDmJQ==
X-Received: by 2002:a17:90a:9310:: with SMTP id p16mr213808pjo.211.1612463005059;
        Thu, 04 Feb 2021 10:23:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:ce54:: with SMTP id r20ls2665090pgi.2.gmail; Thu, 04 Feb
 2021 10:23:24 -0800 (PST)
X-Received: by 2002:a63:cc05:: with SMTP id x5mr272768pgf.254.1612463004390;
        Thu, 04 Feb 2021 10:23:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612463004; cv=none;
        d=google.com; s=arc-20160816;
        b=PRtyXBOXCYcK1kUjg/Cm12hZvHkIy3r7ZkrgSH+awM2CNOUBdkUtytL7Rhfe54AIoZ
         jmoKW3KCMqaqkXi3/zCycBsdtvRjnCtMxUPboUw4SUJntnEfT9E8od50c12l/L2DmssI
         IsIepBFfck0w88swtEAyFbxARQ+ZH/jU9SkF2fG4qB0GfJbhNxlHqYYQqYgNnMannExI
         NHMwMGu2VFog2frGDENUAg54EuURgoB59CZDf2GT6r8BfPEdl/9N5kUlfT3uoYrgNE0t
         NdwpTtupYEUSm19rt7mHxtqBZJepVmq3Dxx5Nnz1esb5LfpF46lrS/w6U6hUzEgFA22u
         L2Aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=jajB5tF8FeIJnHD6r5t0+o0yif7uNCHw33YMW00aC2Y=;
        b=Y/6N7viQ35074xK80FLNrbjYoBYAnXTDA9Lk2L7JIv6r9mTTw3xdZoQwdMCPGSXjfr
         Xz7FxIq6gyoeYvWs1HrgcVyPv+yV+Wtb3S61axZIfTya7zgXwnP4pJJ/5wy9TpwoYf81
         zI0PjMifrsS+2jzFVHOJa5C0MK2cVVJKk45u9BhUwSn56uxYda/PPKdKkvlRV07WuLGD
         iFfKmddFqXDGnk64Ex9WupuUfiUPZGVW0rnSLAB61/rCmDo1hU+7tqw0bNSBpG8oMcew
         K5jYklG/ZUOhbHTJgkTlEqf7P7ANywwNEhYddI4Iey7HVrjszOt1MAcJx93UavtjNZBv
         dmfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bvjpTD7o;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com. [2607:f8b0:4864:20::634])
        by gmr-mx.google.com with ESMTPS id f24si584099pju.1.2021.02.04.10.23.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Feb 2021 10:23:24 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::634 as permitted sender) client-ip=2607:f8b0:4864:20::634;
Received: by mail-pl1-x634.google.com with SMTP id u11so2182188plg.13
        for <clang-built-linux@googlegroups.com>; Thu, 04 Feb 2021 10:23:24 -0800 (PST)
X-Received: by 2002:a17:902:26a:b029:da:af47:77c7 with SMTP id
 97-20020a170902026ab02900daaf4777c7mr641577plc.10.1612463003852; Thu, 04 Feb
 2021 10:23:23 -0800 (PST)
MIME-Version: 1.0
References: <6c65bcef-d4e7-25fa-43cf-2c435bb61bb9@collabora.com>
 <CAMj1kXHMw5hMuV5VapcTeok3WJu1B79=Z3Xho0qda0nCqBFERA@mail.gmail.com>
 <20210204100601.GT1463@shell.armlinux.org.uk> <CAMj1kXFog3=5zD7+P=cRfRLj1xfD1h1kU58iifASBSXkRe-E6g@mail.gmail.com>
 <c0037472-75c8-6cf9-6ecf-e671fce9d636@collabora.com> <46373679-a149-8a3d-e914-780e4c6ff8be@collabora.com>
 <CAMj1kXEshuPTrKvN4LpXQMftHJG+yH8+fgU7uVc6GYn0qd8-xA@mail.gmail.com>
 <7c685184-8688-9319-075b-66133cb0b0c3@collabora.com> <CAMj1kXH_CCYyd5zNVRL=KWpBXtsKamV7Bfg=O1YWBJL0f_eXLQ@mail.gmail.com>
 <CAKwvOd=ziPWHmBiPtW3h2VYLZ-CTMp4=aEonmMLM7c=Y0SeG1Q@mail.gmail.com> <20210204181216.GB2989696@localhost>
In-Reply-To: <20210204181216.GB2989696@localhost>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 4 Feb 2021 10:23:12 -0800
Message-ID: <CAKwvOd=UYuKPp6rO7aWGFEsc9yLa_UCLnAL-vwqzi_5sZg7O3g@mail.gmail.com>
Subject: Re: next/master bisection: baseline.login on rk3288-rock2-square
To: Nathan Chancellor <nathan@kernel.org>
Cc: Ard Biesheuvel <ardb@kernel.org>, Guillaume Tucker <guillaume.tucker@collabora.com>, 
	Russell King - ARM Linux admin <linux@armlinux.org.uk>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, Nicolas Pitre <nico@fluxnic.net>, 
	"kernelci-results@groups.io" <kernelci-results@groups.io>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=bvjpTD7o;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::634
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

On Thu, Feb 4, 2021 at 10:12 AM Nathan Chancellor <nathan@kernel.org> wrote:
>
> On Thu, Feb 04, 2021 at 10:06:08AM -0800, 'Nick Desaulniers' via Clang Built Linux wrote:
> > On Thu, Feb 4, 2021 at 8:02 AM Ard Biesheuvel <ardb@kernel.org> wrote:
> > >
> > > On Thu, 4 Feb 2021 at 16:53, Guillaume Tucker
> > > <guillaume.tucker@collabora.com> wrote:
> > > >
> > > > On 04/02/2021 15:42, Ard Biesheuvel wrote:
> > > > > On Thu, 4 Feb 2021 at 12:32, Guillaume Tucker
> > > > > <guillaume.tucker@collabora.com> wrote:
> > > > >>
> > > > >> Essentially:
> > > > >>
> > > > >>   make -j18 ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- LLVM=1 CC="ccache clang" zImage
> >
> > This command should link with BFD (and assemble with GAS; it's only
> > using clang as the compiler.
>
> I think you missed the 'LLVM=1' before CC="ccache clang". That should
> use all of the LLVM utilities minus the integrated assembler while
> wrapping clang with ccache.

You're right, I missed `LLVM=1`. Adding `LD=ld.bfd` I think should
permit fallback to BFD.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DUYuKPp6rO7aWGFEsc9yLa_UCLnAL-vwqzi_5sZg7O3g%40mail.gmail.com.
