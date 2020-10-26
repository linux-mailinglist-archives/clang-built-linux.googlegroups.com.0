Return-Path: <clang-built-linux+bncBCQJP74GSUDRBWU63P6AKGQEE5CSTQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id B99DF298DE0
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 14:30:03 +0100 (CET)
Received: by mail-pl1-x637.google.com with SMTP id g10sf6203268plq.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 06:30:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603719002; cv=pass;
        d=google.com; s=arc-20160816;
        b=wHJtm3EcKWQZ/a8vWWLUkbdrKXO0POw5hnUgD5kL+L/pE8trx6U/jHsXQwd6uOfbtx
         g4BkX33s5Xrka9tHt037SKogj+OpQ+tXT/sE5d+Z7rhMZlR1r8kyfesmuthKOaNYunTA
         WtXJfiGLFhh8TyMe/wzd4vEzzUYysUwNPwitggX6zH9mTu4qCFp3zJ5/g/SImRYy3H+X
         IA5uehzWNjIe4ui+PbYl+lLgfnQXVQRhCVd59JIuN4d6ASkeuSE8J5nAiu7kEhcrwbDt
         sxbaGhBSnQL64/BFYgTztSIJCqPDWQWvdRwUAaSbzM6Fl9Svb70zwRj01NzxBze6c7XU
         J0UQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=SCibOnA4Sadlyg4UrzM7vFvbaDMlVGsYb9JTGYDcqvU=;
        b=Hb7O77fCgsKV6DzZ0tTUSBWYlxw0UMtxjwP0ls4kCqpxLlMie4+PB0XgHcshLbUkU2
         i/JEL7RC28GBMzxwwHdcpHAmKWp5IzbZlUfYdfakUcCXYF3yBuEpkEDEEtTl9F71oy/5
         E9lwh3xtCaWzdCzF4gI9hlZroeE31WuxQm9bv4G2Q32IWm+QFfgWSa0QQwk3W4u6vOCn
         ebbyEDfCs0beZ6tf7862+kae3hgU/mEbWWAuPhUHutBe0btd+a9oruXyKjeRDcaRhmZy
         aPYBQ5c7VGrFybqYp6VYqDNBHF35sCh++Ph7MdezclLrxfkM/+8PzNPZ9RAPfBdFHOJL
         TZng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.210.66 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SCibOnA4Sadlyg4UrzM7vFvbaDMlVGsYb9JTGYDcqvU=;
        b=RNjTUoJNMe5dzKoeBK60c+310wKS7SNLF954G31n6+wIC3zKu3PfLi6kv6+9T8rUx7
         RYpwJ+tdKTykGebipZGFgNAfX1xp65DufvdYHGr42VO5RlX+UVDape623AXcAJCUQA98
         xEo/DICDhVNNQ4UnsQoiGaR9PUtinoswiT6HPM39n10t2ps54NC/70JUF6MEbdOjaujo
         nJUW4tGH/IwPXxlQk7QzVbHKbW1ZPXX/2L2L6Ub1Og9VQK0x9TR3woS/vjmOD+HwFg8I
         XWpi6rTk5+3cr+GFVf4EriWA5LBES3exS2KhEwk3MDqfg8JwvtISxPENF4978AnCi30G
         bskw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SCibOnA4Sadlyg4UrzM7vFvbaDMlVGsYb9JTGYDcqvU=;
        b=ovEuBz/DoJ604lCeSN7wjJFH9ZY+a9TsaqdYaWjWxCiz9HEqZtIGFbdmPdXYtYlDrC
         npj9y2txrOrLU8ya1M7/t7MofGlV+nxYQjoBKgnY4J3GtgpihO4l/JRKHsWtmxyQ7Lpw
         OCWaxrJ9ELK6DyAqJvUD0dbnEVuCfDAlKTqHM3Q0XpEuCQoE1P8X2ftmEgmh7VsNkmvE
         zV47wjGyo0zIW1rYBXFiFtS2jlEw7scUAXyWJF1O/Lu9QIdFKJnjkPgLNZ0BSp5AFtY3
         X+9Tv4m0/81voSXmVs2sQJpPsP+2ejYBYCNj86rk0dtcrB4JPnfnu01s5uLThpObJ8k9
         FxLw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532QfiE0JrvzhGOsQKX9mKOxD/C0G5cigFdP2FzAhb8SuT9PcAlG
	B1J/CZkhFAmxl+8L3fXAN0w=
X-Google-Smtp-Source: ABdhPJzPBxUuJ9/mqLdImEWuYeDS0Rmn75iMq8PBV7MgDOoDVU2dttGHYolGyJAe42TIRhPeAg0JtQ==
X-Received: by 2002:a17:902:7fcd:b029:d3:f037:d9dc with SMTP id t13-20020a1709027fcdb02900d3f037d9dcmr13730526plb.79.1603719002467;
        Mon, 26 Oct 2020 06:30:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8b8a:: with SMTP id ay10ls4433602plb.6.gmail; Mon,
 26 Oct 2020 06:30:01 -0700 (PDT)
X-Received: by 2002:a17:902:6545:b029:d3:d370:2882 with SMTP id d5-20020a1709026545b02900d3d3702882mr14324866pln.44.1603719001763;
        Mon, 26 Oct 2020 06:30:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603719001; cv=none;
        d=google.com; s=arc-20160816;
        b=wKqHZZ5TQKvzIos2wTy8Dxy8K5YHWssnX8krx2IxA7aG4bqOGOnGw5w9UGjmP1HJu3
         vGivW9yZ+R/jkE+8nhFB59rSAVq3vNAn7Jg5591NlrHqGlnA4AEnkdG+tMv7uSdr7C7D
         QaH9AB++rfCHV1E4K9Y2eh78L1k16Gq4WXXThIsOTCFECwdrjvvvy+3McXAnAEJ1YIQ7
         XdaX3MX+3v3l6yiuhGCKiCkN4BO1v0DxNZRWOxdM6V1wt16+FMTsBaNltv3JDUsyxrHG
         PakHMZu3lzwovysu5rRHsz3jVbpWiLfBJsJhy8ah5iylw6q8mCyeBSg80M3YSF3J5p3l
         6tMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=FodSC38Gucm0eHQgP9jakBf/M+7jxyQ1VGg9dlr1Jq4=;
        b=GITzqq7Gwb/PipxGQUydsKxEKQlKea70h+BTCffx6z+aQTbGrNgTdlzcUfhdjJez/7
         MErPGVnhEE7rZPGbgWrm4s/xtaEn/Zd+XdPr1j9AcqKKV4BO7l1pFEj1mCPZzEu9scxT
         HFh9CZSwp62H7yGVlaoNaq/OygVXOB2v/HIFUPNcqq+zcvO9nAqjl2+C2IbtoLj62Y39
         NGys5KENx8oEANUREmuFxhxVhpck3XdVJWZnrij5z8XA+VhTrpJcWwDAG/obSC3Xna7h
         N1YYnne567uOCDcHzXaicCAuE/vIXl+j1m1yXgiGljTjuk2zGYXKRFPGalcABGFz7nv/
         /BmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.210.66 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com. [209.85.210.66])
        by gmr-mx.google.com with ESMTPS id m62si728374pgm.2.2020.10.26.06.30.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Oct 2020 06:30:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.210.66 as permitted sender) client-ip=209.85.210.66;
Received: by mail-ot1-f66.google.com with SMTP id k68so7942719otk.10
        for <clang-built-linux@googlegroups.com>; Mon, 26 Oct 2020 06:30:01 -0700 (PDT)
X-Received: by 2002:a9d:5e14:: with SMTP id d20mr10851681oti.107.1603719000984;
 Mon, 26 Oct 2020 06:30:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200821194310.3089815-1-keescook@chromium.org>
 <20200821194310.3089815-14-keescook@chromium.org> <CAMuHMdUg0WJHEcq6to0-eODpXPOywLot6UD2=GFHpzoj_hCoBQ@mail.gmail.com>
In-Reply-To: <CAMuHMdUg0WJHEcq6to0-eODpXPOywLot6UD2=GFHpzoj_hCoBQ@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 26 Oct 2020 14:29:49 +0100
Message-ID: <CAMuHMdUw9KwC=EVB60yjg7mA7Fg-efOiKE7577p+uEdGJVS2OQ@mail.gmail.com>
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
 (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.210.66
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

On Mon, Oct 26, 2020 at 1:29 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> On Fri, Aug 21, 2020 at 9:56 PM Kees Cook <keescook@chromium.org> wrote:
> > In preparation for warning on orphan sections, discard
> > unwanted non-zero-sized generated sections, and enforce other
> > expected-to-be-zero-sized sections (since discarding them might hide
> > problems with them suddenly gaining unexpected entries).
> >
> > Suggested-by: Ard Biesheuvel <ardb@kernel.org>
> > Signed-off-by: Kees Cook <keescook@chromium.org>
>
> This is now commit be2881824ae9eb92 ("arm64/build: Assert for unwanted
> sections") in v5.10-rc1, and is causing the following error with
> renesas_defconfig[1]:
>
>     aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from
> `kernel/bpf/core.o' being placed in section `.eh_frame'
>     aarch64-linux-gnu-ld: Unexpected GOT/PLT entries detected!
>     aarch64-linux-gnu-ld: Unexpected run-time procedure linkages detected!
>
> I cannot reproduce this with the standard arm64 defconfig.
>
> I bisected the error to the aforementioned commit, but understand this
> is not the real reason.  If I revert this commit, I still get:
>
>     aarch64-linux-gnu-ld: warning: orphan section `.got.plt' from
> `arch/arm64/kernel/head.o' being placed in section `.got.plt'
>     aarch64-linux-gnu-ld: warning: orphan section `.plt' from
> `arch/arm64/kernel/head.o' being placed in section `.plt'
>     aarch64-linux-gnu-ld: warning: orphan section `.data.rel.ro' from
> `arch/arm64/kernel/head.o' being placed in section `.data.rel.ro'
>     aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from
> `kernel/bpf/core.o' being placed in section `.eh_frame'
>
> I.e. including the ".eh_frame" warning. I have tried bisecting that
> warning (i.e. with be2881824ae9eb92 reverted), but that leads me to
> commit b3e5d80d0c48c0cc ("arm64/build: Warn on orphan section
> placement"), which is another red herring.

kernel/bpf/core.o is the only file containing an eh_frame section,
causing the warning.
If I compile core.c with "-g" added, like arm64 defconfig does, the
eh_frame section is no longer emitted.

Hence setting CONFIG_DEBUG_INFO=y, cfr. arm64 defconfig, the warning
is gone, but I'm back to the the "Unexpected GOT/PLT entries" below...

> Note that even on plain be2881824ae9eb92, I get:
>
>     aarch64-linux-gnu-ld: Unexpected GOT/PLT entries detected!
>     aarch64-linux-gnu-ld: Unexpected run-time procedure linkages detected!
>
> The parent commit obviously doesn't show that (but probably still has
> the problem).

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMuHMdUw9KwC%3DEVB60yjg7mA7Fg-efOiKE7577p%2BuEdGJVS2OQ%40mail.gmail.com.
