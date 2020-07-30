Return-Path: <clang-built-linux+bncBC2ORX645YPRBLEJRT4QKGQE2IOUPAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 007252337BB
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jul 2020 19:34:37 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id r29sf3857713wrr.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jul 2020 10:34:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596130476; cv=pass;
        d=google.com; s=arc-20160816;
        b=aNXYkAbkm0mhuZlde0G27I5zof4eqe2ethwgyZv6tM274CW7kr8TyJD1UyYMeLzl6o
         hEahkfCX15yc0u6nNBOs7miGkpZogWJUNT3edJECXhR45PzjBk/7LoGyX1VKrmqscsbg
         Wgntuow8D4S2WdyhEwFf15Guc4/ajEBmIPWRfF30OjRJiwk1IU+Miiz6gOAMSaTQ6wFX
         tKx3lQ+Nm9UuSIxwbgI89QxR6Dx7BokoGTImUxOrJeTbDsuZ1I2o0PJjssiN+/r1iwiB
         QdbAIDEJxicZuKZdm+jm3dT9kV+eHI1ydDtzGAU9veuUxCkS7ptDiJXeyMvrCxvmaV4M
         jJ0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=UHF1heqywdN+4OnpCtK7bTzGiulD7fqmfaMVh9jAoPw=;
        b=UQqQGqdt+gbuW42qlWkaYLDN5lnPJ/7xrCQS8ZyoJag8O5SjpbbyRER/gopBewihH0
         8Yecklz3BkiXtdNsWOOrf83V18nAp8ZtF6Qqxk4CXEbhXZQSV9u5gs0pHDfablagvCz1
         s9HSx4nnZrc/9vDkm5cGWL36K7n5c0TnZuQV0kEeIHvX5T8Pqpd2bycgmHDgg6CXqAh/
         0sgLWr4YYctquaANt8OUzSqE0eUgItNmRFc6fB1TlgKYLp5SSm0fDy+8KqucRJn56YJW
         tSaXgj3Fgz5cTzF2w486nQ6R10xw8dmWUj4MRpvcL+0/XnWSssNRDR/uhYdCsEZadsbS
         l71Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=j7DAd+sH;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::643 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UHF1heqywdN+4OnpCtK7bTzGiulD7fqmfaMVh9jAoPw=;
        b=jvCWgQ1VFsMqmjpKH19m2C9ZALSAuh+WFHL9NJhW9zozjyWYLJzDw1yxyNdAMps6R2
         vv+dHgfOikM8+B3axd2jTTh9xcPncuLY01cdijGIVDHqJM1LSTJAQr2VFaVbarnd6TrA
         biuIiY2s2pJqOgsh/oT3HLhTe9v2bgshyPp6eMdW/0EgZpnnNsQ0C+uc3NBIHyWUnO8J
         L14JQKaPpMzVA3cFqseuO5BD8IkgXUFMhp/9Ft5r2ZJP7PMPCNQXhhYLz35EByZDgzGS
         AlYmjWi42aPiHjAWhUW3vPFKHWjj8St33bEVOUkrfADOqmucuSlG6B5H3idMrylPuSX9
         fjqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UHF1heqywdN+4OnpCtK7bTzGiulD7fqmfaMVh9jAoPw=;
        b=IfDoG1gQETW/zwQAWRTERmOuXPOq+rR5OzOGnDTwjhL0xm1tzzIj6US2TfZN8w16bS
         Z1YHHvWtRPJgsjsVqz5dwkYvSiw0DkrOThcXQHsDsCUNlRCNc99fDiWQiVAaRKiXyGBN
         DAwfQzKTZ7TbqQiNrQqT/D2Gsz16NhLR8pgld5nDH8+45//+7ijVbomXWc9jKXBFHDM9
         ouYxaHkwSgAWmM3t4c+yuevcgfLKi3Rh3nVtNGox5srZZPpy06DdicrmYzRl42Sd6sGo
         kNhlIGS6ZfGSdokVpMrwUtj0kZbiCGgK+JcH5hwk5sWU8uSkWc8R9QZ+RZGMy7fpoRqX
         DF7g==
X-Gm-Message-State: AOAM533Jk62ja5OyJzzVcnQ6pi0fgFKSlOY7CDF4NHcWcBAz1CVFitcC
	QAJwlBamx/0yggYUviGA1Xo=
X-Google-Smtp-Source: ABdhPJyRAM0X9WxRvSBoDpOulr78eny/oeslDKXIbt6aNgTWOVLY5eIom+dHy92Ij+h/QolSmW3GmA==
X-Received: by 2002:a1c:f204:: with SMTP id s4mr311629wmc.9.1596130476601;
        Thu, 30 Jul 2020 10:34:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:b1cf:: with SMTP id r15ls1252314wra.3.gmail; Thu, 30 Jul
 2020 10:34:36 -0700 (PDT)
X-Received: by 2002:adf:f64f:: with SMTP id x15mr4000000wrp.180.1596130475953;
        Thu, 30 Jul 2020 10:34:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596130475; cv=none;
        d=google.com; s=arc-20160816;
        b=uHMROAlIe+wX9OGFrWISy21c4RM4/YhXtyqmPEWHkza2FbpmlZkb144MInDkUZvaCD
         Be4wLo3l90XgLfwrVt5aAfs5YlOEOuxVpcIksrVvW8HZrMpF99q6dD7TpF8gMMYy1Uf8
         lIbOpRO/oC/WEHvE9gYFu35+o/mjy08sjJbRnC6o0GYa2RQ1DqjKvk3asOHJF8vnancu
         DTwvwsIUFJqFmkeGAS2b51BvkMyPtOAcoBhaly6G9yoI6yZRd8dOjuU8dRZspETh1q0V
         ptcX6w2dI7krJzOoO8FkUyLHdMaC/sHs84TAWazMGQOV1pqqy4jAkEAqR4MqGI1wnzis
         ImjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=GuZsBZ4FLSs9DhBM1ftF7hTsqpq1dRFqVaVn0cYFE4g=;
        b=xelXPkbKtjBh5v6yE4cFVmeRJaysFk2PzLLhTi58WneCEa8XBM9CAn2YPixbgiGDUw
         MgYejklkiD+d9zxfj96eNZEqb5rzrNehPXSYCInqpBd8H1XYRH4DnHeUvp4mpfEfDFIM
         Or3ZggdSEbZ0MsP60144mVs9XI4zGv6AHbrOXBn16GM0d7tijWgdWg34WSWSTPZsqrY5
         aSTJYvwqqlRI6G8aBX1ZnPglQxTabs/zPj9X4KaNj4i8sTc46prENi089GwiT1TXDuZS
         rTlxOIQCY75LB9tyfsrUdbOu2TV7/m+fj1jV+mt1oRrH4qsJVzhe/RcM350v3d70HA2F
         FZuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=j7DAd+sH;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::643 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com. [2a00:1450:4864:20::643])
        by gmr-mx.google.com with ESMTPS id m3si388315wme.0.2020.07.30.10.34.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jul 2020 10:34:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::643 as permitted sender) client-ip=2a00:1450:4864:20::643;
Received: by mail-ej1-x643.google.com with SMTP id l4so28717176ejd.13
        for <clang-built-linux@googlegroups.com>; Thu, 30 Jul 2020 10:34:35 -0700 (PDT)
X-Received: by 2002:a17:906:a204:: with SMTP id r4mr171760ejy.552.1596130475360;
 Thu, 30 Jul 2020 10:34:35 -0700 (PDT)
MIME-Version: 1.0
References: <20200729215152.662225-1-samitolvanen@google.com>
 <20200730153701.3892953-1-samitolvanen@google.com> <20200730172430.GC3128@gaia>
In-Reply-To: <20200730172430.GC3128@gaia>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 30 Jul 2020 10:34:24 -0700
Message-ID: <CABCJKucATXjvTgiAp2G+WOWPFSiFPCZx6YDHj95YYiMLgoQHrA@mail.gmail.com>
Subject: Re: [PATCH v2] arm64/alternatives: move length validation inside the subsection
To: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Kees Cook <keescook@chromium.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=j7DAd+sH;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::643
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Thu, Jul 30, 2020 at 10:24 AM Catalin Marinas
<catalin.marinas@arm.com> wrote:
>
> On Thu, Jul 30, 2020 at 08:37:01AM -0700, Sami Tolvanen wrote:
> > Commit f7b93d42945c ("arm64/alternatives: use subsections for replacement
> > sequences") breaks LLVM's integrated assembler, because due to its
> > one-pass design, it cannot compute instruction sequence lengths before the
> > layout for the subsection has been finalized. This change fixes the build
> > by moving the .org directives inside the subsection, so they are processed
> > after the subsection layout is known.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1078
> > Fixes: f7b93d42945c ("arm64/alternatives: use subsections for replacement sequences")
> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > ---
> > v1 -> v2:
> > - Added the missing Fixes tag and dropped CC: stable@.
> >
> > ---
> >  arch/arm64/include/asm/alternative.h | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/arch/arm64/include/asm/alternative.h b/arch/arm64/include/asm/alternative.h
> > index 12f0eb56a1cc..619db9b4c9d5 100644
> > --- a/arch/arm64/include/asm/alternative.h
> > +++ b/arch/arm64/include/asm/alternative.h
> > @@ -77,9 +77,9 @@ static inline void apply_alternatives_module(void *start, size_t length) { }
> >       "663:\n\t"                                                      \
> >       newinstr "\n"                                                   \
> >       "664:\n\t"                                                      \
> > -     ".previous\n\t"                                                 \
> >       ".org   . - (664b-663b) + (662b-661b)\n\t"                      \
> > -     ".org   . - (662b-661b) + (664b-663b)\n"                        \
> > +     ".org   . - (662b-661b) + (664b-663b)\n\t"                      \
> > +     ".previous\n"                                                   \
> >       ".endif\n"
>
> Acked-by: Catalin Marinas <catalin.marinas@arm.com>
>
> There are a few instances of the .org test outside the subsection,
> though using in .S files. Are those ok?

Yes, this only appears to be a problem when used in inline assembly.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKucATXjvTgiAp2G%2BWOWPFSiFPCZx6YDHj95YYiMLgoQHrA%40mail.gmail.com.
