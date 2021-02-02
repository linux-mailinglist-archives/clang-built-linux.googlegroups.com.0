Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBSO242AAMGQE6PRAYUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id AEDE530CC4E
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Feb 2021 20:51:38 +0100 (CET)
Received: by mail-yb1-xb39.google.com with SMTP id f127sf24780513ybf.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Feb 2021 11:51:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612295497; cv=pass;
        d=google.com; s=arc-20160816;
        b=a3jA946G9vGnw6yEb/DvMz7Ncrjz3piFq4+G/f32q5xf66gc5hKwNSrHXKeyuLqYnA
         NOv2aFU0DXjqq0MiFOO3rxMaOb/ij/8RCS7d3w/jsnQM+yQyzzrK3/2wfhgLbx1r+EvO
         xMjr6Ih2vnGqB0etMz9VdhwoS+5DVGDYsTXjEw9npKI/BQaZQ2KMUGaO9Dh6Go2SY8WI
         ICfcvtcvMZ9g2A0X2CaUDlClK8FRUKlu/f6weK3KfNGfLPIi7uAEfe0k5IyeD8WhVeZR
         di8a0n1xS2HHTAT/dHhSet3Pkyp6e/95lVtR5TUKoMxzYmeQ975HTkLBNUQq6IfSaFQH
         Us1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=D0Nub0YxWiZIB5hltLCP1DThHFyICcBOgJR4Af1ogmc=;
        b=pFypb1PMTl1/yMQt80Y8W65FJdtbcJ/joaYmTBYeMGhIwa9wPF5PCGieILzkKFtvb9
         mIuadPa13lV7Qrt7B43ZzPmLrfijIY514hp8hmnpgHUznCjlMRrU+EmsAoeyEpi8buaU
         F1Lv6RPyaPRxucVOjteOzdaaTcc90JJ65ZGiU1VNAL10oXs0kotYbJdrtsMnpPS0zjgP
         gpZeZP5yd5CQR/DK8RGKrCrsaqsBoiAAhnKsMc9geXNgRRE2F5rHyHfmQLK1dr7GgAyY
         08vrxJXmesGI26kcwrjhTplORcph0f5JNWfPA2NxUdTtFrQKmSeeTWZvwPaHU9rCQhW4
         kqxg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=XvUU5HXV;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=D0Nub0YxWiZIB5hltLCP1DThHFyICcBOgJR4Af1ogmc=;
        b=FhffleGjyJFIVeWCDAfTJ0pdP7eOISJ3QedrHSghZznyg7lG47ou1dxTZCEwGrk6kB
         fHNw2sj/ldyUWMpqjH0fgE/AGMj61kki8K3ycO3clyOwvFIu71f3LyrLNggQXBgWS7SU
         7hBQ4bhvQNLsy6h1JTZ0kmPtDWNdQeqZpqskWZLIiaHUHz0YQt5fiQewPU+c22L7dJtc
         82pa3prNLnOq6Nu81aAVWUh7yf8rkwfHjr2qY6btp2Ymurji1CfM6uDvafW3Bd+XLu9S
         GTyVosGamW71OqE2/zGURSFrBqkOI9dEcFsRTpc6RsQ+Nv1Cdl6bPGefJJct9y2K4240
         Tc4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=D0Nub0YxWiZIB5hltLCP1DThHFyICcBOgJR4Af1ogmc=;
        b=miDE5FKAv/El2nLS6SDw7BoXl+nhFZfjls/OPfPMHz0ZPZgWJC1YCvSeZN3YfV9rzv
         WGBadkvpJfBZz7VTVYmVCtSx9BTSfiCbE6BSRz26103LLDFW2IiZPZSNp/eezcLURdkR
         FCQXU2fUgMubCO4QvQ3h4uzPdIlC/EmZBB7Xjtch/6dR7D4Pra2dIUcP9EeM+jBqjAhm
         ily8204ffR2lbTjVrq9JmzRCqNWO95HI5sRfkBC4jqmrwXt4pr2EaslyRh3qQao0GvLJ
         bDSTn6h4UQQkqLSWiDgNMrJXaqZPbij1Xf890KPSQyJvq8xeA5xT7A+3/DwGG/cu1hGV
         nldA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530vjXY5KfsqHd+FYizXL4fSBSkPFcgoLGAPsK2Z57JLC8Xm9Q92
	BuFgJlJw504dvLTRMAfrzcQ=
X-Google-Smtp-Source: ABdhPJxQOZwVWT7EyOvp4JyzUSTdY9ELbxjk+ew0zUqH+TwJyYVInHXjbfs7hdwoUwWZcaDRrJwr6w==
X-Received: by 2002:a25:2fcf:: with SMTP id v198mr37708189ybv.149.1612295497811;
        Tue, 02 Feb 2021 11:51:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:ff19:: with SMTP id c25ls6618326ybe.2.gmail; Tue, 02 Feb
 2021 11:51:37 -0800 (PST)
X-Received: by 2002:a25:bfd2:: with SMTP id q18mr34959347ybm.116.1612295497479;
        Tue, 02 Feb 2021 11:51:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612295497; cv=none;
        d=google.com; s=arc-20160816;
        b=SMo4iuiWbEaaArZZ1lgf5sVlYblGbX4LBIna0JBVlYeZeAS/He52Ux7k3vkWEqdvz0
         ZGjjAknmJphAT8XMY0H6JzKmCo1YEWWURb8RMaI4Vrfpb3mjE79vehgVpxaDI+cOsJAf
         JMTJW4CISCrem48KmzAM2gPljn7UOuLEjOGHk6uzeLz4EFyddkoYdf8rBF4tHFxrkcTu
         eMiJsTSqWaeyM2ehMbXKe+SlYr+3ItX7KKIYnniaB2fFz5AhOYoooftf6MetGRJCg0vM
         UZTd5SZNXYHHA/yjpkUys21QZ9Cn6iPTblzvFuQAg10c5PpIqAVNCHLnYKQz4LBRdatr
         SFEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=IhMGB2k9BtKL6vQBRcx7pTgnmYPROnHc6jkoOxoIfG4=;
        b=Tvv0iieXWpJJUHr3YMYqdBwAL00mq4WlTubBxpsgGvfM3A+hbdgNsrmElE402h/dJl
         NYEPikpRMAafT50W0kRqb8OoROXspi2mvont+Ngoxp6d4VdkoUaWiC3vPofanOTO/Yyl
         TrM31yS0Ver8diC4XyPfRfBmjSlid694kjXs8VEF8GmIFnK7hhcsbXT9VLemRBlZUbUr
         r/VjLOuIKc+GrYqSvfYtz4G5/Iy1dJ3AKpLwuyNZiPzvGgZ2m9irgWwpn68IzRqfdC8t
         0dqJmIxTpT/X8Po7cE6lLprWYrbACxCQrZLtDVR6Ce1dlKrEHhUkfSPSA8BfL+BVXzmU
         EZDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=XvUU5HXV;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d37si1001954ybi.4.2021.02.02.11.51.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Feb 2021 11:51:37 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id C0DD264DC4;
	Tue,  2 Feb 2021 19:51:35 +0000 (UTC)
Date: Tue, 2 Feb 2021 12:51:33 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] arm64: Make CPU_BIG_ENDIAN depend on !LD_IS_LLD
Message-ID: <20210202195133.GA1481999@localhost>
References: <20210202022441.1451389-1-nathan@kernel.org>
 <CAK8P3a2864oSVkhaYynoadyYMcYDh0LvDDFSJ2D8OTHSszuSQA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a2864oSVkhaYynoadyYMcYDh0LvDDFSJ2D8OTHSszuSQA@mail.gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=XvUU5HXV;       spf=pass
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

On Tue, Feb 02, 2021 at 09:04:34AM +0100, Arnd Bergmann wrote:
> On Tue, Feb 2, 2021 at 3:25 AM Nathan Chancellor <nathan@kernel.org> wrote:
> >
> > Similar to commit 28187dc8ebd9 ("ARM: 9025/1: Kconfig: CPU_BIG_ENDIAN
> > depends on !LD_IS_LLD"), ld.lld does not support aarch64 big endian,
> > leading to the following build error when CONFIG_CPU_BIG_ENDIAN is
> > selected:
> >
> > ld.lld: error: unknown emulation: aarch64linuxb
> 
> While this is the original error message I reported, I think it would be
> better to explain that lld actually does support linking big-endian
> kernels but they don't boot, for unknown reasons.

That statement seems to contradict what Peter Smith says:

https://github.com/ClangBuiltLinux/linux/issues/1288#issuecomment-770693582

https://reviews.llvm.org/D58655#1410282

> I can send a patch to address the build error and mark big-endian
> as "depends on !LD_IS_LLD || COMPILE_TEST" to reflect that
> and help with randconfig testing.

I have no strong opinion on handling this though.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210202195133.GA1481999%40localhost.
