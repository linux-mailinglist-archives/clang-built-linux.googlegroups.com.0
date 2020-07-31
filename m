Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBO7DSD4QKGQE6IZLTVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 08F4E234816
	for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 16:59:09 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id t22sf11912887iob.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 07:59:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596207547; cv=pass;
        d=google.com; s=arc-20160816;
        b=InYfbqPpbzyMg2LaCCrjN+CqfRSloT2dIZ0OFvmDthzrH271KZxVSx2JtulwZ0pq18
         dGIDgwaS/5qOgsdVLYwQXmwcgOVW2OjeOZuQKg4YYk2eYgmeQ+cLDpXvE9iSR/9rk5ux
         n28/QVe6WCh/p8yad13o8Z4kfk5aZVv+HRe2F6edYP9Uqn5z45oNiiaQCTu0VSiZlyfR
         0M4gaaWPklC3CpIZUAelcnWj0E1i5M0NzfLT8Gntd+5M+NH3TDHCUmiGPVnMwAWv00QZ
         fbb7TIJCYY6GWhcyvlhaz5PxwirHz/pJuFhedAH51R0xajdKYqc63yltnkT6ncXDgWMt
         0g5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=vs8+5PsYPtPZZwoUzlU9u9iXwH1DBVs/HpVTJGpIraM=;
        b=BYg24V8f/cNbbGZno54w96gyEDyGqMEceLN92QXGtS+SsQOS4epy7yBN5Q3IKKP/TL
         Ykxrsli6i9ACraKNRlTqwbIF1ekGt4KBSkkFuwbk5/5tM8diyS1lhBGspIcsTo0vxsDW
         330bOziv5L4xRX9yPUVjebDhSbxgMh0fitM39cwGzacqDDFi7PXMVnuCJgQkmH7hOm2X
         QAhobcFXT3udyLDTlUBxSOVdFr3ffX+iztih6osOs+qW6QoUTvyW5sCg2Bt6KE+zTVmq
         1zwR4yRNFF0wzbnVE+o7agYBu3GshCSYjq77x91ArMiDAZHS9/lTQGPov/1K0I4wZbyu
         VQyQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LZe66L7q;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vs8+5PsYPtPZZwoUzlU9u9iXwH1DBVs/HpVTJGpIraM=;
        b=DnOVIp7I/oQCCleuVj+9tjymOhVsO0okiD6AGSEgg+pCJijnKOdiyl1qCRcRIW4xJb
         8EQWN0kjqyaArIUcC5KHbnBBKta/oVdT40iXFKKecmA5bMx9Wbzfp+jziJWXHoErcQuH
         1t3BL8+xOw9xVGKd16GAp6PiTPFBH80/QWhDmA4FzjwAe/4V+b7zVVh1Bq0PrHCXD6qg
         rt71xkExsGJPiPNz1GzK+GaDDrE13i0lJ4PtELQNbFxfWjyvb+N1hWwIHVN1K3vp0L1P
         J6ZlIar+O6dCL/q1F4/+LhpVrSd758tS5rtUMEyZgFpgys31+/J5Iqkqgtq6lh6cdpeZ
         bh2g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vs8+5PsYPtPZZwoUzlU9u9iXwH1DBVs/HpVTJGpIraM=;
        b=cHJCOjMbf/nvDM6Hje0ydJzWijHtBiFzswq6Hs0ri1ZVGPnuyS4OU3QRbEZYmVtdO8
         tPqZutSGm93pZmv7NlQUvlOKYZmYm9KwzFkQu6GNc6GYAe7FyrnUovYxeXpXf5BPwLFE
         6kPz2utwiK5eXVz2fpD3UM5Kek0amD1NR5BRvyxQCbeOcjv/++gKqDe1ZxMVrGEnOrfv
         Tm9/sqRl53QwWO98n9DZIHgHGcfjO4/wRcIGCMH4cemPJBjbICQqtM2kr1VhxphLJYV4
         8T8fUAKwv9iH+GF9XZgdgHi5tqMyHRRRhk8otKKhC27yVcEF3ePRohuKM6ph+WjueOjD
         jbrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vs8+5PsYPtPZZwoUzlU9u9iXwH1DBVs/HpVTJGpIraM=;
        b=ULSwym4LKgL54bOHUPIeg5V+iwsv+ICLKA7EbsDpuje0LkaqUFjUAg7Ey2byZUvzca
         QjTogBdM5uBpMhS1dPDu694Pf79hdSIDMaAXAjKHLmhDz4pwlQ08QwTvjLmWNLIkSmct
         61aAbYe1zXR+7bEgrx7i9wTp/e93RFef9cKsqUm0139Xd4JfEnAiFBh3tn4bj/E+ZsVn
         eSWqJwneWvazFIYakXePKZwmAtI5feYvYz8ZSlQ+0IK1NmH0DHQGBKbqtr3/QqIKW0d4
         Y+6XqlkZrNpmtpuCzBN09ldKrHboUPFOX7J2F5LJy+8b121iDsG823CBnVqDtnVUTr8z
         VQgg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533NYRztBjwi1LZVDUzx6J83dbF9psZPJT6h2P+JY7lkaYARRZPl
	qWCujG9d7bztatkFz2QTkhE=
X-Google-Smtp-Source: ABdhPJw2VJt0ZmSiFAHnuA3yqfAR8fEp136+4n+hlTMhTTzkZEntPE2B1kXFyMvDDNcA8/zJwQS7PQ==
X-Received: by 2002:a92:d841:: with SMTP id h1mr4300580ilq.233.1596207547661;
        Fri, 31 Jul 2020 07:59:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:5e4c:: with SMTP id s73ls2533747ilb.3.gmail; Fri, 31 Jul
 2020 07:59:07 -0700 (PDT)
X-Received: by 2002:a92:9110:: with SMTP id t16mr4019863ild.110.1596207547326;
        Fri, 31 Jul 2020 07:59:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596207547; cv=none;
        d=google.com; s=arc-20160816;
        b=0Yfqzlt4TWqOVMzJwpYCU6gljKNeV8AdkUonQmeVmIbFG9b/Kao4o+j2QTlX2cWjv7
         pvLhM5v2+S1u+F0GaX2TOcRsvAw+i4LZq0aepiZ31/1E+Bgej3HucBLjEg2G+qKjojLX
         O8qB2TSNDbUUqZ7UJKEDmKa4/PI9upLIrmOsKez1K98NLRzNTjOZvW9S3bn6MPOnQliE
         iMJU9tfWx0R6HUe0AFAT34dGVH5Yxlcj3ZJmvknZD9V3zE+utuNb9K2C6VaDuVKX+p1I
         pbuvnl7IR47ua5VdmUjSV5G39xe6Oj7gv9Z5VrH6hBGzNmZDqZLMrbMA9f5d0Txw83wv
         ilvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=HT0VjPF40Ntd8YWFXRJUxrumgrtjSgN7H3boxsBygfs=;
        b=HquM/dJtVcRdCX689Z737B8sxIwicZNVaRBITKy52Y5ehxGMLCECongTGdU69w7nZm
         TVEblgtEOdKHfpZc8vg6MR7Hx3oRQFUu9xrhSonnLF+B94pGazJm5FdQsSnI1XnCG3N0
         TAN0+So59/KBWycWzT87dUJoCYbE+e3wtRcFGvuV3URfVxEfJhOpKROTml5d4nNDc5no
         oddC3ZhB4csP2d0IyG8pRa1O6RIqY//bXfgSyz/vM5s90xPrfL6T3ogY0FD4eS0rYA4U
         qyAoDqm9xmi5m/JcQ5WY5RD8f03OD3yGb/JZieGbXIsm5tJ/8ohTPb4ZDGhQlrIplmHH
         U88g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LZe66L7q;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id c87si248921ilg.5.2020.07.31.07.59.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 07:59:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Received: by mail-oi1-x241.google.com with SMTP id s144so16999503oie.3
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 07:59:07 -0700 (PDT)
X-Received: by 2002:a05:6808:311:: with SMTP id i17mr3409866oie.72.1596207547007;
 Fri, 31 Jul 2020 07:59:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200714023836.2310569-1-nivedita@alum.mit.edu>
 <20200715004133.1430068-1-nivedita@alum.mit.edu> <20200717134654.GA3187880@rani.riverdale.lan>
 <CAKwvOdnTbatx8VB-rJSzyFPwfYnkMYK28yLBn1G+hUu8dyfYRA@mail.gmail.com>
 <CAMj1kXGeSFXnuO7Y94pyBU9qfSgtsLvMoCZSfDk476BBs2ejcw@mail.gmail.com>
 <202007241624.D59FB48@keescook> <20200731145352.GA2076085@rani.riverdale.lan>
In-Reply-To: <20200731145352.GA2076085@rani.riverdale.lan>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 31 Jul 2020 16:58:55 +0200
Message-ID: <CA+icZUV2=hj=+9DtbH47wtdE=GM5AZjS1xTgH7PKE+NxsRa2jw@mail.gmail.com>
Subject: Re: [PATCH v5 0/7] x86/boot: Remove run-time relocations from
 compressed kernel
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Kees Cook <keescook@chromium.org>, Ard Biesheuvel <ardb@kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Borislav Petkov <bp@alien8.de>, 
	Nick Desaulniers <ndesaulniers@google.com>, Ingo Molnar <mingo@redhat.com>, 
	"H. Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Fangrui Song <maskray@google.com>, Dmitry Golovin <dima@golovin.in>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	"H . J . Lu" <hjl@sourceware.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=LZe66L7q;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::241
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

On Fri, Jul 31, 2020 at 4:53 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Fri, Jul 24, 2020 at 04:25:20PM -0700, Kees Cook wrote:
> > On Sat, Jul 18, 2020 at 08:44:50AM +0300, Ard Biesheuvel wrote:
> > > On Fri, 17 Jul 2020 at 21:17, Nick Desaulniers <ndesaulniers@google.com> wrote:
> > > >
> > > > On Fri, Jul 17, 2020 at 6:46 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> > > > >
> > > > > On Tue, Jul 14, 2020 at 08:41:26PM -0400, Arvind Sankar wrote:
> > > > > > The compressed kernel currently contains bogus run-time relocations in
> > > > > > the startup code in head_{32,64}.S, which are generated by the linker,
> > > > > > but must not actually be processed at run-time.
> > > > > >
> > > > > > This generates warnings when linking with the BFD linker, and errors
> > > > > > with LLD, which defaults to erroring on run-time relocations in read-only
> > > > > > sections. It also requires the -z noreloc-overflow hack for the 64-bit
> > > > > > kernel, which prevents us from linking it as -pie on an older BFD linker
> > > > > > (<= 2.26) or on LLD, because the locations that are to be apparently
> > > > > > relocated are only 32-bits in size and so cannot really have
> > > > > > R_X86_64_RELATIVE relocations.
> > > > > >
> > > > > > This series aims to get rid of these relocations. I've build- and
> > > > > > boot-tested with combinations of clang/gcc-10 with lld/bfd-2.34, and
> > > > > > gcc-4.9.0 with bfd-2.24, skipping clang on 32-bit because it currently
> > > > > > has other issues [0].
> > > > > >
> > > > >
> > > > > Hi Thomas, Ingo, Borislav, would you be able to take a look over this
> > > > > series in time for 5.9?
> > > >
> > > > Hi Arvind, thanks for the series; I'm behind on testing.  When I try
> > > > to apply this series on top of linux-next, I get a collision in
> > > > drivers/firmware/efi/libstub/Makefile:27 when applying "0002
> > > > x86/boot/compressed: Force hidden visibility for all symbol
> > > > references". Would you mind refreshing the series to avoid that
> > > > collision?
> > >
> > > That is not the right way to deal with conflicts against -next.
> > >
> > > This series targets the -tip tree, and applies fine against it. If you
> > > want to apply it on some other tree and test it, that is fine, and
> > > highly appreciated, but 'refreshing' the series against -next means it
> > > no longer applies to -tip, and may be based on unidentified conflict
> > > resolutions performed by Stephen that the maintainers will have to
> > > deal with.
> > >
> > > Boris, Ingo, Thomas,
> > >
> > > Mind taking v5 of this series? (With Nick's Tested-by) I think these
> > > patches have been simmering long enough. Do note there is a conflict
> > > against the kbuild tree, but the resolution should be straightforward.
> >
> > I would love that; I need to rebase my orphan series on this too...
> >
> > --
> > Kees Cook
>
> Ping?

I just tested v5 against Linux v5.8-rc7 and the conflict you mention is with:

commit da05b143a308bd6a7a444401f9732678ae63fc70
x86/boot: Don't add the EFI stub to targets

If I forgot...
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUV2%3Dhj%3D%2B9DtbH47wtdE%3DGM5AZjS1xTgH7PKE%2BNxsRa2jw%40mail.gmail.com.
