Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB5N367ZAKGQEBYRJ4FQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id 01171176E0E
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Mar 2020 05:32:55 +0100 (CET)
Received: by mail-ua1-x93a.google.com with SMTP id z24sf593606uaq.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Mar 2020 20:32:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583209974; cv=pass;
        d=google.com; s=arc-20160816;
        b=VUhGunvf9gOqt62zVAvU8mefWXo8fJqiwMujwAH7jrEBOxJbJTAJYG+Yf9ju0vUgGQ
         2VPeJvIJmXc1BlqHoTUZtEzGmh7n1W8Cp/I2w6vlTtPvdAIc/09KNf7c0cEzH9kbgKhE
         7Kk/a6fD5JyPgoMlpe9iY1tzvzdOl/y+AMgFjDwRIxAhJP/ymiqjjQl8CuC4KDZ7cbjF
         81MsEC46+vY6hL7QP3MvMK19/jd0vFgdNZh+OXiybeN8xeTkk39MSjTqS9lfRqDY2W7z
         2wPdnIkkKrMTGJDXzBJd6vQdfJCNIwtO3bkZ+BfKue5TbSRHhhENWDEqOkHLPrW5qTDw
         hDrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=1rnqKxQHWZfy+d8TqvCjjZCJgeCIGDE1OL59b7GUB80=;
        b=Wri+S/zXlY/vYAgPdKNYydsvQfDt53AMq9iwPdbibXWyle2X19aJZrpPkcvZdxZ1Dt
         UVqBUvCBAV3YQMQaSdf6/tKOTswoULRpG95xrqsVfPxggsyV/34E16nRioeRKtkvNeRj
         jINQspgGPwQ5LUCvDao/AJKdzHLaThJvrf3pfDVbBhNStwoDGwVnHVVXKu9MRGy8KVXW
         cBCB4+luO/QsQV0+k2NA9JIbPuORQk6X+sWiGLA/Vj6vFuKEavAgQxhJMn3SGKsVyYl4
         YIEurBh7JQnfimsQ+0WQoXMy+yGL4NkMyacu6du/0n5pVMK54t1GCUzLrtRr6EK8OoYo
         yPAw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ZO61Sxyi;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1rnqKxQHWZfy+d8TqvCjjZCJgeCIGDE1OL59b7GUB80=;
        b=n4HPZfNWphF+H4KkNnAudC05htcj6uQICXBcmGnLFj0LkO6g9PvjI1DoCMhZX6ygr3
         cdOE8N2N5AulwdMduHgLcW/N7hjO5KhiK8v0rU7h87DcTuILxjivQ23C34RcW966g534
         cApStg78WH0A7y9ALw23zs/bs6y7cyAn71LOzamYhHlYjk/fB5cUrCJmXa7oDP6Mck8S
         Q0D+AKZXvLd3OJHgDNpJ7Mp0wb1ecr5QUj8YgAacOD07yVAtK+QfR3YQAZLDJB1SFJxR
         7Od2vUUbSPMM6ifmy++tMz5pgiBgO/8SzKYe1E4hbF1xXYcdsCtPEaLERSgB4WDDGwpV
         2kpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1rnqKxQHWZfy+d8TqvCjjZCJgeCIGDE1OL59b7GUB80=;
        b=EIuyniKYVAnwz8Gijd5pwvJcwoYpLrkUxTyYr2itYIUUiK/S6VtGyz5dlFltCJAsht
         uESgYbmW84mPOo+1MTJNL/ZCcHhFGXCUyBpaSkKqCLX6Yki6lHgRQCiR6e7JbVMR62AE
         WCqN+DkMWfJQ06jToFr/YKy8znCzC+RXmFYzaQDv0vHeH51SHX1PenbIQALVcnmIpQyc
         cGOV0R0pK+GXfveYyMrHbdXBsBRxBT2jlFHoDOI3alE7WW6bVcTQgbSkjVpvfXBgoHe9
         MmAuNuuhmf9+7mQb2MidmoRwMdwqx2FS27NUHJ5i3gUqKAnC0tGv2F7tTVDrWwuy+AO6
         vXVw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1HTFu0rywdyKw+3Jv1dMc4zPWGfV8mY2mcsQFYAkUWAZ2muTx2
	3WIVUO4Fc+QjcOKr38zJxDI=
X-Google-Smtp-Source: ADFU+vuDU2hXPN5zymfX8PZR1FJfsBelnv1fH0WAnegtSn58YfiFOxnQsV5i/oovaXr0+CEx4kSnmQ==
X-Received: by 2002:a67:8789:: with SMTP id j131mr1316753vsd.58.1583209973956;
        Mon, 02 Mar 2020 20:32:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:2312:: with SMTP id a18ls136460uao.9.gmail; Mon, 02 Mar
 2020 20:32:53 -0800 (PST)
X-Received: by 2002:ab0:6881:: with SMTP id t1mr1724306uar.88.1583209973578;
        Mon, 02 Mar 2020 20:32:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583209973; cv=none;
        d=google.com; s=arc-20160816;
        b=SCB1z0VV1c52wnn9lFolFYhQ+TuKdC49hMvGpYzAZGRcypKf6lFMgJx3Y/g33Ec+pK
         z/aor2I3Jchn076XQqEdCJ/SCZnXwcUNBRwPGljOpY5xWBQD6arHeXBeM0zYF6APwEBb
         wweHh/HpOsx00rveo0Eas0jfv4x9rUsdqFoT/DgxPZqEj8SNuxMapkHpKVX8Bdv5eVf3
         TmY3O7iMJzZSe2cAN921SCweWu1ZGOMIxwAa3WVGtdMaX98o9ikZg+V6UCAR6BFe0TfT
         1/7EiWfnGxv3M3aCHopfFo5AGxXkk7d8TEYei/qx3fgG9UU8A4nSzh+WyVt76t3DRl6J
         MyPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=PAeuIw+hEri4xfaGtdCge6RjFwR9k/M6VeehKKOz2Zg=;
        b=QG+LosIVvmQKLIcu9o5achAncrPmkVqdu/OS3K9E9j5j2T+KqK9FxbTRmz4fJptYYv
         UTYbSJJ7oTH4ci12qmY/IGDdiPp6m4K4YUaPLgcstjZhQAw244kkPpQ/TvryGV43T478
         vbznB3KcaldletpcsDrEQEx3FFPT5Y5+SyWbKMMpvaTkh+T9gKTDRpwhtDgfsEwXGWFX
         x84DcfoNlB/47gBTTZtifWsk9eEtfQkjcScbfBbFIZE7zgOOzYNwnhqhnXsCAF9Pb6JI
         i+sbqNwwrZNrKbkku2T8EXxwPDMAkzG7AqRwoMpbxPNH18gCOflhwPQrJY1pf6S3jxLZ
         +NKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ZO61Sxyi;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id z8si474096vkb.5.2020.03.02.20.32.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Mar 2020 20:32:53 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id nm6so355351pjb.0
        for <clang-built-linux@googlegroups.com>; Mon, 02 Mar 2020 20:32:53 -0800 (PST)
X-Received: by 2002:a17:90a:be04:: with SMTP id a4mr2011764pjs.73.1583209973125;
        Mon, 02 Mar 2020 20:32:53 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id f127sm23298618pfa.112.2020.03.02.20.32.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2020 20:32:52 -0800 (PST)
Date: Mon, 2 Mar 2020 20:32:51 -0800
From: Kees Cook <keescook@chromium.org>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Borislav Petkov <bp@suse.de>, "H.J. Lu" <hjl.tools@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>, x86@kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-arch@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/9] Enable orphan section warning
Message-ID: <202003022029.B549AA3@keescook>
References: <20200228002244.15240-1-keescook@chromium.org>
 <CA+icZUVRnjOWKZynAGDniXD_H9KRccONmeKHs25DPPU1c8ZcGg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+icZUVRnjOWKZynAGDniXD_H9KRccONmeKHs25DPPU1c8ZcGg@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=ZO61Sxyi;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Fri, Feb 28, 2020 at 07:51:21AM +0100, Sedat Dilek wrote:
> On Fri, Feb 28, 2020 at 1:22 AM Kees Cook <keescook@chromium.org> wrote:
> > This series depends on tip/x86/boot (where recent .eh_frame fixes[3]
> > landed), and has a minor conflict[4] with the ARM tree (related to
> > the earlier mentioned bug). As it uses refactorings in the asm-generic
> > linker script, and makes changes to kbuild, I think the cleanest place
> > for this series to land would also be through -tip. Once again (like
> > my READ_IMPLIES_EXEC series), I'm looking to get maintainer Acks so
> > this can go all together with the least disruption. Splitting it up by
> > architecture seems needlessly difficult.
> 
> Hi Kees,
> 
> is this an updated version of what you have in your
> kees/linux.git#linker/orphans/x86-arm Git branch?

Hi; yes indeed.

> Especially, I saw a difference in [2] and "[PATCH 4/9] x86/boot: Warn
> on orphan section placement"
> 
> [ arch/x86/boot/compressed/Makefile ]
> 
> +KBUILD_LDFLAGS += --no-ld-generated-unwind-info
> 
> Can you comment on why this KBUILD_LDFLAGS was added/needed?

It looks like the linker decided to add .eh_frame sections even when all
the .o files lacked it. Adding this flag solved it (which I prefer over
adding it to DISCARD).

> I like when people offer their work in a Git branch.
> Do you plan to do that?

Since it was based on a -tip sub-branch I didn't push a
copy, but since you asked here it is:
https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git/log/?h=orphans/tip/x86/boot

And this email can serve as a "ping" to the arch maintainers too...
does this all look okay to you? I think it'd be a nice improvement. :)

Thanks!

-Kees

> Thanks.
> 
> Regards,
> - Sedat -
> 
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git/log/?h=linker/orphans/x86-arm
> [2] https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git/commit/?h=linker/orphans/x86-arm&id=e43aa77956c40b9b6db0b37b3780423aa2e661ad
> 
> 
> 
> > H.J. Lu (1):
> >   Add RUNTIME_DISCARD_EXIT to generic DISCARDS
> >
> > Kees Cook (8):
> >   scripts/link-vmlinux.sh: Delay orphan handling warnings until final
> >     link
> >   vmlinux.lds.h: Add .gnu.version* to DISCARDS
> >   x86/build: Warn on orphan section placement
> >   x86/boot: Warn on orphan section placement
> >   arm64/build: Use common DISCARDS in linker script
> >   arm64/build: Warn on orphan section placement
> >   arm/build: Warn on orphan section placement
> >   arm/boot: Warn on orphan section placement
> >
> >  arch/arm/Makefile                             |  4 ++++
> >  arch/arm/boot/compressed/Makefile             |  2 ++
> >  arch/arm/boot/compressed/vmlinux.lds.S        | 17 ++++++--------
> >  .../arm/{kernel => include/asm}/vmlinux.lds.h | 22 ++++++++++++++-----
> >  arch/arm/kernel/vmlinux-xip.lds.S             |  5 ++---
> >  arch/arm/kernel/vmlinux.lds.S                 |  5 ++---
> >  arch/arm64/Makefile                           |  4 ++++
> >  arch/arm64/kernel/vmlinux.lds.S               | 13 +++++------
> >  arch/x86/Makefile                             |  4 ++++
> >  arch/x86/boot/compressed/Makefile             |  3 ++-
> >  arch/x86/boot/compressed/vmlinux.lds.S        | 13 +++++++++++
> >  arch/x86/kernel/vmlinux.lds.S                 |  7 ++++++
> >  include/asm-generic/vmlinux.lds.h             | 11 ++++++++--
> >  scripts/link-vmlinux.sh                       |  6 +++++
> >  14 files changed, 85 insertions(+), 31 deletions(-)
> >  rename arch/arm/{kernel => include/asm}/vmlinux.lds.h (92%)

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202003022029.B549AA3%40keescook.
