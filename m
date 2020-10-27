Return-Path: <clang-built-linux+bncBCQJP74GSUDRBYFY376AKGQENCQQPMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id B957629A6AE
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 09:37:53 +0100 (CET)
Received: by mail-vk1-xa3b.google.com with SMTP id e6sf315489vkb.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 01:37:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603787872; cv=pass;
        d=google.com; s=arc-20160816;
        b=tpUqCmpaETArdf//n35h+PnQxayBKXKb2g6hB9sJVLondf1ocdu5rrI2VpZTUu5AKe
         a7qfTXhW7928ZHXmP/azFjcG40liI1eYF4jpoM8MXjhduuLW18vhWUmmoIZYYrcmzIeO
         yZpahqEaAWQ30O8PhAp86TuyLR77VO2TXYKNlXoWosOn5OSiByPAdFLZrPPDS6QXl8Zo
         +EKoqgGOgSFbq/oLi6bSfCBv1LyDZSSfArNLnfIL+uGP4cgrC9c4xGJOsbOIgoADKmA/
         BWdlj00xNBIaoyiSbp4g41Ci+OahXYXQQNELpmHb9bIh1sRPZmCSfvvsGVQZCNeRQPbk
         ON/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=U8FvtsWlyXkwFVtcvvcxgUfBGlyorQtdXv1+S2PkvY4=;
        b=RoripFh1KmQsUdoWk2hARkO9NWwXg2yjZLzozZ3oDHPUNZvf7pf2FZsjF33zsde86L
         +WCr5lu6OEHpfp1opyhbnNGAtN/OQ9L7edvIhvp+4F+AW5X9NXSBfKPtP+bJ9tuMB6Sv
         +J+CesdRxE5kRU2ezA6V6XkXisIuIEoHP2P8rtPh6mCdUaS5e5aB2pxuDhybl24VYJAi
         bXge7LIfz24f8689Yo+wl8WV8L621mJL9NEkZDB4jhBMmYx8Iq7xQLW/GQQk4ziRKlaY
         b7vJXS1yzBpTH2s611AnWgQlpFcUJePcADd0VniXK+icPxpJOhpddJ2kI0kyV8EPitsL
         5ckA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.167.196 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=U8FvtsWlyXkwFVtcvvcxgUfBGlyorQtdXv1+S2PkvY4=;
        b=VQb56bqbLsrP1/JcsAOQlyRY4MhCuMgkmu+YeNYJIwv+fadSHGqfHkqNeK+V3IorKY
         MQbelh7NYQkZ42+7mUjtcLXdYW4MznzOIGdEPG++yakr6LbP7xvhXwp30tdidSJ+Z8+I
         8WLN/oaNZzpS7hssLm4Fx813U1J0rm21MSCCvuekEw0m34JA/VziNlzaBeSvtJEPko7j
         4sk4SSW85i+3fmGOTsrlQ9mci/gjYK4xwzkTV06+o4vtf9n4WYuE4WDCXO5fpZ1Nacm5
         JnHiz0ODc23R+MLBEaUd+HCBQ/qwNYOSQhrkNkslE7QjylpozRxWS3elLmm/Qp9MX0PZ
         8V7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=U8FvtsWlyXkwFVtcvvcxgUfBGlyorQtdXv1+S2PkvY4=;
        b=dDCHSq/0jOg64sluWGLxIY2F/m5EtR3AJL9V5anJI0crdkv5vaNdWlNRb2bG3H+rv4
         AdsymzVd0hYsBwzDwbR7+cHwPbtOVDxSbsUQTto/j16ljfUan19Cwj4SGiwLJrb4gQNA
         UnCEgAE6VCNq7cjHxNUj5ESjb78yg1btFpkcSfCw2Srp3ZuUt4857rynCm5l3Aiz1RHh
         BS9rpy11G7tV5hcQzbQNeMNxWj/Cm5rOeF7ZH+dfTgUNbOyoNf0RpEYnzaws+ohl8XKA
         47UTvlX2565SetmeUYRbbxL1ikXJ9BdLvHI3L+/DFgnZsAlf4tmOH9lNsRcPfb4oC7VS
         HpXQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532VXeegDuGYDoIgH4lq7eYU6/6EOaxfxGdYEUd+ZPu7SjWiGIDC
	brmNyMsi8ViWajeGD+0jeHQ=
X-Google-Smtp-Source: ABdhPJwbogpYFMAS6yZyBmodyyf8oYR0RNstV237WR/fmc4fTecwqL+J9p3Tl3UFB3OaVzKCI4qx9g==
X-Received: by 2002:a1f:ad11:: with SMTP id w17mr619569vke.0.1603787872582;
        Tue, 27 Oct 2020 01:37:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:2442:: with SMTP id g2ls35453uan.8.gmail; Tue, 27 Oct
 2020 01:37:52 -0700 (PDT)
X-Received: by 2002:ab0:678c:: with SMTP id v12mr526891uar.47.1603787872003;
        Tue, 27 Oct 2020 01:37:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603787872; cv=none;
        d=google.com; s=arc-20160816;
        b=bM7c/XuRcHxHBFjIFn1/ouM5v01dAooyfK2Lrk/eON7Vq46LM7TpK9wVrh4xI6wkCE
         kyIIAHi1wAqA3pv+1PLgdXUWrqYutCHD8xI8eu4UuaL/X1aUcCdLe4WoWVOTDA1O/KOJ
         1d0gMsHlEkRvi1pfKkeHXN4eQEQ64iLET29nZn92jqfNFrvd88F1lIaDa7VEPW59Xjx+
         dZ62XlspBhJMzxDgT2ZYUaNSPmgNzUnbX2K3vMGd5bm8wy3Pbhtos+mSCTs4t8TOzdYv
         jncK6hpKji2At+1V7k7qMcYtg61OEox3PTH921ZGvK13mFYsM58h/jwvm9fMtVdZUBQR
         rkXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=CPOwLhlXLOT2UZd39wDStOTHkcJ+bIgNaCGTA5V1Xlc=;
        b=FxmMQYztMrXHTMgZ8t4ohwK7tYRIGAN9ZJahGoUxvRgWiMwC8qFWLUvg7vtoyuG81E
         36Tv+5htxPWXGmxCpvEsfnVpQoSw1+PhvYBSUWbFZXmfNEKpLfuM18eJ6+pDQVHZtVtx
         +0xxfw5u7iBDzR+2rm9r2g6a40Q9D8B5rTVtkvKu5OcIHZcSZXPzPojYZdLQTuICR5es
         CC6zRGOtOTjPzNjb9OY/HTfTgHox4V+r2AISnwwvxaGpRWhAZhaZPchnQ+xASzdu/5iX
         zg4i6jlfyiDv5cfcZ/Df3PkCIHlPI3olfDtFOB0OmZ1eNVWGCVrl0IQ+beQGZjubl9sz
         1+mg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.167.196 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com. [209.85.167.196])
        by gmr-mx.google.com with ESMTPS id p4si37129vsn.0.2020.10.27.01.37.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 01:37:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.167.196 as permitted sender) client-ip=209.85.167.196;
Received: by mail-oi1-f196.google.com with SMTP id c72so482637oig.9
        for <clang-built-linux@googlegroups.com>; Tue, 27 Oct 2020 01:37:51 -0700 (PDT)
X-Received: by 2002:aca:f203:: with SMTP id q3mr657056oih.148.1603787871413;
 Tue, 27 Oct 2020 01:37:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200821194310.3089815-1-keescook@chromium.org>
 <20200821194310.3089815-14-keescook@chromium.org> <CAMuHMdUg0WJHEcq6to0-eODpXPOywLot6UD2=GFHpzoj_hCoBQ@mail.gmail.com>
 <CAMuHMdUw9KwC=EVB60yjg7mA7Fg-efOiKE7577p+uEdGJVS2OQ@mail.gmail.com>
 <CAMuHMdUJFEt3LxWHk73AsLDGhjzBvJGAML76UAxeGzb4zOf96w@mail.gmail.com>
 <CAMj1kXHXk3BX6mz6X_03sj_pSLj9Ck-=1S57tV3__N9JQOcDEw@mail.gmail.com>
 <CAMuHMdV4jKccjKkoj38EFC-5yN99pBvthFyrX81EG4GpassZwA@mail.gmail.com>
 <CAKwvOdkq3ZwW+FEui1Wtj_dWBevi0Mrt4fHa4oiMZTUZKOMi3g@mail.gmail.com> <CAMuHMdX+PSdT02jxA+dJCjyT5Kktn+NnVsk0563XCLnn1fazgQ@mail.gmail.com>
In-Reply-To: <CAMuHMdX+PSdT02jxA+dJCjyT5Kktn+NnVsk0563XCLnn1fazgQ@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 27 Oct 2020 09:37:37 +0100
Message-ID: <CAMuHMdW+JTtzpa6mCQ7_H__T-LWD7bF27WY78Wt9RfNeLDSu7w@mail.gmail.com>
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
	Linux-Renesas <linux-renesas-soc@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: geert@linux-m68k.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.167.196
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

On Mon, Oct 26, 2020 at 6:53 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> On Mon, Oct 26, 2020 at 6:49 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> > On Mon, Oct 26, 2020 at 10:44 AM Geert Uytterhoeven
> > <geert@linux-m68k.org> wrote:
> > > On Mon, Oct 26, 2020 at 6:39 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> > > > On Mon, 26 Oct 2020 at 17:01, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > > > On Mon, Oct 26, 2020 at 2:29 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > > > > On Mon, Oct 26, 2020 at 1:29 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > > > > > On Fri, Aug 21, 2020 at 9:56 PM Kees Cook <keescook@chromium.org> wrote:
> > > > > > > > In preparation for warning on orphan sections, discard
> > > > > > > > unwanted non-zero-sized generated sections, and enforce other
> > > > > > > > expected-to-be-zero-sized sections (since discarding them might hide
> > > > > > > > problems with them suddenly gaining unexpected entries).
> > > > > > > >
> > > > > > > > Suggested-by: Ard Biesheuvel <ardb@kernel.org>
> > > > > > > > Signed-off-by: Kees Cook <keescook@chromium.org>
> > > > > > >
> > > > > > > This is now commit be2881824ae9eb92 ("arm64/build: Assert for unwanted
> > > > > > > sections") in v5.10-rc1, and is causing the following error with
> > > > > > > renesas_defconfig[1]:
> > > > > > >
> > > > > > >     aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from
> > > > > > > `kernel/bpf/core.o' being placed in section `.eh_frame'
> > > > > > >     aarch64-linux-gnu-ld: Unexpected GOT/PLT entries detected!
> > > > > > >     aarch64-linux-gnu-ld: Unexpected run-time procedure linkages detected!
> > > > > > >
> > > > > > > I cannot reproduce this with the standard arm64 defconfig.
> > > > > > >
> > > > > > > I bisected the error to the aforementioned commit, but understand this
> > > > > > > is not the real reason.  If I revert this commit, I still get:
> > > > > > >
> > > > > > >     aarch64-linux-gnu-ld: warning: orphan section `.got.plt' from
> > > > > > > `arch/arm64/kernel/head.o' being placed in section `.got.plt'
> > > > > > >     aarch64-linux-gnu-ld: warning: orphan section `.plt' from
> > > > > > > `arch/arm64/kernel/head.o' being placed in section `.plt'
> > > > > > >     aarch64-linux-gnu-ld: warning: orphan section `.data.rel.ro' from
> > > > > > > `arch/arm64/kernel/head.o' being placed in section `.data.rel.ro'
> > > > > > >     aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from
> > > > > > > `kernel/bpf/core.o' being placed in section `.eh_frame'
> > > > > > >
> > > > > > > I.e. including the ".eh_frame" warning. I have tried bisecting that
> > > > > > > warning (i.e. with be2881824ae9eb92 reverted), but that leads me to
> > > > > > > commit b3e5d80d0c48c0cc ("arm64/build: Warn on orphan section
> > > > > > > placement"), which is another red herring.
> > > > > >
> > > > > > kernel/bpf/core.o is the only file containing an eh_frame section,
> > > > > > causing the warning.
> >
> > When I see .eh_frame, I think -fno-asynchronous-unwind-tables is
> > missing from someone's KBUILD_CFLAGS.
> > But I don't see anything curious in kernel/bpf/Makefile, unless
> > cc-disable-warning is somehow broken.
>
> Yeah, I noticed it's added in arch/arm64/Makefile, and verified that it is
> actually passed when building kernel/bpf/core.o.
>
> > > > > > If I compile core.c with "-g" added, like arm64 defconfig does, the
> > > > > > eh_frame section is no longer emitted.
> > > > > >
> > > > > > Hence setting CONFIG_DEBUG_INFO=y, cfr. arm64 defconfig, the warning
> > > > > > is gone, but I'm back to the the "Unexpected GOT/PLT entries" below...
> > > > > >
> > > > > > > Note that even on plain be2881824ae9eb92, I get:
> > > > > > >
> > > > > > >     aarch64-linux-gnu-ld: Unexpected GOT/PLT entries detected!
> > > > > > >     aarch64-linux-gnu-ld: Unexpected run-time procedure linkages detected!
> > > > > > >
> > > > > > > The parent commit obviously doesn't show that (but probably still has
> > > > > > > the problem).
> > > > >
> > > > > Reverting both
> > > > > b3e5d80d0c48c0cc ("arm64/build: Warn on orphan section placement")
> > > > > be2881824ae9eb92 ("arm64/build: Assert for unwanted sections")
> > > > > seems to solve my problems, without any ill effects?
> > > > >
> > > >
> > > > I cannot reproduce the issue here with my distro GCC+binutils (Debian 8.3.0)
> > > >
> > > > The presence of .data.rel.ro and .got.plt sections suggests that the
> > > > toolchain is using -fpie and/or -z relro to build shared objects
> > > > rather than a fully linked bare metal binary.
> > > >
> > > > Which toolchain are you using? Does adding -fno-pie to the compiler
> > >
> > > gcc version 9.3.0 (Ubuntu 9.3.0-17ubuntu1~20.04)  from Ubuntu 20.04LTS.
> > >
> > > > command line and/or adding -z norelro to the linker command line make
> > > > any difference?
> > >
> > > I'll give that a try later...
> >
> > This patch just got picked up into the for-next branch of the arm64
> > tree; it enables `-z norelro` regardless of configs.
> > https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/commit/?h=for-next/core&id=3b92fa7485eba16b05166fddf38ab42f2ff6ab95
> > If you apply that, that should help you test `-z norelro` quickly.
>
> Thanks, will give that a try, too.

Commit 3b92fa7485eba16b05166fddf38ab42f2ff6ab95 is part of v5.10-rc1,
so it was already included, and thus doesn't fix the issue.

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMuHMdW%2BJTtzpa6mCQ7_H__T-LWD7bF27WY78Wt9RfNeLDSu7w%40mail.gmail.com.
