Return-Path: <clang-built-linux+bncBCR5PSMFZYORB6ERSP3AKGQENVRZNFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3188E1DAA5C
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 08:06:50 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id 132sf859499ybc.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 May 2020 23:06:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589954809; cv=pass;
        d=google.com; s=arc-20160816;
        b=RNsutaI9fRVyMvqyVoCIU3DgQ/1/cY1Pq4pECiMagCizwDAMM0pBnyTmmZcjgY/z0G
         m1VkvLQmj6k60nDg8aoKq4zEYSlEdJv3BGG07rE6uLCob0RUSneL+HtL1Yg7YLbeH/6+
         Ks/vguPgbFqGbyiaaw/RWBoZ3N5HjeITImGYeUGXzeBl5Z/XquKC2DoTBPRBJvHGi4rR
         TxlD7wmXGgwkw/zoKokP2bub7Er8PrYiQSQYINKQumdKhSJkX0OLNzh89pUyZPk4BKz8
         JjljmOhS/43yElKZTPbl4AUP57Gk/M/Tcz+o9My6wgjZImnrA71Om3IhUsXyiuQ/v9nu
         wbEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=e2onfBlz/efdikZrxKFU6zXldyTk0+uab5Lx58NNEWU=;
        b=RJeDq7O/xzsfXxzj/vQr/g5LKopVvSuFqkDs1SqDmtHvSMF5TB+PyoWteTTsS8OT/3
         JryeNPKt5W8vhuczyVQEoZ5ewrkaLKvWMtMbiWVM/UeP0sWUIxsZRFgbe6gPUP5E6aq+
         SzCoNb7S4CNEA75t+dJDvAJHJydAGajI32+gfaHXpnuOGHw/J9gskD0hVpfCMmK+M01j
         AWymccNooh74RKQ/33Xk7hnmvWms/ESi7HCTEZdIgOHd7i1eoWcz56PcCwNNFu33+vlQ
         vqfoJUGreS3/iCSO40ranNk7ImyJ9HzTsqFMR6fZvkUvA/JT/dePNSqBcQRGC48Bg4U7
         4Xow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=a8KS2mPm;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e2onfBlz/efdikZrxKFU6zXldyTk0+uab5Lx58NNEWU=;
        b=HzWo1ujTCRrjBlUEFCTRbP4Mi8wU8IjAjmiXvQpJ9Mtr6O48ZMqkYQGI0fu+qnKhZd
         qNMAiJpXIpYhKQIhdgJ84mpMKqO/9l4Ou2ialXoJAwQmtPpnBkyBGvF/PiMYqyTpkEns
         VfKSpH3RIfBuGN3zBU2RfLcNsMWIn3hTi+QXBYU9z2All/iLmoHHy79pfVsmWtkFFCWx
         wLeUUmBEZT7lz4Wc5F06Oez+Uyfq954liq7BQUtLFpxA6TsXZm39+cXPLntAn92b2QH9
         Rs6xnaLWuJCND8cCeEktlgmMZtMEO1GcdFR/qXt4m4j8VCpEwVG3qT+iz7YUNQ9quCvh
         Us6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e2onfBlz/efdikZrxKFU6zXldyTk0+uab5Lx58NNEWU=;
        b=j6+3UzFMQK6KZoBoM0aGMx/s8CZweNkhWL1cmbClgBaIRuRXG+4EwAhGZ0iMRhsH5j
         Q9vR081zRHMHGmvBUkgfEQluj3IxIlW/NZL6OMyT3yYeKfpihhpLCagqR7xQhsiQO/Ay
         lY19mXLwXn2W03l/Z1R5cBwoqpgvu9UNFrsKmrMk93wX57s4TWv7IGo1r8K3nv5Nt214
         EoUmXMoOtMWedr/YoJm8IZxvbS9Sl1wYvhdvkcWp97CZXIyi6Yu5zH3WcgoCxVebD3Dh
         e5mDoQTbO5I1Ju3S8qwMYe6hKFGN6dYqWIwBCPRmrIQPRWMP11/Dceb/sSCr5+NzTc5e
         uVDQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53041yJnokZeNZUJwFNVavfn6844/mZ1kBBKn9QsN7zsvIQnmDb7
	hsOArRXaIGqKaOqION5mOHk=
X-Google-Smtp-Source: ABdhPJy+D5n0yrYPaI/Ozy3kuuW2QnacVGBnQMUimr89sSZQJx6kWCEVbBXzj44oi77d+9JWIKl1rg==
X-Received: by 2002:a5b:78b:: with SMTP id b11mr4754403ybq.426.1589954809186;
        Tue, 19 May 2020 23:06:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:c84:: with SMTP id 126ls761952ybm.9.gmail; Tue, 19 May
 2020 23:06:48 -0700 (PDT)
X-Received: by 2002:a25:b7d3:: with SMTP id u19mr4780682ybj.434.1589954808593;
        Tue, 19 May 2020 23:06:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589954808; cv=none;
        d=google.com; s=arc-20160816;
        b=Er5uTfKSk2BkzRPBT0ayo5wnqMACekIz8V0xDDAt4gIupLDiSZUpsILXiHXRBlLl0w
         VTOlntCYeCzV4XnRNK6QkChe/y3wSncuXKzmYDY7C7k/vC0dqLzBgXpEzWiFt++k85oc
         GwpwbD9v5XZnMnDam+H9300/LcfiSDeKrtrEdL4vuTH7zCkDmqaCk1gWj2FH7k/SBLV7
         9VNQy3FNek3CL64xdLylYUgd01vlT2kuVPyF/0OW6GsJjt7Q1JPdDLo0uVyhoTqGNC8p
         E0DTTjlwd2SQxP4musNs1QhXYf8y1UciDemQbg2Gs8zEd3DCDb9WcoxUWvA3OLy/h5vi
         5VpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:dkim-signature;
        bh=nGbZTsQvkfYTv273hR3rzSarY8bOxJbuKV8MJwaPpE4=;
        b=zg9SFpqiC01SoEflRASXIMY+8OxyEbEsBEuyZ428kVDRnlnHcvxzSdvfUAvSffhPSm
         tcE3yD53mHupl710mwKdfEfmYpUS2GB4MFJrYstg6ItPF0xDkZklvudwBrhbTU8o60/D
         PNwONpRTQDVtf1L6xefqvpg0ucG4tI3RVNrtKx3MLCb+XEaayMZ3KEfAOUnMj2CwNjv/
         GS5C3XVxOC6Kxe2mAfmzPMKPZqM3PDjKXNc4OJD2Y8bsp6cjesgwlpFVp4OfBDx/DAfM
         l7Xb/VNc4vDjTOE6ZkXe+qzZKi1FRNN7xqRxUMVic6ux7FrNb58dr7/0WXwPwweN9dyt
         ilZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=a8KS2mPm;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (bilbo.ozlabs.org. [2401:3900:2:1::2])
        by gmr-mx.google.com with ESMTPS id m142si6092ybf.0.2020.05.19.23.06.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 May 2020 23:06:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) client-ip=2401:3900:2:1::2;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 49Rj1r557Fz9sT1;
	Wed, 20 May 2020 16:06:40 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: dmitry.torokhov@gmail.com, linux-input@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, Nathan Chancellor <natechancellor@gmail.com>, kbuild test robot <lkp@intel.com>
Subject: Re: [PATCH] input: i8042: Remove special PowerPC handling
In-Reply-To: <20200518181043.3363953-1-natechancellor@gmail.com>
References: <87a7254bxd.fsf@mpe.ellerman.id.au> <20200518181043.3363953-1-natechancellor@gmail.com>
Date: Wed, 20 May 2020 16:07:00 +1000
Message-ID: <87ftbv87i3.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ellerman.id.au header.s=201909 header.b=a8KS2mPm;       spf=pass
 (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as
 permitted sender) smtp.mailfrom=mpe@ellerman.id.au
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

[ + Dmitry & linux-input ]

Nathan Chancellor <natechancellor@gmail.com> writes:
> This causes a build error with CONFIG_WALNUT because kb_cs and kb_data
> were removed in commit 917f0af9e5a9 ("powerpc: Remove arch/ppc and
> include/asm-ppc").
>
> ld.lld: error: undefined symbol: kb_cs
>> referenced by i8042-ppcio.h:28 (drivers/input/serio/i8042-ppcio.h:28)
>> input/serio/i8042.o:(__i8042_command) in archive drivers/built-in.a
>> referenced by i8042-ppcio.h:28 (drivers/input/serio/i8042-ppcio.h:28)
>> input/serio/i8042.o:(__i8042_command) in archive drivers/built-in.a
>> referenced by i8042-ppcio.h:28 (drivers/input/serio/i8042-ppcio.h:28)
>> input/serio/i8042.o:(__i8042_command) in archive drivers/built-in.a
>
> ld.lld: error: undefined symbol: kb_data
>> referenced by i8042.c:309 (drivers/input/serio/i8042.c:309)
>> input/serio/i8042.o:(__i8042_command) in archive drivers/built-in.a
>> referenced by i8042-ppcio.h:33 (drivers/input/serio/i8042-ppcio.h:33)
>> input/serio/i8042.o:(__i8042_command) in archive drivers/built-in.a
>> referenced by i8042.c:319 (drivers/input/serio/i8042.c:319)
>> input/serio/i8042.o:(__i8042_command) in archive drivers/built-in.a
>> referenced 15 more times
>
> Presumably since nobody has noticed this for the last 12 years, there is
> not anyone actually trying to use this driver so we can just remove this
> special walnut code and use the generic header so it builds for all
> configurations.
>
> Fixes: 917f0af9e5a9 ("powerpc: Remove arch/ppc and include/asm-ppc")
> Reported-by: kbuild test robot <lkp@intel.com>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  drivers/input/serio/i8042-ppcio.h | 57 -------------------------------
>  drivers/input/serio/i8042.h       |  2 --
>  2 files changed, 59 deletions(-)
>  delete mode 100644 drivers/input/serio/i8042-ppcio.h

This LGTM.

Acked-by: Michael Ellerman <mpe@ellerman.id.au> (powerpc)

I assumed drivers/input/serio would be pretty quiet, but there's
actually some commits to it in linux-next. So perhaps this should go via
the input tree.

Dmitry do you want to take this, or should I take it via powerpc?

Original patch is here:
  https://lore.kernel.org/lkml/20200518181043.3363953-1-natechancellor@gmail.com

cheers

> diff --git a/drivers/input/serio/i8042-ppcio.h b/drivers/input/serio/i8042-ppcio.h
> deleted file mode 100644
> index 391f94d9e47d..000000000000
> --- a/drivers/input/serio/i8042-ppcio.h
> +++ /dev/null
> @@ -1,57 +0,0 @@
> -/* SPDX-License-Identifier: GPL-2.0-only */
> -#ifndef _I8042_PPCIO_H
> -#define _I8042_PPCIO_H
> -
> -
> -#if defined(CONFIG_WALNUT)
> -
> -#define I8042_KBD_IRQ 25
> -#define I8042_AUX_IRQ 26
> -
> -#define I8042_KBD_PHYS_DESC "walnutps2/serio0"
> -#define I8042_AUX_PHYS_DESC "walnutps2/serio1"
> -#define I8042_MUX_PHYS_DESC "walnutps2/serio%d"
> -
> -extern void *kb_cs;
> -extern void *kb_data;
> -
> -#define I8042_COMMAND_REG (*(int *)kb_cs)
> -#define I8042_DATA_REG (*(int *)kb_data)
> -
> -static inline int i8042_read_data(void)
> -{
> -	return readb(kb_data);
> -}
> -
> -static inline int i8042_read_status(void)
> -{
> -	return readb(kb_cs);
> -}
> -
> -static inline void i8042_write_data(int val)
> -{
> -	writeb(val, kb_data);
> -}
> -
> -static inline void i8042_write_command(int val)
> -{
> -	writeb(val, kb_cs);
> -}
> -
> -static inline int i8042_platform_init(void)
> -{
> -	i8042_reset = I8042_RESET_ALWAYS;
> -	return 0;
> -}
> -
> -static inline void i8042_platform_exit(void)
> -{
> -}
> -
> -#else
> -
> -#include "i8042-io.h"
> -
> -#endif
> -
> -#endif /* _I8042_PPCIO_H */
> diff --git a/drivers/input/serio/i8042.h b/drivers/input/serio/i8042.h
> index 38dc27ad3c18..eb376700dfff 100644
> --- a/drivers/input/serio/i8042.h
> +++ b/drivers/input/serio/i8042.h
> @@ -17,8 +17,6 @@
>  #include "i8042-ip22io.h"
>  #elif defined(CONFIG_SNI_RM)
>  #include "i8042-snirm.h"
> -#elif defined(CONFIG_PPC)
> -#include "i8042-ppcio.h"
>  #elif defined(CONFIG_SPARC)
>  #include "i8042-sparcio.h"
>  #elif defined(CONFIG_X86) || defined(CONFIG_IA64)
>
> base-commit: 72bc15d0018ebfbc9c389539d636e2e9a9002b3b
> -- 
> 2.27.0.rc0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87ftbv87i3.fsf%40mpe.ellerman.id.au.
