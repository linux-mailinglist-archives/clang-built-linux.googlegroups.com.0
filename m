Return-Path: <clang-built-linux+bncBDVZNA4ESQGBB752QH2QKGQET7334ZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id D07E41B4839
	for <lists+clang-built-linux@lfdr.de>; Wed, 22 Apr 2020 17:06:39 +0200 (CEST)
Received: by mail-lf1-x13a.google.com with SMTP id t11sf1012787lfc.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Apr 2020 08:06:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587567999; cv=pass;
        d=google.com; s=arc-20160816;
        b=nZYqahzWJWvKPpeI+HPyr4DoGB2hn3NXQ6z3ZKr43qhCMmYF2n8X2028WNVox1gdlD
         lzOBMNC+WkEoMTYZNCMbAKOhMMaXCbhJQe7vNUwVj1I/8JmxKfOgd1w3/XDFNUjeuV7Z
         ZG7jVvJi+RUU62bLAhHcRsXgn//UvkT7DJ8URVgycP1Xf5nKs5DnXnoSJP1MqAVVwtiH
         vv4dcZteWwAnFV1C9gQcMcN4t1Y+u2yXkldBeVr/6zsHHTmwz+s3MNYCWetF/TEHnm1c
         2jefBdNoKvtISLrvX0s0OXqg28IIlRKhws7QbC4IbNr2N1UqJqgjB4HOPjMighZes8OR
         II5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=dJpYBQBHvWMD8G7VthtkOQK4Md1RTg+k6tow5krbOQQ=;
        b=yIVCCFJwR7MkkiDdxW8R3DWK70f3n5xhat3ZKotNNEgCE9s2j3rLPBjZ5SAYSDFlaH
         p9H8I8B8UhRlGOruz5DxGMrDoIbPI2T7wAzmYOVPJ9gPcVy+AhV4maHvMAXoTM99yNm2
         koRb8bbIpiNWn4B6w9+pz5oU6n9SsM2v3A8bp/n1sC0yEtWGBsSQ5077LQrTMurYh+Hd
         AoF6Vj33FTCDkCFFFZwUm1OJ3vV0nltq2vvWKpvFJyT//3QlfSlPbQo+3ysvefjcQqH+
         tMg4vIw0D3CmXFLofp/B07P0v7O+6hmfqX7ZWJEhIz+xP30JJxQkJlSFD1lzwYzTzv39
         dZ4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of matz@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=matz@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dJpYBQBHvWMD8G7VthtkOQK4Md1RTg+k6tow5krbOQQ=;
        b=PiT53U7px8Tdq64NVMe8DuiBxOXZ2rWitWhCWqk8CfOtbxW26jyiWclFCk7am8Mgao
         wPmcurqOmPHak1qh8Guh1PnDVV0204alxLUnJuickttqkP1kxmaTYaejGMbUuM7yUuve
         Bl1IUVcNbvDwkmxbYZEm4M0TPsWwCD8vCIadsPnkx+xn+s5luq6YL8NS0z2xDk00hQK+
         gte/2h0xtH3OcYQoO9IRjC0uSWbZvZDX1roTmfYzwIlInM920zbUYiqyEjc8/XEJRwW2
         NiRlAbvIzV9mKtQTmCEqPDuKQd5Ho+XH9OQjWCeh+zZZsM+0sHRsYYpceeIhZYcVgJBn
         5oag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dJpYBQBHvWMD8G7VthtkOQK4Md1RTg+k6tow5krbOQQ=;
        b=XoqlGgBXBvQWzPQ8HlDOBUmj19rHGp7hVzzjwTz/qpWBbZW59jsc63yGDhTytRTtpH
         FrNTcpZFWrLfz6JK2RF6d4D+q7QMMgLgvrLtvD2Pe8GOTx3ErUv7LxuJnLPlkSrXyVBy
         XX515M0YTHTSpfSVS3ByoHvTwhrLvmZhyXW0xD5VaJ8guDZ7e3itEdcFebvnUPFI1Ik4
         nBQ7G4NWbRNxO/SYQyZKW5XlD0Anl2lfNl3pp0gggzr0bf8c1frqZRc716OVpPbuab2Z
         ZuELXgYLXoLYFCHPyB8AJtiAxdEvgEoGt1KYqbt+zWynjdGkSuSEUourDB+ijjJXPYJR
         /rVg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubkNlCnwN2s3NV4XSjTDGU2wsbOeYb4PnLm/HGozMfRS3mqSf54
	DEl6yCQEy+X4dMKaigPSIsg=
X-Google-Smtp-Source: APiQypJPlk7SbdmQH9QY3Rdq3QT1/5y2PKkcb9z8AMT7ouyQdbanOAkSu03GCVeBFSswkIbPUb9C5g==
X-Received: by 2002:a05:651c:291:: with SMTP id b17mr16519365ljo.166.1587567999296;
        Wed, 22 Apr 2020 08:06:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:74f:: with SMTP id 76ls533675lfh.0.gmail; Wed, 22 Apr
 2020 08:06:38 -0700 (PDT)
X-Received: by 2002:a19:c750:: with SMTP id x77mr17688837lff.1.1587567998239;
        Wed, 22 Apr 2020 08:06:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587567998; cv=none;
        d=google.com; s=arc-20160816;
        b=oqGrc7Jj6eVkbjdPTbYnxLV8xyr2ewsOHjBlUHsnEkzdILGWOB7Ot8bS6ooUr1iV1N
         wuNM1jcdL6Dy2DTn0F1vl9IJe8Um+SmJu29EBC6+ijoC6AU+hHwHmGn7yMzeSwBYpuVO
         ozzBqi6icEwoYQDE/akCpKd6fxbMX6IYpGt7ezY3jnWCWMdvua16dLy30wDZ3j0gW5tg
         As5gXNE/Hcvjis2BJZD0fU1bSXI+fpPAW/x/ANY7gO3RumDuUAbDaLo+PdKhB/XCcrZk
         zPwj3JjpuFkuM2h+prGIxpsTPaGgbZFEgJeOFh3r9QITFFSgEFG9Lauj8iOiA7LgBjxV
         xpjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=9dasqayWLRMndR5wILHTVq7V8XkEah46KuqfQueNgbY=;
        b=Lbhj1rnwj8mybHWtMM1LtFrYHbv4e/6xN7bBbjOcKSxK8GTqVpxf7/+QU7idSC2Dzm
         txZ3GHgHkhq16IWvGZSzabd7LP8bsxLROrrc+OFqI+83aNM+XMzH9ypadyXGuAA/RS1H
         TTGxoJrgF5HLWNxGDTtJjAfIQJyYqp96OPRwl7a5j4n9PubzmenQM3qvErecw4EwjYcE
         s3DVsrAX0lwh1tUP9We16LG3LsR9pbqlX5nmzhp9ixGcpoyeYniewVagBAFpC2g+2ebD
         xqDP7wABFnuMPUoFPYf4O65yGDZTzzrd/FK06/i9b8iJyBTLxzOK9sFaZCOsfb19y3+I
         +8qg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of matz@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=matz@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id c16si444773ljk.5.2020.04.22.08.06.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Apr 2020 08:06:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of matz@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx2.suse.de (Postfix) with ESMTP id 80FE4AFC6;
	Wed, 22 Apr 2020 15:06:36 +0000 (UTC)
Date: Wed, 22 Apr 2020 15:06:36 +0000 (UTC)
From: Michael Matz <matz@suse.de>
To: =?ISO-8859-15?Q?Martin_Li=A8ka?= <mliska@suse.cz>
cc: Jakub Jelinek <jakub@redhat.com>, Borislav Petkov <bp@alien8.de>, 
    Peter Zijlstra <peterz@infradead.org>, 
    Nick Desaulniers <ndesaulniers@google.com>, 
    Sergei Trofimovich <slyfox@gentoo.org>, 
    LKML <linux-kernel@vger.kernel.org>, Thomas Gleixner <tglx@linutronix.de>, 
    Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>, 
    Andy Lutomirski <luto@kernel.org>, 
    "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, 
    clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v2] x86: fix early boot crash on gcc-10
In-Reply-To: <20a91f2e-0f25-8dba-e441-3233cc1ef398@suse.cz>
Message-ID: <alpine.LSU.2.21.2004221501440.11688@wotan.suse.de>
References: <20200417085859.GU2424@tucnak> <20200417090909.GC7322@zn.tnic> <CAKwvOdnFXPBJsAUD++HtYS5JiR2KmX73M5GAUe-tvX-JYV7DaA@mail.gmail.com> <CAKwvOdmNwNwa6rMC27-QZq8VDrYdTQeQqss-bAwF1EMmnAHxdw@mail.gmail.com> <20200417190607.GY2424@tucnak>
 <CAKwvOdkkbWgWmNthq5KijCdtatM9PEAaCknaq8US9w4qaDuwug@mail.gmail.com> <alpine.LSU.2.21.2004201401120.11688@wotan.suse.de> <20200422102309.GA26846@zn.tnic> <20200422114007.GC20730@hirez.programming.kicks-ass.net> <20200422134924.GB26846@zn.tnic>
 <20200422135531.GM2424@tucnak> <20a91f2e-0f25-8dba-e441-3233cc1ef398@suse.cz>
User-Agent: Alpine 2.21 (LSU 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="-1609957120-295431784-1587567996=:11688"
X-Original-Sender: matz@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of matz@suse.de designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=matz@suse.de
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

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

---1609957120-295431784-1587567996=:11688
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

On Wed, 22 Apr 2020, Martin Li=C5=A1ka wrote:

> One possible solution can be usage of a GCC pragma that will disable the
> tail-call optimization:
>=20
> $ cat tail.c
> int foo(int);
>=20
> #pragma GCC push_options
> #pragma GCC optimize("-fno-optimize-sibling-calls")

As we determined upthread (and the reason why we even still have this=20
thread): the optimize attribute (and pragma) reset flags from the command=
=20
line (the case in point was -fno-omit-frame-pointer).  So, that's not a
solution for now.

> And as I talked to Boris, I would recommend to come up with a=20
> "configure" check that a compiler does not optimize the key code=20
> sequence:

Right.  I think the traditional asm (i.e. one without operands) is good=20
enough for the forseeable future from GCCs side: it relies on documented=20
behaviour of traditional asms, and hence would be very hard to change.


Ciao,
Michael.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/alpine.LSU.2.21.2004221501440.11688%40wotan.suse.de.

---1609957120-295431784-1587567996=:11688--
