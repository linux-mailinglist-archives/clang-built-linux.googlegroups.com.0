Return-Path: <clang-built-linux+bncBDYJPJO25UGBBAVFST5QKGQE5ZPGHJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 117D52705EA
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 22:03:16 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id l67sf6625562ybb.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 13:03:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600459395; cv=pass;
        d=google.com; s=arc-20160816;
        b=xHQ3nTn36zzUgxypVcOGGUS71hzC9im/HPRhWPH3NeosEpgkj0VsjzVqy0US6Vlds/
         GMQaCYKZwFdyO699aZxK4O8fOhA5aJHXfMjpBxanOlUOER9yg+bjlNptbCi4WXPZDbgq
         8LZxvo5c7qcazCYGQ4aLF7Q3HExhGG+euyetyAvssvm0WvILkX6IoqPPQL1+6m6AOzlj
         PWFtMMpD5jb/q+fprp8MbaIkym8qBVc5+pqXe7Af2Mpof/jjdbCwJj/7TYpIzv+ajM4z
         jorvzDmeE1eyGAwKXcrgJcnr93ZSixU7XO5id2mqO7q41SBF18hM9kqnFiGMFtAjE+wQ
         WUBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=kwEjCSfmVzt4ei9FqVqWn/WRQr0vcB1PWlCc5wljZoU=;
        b=dKe+6YilFOjyBQ9TvcK5vcim3uJXG+Wgjq446SNJ/bMvyNYH0fbaNGHW0aSetO2s+I
         HUEZQeR1hIfGRK7epkaUBmI/7rEZJWYa/sSa3/YXr9CaUHWvWHWxyGd3WIcJeT1kKVWX
         /8a5yeaSDitDPt4NWowkNkdfTgbJ9eVDp9K4qpHX73XMnDLFVnB6ATuEzAK0hvH6XIFU
         cgqmDq1+0W7KV3A1uA95eLkx4gIcX52y1lvRDWNIx7MocRzGqucNaj3XOXmD2LCmxuFp
         zfAKJhOydffCvtjDcdol/KotBHXvbFYM4kHU2jpANm1VQtMeP9hqDKZioGmpJjwfxgQY
         9tiw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ASfssTNF;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kwEjCSfmVzt4ei9FqVqWn/WRQr0vcB1PWlCc5wljZoU=;
        b=dqEApQIiaS9Agixgv8BxOhgCgMzKxOx0hurrJYemBjSP8RGuyAdCBIIaO9K+o56k9P
         2j6eynBwYCmcz5q/T0xueqe5OL8+fKUrmePkhbs/OBrPlbn8UwLA+IORxt6490x2LYYc
         L1M+2cQpxUzJc8EcFZo2WdPbQiHqAWHquJn+w3I/zKN/wNAdmPD3k7OudTq7ff+FrG6h
         PcfUjqO+wS1ubXRpDBNU36zA1i9Mo3xs5InxEHq2iUIH2FOVYf1z8uXXc9n5Lr3LnWph
         vZaMF8pGryCj0Q8W4r3lQ2DrgpyB44iuYq4XB7yXmJrvXWOjUPw7xklPyK4G33xUB/Dc
         wOLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kwEjCSfmVzt4ei9FqVqWn/WRQr0vcB1PWlCc5wljZoU=;
        b=l32sf4yuVEumwDJyCelBiguZM4qRaqh8U+4ksYMUhckGtpK2zS71nXZ6SfpmEBcEAX
         BhmIb0wHAejJFhhm29tdfE6jO5J9pVKk2IwbZV9Af9ZLVnutatYcuRK/wcb8BDc9eM1t
         YmPT3BBqmjVahpJr76eLydjWoxwbC5V1HRLbEiW1eO/BjZHtFCR0vFtR0O/QlLXkj8Vi
         bY3sUxdFUHEU6a65Fh52avUPnEcuLm2eJu/wpomqK9Qhv15RlUjcsCYQx8KqQrRrqeO0
         BgtI6E98MwIaOXWRxKDGI/51jeCO5u1lNc8dKo6zqBIJ/713m2gbDQu9MbB/g/YQ2PcJ
         PIgA==
X-Gm-Message-State: AOAM530zp4osBlYHc2/JW1YOxPvoC3xfwOsSTQtr4l84rrVfomKdvwOV
	oqOsS1Cn57JHpR1nfuOlxZg=
X-Google-Smtp-Source: ABdhPJwmF4K06g7oOqHKEiL4hSJlqqy2EjwyW8/VGAyhcvgyrL9jo41XFEFz/wdtKsz/Pk9YaLGrvg==
X-Received: by 2002:a25:1842:: with SMTP id 63mr20329634yby.388.1600459394921;
        Fri, 18 Sep 2020 13:03:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:cd89:: with SMTP id d131ls2930277ybf.9.gmail; Fri, 18
 Sep 2020 13:03:14 -0700 (PDT)
X-Received: by 2002:a25:dbcf:: with SMTP id g198mr1285337ybf.354.1600459394391;
        Fri, 18 Sep 2020 13:03:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600459394; cv=none;
        d=google.com; s=arc-20160816;
        b=w7XJOoRHQ4TNUi/s6E98HmiJRNhXrUm8nlmzCu2jpB1bvt6z2OlsT+arbw8Ks/VP1l
         eF0+49It87Eq7Fcp+wEiEZOLl6/4bM/XhK/UuSA6IEun1kaSx8Xs+dUXcF34iWDDK3bW
         ujGT/XSC9nb5tFt8jQoh9s0BV3SHh+Wlhn9npV+VPSYT/tbZbM9atI1grnLh5jk9jjUf
         PoBjQiWGV/eLa/vpCxmZH4js1wvyKQuMftiSdXPYBRizDLJxsAYhonN3mqE2ND1GBYsE
         m0n5gDNTBplHIB9aFh9dqlEW0nmufo2qFj1GQ4x5FdhQORk1LwWypEYRXE6bd0EqLYkU
         xLZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=VqKEUkrHSOcwIeCgxJ2NUiebQBDAPOQgRM5RvCzJmOk=;
        b=0b9mqbBfltz/dNK9hglpbtqN1CCFV7uHIQvYHX6/R1f/0fyYAKqqh9DJG/uKAEzfkR
         nY0StLCTpUqJIjejp5X9gLQ/kp/0MdI0XGPYZN7QAUTCyzys7CxhsgUB6940U4sFBTvK
         PjUVqIvWtUALY1HgqDzHowXBSpTzovpDzRe/i8RYKNh2jloSU5xXaZe/ve/+EFu/cXAl
         Ku12Uz2G96lAG2E4ZiikNMbT6YeWdur7KDPJZF8Mgq7w9wFtC91OZJbZ5/GLbdzyDqmb
         uPtrTiFawsENdVp5xeKEcMchwymT3SyPf9EhCfnoGUVOt/XkaaHqq4DqqeRM2dARACB2
         Ax1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ASfssTNF;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id s9si371726ybk.3.2020.09.18.13.03.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 13:03:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id u3so3566471pjr.3
        for <clang-built-linux@googlegroups.com>; Fri, 18 Sep 2020 13:03:14 -0700 (PDT)
X-Received: by 2002:a17:90a:e517:: with SMTP id t23mr13887209pjy.25.1600459393285;
 Fri, 18 Sep 2020 13:03:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200914095706.3985-1-ardb@kernel.org> <CAKwvOdmSXm7cV3hB_Yp=DD0RwwDHtPzzDBU8Xj5kBREn3xqYdA@mail.gmail.com>
 <CAMj1kXGuFFUyT48EYvzFmjCP4QZi_Sk_GpBrBCaHjP7HKLhjBA@mail.gmail.com>
 <CAKwvOdmkNgi_+kfauTSLwtpVChipW851_KGJG+gBbhwRxJJORA@mail.gmail.com>
 <CAMj1kXHTkP7-8xscGZGXN_0Sq=BCSnt3zWqkcm8xdO11xmditA@mail.gmail.com>
 <CAKwvOd=G2Rr3StUJ=oWu1L4b5y615m+uYNW-Y5sis13uqBvrYQ@mail.gmail.com>
 <CAMj1kXHEpPc0MSoMrCxEkyb44AkLM2NJJGtOXLpr6kxBHS0vfA@mail.gmail.com>
 <CAKwvOd=Sq3XOquw4ACEi+cYCQp0-LW-JXoecFt+yy+jtmtuhiQ@mail.gmail.com> <CAMj1kXG9WBZb9WYCCng7CkJ+v8X=xHVhih274iuXMd5ua2nKPg@mail.gmail.com>
In-Reply-To: <CAMj1kXG9WBZb9WYCCng7CkJ+v8X=xHVhih274iuXMd5ua2nKPg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 18 Sep 2020 13:03:02 -0700
Message-ID: <CAKwvOd=8QUQK6hCQaAGjX6o_jz_vgFewW6v+SPHZ7ZKi9LYcYw@mail.gmail.com>
Subject: Re: [PATCH 00/12] ARM: use adr_l/ldr_l macros for PC-relative references
To: Ard Biesheuvel <ardb@kernel.org>
Cc: linux-efi <linux-efi@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, Russell King <linux@armlinux.org.uk>, 
	Linus Walleij <linus.walleij@linaro.org>, Nicolas Pitre <nico@fluxnic.net>, 
	Stefan Agner <stefan@agner.ch>, Peter Smith <Peter.Smith@arm.com>, Marc Zyngier <maz@kernel.org>, 
	Will Deacon <will@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Jian Cai <jiancai@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Masahiro Yamada <masahiroy@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ASfssTNF;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042
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

On Wed, Sep 16, 2020 at 11:01 PM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Thu, 17 Sep 2020 at 00:25, Nick Desaulniers <ndesaulniers@google.com> wrote:
> > Also, it looks like the GCC build of milbeaut_m10v_defconfig fails to
> > boot for me in QEMU; so maybe not just a Clang bug (or maybe, more
> > than one bug).  (or maybe one of my command line params to QEMU is
> > wrong).
> >
>
> I understand that this is actually an existing issue in -next, but in
> general, why would you expect to be able to boot
> milbeaut_m10v_defconfig on anything other than a Milbeaut MV10
> machine?

We've been booting other configs in QEMU for a few years now, so I
don't see why yet another config would hurt.  Maybe there's some
hardware dependency, but I guess we'd find that out trying to boot it
in QEMU.  If it boots in QEMU, I guess not booting on metal wasn't so
bad?  Maybe this is considered an antipattern, but you can see how if
we've been getting away with it for years then that would lead to such
expectations.

> (whatever it is) Or does QEMU emulate a milbeaut machine?

$ qemu-system-arm -machine help

doesn't print anything that looks like it, on initial glance.  Looks
like a socionext part:
https://www.socionext.com/en/pr/sn_pr20170105_01e.pdf

> If
> not, better to stick with configs that are intended to boot on the
> QEMU machine emulation that you are using.

I can see in our CI that we've been building+boot testing
multi_v5_defconfig, aspeed_g5_defconfig, and multi_v7_defconfig for a
while now without specifying any machine.  Is there a preferred
machine we should be using for those?  (It looks like qemu supports
ast2500-evb and ast2600-evb; is ARM1176 and ARMv6 core? Is that what
aspeed_g5 uses? Why is virt versioned? Ahhhh!!!!)

> Also, while I see the point of regression testing of -next, using it
> as a base to test arbitrary series and then report failures against it
> produces a lot of noise. -next is *not* a good base for development,
> because you get everybody else's half baked crap as well.

Ack.

> When you
> test my stuff, please use a known good base so we're not off on a
> goose chase every time.

Goose Chase?! gOoSe ChAsE?! *gestures broadly at...everything*
Monsieur, here at the zoo, chasing the geese is not out of our
purview.  It's preferable to cleaning up after the elephants.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D8QUQK6hCQaAGjX6o_jz_vgFewW6v%2BSPHZ7ZKi9LYcYw%40mail.gmail.com.
