Return-Path: <clang-built-linux+bncBDQ2R56ST4HRBQW45GBAMGQEJIBVMZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id E26B1346D5F
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 23:40:08 +0100 (CET)
Received: by mail-oo1-xc40.google.com with SMTP id c199sf211133oob.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 15:40:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616539202; cv=pass;
        d=google.com; s=arc-20160816;
        b=V44k68OQV/YFyFrz0QnPIV7AUKCABQuRFP66zsRx4DIQdaihaYjN6+B5JXM3HqmNEg
         7IzGfyDIQ4zuvhxsHUfYdoLnxEKX6lFmZnVWLPXHXE6MnIWZpGinqC1o7h9JdOy36VxP
         8ligW5ZIfTfjX6+/8ToT17T0KdmJw9WHIU8uMji4dQA7fAwud2z4dg1yY1bLseWAbpWt
         HJdw+FGqlhyFwZhcrKsYwzlam9Bk3E9E0ze5yRf2mrlW4zfFih7SelslChyX0ASWt6WJ
         XdeZ547wqM1pUy7lexZMjUbO67rEVYZq44eWGavz38ymkXfBrfLnwbGDXgAYSe3ohbrD
         YrhA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=S6Yc6SJxRDI0VCMxg4kwcNLXnAXE0gPLQXZ9/47AdQg=;
        b=dQapi7Eg7Oll36hILsKICQkR40dr3kcXvMjiJbTy9WlSVBeesIu6lrL9PsT9SEnr/O
         XuF3tWV00f7mqwW8r5kvVo2vPUbOpk2aTjYQ+d6ep0CAhornbkq3bIJp+PK7OLpYDMpi
         mrXv13FB73tA3IoveF9sHRqXuOob7GcnyWRoS7SedkgJA4jR6hb+5QS2HtKnEebes+wU
         pRYc3WIScDg3GORdKGj3DxJS4uQaFqYi4RwrCJaLeoXCx0JRL7TcFg5McT43Bw5TV+ah
         R4/9yh/bAVmaBbi+rMG0cEV4YmKr6g76qwhXUsFHtNCfPz0hFix1Tj+bfnJ96o5ApLwh
         uFhA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Pe81cQ60;
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::22a as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S6Yc6SJxRDI0VCMxg4kwcNLXnAXE0gPLQXZ9/47AdQg=;
        b=rzeijQncsEJX5OMBTNtEy4lJiEVw017Dmo1YCS4MnFN1u2D+Nq6Cx2MHO13EZM66MD
         H9dAPwsj36lqEpzW6Nk3hBkJL3ds0avUix2vCiOyPZJGI0lrSxYY+/mzG40ebjvTdkTo
         51i86tS+NHPfGiD3dCLQenqxiosU2as2E2NLmpZ01PlOl4nygxBRnHLymv1x+6N8yWhs
         K4Cmbw14HTod30uHVaiODlSlDlK3osJ2Hc1gZ3JLP30Bq7i4vaCeq2sETK958pGafF2N
         lkcjRnUmmoRXKFMw6wTSocjNjI1br1GrsAIhDboZdGQu4z0CCVqGgJ6S3Q8XX2IRAuo9
         jxMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S6Yc6SJxRDI0VCMxg4kwcNLXnAXE0gPLQXZ9/47AdQg=;
        b=FCvXviyXsZ9G7fC3iqNRC3xmctRZAgTn4MKeqoMfqj+/E4zM2Ik+ORG3x2Azlapb71
         Qrata6BjkTHPwxfzs8XAukgYeA5WLsUuBEb+PhvRJ/gOIumaBdQ3bXLs1UgJMytDGXS3
         ZiWhaNtDx4ecUYhSoPlozWizdEuAXkE4lrtVtURDnNEHcysqfSaLBvacaca0caQDKlAF
         rZk0x6Aeqe8GkhXbL8qJx0kRV50zZENSQldCKfXzdfnG9NYlhVXb7E+D+ddXTTrnKv9r
         ZdNAK8l8ac36z9xUv82bJLQcBvMNigA5mbejS2564AmMjiyrkGBU66OCVIeqBXVTHSnW
         tbbQ==
X-Gm-Message-State: AOAM532kxgF+89DVkKgyyOkBeBpCGGuc1itTKehcfnss2FYwFYCoxnEg
	EPOb7oiB0dECegWIPU59Oik=
X-Google-Smtp-Source: ABdhPJwwVfpMvDiPtqbJaJB/DVNnhtpmh/kr2/jxqMD/8EMzvkqKtChK/VYfd92Z4GJWsMBFxrRbhw==
X-Received: by 2002:a05:6830:1de9:: with SMTP id b9mr490670otj.137.1616539202738;
        Tue, 23 Mar 2021 15:40:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:65cf:: with SMTP id z15ls94585oth.10.gmail; Tue, 23 Mar
 2021 15:40:02 -0700 (PDT)
X-Received: by 2002:a9d:4719:: with SMTP id a25mr516644otf.101.1616539202356;
        Tue, 23 Mar 2021 15:40:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616539202; cv=none;
        d=google.com; s=arc-20160816;
        b=vGb78Uo1SnVcFrBRr0iusSuoagPq12Fp3QL6IdqmR7dxpPO3bQVF70XxuxBfXBuqAX
         dWI48kZJFuyTS+1elUZQtoVE1ppFtoC/d1CTYjuAFo/Od929hifRnd0tOsehXLppLl7k
         /bGR1jur/TWgqer8JGCg1+Ivxaq2G+lEntmrqvxMXrbfWThhOAQ9yxBAu5xOxAglRLx4
         kany/tp6Wop4BlZC5HAT+nDifKTBxEqQZcG5jpIdjmgG/g7KtMlmCJtDPYdEgjzD5Ld4
         qCTCNF+IF16XI7s+CnWzQ4JMGiREOYrcxiRV2DRf76BgXUjPbSiJqfJmA1o23rIqOFGI
         oB5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=2K8tLkChb+506zF+z/6B3jJAVVp0oMTr1r3/3aTgbn4=;
        b=bkzNShl5ish1RZVkdhF7rWaKiOyQN+oRXZsHVzOKRG4zSJ9bDv4NdQb/yvpViJyuGH
         FIuAiiPRVzyyH5SR6NEMVTddC9s5esZ3KQkX2klzZmNs7cIGPMYdq2L1Nmn3Ox8QCiPQ
         22jX9g/hUFoZg7QBKqlC1g60M5kulxXGJeIFCZHstryL9XEovP3MPhjTvsfpUi2vv7bJ
         Fgekv8gw5so12ZBNkbdOE4gPSU3h+hjYgBFurX/L7BKQ2wRduDIZyHVjmPmsrImmLRUo
         O2ph8eO4gmdevaGEwFA5krhcqaF39YIPlg1dvTPWKCocX2QB8MJs6huAVQrlUWhJvzz0
         nS1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Pe81cQ60;
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::22a as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com. [2607:f8b0:4864:20::22a])
        by gmr-mx.google.com with ESMTPS id z24si25915oid.3.2021.03.23.15.40.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Mar 2021 15:40:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::22a as permitted sender) client-ip=2607:f8b0:4864:20::22a;
Received: by mail-oi1-x22a.google.com with SMTP id f9so18799708oiw.5
        for <clang-built-linux@googlegroups.com>; Tue, 23 Mar 2021 15:40:02 -0700 (PDT)
X-Received: by 2002:aca:c683:: with SMTP id w125mr263549oif.43.1616539201756;
 Tue, 23 Mar 2021 15:40:01 -0700 (PDT)
MIME-Version: 1.0
References: <20210223023125.2265845-1-jiancai@google.com> <20210223023542.2287529-1-jiancai@google.com>
 <CACRpkdYC3iDD23SESM0j2=f56kr6ByKeedDQvkGwXbUC0br0fw@mail.gmail.com>
 <CA+SOCL+M5YfhygG=ogqvqp7y40v+32RiteGr=53THzwvdGugyA@mail.gmail.com>
 <CACRpkdYrqy78EfB_+UY0QtA0v0tD+_+O09Pod8-1Vd-p-VyMWA@mail.gmail.com>
 <CA+SOCLLo2MdxCH3gFONHsKdvmGGm2vZuML9QdQfWuX2--qFEOA@mail.gmail.com> <CACRpkdbF43_CjSFNu_4FUCEqOB8CebrpXJpkzeW8TnPpRELBtg@mail.gmail.com>
In-Reply-To: <CACRpkdbF43_CjSFNu_4FUCEqOB8CebrpXJpkzeW8TnPpRELBtg@mail.gmail.com>
From: "'Jian Cai' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 23 Mar 2021 15:39:50 -0700
Message-ID: <CA+SOCLJTSHs9CZc+h0bWz=k5UUp5zLSLFwLyVGdr1v7O3VUOew@mail.gmail.com>
Subject: Re: [PATCH v5] ARM: Implement SLS mitigation
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Manoj Gupta <manojgupta@google.com>, 
	Luis Lozano <llozano@google.com>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <nathan@kernel.org>, David Laight <David.Laight@aculab.com>, 
	Will Deacon <will@kernel.org>, Russell King <rmk+kernel@armlinux.org.uk>, 
	Russell King <linux@armlinux.org.uk>, Catalin Marinas <catalin.marinas@arm.com>, 
	James Morris <jmorris@namei.org>, "Serge E. Hallyn" <serge@hallyn.com>, Arnd Bergmann <arnd@arndb.de>, 
	Masahiro Yamada <masahiroy@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, Marc Zyngier <maz@kernel.org>, 
	Kees Cook <keescook@chromium.org>, =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>, 
	Ard Biesheuvel <ardb@kernel.org>, Ingo Molnar <mingo@kernel.org>, 
	Andrew Morton <akpm@linux-foundation.org>, Mike Rapoport <rppt@kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, David Brazdil <dbrazdil@google.com>, 
	James Morse <james.morse@arm.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, linux-security-module@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jiancai@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Pe81cQ60;       spf=pass
 (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::22a
 as permitted sender) smtp.mailfrom=jiancai@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Jian Cai <jiancai@google.com>
Reply-To: Jian Cai <jiancai@google.com>
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

Thanks for the suggestion. I've sent an inquiry to the author of
-mharden-sls* in GCC and hopefully that would shed some more light. We
do get warnings for oraphon sections when using lld. The other linkers
do not seem to provide such warnings, although the boot failure also
does not seem to happen with them.

On Mon, Mar 22, 2021 at 4:45 AM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Wed, Mar 10, 2021 at 5:43 AM Jian Cai <jiancai@google.com> wrote:
> > On Sat, Mar 6, 2021 at 4:25 AM Linus Walleij <linus.walleij@linaro.org> wrote:
> > > On Fri, Mar 5, 2021 at 12:23 AM Jian Cai <jiancai@google.com> wrote:
> > > > On Wed, Mar 3, 2021 at 7:04 AM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> > > > I think gcc also has these options.
> > > > https://gcc.gnu.org/onlinedocs/gcc/AArch64-Options.html
> > >
> > > And how does that work with this part of your patch:
> > >
> > > +#define SLS_TEXT                                       \
> > > +       ALIGN_FUNCTION();                              \
> > > +       *(.text.__llvm_slsblr_thunk_*)
> > >
> > > This does not look compiler agnostic?
> >
> > You are right, GCC does generate different oraphan section names. I
> > will address it in the next version of the patch. Also it seems only
> > arm64 gcc supports -mharden-sls=* at this moment, arm32 gcc does not
> > support it yet. I don't know if there is any plan to implement it for
> > 32-bit gcc, but should we patch arm32 linker script preemptively,
> > assuming the sections will be named with the same pattern like how
> > clang does so the kernel would not fail to boot when the flag is
> > implemented?
>
> I think the best thing is to have something like this:
> Implement a macro such as this in
> include/linux/compiler-clang.h
>
> #define SLS_TEXT_SECTION *(.text.__llvm_slsblr_thunk_*)
>
> then the corresponding in include/linux/compiler-gcc.h
> but here also add a
>
> #define SLS_TEXT_SECTION #error "no compiler support"
>
> if the compiler version does not have this.
>
> I don't know the exact best approach sadly, as the patch
> looks now it seems a bit fragile, I wonder if you get linker
> warnings when this section is unused?
>
> Yours,
> Linus Walleij

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BSOCLJTSHs9CZc%2Bh0bWz%3Dk5UUp5zLSLFwLyVGdr1v7O3VUOew%40mail.gmail.com.
