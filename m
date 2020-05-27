Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBNEQXD3AKGQEHYDE76Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B5DB1E392B
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 08:27:01 +0200 (CEST)
Received: by mail-vk1-xa37.google.com with SMTP id n1sf8882912vke.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 23:27:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590560820; cv=pass;
        d=google.com; s=arc-20160816;
        b=oKvcGojFNUiAU7ynJgSWx2XCDNuqM4TobRdc0sKqlxYZVvZukgniflXu3/mRl3keGD
         N0ePDeUMvD2vzf2Bi+T2w67p6RZd6P0QHtCXdlECDUSWb41KZ9XpIdr4yW9B22me1SBJ
         Xehqr4Gj2uuwGSKZyu9MafwWiJ4gk2TBFxTlFMxykcZNHOZh6FYHL2aFpVXveK/3Smgb
         fn1iSMYciJUuPWfrguJutFvsUnbCYu6eUeTdeWmTbccB9FmxJFgGCjwLjn6jE1jS7k23
         WfoUYGnaA9QIk2N/vMsh4e6Wd26lt6xcsJCSPg+nV0gOF9k13Vf9XVep1mmcaZCMjX1L
         i+Pg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=66Bai3s/Ll+5kbxvgGYuEcVaRs+uzBqrMystaf+l7n8=;
        b=0kd/Rkq31XbQmRY8CsVjY2fFA2zb5vw3UqJuCsQiBynxelQIvdkPbSmt9QUUaWDj9I
         fdTCBxohps103DEqkyYnC8qu9MfcX9L7sE2frbfuuNZMKG9T1nAvzIJvYb4bk2wpSaXO
         5VamrrEsT7kzZtxjwPSIgrU/wF8/IRgcyHJJMuwjS0XFFWHG7elIpaVoewaiH9kTbf8c
         Jv5U62Fljbx8DNmUrJLKnDLyvJdPFK1IPk/4YbuM+vu4ShDMoLHB8tdVSzevhHq+Xt/m
         ocSi+zWEuiUnumY1tY0sR4AZnY849cnxfP+EYuWm69TlY3XwscNte73RQPViV5PqhgZq
         3icA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="DimA/hyo";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=66Bai3s/Ll+5kbxvgGYuEcVaRs+uzBqrMystaf+l7n8=;
        b=r8qHsK5WpyjrOyMCX3EB97rmiwepDgL4Ob9Y4LSxHWDUwlSJIK1HvC9bAVu/FBi4Sa
         DawA+tfL5wDLvw9eLBQbt8gZIA+CrcopGMIV/RTOb1WmE8PaIO+ii9cVuIkpJuKl71/C
         8GeFfzM6hTEtM5IiywN2VDy8UXCQRHx5thNz8EXRHwLlhVM/9CkCmYI+MN9q0c5yPFWT
         ZdLT6lPhOoIQUH64S1AtzpgPwKoU+X4BEFUzrkzJCBRpEJW1UI4CjpDzG5tQo2lP9HYj
         kwoT3D1tY8YrZnIUKsGSo9T8bE+KY7v+jdfRJAekklpwGS9Y70z0ax5lAyQvFOcOOn+y
         D6wg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=66Bai3s/Ll+5kbxvgGYuEcVaRs+uzBqrMystaf+l7n8=;
        b=G2t1R/aLXgvQ9Rat7HEQ5JXjLNqlOHk0DULa/1OdQi6H2+8sQW3wprEcOpSQsn213d
         TRoJ6ENmI0VDxYsCzDDJnga9Lax+BCiFK2BT6nles4ig8Feeul6quUcMJ7Gn9x6x8xYx
         yo+NRlY70t6kGm3n1ayiGKDGp6OKYo7o3C3dxDPI6rlFWYY6xFHCfiSdzJUrbdlrXlpT
         kwE+Cq3QXE+0GkjNvLIsXsAXxhuzh/Kw5M41jCgRUz0W1KIl7heY7QAk+lP0rTGe9hx8
         ENPIvK0OUsx3BOgPQWPwJgCmoVFgCYFBQVGvRxSpPwgOVMJw6Iito1OeChCk+JCxZslr
         ryJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=66Bai3s/Ll+5kbxvgGYuEcVaRs+uzBqrMystaf+l7n8=;
        b=H9nsQGteOq4UtFg+Ewe/Hmn8wqVVOOX9OsSeny+f9S8n7pplbqo7JQL5ThwJFfFxlC
         p5na8zeqVszuaAaAo2RA0CKXm+xhiAOfmWgG8Jx+2d7kohH1KkLa2/4N2EA8Ea5BmCWy
         Plcwqgdm7aPf7d6AuTjnTg48Kk/WGhgxXImT3QqU1pGwvoFVr5FurE25Ux94z6zmakGX
         U7NTDJJAK2RZP731ehkn69w/q/2Ucu8p14+ZPjzBxHyvCTRADN6sXptt6BN3+nDoivsZ
         ghrka4JPb1BW/MlLOg9xEgAdXXK3B0GT8EdUrYemG4lszKvCpEdSs+fPUmZRoiWWta1M
         +Y4Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5300fzWbeSyL2CKwCT9uxh8J/66YnaQXXdxzFTLdBcf3c8QldQn5
	GY1F0ThGJKVmkA+8KZrFCC8=
X-Google-Smtp-Source: ABdhPJzO9YwD/RIgPGGdHSaf/MyPjwZMmqqtywMNOllRVdgV2alXy3TbYIVrzdZiUO4YiD9FjJ9Fkw==
X-Received: by 2002:a67:8792:: with SMTP id j140mr3605415vsd.40.1590560820633;
        Tue, 26 May 2020 23:27:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:6581:: with SMTP id z123ls1408113vsb.9.gmail; Tue, 26
 May 2020 23:27:00 -0700 (PDT)
X-Received: by 2002:a67:2f47:: with SMTP id v68mr3537109vsv.151.1590560820245;
        Tue, 26 May 2020 23:27:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590560820; cv=none;
        d=google.com; s=arc-20160816;
        b=LMRqVFjbd4jRkgTWkq5UrG9U0K6dqCH8zTQkx5JA2pFuOImcTE+1jFGM++DeKs37Qa
         DynPtXBYXoGCf0V2KkMegbd/LT7SzdchesytMvuJ6TvrRRGSv0+y0JF6fPf/CR863J2/
         RxWNiVWD8KiMrOMrSiq5s5figsI9RUEqY4hLh4fGansWPqlOXtusrcHGLI42AB+AxfNq
         b+c1qOxQUOqdGBSDcfcBrIK8cqLG2RZRftEsDBnJaLohDD+c+7bRwDYjJLNtas7ssmDV
         06L64QTjDceq8gOg6zOJNt6Tv9aKntcSJ+2gpDU0zLx8QXAaL0FRu41QeC0KyzHYJcLo
         XHVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=UaQWC80bUQjBJzc1DayNRE/WdGTjwPnpDlHQt30J1Qg=;
        b=ArGE0APKmNngpZxifIhKsQQesgYsAHIBjks7lTZACg8Xr4Vwf+JRfS1/tKl7n2Lm/i
         dOZ+4yMkTa6BamztRcir6kwLCTky99e4DmjbiDK3tqYTuK6+aREE3+NRTINnC0ePjnQD
         VbwLlcHO/CSQdrHMLwMeBE9o4YzRNSaKLdD5uWKXapHzOBFKdMc1kyyFJdJlVbBjQYit
         fQgK1wVKQjPYtHsxEgSyHx7Dic6VpG6LPjRu3dwGz3ffvngPVWVFNecj+D/0Q7S6fYgp
         MvanhGwa37vFpryFXW78d6OFekEBMFGN79s4gCUxwxSFVW4qoi+oOvDQ8dF7yY7j+3h/
         1E6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="DimA/hyo";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com. [2607:f8b0:4864:20::d43])
        by gmr-mx.google.com with ESMTPS id m16si106320ual.1.2020.05.26.23.27.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 May 2020 23:27:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) client-ip=2607:f8b0:4864:20::d43;
Received: by mail-io1-xd43.google.com with SMTP id y18so4284270iow.3
        for <clang-built-linux@googlegroups.com>; Tue, 26 May 2020 23:27:00 -0700 (PDT)
X-Received: by 2002:a6b:750c:: with SMTP id l12mr20476776ioh.66.1590560819743;
 Tue, 26 May 2020 23:26:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200524212816.243139-1-nivedita@alum.mit.edu>
 <20200525225918.1624470-1-nivedita@alum.mit.edu> <CA+icZUVa8FhhwHgXn1o_hFmgqFG6-KE1F+qvkdCzQjmSSSDWDw@mail.gmail.com>
 <CAMj1kXHVFgRsbssJQD2C0GZnOgG=rMYbPGJQtiKhSw6sZj5PaA@mail.gmail.com>
 <CA+icZUWyFDgieQswvfhWemzymDh_UiVqH2uH52a+0otcr2Pd4w@mail.gmail.com>
 <CA+icZUVKRZPFX_Q8RRJnFsHrkM5VbiWUEam+6O5XSzgNaqAzPg@mail.gmail.com>
 <20200526144748.GA2190602@rani.riverdale.lan> <CA+icZUUY7a5XGwcQQ511OeoTjOzWbrgF8BZdTrLDK09QWG4hwQ@mail.gmail.com>
 <20200526153636.GD2190602@rani.riverdale.lan>
In-Reply-To: <20200526153636.GD2190602@rani.riverdale.lan>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 27 May 2020 08:26:50 +0200
Message-ID: <CA+icZUVTW=KTRko9Ks5LBx4mcdHhtLsXgyk1_CK2aLt0V4PhPg@mail.gmail.com>
Subject: Re: [PATCH v2 0/4] x86/boot: Remove runtime relocations from
 compressed kernel
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Ard Biesheuvel <ardb@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>, X86 ML <x86@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Fangrui Song <maskray@google.com>, 
	Dmitry Golovin <dima@golovin.in>, Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Daniel Kiper <daniel.kiper@oracle.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="DimA/hyo";       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, May 26, 2020 at 5:36 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Tue, May 26, 2020 at 04:50:38PM +0200, Sedat Dilek wrote:
> > On Tue, May 26, 2020 at 4:47 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> > >
> > > On Tue, May 26, 2020 at 02:44:29PM +0200, Sedat Dilek wrote:
> > > >
> > > > Are those diffs correct when using "x86/boot: Correct relocation
> > > > destination on old linkers"?
> > > >
> > >
> > > It looks ok, but that patch (and even marking the other symbols .hidden)
> > > should be unnecessary after this series.
> >
> > You mean _bss, _ebss and _end?
> >
> > - Sedat -
>
> Yes. Those .hidden markings are there to ensure that when relocations
> are generated (as they are currently), they're generated as
> R_386_RELATIVE (which uses B+A calculation, with A being the link-time
> virtual address of the symbol, and stored in the relocation field)
> rather than R_386_32 (which uses S+A calculation, and so doesn't work
> without runtime processing). After this patchset there aren't any
> relocations, so while the .hidden markings won't hurt, they won't be
> necessary either.
>

Do you plan a change on this?

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVTW%3DKTRko9Ks5LBx4mcdHhtLsXgyk1_CK2aLt0V4PhPg%40mail.gmail.com.
