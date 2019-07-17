Return-Path: <clang-built-linux+bncBDE6RCFOWIARB5VAXXUQKGQEPZFXOAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D2816BFCA
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jul 2019 18:44:39 +0200 (CEST)
Received: by mail-lf1-x140.google.com with SMTP id m2sf2349916lfj.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jul 2019 09:44:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563381878; cv=pass;
        d=google.com; s=arc-20160816;
        b=TbJy26buR5D9QT4Ay4HROCqewjd+dxTG5tB0atDwMiSwOy5B5MF0jw3oT7tVxnIDm0
         wIhzT25ZXB2xi0ewT99v77P9hbAuHuCrSfSXWWSZ133OG8PDRgWU3JHo61YvnvuhtqeZ
         iIf6oVCOoigV9WpkNduCT9yeB+zCDRvOvBX0japazXSbe79MaC6zTT7QLEahS6D8R277
         dhQYVI8x0DgnZFI5WAy85o4MYEZlgt7ufctOkOsBrulz9GNZM0r4cr+2aZ0nf2QQHMyQ
         RALv1k75DglYTYm0BxXg4nA/mVuW5PKXm1c3mfe4/rGPBu4wJh6yRFpZoVTS6CNfheSs
         umtA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=dIgJScsszKTS1ATeaUOEy82vINT9slSjSLErPSq8yhE=;
        b=A6651QSY1WtYss7qUUt2FN3chqgV3uN2mGq6nbaTeiHUb7jFJQM9Fgt/pEMDK0dvL3
         pnVZCpPY/IM3hy927aotAAV8SYocCcCxOvQZmw+NZCbvTKk1tBREJRMwmm8a6EQIWaYH
         JSKNIW9jSkxoyqe0jK40U/Xeinq0ccBcrI2L1RCOLhKbvapNJ9B6iawaCOx/YgIU59lT
         Q4ZqQLEMTSlzlqUF5UgMuHo8dtwiaJXUTN91PI3Zee4eEgBc0pP5uo5fcbw+QQxh/lBG
         f+1dZIY2s0Nll6N4dSLwBDYdDb2Zysltpv6s9kIzyEcGrRQCX4wobmk2UGs3Iw9sZfiT
         D3Wg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=F2vezRmf;
       spf=pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dIgJScsszKTS1ATeaUOEy82vINT9slSjSLErPSq8yhE=;
        b=r9p1JNX/e01tLPm9WLLw96YLENFwy1VSvDt10BRKNWlHiwTQcRpFAYuYGZEp5CaZdI
         Span2DlAxUtZKJjFOP19LHnGdqX6v59Ip+xQeOgLgYADVqNj+9jCiDlEdHpuuuvke7DA
         Ha84tFg72l+GRnJdVg3UU/2V6gN3+5VEiyMA92/kaZC2ycLusgDHeaI3SuQDpZVcdlM2
         ja4Iic2Zn9ELmFiCsALxPYzCUqVT11/BQNp1B+HJFbeNTGnaUNtFpjW1rs/Hs5ePEjfx
         vTv3DATDToulVmoP6DE0QtxNsDwnVISEibzqK2xd8n+NC2jBmtsN5pGeyvSebMMMZdyq
         dtKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dIgJScsszKTS1ATeaUOEy82vINT9slSjSLErPSq8yhE=;
        b=CB/DsS0piX1fHB1src6bEW9szTiyPhQvQ3HKZrMivOROvUvjDsXxv8w7cFyIFKND4f
         4AokOw2n8geJCNGHO0Z7oZ+vGa9ulPWyGPC6ArX3xmGwCg0tEQW0CVj6gwR+0kAH8N7F
         XvJFdN0Dz6HTr5YKV/oqhb4kpz5g1laNwDfJ5yG5iuaM1dhAnL0+aOPdfSYwejmYotJX
         Uk3aVAsiosgp1GNXcqKESEej83omFIM1xpcJoXbdgBLgcHaWehJq5FGdo5KFZl118j4N
         djSmJXI6/Q2vMWZj/MnylYzw3UaaMkNPEZFIT5D3pg8Di79Aw9dyPtkNsieC4ZKtRgQY
         +l9g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUcJtXpSNl5IWFYjsz4DSR28dyRj9ASagZfGYn8hPWxWxaXbJXN
	pwahx3sc1WithIwyjdLHUFI=
X-Google-Smtp-Source: APXvYqx1BLvFrxvBL53iPDP+LRu40KGwIAknB664FJy30UUdRxVGt7g0PuAqyt/MCj4yzzETLWHwBg==
X-Received: by 2002:a2e:9ac6:: with SMTP id p6mr4850465ljj.100.1563381878695;
        Wed, 17 Jul 2019 09:44:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:ee0a:: with SMTP id g10ls2032783lfb.13.gmail; Wed, 17
 Jul 2019 09:44:38 -0700 (PDT)
X-Received: by 2002:a05:6512:146:: with SMTP id m6mr18305205lfo.90.1563381878245;
        Wed, 17 Jul 2019 09:44:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563381878; cv=none;
        d=google.com; s=arc-20160816;
        b=NtDgM79Zl7Kak2C2XNI/ZSzJPDF+P8vLO9TA+3Cc2qQ32A9U9ewXGsje6ZnlFFRkpG
         G6PB+spIqw7wiuG3KqyGEZGNXMHJNQGmSC1vY/ojsUGDDrm4p9yLRRjrPLPe8JT6JIDP
         VHTs7YOHdE2zz6DZpAk/3+VWw+WGD19WcfqvTM2p4h3nS0y62zBMGiax+FgizSPgu95w
         jJ6Ic06gkGMzxPx7UbW120PBO6bNKiExMFNCfAPsxVMH9knk9mBNc8IPMARwty9qHesn
         6L7TOb1WGpGEGZT8hlxjWgq4b++9fvjkjiyUXW21hCvcmEypEWp9BWYkB2/2DwhAI7BM
         DUWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=yk4XP9CZ1kslTNlitSHU1MG+UFO4IaHTa/axM5q+rdo=;
        b=NZMMs6J8Zk33NM7r4Eb8CB+/R8uPjkQ5X8jvQGCdlfGULec9WsbcY+yLwg5rGx16WO
         wT+aJX6RGFwxG/kcvS2YGaUV53dcKA8VJnbb5L/tGc1h80HCBtPpXti7FCHLsk89a/QO
         KHLsmqlKPftu4vqpGvDCtRdcg+PNk4gBApd+rWhojizs0WlxLzf//Dxaczi7satdKu05
         Cm8atDkeoaN8o/l94TOxVFUk/oID0rjaYI537zduozncZSIA+Q2rXIb2/ABBszISOEiv
         IA+rIlrslszrMVbp8/qq3PCMNxCCppMvBnwOijJO83Hs8JtwJnb3iFn5WMO/0bHIHDJ4
         Dhxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=F2vezRmf;
       spf=pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com. [2a00:1450:4864:20::144])
        by gmr-mx.google.com with ESMTPS id q7si1478954lji.5.2019.07.17.09.44.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jul 2019 09:44:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::144 as permitted sender) client-ip=2a00:1450:4864:20::144;
Received: by mail-lf1-x144.google.com with SMTP id s19so17001609lfb.9
        for <clang-built-linux@googlegroups.com>; Wed, 17 Jul 2019 09:44:37 -0700 (PDT)
X-Received: by 2002:ac2:5c42:: with SMTP id s2mr7368803lfp.61.1563381877741;
 Wed, 17 Jul 2019 09:44:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190712091357.744515-1-arnd@arndb.de>
In-Reply-To: <20190712091357.744515-1-arnd@arndb.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 17 Jul 2019 18:44:26 +0200
Message-ID: <CACRpkdaKNk3eE5cfh8fKQ341PhDxOCRqVz8Cay5to_ZZ3t_7Vg@mail.gmail.com>
Subject: Re: [PATCH] dma: ste_dma40: fix unneeded variable warning
To: Arnd Bergmann <arnd@arndb.de>
Cc: Vinod Koul <vkoul@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	dmaengine@vger.kernel.org, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: linus.walleij@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=F2vezRmf;       spf=pass
 (google.com: domain of linus.walleij@linaro.org designates
 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Fri, Jul 12, 2019 at 11:14 AM Arnd Bergmann <arnd@arndb.de> wrote:

> clang-9 points out that there are two variables that depending on the
> configuration may only be used in an ARRAY_SIZE() expression but not
> referenced:
>
> drivers/dma/ste_dma40.c:145:12: error: variable 'd40_backup_regs' is not needed and will not be emitted [-Werror,-Wunneeded-internal-declaration]
> static u32 d40_backup_regs[] = {
>            ^
> drivers/dma/ste_dma40.c:214:12: error: variable 'd40_backup_regs_chan' is not needed and will not be emitted [-Werror,-Wunneeded-internal-declaration]
> static u32 d40_backup_regs_chan[] = {
>
> Mark these __maybe_unused to shut up the warning.
>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Seems like a reasonable fix:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACRpkdaKNk3eE5cfh8fKQ341PhDxOCRqVz8Cay5to_ZZ3t_7Vg%40mail.gmail.com.
