Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBY5BTD2AKGQEI73IYSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DE3019C6F9
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Apr 2020 18:20:52 +0200 (CEST)
Received: by mail-wm1-x33a.google.com with SMTP id v8sf1583738wml.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Apr 2020 09:20:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585844451; cv=pass;
        d=google.com; s=arc-20160816;
        b=J+HkPTfOD8jaz0v1XbEqgin7ua3sXcSUFpqKNuQ2Inmro1yriSmP8S+uFo75V8Erzb
         /PDous8o7j8Fd4f+5CgJQlBKLV7XggkU0L7smhZhPFPIcB1O+ltWynEu7NWcBZesJt0t
         rt73HtgKDd2dJ/rDyG0ZauHG6rHR5R0RHMZyXiY1N9dCNIHOxi3XBRbUHLwEjvGSYatU
         koNg20oMZxwoKD7tfzHDMoKKnVe5wOcvplCXLoicANWQ9W37IPk47blL8F2qTE+rZ8Xq
         8t+f5N3j5pykQ8M1pVUthDovPlp82jc+0OV85fyCgj/K72E6aJTPfgRYPzhC2jOEposY
         oHvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=iiKiIYNSHPXE3DpJDi+qI4vPC2TmtfHqn9tTE2FpJ14=;
        b=Y4dFAqhz+z7Uxz0ahKjfeFqsBhZAwtiw0BVZKLyAgWYBkUATRiq6yZeToa99lEBfKA
         Xoc4aCPVSjpV23RDogCygWbKtCuLN6R603OPxaDyHI70A8ldwPIDLWrjSezeGXSnpy6c
         voGv0IPgxRwP1fhpqpaaqgZPbiwvehj47C+ewrgkKyOLil3MfjaGhtLXOENUefcmDrMp
         vNWKWr3aDwxkyD/9MwJ28RMnC98Nf049COzlByg9uSlAbkZWVIwPgXfxfAOIDo5XUIaV
         LQtzcXgT0dT5KL2Jp3Sy+pYrn+tdcHyusbW0wJwlhb2ClLfutp6TqmR0RpohZroxYNP7
         v7Zg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=J06tr+PD;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iiKiIYNSHPXE3DpJDi+qI4vPC2TmtfHqn9tTE2FpJ14=;
        b=qw58HWduXMyQ7CAi1th9zj21h4l7H/d/DuEq559lFldY7BUtjmlCmONQgkSs59/REw
         emDIRZX7mCUYA4FqT6SoVM403j08FkYKLfqXeLawM/I2x4hpCru17mHrCkrrE9hUVJdv
         j15YP8VDbeuqY7EABA1nOJVZqXLoDk2g3fn8AAFcP2HU1Nj4YGDuNMPL+rRCFRXsgsy7
         e32NQ0eippufJoLKM6pcaxLiBttz7igAtnf6ZnGKbAt+IDvzLd3lFFtxLygn/u4fRCpv
         MlObVy9+KrmCVmQRdX0k4FneMSVevraIt7JJkc41tOwDku5rbJFuJcRxfZsLkclOBc69
         vI8A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iiKiIYNSHPXE3DpJDi+qI4vPC2TmtfHqn9tTE2FpJ14=;
        b=Fe5bhe2rVsWt6+2Hzg2yM8fqQwJU5YSuxffmQVrUQXGZvf67jPV9sKLRY0tFweYFad
         XuE9gCsZoKZVmiYUtwGDrdqRPBDgLGlF7JfITUp3i23sJ5w4zLV7T74bfeWkM7gQeD4x
         YbIKmXy8KJzcvATsdH6PbQYfo9qrRSYiZc33c0LvWSZKjAtcHErI0xVWGc94zTGizLRV
         ncZy2FYGdTf9fg8ojYYniNPxmK1ED1gREr8u6VeB7PImB9tedDNK0tg0NKDlbRk0cTTh
         WcE1UCzu/EnHmkQ29DapGIptlFvTTUsaT+AvdZnK80DyObYavQPY2+RNkg5rMafmOm57
         2zBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iiKiIYNSHPXE3DpJDi+qI4vPC2TmtfHqn9tTE2FpJ14=;
        b=FmGjdDbNPTGwnku4jC+LGEnwCpHyr/kDSXZWRAes00IkhrMdiCNF8cTFVVh0VCFVlu
         mR9GnH11Xl3U0sG6CDq8v6whguIx/+Imx5qY6wY1ZRcAu1caDlE24MpskMETQ1MtjM1b
         fOBMESsvqulot79esLpuAqVUXUGNuy9ZfangRxhYXGnszhC6zlvjs9IgkN00VDawFYoH
         NyLC0IX9OhZJY0BGTZViTe1Z3kxhBtc9PmLk6FF/29Dafy92vJ99IQE043JBBdd7UPg+
         0Ehmgw8ZPA+m0yCMV4E9QKQH2fwxgPjqy5aZqCmMcmPBeV1GZvHy32mH48MKYBgoKcpf
         yQOw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYK0vUx22Cqo9N1VeeGuGWWjPz4zoA5xX2YkHFZDdkvVOipzFb5
	JE7Qiqw4ju/nnPBqZb0o6E4=
X-Google-Smtp-Source: APiQypIcNbIn8HLbGltAo+sj9DUr5nwi8IjxESUDp0Vk+MY/BjPrEiRRKOjnZ7TCm3oLaIrPtgN5Bw==
X-Received: by 2002:a5d:510d:: with SMTP id s13mr4249396wrt.110.1585844451702;
        Thu, 02 Apr 2020 09:20:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:e983:: with SMTP id h3ls307023wrm.7.gmail; Thu, 02 Apr
 2020 09:20:51 -0700 (PDT)
X-Received: by 2002:adf:e70f:: with SMTP id c15mr4551883wrm.217.1585844451091;
        Thu, 02 Apr 2020 09:20:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585844451; cv=none;
        d=google.com; s=arc-20160816;
        b=qLYe7jtMxW2FWGEvu+ORtbU7nukn1yJ+LoSinfIi5mrqm9M9gPNN02Q+9Bdl1Mbd/H
         VvlItxj0aTZjqTVZtmOELM2DgScQoiy/lswcCD44s1rvKx/CYu66j9PspT1KFVaL9ogq
         l5MJENlMiSKnz4TfLsmnKAm+gXDr88UBg/8IjyramKctvXYYnvaBCxzWL/JSx0u4LZKp
         s6JguBA/pY5IFOAyuh/mUUz/gwQtY+i4QtUr9s4u8baeYInJFhLmda/W2BDHrgU29XyU
         2UxnlANggDeVQj1ABZ1EDl00pQea4e3yiPS4PrYbkzqVNopkeUlXNqRELcJiHyWltP0Y
         l6fQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=M0qIKEE/jPMCSL2VsYtN2C2Vz0+dVANDDtua/KUa0Wk=;
        b=yq8b1QXDLX/DICGMt5mGPach81MuCsO06y2W0zKVt1L2yNAxm2O7OARQUASLkPaw2X
         OYnMbNC4m0U37kiPXvLdof1fCVmM+w2ERYlb7t1Hjyb8TZ8O7b/rHbw7FBhFHjLWL74q
         B/Ce+wcxy53VEw3LCfsDdR3QzbAY6TfpRkAc8qLk3eGkL5RN5yXap0KJAml2S5gzpaN/
         mynWAstn0OO2UQ161lzTr6r7yeiD+/ARBEp+ejsDIUfHUhSQr8QD4IuoaKB19/r57OUa
         pP/nxP+gKheocPkzsisSXnrXXnGlLlHik9sJ5/kEUWrjS3V5V2tUapevWv+KuB4TrKxo
         6YPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=J06tr+PD;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id q2si329226wrc.2.2020.04.02.09.20.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Apr 2020 09:20:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id t128so4059392wma.0
        for <clang-built-linux@googlegroups.com>; Thu, 02 Apr 2020 09:20:51 -0700 (PDT)
X-Received: by 2002:a1c:4e11:: with SMTP id g17mr4310690wmh.80.1585844450712;
 Thu, 02 Apr 2020 09:20:50 -0700 (PDT)
MIME-Version: 1.0
References: <20200228002244.15240-1-keescook@chromium.org>
In-Reply-To: <20200228002244.15240-1-keescook@chromium.org>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 2 Apr 2020 18:20:57 +0200
Message-ID: <CA+icZUWTnP8DYfbaMwKtJbG30v7bB4w6=ywo8gn8fvwr731mUQ@mail.gmail.com>
Subject: Re: [PATCH 0/9] Enable orphan section warning
To: Kees Cook <keescook@chromium.org>
Cc: Borislav Petkov <bp@suse.de>, "H.J. Lu" <hjl.tools@gmail.com>, 
	Russell King <linux@armlinux.org.uk>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Peter Collingbourne <pcc@google.com>, James Morse <james.morse@arm.com>, Arnd Bergmann <arnd@arndb.de>, 
	Masahiro Yamada <masahiroy@kernel.org>, x86@kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-arch@vger.kernel.org, linux-kbuild@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=J06tr+PD;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::344
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

On Fri, Feb 28, 2020 at 1:22 AM Kees Cook <keescook@chromium.org> wrote:
>
> Hi!
>
> A recent bug was solved for builds linked with ld.lld, and tracking
> it down took way longer than it needed to (a year). Ultimately, it
> boiled down to differences between ld.bfd and ld.lld's handling of
> orphan sections. Similarly, the recent FGKASLR series brough up orphan
> section handling too[2]. In both cases, it would have been nice if the
> linker was running with --orphan-handling=warn so that surprise sections
> wouldn't silently get mapped into the kernel image at locations up to
> the whim of the linker's orphan handling logic. Instead, all desired
> sections should be explicitly identified in the linker script (to be
> either kept or discarded) with any orphans throwing a warning. The
> powerpc architecture actually already does this, so this series seeks
> to extend this coverage to x86, arm64, and arm.
>
> This series depends on tip/x86/boot (where recent .eh_frame fixes[3]
> landed), and has a minor conflict[4] with the ARM tree (related to
> the earlier mentioned bug). As it uses refactorings in the asm-generic
> linker script, and makes changes to kbuild, I think the cleanest place
> for this series to land would also be through -tip. Once again (like
> my READ_IMPLIES_EXEC series), I'm looking to get maintainer Acks so
> this can go all together with the least disruption. Splitting it up by
> architecture seems needlessly difficult.
>
> Thanks!
>

Hi Kees,

what is the status of this patchset?
Looks like it is not in tip or linux-next Git.

Thanks.

Regards,
- Sedat -

> -Kees
>
> [1] https://github.com/ClangBuiltLinux/linux/issues/282
> [2] https://lore.kernel.org/lkml/202002242122.AA4D1B8@keescook/
> [3] https://lore.kernel.org/lkml/158264960194.28353.10560165361470246192.tip-bot2@tip-bot2/
> [4] https://www.arm.linux.org.uk/developer/patches/viewpatch.php?id=8959/1
>
> H.J. Lu (1):
>   Add RUNTIME_DISCARD_EXIT to generic DISCARDS
>
> Kees Cook (8):
>   scripts/link-vmlinux.sh: Delay orphan handling warnings until final
>     link
>   vmlinux.lds.h: Add .gnu.version* to DISCARDS
>   x86/build: Warn on orphan section placement
>   x86/boot: Warn on orphan section placement
>   arm64/build: Use common DISCARDS in linker script
>   arm64/build: Warn on orphan section placement
>   arm/build: Warn on orphan section placement
>   arm/boot: Warn on orphan section placement
>
>  arch/arm/Makefile                             |  4 ++++
>  arch/arm/boot/compressed/Makefile             |  2 ++
>  arch/arm/boot/compressed/vmlinux.lds.S        | 17 ++++++--------
>  .../arm/{kernel => include/asm}/vmlinux.lds.h | 22 ++++++++++++++-----
>  arch/arm/kernel/vmlinux-xip.lds.S             |  5 ++---
>  arch/arm/kernel/vmlinux.lds.S                 |  5 ++---
>  arch/arm64/Makefile                           |  4 ++++
>  arch/arm64/kernel/vmlinux.lds.S               | 13 +++++------
>  arch/x86/Makefile                             |  4 ++++
>  arch/x86/boot/compressed/Makefile             |  3 ++-
>  arch/x86/boot/compressed/vmlinux.lds.S        | 13 +++++++++++
>  arch/x86/kernel/vmlinux.lds.S                 |  7 ++++++
>  include/asm-generic/vmlinux.lds.h             | 11 ++++++++--
>  scripts/link-vmlinux.sh                       |  6 +++++
>  14 files changed, 85 insertions(+), 31 deletions(-)
>  rename arch/arm/{kernel => include/asm}/vmlinux.lds.h (92%)
>
> --
> 2.20.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200228002244.15240-1-keescook%40chromium.org.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWTnP8DYfbaMwKtJbG30v7bB4w6%3Dywo8gn8fvwr731mUQ%40mail.gmail.com.
