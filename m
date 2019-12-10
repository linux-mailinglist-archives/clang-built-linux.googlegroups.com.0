Return-Path: <clang-built-linux+bncBCQJP74GSUDRBLNFXXXQKGQE6NUU37I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id B00A71181C2
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 09:09:19 +0100 (CET)
Received: by mail-pl1-x63b.google.com with SMTP id p11sf7695105plo.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 00:09:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575965358; cv=pass;
        d=google.com; s=arc-20160816;
        b=OuN4QqAQOhKHoVXoezZmfJ48FplVGn3G3uh+yDD7mdO3a6sdsHQm0Mr1F5SZfshRHS
         +PzdezYPCfLOo9UrrFq2ntYoGobcLyBpL0s2uzqEJaYh4Hg52D/Trl7Obbx2zuvd4sBo
         xJ3dVjTjU2ABTON6wJ+vGWT5IEkA1+6RVXyp+JBSr7RqQ5O+0qRCO/BjPZjgoImd48xU
         ilIGkWt4YokUvFxuvjTDZGGGbg6b0ptVhbLo+6OqAMidNKdLS0AIKMOUkZsjSez+KLm+
         0Qk9fA4R7O1hCmeZyPeicG+kMXfuy1oWzEM3Nq65tU4RoXioiL7vEhZlWbR79W8A168P
         xqNw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=iGDczHJ/tWop48i20By7FS+h9dOdtXAK59nKFd5hEDU=;
        b=bt/vapkcl+Q4lf7W9vspacfuEOtBq+6ass1MI3PhoHujWbl81+5kauvCOWcHTbSUst
         vhZHCCF5AcB+Dz04fBvWqPGPaJH/vLpxupqIOHRnKF3BR8ehl7TYF2PvD9Mbo+kXtkYD
         biyerQVWNWAXLbK8yDqTpzhFlYncgJvHMArYzby6XLXyIUw8hHiv0Tph9Dl2tzTcG6Zn
         LLQOCVytKh6EL/w00XbNs/GKnEhfI9KHZJIzeuIo+aami1Zc3EBW5eIKrlzV2RBMHroY
         L11kmfLZjKGPyganROiGZ9yCl9Q1KoUJkd/Tw0VyX5mcX3rzdxQd/BoreCcI76MuFWal
         iNJw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.167.193 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iGDczHJ/tWop48i20By7FS+h9dOdtXAK59nKFd5hEDU=;
        b=cTg4KeWE3XIF+qz+s3riHpHaT+RguBk854yqBHC5WUWojWHkwyHbfzXMEETkT8RExp
         RuJfU98gJHGpdUaIQcGb+4gm3qLP8u/+OPw4omqZgP6PZP7Rzop0x45+S5f+hkftk+5U
         IAtw0+qRyIPmCU0UH8iou3Y7ubKXsWnapccp8+Wirz5rXXMeEjX36xnTTbme//LQkOLY
         BLoR7+NwNf2qwigLpfvseLcpi8TDTLmSPh2cj8hC5aYaPbY+2gF4mLDDJCVI2bnSLNrc
         DOsqUeKYKx5cp3q1YsP8b546xPhzhI9HFXNPTmAT7w3j9hhlRWchwda3hQB/wPXx6SN6
         qM/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iGDczHJ/tWop48i20By7FS+h9dOdtXAK59nKFd5hEDU=;
        b=T6ZpShuEC/HzgHltSYmawJPSTa6LmOKSECa7XwTB95Y7e2SEQ3gBtHYRKkOMj5gwPv
         wKbk5lSJl6BbMb2of0IBigu5xzPgZaoQThtV1Ey9RAjiawA8xXA3WYzlKAvk55qSYzqB
         X1hwSrG0+x5e1skBaZwJz3vhNJqwxkpi62p7CVuXVtXyZD3B8I9OlMOr68IIMioyQkXS
         JApJ+COqfGKHIDa6iThQ8ItL4InKjoKTPSSqGfsDkJbcKgmYW0PbbckHr/p07K11qeOS
         1XmojRwulwXIRiACgghesqEicaN2lpDPDzr65V2YUgntJr8PlWwpP/CW6JlJ64WyPGW/
         YXsg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV47/5DW0pJz6dX3XzUmTVenl+8f+eddZi0pwRRuPum1/zOcHFX
	c0vgEMcKz4sS/HFivxdJ+UQ=
X-Google-Smtp-Source: APXvYqwCpn2MsxzWY+9+2KSZAGcR0s63S1UQ9UbIPjyHTO5h8ElVp3RALuJiKUiGEvXgcKwrzZjpiQ==
X-Received: by 2002:a63:d544:: with SMTP id v4mr22824865pgi.288.1575965358025;
        Tue, 10 Dec 2019 00:09:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:e107:: with SMTP id q7ls3001832pfh.15.gmail; Tue, 10 Dec
 2019 00:09:17 -0800 (PST)
X-Received: by 2002:a65:56c6:: with SMTP id w6mr23859149pgs.167.1575965357491;
        Tue, 10 Dec 2019 00:09:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575965357; cv=none;
        d=google.com; s=arc-20160816;
        b=iIQj8/dkOKCE+BgVrSol8QFsIAX5wpdQJ6PpsoZItgvDcIdxo9tWDZUj+xiVmixO2I
         QrrVovmnu04r25P2aMHLCmqyY0dLo7VPKCVPoOiniku/PFA837Nv8Hotn4IQOsJHM/O9
         NAr0XNxKsZGSlG0AYaCqSu+GN8wdBQT9H2SKwoqiWSMPcV7kOTjW49grwRcxjOgrcNaS
         RxhlxE0OY/hthdJGhVXkI+gMWRe43UToEm7op3JbKUBLk+BkP6pnwCz7LRayj8QoP2gK
         D+7Lpu9VrfZ37DHkI32xaWqOYfr21TXlY2JoZ3awpWtpFos1cBfR2OnMYcDCcWlPxZ0E
         3dAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=npgnC/M6weBM9U5t1QrqcgCAOt54Yrn9ohY0tdJFDi8=;
        b=bG+V6sMQeG5RpFDR3Hc4sMvGwPBnBPJ8YSd2xuAqqWxVycxdkvO0ozjlHkhBpXzXVy
         czqm0FnRP1+Iv8mRlMT7BlYJVcr94tkbIiOpZrla4e+UERYzNdEEy1JH+3J1Vfe0HP5R
         ux8Sa6AY9QDWpjvbZqtrP2RDSUEmZy5CstJsKorKgpgUyR+8TDC9hO//Zn3wc03Ur2ki
         ll01F9d/tQY4HWnUWCTTg1suQZfDkbodQvFeg22gsgaWiwSekNWTE6nWnd8RLWuLkO19
         9rbp1P2R9FF/INlsIQLgwAbxJU5GyAJS0c3NrZkTmuc0yEFB+sT+e7X7N1WAnMf2K9dH
         17uQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.167.193 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com. [209.85.167.193])
        by gmr-mx.google.com with ESMTPS id e17si53408pjp.2.2019.12.10.00.09.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Dec 2019 00:09:17 -0800 (PST)
Received-SPF: pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.167.193 as permitted sender) client-ip=209.85.167.193;
Received: by mail-oi1-f193.google.com with SMTP id x195so9017690oix.4
        for <clang-built-linux@googlegroups.com>; Tue, 10 Dec 2019 00:09:17 -0800 (PST)
X-Received: by 2002:aca:48cd:: with SMTP id v196mr3035210oia.102.1575965356727;
 Tue, 10 Dec 2019 00:09:16 -0800 (PST)
MIME-Version: 1.0
References: <20191209222956.239798-1-ndesaulniers@google.com> <20191209222956.239798-2-ndesaulniers@google.com>
In-Reply-To: <20191209222956.239798-2-ndesaulniers@google.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 10 Dec 2019 09:09:05 +0100
Message-ID: <CAMuHMdUO=cZMsFx4t_uULNRuwnGLjbRYOJAo7j5gC-iSV3wy5w@mail.gmail.com>
Subject: Re: [PATCH 1/2] hexagon: define ioremap_uc
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: bcain@codeaurora.org, Lee Jones <lee.jones@linaro.org>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, ztuowen@gmail.com, 
	Mika Westerberg <mika.westerberg@linux.intel.com>, "Luis R. Rodriguez" <mcgrof@kernel.org>, 
	Greg KH <gregkh@linuxfoundation.org>, alexios.zavras@intel.com, 
	Allison Randal <allison@lohutok.net>, Will Deacon <will@kernel.org>, rfontana@redhat.com, 
	Thomas Gleixner <tglx@linutronix.de>, Peter Zijlstra <peterz@infradead.org>, 
	Boqun Feng <boqun.feng@gmail.com>, Ingo Molnar <mingo@redhat.com>, 
	Andrew Morton <akpm@linux-foundation.org>, 
	"open list:QUALCOMM HEXAGON..." <linux-hexagon@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: geert@linux-m68k.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.167.193
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

On Mon, Dec 9, 2019 at 11:30 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
> Similar to
> commit 38e45d81d14e ("sparc64: implement ioremap_uc")
> define ioremap_uc for hexagon to avoid errors from
> -Wimplicit-function-definition.
>
> Fixes: e537654b7039 ("lib: devres: add a helper function for ioremap_uc")
> Link: https://github.com/ClangBuiltLinux/linux/issues/797
> Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  arch/hexagon/include/asm/io.h | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/hexagon/include/asm/io.h b/arch/hexagon/include/asm/io.h
> index 539e3efcf39c..b0dbc3473172 100644
> --- a/arch/hexagon/include/asm/io.h
> +++ b/arch/hexagon/include/asm/io.h
> @@ -173,6 +173,7 @@ static inline void writel(u32 data, volatile void __iomem *addr)
>
>  void __iomem *ioremap(unsigned long phys_addr, unsigned long size);
>  #define ioremap_nocache ioremap
> +#define ioremap_uc(X, Y) ioremap((X), (Y))

Do we really need this? There is only one user of ioremap_uc(), which
Christoph is trying hard to get rid of, and the new devres helper that
triggers all of this :-(
https://lore.kernel.org/dri-devel/20191112105507.GA7122@lst.de/

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMuHMdUO%3DcZMsFx4t_uULNRuwnGLjbRYOJAo7j5gC-iSV3wy5w%40mail.gmail.com.
