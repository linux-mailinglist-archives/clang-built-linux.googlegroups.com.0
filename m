Return-Path: <clang-built-linux+bncBAABBF7N4OAQMGQEV46U2LQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B9FC32633C
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 14:24:41 +0100 (CET)
Received: by mail-yb1-xb3e.google.com with SMTP id s187sf9961501ybs.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 05:24:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614345880; cv=pass;
        d=google.com; s=arc-20160816;
        b=zWzIEuQkYqeZwGZBY/JCXkrakdfzz4yfrluyTGvY+aFiS+XPIhjuLI+KoIICTA024N
         jSz0Cum01gvBlVsjrgOoc/dSPGQCKXiEuN9+biIi9HnjD72J99pV7I3F7yDUdU41TMaJ
         bxCSYLafrBKIZqhJbUvqCnftpn4XhTv3GvUA0bIHQAXPYB2stG2cR82R4AoTH0ACKgM6
         pJa7+jdeeMwsdCgqt+m31gR7qq5OUyTSgbltkCVBofCP7UULyKrDkf52ZR1IOnqgo+Iq
         72CBt7W0dvoqZ2vFtpiqnLxwrwj6uGmnO2LGZ/y+tPWnGEdNMMZQvrNyy+miAYteudR8
         w5hA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=Xfs3hnEEL+rOQj3POboo/aZMmOaQMofCYR4FFqaPTbM=;
        b=iJ5CHea0yU7DtQTsk4d29aVmN9L4SnQI0AX2xpPcIqFZ59P09uXhxAi1Ii5RZ7wJga
         URLFB8exbaGIuntJzs18kKjycANZaNmp2tIXqoS4J5v/JyfsAK3wh2XP//2XxkKXqmWb
         LI6cSEbNEoAlAPdqOucPOC3wLI1VN9XaTF/W38+yfr1MbLn/A9d+o9ZUp9VCTjCQLr8t
         fIrbG09+TTY35ozVC05rnhoOuYkZvuVxagAjK0NighlsDzmPlAVkBbnCbyXhdxhyjK36
         xkw96p+J413AftscljLbGh3zSU4HiyXrYE72JeuU/GamMmWFwPa6+8zLQosPQIsUjB63
         33gQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=PhSqY1xB;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Xfs3hnEEL+rOQj3POboo/aZMmOaQMofCYR4FFqaPTbM=;
        b=Y8W6zQcYYupP1m6GEV+wOik7Jo3QZQ51ELxZAnavR38L8TtgdigaUeyAG6+QcLa+Zg
         LZ64rELgU4J+cgI6mswMdEiAVFY+ZRs5qKtSGKgC4wy3vIdDPjrfwt/pCyOTmpE9v4x6
         JMIN7zosMYmB0TcW6kUJWsasHMcbX059CUr/Sf1YiN6WkkxBKh7npW+hE80ujHcZb5Uu
         UMJlY/eZB83lnTOaL3CEx5kFci9p6Mw+VMgWy6c1BQ9xyJVfZIyASFYevQNeXa9TvlmD
         g1G1y4dsejjuiIkhxnzsJ4NOySzFXSdahErB376Z1iRCyEaujADyElmthKczIWW3mXzV
         6fPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Xfs3hnEEL+rOQj3POboo/aZMmOaQMofCYR4FFqaPTbM=;
        b=a1JmURkQnWMV55O4vofryO5rceW+M+oqEQqI0HD1OzZaeRT36MLDc0h0U2ie1S25UQ
         ygTcTKtJIvUOY44bJumW409AH4JmOOJRgkuueLAai/trLJ9zQE+gXru80BVn6GaGOqez
         bwlq9KxnQPT/nH/k3AKcPSy/JQd6HBzj2TM7tAK5DXZQmoc4IMcX7SD39IcZ3UIqMFv9
         839QH6FbXOy7L0zzoLZdVX9I1zvMrWnVfahlANOrr4ZmSZK96mNs6uYlZH4+oYj8eBK9
         TCwu2unmXvi0a2hCe3+lT1HMDRmsEksm7qXoYVplMqARExHSIh3eG2QfNCdtX84CS/vW
         P+zQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532uDBOfm/l5RaQXRTR+gO1DVwqGMBJ67vmTx76CDEJHH/nBjMSX
	ubu3OmlK3COd1Of9M4w+fXI=
X-Google-Smtp-Source: ABdhPJxBbAbbAxSqKsqsDJFONlPKby4y7lY194SzIcJwoI9mN4y/plL3LLPkHkzD3NgPOlC7CgvdSA==
X-Received: by 2002:a25:fc3:: with SMTP id 186mr4319509ybp.452.1614345880099;
        Fri, 26 Feb 2021 05:24:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:7807:: with SMTP id t7ls4210755ybc.10.gmail; Fri, 26 Feb
 2021 05:24:39 -0800 (PST)
X-Received: by 2002:a25:25d8:: with SMTP id l207mr4695657ybl.68.1614345879574;
        Fri, 26 Feb 2021 05:24:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614345879; cv=none;
        d=google.com; s=arc-20160816;
        b=SYMAxuP2WMs/+S7vKdGhTjNdWjfEfxdhNBsQ6IFIigDEfrvK5PM/po6Yzj6c82oks4
         X4lj7mQoUU8eD/jiwKgXpnW6QGZInlx1c2izxriqFsHmpDIkhBZszOl55irAfQczMmNW
         SUIpqF6sgCNrni80mFktQwMFd1P+3lzcO5RtZF9soa/hjYcNqKhvUgUkqOSTaCyrRpwM
         c1PiJxUBT5E2gsVfXhvU+Pi07E/synENGk1sBjMVSGxlXPyvNSewiFoilGXuQR8RBXe7
         ZHOMkLqBbaKNCKbOZBVAryg8+FO0LnhvaRfvU6icS1U5EoJ2GWWG2ilaTFhrrWaXW04A
         UZQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ipSvWCcY0xCowIgL3ZL+euVw2eH6y8cVkszJunIEURU=;
        b=Y1rE/V1j1e/6srXiagBZCPl2fdUU/l3ccDfD2tHnk7vb9x67pKg+ky4q5PBHiHNsA3
         0Qr2p0Zi98rnhgz+JcRMGYDDljwWoufp4ds5+lB9JXwJVcU9iCM74Pgmn02dS7rpUBBx
         WC7DB07Tt5YpK5jp8TlROTkSHwPCDz+ikVJsLHhVJf1v0mXAgwPY3dVv4Sx5RiaG7TA/
         cqQ7CL4GgNLhcx5YdeRrxmTC1k9Kwb2KvGsWlklQTh5gDOnSZpeqoR3lvjMt3Q4W16Os
         5az4i5oj4K43NQXADKnfGVuoOR+r63IxGI2kzX5j/TytIVAbBhS6GtZC5IJc97vrCoZW
         4EPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=PhSqY1xB;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c10si652462ybf.1.2021.02.26.05.24.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2021 05:24:39 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4A2F564F0E
	for <clang-built-linux@googlegroups.com>; Fri, 26 Feb 2021 13:24:38 +0000 (UTC)
Received: by mail-oo1-f44.google.com with SMTP id x10so2183627oor.3
        for <clang-built-linux@googlegroups.com>; Fri, 26 Feb 2021 05:24:38 -0800 (PST)
X-Received: by 2002:a4a:8ed2:: with SMTP id c18mr2274361ool.66.1614345877422;
 Fri, 26 Feb 2021 05:24:37 -0800 (PST)
MIME-Version: 1.0
References: <20210225112247.2240389-1-arnd@kernel.org> <20210225114533.GA380@zn.tnic>
 <CAK8P3a0BN3p0F3UAxs9TKsHs--AiAPE0uf6126GVJNhmVTGCsw@mail.gmail.com>
 <20210225124218.GC380@zn.tnic> <CAK8P3a1ZiUHRxKr=SFgEFETLcSQeViPnR+XB2gBvbVk24vGvqQ@mail.gmail.com>
 <CAKwvOd=B=cHpp_XfPTtyVpQyrwQrFZX9SXKw=SJC1VC-VbEwFA@mail.gmail.com>
 <20210225213300.GF380@zn.tnic> <CAKwvOdkKjOb8fS7NgFxvAwEQTp3fPjenhvehnjh5xRw=HevQ=Q@mail.gmail.com>
 <20210226081327.GB19284@zn.tnic>
In-Reply-To: <20210226081327.GB19284@zn.tnic>
From: Arnd Bergmann <arnd@kernel.org>
Date: Fri, 26 Feb 2021 14:24:21 +0100
X-Gmail-Original-Message-ID: <CAK8P3a21A4nAraeUeabNjHe3QNc+sX6XFYTHA=K0wX1nV-Qetg@mail.gmail.com>
Message-ID: <CAK8P3a21A4nAraeUeabNjHe3QNc+sX6XFYTHA=K0wX1nV-Qetg@mail.gmail.com>
Subject: Re: [PATCH] x86: mark some mpspec inline functions as __init
To: Borislav Petkov <bp@alien8.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@redhat.com>, "the arch/x86 maintainers" <x86@kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, "H. Peter Anvin" <hpa@zytor.com>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=PhSqY1xB;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Fri, Feb 26, 2021 at 9:13 AM Borislav Petkov <bp@alien8.de> wrote:
>
> On Thu, Feb 25, 2021 at 01:58:48PM -0800, Nick Desaulniers wrote:
> > The config that reproduces it wasn't shared here; I wouldn't be
> > surprised if this was found via randconfig that enabled some config
> > that led to excessive code bloat somewhere somehow.
>
> I'm sceptical it is the .config. As I said, those single function calls
> which I could replace by hand - the wrappers simply make the code
> cleaner. They could just as well be macros FWIW and then the inlining
> will be practically forced at preprocess time.

I managed to track down the configurations: This particular function is
not inlined whenever CONFIG_UBSAN_OBJECT_SIZE is enabled
and CONFIG_UBSAN_TRAP is disabled, plus obviously any
configuration option that is needed to build the file.

     Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a21A4nAraeUeabNjHe3QNc%2BsX6XFYTHA%3DK0wX1nV-Qetg%40mail.gmail.com.
