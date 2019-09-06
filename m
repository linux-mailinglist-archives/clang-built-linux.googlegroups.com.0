Return-Path: <clang-built-linux+bncBDYJPJO25UGBBI56ZPVQKGQEVL3BDRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7340BAC297
	for <lists+clang-built-linux@lfdr.de>; Sat,  7 Sep 2019 00:35:16 +0200 (CEST)
Received: by mail-qt1-x83b.google.com with SMTP id b9sf8080233qti.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Sep 2019 15:35:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567809315; cv=pass;
        d=google.com; s=arc-20160816;
        b=GCivbGBljjXvpkVFmn0zthVEIUf39JO1VNwkMpPHOobyAIPyO+6bcOr+Ov0azpGyhy
         qPEvkq7tsgOr8T5ElHW5sjno96WdVBqNuhoWyg9kD3BnabfKxdvtq9XqqaIbzVHAE6pQ
         1nUWZqTdP1x536IM+8FxhSiwfof/C/KIzHnAUXWeQqa+gx8tEIrfoROgIjORHIQlWx0P
         sECbh2EXp2XsxPuAZ4ljOTYcHyG4MLBZm2rKDnBoRoaYNxPy6jmw3Y71g4Sln17HQogq
         YHghexBIaUlTezzE5fHZ08DzMRJd5hXP924RQHJvkbP3P8q6cdW0uY3I8WQae1w7kU7N
         WPqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=bC+6xJAdIVDFwUKU9gUzIYDGc4PUMKzq2kw5LbsFJ3I=;
        b=SH3AlED1gluzqDMp9THBUXtQaSYwJsTBrftY+cG1Ti4AlfgiFCGG3vFZ8EydNmuqr5
         dH23oaiXL4KnbgnphOl0bdVT8nlamZPF8CzPl4ImQpiAhvyJ//aloNdQS8mVdf2Hy94z
         RDEoo03fJSKWiPavlNfT7vx1B0wnN2JkUMnAyDnffOEdPf9kBra7eoCxr1fnaOHLrkGE
         aYRKVTlADzN0iOfBVXGoNcupwreh3/MIO+Txsn2N6ampt1+5QxR1hcasSfbnAvYd0Z4P
         DX4BZlVxdsf9kk+tM+mpHytsezLvyey26i2YX65R34cSzUHGAL6j6cZbj9TfPsrregjm
         62qg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vWNPt7nW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bC+6xJAdIVDFwUKU9gUzIYDGc4PUMKzq2kw5LbsFJ3I=;
        b=WyeEqeTrCFWvRGaE0RhVd3y0J7aN2764xggqi/bidCiUyRlq0akSW1m1fe5t91//Za
         +yF9TkvO70bSAsAxyDz6poXBiXz/HLOAbeogdC/kBbgL7dErCGufBd0pFkW7nZY6K/fp
         H87V3uAGkokrlmOmgz7103GuUa9v7bL5L5Pk4J+Z7cHas5Qh+euNfCanAH92FLWB07q4
         kCHrIdzScjUrEpqcFdxoh8q5AeL8BWGnh/ISt1ncXIKCLCCxi/oB7hRGlD4gYXi9mlkh
         HHtEYLq+kUoDn841ScPulLK2kAq6fJ50W9w6EHkWtPQnRgdD3onwrvaOeb5nba0oxi7e
         H7OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bC+6xJAdIVDFwUKU9gUzIYDGc4PUMKzq2kw5LbsFJ3I=;
        b=BsHhSVyfn3f45VXdgdW8g23e03LUq8qhDVsP8FNOATBL2un+gmxcrRAmZC9e9hdFfW
         P9HICECNP38Ppes+SM80fUgwXgjl4POmt0UgltYkGKDftbQ13MUVwQk8ktb7K32ACqxG
         FZImCiPk4OWy1PcHNZ98kVz2puOBm8uuV12TRsBBbJfBSHMeVztAGJO2en6PcMC6Kjtr
         1w++2KxYcPgeO5WqViRbAQgpT+ZFaHXXpIZ9fepSbmdT4jpT5VqUYw6+eX7JtrBesbJa
         2S+TD+Whp2Hx4BR8JIp0ZNqcMTkN2sMYZuEGgYYtW3jK3GdtWNoiJnWiH119vqc0dA+i
         Oh5w==
X-Gm-Message-State: APjAAAVyYokSFlNwBKHy/lXU0syithh5QvATs3NPeBhoY2VmjZ5oqhsU
	CrNkdFUw0nftqqoy1TY9uwk=
X-Google-Smtp-Source: APXvYqwEKItIaNsyuo3qwm03YADvkyIXko4l/3PZ4+WtNRuB93Kf0NiLp3ew9J+eG8654tKdketKxw==
X-Received: by 2002:ac8:7158:: with SMTP id h24mr11935472qtp.349.1567809315545;
        Fri, 06 Sep 2019 15:35:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:670e:: with SMTP id e14ls316526qtp.5.gmail; Fri, 06 Sep
 2019 15:35:15 -0700 (PDT)
X-Received: by 2002:ac8:7558:: with SMTP id b24mr11661793qtr.260.1567809315324;
        Fri, 06 Sep 2019 15:35:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567809315; cv=none;
        d=google.com; s=arc-20160816;
        b=1DtzlPScDe0Mucop0opvY10CghjGxiGKIzjytMrgvybpsdtVTceJTL9jGHQi8iVeXd
         XJHqDSAvJeXgOJzhN+lBdv26sEvujbolSYHEeFrdnAbgjyw4X+7VYISh/0aA+90ag9vE
         lulZzw1DGLhnVpW1m85M8HSffmOXJeCokeiEUYrojsVVTMP6RI4r/JNH53EQVuPyGEVE
         N6iwfzE1YmszTVoYm3hRqZdpgG/Bvv8dtihORTaybOzxuV2wZPF0LOwiMo08CIyE25G2
         3ltOtgg94T1BcQAdHR58aUtFNe7HjNeQzuzfclzx4ur/npx2HylaEZ5J+B1OKEe1D3c3
         TZ9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=iKbU78VIf5fOOmTThNh7lnS5dfYeSWT/lSDm744SIO0=;
        b=kMgIIcnn5eMm+kE5fbXfPT+++1SKSDK7ifBtNQ9wxB5LozxksvHFV/tqZLi5O+s+7t
         bx0YkMDmZD+1ZdEiIXamdG1W2oG4JRIqiSX3DZvi3ITgvvLaSIkaJcE6BTwbjzdr9uA/
         xz7j48a5uyr4orcTbCgmZxSOjt6Nk0nRCukA9oF1mOktRFyPlv2lrai+pne4lmqnFAVJ
         BN7rEoQ9Bkhs8HZqYpGZZcknBXRSV/DTCFA1bxvN1LVmNyxKllvXAdnfja79B4A11de6
         UhN0n3qIlcY/9vFDh5Rb09JqHhHae09faz3OgdsaPThfpjKmI9DaaRnAdbns7cuHxsHq
         e2Vg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vWNPt7nW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id u44si474599qtb.5.2019.09.06.15.35.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Sep 2019 15:35:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id y5so2759416pfo.4
        for <clang-built-linux@googlegroups.com>; Fri, 06 Sep 2019 15:35:15 -0700 (PDT)
X-Received: by 2002:a63:6193:: with SMTP id v141mr10207909pgb.263.1567809313806;
 Fri, 06 Sep 2019 15:35:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190830231527.22304-5-linux@rasmusvillemoes.dk>
 <CAKwvOdktYpMH8WnEQwNE2JJdKn4w0CHv3L=YHkqU2JzQ6Qwkew@mail.gmail.com>
 <a5085133-33da-6c13-6953-d18cbc6ad3f5@rasmusvillemoes.dk> <20190905134535.GP9749@gate.crashing.org>
 <CANiq72nXXBgwKcs36R+uau2o1YypfSFKAYWV2xmcRZgz8LRQww@mail.gmail.com>
 <20190906122349.GZ9749@gate.crashing.org> <CANiq72=3Vz-_6ctEzDQgTA44jmfSn_XZTS8wP1GHgm31Xm8ECw@mail.gmail.com>
 <20190906163028.GC9749@gate.crashing.org> <20190906163918.GJ2120@tucnak>
 <CAKwvOd=MT_=U250tR+t0jTtj7SxKJjnEZ1FmR3ir_PHjcXFLVw@mail.gmail.com> <20190906220347.GD9749@gate.crashing.org>
In-Reply-To: <20190906220347.GD9749@gate.crashing.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 6 Sep 2019 15:35:02 -0700
Message-ID: <CAKwvOdnWBV35SCRHwMwXf+nrFc+D1E7BfRddb20zoyVJSdecCA@mail.gmail.com>
Subject: Re: [PATCH v2 4/6] compiler-gcc.h: add asm_inline definition
To: Segher Boessenkool <segher@kernel.crashing.org>, Jakub Jelinek <jakub@redhat.com>, 
	Rasmus Villemoes <linux@rasmusvillemoes.dk>
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	"gcc-patches@gcc.gnu.org" <gcc-patches@gcc.gnu.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=vWNPt7nW;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

On Fri, Sep 6, 2019 at 3:03 PM Segher Boessenkool
<segher@kernel.crashing.org> wrote:
>
> On Fri, Sep 06, 2019 at 11:14:08AM -0700, Nick Desaulniers wrote:
> > Here's the case that I think is perfect:
> > https://developers.redhat.com/blog/2016/02/25/new-asm-flags-feature-for-x86-in-gcc-6/
> >
> > Specifically the feature test preprocessor define __GCC_ASM_FLAG_OUTPUTS__.
> >
> > See exactly how we handle it in the kernel:
> > - https://github.com/ClangBuiltLinux/linux/blob/0445971000375859008414f87e7c72fa0d809cf8/arch/x86/include/asm/asm.h#L112-L118
> > - https://github.com/ClangBuiltLinux/linux/blob/0445971000375859008414f87e7c72fa0d809cf8/arch/x86/include/asm/rmwcc.h#L14-L30
> >
> > Feature detection of the feature makes it trivial to detect when the
> > feature is supported, rather than brittle compiler version checks.
> > Had it been a GCC version check, it wouldn't work for clang out of the
> > box when clang added support for __GCC_ASM_FLAG_OUTPUTS__.  But since
> > we had the helpful __GCC_ASM_FLAG_OUTPUTS__, and wisely based our use
> > of the feature on that preprocessor define, the code ***just worked***
> > for compilers that didn't support the feature ***and*** compilers when
> > they did support the feature ***without changing any of the source
> > code*** being compiled.
>
> And if instead you tested whether the actual feature you need works as
> you need it to, it would even work fine if there was a bug we fixed that
> breaks things for the kernel.  Without needing a new compiler.

That assumes a feature is broken out of the gate and is putting the
cart before the horse.  If a feature is available, it should work.  If
you later find it to be unsatisfactory, sure go out of your way to add
ugly compiler-specific version checks or upgrade your minimally
supported toolchain; until then feature detection is much cleaner (see
again __GCC_ASM_FLAG_OUTPUTS__).

>
> Or as another example, if we added support for some other flags. (x86
> has only a few flags; many other archs have many more, and in some cases
> newer hardware actually has more flags than older).

I think compiler flags are orthogonal to GNU C extensions we're discussing here.

>
> With the "macro" scheme we would need to add new macros in all these
> cases.  And since those are target-specific macros, that quickly expands
> beyond reasonable bounds.

I don't think so.  Can you show me an example codebase that proves me wrong?

>
> If you want to know if you can do X in some environment, just try to do X.

That's a very autoconf centric viewpoint.  Why doesn't the kernel take
that approach for __GCC_ASM_FLAG_OUTPUTS__?  Why not repeatedly invoke
$CC to find if every compiler __attribute__ is supported?  Do you
think it's faster for the C preprocessor to check for a few #ifdefs,
or to repeatedly invoke $CC at build or compile time to detect new
features?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnWBV35SCRHwMwXf%2BnrFc%2BD1E7BfRddb20zoyVJSdecCA%40mail.gmail.com.
