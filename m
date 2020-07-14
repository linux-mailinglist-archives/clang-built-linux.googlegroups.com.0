Return-Path: <clang-built-linux+bncBD63HSEZTUIBBRX6WX4AKGQEZCS32RI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 13B8621ED28
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 11:47:52 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id s8sf12108258pgs.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 02:47:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594720070; cv=pass;
        d=google.com; s=arc-20160816;
        b=SIH1bGA/fjJnulDHQxjgq3sKyI6YLAacmimkCW8cGep087SbIHN/MYHe3OyzDL7Ue8
         +VRk28KPomL5BFOo/2UricTnOoOlqivlSY6GKPQud8Tk5mqeL+hlbpANfspmx1/XPmJc
         dknAGbgkqQsUnm3u5t6Nfe9gxmAYKH9fe+beTP2HmNLpTV/Blqd8z2d3IEJu36pk9YKW
         Vn9GBG5F0jhJ/Hq95pEuVpwMZPqdDi+kAN8MrjqaFAIu0N98/wet7dh0Q3qqL41UA2H9
         YzCcxoez8XSbRFDAN3S9RyKZT7c12ZBkrqg/QdG8gCHXgCEHmIuxj+5Z3mEGPXEoo90S
         MfZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=BDh4ZRRmHx3a4hivqrIu1p4kg5aYqOb2nvwXXthC3aA=;
        b=dLM09oFb1OpBeJMotAyyU868Me09eQbyOMOYHYol/FzmRMrR6kju0teNW4GiYBaPyg
         bCsu7c4CE+5Z0S8Lo04RfPA1yYwgFzW8rxU7fi0oU5sh8PeyHDMKL2jTGDo7vNm8GA/W
         Z8e8S/UvUu8XuqlyXz2T2yiDmgFuPxgc+y6Ssx5jmWhAAbfBRysEUvNoeDyZBq/gr7rA
         wvQDp/E/h6lWXKTlvFJYs4AqdXkudRkKin1RyTW1DOPN7lLaLRpFB8c9YAWZkVO8r19Q
         YK3xXSEggC5TgDw+J7I+EUjxyycCORi9O2QjHa/uu08Cuo+OqMN2fu/Hpi88zZZgNy0h
         b1/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=TKihbRN9;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BDh4ZRRmHx3a4hivqrIu1p4kg5aYqOb2nvwXXthC3aA=;
        b=j2gH0+E2elnO0z7p2E+rX9DQy6rhQm6V0bQVN3QsOvaCvGLnshMy05r0Yxxj1WKV/0
         nOMUUZNpHYN5+oLjXoGrXJh+tXq4BZ/ENMYGiTFlTVXvILpms4RcH45LKZWhiRTnaN0g
         3aU9NSbeoKyzUqv6VxvsVbhCQ5+Tc0hzYQpzciU3s5tuJf1Vy6/k6C73eoF/3c6wfDhI
         OTEdeNBB1XQLYAUsd+QqhIaB/QY9wLcJFUGCKI+91OLCRTGQ6n5K5/E85uNWafvaaJ74
         epwT4XuGmou+A2ev/RLS4neg8xa4YOiqE8wGMZHibqSkRdbjRI0fkRC4vUOpNZ3v5Vbj
         YJBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BDh4ZRRmHx3a4hivqrIu1p4kg5aYqOb2nvwXXthC3aA=;
        b=bTFRa8cSPZY6oAvuN1JFuzbYIDRdLcq+QUFMT7Wd4f59EwnRqQQOMtirWNTW5lDCQb
         mFxAObGOZNo2T3fD/4+RJBG4gYxoDfyeWUuXI7oYfJ+9aWaPWBXRl4lnfW13dsAkmjz6
         4Jph2bzJkdDWfz7O8e4/DTM7MPAF1eh7dMtdYBD1UJh8dKz2v4g7K9mlGnY1dt52OSoL
         +dWcXOd5y5hQlIsehWvIdhv0gLR+9l4JGJNcGd++zH0vC8D2TcZ7nyvkheUzQ4ubMMZ0
         SjLsc1a6TKoqai8/1/eS4pNrBvtiV8ovpUH+WJY0TGKwYX1dw6Q5nhjXMKTe2gqr6KV/
         nWQw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531bX6WbnmRKmgJYileDUYtLdEMuG06poCEkxEQw9RE57Y5xv5UB
	E0NTAt2lv6pcLNSAIFuIVas=
X-Google-Smtp-Source: ABdhPJz7VCWz3/hRz8VYKe9Ioj5l0Ipb6ccIKAK4P1SApSIwgU/CqNxcxfxSiWdqzG8LGhxEQEJYnQ==
X-Received: by 2002:a17:90a:b98d:: with SMTP id q13mr3807294pjr.82.1594720070352;
        Tue, 14 Jul 2020 02:47:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ea0e:: with SMTP id w14ls1307746pjy.3.canary-gmail;
 Tue, 14 Jul 2020 02:47:50 -0700 (PDT)
X-Received: by 2002:a17:902:9349:: with SMTP id g9mr3192964plp.313.1594720069958;
        Tue, 14 Jul 2020 02:47:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594720069; cv=none;
        d=google.com; s=arc-20160816;
        b=07DDczUr4i/kPg7QBSYTqtEh6Ge2Cct6b/PwHYK9d38ZrNjBf7ZwTUCRQtXP2cf2hv
         Ra17Ka1RhIT4koW2LTKEudE1hmtpceSi6sT3MrYHHEluYY+vgiDrUP2j8n6rW1eMLmSr
         rsn5pe29vwX6tGc0+Eub0B/gFR+1r1VQ/WSJIIVNXuYtqnltAiBkCljPNburPJ7w9Enn
         O/ziTFlRX0qGkKDhX/VdijuCuufF+4LV4U7rYQfzrCelS2BazDdG6KaBeWGwIvl9j+ia
         7eGb2YE2ahbYTI24d4DKk/9vmIPYCucd1vxcNtejiOtVCtTcXIN+MLrPezFpCAzn7Gu7
         iOZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=YqNccpuxOJFkoTpfanGInwjU6OHFaJ82qtoZ/UbUys4=;
        b=cY0wRtgIKgrh08POikxRFdpB0Hj5+NSgRUwB4tBScXISx1LYfaEZ4co4qzNXNHojm3
         KkOmZ0zhYkWJPdF/7CzkGqOze/EnKr18P3qVkPJ+4T+caC8efqR3N6ftpVyIVS99kCKh
         cVhjQty/Zt7skrojwMnCLqlzAc1N5xq9hG7dA4TtCA6Auya9uAJy782pQhGgQ7xhkXE8
         iwJk95fUiZpBinBfzfY5kcyvTfVPSVXzwQkD5oqFJ898K7MJ8n+4/F7N29+FKc4hbd5k
         x8DR9jTN0s8M51Git/4y2auVsvFITsIRO5coabhhV8n8hT+2U12WHxxZZvkH2Zjpp7Z6
         ITlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=TKihbRN9;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q13si928185pfc.6.2020.07.14.02.47.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Jul 2020 02:47:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 93988221F7
	for <clang-built-linux@googlegroups.com>; Tue, 14 Jul 2020 09:47:49 +0000 (UTC)
Received: by mail-ot1-f46.google.com with SMTP id g37so12581272otb.9
        for <clang-built-linux@googlegroups.com>; Tue, 14 Jul 2020 02:47:49 -0700 (PDT)
X-Received: by 2002:a9d:688:: with SMTP id 8mr3330059otx.108.1594720068773;
 Tue, 14 Jul 2020 02:47:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200629140928.858507-1-nivedita@alum.mit.edu>
 <20200629140928.858507-3-nivedita@alum.mit.edu> <CA+icZUVPF9-0KysS14f9oV7py87BfkK1mMS6cUKuusaos2K7hg@mail.gmail.com>
In-Reply-To: <CA+icZUVPF9-0KysS14f9oV7py87BfkK1mMS6cUKuusaos2K7hg@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Tue, 14 Jul 2020 12:47:37 +0300
X-Gmail-Original-Message-ID: <CAMj1kXF9F+3nn4L3Gv0NWKEQXa+rTJmOK=rDZNB8qbUax3SM0Q@mail.gmail.com>
Message-ID: <CAMj1kXF9F+3nn4L3Gv0NWKEQXa+rTJmOK=rDZNB8qbUax3SM0Q@mail.gmail.com>
Subject: Re: [PATCH v3 2/7] x86/boot/compressed: Force hidden visibility for
 all symbol references
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>, 
	X86 ML <x86@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Fangrui Song <maskray@google.com>, Dmitry Golovin <dima@golovin.in>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Daniel Kiper <daniel.kiper@oracle.com>, Kees Cook <keescook@chromium.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	"H . J . Lu" <hjl@sourceware.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=TKihbRN9;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Tue, 14 Jul 2020 at 12:21, Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Mon, Jun 29, 2020 at 4:09 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> >
> > From: Ard Biesheuvel <ardb@kernel.org>
> >
> > Eliminate all GOT entries in the decompressor binary, by forcing hidden
> > visibility for all symbol references, which informs the compiler that
> > such references will be resolved at link time without the need for
> > allocating GOT entries.
> >
> > To ensure that no GOT entries will creep back in, add an assertion to
> > the decompressor linker script that will fire if the .got section has
> > a non-zero size.
> >
> > [Arvind: fixup -include hidden.h to -include $(srctree)/$(src)/hidden.h]
> >
>
> Thanks for your v3 patchset.
>
> I tried your initial patchset and informed you about the <hidden.h>
> include file handling.
> Dropped your patchset against Linux v5.7 as I got no (satisfying) replies.

Dropped from where? This series should be taken through the -tip tree.

> For me this one is missing a Reported-by of mine.
>

We don't usually add reported-by lines for issues that were resolved
before the series was merged, given that the reported issue never
existed in mainline to begin with.

> As I want to test the whole v3 series, I will report later.
>

A tested-by is always appreciated.

> - Sedat -
>
> > Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> > Acked-by: Arvind Sankar <nivedita@alum.mit.edu>
> > Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> > From: Ard Biesheuvel <ardb@kernel.org>
> > Link: https://lore.kernel.org/r/20200523120021.34996-3-ardb@kernel.org
> > ---
> >  arch/x86/boot/compressed/Makefile      |  1 +
> >  arch/x86/boot/compressed/hidden.h      | 19 +++++++++++++++++++
> >  arch/x86/boot/compressed/vmlinux.lds.S |  1 +
> >  3 files changed, 21 insertions(+)
> >  create mode 100644 arch/x86/boot/compressed/hidden.h
> >
> > diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
> > index 7619742f91c9..b01c8aed0f23 100644
> > --- a/arch/x86/boot/compressed/Makefile
> > +++ b/arch/x86/boot/compressed/Makefile
> > @@ -42,6 +42,7 @@ KBUILD_CFLAGS += $(call cc-disable-warning, gnu)
> >  KBUILD_CFLAGS += -Wno-pointer-sign
> >  KBUILD_CFLAGS += $(call cc-option,-fmacro-prefix-map=$(srctree)/=)
> >  KBUILD_CFLAGS += -fno-asynchronous-unwind-tables
> > +KBUILD_CFLAGS += -include $(srctree)/$(src)/hidden.h
> >
> >  KBUILD_AFLAGS  := $(KBUILD_CFLAGS) -D__ASSEMBLY__
> >  GCOV_PROFILE := n
> > diff --git a/arch/x86/boot/compressed/hidden.h b/arch/x86/boot/compressed/hidden.h
> > new file mode 100644
> > index 000000000000..49a17b6b5962
> > --- /dev/null
> > +++ b/arch/x86/boot/compressed/hidden.h
> > @@ -0,0 +1,19 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +/*
> > + * When building position independent code with GCC using the -fPIC option,
> > + * (or even the -fPIE one on older versions), it will assume that we are
> > + * building a dynamic object (either a shared library or an executable) that
> > + * may have symbol references that can only be resolved at load time. For a
> > + * variety of reasons (ELF symbol preemption, the CoW footprint of the section
> > + * that is modified by the loader), this results in all references to symbols
> > + * with external linkage to go via entries in the Global Offset Table (GOT),
> > + * which carries absolute addresses which need to be fixed up when the
> > + * executable image is loaded at an offset which is different from its link
> > + * time offset.
> > + *
> > + * Fortunately, there is a way to inform the compiler that such symbol
> > + * references will be satisfied at link time rather than at load time, by
> > + * giving them 'hidden' visibility.
> > + */
> > +
> > +#pragma GCC visibility push(hidden)
> > diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
> > index b17d218ccdf9..4bcc943842ab 100644
> > --- a/arch/x86/boot/compressed/vmlinux.lds.S
> > +++ b/arch/x86/boot/compressed/vmlinux.lds.S
> > @@ -81,6 +81,7 @@ SECTIONS
> >         DISCARDS
> >  }
> >
> > +ASSERT(SIZEOF(.got) == 0, "Unexpected GOT entries detected!")
> >  #ifdef CONFIG_X86_64
> >  ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0x18, "Unexpected GOT/PLT entries detected!")
> >  #else
> > --
> > 2.26.2
> >

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXF9F%2B3nn4L3Gv0NWKEQXa%2BrTJmOK%3DrDZNB8qbUax3SM0Q%40mail.gmail.com.
