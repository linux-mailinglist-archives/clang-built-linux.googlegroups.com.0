Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6GVVP6QKGQET446TLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id E98C62ADFA1
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 20:33:13 +0100 (CET)
Received: by mail-oo1-xc3b.google.com with SMTP id s12sf3582823ooi.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 11:33:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605036793; cv=pass;
        d=google.com; s=arc-20160816;
        b=WKvaI5RHK6Pj1XnR6WGZcEP2yIjc0Kphwk4MC70YXa0zomDyaO2fdO5LSkv6uiZahR
         TvuZU2LnsiNh+z+dXSl0cu2QH6GOhbrWeCfYb31rOwJJsl5h84q/B0wTA1e8RwsChVLm
         NohFpRH4nwVD3zMj6aRn30moQuwIXkBjDisbEEnHO+dLh2iRcmauiBCtYyIc1L+4sk91
         TdVquv/uvO2mFAXxCll6WNRuE/eAy7KU2eXcEPY9pg5tX35/cGyrbfjCunIeFRClOqLK
         XeG1/B0qdbdwW07QOYxeWm62Nt8eCoLyne3857oAkIyVESf2HkyMLYnTTQ9jB48p7ewm
         SeEA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=YNgurY5gS/z8of8rIMdmlJ8zqJr5DqdnfhrXmdrJtz4=;
        b=xQCo9HYvgunhdyt6lfZBd/rd8pFSWCbpjgmV82/l6NG4a+wMkA+nhQgAHLBeWnRjYF
         9TSpgfspHaeiHh4MrO4upm7i0gMZ030qXttzLwgPPmuY2+BFm0davyHYK5GSMNXMmb+l
         cdCQEYxqoyRzlalxJL6EAL0Ac4YY18imKrHZo0yUmHN5mEOov8qBNub1tUo5J0j4v6Ws
         /YDmDgmkh4SeOGqtW8+e6SYM1BGQZMOdTdkIcZ/kwQegU8vSFrqqQu6fZAxLzMHEudLi
         6Lh9YrE3hMZ1dgtRwDWSfKgcPnXrQqcFYVek29K0FsEmVV3PJAl2Lpo2gHwBwnL8uPg4
         y2Qg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=s1cqnATC;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YNgurY5gS/z8of8rIMdmlJ8zqJr5DqdnfhrXmdrJtz4=;
        b=HIavYUDSr7l0HOdVvbCacA90RMeCPIOBIfbzI2su06px/SU+zIzlwyXTrXPhaS+Wo+
         u2bOUwDEtoZLW8sl1LKWDZjERK7QJWl2cpPQ7Eq1p4yHS3VZwVMgG2yBLCC1UkyX1sbR
         m4M4Aba4Lu10u9LumZAoxDSekUm+EmIBXUg0Mui5Lc++Pyznz7/Jyy0omsEfUUskBu/5
         SbkuMm7C2iOV40n3ouKiokcOU0ESOJFfBiSUgR7pKjv8+U3Zx6DpImZ8Mh+7akCEdi+f
         1/bTVpgOPgP6nOSXkxqfSWk/Vaeg4NFVIfSQeGBozy8bBxYh1l4kL8kzulMTccgXQwUb
         SMLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YNgurY5gS/z8of8rIMdmlJ8zqJr5DqdnfhrXmdrJtz4=;
        b=nkcOqaWW49iM0s3NCdE4k0udAW37H/8Xh1TmUSANk98sOX4lDtnt6kJtTxwBBwg3dd
         QvLqgw5TI8XJGV2OnCwmljsCmPtTraMY9UiK7JcbXZPGBu3z3+tfixPOBTG6eKgp6dGF
         /ekdhe5VKIT24F1aWvsZYMVcjcdLkD40h7kyfbDUhRwZtnnalloAIzhu4oY+zAYVi5XD
         evnX+0vx4nMsPSfv1PgwtRHHWYqQdqDGORat260J7Zg5xi0Djwqqf9jFEiX3089OhF+i
         kYizzXyS3chpVySccNjGwfDt9+gGVLa0o5xTbZwFl7XVXSUdFV669armsjb9lbugnPbR
         ZrFQ==
X-Gm-Message-State: AOAM532X46gqPy2A/t30TBdhQ2UaSDWMnlRteCLByI0e/20YZj+TkSqg
	Fid92tshJosy5FWj/fxP25U=
X-Google-Smtp-Source: ABdhPJxpugHglV8KEQsIoZyp5dtOKf/7PynxQrTHkValXFpHcwzwcRXl9MI/YD/M2TmJmFL9ErMp9w==
X-Received: by 2002:aca:cc09:: with SMTP id c9mr417351oig.115.1605036792864;
        Tue, 10 Nov 2020 11:33:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:cf15:: with SMTP id f21ls3334324oig.8.gmail; Tue, 10 Nov
 2020 11:33:12 -0800 (PST)
X-Received: by 2002:aca:a8c8:: with SMTP id r191mr469619oie.138.1605036792492;
        Tue, 10 Nov 2020 11:33:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605036792; cv=none;
        d=google.com; s=arc-20160816;
        b=XDpChDj1n2IlWK7NuL2haTnlA/imf51/QHucnYgt3Yi/2M+cslEVJ33KpqASkxjSRo
         O2oREB36LNFVwdmmn5ymc5qF2GyWRXe2Yy0YBG5plBSMPpBYMzfIbELchFAtxhOq4d3P
         VgF/GXg8Q28w6TtP3EBYpLriYWiv7gaqvQHI6Ydbvi9vO8nXbEcw9OU1hYqyaPI5yTRp
         CHAMTe+rTRdUiIkhgNU/lJjdF1htO/ZA9Wa0VdlYD2K0yhOUpCMvIt4pf/nxC8BJCJyz
         ZvYfoATNOI40FZ904vCOrsZjCz+jGkJTkzhEHLHJYu+HzZwb3C3DXrhKZHc7UymaEUvj
         4yeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3bVjE0o1La0vuqbe9Q9gJA2ETxHgT+N/xkwnKtkivcw=;
        b=I/IzL8CKRL6HIAoy7C5BKtJAUVBedg3IR/vxHkNshNED03X2IqNC7OsSgI9WawaGNQ
         eFHonvb6nCkuBaGq/GwZ4yn2PPL8eE3mD0D/jtCvbnQ/Nos9UFhCxfCWJ0Lgx8sIeuEF
         dV0J+lULPFS7mb0r0XiBD1bngS3BPDI18tIC7V6StMdytYHuObgWbphGoF3ZjzfYCQmx
         B9c0RNPV2MP5oeD8RRvLARfsVaIPdjvs5yBwjr1w5NVDBBEPZUdxlyWTWelAAcBj5vR2
         h85NotSDO2dOhcHoMZej/EXX873fQlKzZ6ZlErkSpSS+7DbdpyqNK2rxqiI8KzyY218Y
         ae9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=s1cqnATC;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id r6si1887432oth.4.2020.11.10.11.33.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Nov 2020 11:33:12 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id h6so11131834pgk.4
        for <clang-built-linux@googlegroups.com>; Tue, 10 Nov 2020 11:33:12 -0800 (PST)
X-Received: by 2002:a63:b55e:: with SMTP id u30mr17659192pgo.381.1605036791754;
 Tue, 10 Nov 2020 11:33:11 -0800 (PST)
MIME-Version: 1.0
References: <20201109205155.1207545-1-ndesaulniers@google.com>
 <CAMj1kXEoSF7UXNjJS4A6VtDVbpe7kfqxdZkMS3Sxf1Sr=PvdLA@mail.gmail.com>
 <CAKwvOdmEu+mf0fVW+4gt1q7F3SkFcLvTbgjivv1qnTo3sBAO7A@mail.gmail.com> <CAMj1kXEC6TvkYScMPk0++6atLZe1yrkrUwMRkat33WEwym9t0g@mail.gmail.com>
In-Reply-To: <CAMj1kXEC6TvkYScMPk0++6atLZe1yrkrUwMRkat33WEwym9t0g@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 10 Nov 2020 11:33:00 -0800
Message-ID: <CAKwvOd=+8XmsHE8kNyk21T-2kOfvqfBGL7BdFYwYRUtDpOjbSw@mail.gmail.com>
Subject: Re: [PATCH] ARM: decompressor: avoid ADRL pseudo-instruction
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Jian Cai <jiancai@google.com>, Russell King <linux@armlinux.org.uk>, 
	Nathan Chancellor <natechancellor@gmail.com>, Nicolas Pitre <nico@fluxnic.net>, 
	Linus Walleij <linus.walleij@linaro.org>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=s1cqnATC;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
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

On Mon, Nov 9, 2020 at 1:45 PM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Mon, 9 Nov 2020 at 22:09, Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > I didn't see anything in linux-next today, or
> > https://www.armlinux.org.uk/developer/patches/ Incoming or Applied.
> >
> > Did it just get merged into the for-next branch, or is for-next not
> > getting pulled into linux-next?
>
>
> It should appear tomorrow.

Yep, LGTM.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D%2B8XmsHE8kNyk21T-2kOfvqfBGL7BdFYwYRUtDpOjbSw%40mail.gmail.com.
