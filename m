Return-Path: <clang-built-linux+bncBCQJP74GSUDRBLUC3P6AKGQEDXJINCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA47298CDD
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 13:29:36 +0100 (CET)
Received: by mail-yb1-xb37.google.com with SMTP id c196sf11112080ybf.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 05:29:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603715375; cv=pass;
        d=google.com; s=arc-20160816;
        b=yzKG7u7+jMM2STJAz/RJIkJL35iOhiadeXiS1F+dz0GhzaLfbPOPntYBY6KfIOfOgD
         vaSzYpg5f9lxrHefy7E9GdmBzPcg1K3+ePMSsFEtdBsml4aV/5iDt3K6fvg0ftN5ELdC
         SjkG8KqJ09YhcIrXr59HW8cjCaT+Y7BavhK24fnZv2+NpPonHIsy32HP3mbfQNZ7+693
         0HvTpKfGm+ZPTN0ioTN1K1rCCqLjlEzsd13+Ecw8HnXXMLnLhPuti00Do/Vfq+oQufee
         aUf1jIeEk/3QH9/Aly+3z5coXy9cpTLZS4ZmxpvqfCeSY5hlbUimS/qdamqWKarPzD7v
         MwdQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=hfUTCRXJm7C8d4LoScQo3fmSFoUBzCS0jB/quzgIHFY=;
        b=ISLVdyWP/GMyoABAAa4OxcotKWZ6OX654uIEpxAcjl3cB38Ehl5eFe5pmUjCFMLCY8
         3UeoAdJaE4fYGaxNnib/isq3UWu4Hp7BbAPTJ0JsWaOSVGaBKrCiMla9TnaOPGvp0u+q
         UYPYf3PSgUpd5jKr3bGr/Qh8D16ihAh8jEV6fQEXyv+QNqmewyjvG1bZ0N266RWOgWoW
         1C7VKkDsnRIbLEo6gsmslcAEis5CmVo3ciEkiILOAZ+pQ84abp9LyixSoL9wg6FGNLq/
         4OlsEdlF6UgtL2Aq4MWonD7kkyAijXcnqMSx8hstd930uCJOfmp1hUae5ovDeU3JCcvV
         Zaew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.210.68 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hfUTCRXJm7C8d4LoScQo3fmSFoUBzCS0jB/quzgIHFY=;
        b=aAcChB5OmwCDraUK4TkN+U1ZQaHKzuMkilG1LvikEpwIAMWJd/9MTXQmXeilMsBqxs
         1dDKoNwPkWgsLlZUPtoSXO+SLs0TuCOwNTqIBC6aLv8CE3Bdsd1FPrsdVDFofoBnzbjf
         BWXZGw5qDeAFrGhBokxdkSm+D3gcB6BTV7ZAnpRB3bX6TJ3NvUcMex8OmPe5r8iQ24IO
         lL5XLGdK+D8IKo89R8hD+nqT1TCHwlELmVZUqZV54OBDEZOSYHsiM2DciNxKO8OYw8iO
         R8xa5ilAkqxqQL2adoPVtS/RCD9Y+r29oMOpGYmXGSjhOIfSL12CoOfVIX35tRC70jV3
         MpNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hfUTCRXJm7C8d4LoScQo3fmSFoUBzCS0jB/quzgIHFY=;
        b=l7lR70lXNXDrhXe43NaKW4y/RD0PhT+079Ll/dEIZRSO9XRn5BJcbC4xLR4q2fDlX3
         bspzxRdJygG7OqJOjXgG7ztRre/AX6zFUeH8LMVhV1LWiRIC+JeBlIuW6qWWZiPjcDI+
         QF2AhOxWQjSIoT0dWPOE4G/jnHZQFf6jvakGvJSkWa2jR5Y+B/irMV53GgbO7buIJuAu
         5GW4VKLWQlFA915ymhYlMk4OInnCV+8JLdw/xOy2XmEjNxtSV687kPtTXCeiIRcvX8hK
         +/HkOPz8gZBtWB2L3MNF8BZYTOW3/l1uyZIr2YLFKmh9nm3Hyh3XSX1mXtpnEwbdK6vC
         r92w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5315zOlqhn7hkouMjBpHFrOp572yVUeaL4Sov9zLqdK3ndnLX7Ez
	mdPwAfTNsXbEfFR7hTpyW8k=
X-Google-Smtp-Source: ABdhPJzVAYb6X4PFxbMibYsF1W//29C0clocC7R9ivEVnFN6V401cC8AHMgCbBscaP4Xg6wpMK7org==
X-Received: by 2002:a25:c6d0:: with SMTP id k199mr22869546ybf.469.1603715375176;
        Mon, 26 Oct 2020 05:29:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2c04:: with SMTP id s4ls4050501ybs.0.gmail; Mon, 26 Oct
 2020 05:29:34 -0700 (PDT)
X-Received: by 2002:a25:d081:: with SMTP id h123mr23158104ybg.160.1603715374581;
        Mon, 26 Oct 2020 05:29:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603715374; cv=none;
        d=google.com; s=arc-20160816;
        b=D2yaJUwnB/Xz1A7b7EeWog8lsFQPawFO5aqU4qzIX9v9JhgT3Q7vrtHJ2c01zLPjSZ
         Y7XvRImt5+1kmch4KKW6mimIYvr7WxgZdC61NAGKKpJ7yfNjqBPmxtXkjLRZxDZghq+6
         2P4WwfnFLPjhlQ3EH2dB5+6s1Nx5+btpEZfZxz5Tj2X4mPjcsSKKhkvChoi+k+JeUsaO
         yVL5HLGPGq5LfjG1EF1wTXE14/cm6ARUssvToRmwHpPBPwWF0Oprv0gO7T123kp1DcGX
         fXX1e0kZjwb3+yCmmB612fCz+JsyW9DMgfAUYivMk7U2XupGDR/yZcivClzsaZrfaZu1
         Fb0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=0trfHgi8OBfd5iB69j5LL8jeOJ1Nb/421IvjhePhaus=;
        b=ZcwjAAGLiIW9TgzTVl7qpczBEWPXho0rnfTQu2lDja3mVrM6Y2gea6rsJ5vyoZkQgn
         Q+k+NiI6QDMypMguwg+w1M0KIs8wd80B9e/2s2FRorgoMN3GL9ucUfZrx82lSJDIoOSC
         KG/qrSKp4oClu1bpHzXAfKxJwfVrMP4HEPkYmLKsRDwLURrvzy1C5Mgpi9bWwe2uSHlh
         vCTuBhfZKVmGG8Z1phBLWi3NafiRoQ9a3VzN3Q9ccLeCxDdGdbYz3fwA4o403EjpArB2
         fA2lKSerO3iMsK0ieMSfmbOzV8BZFCpbR2U4HUb3mCJ5hTFvZX8fmmMxL6+plfF56bQw
         B/Bw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.210.68 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com. [209.85.210.68])
        by gmr-mx.google.com with ESMTPS id t12si707594ybp.2.2020.10.26.05.29.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Oct 2020 05:29:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.210.68 as permitted sender) client-ip=209.85.210.68;
Received: by mail-ot1-f68.google.com with SMTP id f37so7778013otf.12
        for <clang-built-linux@googlegroups.com>; Mon, 26 Oct 2020 05:29:34 -0700 (PDT)
X-Received: by 2002:a05:6830:210a:: with SMTP id i10mr13055312otc.145.1603715374142;
 Mon, 26 Oct 2020 05:29:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200821194310.3089815-1-keescook@chromium.org> <20200821194310.3089815-14-keescook@chromium.org>
In-Reply-To: <20200821194310.3089815-14-keescook@chromium.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 26 Oct 2020 13:29:22 +0100
Message-ID: <CAMuHMdUg0WJHEcq6to0-eODpXPOywLot6UD2=GFHpzoj_hCoBQ@mail.gmail.com>
Subject: Re: [PATCH v6 13/29] arm64/build: Assert for unwanted sections
To: Kees Cook <keescook@chromium.org>
Cc: Ingo Molnar <mingo@kernel.org>, Ard Biesheuvel <ardb@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Mark Rutland <mark.rutland@arm.com>, 
	Peter Collingbourne <pcc@google.com>, James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>, 
	Ingo Molnar <mingo@redhat.com>, Russell King <linux@armlinux.org.uk>, 
	Masahiro Yamada <masahiroy@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Arnd Bergmann <arnd@arndb.de>, "the arch/x86 maintainers" <x86@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux-Arch <linux-arch@vger.kernel.org>, linux-efi <linux-efi@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Linux-Renesas <linux-renesas-soc@vger.kernel.org>
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

Hi Kees,

On Fri, Aug 21, 2020 at 9:56 PM Kees Cook <keescook@chromium.org> wrote:
> In preparation for warning on orphan sections, discard
> unwanted non-zero-sized generated sections, and enforce other
> expected-to-be-zero-sized sections (since discarding them might hide
> problems with them suddenly gaining unexpected entries).
>
> Suggested-by: Ard Biesheuvel <ardb@kernel.org>
> Signed-off-by: Kees Cook <keescook@chromium.org>

This is now commit be2881824ae9eb92 ("arm64/build: Assert for unwanted
sections") in v5.10-rc1, and is causing the following error with
renesas_defconfig[1]:

    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from
`kernel/bpf/core.o' being placed in section `.eh_frame'
    aarch64-linux-gnu-ld: Unexpected GOT/PLT entries detected!
    aarch64-linux-gnu-ld: Unexpected run-time procedure linkages detected!

I cannot reproduce this with the standard arm64 defconfig.

I bisected the error to the aforementioned commit, but understand this
is not the real reason.  If I revert this commit, I still get:

    aarch64-linux-gnu-ld: warning: orphan section `.got.plt' from
`arch/arm64/kernel/head.o' being placed in section `.got.plt'
    aarch64-linux-gnu-ld: warning: orphan section `.plt' from
`arch/arm64/kernel/head.o' being placed in section `.plt'
    aarch64-linux-gnu-ld: warning: orphan section `.data.rel.ro' from
`arch/arm64/kernel/head.o' being placed in section `.data.rel.ro'
    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from
`kernel/bpf/core.o' being placed in section `.eh_frame'

I.e. including the ".eh_frame" warning. I have tried bisecting that
warning (i.e. with be2881824ae9eb92 reverted), but that leads me to
commit b3e5d80d0c48c0cc ("arm64/build: Warn on orphan section
placement"), which is another red herring.

Note that even on plain be2881824ae9eb92, I get:

    aarch64-linux-gnu-ld: Unexpected GOT/PLT entries detected!
    aarch64-linux-gnu-ld: Unexpected run-time procedure linkages detected!

The parent commit obviously doesn't show that (but probably still has
the problem).

Do you have a clue!

Thanks!

> --- a/arch/arm64/kernel/vmlinux.lds.S
> +++ b/arch/arm64/kernel/vmlinux.lds.S
> @@ -121,6 +121,14 @@ SECTIONS
>                 *(.got)                 /* Global offset table          */
>         }
>
> +       /*
> +        * Make sure that the .got.plt is either completely empty or it
> +        * contains only the lazy dispatch entries.
> +        */
> +       .got.plt : { *(.got.plt) }
> +       ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0x18,
> +              "Unexpected GOT/PLT entries detected!")
> +
>         . = ALIGN(SEGMENT_ALIGN);
>         _etext = .;                     /* End of text section */
>
> @@ -243,6 +251,18 @@ SECTIONS
>         ELF_DETAILS
>
>         HEAD_SYMBOLS
> +
> +       /*
> +        * Sections that should stay zero sized, which is safer to
> +        * explicitly check instead of blindly discarding.
> +        */
> +       .plt : {
> +               *(.plt) *(.plt.*) *(.iplt) *(.igot)
> +       }
> +       ASSERT(SIZEOF(.plt) == 0, "Unexpected run-time procedure linkages detected!")
> +
> +       .data.rel.ro : { *(.data.rel.ro) }
> +       ASSERT(SIZEOF(.data.rel.ro) == 0, "Unexpected RELRO detected!")
>  }
>
>  #include "image-vars.h"

[1] https://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-devel.git/log/?h=topic/renesas-defconfig

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMuHMdUg0WJHEcq6to0-eODpXPOywLot6UD2%3DGFHpzoj_hCoBQ%40mail.gmail.com.
