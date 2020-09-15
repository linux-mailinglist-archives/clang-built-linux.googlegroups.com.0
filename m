Return-Path: <clang-built-linux+bncBDYJPJO25UGBBTU5QX5QKGQE6FGPDNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C70226B4C2
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 01:31:27 +0200 (CEST)
Received: by mail-io1-xd3e.google.com with SMTP id j8sf3582327iof.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 16:31:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600212686; cv=pass;
        d=google.com; s=arc-20160816;
        b=mIAnk8Hs2YmjVJOFL3IOqtnY4RX2bGRsgNlmUP7vAV2dWnxaUc4DXYCvxApz36O0CN
         T8k5gRBd9z0khQfUzpyMp5Inyu9qcyBC7xx+WglOwrp8sypxHtWgsBFFnGP/lzaaUr9o
         LZC51xXLarcUfj+xSIG1EelPSrYNJyiVKLQpzuO9nkVGHeryNuEyh+UrIi3GZqKHfxbU
         gFb9q12fkUtpNxo51Te+UrkzzzZ1iUTTvpqu2WFXWrXy7F4gkJvcGUMsUJVm79d/rVQf
         nTodEZBpGpROHtmVJXOAO4ITly5ahbj7twV+VXbrdGcEJ2SYNbVpPR1il4jj7mTkdDUX
         ZSzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=UbDPQYheIkwGVak4a824vp3MrabX8ya2fbo9LBKurRs=;
        b=U48B2smwwFxcLDK6yRdK259XQNznAOob8RDiDNYzBKPYf9DqJ7i4FAV8uZfcuCTfwv
         3k57L/CA/YR0WI8fxg3BPP6EaS4FsYKS6XTDEhK3zOMq04cHxbA9kDrWBQkcOKqmXk5E
         AP2Sc5avNte5mlzTACwOwWm3o6HnhzR1z5ielq6Yw6p2IIw2twW/+/QyWOlt1BV8lnZ7
         YAsEO8eZ1CPFA0/Rc2bpBcwUv1XZsTI59Qi1EgEKumO+x6glKrhy4+Bai/wUsuzanlL1
         J+SknObnWH9zi+GiXxhHLeNEx76GchGRdGIN+mTIgc4sEWWr1szmrdceGWBU2KCqfrw3
         8trg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=L6J0t78I;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UbDPQYheIkwGVak4a824vp3MrabX8ya2fbo9LBKurRs=;
        b=jnUQeUKOqEQREJW+RrR6JkTBUJ7E7bfXnMiYKn7zRELWbd6oVUv4VqHV02QcR6U47Y
         s8vQDfeKYbMYZIEz0s2T3tug1YVI8oSkZE/HQ2nrpoXoYlQ1+TZZMdN8ZwNdW/cmI77W
         DyZ+mI86QmsFhOj6tmI1pl/tpDDtTA2ZNo40yriEhiEx1wgg7ShDtIZHn3/Ayq/dlBft
         mnXHcl/1QFmoJ09v3EkrbFpL2hCSf9kpqKQA1vgaL3NyyUz+QYc02QZrVamnbzh3wbR/
         vy/Lzj6aEJO1XmrGlAPN32q2Dtq0G8aUKimWSzUPGs2SIMizA7y8eE+anz8kPfN97NbS
         rHjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UbDPQYheIkwGVak4a824vp3MrabX8ya2fbo9LBKurRs=;
        b=FgTiy0lgSfj7MwWhmVx77eYrnGeAUPJQlkPr6y6YdDVJCEkF0J5qTPIQKuF5KEASTQ
         hKJ41XkhPNzZABnqbnhbAyN4kWBnbfbT7bBbP6WxzKRg6EDHv/IbT+tqDMvywN0NRwGh
         UDrXH2okVEELH3ZBWzIGkUmJ6DO+/jFQ45ZsbZd8fWDawYQq4JREymGInqPJeIeSLyDs
         Z9/o3tbEBATEqpOexPJ2irzbNoXxzmJjUGftwuC/WW8FhvZLrcVYW39g+AtfTyGmi1wD
         F17PjxvF1tw1jhOWTHYQo1Tgi6NvCpYKrjFcJqRD8Zvn5KjitdRFIZV2nRgEB9zE7u1d
         FxcQ==
X-Gm-Message-State: AOAM532yWSwjMYPvCGcfiNEx2UkzChZCDn7so0+K0PFpcqhT4XDpKPjn
	jmCX4bxkSbClpFoLI376GVE=
X-Google-Smtp-Source: ABdhPJyrAfChGFi/ZfWrpgcNU/0TNh2uf+APnH4r1qsv187j4jDQwvIZIFu+VpvsBpbQ7uM0bbj9GQ==
X-Received: by 2002:a02:7055:: with SMTP id f82mr20064370jac.54.1600212686462;
        Tue, 15 Sep 2020 16:31:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:84ea:: with SMTP id f97ls45516jai.0.gmail; Tue, 15 Sep
 2020 16:31:26 -0700 (PDT)
X-Received: by 2002:a02:ccae:: with SMTP id t14mr12160296jap.63.1600212686049;
        Tue, 15 Sep 2020 16:31:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600212686; cv=none;
        d=google.com; s=arc-20160816;
        b=beY7+yNiQUmjDynUKxphlEPtZ3kN3HZhWfqKtCgmcBS2+PLde9+s5jQQz8RCDq3hw3
         zuW1MLKbY2Wkzqd1DQqqIjqHb/w4UT382CYqLoFEm6MhfN52B73ByldqOiFcvT9o2VXk
         4gVJ4t7X6jQTjdsr9uojmcGFcVoOuv7xclJ/3+FEuf0wf9sAeKDGuq6TcmG6ZfDDcEUS
         YFWwqVM7mXWaQBQjo7PHrURbX2CWkwLe8iyC30KXN6Y4eyBklnWTZYdgnK1zDwI8J+aJ
         WFrjJbH4DyIej/m8s2eByTJSE5ZjqjI+TNTIg0PCu3vmCTjt11IL/93b+liBu12t6Zai
         fj6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=jfXBk0KHiNq5IUkPtCX999gAUXzd65HT75On2kwV83A=;
        b=cFDiQ7RiKk72mZ2PpFDItHxHTaXQhKEFqq0pny6qO0sz/AmkBPglEYkBf08XJGG3X4
         wB1nt0IfW8O18EjQi/s2M0qEyyQIXqn/WzKDl9YVivgcPUdTLzzparud6VYQtVYtd88S
         i0MCxCOiB1Wjuze29CxRQ8PkUerR5gTL0p3bzu2kz4L3v2oGbQ3hMv9TMHEON1AI1lWf
         ufd1RMCcF8xl5bViRoSMWRJa3gYnwDIJXIkTwM3F/GdPQY1KQqf6C8tybDql/dsTpQYu
         OdIbl2HLJo63FP8NEI070RGk2f23XiBox+y9lve+CuQ7MWj2sgKKKxecz4holhOA/7eK
         xTGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=L6J0t78I;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id m2si1209710ill.5.2020.09.15.16.31.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Sep 2020 16:31:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id b124so2823043pfg.13
        for <clang-built-linux@googlegroups.com>; Tue, 15 Sep 2020 16:31:26 -0700 (PDT)
X-Received: by 2002:a65:5a4c:: with SMTP id z12mr16195605pgs.10.1600212685166;
 Tue, 15 Sep 2020 16:31:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200914095706.3985-1-ardb@kernel.org> <CAKwvOdmSXm7cV3hB_Yp=DD0RwwDHtPzzDBU8Xj5kBREn3xqYdA@mail.gmail.com>
 <CAMj1kXGuFFUyT48EYvzFmjCP4QZi_Sk_GpBrBCaHjP7HKLhjBA@mail.gmail.com>
In-Reply-To: <CAMj1kXGuFFUyT48EYvzFmjCP4QZi_Sk_GpBrBCaHjP7HKLhjBA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 15 Sep 2020 16:31:12 -0700
Message-ID: <CAKwvOdmkNgi_+kfauTSLwtpVChipW851_KGJG+gBbhwRxJJORA@mail.gmail.com>
Subject: Re: [PATCH 00/12] ARM: use adr_l/ldr_l macros for PC-relative references
To: Ard Biesheuvel <ardb@kernel.org>
Cc: linux-efi <linux-efi@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, Russell King <linux@armlinux.org.uk>, 
	Linus Walleij <linus.walleij@linaro.org>, Nicolas Pitre <nico@fluxnic.net>, 
	Stefan Agner <stefan@agner.ch>, Peter Smith <Peter.Smith@arm.com>, Marc Zyngier <maz@kernel.org>, 
	Will Deacon <will@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Jian Cai <jiancai@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=L6J0t78I;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
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

On Tue, Sep 15, 2020 at 2:30 PM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> Excellent, thanks for testing. Do you have any coverage for Thumb2
> builds as well? (CONFIG_THUMB2_KERNEL=y)

Ah, right, manually testing ARCH=arm defconfig with
CONFIG_THUMB2_KERNEL enabled via menuconfig:

Builds and boots for clang.

(Also needed https://lore.kernel.org/lkml/20200915225751.274531-1-ndesaulniers@google.com/T/#u
for an unrelated issue).

For GCC, I observe:

arch/arm/vfp/vfphw.o: in function `vfp_support_entry':
(.text+0xa): relocation truncated to fit: R_ARM_THM_JUMP19 against
symbol `vfp_kmode_exception' defined in .text.unlikely section in
arch/arm/vfp/vfpmodule.o

There doesn't seem to be a config option to work around that for now.
Though it's not caused by your series; if I drop your series, I can
still reproduce.

Is there a different config I should be testing rather than
defconfig+manual testing, like one of the existing configs? Looks like
only milbeaut_m10v_defconfig enable THUMB2 by default.  I should add
that to my CI and kernelCI for coverage with clang.
https://github.com/ClangBuiltLinux/continuous-integration/issues/94#issuecomment-693030376

milbeaut_m10v_defconfig
builds with your series for clang.  Looks like that config may be
currently broken for GCC?
Looks like it doesn't boot with Clang, so I'll need to debug that.
Again, both of the two past sentences are regardless of your series.
So your series still LGTM.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmkNgi_%2BkfauTSLwtpVChipW851_KGJG%2BgBbhwRxJJORA%40mail.gmail.com.
