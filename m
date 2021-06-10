Return-Path: <clang-built-linux+bncBDYJPJO25UGBBPVSRKDAMGQENXWJCLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F1143A377C
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 00:59:11 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id m3-20020a2ea5830000b0290109369442e2sf1826948ljp.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 15:59:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623365950; cv=pass;
        d=google.com; s=arc-20160816;
        b=AaIFpdqusTIA2e3AKHYBEoULixC6eIVu0AxlRKJbo/XLC/zvkoe2w83QWtMSLkvYqw
         jh6efPMOi9PL3TaBy2oMqA23+++OZaPauiAlNYOARCa3H5pdyf+6/IOrNDN6EDNPTxUz
         By99AJwVx1O/7FfPibGQqPPlt1kxuwfoG0aBoTk7WjvFyE8ggd3+bLLNFDGqFx7G75xY
         breUOqxuG8sXKvUXeqLflumZc/ASQRBc1dXVo4HPeXHU9o32YyZvChvz9UE2A1i1GBhp
         wdt45P+Ua42nxssecquDwBebYyFbNsp9jp6LUhPKzriZ3NkxC54hukAD5OLyb6eQnjcy
         OFHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=dGPId4l9h/Y7VjHlsJB7lylmRfOXN3GFeky0UWIWbsk=;
        b=e7MPPTs2oZe+O3WUPdaAklL96dYqpMQrkj8cTIVlO0MnyDEFpbAZaZL7/9lgRNUOEK
         f9XimxWZH3Prmp2NgrwP+vJsKqiLIxDxUAta/nV/nXEq+pmMopuHHkzit0drcBBYeSdZ
         BduCVSbLT7WgKnJEBnJjrvvhBSJS3yPLZjsE59NTkK6QFcCv0HaN3bALUqQWSbEB7pvU
         a68Y9ZZUjcUdPy41CUyX2DEH6CqU6cEujsMDiF4qxqP91PcRLAn0jMJrbNZRT3OulbWW
         OIUclahpRevdrZoCN2ypfeR838S8OUZgpq7YK1eVEUloM21oUVcmnoVPdnLjzMebs5hC
         hkzw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FVQt1+qE;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dGPId4l9h/Y7VjHlsJB7lylmRfOXN3GFeky0UWIWbsk=;
        b=f/k42jnj+s2KjviU6XJyyIQkueEcS9QboasYVDvuxylzs29nGCN0rpZZSfQ2U722PW
         krOd4o7+H3HtVHpQU8PDMYypkdvgpjbmEaPva8mb5QnCD7SgcDDK5Aj4DID8G0N07nc7
         lnNM9rgz0eoJxmn15Jd+k9x3jq9/a60SqOolWwEOHRsuGFSGEh7XbeRoEiJCJ70dhpHO
         AdscBz12tC/iir917+XdPzcj6alV/kdqeP8+6WdWBjolOA+MAcc19h5AXgVEmzbllhhk
         PccXxYb0Am5+HgyL0b2VIBXl2wpFoyBDdVssHKY565gG+ZSROAvihi5DT6uXUIjptQUI
         JDng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dGPId4l9h/Y7VjHlsJB7lylmRfOXN3GFeky0UWIWbsk=;
        b=I8Olx/c2ktypqAPdaCQ6pkm1Qu7AEA8dp6u4s45jWERoBkhprSySGSVN2z41E96FYB
         fyRZJbr2o0GbKpMOVfw17RQ4ir8CQ7YZyHsdRDn2Oghc1chGbgC7Z/zHBuBYqyy9w2TC
         fJHdX41gYnOh/pd0G+ai13PIv8VQr6cXLrhVyMKbtzlvTQowi5ut2zCoGdKxYoDWHQ7U
         BaPGXur70NnwZzJwmHnmRHBLr8QloAocyaBxIIEL/CouS5Ein0X5XIc9mxtja+9eI9Li
         zhM9STgEscClZadg6q76lYcOu+qPHOK9E+bWPSgIKfODozudwQtuX3eENjfU4lVG+h1Y
         Bg6Q==
X-Gm-Message-State: AOAM533aBzddjv8vsw/b444jsImBWplVsaSaVidT9GD4r8oiwTiYcvB8
	hoZ798Dw8z61W9w1K80Khzw=
X-Google-Smtp-Source: ABdhPJxIL8EBhvKkBS+EDJRmfZrYE94CHLeGKXmrMe6YtDG6RwOQhsm2dic00XW37kVtLyPgIvYOEg==
X-Received: by 2002:a2e:b711:: with SMTP id j17mr614831ljo.329.1623365950803;
        Thu, 10 Jun 2021 15:59:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:1025:: with SMTP id w5ls1496290ljm.0.gmail; Thu, 10
 Jun 2021 15:59:09 -0700 (PDT)
X-Received: by 2002:a2e:509:: with SMTP id 9mr694958ljf.6.1623365949789;
        Thu, 10 Jun 2021 15:59:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623365949; cv=none;
        d=google.com; s=arc-20160816;
        b=Km8gYJtsQmwxQaQ302EsRE/VBT8J/r4QLOGYSYFV2u+OhhRnC1JyZsKc1KbtjrUlq8
         DzfnXM7GmAm4xdfoRer8usy00TkenMcq4Dbobh/0ydxrvusuOx4ab5p5b/97GgenEJo5
         zb0Wadhl8sxJubASzdkGuPjCuLH3w50ZEZUrZSHdtbwE7LfhbayCTa5HE0Lu6KSeqlUI
         wyF6hXHV9xBHvVq/+oShTiQdWuub9vpgwWBegUCsXNiuOvoyZe8XM/CB86yIaAfsjnYo
         XWKpwa+2pDJoXUoPDgi62f2XkwkHXjJ1zbPh5CUDsyPvK90Hlq2HlT0pFEOD5LUZOHQN
         TSsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Yw9883lOQsTBsg7LahgHA67J+KddRcIMo0xgHJmKbbQ=;
        b=fDoJW5xPP7H8zG9tsnB7NQv83gMWleIKuetqklmgsxdBK1e1lJaNw4kZ/x+4mJiThS
         VWmKMnJ2X0F6O9gr0ttD89f2uaciWBC4mJ8WLJ8E+odZdrJqx8p5FWSWLQCTINgKF0sB
         xm3LKT76XM5YobuXSqSTDBRHicHD1mm1mV8dHT7DhV5OvLJpoH/cVNgvryIGZSUAIR50
         /R0fDY/jaVAka2XycyRsm6nics7vdaTH+4IEU2X46nKddQawzQ4KrF6i8T4Smkn20jSS
         hDt9WXlXj+32DWi/L+vxjrcM/DyXewogKEBY6gBodN9NSRweelYezAh7P/DoM7m9hXrB
         hBNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FVQt1+qE;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com. [2a00:1450:4864:20::22c])
        by gmr-mx.google.com with ESMTPS id r78si217398lff.6.2021.06.10.15.59.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Jun 2021 15:59:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22c as permitted sender) client-ip=2a00:1450:4864:20::22c;
Received: by mail-lj1-x22c.google.com with SMTP id bn21so7131289ljb.1
        for <clang-built-linux@googlegroups.com>; Thu, 10 Jun 2021 15:59:09 -0700 (PDT)
X-Received: by 2002:a05:651c:1111:: with SMTP id d17mr666072ljo.116.1623365949235;
 Thu, 10 Jun 2021 15:59:09 -0700 (PDT)
MIME-Version: 1.0
References: <f2c018ee-5999-741e-58d4-e482d5246067@mailbox.org> <162336538453.1311648.12615336165738957417.b4-ty@chromium.org>
In-Reply-To: <162336538453.1311648.12615336165738957417.b4-ty@chromium.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 10 Jun 2021 15:58:57 -0700
Message-ID: <CAKwvOdmYVH-YpEVqdoBfvgNfcbzx71jU_27cuhuzTJ6_Emzi-g@mail.gmail.com>
Subject: Re: [PATCH v2 1/1] x86/Makefile: make -stack-alignment conditional on
 LLD < 13.0.0
To: Kees Cook <keescook@chromium.org>
Cc: Nathan Chancellor <nathan@kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "tglx@linutronix.de" <tglx@linutronix.de>, 
	Tor Vic <torvic9@mailbox.org>, "mingo@redhat.com" <mingo@redhat.com>, 
	"x86@kernel.org" <x86@kernel.org>, 
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=FVQt1+qE;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22c
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

On Thu, Jun 10, 2021 at 3:50 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Thu, 10 Jun 2021 20:58:06 +0000, Tor Vic wrote:
> > Since LLVM commit 3787ee4, the '-stack-alignment' flag has been dropped
> > [1], leading to the following error message when building a LTO kernel
> > with Clang-13 and LLD-13:
> >
> >     ld.lld: error: -plugin-opt=-: ld.lld: Unknown command line argument
> >     '-stack-alignment=8'.  Try 'ld.lld --help'
> >     ld.lld: Did you mean '--stackrealign=8'?
> >
> > [...]
>
> Applied to for-next/clang/features, thanks!
>
> [1/1] x86/Makefile: make -stack-alignment conditional on LLD < 13.0.0
>       https://git.kernel.org/kees/c/e6c00f0b33ad

Can we get this into 5.13?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmYVH-YpEVqdoBfvgNfcbzx71jU_27cuhuzTJ6_Emzi-g%40mail.gmail.com.
