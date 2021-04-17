Return-Path: <clang-built-linux+bncBD42DY67RYARB3MG5SBQMGQEFNJDQXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93b.google.com (mail-ua1-x93b.google.com [IPv6:2607:f8b0:4864:20::93b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BE51363104
	for <lists+clang-built-linux@lfdr.de>; Sat, 17 Apr 2021 17:49:02 +0200 (CEST)
Received: by mail-ua1-x93b.google.com with SMTP id x11-20020ab0710b0000b02901e99bdf7a1asf1711052uan.2
        for <lists+clang-built-linux@lfdr.de>; Sat, 17 Apr 2021 08:49:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618674541; cv=pass;
        d=google.com; s=arc-20160816;
        b=NdsOY2FVDM2q1ltmSDvzSS5MrDhzZ+nBrbbKS6SXTA56MI9R3IEdlzMEAqcUhQi0+a
         lOrLHOmrwAZZsui20GApgjS4x1foa6qhGmkitPiJmltzL80F2lPx/QdiowxKRbOScRI/
         KYnapVQkX4/QwZFR97VFz4kBjqG6VjtkEgnB9BjpBgRGzNakGlBdVJ68nnyC2ooNt8tn
         fko+JdzHHZEzN1QnjCqN23pnC3sShz0272773I1NV/ZY6V+VExyvT/3Xhbdx66AdPlRE
         OPywaj2TXWxM7VMpnQAbCXSXoRYNIrdufXaDOQ8EoHgnkkvYrHMCamdM6se5lX+sf9V0
         fWBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:in-reply-to:cc:references
         :message-id:date:subject:mime-version:from:content-transfer-encoding
         :sender:dkim-signature;
        bh=hh0ITVs3cUmYxssLObjN82LGLR8Ii5KuZUesbG10L3o=;
        b=WtcJxV1x2m+40zqlYddLnbDD4ck91brlkekGgGkn6FJVj5omn8VWsh+mjKp4tJYir6
         9YEgN+7EJyT1EJJrqiekB13+2ftUYWXh1UU+pQz5BE8wlXcZXYxAIUA0cXaSmFm4bqT6
         IQ1Nq91CFnw4HCjp3zDGmT30xiJdVE/x+eae8AABMzLvPConmSXEZ6uF4BVSo0jZKe4S
         E8wM2DXUqtmI1GVOtcQ8iJ91OL4jBDHMwrW33UQGpCLxmquWcsSa/Abu4T4RakqCpuaf
         oA8wZQFRTQAG2exAq91we0qZxlEre/4+LR0GSgvmSS8jLEGfE7FT+nOyUqn9gHVl6/Bl
         xcRQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amacapital-net.20150623.gappssmtp.com header.s=20150623 header.b=DOATV8KC;
       spf=pass (google.com: domain of luto@amacapital.net designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=luto@amacapital.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:content-transfer-encoding:from:mime-version:subject:date
         :message-id:references:cc:in-reply-to:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hh0ITVs3cUmYxssLObjN82LGLR8Ii5KuZUesbG10L3o=;
        b=j+zDyv3dhgBDmp9B38IAFUkeN1m+94uL5XlMeEAeiRKYicihDlgfFHuZQJnmP+GGzr
         o+SMzgZOYJO0Nl8EhpNDZULX/qs1wTwUH70bmV5iK0PtUbcnTWfLqKqp7MOWAkfM5qUq
         37bRxSH7sji6HRgwHnwpf91mhqs8Dvt5gusqU84T+l+BkkAFrhrL9jBMV+mR2EU96GTj
         ZuaqXhTrs6GWXGsBz1WxQ8FXRM8mSXJSVGmsl6y3LXnRUUrVwv7q6HUWeJSScyGungdi
         g8oAlMMXg0UudHPgYECOn+IAGvwrhQMwfUDtQ47ZeTCTWxEOARUn7fp72l70HVwpPT00
         9xJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:content-transfer-encoding:from
         :mime-version:subject:date:message-id:references:cc:in-reply-to:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hh0ITVs3cUmYxssLObjN82LGLR8Ii5KuZUesbG10L3o=;
        b=Jx5i3kOPwPawGTgx8TZw6PwQ2ou/ahzMDEwSFj83CezsbBb9O5C77/K2mj0+eGJHIT
         ZKOp3VDzytCf95fv1WZQDOuOysf4OMENKx+eE7gj7DAMm9Li9rxqwc2cbToVjI3db5cK
         vXDZpYBPOWE4hNemq6Vnek9pr7PA8NjeAsAxxKi/3UIg9gpHEza5C53sB6tL9fpMbx8q
         thkHTyq8D+4loE1B6dPziGmDG4tFD6gIPqvrh3ELAAc5EOeZ7wyaKAYb7WymBBoBQdKJ
         qwz7JS1260a/AsH+xm2SE53+KbEEyms/3V3oiK95bEqh1LpuKlUKwG4FJTBy5apjk8cT
         1pwQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531t13lcZJZpkau1I1IPfRlkH2+7U/gpLgFi1O4qcGCHmlQvbK1h
	fKF/ZZsrnAwe0RPf0RuIhXw=
X-Google-Smtp-Source: ABdhPJwIXKrVjhIZ7wjN6Pbj5j5iEB8ulaJ8NKe9ig3iD+wX8bA4eikSxUfvzS1gPeXcWOlgO0Dp7w==
X-Received: by 2002:a1f:cc47:: with SMTP id c68mr10930735vkg.19.1618674541612;
        Sat, 17 Apr 2021 08:49:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:725a:: with SMTP id d26ls1154474uap.5.gmail; Sat, 17 Apr
 2021 08:49:01 -0700 (PDT)
X-Received: by 2002:ab0:6d8c:: with SMTP id m12mr2988494uah.32.1618674541026;
        Sat, 17 Apr 2021 08:49:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618674541; cv=none;
        d=google.com; s=arc-20160816;
        b=kpxDnqleB4k7qCwCmjmqG4z9qyKk/rwCOG/AcrAmyt8/zxjk4lAGTV9wSW00/zlb6k
         /0I5j6w4qvE7yd6n/gDbcgh4vziLTpZEoF14ya1V/AaQBYd8wDJI0/By3G+c6r9F1SB4
         xtNc6sjdFDKSIXsGZkPiHFJFKT4SbhsCYDB8yzuhUt/JsTwlU2/DOCetuJIowwLs/ooq
         U/k+ItL6sJ77HM0oZCUzrIUDEKyA3kSLYhcm9QjUbvd5iYuNOU4IcSnFoklEvYpXoI5/
         FKSap55Cglob15vw+PyHQcfBn+BlZqX8zu+BdNu7ss7GBUl6Vh/V+TJ+/X5ngusnNa3v
         rczw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:dkim-signature;
        bh=UlHLApmjNaxJ+1f+S4nkAczcT2x00yaeeZv8PjGcs5U=;
        b=ty/2IbB5l2DUzwCWnqLiDbCLN7dEkfgXQ/hk9ZmgLxKC4LSMZpUgUhorPaV6sreQId
         P5PFYdW36y2wbKp9AuP0T7DgwLiZDZ8pIHS+EEAQv/Ay+OU5lKn+8FSgVhZ4lehrzK4b
         DIerRzs9ZZS92vF/f+VYvCq2wIniQfdeQn7Drjwu7IUZG8oRp65HiG4EavTqNSeJffdg
         jnlbyAHpOUvXQcThKWBNAX6KFhmrm8p2dKzG4m6Iv6FUiOoMB5Z+OydMWAHDYxP0J3SN
         GvaYtetcYYIMnr+Bi+8YbmL5Q9RwZ230eZAEEUcLG3FIr1mB601a2bKNd+dmS5Low+2/
         NP6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@amacapital-net.20150623.gappssmtp.com header.s=20150623 header.b=DOATV8KC;
       spf=pass (google.com: domain of luto@amacapital.net designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=luto@amacapital.net
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com. [2607:f8b0:4864:20::636])
        by gmr-mx.google.com with ESMTPS id h7si826579uad.1.2021.04.17.08.49.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Apr 2021 08:49:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of luto@amacapital.net designates 2607:f8b0:4864:20::636 as permitted sender) client-ip=2607:f8b0:4864:20::636;
Received: by mail-pl1-x636.google.com with SMTP id 20so11552172pll.7
        for <clang-built-linux@googlegroups.com>; Sat, 17 Apr 2021 08:49:00 -0700 (PDT)
X-Received: by 2002:a17:902:b28b:b029:ea:eda0:4d5e with SMTP id u11-20020a170902b28bb02900eaeda04d5emr14314715plr.68.1618674540558;
        Sat, 17 Apr 2021 08:49:00 -0700 (PDT)
Received: from ?IPv6:2601:646:c200:1ef2:6956:1417:1f96:6f53? ([2601:646:c200:1ef2:6956:1417:1f96:6f53])
        by smtp.gmail.com with ESMTPSA id i18sm4701340pfq.59.2021.04.17.08.48.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Apr 2021 08:49:00 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
From: Andy Lutomirski <luto@amacapital.net>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH 05/15] x86: Implement function_nocfi
Date: Sat, 17 Apr 2021 08:48:58 -0700
Message-Id: <23831847-4613-4CD7-9DBE-D0DFE5F9AFF0@amacapital.net>
References: <a8653ebf0a52498888f728524ebaa110@AcuMS.aculab.com>
Cc: Kees Cook <keescook@chromium.org>, Andy Lutomirski <luto@kernel.org>,
 Borislav Petkov <bp@alien8.de>, Sami Tolvanen <samitolvanen@google.com>,
 X86 ML <x86@kernel.org>, Josh Poimboeuf <jpoimboe@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Sedat Dilek <sedat.dilek@gmail.com>, linux-hardening@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
In-Reply-To: <a8653ebf0a52498888f728524ebaa110@AcuMS.aculab.com>
To: David Laight <David.Laight@aculab.com>
X-Mailer: iPhone Mail (18D70)
X-Original-Sender: luto@amacapital.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amacapital-net.20150623.gappssmtp.com header.s=20150623
 header.b=DOATV8KC;       spf=pass (google.com: domain of luto@amacapital.net
 designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=luto@amacapital.net
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



> On Apr 17, 2021, at 7:20 AM, David Laight <David.Laight@aculab.com> wrote=
:
>=20
> =EF=BB=BFFrom: Kees Cook
>> Sent: 16 April 2021 23:28
>>=20
>>> On Fri, Apr 16, 2021 at 03:06:17PM -0700, Andy Lutomirski wrote:
>>> On Fri, Apr 16, 2021 at 3:03 PM Borislav Petkov <bp@alien8.de> wrote:
>>>>=20
>>>> On Fri, Apr 16, 2021 at 02:49:23PM -0700, Sami Tolvanen wrote:
>>>>> __nocfi only disables CFI checking in a function, the compiler still
>>>>> changes function addresses to point to the CFI jump table, which is
>>>>> why we need function_nocfi().
>>>>=20
>>>> So call it __func_addr() or get_function_addr() or so, so that at leas=
t
>>>> it is clear what this does.
>>>>=20
>>>=20
>>> This seems backwards to me.  If I do:
>>>=20
>>> extern void foo(some signature);
>>>=20
>>> then I would, perhaps naively, expect foo to be the actual symbol that
>>> gets called
>>=20
>> Yes.
>>=20
>>> and for the ABI to be changed to do the CFI checks.
>>=20
>> Uh, no? There's no ABI change -- indirect calls are changed to do the
>> checking.
>>=20
>>> The
>>> foo symbol would point to whatever magic is needed.
>>=20
>> No, the symbol points to the jump table entry. Direct calls get minimal
>> overhead and indirect calls can add the "is this function in the right
>> table" checking.
>=20
>=20
> Isn't this a bit like one of the PPC? ABI where function addresses
> aren't (always) the entry point.
> IIRC is causes all sorts of obscure grief.
>=20
> I'd also like to know how indirect calls are actually expected to work.
> The whole idea is that the potential targets might be in a kernel module
> that is loaded at run time.
>=20
> Scanning a list of possible targets has to be a bad design decision.
>=20
> If you are trying to check that the called function has the right
> prototype, stashing a hash of the prototype (or a known random number)
> before the entry point would give most of the benefits without most
> of the costs.
> The linker could be taught to do the same test (much like name mangling
> but without the crap user experience).
>=20
> That scheme only has the downside of a data cache miss and (hopefully)
> statically predicted correct branch (hmm - except you don't want to
> speculatively execute the wrong function) and polluting the data cache
> with code.

I admit I was quite surprised by the actual CFI implementation. I would hav=
e expected a CFI=E2=80=99d function pointer to actually point to a little d=
escriptor that contains a hash of the function=E2=80=99s type.  The whole b=
it vector thing seems quite inefficient.

>=20
> This all seems like a ploy to force people to buy faster cpus.
>=20
>    David
>=20
> -
> Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1=
 1PT, UK
> Registration No: 1397386 (Wales)
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/23831847-4613-4CD7-9DBE-D0DFE5F9AFF0%40amacapital.net.
