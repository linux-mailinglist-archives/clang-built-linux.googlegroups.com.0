Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBBXS6CAAMGQEQPR3O6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D62C30FAE2
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 19:12:24 +0100 (CET)
Received: by mail-oi1-x238.google.com with SMTP id g76sf1402276oib.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 10:12:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612462343; cv=pass;
        d=google.com; s=arc-20160816;
        b=lzbFFYJA6IpjZDzRSg14Xt3G2b5JoKNdiNiZeQZrMgO0x+x1m3ONS4LTD1RmYKpg+c
         Qp1bpcVE+BxZdMUYbCXgEpfiqzjIAV7w6XnooU6KA1r2O4G4xzL9w1JNctM9NlgJUwCH
         whwliC+RGuOTFztQBLAas2Qjnj6l6rxa/wOPvZulioD7hUQl8hZR0q+5Xcw72mGPiK2i
         majoD8seDFY3oX/akdG6qP233WBcN+rDjM4qlild0wSidzSc/av6Y0hQiNy4dwISrLCF
         dKmUTfg8aIw2AyVq1MjWizGiLH3SwB8/xUCV5aTKFR83lEDTVR6y7J3mn2ygCeTED7nW
         FEdA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=HNixjvp4lsNgxE2bRLfluA8O0r/WzMj35hHnot3nEtA=;
        b=xucodKoI+OKGxYNY5NN/vybS9JrjMdlYIhWeN0lfmlKnCuTZyNA9uT4PK19Qca78aj
         u80OcLmUlDUL3UoB5RtarOT7+61W2ckMV8jWguROWXoh6p/BenLH18zDfxxOTNznK6+J
         Gma3xY7TEKCLKiKICPHncPhmuGyM3pf8WyDuGxWl9UFHey20hBG4AbE/0dhgV5Z3bZW4
         tMEXlkwLG+z5MGqbZC+eTQzqykR+KkcHcAtFB7Hb+Tikq0v6nx6Y4tvGw93pF9zTTsIf
         NRT+WVI/3zKEHiTYFCzP0TwonYySoWO+lHdNgux99iR0vwsRLzY3uZrMPUQjCHYQSjlj
         HJuQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=GFniNQHR;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HNixjvp4lsNgxE2bRLfluA8O0r/WzMj35hHnot3nEtA=;
        b=f1rvaKyxLGDsoVG4KvBvxrEFk156Ff/yRIoFeTDy5EdNqODYakt4aj5mmrDLc2YNBq
         Yq70JBIlt1fIb2n95+vLIrBEOLwXvATVJ9uargZc11GLk715yebPob8nIGIYiLxsUXuB
         RYPBOipBq+XR0k+QObgtNQZhayXNCN5ngbfVENhxvMwcjdubOtV1yq44rF9rq15PkB+n
         re6Verq5gjAzKJfwGVxszP1/GY6djJstQQFhVq/HuVyskLGFSY7luZlqVkZqyoM7A6Eq
         ckQjtJHD/v0xqnb8etCHCyM3hzZEOcwIQQEiinErJBl8C8K87ljEAW1VgOsDjSEuBoqS
         ERtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=HNixjvp4lsNgxE2bRLfluA8O0r/WzMj35hHnot3nEtA=;
        b=UyeAV3k513ykZIE5Yd6EqR+GFm9tNg5VqZZtMTw3Y+7BJ2LLrawz8aXo2M/k0QSgdX
         Fql5GlgWNprBo0ubinPdZneuzfmAerpG9jv+3GTYnSaBnJuCu/z3At8U+X0cMXFh3MP4
         T0EArnuxeIGnXkuATSb6suEV+BC+BxvgCnSMEkO5bUDJDppFj9nePkTWgCfvvBSc75af
         qPAiKsUVrg74Kxa6H7Hw89FLFuNB5zJcCgEvxEOFGInHoMskS4DjVj3Gj+WU6MXmSR0z
         UVogHfBB2Xn2ML3MCVb/0HPaEzFEvu8BcAgFQOibK1bkmmDWRDBgKX5o1W7B6sxZ44RX
         DuHQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531E5RpjDFRRsjrqDeB4t6t+Mw3ZhOwqsys1xQ+hRjK3tVrdf92e
	q/HFwTtCReRkMZjr+h9/8iQ=
X-Google-Smtp-Source: ABdhPJxHt3e2H3NBe4mAvi/s7Uk1yneGPb2djm4qwbLnNHO+fwMjWqbRBCs+xSa4BkKbkrDJJKYiNw==
X-Received: by 2002:aca:508f:: with SMTP id e137mr524515oib.32.1612462342949;
        Thu, 04 Feb 2021 10:12:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:3407:: with SMTP id v7ls1568834otb.9.gmail; Thu, 04 Feb
 2021 10:12:22 -0800 (PST)
X-Received: by 2002:a05:6830:114:: with SMTP id i20mr497070otp.284.1612462342531;
        Thu, 04 Feb 2021 10:12:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612462342; cv=none;
        d=google.com; s=arc-20160816;
        b=MGckH+uyUdwIr1jnaLLWT+DnJtCiJt3GjXPvCqctLtm7IbqDOvh0xq2d6ooVvwsVO9
         Bbsaci/Gng1+JHScm1kXjmNZ+RKEW9MrbRJhHJ2ZgeKTQPhctS2kQ3Nm6L+tbj+iqboa
         j+SMhzwgJDx+Wj4xxi2Uz98YalHTExRLOeUe3hNfp/QoxPIFPCgLP32SznwnvrGDByjt
         /AsYADy7ji2B7AFwkIbz5MRxMDnltLU86RJhxY7zGwHEHPeea5jaow7z0mi2WZ2hd0tO
         +Kieq0odhykVCR7uZolirwlxRv/VtMGFlr0dbZMALIUPFx28AwcZs/hZLML8RZ5SNJ4/
         VflQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=tXy3ntPo99/Rv9YqgrqzQwsoJdP3A9OlFOze8HirUFU=;
        b=OmhEycijUQTP5vNkDdRjeu7gtGMy0JiNdP5VLLoSDn5PFWpSLCXjz9OC8glsMSQeNe
         JhigfX0WWz0gBbZX1T44ZNF/1QT9PVdrgpqqngeKK22q4OiAZPKjhoodEIEY5HEclYEg
         Z1PV2/zp/R+Ub1oLU7UQLhbBoXvgyXwwQp6bGDI0HlxP7wZ2/b/qDw9FveB1lKKukTLt
         66ZvGyAoKLkd/Jrc81vPCpI6vs0SNbtphpDfYOm7EcZcWzyM49klO2afEM6FGDWf1s0W
         q9/q1w4OLLkFvkKLzcItSqwXzaaYIukw7ahDWDmquRmEMse1N+bTeekN0HkHdlu0UfKa
         eiGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=GFniNQHR;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m16si115658oiw.5.2021.02.04.10.12.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Feb 2021 10:12:22 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id B981B64E27;
	Thu,  4 Feb 2021 18:12:18 +0000 (UTC)
Date: Thu, 4 Feb 2021 11:12:16 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Ard Biesheuvel <ardb@kernel.org>,
	Guillaume Tucker <guillaume.tucker@collabora.com>,
	Russell King - ARM Linux admin <linux@armlinux.org.uk>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Nicolas Pitre <nico@fluxnic.net>,
	"kernelci-results@groups.io" <kernelci-results@groups.io>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: next/master bisection: baseline.login on rk3288-rock2-square
Message-ID: <20210204181216.GB2989696@localhost>
References: <6c65bcef-d4e7-25fa-43cf-2c435bb61bb9@collabora.com>
 <CAMj1kXHMw5hMuV5VapcTeok3WJu1B79=Z3Xho0qda0nCqBFERA@mail.gmail.com>
 <20210204100601.GT1463@shell.armlinux.org.uk>
 <CAMj1kXFog3=5zD7+P=cRfRLj1xfD1h1kU58iifASBSXkRe-E6g@mail.gmail.com>
 <c0037472-75c8-6cf9-6ecf-e671fce9d636@collabora.com>
 <46373679-a149-8a3d-e914-780e4c6ff8be@collabora.com>
 <CAMj1kXEshuPTrKvN4LpXQMftHJG+yH8+fgU7uVc6GYn0qd8-xA@mail.gmail.com>
 <7c685184-8688-9319-075b-66133cb0b0c3@collabora.com>
 <CAMj1kXH_CCYyd5zNVRL=KWpBXtsKamV7Bfg=O1YWBJL0f_eXLQ@mail.gmail.com>
 <CAKwvOd=ziPWHmBiPtW3h2VYLZ-CTMp4=aEonmMLM7c=Y0SeG1Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=ziPWHmBiPtW3h2VYLZ-CTMp4=aEonmMLM7c=Y0SeG1Q@mail.gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=GFniNQHR;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Feb 04, 2021 at 10:06:08AM -0800, 'Nick Desaulniers' via Clang Built Linux wrote:
> On Thu, Feb 4, 2021 at 8:02 AM Ard Biesheuvel <ardb@kernel.org> wrote:
> >
> > On Thu, 4 Feb 2021 at 16:53, Guillaume Tucker
> > <guillaume.tucker@collabora.com> wrote:
> > >
> > > On 04/02/2021 15:42, Ard Biesheuvel wrote:
> > > > On Thu, 4 Feb 2021 at 12:32, Guillaume Tucker
> > > > <guillaume.tucker@collabora.com> wrote:
> > > >>
> > > >> Essentially:
> > > >>
> > > >>   make -j18 ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- LLVM=1 CC="ccache clang" zImage
> 
> This command should link with BFD (and assemble with GAS; it's only
> using clang as the compiler.

I think you missed the 'LLVM=1' before CC="ccache clang". That should
use all of the LLVM utilities minus the integrated assembler while
wrapping clang with ccache.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210204181216.GB2989696%40localhost.
