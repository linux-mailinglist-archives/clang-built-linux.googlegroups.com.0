Return-Path: <clang-built-linux+bncBDYJPJO25UGBBO56UH4QKGQE3IOLEIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D0423ACB4
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 Aug 2020 21:02:21 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id m12sf17857707iov.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 03 Aug 2020 12:02:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596481340; cv=pass;
        d=google.com; s=arc-20160816;
        b=ar2eTDS8AOO3euRuO7ocoUWbL9qgiwoNaaYlISM+Qt0AOVDAWvTOHVNJ7PKZUDefSr
         Z3suQK+i/tWuTX7XYQRNxm30vrJnU4T1nFe8K73Fy0zAFHAeDSLbcT23yeMxiWmdS8qz
         PqND9h8pnskNmEUo5LbPbLdPT2TVCvhGXhhTG5WkM2mlx9fnDpQ7yp/Uoyi/dQE6t6kP
         CSiqu8LIyTg+MFUoGICL/vwfSB/bF2HFnn6fNNXraKALI43r3apIDN0VRQzA7pRGmuhS
         QFqGxPVOIqSiKq8uJXCkgaLCWoynx9mRCryNIyxiT2yyVQvOqZb96QjZ87GjBf4X8bT8
         PxJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=CU2N3Ytg5khypc810odSj3dpHYIxxj/M/ixJ3Tg3jsQ=;
        b=gRlpNehUqZ+WfGzypIb83CghD6O6lhkkrN4ZFO+qMs2sRoEFvX97KmpD4d9P7rnE4q
         8Q2GO8KTOeDIP1G6JTFwmZxMq00HQuj0XGLUeSf2O8LpEuWRIhTwLva07w3ZamMYcDq6
         xoxKxrN7udmjoUWPhjp07RXEiAeHTPWW5in56ZTCNgtaYEQ6Vt/QZzjJsX7cJ0DzE6Ja
         bDUO83I002duuXu9gAQ9ZkOdxIZKeqe8hj8QsW8KI1oMkWYcSl3GtvSQx1HwPL+QEmhb
         ccWirdi8ZdMpaMe6Gsyf93EgG83zsZpqlk/J2teEunKzMLkIw0CVxGg475KzJH2eIpNo
         IJnA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GwyGimjv;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CU2N3Ytg5khypc810odSj3dpHYIxxj/M/ixJ3Tg3jsQ=;
        b=BR4R8bE8MUfxPlTSPAkLNg1yey1vJ+Oz48Nc0MDmF00ZbUsyHOCiNfH5qWmq7ODZRr
         iHgTnb/KrIZ0jY1UNcfTbNnd8cttXXrT5PdYOlF74uwZYfxEvlEU70eQgpGLE90/V71p
         EAWfgF95UjYfDRMuGSZAMAhBeP9jLpxR7ZpLSrN7Z5e3PLB+WBnLMDt9XyKXmMVbcNbO
         ntIw9krk851xSr8mnsYxyGUHiJvEPLV1z3cw3M8AsDPwuHnRCSuW8Yl0OrupGtCmyBFF
         oBM0+2WzPqXNDzlwfS01CU7YE2xWCYiI3nFtZsJfdHhS5rVO1VruAlrs7cwYB16kHxvU
         W+nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CU2N3Ytg5khypc810odSj3dpHYIxxj/M/ixJ3Tg3jsQ=;
        b=ThhgEfQq5sAlOjq9PjvgW2ou0LRwcbyGKfJF3gXIKOtY+X1WlLE5oUkMOVkIfQsQWa
         dALNqlIcw+uJkrDQ+V9T3e0VecVwC58h3gsz8x+3e1b6AF0KmYBpIzrHFKAU/i5xVIRq
         zv6j2Ze8dcKA1l7/N7DM8LA7JYrt3QRuMIf4tHOEAWmqduhLpTy2X0pVuSXZjf2BMVfO
         Nt9Wh8f/sb2iHsSSNKjLY8/eW+CPvloCORwUwAC+/g1zhQhuVEoFVQ2g3LJmPQnxJUN4
         cpZW5LAx4eXFXI6Gpg4aFXc8JU/ZosE/8noloYopvtaae9ohIH2a2gA2HsnVsMJTaFhv
         Gdwg==
X-Gm-Message-State: AOAM532k+LYYws4TOcyMwymWGD0G2zKvsoHmVwqmlB8PbpGIkFfNGBF0
	wW6po3pGMMSJsdyDUgcbgVo=
X-Google-Smtp-Source: ABdhPJz4o7D2qejxU8Qx0A+25j3rr4bb6BMINyCiD2F3n8zOtuErcdBcPyoWUxFBzx5rKpk3VYuvxw==
X-Received: by 2002:a92:c7cf:: with SMTP id g15mr872075ilk.120.1596481339854;
        Mon, 03 Aug 2020 12:02:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:2a9:: with SMTP id d9ls2622093jaq.6.gmail; Mon, 03
 Aug 2020 12:02:19 -0700 (PDT)
X-Received: by 2002:a02:b817:: with SMTP id o23mr1315672jam.138.1596481339422;
        Mon, 03 Aug 2020 12:02:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596481339; cv=none;
        d=google.com; s=arc-20160816;
        b=ciWYN7e2eHPbrWTUskKACPCs3nVMkRR4MkhsqsNFzJn4Lm4/LSjxqpkD2IE5uHsXF+
         BTMp9BXVDDnmi+4C/SeL561TJGwSeikG9dP5EpyJ9XOwUmI3U7Q4QWPWraRuP3NTfKCW
         DbV75hEGotLDEZG+RNF/Um9hB80FnegI4Aqtu6ckh3+0hIC6jaRysLtTC8lugmNoo7r/
         PwFS//m1pEM6QWpjNJbMzc7yEG0rAwp7X+cJqewomd1Tz2T44Rxs+9IRlOzmMc0fMqHu
         oCkHs0lExD2vtA3ldCyR/+hn9sffnhdKgephcUvOI9Z93CBAvPVJkr104uTXsu5Cd0Ao
         gK+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=O6tP2dRjUFwZbhO7kTIUZzIPSMn6S/VsoDqV/IeCHas=;
        b=RjmfkJgzElZ2B4eeffz1EfO9pdTQ4/Cno0tksQMIGibacu+o5Gl73qdItMOwBDrmaV
         NRzvLNmKt9e0IhQTo+3UhD+ft0gWzHNDoO4bY4AkIx+yf6XonLJB1dwU0kSgYLnrw5hB
         IN4pPaFL0kzswtrS+3FLaMHKlEkdkfQGeN1DRXIGypzhr4jJ1q7CjAPWvP/KRlnajTBg
         3IYpEPMdRVkot6b3S/DrFn+4/pAo6nv0ymgSCCT+BiQ+Og4y6gIrny5REuh95o77hoau
         W64qhAH6qZYGM2L7oGTgxhlnoklNwrbc9l913DYwFuCh73hpkYXV2bTG3mNvzWZFfcoR
         44eA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GwyGimjv;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id k8si1161995ios.2.2020.08.03.12.02.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Aug 2020 12:02:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id z20so601358plo.6
        for <clang-built-linux@googlegroups.com>; Mon, 03 Aug 2020 12:02:19 -0700 (PDT)
X-Received: by 2002:a17:90b:1103:: with SMTP id gi3mr726306pjb.32.1596481338531;
 Mon, 03 Aug 2020 12:02:18 -0700 (PDT)
MIME-Version: 1.0
References: <20200731230820.1742553-1-keescook@chromium.org> <20200731230820.1742553-24-keescook@chromium.org>
In-Reply-To: <20200731230820.1742553-24-keescook@chromium.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 3 Aug 2020 12:02:07 -0700
Message-ID: <CAKwvOdn11z+iFQZC54JvQHC=NFX1FsoRMw2a-2P=5sQ6FKwbnw@mail.gmail.com>
Subject: Re: [PATCH v5 23/36] arm/build: Explicitly keep .ARM.attributes sections
To: Kees Cook <keescook@chromium.org>
Cc: Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Mark Rutland <mark.rutland@arm.com>, 
	Ard Biesheuvel <ardb@kernel.org>, Peter Collingbourne <pcc@google.com>, James Morse <james.morse@arm.com>, 
	Borislav Petkov <bp@suse.de>, Ingo Molnar <mingo@redhat.com>, Russell King <linux@armlinux.org.uk>, 
	Masahiro Yamada <masahiroy@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	linux-arch <linux-arch@vger.kernel.org>, linux-efi <linux-efi@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=GwyGimjv;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
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

On Fri, Jul 31, 2020 at 4:18 PM Kees Cook <keescook@chromium.org> wrote:
>
> In preparation for adding --orphan-handling=warn, explicitly keep the
> .ARM.attributes section by expanding the existing ELF_DETAILS macro into
> ARM_DETAILS.
>
> Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> Link: https://lore.kernel.org/lkml/CAKwvOdk-racgq5pxsoGS6Vtifbtrk5fmkmnoLxrQMaOvV0nPWw@mail.gmail.com/
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  arch/arm/include/asm/vmlinux.lds.h | 4 ++++
>  arch/arm/kernel/vmlinux-xip.lds.S  | 2 +-
>  arch/arm/kernel/vmlinux.lds.S      | 2 +-
>  3 files changed, 6 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm/include/asm/vmlinux.lds.h b/arch/arm/include/asm/vmlinux.lds.h
> index a08f4301b718..c4af5182ab48 100644
> --- a/arch/arm/include/asm/vmlinux.lds.h
> +++ b/arch/arm/include/asm/vmlinux.lds.h
> @@ -52,6 +52,10 @@
>                 ARM_MMU_DISCARD(*(__ex_table))                          \
>                 COMMON_DISCARDS
>
> +#define ARM_DETAILS                                                    \
> +               ELF_DETAILS                                             \
> +               .ARM.attributes 0 : { *(.ARM.attributes) }

I had to look up what the `0` meant:
https://sourceware.org/binutils/docs/ld/Output-Section-Attributes.html#Output-Section-Attributes
mentions it's an "address" and
https://ftp.gnu.org/old-gnu/Manuals/ld-2.9.1/html_chapter/ld_3.html#SEC21
mentions it as "start" (an address).
Unless we need those, can we drop them? (Sorry for the resulting churn
that would cause).  I think the NO_LOAD stuff makes more sense, but
I'm curious if the kernel checks for that.

> +
>  #define ARM_STUBS_TEXT                                                 \
>                 *(.gnu.warning)                                         \
>                 *(.glue_7)                                              \
> diff --git a/arch/arm/kernel/vmlinux-xip.lds.S b/arch/arm/kernel/vmlinux-xip.lds.S
> index 904c31fa20ed..57fcbf55f913 100644
> --- a/arch/arm/kernel/vmlinux-xip.lds.S
> +++ b/arch/arm/kernel/vmlinux-xip.lds.S
> @@ -150,7 +150,7 @@ SECTIONS
>         _end = .;
>
>         STABS_DEBUG
> -       ELF_DETAILS
> +       ARM_DETAILS
>  }
>
>  /*
> diff --git a/arch/arm/kernel/vmlinux.lds.S b/arch/arm/kernel/vmlinux.lds.S
> index bb950c896a67..1d3d3b599635 100644
> --- a/arch/arm/kernel/vmlinux.lds.S
> +++ b/arch/arm/kernel/vmlinux.lds.S
> @@ -149,7 +149,7 @@ SECTIONS
>         _end = .;
>
>         STABS_DEBUG
> -       ELF_DETAILS
> +       ARM_DETAILS
>  }
>
>  #ifdef CONFIG_STRICT_KERNEL_RWX
> --
> 2.25.1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn11z%2BiFQZC54JvQHC%3DNFX1FsoRMw2a-2P%3D5sQ6FKwbnw%40mail.gmail.com.
