Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYPQZD4AKGQEO4EEPCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C0D22471F
	for <lists+clang-built-linux@lfdr.de>; Sat, 18 Jul 2020 01:46:42 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id y28sf7990051pge.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jul 2020 16:46:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595029601; cv=pass;
        d=google.com; s=arc-20160816;
        b=XGp8Byg7PAvwABUQdv+FGKVrXmSUvE40Qpll/KzPoGg027kT6HdK8LcZEo9PJvHZW1
         095eCbCRlQTzCH3qvu2obV1SCxlm5M38ZV/GRtpnolDLG+XKicJN2ZBUlrlMgtESY6iu
         GCxJnINuOwKebSKAyrh5aWgi0zUOMe7108DwQHFyR2Av4J7LDK5i2rJPILujCw7ZeSWC
         XrKxg3SocPeKTNK96Ek4JgO6g9fhw59beR9L///lBzw7dzZhq1Zg3jdW+S1YEm9E3iVx
         NYigGl8GP6lAbpLxop06t00n7rxNRRtZ7PFczXtoaX2YuHuk+l2xyvgEqCMkKaGSV0l3
         cc7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=+kqmp07Y+E+Rh2amlX1KsaUHVrkvOz2jJOjogOhV+T0=;
        b=TAF4AHV6JwnlqfWkzJwJ8Xrlx+w9twUBPqyttLWJ8EVXjP3jbvKGnZi2FV4dYrkEFv
         vNPWeVvuS9EE0CBcuBqpzIppvjdo13IEG6gCMtHHUcpHG0qy3aDxZg5UPAjdOu13IEJG
         oVihnn1qozGY4KojnfUUw55MuCB+rEARUIGEzuhpp8h963jsmhk+7qUtQaLnAdic9Gie
         jNUpwJ3ayEOXyZs8RMSriJ+XmraROePu8yTEQmDU8h3tXm5tWL3pU4vRQPtZ9wXmEMt2
         kyNMmCc1VxqkFoFI0Cg0V0b/3nOZwwhxWcTqWSw/KNLvMAVKXxApnHBzbAVa+Bi40qIN
         +Q8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cAzTA5En;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+kqmp07Y+E+Rh2amlX1KsaUHVrkvOz2jJOjogOhV+T0=;
        b=kyUa4/PMmrNEvxBbx5dceMqmbO2mCip5S6BQvUlYtKfpo44XQKemPcVA+F7vMHzTxM
         60OV+Lv6/cvS5uM2xesU6wktYjhNQralSVavbgRCFs6M0kNI3Lv1hQv1x8P7Fmkgp2mB
         rjpV+h4DS06Dw2l0ApYjqOD14Ku/1mUbE0368kpvF1FjvoBw0f9m/ataUY1rAN2GVCIV
         vG9ioEYwIPVKjL1kgdv35TIoRvU9jiIGGgaRuWylTBubVou4mmPdPiiVs/tlSvq9t1PN
         G0c0yKXv7pDPnAJY8r+kdUxwwMzjceRVRgc6iwxv/eMxevLVW9mlQ+NJA5E8yzJTlseW
         7Gsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+kqmp07Y+E+Rh2amlX1KsaUHVrkvOz2jJOjogOhV+T0=;
        b=Age/DscWrFjtvbfZXBb2LbdKMjG6+Qm5HF9rBdtak3IpdN1X2pNh+s+DvTKd2s+3vE
         Q6NNhBYyVo1MYsZ9qeO9w9yjtU0+lnnMA6DmqJam9PvxHx1/bSdeDTln8nJNa3PbPdr2
         kO9ijlItR/PAs0NYCNzOAY50UKeLNiZ0VjxJgi5K32yQrionKtVPvUhwLvw4GgIRPmHA
         vTEcgC+77alrFLFu8OUOzpT5nevJyl5kCG4pZNrVQfgfkPyZv191dE9VRqecNeV6YIyM
         44CEONB1j4awKUudicB+Z6+1APLrI/4FqIcZ8KuD2xbnTrC+2DZjWLmaUPcAmxTIc9zE
         XWIw==
X-Gm-Message-State: AOAM5317KW0uohBhRgRMlj5pwRAvuf6zaUuA3hNVBYCGxs9eJdRok4ge
	dKthx7Ye5acwbjel1q1/Flc=
X-Google-Smtp-Source: ABdhPJwytmn3cWUFhRFthZCQlrH/u1xrAiRnz/os3HubulxYC4mCeKKG++0Z9NjgcInmcDRq9biipA==
X-Received: by 2002:aa7:842c:: with SMTP id q12mr10409728pfn.209.1595029601124;
        Fri, 17 Jul 2020 16:46:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:582:: with SMTP id 124ls343506pgf.6.gmail; Fri, 17 Jul
 2020 16:46:40 -0700 (PDT)
X-Received: by 2002:aa7:9904:: with SMTP id z4mr10065295pff.324.1595029600716;
        Fri, 17 Jul 2020 16:46:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595029600; cv=none;
        d=google.com; s=arc-20160816;
        b=Zp04188G+JYv9OlIz2Xnn8CrQdMmyXdxIWny+ewrwdYu8QfIV0FiH+bqlr1zTOBp2f
         VMJasvMErz9L3JWDgsQkkxHuPfjtRtE0EcZ2+OxDTbY2DpRZo629RhxyuvNDpLdp95J0
         9gP8Z5Ww8RrA5eFL8448tDfPhjG0Q3xH9eXmRc+PeaYPKWRFIDJjC+NT/Tisfq/isNcQ
         m5ZSFsl3bm3IgaseZG6k43nMlw0OSNzYGlwcPjdfA7wEPY+yPOX0ShO0EEJBUiI4UD3I
         V+U/FFFHqXB6EibLYA1zsaDqseBXXSxgPESV1dU/+v0NuUxbQZitXUtreHONWqc/4vUU
         9ILQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ZC3p+2XjLAm8XpuH3SiLqSVIr+Sho20/kQ8Al8jY7UU=;
        b=gQxef0BImRiWeIpbqAnl65klv56YFaYhddWnU/+0aZPimPHxpi58zrMZI4dqKZ0yCm
         MaB9R/9Z+DnTNaoSkNH4jmteyN1mEm0DFqxWy+C+7ch/tAIpcTlHiWdLsdAsb+8bHYCB
         PMfdITNfCoxDP4gyH2AbTa/LowHdD9sT5mwkqzjEQ8DnDQFjf77Bh/xd5Bda7jfE6mWL
         Xhm4MfJceKiv/TsDZMLvvHcGSh8ifM+8JXhykg+QkM9R3OsLUB3Znwh9t4LsP38WhNvf
         BeFTeGDej5yTPTfDw0tO10b2/+BXxUvjOnXhc+LnQ3J3MuuLMUY/+1gCroxuyD6L4Myw
         1P0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cAzTA5En;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id y9si661574pgv.0.2020.07.17.16.46.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Jul 2020 16:46:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id gc15so4493085pjb.0
        for <clang-built-linux@googlegroups.com>; Fri, 17 Jul 2020 16:46:40 -0700 (PDT)
X-Received: by 2002:a17:902:a50c:: with SMTP id s12mr9066703plq.119.1595029600035;
 Fri, 17 Jul 2020 16:46:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdnTbatx8VB-rJSzyFPwfYnkMYK28yLBn1G+hUu8dyfYRA@mail.gmail.com>
 <20200717201801.3661843-1-nivedita@alum.mit.edu>
In-Reply-To: <20200717201801.3661843-1-nivedita@alum.mit.edu>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 17 Jul 2020 16:46:27 -0700
Message-ID: <CAKwvOdkAYeQ6KQ4CUTmmnsBfP9h+YEz8oj25-p2ojYJDRuuBYw@mail.gmail.com>
Subject: Re: [PATCH-next v5 0/7] x86/boot: Remove run-time relocations from
 compressed kernel
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"H. Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Fangrui Song <maskray@google.com>, Dmitry Golovin <dima@golovin.in>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Ard Biesheuvel <ardb@kernel.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Kees Cook <keescook@chromium.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Arnd Bergmann <arnd@arndb.de>, "H . J . Lu" <hjl@sourceware.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=cAzTA5En;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041
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

On Fri, Jul 17, 2020 at 1:18 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> Same as v5 previously posted, but rebased onto next-20200717.
>
> v5: https://lore.kernel.org/lkml/20200715004133.1430068-1-nivedita@alum.mit.edu/
>
> Ard Biesheuvel (3):
>   x86/boot/compressed: Move .got.plt entries out of the .got section
>   x86/boot/compressed: Force hidden visibility for all symbol references
>   x86/boot/compressed: Get rid of GOT fixup code
>
> Arvind Sankar (4):
>   x86/boot: Add .text.* to setup.ld
>   x86/boot: Remove run-time relocations from .head.text code
>   x86/boot: Remove run-time relocations from head_{32,64}.S
>   x86/boot: Check that there are no run-time relocations

Thank you Arvind for the series.  I did quick build+boot tests of x86
defconfigs with `make LLVM=1` which look good.

Further, I was able to build+boot i386 defconfigs with `make LLVM=1`
with your series, Mr. Rothwell's proposed fixed for today's linux-next
breakage: https://lore.kernel.org/linux-next/20200717213127.3bd426e1@canb.auug.org.au/,
and Mr. Gerst's series for i386+clang support.  So that looks like
with this series, we can now link i386 defconfig with LLD! Nice!

Tested-by: Nick Desaulniers <ndesaulniers@google.com>

>
>  arch/x86/boot/compressed/Makefile      |  39 +-----
>  arch/x86/boot/compressed/head_32.S     |  99 +++++----------
>  arch/x86/boot/compressed/head_64.S     | 165 ++++++++++---------------
>  arch/x86/boot/compressed/mkpiggy.c     |   6 +
>  arch/x86/boot/compressed/vmlinux.lds.S |  24 +++-
>  arch/x86/boot/setup.ld                 |   2 +-
>  drivers/firmware/efi/libstub/Makefile  |   2 +-
>  drivers/firmware/efi/libstub/hidden.h  |   6 -
>  include/linux/hidden.h                 |  19 +++
>  9 files changed, 153 insertions(+), 209 deletions(-)
>  delete mode 100644 drivers/firmware/efi/libstub/hidden.h
>  create mode 100644 include/linux/hidden.h
>
>
> base-commit: aab7ee9f8ff0110bfcd594b33dc33748dc1baf46
> --
> 2.26.2
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkAYeQ6KQ4CUTmmnsBfP9h%2BYEz8oj25-p2ojYJDRuuBYw%40mail.gmail.com.
