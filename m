Return-Path: <clang-built-linux+bncBCQJP74GSUDRBM7I4H6AKGQEL6II2GQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id F11FA29C8C3
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 20:25:40 +0100 (CET)
Received: by mail-pf1-x43e.google.com with SMTP id t194sf1512270pfc.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 12:25:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603826739; cv=pass;
        d=google.com; s=arc-20160816;
        b=VLR7vS8XBFNm9L5vDusVl8LXb7AaRFiuvLqPR5tcDTE+GIeDTYuQJAfgF8soj/dtD8
         9ydwXBvsvsOZQ64oT4jfnC4Ix24S9cT2QCDkm6vRUb6FqNUbvhZZXiMueubcfV8G+bKR
         PyFhgAvo/s4JUBT6CFKzojEhJvlTi+jvTDrXg9SpLc4RzhIiByu4SHdQmfMzIlpgdJ6u
         4FsMo2ClSevyxFQE0qCFwOdQqljwtSvpEC49HtTZBtsHWTNpNIyDEb4objASHp6R4yin
         kcgqgBo42CJQu4taTZcev6cQf4AsWjhJ5fQdvZZRwpFfKXPEQjWbW60xiBzWQapUSxBW
         MGSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=YVUEp9AuTeMNwC3x1+pvF+VrI6FKTfwim/0XoS5B1n8=;
        b=FERNs+QZf6GBmWCOq31uKAqaXDFOirDIxoPVei2C/gJE+QYDcw/CQIbfoLJ1Uahqs8
         Cgu3VV3XxsmGhMU9BhvLf3gXw1TTbiOdHSGJ9ItM4dVkK7yXpw0j+qbK6fUIgi7l+Js1
         ncGZU9/mx+g3QSbtpudrJJK8ydrJYdxLYTIAODTRxtoQ3KS7LndJ0h4comt5uSnTE9Em
         +hsSBxSV31HNT17UUCjS9qHTnAjLgFF9McYYMGc1TaCeM119EvKCEopovRHzojIG7asE
         4+DFjxuAOBK9/NnqZKQJ3HJUaTDh2TXlYoAFdBG7r7QG/q907iCWvQcKBSD2saYNi9Nu
         kENQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.210.68 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YVUEp9AuTeMNwC3x1+pvF+VrI6FKTfwim/0XoS5B1n8=;
        b=ZllDIoELd79//BLFaFQjSxAp33q060UG7nRpzMAp0ekYm1M011yrc/D5iIMxYpyrQa
         YbB5XoW281hwJF/qSORzwmVSU185FyxGz8UssGKLgpqF3mAQlFyjVjZ7omiqkOoaciGm
         7Cq0kixd1mdhbWGk4SMzH7PbTH940Qk318foPwK3RW37go7QxyNQmIWED9qDtGAI3lDY
         SY6pptF6hqQcpHnj959V8+x/rMTAlG7MLcb/Ey4BkIje4t7GRq90Hn7JTtpcH6NHhXvv
         Woa9tTn8U4TMJKycXvWN726qw5AM996OVpY5HFwhHWP5YIDehHXqNifzxDpN0R7GDXTd
         W8lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YVUEp9AuTeMNwC3x1+pvF+VrI6FKTfwim/0XoS5B1n8=;
        b=TMG7eJZGpUMSM/rEMj6KyQrmQPXmwT6zdqsfSGPOQBLThEGpZ/7CZbqRZaKGEGe9c7
         B2OpA/8eeFgY/BC2t6AXtXBHkcfalH1QrlKvPCrmcKcrOfUkGNWOWg29cMaOaK9Fc03P
         X4bYw9j8gf0+p2pCIncEOJkGmfxJoUCDwVgsJiYB07y1BwOjNKokI26vTzz4YhqMbN6C
         5YX0SEZLYuuvwflNiQe2JhcBjyHi57bWSCD10mNPo/aSTDcJgCDPikT1brK9vh6l6HBO
         1J8IEtVfStvNP7OzcOpKcBLJWBWZmlK0LrHghiD86Rrq3nBLU49eyEK/PhC80w/q8Hjr
         GO3A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530TlFh7Py4jLFYUabKsH5Q7IJf2oEf8wGfcvdnxkOtXoM5h5dpG
	IFepDugIL3t+V+/XfZ7hWOk=
X-Google-Smtp-Source: ABdhPJx4cHZlqJEnREDDXTADVcIagMnKiTc7yKwLI9yUgBSgStp1Ga1Csyli1GiMHxCqzcy5wYcLQw==
X-Received: by 2002:a17:902:6545:b029:d3:d1fc:ff28 with SMTP id d5-20020a1709026545b02900d3d1fcff28mr3830682pln.34.1603826739666;
        Tue, 27 Oct 2020 12:25:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:941a:: with SMTP id m26ls972829pge.10.gmail; Tue, 27 Oct
 2020 12:25:38 -0700 (PDT)
X-Received: by 2002:a63:e354:: with SMTP id o20mr3290075pgj.317.1603826738868;
        Tue, 27 Oct 2020 12:25:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603826738; cv=none;
        d=google.com; s=arc-20160816;
        b=xDrX9glF9IAcWrxjzPaQBHAgSe3uJX8V2mEeHBoE7b/FNTCIzvGWdqXBjDp8JF5mpd
         x7WMcSyxWobhomI9Y0ut7/EwjDDRJyG92MjzYuriRHhOBHDdfg7SQpnuV2zZbganCAav
         RJIrjNuj+V4P1sKSa4yrEy3csqj2x587/ZZCGp/quBW5KEdWI7XUCq93wdTg6ooL2Djn
         1ZdEMLPBsqA5v1UXWh5FdMSxcJeiM1+4dt8gUWiwNZ3n5friozBw7TGqSYVZK8Up7gY8
         Ol97jTCHkbVd0QUV8S6QFDhyEs+jO9tD51rdL6FSeYXzX/Y13wfj7IMF1mFoI2HXPQS+
         nNDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=DAXcDu1i1flhyWT9SP7kPy0qFQN/al6f7WHErrrSgPg=;
        b=QXmFPxj2sFZWuBwIhdIwtfmYAhzstQMrpVfyPTBdrS3VcgHI85B0YF7xYVcG2HOlsQ
         OjN5ESv5SuGbzMxxAvlyy9uXJ9ouLgQPLyomg7XJChmrs27/u38A9Rfq3zZQeH4PhZPJ
         uIQzG2vJPmsK/ztHMhHGQHyAOqk1iBQYfURp1kBEPhm5i+1g/TUslTZ+zpV9+B0mOp4Y
         +3NLJTchiyegu2JrlTzX8DeGXoqD8aVpyEO/GJfJuNL5drrMPBT6WD8a0SzGnTwqCN/7
         0hHv2418Z/lSLTrMdhwyJWQ2QE4DsS6K47xI0MoVxdFSL2E9ELoG0Mx5fgfbbyJAyvRO
         aOcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.210.68 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com. [209.85.210.68])
        by gmr-mx.google.com with ESMTPS id t13si186916ply.2.2020.10.27.12.25.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 12:25:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.210.68 as permitted sender) client-ip=209.85.210.68;
Received: by mail-ot1-f68.google.com with SMTP id n15so2162969otl.8
        for <clang-built-linux@googlegroups.com>; Tue, 27 Oct 2020 12:25:38 -0700 (PDT)
X-Received: by 2002:a9d:5e14:: with SMTP id d20mr2427991oti.107.1603826738174;
 Tue, 27 Oct 2020 12:25:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200821194310.3089815-1-keescook@chromium.org>
 <20200821194310.3089815-14-keescook@chromium.org> <CAMuHMdUg0WJHEcq6to0-eODpXPOywLot6UD2=GFHpzoj_hCoBQ@mail.gmail.com>
 <CAMuHMdUw9KwC=EVB60yjg7mA7Fg-efOiKE7577p+uEdGJVS2OQ@mail.gmail.com>
 <CAMuHMdUJFEt3LxWHk73AsLDGhjzBvJGAML76UAxeGzb4zOf96w@mail.gmail.com>
 <CAMj1kXHXk3BX6mz6X_03sj_pSLj9Ck-=1S57tV3__N9JQOcDEw@mail.gmail.com>
 <CAMuHMdV4jKccjKkoj38EFC-5yN99pBvthFyrX81EG4GpassZwA@mail.gmail.com> <CAKwvOdkq3ZwW+FEui1Wtj_dWBevi0Mrt4fHa4oiMZTUZKOMi3g@mail.gmail.com>
In-Reply-To: <CAKwvOdkq3ZwW+FEui1Wtj_dWBevi0Mrt4fHa4oiMZTUZKOMi3g@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 27 Oct 2020 20:25:26 +0100
Message-ID: <CAMuHMdUDOzJbzf=0jom9dnSzkC+dkMdkyY_BOBMAivbJfF+Gmg@mail.gmail.com>
Subject: Re: [PATCH v6 13/29] arm64/build: Assert for unwanted sections
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Ard Biesheuvel <ardb@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Ingo Molnar <mingo@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Mark Rutland <mark.rutland@arm.com>, Peter Collingbourne <pcc@google.com>, James Morse <james.morse@arm.com>, 
	Borislav Petkov <bp@suse.de>, Ingo Molnar <mingo@redhat.com>, Russell King <linux@armlinux.org.uk>, 
	Masahiro Yamada <masahiroy@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	"the arch/x86 maintainers" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux-Arch <linux-arch@vger.kernel.org>, linux-efi <linux-efi@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Linux-Renesas <linux-renesas-soc@vger.kernel.org>, Josh Poimboeuf <jpoimboe@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: geert@linux-m68k.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.210.68
 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
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

Hi Nick,

CC Josh

On Mon, Oct 26, 2020 at 6:49 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
> On Mon, Oct 26, 2020 at 10:44 AM Geert Uytterhoeven
> <geert@linux-m68k.org> wrote:
> > On Mon, Oct 26, 2020 at 6:39 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> > > On Mon, 26 Oct 2020 at 17:01, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > > On Mon, Oct 26, 2020 at 2:29 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > > > On Mon, Oct 26, 2020 at 1:29 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > > > > On Fri, Aug 21, 2020 at 9:56 PM Kees Cook <keescook@chromium.org> wrote:
> > > > > > > In preparation for warning on orphan sections, discard
> > > > > > > unwanted non-zero-sized generated sections, and enforce other
> > > > > > > expected-to-be-zero-sized sections (since discarding them might hide
> > > > > > > problems with them suddenly gaining unexpected entries).
> > > > > > >
> > > > > > > Suggested-by: Ard Biesheuvel <ardb@kernel.org>
> > > > > > > Signed-off-by: Kees Cook <keescook@chromium.org>
> > > > > >
> > > > > > This is now commit be2881824ae9eb92 ("arm64/build: Assert for unwanted
> > > > > > sections") in v5.10-rc1, and is causing the following error with
> > > > > > renesas_defconfig[1]:
> > > > > >
> > > > > >     aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from
> > > > > > `kernel/bpf/core.o' being placed in section `.eh_frame'
> > > > > >     aarch64-linux-gnu-ld: Unexpected GOT/PLT entries detected!
> > > > > >     aarch64-linux-gnu-ld: Unexpected run-time procedure linkages detected!
> > > > > >
> > > > > > I cannot reproduce this with the standard arm64 defconfig.
> > > > > >
> > > > > > I bisected the error to the aforementioned commit, but understand this
> > > > > > is not the real reason.  If I revert this commit, I still get:
> > > > > >
> > > > > >     aarch64-linux-gnu-ld: warning: orphan section `.got.plt' from
> > > > > > `arch/arm64/kernel/head.o' being placed in section `.got.plt'
> > > > > >     aarch64-linux-gnu-ld: warning: orphan section `.plt' from
> > > > > > `arch/arm64/kernel/head.o' being placed in section `.plt'
> > > > > >     aarch64-linux-gnu-ld: warning: orphan section `.data.rel.ro' from
> > > > > > `arch/arm64/kernel/head.o' being placed in section `.data.rel.ro'
> > > > > >     aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from
> > > > > > `kernel/bpf/core.o' being placed in section `.eh_frame'
> > > > > >
> > > > > > I.e. including the ".eh_frame" warning. I have tried bisecting that
> > > > > > warning (i.e. with be2881824ae9eb92 reverted), but that leads me to
> > > > > > commit b3e5d80d0c48c0cc ("arm64/build: Warn on orphan section
> > > > > > placement"), which is another red herring.
> > > > >
> > > > > kernel/bpf/core.o is the only file containing an eh_frame section,
> > > > > causing the warning.
>
> When I see .eh_frame, I think -fno-asynchronous-unwind-tables is
> missing from someone's KBUILD_CFLAGS.
> But I don't see anything curious in kernel/bpf/Makefile, unless
> cc-disable-warning is somehow broken.

I tracked it down to kernel/bpf/core.c:___bpf_prog_run() being tagged
with __no_fgcse aka __attribute__((optimize("-fno-gcse"))).

Even if the function is trivially empty ("return 0;"), a ".eh_frame" section
is generated.  Removing the __no_fgcse tag fixes that.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMuHMdUDOzJbzf%3D0jom9dnSzkC%2BdkMdkyY_BOBMAivbJfF%2BGmg%40mail.gmail.com.
