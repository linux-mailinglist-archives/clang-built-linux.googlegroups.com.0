Return-Path: <clang-built-linux+bncBDYJPJO25UGBB5FFW76QKGQEZG3NLCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id 940DC2B133C
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 01:27:33 +0100 (CET)
Received: by mail-vk1-xa39.google.com with SMTP id h67sf2116336vke.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 16:27:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605227252; cv=pass;
        d=google.com; s=arc-20160816;
        b=ObtqY3lgfhlFgLdK0ZOUWJ/QgGEgNNO/uv0ZLixGCIDz5WawsjtM2oy/ItTTVdE66h
         /5XzAKhgYaOct/K/Uo5RnT0m+rcIZ915KiQNkBkjWYxlY2DdEcZDEVGIGsnzldHFwAqd
         9eSjpmIEL9zJs3EQElvAlCOChlwwRkRkE3iuE4yzf5AMrWeggUTuLqRm91s404nKI2XW
         p8jU0xlN4iUG7OmuWqhfTh06Mo+2kYeg83b49uS3TPTJTEiWBzZsjk7PE3gtdfahhRKt
         PuD3JHvGex/39FZVDsBVoJSzKfSPghFaXM5g273XRXrV8BIpShyBfT6hwkUgz10E7p38
         A1wg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=0Ix0NpiIrltfQ4kZwtd/RZAykLy8erQ+hhG7G8zkWdI=;
        b=h/ryE8fyr1Mi40N+gvsKUOga/6x6qNRlgjIyqriEN8QU0MAeuugGxWl/s9iL5MlZYp
         KGzZbB6ss3S3IEE4rnKTp/M/7blyFhHsMePgY1D65QIeQyiKH7GKOZUpH7424OkO/JWp
         XTSq1ooLMvZyxTKcq8mtQGcJPOtfb/Rl4zhmkk21ZdP3/j5+Bk/naPtqC6i1ey673Esa
         T4ndHIaegnopHZUlxIbIIuRUx6Mn1aptXC2jzdCea72h2Cqxkyy38QzMgjJgmrKlmrst
         wkKoza5jHNMtQYdBe6GoeN7yW1IE4csAM+3PXR7JzIQZtNr5x2XhrOT4nZ+EvYrAW+mf
         IL0Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Lv57UCLs;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0Ix0NpiIrltfQ4kZwtd/RZAykLy8erQ+hhG7G8zkWdI=;
        b=Hnvr4aGcWqLQ/+pZWu5Mv96e3hbvXuVBLBpauWN0Dxh/SEKL/T1CisFsDAUzPRGG1Y
         5gdMcVKTB8h1uQ35IWs/ru4PJc4ZXtagBG1DcgDAwkFLVQD6kVvgghy7mQ2Rlag7kUXR
         unyifULw0j703ParRNPatCnkmGHvq5yDQoPcfiUwgDitc4vIvwVIy0vJqBatEesZ2GAY
         jWPQDrkkVzQMscLo3vxJXYY6BgQyzSiWVha1on345BJXaWRIuxk9mOI83u5/wwqbxcai
         MLhtNIt+8RUwLJAnjIrpaF2vIB1b/fy4D0MO4e7EEEW/iJEi60+bdBmrXihCb7QT6jM6
         +vPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0Ix0NpiIrltfQ4kZwtd/RZAykLy8erQ+hhG7G8zkWdI=;
        b=bco91LVzdrUfIKAH2NUbw2fq8Ok6ZSxgAvyR2RMDzEgflvDgPW8IuUi5wnj0BxALSb
         WpeUOUQCBI9+ygfNn2WYdeFoWB5qhsnhxfniElc6a1WJadtvW/dHdb8tp0Aj5VycB5ue
         /3ZEt7hpda9Lis9G1zssqxIqkC61mrem0ULNH5Eu7OiMi2Th0YbCrmjIpwSc4CPZ/pLY
         C1fCQzC1r/A+VqRJ7K0sKGR0S+kxwgGWIYqeUQ/scYaF1jDOlrhElIubVEPVia8Ow2Nc
         /armeu55FZd1YPNKYeTcFr2NqPyOBFOjcn2/L0p1xssfi3bwFY+3bcYnWv40ePod4spV
         /84Q==
X-Gm-Message-State: AOAM533TH9pxuKEjuC4lDkw/qQ7Qv2kU3/+E1F2HlNt80pVst7bK5VgZ
	pPOOvNlgc8f+ERHXgEAcR28=
X-Google-Smtp-Source: ABdhPJy6/sJmzUesaWjyr0jGIL/hX4gU3tVwbV6bnxF3bCAZllIMRzK0evPF28HOxZkEXndFxW4r7w==
X-Received: by 2002:a1f:d205:: with SMTP id j5mr2209240vkg.9.1605227252614;
        Thu, 12 Nov 2020 16:27:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:22fb:: with SMTP id b27ls700856vsh.1.gmail; Thu, 12
 Nov 2020 16:27:32 -0800 (PST)
X-Received: by 2002:a67:eb42:: with SMTP id x2mr2052620vso.41.1605227252148;
        Thu, 12 Nov 2020 16:27:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605227252; cv=none;
        d=google.com; s=arc-20160816;
        b=JUepgE4A6QE5b09/G9fKDFgvHJEM/Y8teooJuit0h2pEyq13cz32dCXpUQl5P58rOk
         WMbOikmYrxdqL5cJHGhdIpazMVf2Nd0igXzd3kUFAZ6acjUk4ThvSX5tPj7mmhj5NgMT
         6WvGF10lR5BEvNi5KDcMZaBScggEh19iUiIcWY5zrejYZzvqXhOkw3hwGV4hho8NGF6e
         1msMDPYFyaoPlwiGI46xZN4gk7oF78RO/eI7hVh9HxGwWn8CxyEFNKajfHGffONi4Smz
         NzZJxC4f8RtC/arAQLK1T11IZOwQPhlWgfdaz/eek/Tiqbi0JIXLTBvjEXLAjzlVdLOG
         UYRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=LA/+0fbBO/0GzqNIGiTZzCAqdi9dXTWSkcEfRXpxO7U=;
        b=L57l5U1Y8N3GHUEvJGO8N3pfDo/RUMBM3ACBilU0GrpVdaxv8+Obp/nSgMjRSDyRX8
         EeBIEjsfMCFWoF59YyY4HLBEpRwcd0Mfc+S+zm2uNfXKnAbgp0UrzqewwVNiwYd9UmfH
         nLRLzECtoo+tfiqmKHnuqni/aSKMS6RQYVSn7dSjbuzKI6t6RDtEn7vBNTzpWCMVdmDx
         bXqtOYpRWIZJ18nMAP/l35jORAmwk/ppVp79L2zcUqHipDyi2Kcfqrn2exXr3U8AGeQA
         fU+DQ4e1mWWNoMi03+1ZbK4m8SxrEgWXnHlxIbZjAaGA76z+PfwBSnTs8EEVGAuFFyEy
         0wHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Lv57UCLs;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id p17si562929vki.0.2020.11.12.16.27.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Nov 2020 16:27:32 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id h16so1580964pgb.7
        for <clang-built-linux@googlegroups.com>; Thu, 12 Nov 2020 16:27:32 -0800 (PST)
X-Received: by 2002:a65:4b81:: with SMTP id t1mr1692517pgq.263.1605227251062;
 Thu, 12 Nov 2020 16:27:31 -0800 (PST)
MIME-Version: 1.0
References: <20201111032105.2346303-1-ndesaulniers@google.com>
 <20201111230314.GB19275@alpha.franken.de> <alpine.LFD.2.21.2011130017330.4064799@eddie.linux-mips.org>
In-Reply-To: <alpine.LFD.2.21.2011130017330.4064799@eddie.linux-mips.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 12 Nov 2020 16:27:19 -0800
Message-ID: <CAKwvOdnqcKGqSAS0BmTP70M-5e+gOvzRefuL9rBNGvm+jpR==Q@mail.gmail.com>
Subject: Re: [PATCH] MIPS: remove GCC < 4.9 support
To: "Maciej W. Rozycki" <macro@linux-mips.org>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Serge Semin <Sergey.Semin@baikalelectronics.ru>, 
	Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>, linux-mips@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Lv57UCLs;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

On Thu, Nov 12, 2020 at 4:19 PM Maciej W. Rozycki <macro@linux-mips.org> wrote:
>
> On Thu, 12 Nov 2020, Thomas Bogendoerfer wrote:
>
> > > Remove a tautology; since
> > > commit 0bddd227f3dc ("Documentation: update for gcc 4.9 requirement")
> > > which raised the minimally supported version of GCC to 4.9, this case is
> > > always true.
> > >
> > > Link: https://github.com/ClangBuiltLinux/linux/issues/427
> > > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > > ---
> > >  arch/mips/include/asm/compiler.h | 9 +--------
> > >  1 file changed, 1 insertion(+), 8 deletions(-)
> >
> > applied to mips-next.
>
>  It probably makes sense to get rid of GCC_OFF_SMALL_ASM altogether, as
> this syntactical indirection brings us nothing at this point and only
> obfuscates sources.

Sure, that sounds good. Send a patch!
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnqcKGqSAS0BmTP70M-5e%2BgOvzRefuL9rBNGvm%2BjpR%3D%3DQ%40mail.gmail.com.
