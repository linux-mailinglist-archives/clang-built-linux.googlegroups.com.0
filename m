Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJOWY74AKGQETNXNS7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DB4E2242FA
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jul 2020 20:17:10 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id 18sf4182278ois.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jul 2020 11:17:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595009829; cv=pass;
        d=google.com; s=arc-20160816;
        b=gclEXGLJdiBL2Q+DsWDSotoCgGZ7qJcmZa9uDYnxi3Z7FG7ej/Wvl7Fptd8ZAJq+70
         SqwLA1/MNerO9EZrc6dkG6qe018+B0WlqxbT23ZUr9c1OFLOM6333hq+D2jM3lDJ3FbJ
         pxsv2QNm407mcMAI967EpDYZXntE9IUHQ76BO+5fRHvE+BIqNgXnStYNVz4FigoZxr5p
         pVmF2MFgU1FIpMVZjeWIsHR0Qxq4QXq9KVtHMTXlFLWZipl9odS8O0Q5FQqwysDRBqLe
         72+dc7sa0QVbDtfJxOhJf+tUVjlr4JLA11Q69+dZQtCcvmzHaaZfjcH4mneZHn9Gadpl
         Duvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=w7ewnlFLt4DqMmzHj7jIVWCmCSUdXIX7A4AYENrvrtE=;
        b=0KSWC5dZdNbfsy0L7qFMNzUvjcDSrOI2/OSlVYPJakb0uxz3OXASxikXR4kWLnTJMY
         odgPS6Lpv8WVh29ibu5F1tf+MAjVkpkuIdUyYVtYtp86AiuKZdL3k0tGjulQokdHuktA
         8fsTKKtlW73fQB+nKUs8LpXYsS3BNo7gcfnAJscuqQprWPJDOA2+LJgSQlGuuNJ3RJdn
         sGW8Pen6YJ3z/oZQ7xwQ6ysenhRTjKQGFNuBH/UqUHTwoiQQhKYjNY1RT79Mo8sxuX1d
         aYpD/mooAXwsZ8AX00pTciDnQtPANMll9JzPMPwyWlC27zlc3IL3JplDgl85fd2AEG6r
         Hggg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bxLHHdlA;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w7ewnlFLt4DqMmzHj7jIVWCmCSUdXIX7A4AYENrvrtE=;
        b=pjex0FkkRAZZyj1HF60aTbQusJibHHVnU/+ySMDkhFILIf8yRTEobhICpC7kyseQwN
         QxBPBoneWNi4ZgB+3LKKWRToFOGT+FksAaivxZVx+aMuW+Na8EeqcFF9ZP/pjSIVFUJ2
         gQSEd6ruGs9FYa3QBLY6NxXWp3VzYAr2CIRDalFmRcSFFKg3r/RITT/IsShYqdpfrBtH
         mJSL8Q/JEr3izSV+HZrG7xkQzp9seWQA+V2BMUoUa9v9PNF7xpgATT6kJS5c+gcR8DQJ
         EGgGLTPyF2nilVlHW5R0P/pBs1oDOnB3opGvHmHsPWzZcSWZ2Ii0VZdSmr7YOyA3ARqU
         TlBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w7ewnlFLt4DqMmzHj7jIVWCmCSUdXIX7A4AYENrvrtE=;
        b=X1Dji/BCRmpJHmDuqkTEXr4dHmbDj4Uq4U0ml+jg1lNIo1lJOlAPveOZGn5VB7h3H5
         fBAkI/7Fkmu59ZdzecCA2E/jcPhLUBPqKv0GinTqF3dl5ESWrdb3huaqhjq/v52aKVtd
         Lv7p+6yXK2kOKdYDvQgyGFbMbtGmUMyfyJoaObHNBmJYfoD14wgyLfFfCVdzVmENEJLJ
         y5+a06FXgU3kQiwExeq5g7QnZ+8CUA/e7+dJvNDoNFYdBB0T+T2JmHz7K0itAU+EW0Ny
         nKg4YRsSUGps8BvC1g2oIZuiMpCzDSh0XXI4q3piDeiA0navFk0n0lNyW3j4Vt0TwZjU
         ihEg==
X-Gm-Message-State: AOAM5329SBjfgKiDu5qDwufnitKiPDmE4TnvdPRX5uwVpzIGfn0dh9Ko
	VquwKZqU9QRNVXS0+oZXEnc=
X-Google-Smtp-Source: ABdhPJypztQrG4UiurncQs5BmWi/NfHreoysVMy6VLNp/sRsOhZ2IJr1qvcAGWDyXIdJXVKzRRYlCA==
X-Received: by 2002:a05:6830:22ca:: with SMTP id q10mr9727769otc.265.1595009829102;
        Fri, 17 Jul 2020 11:17:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:f413:: with SMTP id s19ls1548184oih.8.gmail; Fri, 17 Jul
 2020 11:17:08 -0700 (PDT)
X-Received: by 2002:aca:f5c4:: with SMTP id t187mr8955876oih.0.1595009828784;
        Fri, 17 Jul 2020 11:17:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595009828; cv=none;
        d=google.com; s=arc-20160816;
        b=kjptBu8uSJe/IQllOR3PLpfG9JNhLRRy/ZjNJDcRL5qb4m+z7A+awZHqhuKGpqFiS3
         bLzLccCwH1FMGx8p9ttZLBORw7bsHIg47Sw9FTr7+YKM4W2aiZkQNDlpisEiggKaKDvk
         Is7yaawSci52OVZ8b/MlG/4QgEl8LR3sactkGKmwYD6awFV6l+tabLx3OxWE+mLyFdNE
         pp/cFQf2DDSvPpYj8W7PdSezm+rIOW2/iT1WCS4uW6nR4CqAWAfYozToIAYsLPRP1bmL
         7QsipWU19ATG8Qe7v1BmSwQYRCfJjeRdMdhHLWR17FvQvxMqRP4zYlcVmEX2oDKlrssW
         /Kaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=EBlDJFELNKgax0cjAHRAVjejfx/TTQsomiVQoBjL7ks=;
        b=KQy/mZYakqxCjPfAqvd8ng+oRjIl74V15VW8XPM8SyRa8fpsrOi+Z7KFepVwTOdgbF
         FTO61LwS6UO2uBZNY1GNXGPDdvw9lmDee3eJrKvF5gBsUHWWd5DLzkWdg1V7EYq/yvBG
         K5VWlMcFGI6d7+TBmgAsfKBT7z6scZCPlMeNGCbSq01JJ6vXfOSEB7nYKf9a3k0k7+wX
         h51Lwbaez72Z/56S2NX1sOlU10enb7Bzmf+kUV8zU+nS4JubhEuuUK0PTXMgVAGQyzUC
         W/mKxCE58UIsx53e7wNZonKqdlJO+u/JefjDGGZP6XYF05BzJ3ckTWciooncVbzMtULD
         5IFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bxLHHdlA;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id i189si508587oib.0.2020.07.17.11.17.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Jul 2020 11:17:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id n5so7065966pgf.7
        for <clang-built-linux@googlegroups.com>; Fri, 17 Jul 2020 11:17:08 -0700 (PDT)
X-Received: by 2002:a05:6a00:15ca:: with SMTP id o10mr9210298pfu.169.1595009827674;
 Fri, 17 Jul 2020 11:17:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200714023836.2310569-1-nivedita@alum.mit.edu>
 <20200715004133.1430068-1-nivedita@alum.mit.edu> <20200717134654.GA3187880@rani.riverdale.lan>
In-Reply-To: <20200717134654.GA3187880@rani.riverdale.lan>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 17 Jul 2020 11:16:56 -0700
Message-ID: <CAKwvOdnTbatx8VB-rJSzyFPwfYnkMYK28yLBn1G+hUu8dyfYRA@mail.gmail.com>
Subject: Re: [PATCH v5 0/7] x86/boot: Remove run-time relocations from
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
 header.i=@google.com header.s=20161025 header.b=bxLHHdlA;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

On Fri, Jul 17, 2020 at 6:46 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Tue, Jul 14, 2020 at 08:41:26PM -0400, Arvind Sankar wrote:
> > The compressed kernel currently contains bogus run-time relocations in
> > the startup code in head_{32,64}.S, which are generated by the linker,
> > but must not actually be processed at run-time.
> >
> > This generates warnings when linking with the BFD linker, and errors
> > with LLD, which defaults to erroring on run-time relocations in read-only
> > sections. It also requires the -z noreloc-overflow hack for the 64-bit
> > kernel, which prevents us from linking it as -pie on an older BFD linker
> > (<= 2.26) or on LLD, because the locations that are to be apparently
> > relocated are only 32-bits in size and so cannot really have
> > R_X86_64_RELATIVE relocations.
> >
> > This series aims to get rid of these relocations. I've build- and
> > boot-tested with combinations of clang/gcc-10 with lld/bfd-2.34, and
> > gcc-4.9.0 with bfd-2.24, skipping clang on 32-bit because it currently
> > has other issues [0].
> >
>
> Hi Thomas, Ingo, Borislav, would you be able to take a look over this
> series in time for 5.9?

Hi Arvind, thanks for the series; I'm behind on testing.  When I try
to apply this series on top of linux-next, I get a collision in
drivers/firmware/efi/libstub/Makefile:27 when applying "0002
x86/boot/compressed: Force hidden visibility for all symbol
references". Would you mind refreshing the series to avoid that
collision?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnTbatx8VB-rJSzyFPwfYnkMYK28yLBn1G%2BhUu8dyfYRA%40mail.gmail.com.
