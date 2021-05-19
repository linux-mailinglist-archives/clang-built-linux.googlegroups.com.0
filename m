Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6MZS2CQMGQEFLK2S7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5707D38991A
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 May 2021 00:11:06 +0200 (CEST)
Received: by mail-wr1-x43c.google.com with SMTP id 93-20020adf80e60000b0290106fab45006sf7763252wrl.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 May 2021 15:11:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621462266; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vny6v8rf0tt2GHDbJ1LyOrP1mNdyy4+XciAaGYp0KNWOGw+bwwYKE5sRCGRA+9ZcjO
         dBcU+FJnjfU9ZrGoFZ4AKw/tK44GyM2VH7xJmpkha7CptTxVWp7iG0ZfbOFe3wEPU2xC
         HrIufTjuLoqv9Z3pplBk+7LELB30aprTvQIzuEsh64YDo1t04M38Kexm3cO40up67G0/
         BPFKm03HZ12W2Tf4kEqQO9nCmmqVvr44frmw00ZwpDz/+juTk2VhjL0P4NzmAI0D8VHr
         p043G9VXU3FPj1DmpmNw4wNozJRsN2j/YDcjF3SVo9Fmb7q3L2N6jfG/T/4UUexbJ8/n
         J7NA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6dJgSif3ZKK9bbiUIoClHFgY1RiNAl63TNzq7gG5jRk=;
        b=vUhtlxTtLvOQTmD14nt71mWCrwu0T2rWI3IJ3qb6hHb8Yd4BOh8K2762bxf3ZPetZF
         hoaPott94Af12Cb/nzcU+C4QyXa1Nwkpyci2PjeWBAQlaOOFPCbQ00bx3RcW0eNmycT3
         jWoJtZMgrXsnkA/OrYVyGZgRAgs+g0ecKnjus3V0rxBTgF3kfOg6dPG6r/qHU3ZW0BhJ
         dsvhPn1iQVv5YMoxGs1/luWohQOcgcUHeTuUjH27j4JYHar8zSoZhq33IVswLObP4uSm
         wavBGvfmNtax9EyisqQ+gYRPb/K/4RH3MrNJSsKNehXh+FHMG0kKswE8zQq5OvjxGgWV
         Y5/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Dx86c9J7;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=6dJgSif3ZKK9bbiUIoClHFgY1RiNAl63TNzq7gG5jRk=;
        b=I6tQwsaAul6kl9eoyZZtVHKt4E3otsm9q7YeBq4fswrh2RhvDQoiNGLZOLYuBHF6dx
         iHNIR3ni0G9YZyXQXMgra2oJZ4O1olECTYPJ5smJoGErd9zIaWkNoftcb4BQFw1AZ3Iy
         G0Dgbiw+GAkARocngwbWxxgz23brpfbgBNZPSo+qK5fK2UkzxCWKNFEvGNmGswGuOYJr
         UiOT7xQIEENwYpuj24PVSxTOV6oqRHtUP1/wdfYuVYeZvtgV6tz8kEPIQNCh60mvDXi8
         WxuhGVGZ0nWZKYutu+A8bvX7KmaCbXV8ie7RSLdeiZTbsmoago0197nzXQGd0Kqjd6ap
         4Usg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6dJgSif3ZKK9bbiUIoClHFgY1RiNAl63TNzq7gG5jRk=;
        b=qRCO0NyOeb0j7LuNhkypuUJKpPuP4uUGFm4oE46zVPaDNvI9cfqt2uN1eCiqgfNZ33
         WqeqBg6DZF7i3W/0i2CtFAomGcEOnK+pMiojZgfEitJ6dDdhRHlImsyhzahr6YFU8WfP
         Zms7edAhjJaiXbgZa+B4706cK7bjTS3oyWSJp6OHI420UNI2eL53RA5YGLt2EkOlez/P
         c41dmF6mn5JbhLZQ57GMPwLC5GR738pDcLkD8BHcfE81jbYQoj1p1a2I5Hm7e1vh2hsj
         xRR6un603RJvWqO9q8kuFIzA60PYkrZ5HOVf9SZ5ZEF+Ba0QHWxRnOB5Gj7kMtp99Q5y
         WyeA==
X-Gm-Message-State: AOAM530Es7cI6jXAdpTFQnPzDf5EuZcNQc9nf1X2V4l2k5uKy+Cr8oDX
	CSCX28QejQ5C65Ys1OH40MY=
X-Google-Smtp-Source: ABdhPJzX7f1/0i5Aw94phbmgzlSh7jeYcEDqn0HeJecQLmUxFxASWA+MxOJqRJlGViqTqVHjDOcKQQ==
X-Received: by 2002:a05:6000:1884:: with SMTP id a4mr1073783wri.280.1621462266053;
        Wed, 19 May 2021 15:11:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:db50:: with SMTP id f16ls909062wrj.2.gmail; Wed, 19 May
 2021 15:11:05 -0700 (PDT)
X-Received: by 2002:a5d:4151:: with SMTP id c17mr1084030wrq.262.1621462265222;
        Wed, 19 May 2021 15:11:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621462265; cv=none;
        d=google.com; s=arc-20160816;
        b=g8hDRnhkfGB+A8+eDm2cJbaMIkGsM8DS0QMyOnp7IRwDOGWlbklwJ+tDfJKcxhOHAe
         FxKWTUUOgZsrOeufDwbi6y83Jne9i4kwly5WTKUbYJOcuNHa/JPgqoC2oI1Oa4o9N6ji
         Y4SSdXdS3tBwdQHWqogQp5nsVT6N2m75afZxYYYMr2908Nm/Q6gMG7f6wf0XRfZXoPmP
         yqF4JHb+a8MuORqxsrRwBbVa71Xbwyb1BolR5YZANbjQkQ8tx/knhrsydHfEXj4pyh51
         FChVqb16XEHfS+hhFSpxcP4/04MfVgS5hvJh0KIP72lEFf7m2Tskk1xZdO+ZckeKxb6q
         2UPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=qfAAcm52oZOJfxJjneuf0kDILqPke3bu33yoSY3Oyik=;
        b=O6FQ02C7oGFJzaprUzuRTWaAoGAaH+S8PfrDbNUY1BwH+m7Rn4i9wMXT7H2AZg9SK5
         67hKUol3N0G1DsR+EwQBp0c3qNU/HfwmylPMIPUQLNbrNRpz6nthSpg2fzuAez2NbZmm
         3MFgI2Em5EIj9oBOYJC6iFx1SueLTzOR+wWNaArkbWuNY8wpJ3TATRc5QAnc/noB5KnQ
         Nw8puKUTRlPq4L5CEj00AhMF893ZEyCkAJ+b8IKM1kZdRPthKszIrGqIP4Ctu2oum4Uv
         p/2McIhc9LKOl3AcoxKv/+SV8uENNYcmKJX3Bf7OTyG4+6TiRgaD1AFiwH5okdFiskou
         18PA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Dx86c9J7;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com. [2a00:1450:4864:20::235])
        by gmr-mx.google.com with ESMTPS id l5si22698wrs.0.2021.05.19.15.11.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 May 2021 15:11:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) client-ip=2a00:1450:4864:20::235;
Received: by mail-lj1-x235.google.com with SMTP id w15so17345459ljo.10
        for <clang-built-linux@googlegroups.com>; Wed, 19 May 2021 15:11:05 -0700 (PDT)
X-Received: by 2002:a05:651c:106f:: with SMTP id y15mr903178ljm.244.1621462264409;
 Wed, 19 May 2021 15:11:04 -0700 (PDT)
MIME-Version: 1.0
References: <0000000000007a664305c2b4502d@google.com>
In-Reply-To: <0000000000007a664305c2b4502d@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 19 May 2021 15:10:53 -0700
Message-ID: <CAKwvOd=GPp8XYes43-Kz6bqZ+M+7BCpOgeSDPB03wimTAxDUng@mail.gmail.com>
Subject: Re: Clang-Built Linux Meeting Notes - May 19, 2021
To: Arnd Bergmann <arnd@linaro.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, 
	Android-LLVM <android-llvm@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Dx86c9J7;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235
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

On Wed, May 19, 2021 at 1:03 PM <ndesaulniers@google.com> wrote:
>
> May 19, 2021
>
> (Nick) Per task stack canaries on arm64 (broke LTO)
>
> https://reviews.llvm.org/D102742
>
> (Nick) __builtin_constant_p fix for flexible arrays
>
> https://reviews.llvm.org/D102367
>
> (Nick) removing GAS from Android kernels
> (Nathan) AMDGPU LTO fix
> (Nathan) problem matchers in github actions now!
> M68k backend has inline asm support
>
> https://reviews.llvm.org/D102585
>
> No san cov attr
>
> https://reviews.llvm.org/D102772
>
> Arnd
>
> https://lore.kernel.org/lkml/20210514100106.3404011-1-arnd@kernel.org/
> Randconfig turning off COMPILE_TEST is problematic (0day bot)
> Can we move some checks from sparse into clang proper? (or clang-tidy)

^ Arnd, what did you have in mind from sparse? I didn't fully catch
that from the call.

>
> Broonie
>
> LTP build w/ clang recently failed
> https://release.debian.org/bullseye/arch_policy.html Debian=E2=80=99s arc=
h policy
>
> Tstellar

s/Tstellar/TStellard/

>
> Rebuilding parts of Fedora with Clang
>
> Fangrui:
>
> https://maskray.me/blog/2021-05-16-elf-interposition-and-bsymbolic#the-la=
st-alliance-of-elf-and-men
--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOd%3DGPp8XYes43-Kz6bqZ%2BM%2B7BCpOgeSDPB03wimTAxDUng=
%40mail.gmail.com.
