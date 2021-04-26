Return-Path: <clang-built-linux+bncBDF57NG2XIHRBJMXTKCAMGQEYKBXDCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id DB59B36B0EC
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Apr 2021 11:45:10 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id o129-20020a6292870000b0290241fe341603sf19110482pfd.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Apr 2021 02:45:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619430309; cv=pass;
        d=google.com; s=arc-20160816;
        b=eJXH2YwgRzkS6j3FULpvOHibK95ASMMwkPIhR51LjDVpgYZPiOxaziz04UgJIz1tTK
         eXauCB1lWSC2tEcXehr3EGuOAbBygfTjKiBDI9kv94rTPRgJ/okVcYe7zmodwx57dr1R
         o8+8apf3XgI8p8SQtOwUBDx+I9VZhjcjt/6OLM+lk2lSrPwbAnXu53l+DbxWBjgVpFtk
         R16zz7Z9YWoF/DzDsdSJZuPzYms6BVu9457byjisXXYk8+N9rMxKXcNqyVztMB8009s/
         106h9GxEJGZr/p7CxN4n4zmd9sQQgcbKDDZEq3NYaGe8SbCHh5IfXTt2aO7Rq3diM4C0
         2Sew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=pRelZB/pkO3pL5047m8utvRjEu5/0mYu4RrsDoMPohw=;
        b=x9nvyNbs7vN+7Dsxgvs11b9mWZeAg2bvpXa2Oyxktce7VMeghZCPVltpOP/bagKKRp
         p6iFyl9ornRp6/Z9PKYh/nuS1uGm1Z6/SnDSGQahZnhTtwwbLhoSHvxDC9+Da+UdIKe2
         IqdAp6GbRK2S/CftMKy5ACVMMWQfKPqPsuOPZZR7z27WipayDxe/9pMP1htSd84FjtT7
         7INkp5C5RtdzfFNoWv3LWLCyEddxnyH1gK8ezpVWL76E6U8bJ7K7D9hY845VOdZWB3BG
         0KmL4QaHmnxJg4Jq/9tZukaqdkM1EKdevtPMpHzhMT58004HHMsLe2MWdIS2FxOP9l5x
         51/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=uFxMEaVU;
       spf=pass (google.com: domain of ulf.hansson@linaro.org designates 2607:f8b0:4864:20::e2d as permitted sender) smtp.mailfrom=ulf.hansson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pRelZB/pkO3pL5047m8utvRjEu5/0mYu4RrsDoMPohw=;
        b=mYhwj7aTNoD2MuGpFJcG7z4/5u9Pjf1UK1+SUis8g4+y4V+M6Vb9d9pmF2LXiDl/g/
         PeNBgFqRqwW7scUBY8f4pC8WbkcXLhmWPGGEkmhbZhKL7UVePFCMjiBL+4KKK7mY7PYw
         i0EDRM3GTbULwhuR97HNXY2UkAfGO5FMYHhRxfPtckR1jQtdfF/jlxqXHGQcm1EtXBxW
         CaOPM3U0ojnP2OAC+ET5GHnDb5uhBogoI27QeIrET+vVNmBOqCQ4TGZa1+U+qfF5U1VB
         MIri+H3ERpMJn8Kld7aIC5njn8Ie6MkXWzSvhrRirV3p/VAnhMAtGW+hahdTUKhIdh+N
         Ikew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pRelZB/pkO3pL5047m8utvRjEu5/0mYu4RrsDoMPohw=;
        b=IYARn/KEEQH4nCJXJPeM2o8NPhgnsh1X4VO0d/litAtRNMh3i8jhSuuUx7PGNuLtxg
         FG7UTmUuXgIg76dakIYn0L8zXPQInNLlmX6hIB7Cx2Fan0Di/sl2wLrlyXgm8eGZGBIS
         y94DMds4ibful+B7ZQd2rt/uRiwiUZs0xhUJxBS/TzH7w/tS6AwPzMic0XZJwnQ+yGdT
         BR1R3XrWkT2xSB+AO90BW+ahjjFvKCJSY+iWOngIDW/aDXmVwHvQV/8+mpOK5jA/Mgwi
         rU1qmDfOb4v3qtMKEXxptHjXk4ouHiUvFMPbvYJjTriSaySsOeiKD/b7b607DgQLxWAO
         pMzQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ADkMGLMmdOF0GjS5XiB0BIs6E8fqCNRY6hUWY7T5cYNbUnF7T
	weHM+2t6f6cW+vAbuEiJaHg=
X-Google-Smtp-Source: ABdhPJyKYB5TxawlaljkL1jvvxvYYQjQRrYKE6qaSLUCOzqEtbdoeAfmKgb1PIvMgUc8dOqyVIIWaA==
X-Received: by 2002:a17:902:301:b029:ed:f0f:6b9d with SMTP id 1-20020a1709020301b02900ed0f0f6b9dmr8100060pld.0.1619430309134;
        Mon, 26 Apr 2021 02:45:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ad8c:: with SMTP id s12ls9903213pjq.3.gmail; Mon, 26
 Apr 2021 02:45:08 -0700 (PDT)
X-Received: by 2002:a17:90b:368c:: with SMTP id mj12mr20164065pjb.186.1619430308636;
        Mon, 26 Apr 2021 02:45:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619430308; cv=none;
        d=google.com; s=arc-20160816;
        b=08VdciWnXhX1fxaAbCrmWnNVbO/cxWJADDPIgE7sGOziLq24BQ8lEoZAoWIM3z00GM
         WoZA0n2D6WgibTz8HMAdOm9sB27N8F4o9fmEqgesG+lBcgtEA694Brv+KKFeUP7rsAYe
         TuC4Iacm/02ngYtB/REDnZ3xsAnM++QDPv5gPmTCbK709qivguu69v0kUA7Wsgbt6jO2
         8y6QYqgeJSTk/WmLX50kBOUAzvg9bsQfPDaEopzYJly8Qgch6QLVfxIV8BlegIvi7HBG
         R+uru+HSs8XcTKCVxwWVr/XZu/K5I5Fis9TBZ115/1Sbm4roxyMtNJXXbVIyEuI6Qlt2
         Q/lQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Jq6l+/zeiO0MmVuivxxJjucggcKTImzUuMZiYzS2/qU=;
        b=zv+qQYPvjjijSb1Zx/8IPOrAqlZXNyEZHyZYZvpXcW7xHEcjCw/2HaSEntkR9a7FhK
         2p89dyXFyV+emLdgBR9SU/Jsh0bNyQvD2abhz6Z98l7+p94WKRlpvscUc3wV95WxT2tG
         1fTWd4oD1NGc6Umdcq6CWdE7TIu2zALPFq9UZ4qmG0ga17aeDYr2zuSdHG5v9YrmU+j8
         B5LY+WUCv+inXOUiE5HKCdz3qWLXK/An14XiETYhdretRs9Eok4l7sP+VhCWLiFJ4P7L
         hrSeC3/Kw/gJRhe8lgMpysm6XLDUk/lGBhuFlx5ZOUJP4Vo4WIJH6+86jt36zzpiVlBd
         YNeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=uFxMEaVU;
       spf=pass (google.com: domain of ulf.hansson@linaro.org designates 2607:f8b0:4864:20::e2d as permitted sender) smtp.mailfrom=ulf.hansson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-vs1-xe2d.google.com (mail-vs1-xe2d.google.com. [2607:f8b0:4864:20::e2d])
        by gmr-mx.google.com with ESMTPS id a8si1325477plp.2.2021.04.26.02.45.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Apr 2021 02:45:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of ulf.hansson@linaro.org designates 2607:f8b0:4864:20::e2d as permitted sender) client-ip=2607:f8b0:4864:20::e2d;
Received: by mail-vs1-xe2d.google.com with SMTP id o192so11970944vsd.7
        for <clang-built-linux@googlegroups.com>; Mon, 26 Apr 2021 02:45:08 -0700 (PDT)
X-Received: by 2002:a67:e902:: with SMTP id c2mr10830509vso.42.1619430307798;
 Mon, 26 Apr 2021 02:45:07 -0700 (PDT)
MIME-Version: 1.0
References: <20210421135215.3414589-1-arnd@kernel.org>
In-Reply-To: <20210421135215.3414589-1-arnd@kernel.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 26 Apr 2021 11:44:31 +0200
Message-ID: <CAPDyKFrUMaQM_aacYcKKnQeqeDz8cfabsFGrdNLYmotcFf3uew@mail.gmail.com>
Subject: Re: [PATCH] memstick: r592: ignore kfifo_out() return code again
To: Arnd Bergmann <arnd@kernel.org>
Cc: Maxim Levitsky <maximlevitsky@gmail.com>, Alex Dubov <oakad@yahoo.com>, 
	Arnd Bergmann <arnd@arndb.de>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jing Xiangfeng <jingxiangfeng@huawei.com>, 
	Jiapeng Chong <jiapeng.chong@linux.alibaba.com>, linux-mmc <linux-mmc@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ulf.hansson@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=uFxMEaVU;       spf=pass
 (google.com: domain of ulf.hansson@linaro.org designates 2607:f8b0:4864:20::e2d
 as permitted sender) smtp.mailfrom=ulf.hansson@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Wed, 21 Apr 2021 at 15:52, Arnd Bergmann <arnd@kernel.org> wrote:
>
> From: Arnd Bergmann <arnd@arndb.de>
>
> A minor cleanup to address a clang warning removed an assigned
> but unused local variable, but this now caused a gcc warning as
> kfifo_out() is annotated to require checking its return code:
>
> In file included from drivers/memstick/host/r592.h:13,
>                  from drivers/memstick/host/r592.c:21:
> drivers/memstick/host/r592.c: In function 'r592_flush_fifo_write':
> include/linux/kfifo.h:588:1: error: ignoring return value of '__kfifo_uint_must_check_helper' declared with attribute 'warn_unused_result' [-Werror=unused-result]
>   588 | __kfifo_uint_must_check_helper( \
>       | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>   589 | ({ \
>       | ~~~~
>   590 |         typeof((fifo) + 1) __tmp = (fifo); \
>       |         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>   591 |         typeof(__tmp->ptr) __buf = (buf); \
>       |         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>   592 |         unsigned long __n = (n); \
>       |         ~~~~~~~~~~~~~~~~~~~~~~~~~~
>   593 |         const size_t __recsize = sizeof(*__tmp->rectype); \
>       |         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>   594 |         struct __kfifo *__kfifo = &__tmp->kfifo; \
>       |         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>   595 |         (__recsize) ?\
>       |         ~~~~~~~~~~~~~~
>   596 |         __kfifo_out_r(__kfifo, __buf, __n, __recsize) : \
>       |         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>   597 |         __kfifo_out(__kfifo, __buf, __n); \
>       |         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>   598 | }) \
>       | ~~~~
>   599 | )
>       | ~
> drivers/memstick/host/r592.c:367:9: note: in expansion of macro 'kfifo_out'
>   367 |         kfifo_out(&dev->pio_fifo, buffer, 4);
>       |         ^~~~~~~~~
>
> The value was never checked here, and the purpose of the function
> is only to flush the contents, so restore the old behavior but
> add a cast to void and a comment, which hopefully warns with neither
> gcc nor clang now.
>
> If anyone has an idea for how to fix it without ignoring the return
> code, that is probably better.
>
> Fixes: 4b00ed3c5072 ("memstick: r592: remove unused variable")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Applied for next, thanks!

Kind regards
Uffe

> ---
>  drivers/memstick/host/r592.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/memstick/host/r592.c b/drivers/memstick/host/r592.c
> index 026fadaa1d5d..615a83782e55 100644
> --- a/drivers/memstick/host/r592.c
> +++ b/drivers/memstick/host/r592.c
> @@ -359,12 +359,15 @@ static void r592_write_fifo_pio(struct r592_device *dev,
>  /* Flushes the temporary FIFO used to make aligned DWORD writes */
>  static void r592_flush_fifo_write(struct r592_device *dev)
>  {
> +       int ret;
>         u8 buffer[4] = { 0 };
>
>         if (kfifo_is_empty(&dev->pio_fifo))
>                 return;
>
> -       kfifo_out(&dev->pio_fifo, buffer, 4);
> +       ret = kfifo_out(&dev->pio_fifo, buffer, 4);
> +       /* intentionally ignore __must_check return code */
> +       (void)ret;
>         r592_write_reg_raw_be(dev, R592_FIFO_PIO, *(u32 *)buffer);
>  }
>
> --
> 2.29.2
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAPDyKFrUMaQM_aacYcKKnQeqeDz8cfabsFGrdNLYmotcFf3uew%40mail.gmail.com.
