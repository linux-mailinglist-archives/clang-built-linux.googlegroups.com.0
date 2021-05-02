Return-Path: <clang-built-linux+bncBCUJDGXH5QBRBVHMXCCAMGQEK2SHUSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63f.google.com (mail-ej1-x63f.google.com [IPv6:2a00:1450:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id E4E72370A4E
	for <lists+clang-built-linux@lfdr.de>; Sun,  2 May 2021 07:19:16 +0200 (CEST)
Received: by mail-ej1-x63f.google.com with SMTP id w23-20020a1709061857b029039ea04b02fdsf766079eje.22
        for <lists+clang-built-linux@lfdr.de>; Sat, 01 May 2021 22:19:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619932756; cv=pass;
        d=google.com; s=arc-20160816;
        b=RpIyAg/KqjuN28mRnZxaE4dQK0AJR5tyv05jGriSx6kElnh0Usv+pVLImVc/dJab4v
         T7IiVfaARQklDjK3jCnirZ1Jzhf/+cmezjgtqt/dulyE5b0pqoxBTeaZA8kcld5A/za4
         46KiDnxKeKgF5NVx9yuMWJsicgm7XqG4c9St95sUra/Gfv4Lc6cfUffUyBQkc08Xhq4I
         7zIxvMzunnUETvJtoGKyVj2sxgizMNfNmiW2jZ2EDGZFqYaKbieBpzltnCmr5FyXWzkN
         yKkTgTOMdHSsz5iEmzrzpNz31MgmUAt5D1j2Q3yVIY7WwgiQZAtBfRK3jVZSwD5yDA12
         k0yQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=vEVJw0WKcw8OojPV8nxLwqx/0S4ibFNOHufg2XztK6A=;
        b=KyijyVNU1hVrnTI62exXSjpWdApj9GNH/BpH225b9qUk+nZxb/Jw8bOAyAtS+gvrIU
         H0Ffq5Bxi/DcHKRhzIHC+g2K1mnMIAAssOJSHiMU8HCsqT+ii06ScSLQ7LjmCH1OiF37
         8MTVgSR4IGCctLvpK2R7s9r6aZbrUWgPrZ0dtQ0seJUnXtnJ00eTNyI2wr896mhQZ7K9
         1yEZLrMTBWk8WERGCWJP+8/fRNWmgKFxR5zefGLXuexmW5BA5GOsJOp8Q2pg6b8X5X+s
         8bzgn+VHJKOiYuMaEA/yls+XPXfH/1LdwaovuTutKpvzUL6FDnakQGgcJ8cpIqx+AyH+
         XUwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernelim-com.20150623.gappssmtp.com header.s=20150623 header.b=lo4NHWNG;
       spf=pass (google.com: domain of dan@kernelim.com designates 2a00:1450:4864:20::431 as permitted sender) smtp.mailfrom=dan@kernelim.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vEVJw0WKcw8OojPV8nxLwqx/0S4ibFNOHufg2XztK6A=;
        b=jqZdPtCOcR+oKx1BLMExqXVmY+egsoieiTasFNjog+BZYHgAIgQQ/o/TbWEyE3MD9c
         R6KwZiCzE005YP7PdZ0oTRpbePA2dRBVgFjTZP+EQd9j/P6wriJTbMSkYZFPjj+QDrJF
         ITQiJCIMAhaJNhagBmlCF+SGnoKttwwd+L1SVL222BibO3wjBLPwoT5CHNdQppJkMN1r
         67xC5cU9fXUGY+FV/MQzJ0Kh1bwvIzfT+bMEVb78l8xEzpeLkTDZupoMdV2Ty0N0GUm/
         BfoH2qSr8cantWkg0yuten4vPxZOtYFQDxFeAmP24Pve567wahJTX7p/DZv+Mrf8txoW
         HayA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vEVJw0WKcw8OojPV8nxLwqx/0S4ibFNOHufg2XztK6A=;
        b=D75J0PxwYzN9eXQ1dHsD/xTnCDmCmGHQMQ7buKT2XxNe/Uc/zt5Z0NxXnAgSuxkfkN
         oN8WRzbsNt/2Bycr5NwOH7s0Oq22fj3NqWl8WbbOCk6jUg8wjB1uYPw/zpdfrm2mM4qM
         JBAu/LFVNw3IncILd6BEAYJ5t8m6ou5nPgj0AHEEf2RT4WJ43mje7K8wzRdXUkfhUBAm
         sKvA4BvkMGKSilOtmgR4WNE3Cbx2txxSt+N5KD23zX+lDiaZwQ/I45m4bmFf+l6REYYD
         MbA5tSxIDcrd0KRFrfhVrOgTnmrvoyc8gxozaeTLe41yMT8YhIdgdbE377Bnq6R4nJdv
         iKlA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531QUOSnpZToYgqcTvJRvOPbO32KezuD+6THwOVyqV1D/Dzp34nb
	mscYdo5ROwbR8U8Wy5ixJ3w=
X-Google-Smtp-Source: ABdhPJwnUaR2fmJ8cTZMvmImhkUYQ6zd3qbH7eXDO+ccFKQ7bieTOYoKpr8x2QqjIegmFs8x5myOmw==
X-Received: by 2002:a17:906:5654:: with SMTP id v20mr11371280ejr.462.1619932756645;
        Sat, 01 May 2021 22:19:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:d04e:: with SMTP id n14ls4159267edo.0.gmail; Sat, 01 May
 2021 22:19:15 -0700 (PDT)
X-Received: by 2002:a05:6402:1914:: with SMTP id e20mr13801176edz.70.1619932755815;
        Sat, 01 May 2021 22:19:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619932755; cv=none;
        d=google.com; s=arc-20160816;
        b=iP0px5m6dcA0hNqU3HjrOj8IX8DMIXMMnJLD9Y0YzkJXmd5hqMPl7CaUo7kHH9+rgG
         OOlzyqgxIkaHCUnR7S9pQOPsCCD9vP6oWlOY2lCRLsYQpRNWCMZY+SEV1tp3+ddhqkrI
         Oq9nOcAiJLi9B5qUpdXjGxnNPzZO5KB77c//1uEjQP/SdpMmdSU6tLmsDkGhnR9Hzdf2
         BNyM3XFcGNbbnOcsG3EfWTIgJT3pIpGTqoitgEcauINFhcvxJi5nQCMqH0jp5VtbiNWW
         vGTnmKiVZ1sTyejgvlDFT/B47IRXpYArIIdGftM/jgl7umbY46pTtXx5ViCS7kY1AFt0
         UnOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=DLerzsoRF0eZbDDedtGe3u3kq/8q/AVf//j55Wc9560=;
        b=QYT+Wg+s14Jx/q+i0kr1nifSxcpSjDoKCn+HjWgxlVIkjNIyLiG2d3dbkmOq3Fd0TO
         QGPklSXunv8fTD8kqNlpCXOuiG8ARM0zaU3Vx5dELXmvhtHDem5pED+qe85UybXlyLYJ
         kXJXR++IPVChADpLkcuKi+tYvW6dwGk9/foww0/GzrCj41af40/8R1HoN2n8cVtovinz
         53sKg2rQIkmiBGR4h84TMTAkMPwCNqp96cIU7SPYnulSVqwY1TnsAgKQ9EseokWz6tLE
         eyVTwfrgOKMkXE4QsVUZD0HnyywOUHr7yrmOJk7p1POTluSa1CSuVcED/1f0o0StwlNb
         tIBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernelim-com.20150623.gappssmtp.com header.s=20150623 header.b=lo4NHWNG;
       spf=pass (google.com: domain of dan@kernelim.com designates 2a00:1450:4864:20::431 as permitted sender) smtp.mailfrom=dan@kernelim.com
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com. [2a00:1450:4864:20::431])
        by gmr-mx.google.com with ESMTPS id r21si913139ejo.0.2021.05.01.22.19.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 May 2021 22:19:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan@kernelim.com designates 2a00:1450:4864:20::431 as permitted sender) client-ip=2a00:1450:4864:20::431;
Received: by mail-wr1-x431.google.com with SMTP id l2so2126688wrm.9
        for <clang-built-linux@googlegroups.com>; Sat, 01 May 2021 22:19:15 -0700 (PDT)
X-Received: by 2002:a05:6000:2ae:: with SMTP id l14mr16225032wry.155.1619932755439;
        Sat, 01 May 2021 22:19:15 -0700 (PDT)
Received: from gmail.com ([77.124.118.36])
        by smtp.gmail.com with ESMTPSA id u17sm17039897wmq.30.2021.05.01.22.19.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 May 2021 22:19:14 -0700 (PDT)
Date: Sun, 2 May 2021 08:19:09 +0300
From: Dan Aloni <dan@kernelim.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
	Tom Stellard <tstellar@redhat.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Fangrui Song <maskray@google.com>,
	Serge Guelton <sguelton@redhat.com>,
	Sylvestre Ledru <sylvestre@mozilla.com>
Subject: Re: Very slow clang kernel config ..
Message-ID: <20210502051909.pac2pycninc7fl53@gmail.com>
References: <CAHk-=wjmNOoX8iPtYsM8PVa+7DE1=5bv-XVe_egP0ZOiuT=7CQ@mail.gmail.com>
 <CAKwvOdmMF_v9TzBtFn2S1qSS_yCDO8D-u3WhBehUM7gzjcdjUQ@mail.gmail.com>
 <CAKwvOdk+V2dc31guafFM=N2ez4SrwCmah+mimUG3MzPMx_2efQ@mail.gmail.com>
 <CAKwvOdn3uXniVedgtpD8QFAd-hdVuVjGPa4-n0h64PTxT4XhWg@mail.gmail.com>
 <CAKwvOdm3D=dqKw=kx46PLaiqfHOZJL3QFKGc8kxqJqpwdFFWqw@mail.gmail.com>
 <CAKwvOdkp_P8BCtFuKqDrtC_=A89ZfDf66Yr3FL2e=ojwv4KaMA@mail.gmail.com>
 <CAHk-=wi1yiBBr3b3RbCEte6-yzAApsZN5zRdr3xoW8Av9jOX=Q@mail.gmail.com>
 <CAKwvOdk0nxxUATg2jEKgx4HutXCMXcW92SX3DT+uCTgqBwQHBg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdk0nxxUATg2jEKgx4HutXCMXcW92SX3DT+uCTgqBwQHBg@mail.gmail.com>
X-Original-Sender: dan@kernelim.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernelim-com.20150623.gappssmtp.com header.s=20150623
 header.b=lo4NHWNG;       spf=pass (google.com: domain of dan@kernelim.com
 designates 2a00:1450:4864:20::431 as permitted sender) smtp.mailfrom=dan@kernelim.com
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

On Fri, Apr 30, 2021 at 06:48:11PM -0700, Nick Desaulniers wrote:
> On Fri, Apr 30, 2021 at 6:22 PM Linus Torvalds
> <torvalds@linux-foundation.org> wrote:
> >    0.92%  libLLVM-12.so       llvm::StringMapImpl::LookupBucketFor
> 
> ^ wait a minute; notice how in your profile the `Shared Object` is
> attributed to `libLLVM-12.so` while mine is `clang-13`?  Clang can be
> built as either having libllvm statically linked or dynamically; see
> the cmake variables
> LLVM_BUILD_LLVM_DYLIB:BOOL
> LLVM_LINK_LLVM_DYLIB:BOOL
> BUILD_SHARED_LIBS:BOOL
> https://llvm.org/docs/CMake.html
> 
> I think those are frowned upon; useful for cutting down on developers
> iteration speed due to not having to relink llvm when developing
> clang. But shipping that in production? I just checked and it doesn't
> look like we do that for AOSP's build of LLVM.

There's also `-DLLVM_ENABLE_LTO=Thin` that enables LTO for building LLVM
and Clang themselves, considered they can be bootstrapped like this
using a previous version of Clang. Combining that with a non-shared
library build mode for both Clang and LLVM, the result is possibly the
fastest and most optimized build that is achievable.  Unfortunately I
see distributions neglecting to enable this in packaging this as well.

On a side note, I'm also a Fedora user and agree with Linus about this.
I'd like to see an opt-in bypass of the shared library policy via
something like `dnf install clang-optimized` that would install the
fastest and most optimized Clang build regardless of RPM install size.

-- 
Dan Aloni

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210502051909.pac2pycninc7fl53%40gmail.com.
