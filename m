Return-Path: <clang-built-linux+bncBDYJPJO25UGBBPFHST5QKGQEMCFUEPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id F33C72705F7
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 22:08:29 +0200 (CEST)
Received: by mail-qv1-xf3f.google.com with SMTP id t7sf4601096qvz.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 13:08:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600459709; cv=pass;
        d=google.com; s=arc-20160816;
        b=fZpELFahlw9RiJVzSX42aMyJ8ICSgHwdwbNbBqzEULMj716TZp1Kyn45KJ1VEYEgkj
         MrXMA7P/ZYur95ndAOktKfIGNHcYNZvanyTkJlq3zyH4UT7eAXzlw0NsY0htV6kiSiL4
         BXtD+0P8h+dVWX/MY2X20nXG/MjeMFUxaJ2uv3WRSlIet5JOvVt562I18neUBJ5JOxoI
         RMjTPiwValryCONqpKbkHb+yQVtJxLW/nG5SbsZEZjZsAs1UBochtbGKqrN2nRss2bn1
         H7EcLBKaUpFg8H+ufdCzA4qoyG4KEtI2Eyj2Qiy3dhTqYToo1dOsHMHkqVbWUHrB7raA
         e0rQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Eq+10rWl+xOKzty1wfTwmfcNzHE4nrOEOCy/oKfkJTw=;
        b=mQcA+Z/lOfHnSZBDtJWY/qnbE/r/QsDmqWZKBI6rwzGplAF5+n3/N24W7h1KeHYBMw
         1bi72X733lnL1JB4nC0ENGf0H5a8S/hTYoy9GV50nISIncJENZlqjueAQMPIA76xLgHj
         aO3dunYIZZAUZI5K++OZbT1HEQCfzKjYe2zBdEwamArBznlfIYI/M7eMhCNcp519kb15
         jxhZxkec+Jj89si8Hxou6uZsg666mxdpzmUqODFRZaDHeZBB+/kuJUPl/IupOqyQnntZ
         B5mgwzYF0rve7u8UNrlWam7ZQdEXe7BDmcGTxSTjDrqvDOaRbu6Jny59DbauONzUB537
         M2vQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bSGw16RK;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Eq+10rWl+xOKzty1wfTwmfcNzHE4nrOEOCy/oKfkJTw=;
        b=HolQ2GFqCc7EHgaro7JO0vPoVSNGxrB8xzLATb21UGIUaQQwXrGu6ii1DFrgef5kc5
         OtQCWa+kt7N6H4/cpujI5RClOs4Y0nDaDEkvujx752OAOF0FOOIixS2k362Sj4ej+0Mo
         /9z4/HM0CeYXfd7SqTqlr/+44AnE1CcGKLsn5yROmak7hU749dYFjndRWKNAnK9YfNr4
         64iTwzF3HhgZfsKaErau3Ber9Fr+myZC3ws6I/iVwyFY83W5FkSYxDmoX7VAQJlavm03
         pNjGgiCPrGEt+uVpz6hpZSjc32MUJDULk1be2sWjJEGTg3426wfCp03mnvi4j4PlvY33
         OIJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Eq+10rWl+xOKzty1wfTwmfcNzHE4nrOEOCy/oKfkJTw=;
        b=qfnTV1R1oFsU48w7gwpaoF2nTemxCa21vxYeSekorPMR9yvLGes4O8Xplk5nY3nJuG
         tgQZBwO6en8YPHlLpcMBvAa+TCtHs8RouqV49dQwkNU4db4eIsj9nEe64gLKAIAomTOr
         hiBvibomjy9+jx4rnxSl4Z4rj+ZcMdRHCXyvU3pTaooVMJLZve40ZctAJFf8NKx3yw0t
         oMbV0V0uHHmYVeqZAml8Vk5iI3XyBy/sV/GpAQJw2UPGcOIBVGN+Eds+UcKy/vbu4qJx
         RY6V+Q+e2dPfQ9q992kHd+M4F01I2p336pfF3MvsNX+XNcZuKNfw/8rt3vSbhQryh5w3
         v5lg==
X-Gm-Message-State: AOAM531NA0pDEQSOO4mHrlmMs3Ulr5Ht9jNmnL0r9Hyv+PzhsAMgLVGw
	uqHsUrVEQFOf6/qO96e1EOo=
X-Google-Smtp-Source: ABdhPJxvJEjwP0Bayppw4195WwqjUfvPdVBWAOklPaLrcGema9Qy2AEIFfm1EjOegR5na9CL6NWPCA==
X-Received: by 2002:a0c:aee0:: with SMTP id n32mr34111600qvd.7.1600459709086;
        Fri, 18 Sep 2020 13:08:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:1445:: with SMTP id b5ls1669036qvy.2.gmail; Fri, 18
 Sep 2020 13:08:28 -0700 (PDT)
X-Received: by 2002:a0c:efd2:: with SMTP id a18mr19307407qvt.54.1600459708625;
        Fri, 18 Sep 2020 13:08:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600459708; cv=none;
        d=google.com; s=arc-20160816;
        b=VKNX/pTtOwE6hN+JwhW2+RrkdqX66jomClgFohCu7L9vnt4AB/uLII8XZS1uYLzokw
         4yoRd+zIrPckYsx2Aa0ZKX33umA39vqxrJVKgV7iCdyEqusw+JYi8obTUvyn/rdkzNSP
         XzZpMil5r2Z3G8Cdb1qUAla8jII4XsfvBPemxtBlruakT62O1m0LqsglRzmw1y0aQCg6
         bqtTC0GqqTs+/CK2U640c7zZtkv17SICKnAg+T2nPlALCLnz1BJ+8NYs/8Yt7U7QWHAQ
         XSBPkuYalEEw2dCzuEKQ0v+xxjBxi5vnG+Vtn6unqSwcPFvzNAMoE9I8/7jOvkK6P7MJ
         w9rQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=y3gCF6cVXQ/uNljeBB8xutvFX6D3KBD6dmi/Mv4Oc4E=;
        b=D4SZqNnFHe9D8l9QX9vJso61ChxKf6N1S3B6wSZ/uJg0hzO833oGPbV8AomhLw8bt5
         dEPqdbt51PRwhmlW3blstNi209oSJlhDHEHQygktsOrJ7VnXbHhRT9QSD2pKvcka0Vdd
         mKjim6t2hCDnu4YtNQlVJ+pMiv0kADQoFZdgUg8/SxU+uzlR/DM2KcFCn/lofPpc27vF
         Wng+3+BNFSxXv6FWyD0pJHhk82+k7hYso6yqwi/9oq//zuGSEl8O/LfVLGN98mNVVzyZ
         /93TPjeEWjLgZjiUYusi5H1ezNAOZ6aWwmat8N+XvPbR8PFOM+p5Z8fwdRGJCUFjhx23
         1LVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bSGw16RK;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id n26si188847qkg.5.2020.09.18.13.08.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 13:08:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id y6so3541374plt.9
        for <clang-built-linux@googlegroups.com>; Fri, 18 Sep 2020 13:08:28 -0700 (PDT)
X-Received: by 2002:a17:902:7295:b029:d1:e3bd:48cc with SMTP id
 d21-20020a1709027295b02900d1e3bd48ccmr18375149pll.10.1600459707638; Fri, 18
 Sep 2020 13:08:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200916061418.9197-1-ardb@kernel.org> <CAKwvOdmqFoVxQz9Z_9sM_m3qykVbavnUnkCvy_G2S2aPEofTog@mail.gmail.com>
 <CAMj1kXE-WJoT0GhCzGGqF4uzVNCqdd1O0SZ9xbHP25eQMCUsqw@mail.gmail.com>
In-Reply-To: <CAMj1kXE-WJoT0GhCzGGqF4uzVNCqdd1O0SZ9xbHP25eQMCUsqw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 18 Sep 2020 13:08:16 -0700
Message-ID: <CAKwvOd=G3CCwDdMsrbZvvUpNtxFL=FReovS4ProcRhZBQ73RiQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] crypto: arm/sha-neon - avoid ADRL instructions
To: Ard Biesheuvel <ardb@kernel.org>
Cc: "open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>, Herbert Xu <herbert@gondor.apana.org.au>, 
	Stefan Agner <stefan@agner.ch>, Peter Smith <Peter.Smith@arm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Jian Cai <jiancai@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=bSGw16RK;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
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

On Wed, Sep 16, 2020 at 11:08 PM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Thu, 17 Sep 2020 at 03:53, Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > One thing I noticed was that if I grep for `adrl` with all of the
> > above applied within arch/arm, I do still see two more instances:
> >
> > crypto/sha256-armv4.pl
> > 609:    adrl    $Ktbl,K256
> >
> > crypto/sha256-core.S_shipped
> > 2679:   adrl    r3,K256
> >
> > Maybe those can be fixed up in patch 01/02 of this series for a v2?  I
> > guess in this cover letter, you did specify *some occurrences of
> > ADRL*.  It looks like those are guarded by
> > 605 # ifdef __thumb2__
> > ...
> > 608 # else
> > 609   adrl  $Ktbl,K256
> >
> > So are these always built as thumb2?
> >
>
> No need. The code in question is never assembled when built as part of
> the kernel, only when building OpenSSL for user space. It appears
> upstream has removed this already, but they have also been playing
> weird games with the license blocks, so I'd prefer fixing the code
> here rather than pulling the latest version.

Oh, like mixing and matching licenses throughout the source itself?
Or changing the source license?

(I've always wondered if software licenses apply to an entire
repository, or were per source file?  Could you mix and match licenses
throughout your project?  Not sure why you'd do that; maybe to make
some parts reusable for some other project.  But if you could, could
you do different sections of a file under different licenses? Again,
probably a worthless hypothetical; you could just split up your source
files better).
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DG3CCwDdMsrbZvvUpNtxFL%3DFReovS4ProcRhZBQ73RiQ%40mail.gmail.com.
