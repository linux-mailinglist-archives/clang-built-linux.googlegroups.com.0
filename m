Return-Path: <clang-built-linux+bncBAABBUMD5HZQKGQEUUB477A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id E383919177D
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 18:22:26 +0100 (CET)
Received: by mail-qt1-x83c.google.com with SMTP id i36sf16803725qtd.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 10:22:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585070545; cv=pass;
        d=google.com; s=arc-20160816;
        b=G1fGNCcYV+6HMRSxO762tGGZJSy9ch5PJMtqHev06rNL+H2dX/EYLXuuWbCLj9CgbG
         qPeP08g3Bb5NdhTbq+TraHLDq2bSnBt6oLiVz9F36S4L6RMgYb4zDv99TlvmHRlf/eoD
         ac9I6daMKl9BjS4i9+ELISF2Y56YEN+nwzzccuFyMxsyTq2kemuUEKiyWDGAllfSnAVn
         q7UccH3Ax8thFZJQwgqPOrCiOgCokQq7SndIn0ssYg15MCNNKogOcnF5l17h7PKQHduo
         ds6LsiK2g06jY7Z89G0SIuGWj6dwX3s9Fj4ZQ7F9cKCUBns01mN+QBzRFcpuXsPLPKsY
         RWoA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=jrm97IjQjuZm2UYqAWN0NPMB4Fh+3F91Qez+C1OLxqY=;
        b=SAxRzW6LzzVQf4hOb3qr73Ju6EJOOfjquN0BPOqmrq7sIuP4gj8p3xgwE58ssOIA6V
         7R2cVNhlv04TGsxj+hWVxcQ2E8M5et5dgDg/8cs2hLwg+9lV60p52XjHQ63uURAtRcBf
         AaDn/DezTwsTTJlFc0CEF5Vq0eS64cKYApMA0d1ml6Aku05KqvRCXa1mQt/ISfs77b0t
         IlhWHR8W/eSw9EYgGIhPs3bJIEtLldBGdoUSf2gnQ++OlNFOWqdF63q5IR04amDKnjn4
         p0k34f7xPJQbVpUGVSjQjPTVR7RpKGz/Yjl+mFeryN6bshXwOB2bRkS20FcN59xEwLhE
         ZeKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=OHgihV9X;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jrm97IjQjuZm2UYqAWN0NPMB4Fh+3F91Qez+C1OLxqY=;
        b=ohHBfeIN0cQJNJAbqXwGdoZINz7i7a4WZyoJlNVXhLPnJnzgIBwUVX583XJCmarCT4
         G/M6iwO9bkB+uQVcp/uHMUlGj3XH4xt/RvaOdGMr0VuotbiMtWo/eI2HkeUaiXrIwzQc
         pIM9C0jH3Noelu0/LVxq3Nk+u/nVIjzqdERPwfn1rPgff6ll1J+1ZJ8e/S5wT/pikdUL
         Im9AsbYNDqhM8JkmJmero/U+vfvOcHim2OMNsaZUzqXKyEyIODBVpL1nCgNYIED7Q/+U
         USbZAudCxmBXefEAVfKedVg50o18Ec6Z8WVDJNKmRffYsLVT3FiQN/giFyqEeD+Tl67T
         TFGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jrm97IjQjuZm2UYqAWN0NPMB4Fh+3F91Qez+C1OLxqY=;
        b=MBydCLnjKmn90SVo79QbOyo5YCJ5KrOQPV3/fXJxlj2W5/M2C1fkX1XtyMeW5/Xxlu
         rFUdqGnHJ2F2vuWD2DPBA5HnX+yUC1xCjhfuogWxL5i3x0d9uA3OnNmZnrQYDowvvaJe
         cUwI4mNcOcc92CinsA4EoR6VIzX2uDEVG1e4wmmuD1yCpu8iyvoKy5k9UaAkL+BG7i8q
         KrPqyRqUqRf6eKNSrsXQRJ8/6EBXAImra9uNA0j/8/NFo37WRmtNZh5W8nBJB1axHFlY
         qEZl01ZeUER9NY7dOf5SsX/zZTpZ1BmFZMsVVWtI/Amh9Q0IFxF/fvYDK0THvAGdlmMK
         3N9w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0vy5Ko8RgCW6ruxQd6oLL6XhCG9rE3EhnIH/3fEn4OAlAS7YBK
	0jcdLA84ITmzsISlwLjRNyc=
X-Google-Smtp-Source: ADFU+vsxmcmP4dXpYoA7+0+drOw01nar7mMMwTlU9hu73Yl2zQq4ZGXR0RxyglUwLpbo4Aap1PiPTg==
X-Received: by 2002:a37:7002:: with SMTP id l2mr20885821qkc.372.1585070545724;
        Tue, 24 Mar 2020 10:22:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:6192:: with SMTP id v140ls2103243qkb.4.gmail; Tue, 24
 Mar 2020 10:22:25 -0700 (PDT)
X-Received: by 2002:a05:620a:709:: with SMTP id 9mr1942206qkc.355.1585070545292;
        Tue, 24 Mar 2020 10:22:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585070545; cv=none;
        d=google.com; s=arc-20160816;
        b=tDLAYE9zjlA2m/E6lJcPbCmjogQ1eq+7Puh8DhAIYbOLHTLuIWHorKmTafgJkBZhZN
         ruapAjGmRzTwdMTGVZxzO2iO5gihbFKMjOoB8yE4nfZVbqpCthcRybvlnQFxBZAzUNnq
         FBtTct9MhbvRfMN/+y4yMvDc5WY/l8+izHEUabyiS7KntI+Q1s40gIwbLJF5zblrDLsC
         optfkgQdTdnC+dnuUOBYpo5pnu4oBVfGTa6DCPgVMaXpzA+2TraLFhbelW/jSoGc63lg
         JG9M9o7xNnE13m3DJ1f41JFLRQZCKqxNsRcwkWOKqMFHzWh5RcRSx5pGPEZLGr1cCKIM
         g6FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=bPCRwIwldAM4HwybdFdRYHiHqpgNqlDdX4WV8XKCpgQ=;
        b=fuwmjsIQNwXcChLI9JgjJi6IwidQVELEY/O7p4GZqqWE8YFaMCPdNIVaYOzyFpgzfF
         4oZb6QKuS4TXZFXqmQ0YtWAxoPirvE0VGD8bRyu12covBnWWN8mrgeGyN/Y1YWIxjy6F
         6324KsyPIV+yWsS3z/78gFfpFcgxgwRb2D0mo6QrdqmFiLUJkuGbD6j0AYKxfNcliJrO
         fC49xGLZndYzTUjunQHIgK78AeSYy88/etzPSURq9mpjb5eYTV14F2I+y0FCTLgGZBEq
         GxNwd7/fMwfBsa7F/dV4KJcfvhkNws3I0RChG3xPwsePoHaX+5BkUwEinA9NcCzJHFqr
         HLYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=OHgihV9X;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com. [210.131.2.82])
        by gmr-mx.google.com with ESMTPS id x11si1096285qka.4.2020.03.24.10.22.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Mar 2020 10:22:25 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) client-ip=210.131.2.82;
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com [209.85.217.47]) (authenticated)
	by conssluserg-03.nifty.com with ESMTP id 02OHM36r011035
	for <clang-built-linux@googlegroups.com>; Wed, 25 Mar 2020 02:22:03 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 02OHM36r011035
X-Nifty-SrcIP: [209.85.217.47]
Received: by mail-vs1-f47.google.com with SMTP id s10so3220587vsi.9
        for <clang-built-linux@googlegroups.com>; Tue, 24 Mar 2020 10:22:03 -0700 (PDT)
X-Received: by 2002:a67:8745:: with SMTP id j66mr19305626vsd.181.1585070522434;
 Tue, 24 Mar 2020 10:22:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200324084821.29944-1-masahiroy@kernel.org> <20200324084821.29944-12-masahiroy@kernel.org>
 <CAKwvOdkj3dDNcbY4hwyManfviPdFoBooJJmFOAKL2YJCZNuhtA@mail.gmail.com> <CAHmME9pV93Zey2=XghxzThTHbZarFrnxwnGatXHyQjevPf7R=g@mail.gmail.com>
In-Reply-To: <CAHmME9pV93Zey2=XghxzThTHbZarFrnxwnGatXHyQjevPf7R=g@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 25 Mar 2020 02:21:26 +0900
X-Gmail-Original-Message-ID: <CAK7LNATV4GeDDYwecZWNH7xxikZjY2VFZ3EYgXAbnbbVsVM+MQ@mail.gmail.com>
Message-ID: <CAK7LNATV4GeDDYwecZWNH7xxikZjY2VFZ3EYgXAbnbbVsVM+MQ@mail.gmail.com>
Subject: Re: [PATCH 11/16] x86: probe assembler capabilities via kconfig
 instead of makefile
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        LKML <linux-kernel@vger.kernel.org>,
        "David S . Miller" <davem@davemloft.net>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Kees Cook <keescook@chromium.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>,
        Ingo Molnar <mingo@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
        Borislav Petkov <bp@alien8.de>, Peter Zijlstra <peterz@infradead.org>,
        "H . Peter Anvin" <hpa@zytor.com>,
        "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=OHgihV9X;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Wed, Mar 25, 2020 at 2:17 AM Jason A. Donenfeld <Jason@zx2c4.com> wrote:
>
> On Tue, Mar 24, 2020 at 11:01 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > Can 11 just be rebased with 8 dropped?
>
> 8 adds comments to one place. 11 moves them to another place, while
> doing other things.
>
> Your desire is to skip the first step? I guess there's no problem with
> this, but I'm curious to learn why.

If desired, I will swap the order of 8 and 11.


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNATV4GeDDYwecZWNH7xxikZjY2VFZ3EYgXAbnbbVsVM%2BMQ%40mail.gmail.com.
