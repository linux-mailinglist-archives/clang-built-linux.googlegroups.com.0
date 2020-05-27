Return-Path: <clang-built-linux+bncBCS7XUWOUULBB27FXL3AKGQEPREYFQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id D80CA1E4D26
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 20:35:24 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id x6sf7648066qts.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 11:35:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590604524; cv=pass;
        d=google.com; s=arc-20160816;
        b=gLk5B+Ebz5fzZB9ZimOVvHoLhm2yMNME0/VasS3ruOg38yz19rh56qZC20zJJDlXWs
         kKC+sSDSuiuctV3AEcLltP0WhlRvN81q/4Fg5Afs2dr9z/W1S/B4+BlY7fSgrTvKy/iZ
         dxkS23A2VXxuOQJ20EbygASzDn0HUMYrZjoomTbq114B7ZhV+HguazO3ImXnoDpOcbwZ
         710HNq/gaTBhA34p0xFIhlPR0JBB3+5PaPiLCw+S5HT+DKrvx/JhoC2TWoUBy55zO3ok
         veSPqX326OoQxdNguozNmBcjHcxSjI7TntUF7kN5uqQ7Y/CMhZa2H7iwZG64vaMdVJZK
         oJPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=v12Ny7vWIunta8TKFIcpTKaCcIAPA/SaHO4jspuZ5WQ=;
        b=JDwum9Q1ELs6i3btObhiWmy/ZzjyQGK02gGLvjTUIY1lXSiMLVtDfWFoRxCpkXxtB6
         6kDAlYkX2wjzBwuKb6YgE1lDdArGhk8g5P8TvVRzygzW2CksYC12C/u7bu3T/RS3oORM
         oFBvHJa+eElDhOFBcDT6wM4CwYoVa0evQt5uSSR5/qRDMVDoBUZmEMNvDhVk87SiEvks
         +B8wc/PTsGiRsTRWLB1WvWxHHyLtkhDFs92dZCrKXO/a6PtmaXO6n4hc0Ai8lsYnEOr3
         8F2mMLVDolIyL4q2Y6bb1XHjkgAwVwp5LtRA6mJK9kQl/LVG69hKfUccEn8NGWGBrlNJ
         svUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ntJ5XnpR;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=v12Ny7vWIunta8TKFIcpTKaCcIAPA/SaHO4jspuZ5WQ=;
        b=Jj45tB6BUSn9iZilW9P3V6HHjWXK6i88Dm1XolHZoLaj7mgRi5nUqTzlJjXv60Yl5T
         N4CV5M4XlFmadbhU2yoQBq5kLz0+EpXHOr5MYXKVYPGmYk4RfSguT4bBMD/aVh0KJttI
         CAiMnSssHlN4NPeSIR/AdaOzPbxWWqsBPkrHUVIvjDXrdq+FFmY9wky86bWfTyot+UH2
         Aq39OJ6qprvwScAl/sZTCQWq5/MpGaU78DLWfrpPjZbznrHbOodQ916ir2o744/2weC8
         6NDGbBjjE/NuuOteGsiNX86OspKAEnLSgbOzAku1RlNBH2L26J9AZDLD7VFaioz7QyCu
         ajuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=v12Ny7vWIunta8TKFIcpTKaCcIAPA/SaHO4jspuZ5WQ=;
        b=cBMgSjhykp7z0zQkCNiLOuQXg6d5xOwJO5LuDcDTPYU16DIZ/7P5EXG+le5z5HfEGl
         al+hNmI1Y2fR6AKIeyCV6tKfdTQRwjDLRYtkT/fKSzkBUEsDoljIDoVddHhcSFWHtk9d
         zVW6v+LMGonqfi17J2qlqkkCT5QvFLHVfUEFspALR2gIhz1vVhl8+rhhfrxlHvFXNtVM
         4k9QFN0AQFfdTVSuG2UPs2naH9BZ4zTtOaPbeWqWKRWgUANGIcSag1Hd0vE32G6RedMT
         Wd7wisCZnbRhJsP00X/89fNYoPs//ZPqucDehLrcyD01pN6bZSuhamw6knsLXG6/gP89
         lB0A==
X-Gm-Message-State: AOAM532J3qFZdcHED1LYdqnVNWaqqisFvY4xoLkAaR1UyoXUbS5317rB
	EVWtZJOzU1a8N7Wg6JHkXh0=
X-Google-Smtp-Source: ABdhPJxoB1P/d8c8juJl5CGczdm8o0h/Nly6fXFmxtbXKONCYPUSxFia7EQoirCCLsgMsq8AMWsxAA==
X-Received: by 2002:ac8:66c3:: with SMTP id m3mr5756535qtp.262.1590604523927;
        Wed, 27 May 2020 11:35:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:b1c1:: with SMTP id a184ls2472376qkf.3.gmail; Wed, 27
 May 2020 11:35:23 -0700 (PDT)
X-Received: by 2002:a37:6590:: with SMTP id z138mr5796079qkb.202.1590604523277;
        Wed, 27 May 2020 11:35:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590604523; cv=none;
        d=google.com; s=arc-20160816;
        b=PJWAzj5JzlnHiiC+PWYq6gXI3wMNr4NsWFFhuEjw4pjpHCSDaeC7KjpIWnFPvuZbWM
         wESDUMQsoaNUEDJGeJh38m5UFFStE/ew9IHJYPUz+9ShvCPgfunTFyqbZIhC0iTR8Gjd
         fhxNbioYzAY/F3Zsd6qwdQ+B1/YsRgnsJ034DXFf2iU3Xk/uZPeGL+uFwELHbSBgNVAQ
         7ZJkY2/oxeLbXsQk+nKccF6hqHE8l+Zs4bXmwljhmtfG9ZThXZOF8NWbo8He8/hr0ppZ
         qglYFSvV0Yea965Jcl0JhvpTw53lgmLni4VDODNAedinDXDoeX/tGoFSWdSBMZ65gKE+
         qGww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Ac0TzlNqiL+rdZbCAWc33T2M+dlFeVr61CWdwcJ9jPo=;
        b=syqsjAx7aQ6cPT3s5Q6/tdXx1y5YAe9CsKswyHqv2bOp9+QU0WGcsdYWK/GBsvckZR
         z78hy4NO44hag0x9DoA7KiIuiL9oyX90WmKys8E/blzcyCAaaeA0CWntcza/c7UEL2Ig
         WJZdy6mkuNabsTQFX1vCVBr8IX920Y32jaefNNJDJLcRfcwOrr7nQRnOwDCd2iaB0BCA
         texkKRgbIH9uhGw/2qAztGR1/EqOjs93ai2iQ+Omh8Ezf74p5unc9Z+plUW3bU2mKqIh
         VeCyoSHSlUdn3te67sEHVtES0zfe8hb8nBeJ69aPxCX9mYlmjzHzVTuERkU5Y7lTM6Pj
         OeHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ntJ5XnpR;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id m1si273337qki.3.2020.05.27.11.35.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2020 11:35:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id k2so935337pjs.2
        for <clang-built-linux@googlegroups.com>; Wed, 27 May 2020 11:35:23 -0700 (PDT)
X-Received: by 2002:a17:902:c006:: with SMTP id v6mr6787936plx.53.1590604522433;
        Wed, 27 May 2020 11:35:22 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id k7sm2497552pga.87.2020.05.27.11.35.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 May 2020 11:35:21 -0700 (PDT)
Date: Wed, 27 May 2020 11:35:17 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Kees Cook <keescook@chromium.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Tom Stellard <tstellar@redhat.com>
Subject: Re: [PATCH] arm64: disable -fsanitize=shadow-call-stack for
 big-endian
Message-ID: <20200527183517.uhph2pvnkyf6c5p7@google.com>
References: <20200527134016.753354-1-arnd@arndb.de>
 <20200527152406.GD59947@C02TD0UTHF1T.local>
 <CAKwvOdn637hSboMnMV=S5f1wbiEnc6qtnrn=fpeCGtvr2W_Daw@mail.gmail.com>
 <CAK8P3a3-L-AQomvTcBv-KH1cVVu6uYNT_-2Ofir3UgwzGjcSug@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAK8P3a3-L-AQomvTcBv-KH1cVVu6uYNT_-2Ofir3UgwzGjcSug@mail.gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ntJ5XnpR;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1043
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2020-05-27, Arnd Bergmann wrote:
>On Wed, May 27, 2020 at 7:28 PM 'Nick Desaulniers' via Clang Built
>Linux <clang-built-linux@googlegroups.com> wrote:
>>
>> On Wed, May 27, 2020 at 8:24 AM Mark Rutland <mark.rutland@arm.com> wrote:
>> >
>> > On Wed, May 27, 2020 at 03:39:46PM +0200, Arnd Bergmann wrote:
>> > > clang-11 and earlier do not support -fsanitize=shadow-call-stack
>> > > in combination with -mbig-endian, but the Kconfig check does not
>> > > pass the endianess flag, so building a big-endian kernel with
>> > > this fails at build time:
>> > >
>> > > clang: error: unsupported option '-fsanitize=shadow-call-stack' for target 'aarch64_be-unknown-linux'
>> > >
>> > > Change the Kconfig check to let Kconfig figure this out earlier
>> > > and prevent the broken configuration. I assume this is a bug
>> > > in clang that needs to be fixed, but we also have to work
>> > > around existing releases.
>> > >
>> > > Fixes: 5287569a790d ("arm64: Implement Shadow Call Stack")
>> > > Link: https://bugs.llvm.org/show_bug.cgi?id=46076
>> > > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
>> >
>> > I suspect this is similar to the patchable-function-entry issue, and
>> > this is an oversight that we'd rather fix toolchain side.
>> >
>> > Nick, Fangrui, thoughts?
>>
>> Exactly, Fangrui already has a fix: https://reviews.llvm.org/D80647.
>> Thanks Fangrui!
>
>Ok, great! I had opened the bug first so I could reference it in the
>commit changelog, it seems the fix came fast than I managed to
>send out the kernel workaround.
>
>Do we still want the kernel workaround anyway to make it work
>with older clang versions, or do we expect to fall back to not
>use the integrated assembler for the moment?
>
>      Arnd

We can condition it on `CLANG_VERSION >= 100001` (assuming Tom (CCed)
is happy (and there is still time) cherrying pick the two commits https://bugs.llvm.org/show_bug.cgi?id=46076 to clang 10.0.1)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200527183517.uhph2pvnkyf6c5p7%40google.com.
