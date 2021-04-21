Return-Path: <clang-built-linux+bncBDYJPJO25UGBBFV4QGCAMGQEZHIRMWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A88A367120
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Apr 2021 19:17:11 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id v26-20020a2e481a0000b02900bf48f13296sf2164326lja.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Apr 2021 10:17:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619025431; cv=pass;
        d=google.com; s=arc-20160816;
        b=jDn0S4fWzyGkB7Nw2nNc47tyfaqHmT8hQZipmezbFxXNNo6h8RZ+V+nY1rlRbzk2dD
         9REZEzWW6VpbkXw4BatrraPO+ks4jWRyBf39yBOxpzs3Y64MQYftUEDmMdRlEl9lJO0v
         hYNZVAtJ0MalMU8ToUZK+yA8cuNvKVTQblJCmsSpCKiUYQqx+PvOml37PRpAaaVk9+/R
         VxLoYe0BckRShmp2IB2j7n44ZkUFiCXdNvl7I7YxRpM0IBWT0wFs7Udg5EJeZJMgWJRj
         RdvpTgFN0r2i++kjO1f6qGeGBN5mGhPTi/P0p/SjV/KqbwiH9clQoyeu1oBDuHRXkIUt
         Ljsg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=iw6lfKaiQUZpiu6dwgT/fhhqOl9tqNUeNNpSaypod1s=;
        b=MwrI30ilqe9MWREL0Qmr6p1zRmaOybapfeajIV9NkPW/z4eEthaJrFP/ozqzlE5+nz
         kWlB44eXGL0U894j37fd9GD7NHjtSIGcBw7jxI3SAZK59cUquKeqKR+yldw7x14WzPYp
         VdmC58u4OLm75eF8YpyP5G6wdYqaNEYnLMBC9cqpslTxtz8DJWswxlrP1zJ9H7gcSsBo
         wiv3RQHiWO0wmg9oNa8/CN0zTM6Db1Aqb/upYQqkWmBoKb2wTxSnes3HyzpoTDGXsDgu
         iMlV9pj3kDY8v65mz6I4NHH1v7Ij2ZjIYlApUWLnFwaEu3FukOl9BojVJj1AHA0bSY/6
         HnCw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="AR3/oRNQ";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iw6lfKaiQUZpiu6dwgT/fhhqOl9tqNUeNNpSaypod1s=;
        b=TMmIv9T2ZZMxval0jAME8lhyB0obiOrEWLN8comiMEkWCHEqfTW2Y7WPpYigFgar9q
         NlAXEfl3/hyM4YLMkXvjNzP5zU1t24cUcCYxa7Yz4qyypVYVcJdBYl43hOuMqvW1Mxhe
         yHeuuGHK+U8IqFv6S6tFcQzYOpE3GoFYpj2M5FQPHYmFAHrWDkFXI8Fin73oSgCSiSbD
         SMfDzszur2EwyYFol9nXWmccjyMxAkVOy5no8pLWhYgCAPd1cCxTYp8Sd8iWmf9t8qP0
         UwYVHfNoaDyu4UbhJbR6nBMAgimxKe2LD9ujgUJlBzsgYRZSGtuxvVya7DyJMSfgwPgh
         uYDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iw6lfKaiQUZpiu6dwgT/fhhqOl9tqNUeNNpSaypod1s=;
        b=V40B6BSwmCous0hYrtl/ceZAo6BAvnoPCH0qjrgGZWAzy3aEMcPlfpySICTqeaLCUc
         PCI9JbPEb+XiScUuzp5b7ZXbTVC6RvC7/1wFt3w/YEk/VmsMAur2tH6PIYvECEGL93EC
         0TjvW+s4Z1VFDRAo08HAMuvQd2fGiGYTrCuRMUdFHmBOp438bD6FmmcVEpEN7Xt8bqFa
         AMGHkeywkD23RD8UEhMqQGIyLxCwWjLBT1kuU4gybkSq3pjbhB6W7k/rr3T5toXgo9xk
         895VtsrOnvAko9If/q52edr1eE/Yc/pkeIqyVDJ0loE966SBy4OpRMvrdNIaf8PHSUC4
         HVog==
X-Gm-Message-State: AOAM5303ReFS6nszucbEy+EfvB7ht3J//oeAiDP1t8/sJvFeMmHW8x+D
	YxgvX7fbCCG8nWHhB+A3gRc=
X-Google-Smtp-Source: ABdhPJyqEYzKqNOQhJ9SgEo3DAymRY+g7RpYPh6fYwTQyGnd38wfHysxl8eFNGzav1oWNagBhwP3eg==
X-Received: by 2002:a2e:9256:: with SMTP id v22mr19585724ljg.409.1619025430953;
        Wed, 21 Apr 2021 10:17:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:f815:: with SMTP id a21ls2224682lff.1.gmail; Wed, 21 Apr
 2021 10:17:10 -0700 (PDT)
X-Received: by 2002:a19:c1ce:: with SMTP id r197mr20457106lff.450.1619025429928;
        Wed, 21 Apr 2021 10:17:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619025429; cv=none;
        d=google.com; s=arc-20160816;
        b=gVPiJuU3RWLZoMYYJo4CE5ZOHl3Eetr+sCjFQiG4KncrHclOn2cHvUxvhsc6++3Zy9
         VE1vY5NI8BfbsLAWw5w2imYZyzPNEmrORj5tZ8UjtmIf5PPE5AM7b3F1hChz7Wqmvxhm
         E+/pIZ7TfPPtlXRh326mbgkQFMkKOKNew7+QhSkwnjBSXNsvoPiDAKyyhseZSxm4fb3V
         e3Bqj+u2b4ubpnuP7Scmm/r9YMcpUmxPhGWTZVPzzaTh64exSTZi7lK09upUaGtmQWOf
         +uo4kpxdznuOfZdCfgkOn+ekSLzMsoV2eGn+02+8fTPWUm8JwQLIF7Qr0wRHVbtBpSIo
         CMlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=43DYgV+tGi3uz6vhioZmI3U81q1qHyxbq4uVPUHsfyU=;
        b=Ke302U3vHcGwZGq9uPnwWq8Qn55huzOidhm8O1GRVg4izBIdtnePhNvIxardMrmpn0
         uACcTF1tClcZPexZQizoDBGVaUdHFywsUm5sCWsiMZW2DX4dRnlNmlWnvtmjh6GleUSG
         cA0jzSpY3FN3okZ/yExPA4CzOj0ygYg4gVNtgRYP4AUWC4aga1ClEwYpLLygcThcTW4v
         z+4S46wul2zdbj6fKnTICX4ciU74rcapK51QRC9nsZQm7j1zHS4v7D9oP7K9+/clHESp
         i1tebwMksg9JBBUmdfaKxOBnvj2r/sd/UTlfAlwtfqzv+YeeePSwpASUdos7iw/B2Om/
         Jn1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="AR3/oRNQ";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com. [2a00:1450:4864:20::131])
        by gmr-mx.google.com with ESMTPS id w18si209849lft.10.2021.04.21.10.17.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Apr 2021 10:17:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131 as permitted sender) client-ip=2a00:1450:4864:20::131;
Received: by mail-lf1-x131.google.com with SMTP id x20so37662539lfu.6
        for <clang-built-linux@googlegroups.com>; Wed, 21 Apr 2021 10:17:09 -0700 (PDT)
X-Received: by 2002:a05:6512:150:: with SMTP id m16mr21006546lfo.374.1619025429467;
 Wed, 21 Apr 2021 10:17:09 -0700 (PDT)
MIME-Version: 1.0
References: <20210421135215.3414589-1-arnd@kernel.org>
In-Reply-To: <20210421135215.3414589-1-arnd@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 21 Apr 2021 10:16:58 -0700
Message-ID: <CAKwvOdk21V0qW_xQrWqQYnrw8nEr_+KTJnVZgL0gJsJiUf2Scw@mail.gmail.com>
Subject: Re: [PATCH] memstick: r592: ignore kfifo_out() return code again
To: Arnd Bergmann <arnd@kernel.org>
Cc: Maxim Levitsky <maximlevitsky@gmail.com>, Alex Dubov <oakad@yahoo.com>, 
	Ulf Hansson <ulf.hansson@linaro.org>, Arnd Bergmann <arnd@arndb.de>, 
	Nathan Chancellor <nathan@kernel.org>, Jing Xiangfeng <jingxiangfeng@huawei.com>, 
	Jiapeng Chong <jiapeng.chong@linux.alibaba.com>, linux-mmc@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="AR3/oRNQ";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131
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

On Wed, Apr 21, 2021 at 6:52 AM Arnd Bergmann <arnd@kernel.org> wrote:
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

Should r592_flush_fifo_write be made to return an int, then callers of
r592_flush_fifo_write percolate up their return code?
r592_transfer_fifo_pio() seems to only return 0, but its callers are
doing return code checking.

>
> Fixes: 4b00ed3c5072 ("memstick: r592: remove unused variable")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
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
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk21V0qW_xQrWqQYnrw8nEr_%2BKTJnVZgL0gJsJiUf2Scw%40mail.gmail.com.
