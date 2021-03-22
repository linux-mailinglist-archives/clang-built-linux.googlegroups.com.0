Return-Path: <clang-built-linux+bncBDE6RCFOWIARB5UG4KBAMGQE53OIDFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id C1D19344017
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Mar 2021 12:45:58 +0100 (CET)
Received: by mail-lj1-x237.google.com with SMTP id a22sf21554959ljq.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Mar 2021 04:45:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616413558; cv=pass;
        d=google.com; s=arc-20160816;
        b=t9uX0ndxmIItmVezTIhhkMMrbmEEFJKuijZiLqh/hgMhgfDLx7OkjqmrzjkkmoVvrs
         IO8Be+b7ZC7c1jAz4Dhs1fA468rAjolzPVjbfH4nzISOUrCa3v2JKaoAUzSeKecpMuBh
         2XEx99CERoCENtN25rtDNd5DET6znPvNQ/staaFXceDOxNRKjpINW0mc8d9kw8b/VN5U
         K9pHHVCtRBk29yNtCJXo3a59Gm6fEvBHXC+vnXnSZQC9GjJzBrDjbg8W+aujGcYeZmez
         wO+LQWPj1aKCRbWbjwmJ8Vru4UODdsqNIXTZydbIFlKAr0graCKgUnaC1IVlJnZs8Ip+
         qdPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=4C15h+lwRZM3AaSS+xansBM95kEIT27gHpZyxRvwhH8=;
        b=WLtP7wzvlREzFwvRjmDZ0bFFr3R7J3ewwfh5n+X0Feds+NMFuIte/r7xL1mX28rGH7
         dsmLI51uzZcNBx6hlPjHaL9Oy5Qr4GMSChZ7pMGEd2fdALt05Dj/1Y7/UpTk+jQBHJUo
         jIwUrs+DSid/LUW74FUkJlm/8c25Ui5QZHFBNPJgco/GQTfSYPlq/0cOi2T/1GaWso/f
         FFCT07v3dWQtGFMkYM8evkfBvL+JqAqbO6WXeFr+wyme1yzLa9Kphz7LNnshJWe34xhI
         q+yONK2G8ykkup4x4GkB9el8ZlBQjuiDMZYFUnHO2ygJRuyygGGDXiyxIpJPH1EGZ7wN
         7y0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=P9wPcvkH;
       spf=pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4C15h+lwRZM3AaSS+xansBM95kEIT27gHpZyxRvwhH8=;
        b=HiwTWiOhnspRpDt0kPKGhiMwIKh5030vORyqrJRg7cMK9LtISA+F6J+aKr+vDcCHzH
         sYYlK+BIIyLzpfMjO3JKSvlz2IDAzKpVOPWeZ2PU41tzmDfiq32mzbt0GzcjPnSExYd9
         eczk8+ci31fiI9opKNuDjgaDQLZeQBXLabhI6goODfmdwmqbWBqOjsoA1JD0UGM3oJLU
         +MiRjmBpAjXESEmYjE7877rXw4qGMCa+PV8qQHLOrvkncXUNakEGe8d3+yTS4wxIHSWO
         IjJAWdvgLOn6ZrnhpEn0ucbY/RIyH9OdZ4QjgaZ3v6aMZLJhh0awUFqwIDkKr6J7OwVh
         ELgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4C15h+lwRZM3AaSS+xansBM95kEIT27gHpZyxRvwhH8=;
        b=cQ+tjcMw1DTEAFqZkdE0Qb0/vLheDbm64u29tV3Ra1j6Dje7rXKbPvu2Axbn9ff0MS
         eG2opCPMFisWGThibeC9KtDDuytbzt5EYPDlnm4/HvY43vwPVIDghQ6QylNIboTzpbn2
         yyp7fiZEf7f4xsVOCN4lUD5mWx8q1ZOQM48BsFgRPuitbw15sfQP8tXAYbub72YNsIlk
         KbHhu+fTkmG47Gpe9X4fNmjJrRgsP74484QKpZhNFdDR9NrNOF4X/luW5kCn9+b9JQGI
         YWHhA4Vz39Wgoa3ZElyAwb/wOeZ0+Yr2NKUp8fBxLi4TvDylBfywV/vvFJlo2D76fyd4
         z1Bw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531IX5q2Wflzudwx1UwKTPVEoBSKgslfrV+mKw09+zyYJknbakti
	Fh32MTW3FxrJfLeg2Nge0x4=
X-Google-Smtp-Source: ABdhPJxnvoJEa3AyiWGrJhn8ovCSIfZuKhkj0jfEj0HMPxlM09xlLn8VJfFom1PGkaaEZLS4tHrEqQ==
X-Received: by 2002:ac2:4316:: with SMTP id l22mr9039292lfh.338.1616413558348;
        Mon, 22 Mar 2021 04:45:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:58f8:: with SMTP id v24ls2400714lfo.2.gmail; Mon, 22 Mar
 2021 04:45:57 -0700 (PDT)
X-Received: by 2002:ac2:5382:: with SMTP id g2mr8877906lfh.60.1616413557336;
        Mon, 22 Mar 2021 04:45:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616413557; cv=none;
        d=google.com; s=arc-20160816;
        b=qHgTHlcg8Fo/9+fsptFSyIODZLVekmEpeDrYkCHKpq4nV4BdyOhuZAywLRvmt2FnYw
         fACtTk7QBCnNWil94ZD0x6+rdu7S1ztDjQZSa/cUBwJad7oMFeu/ArCuJZSLjGDYk8BD
         F8BXAqqkejCP5SvDp7gvnuLLcZsUtCc8qbSvFP65dzoywCeUrcsd+kMF5S0ubP+Ts/3g
         ogKtnXElFLROZBY2OVzexbXmB2xfKBgyLSnlNih5BtIkFRWe8vcKET0sKd+dAq71BS5Z
         4jBaZ7RdZp7KJYzl3EXE5gkDe6KgKbRO5c79xh2zPy+oqNdOioK2BCaPvJPYQBLieBQz
         urdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wRuJKDLONwqvRSEZw7q4XL+dQi5no/glykgD4QfcHoc=;
        b=p+2ukvy5qXQe52dmKjCWIOq6sqWsOldA8H+cZIn6a8Qaoz5TdOX8ulSSLTSX9QHTQa
         bzveMyYpFW0mfZqd2waO+q9YM4G2UWe9GVFp9uVPd6dxFtKq0vc+Rqh7MVKtqNqRB4d/
         9VMBM+PJuCRClTWSjUvO6Pt3MUsz19T6j6wQncjRYKdwK3yspAiX43HJ6N0QOCGfHaK2
         JkhFvfvqHLV+ORF2N1pQQqoE+ENQOdI4GQgTQZvcpW3GsJY4cFNoIduZnXlMWT5mmIEJ
         Qs+b8zzcaYIP2iVuh7t+y4r8MYwbCs9TduVpuEQZBGTIQWHKl/RFA21egV7Cjq641xMy
         W65A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=P9wPcvkH;
       spf=pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com. [2a00:1450:4864:20::131])
        by gmr-mx.google.com with ESMTPS id q3si543306lji.2.2021.03.22.04.45.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Mar 2021 04:45:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::131 as permitted sender) client-ip=2a00:1450:4864:20::131;
Received: by mail-lf1-x131.google.com with SMTP id a198so20756441lfd.7
        for <clang-built-linux@googlegroups.com>; Mon, 22 Mar 2021 04:45:57 -0700 (PDT)
X-Received: by 2002:a19:6b13:: with SMTP id d19mr8543421lfa.291.1616413557065;
 Mon, 22 Mar 2021 04:45:57 -0700 (PDT)
MIME-Version: 1.0
References: <20210223023125.2265845-1-jiancai@google.com> <20210223023542.2287529-1-jiancai@google.com>
 <CACRpkdYC3iDD23SESM0j2=f56kr6ByKeedDQvkGwXbUC0br0fw@mail.gmail.com>
 <CA+SOCL+M5YfhygG=ogqvqp7y40v+32RiteGr=53THzwvdGugyA@mail.gmail.com>
 <CACRpkdYrqy78EfB_+UY0QtA0v0tD+_+O09Pod8-1Vd-p-VyMWA@mail.gmail.com> <CA+SOCLLo2MdxCH3gFONHsKdvmGGm2vZuML9QdQfWuX2--qFEOA@mail.gmail.com>
In-Reply-To: <CA+SOCLLo2MdxCH3gFONHsKdvmGGm2vZuML9QdQfWuX2--qFEOA@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 22 Mar 2021 12:45:45 +0100
Message-ID: <CACRpkdbF43_CjSFNu_4FUCEqOB8CebrpXJpkzeW8TnPpRELBtg@mail.gmail.com>
Subject: Re: [PATCH v5] ARM: Implement SLS mitigation
To: Jian Cai <jiancai@google.com>
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
X-Original-Sender: linus.walleij@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=P9wPcvkH;       spf=pass
 (google.com: domain of linus.walleij@linaro.org designates
 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Wed, Mar 10, 2021 at 5:43 AM Jian Cai <jiancai@google.com> wrote:
> On Sat, Mar 6, 2021 at 4:25 AM Linus Walleij <linus.walleij@linaro.org> wrote:
> > On Fri, Mar 5, 2021 at 12:23 AM Jian Cai <jiancai@google.com> wrote:
> > > On Wed, Mar 3, 2021 at 7:04 AM Linus Walleij <linus.walleij@linaro.org> wrote:

> > > I think gcc also has these options.
> > > https://gcc.gnu.org/onlinedocs/gcc/AArch64-Options.html
> >
> > And how does that work with this part of your patch:
> >
> > +#define SLS_TEXT                                       \
> > +       ALIGN_FUNCTION();                              \
> > +       *(.text.__llvm_slsblr_thunk_*)
> >
> > This does not look compiler agnostic?
>
> You are right, GCC does generate different oraphan section names. I
> will address it in the next version of the patch. Also it seems only
> arm64 gcc supports -mharden-sls=* at this moment, arm32 gcc does not
> support it yet. I don't know if there is any plan to implement it for
> 32-bit gcc, but should we patch arm32 linker script preemptively,
> assuming the sections will be named with the same pattern like how
> clang does so the kernel would not fail to boot when the flag is
> implemented?

I think the best thing is to have something like this:
Implement a macro such as this in
include/linux/compiler-clang.h

#define SLS_TEXT_SECTION *(.text.__llvm_slsblr_thunk_*)

then the corresponding in include/linux/compiler-gcc.h
but here also add a

#define SLS_TEXT_SECTION #error "no compiler support"

if the compiler version does not have this.

I don't know the exact best approach sadly, as the patch
looks now it seems a bit fragile, I wonder if you get linker
warnings when this section is unused?

Yours,
Linus Walleij

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACRpkdbF43_CjSFNu_4FUCEqOB8CebrpXJpkzeW8TnPpRELBtg%40mail.gmail.com.
