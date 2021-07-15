Return-Path: <clang-built-linux+bncBCQJP74GSUDRBCF4X6DQMGQEKA3CN2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B9C3C9954
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Jul 2021 09:04:42 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id a16-20020a17090a6d90b0290172c6293174sf3043068pjk.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Jul 2021 00:04:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626332681; cv=pass;
        d=google.com; s=arc-20160816;
        b=sLmKx3+IcpQxOBOdsLf+n0VvvGkGnDYZsgptlclMSDC56JM08wsxPVwoAemDvNmv8e
         ZwXARpnCuUIBuMczCLSKIWPUtSxGd/H232tWhD3uZYxmuI15JShVNbgZDSfYFdvwDmTl
         lk6sMdCM7VqsZZNGn6yiwkg0VAihlLWnuMlB1XGNsYLXwLK0pnia/B5XzG5RNwiTlre4
         esinmgU8H1HcQRnYvGzIuIkpi+X5sQ5tUqlm+2r3bnPwG9dFA0C2BMFFmpyUpvhrE8uE
         hZqeD6xceiwsLL3jGY2XYBCCFejxGzMR8nwCm1kY6N8w7n4j0rXIC7Q4rDCwTrdKQBhd
         cnUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=qB+d8rnAEY9Qwg9FZdegQsPRKxXGtMCMApVmdxjsuGE=;
        b=w8qsS1r9NqVuBvDICo2We5DLKiGTx7S3hDxnyiIJjCBJET8D2/sXRNWfcBhWHf+8Po
         fC8DC6Gk0aKUXBWWNlXfv5KNv4ZwRvCd+0AJ132M+oyRUJZPfFlBMNT6tBX7PcNf51rJ
         zL0eVM0kxDqVK/sq/d6wSDn8VqHpUp1fV+Zbf6yUKZ69KTMQM6hxy1zuwRmBULRqxR2a
         cqGtCiBddlUdXSSXSnIgKQM9dN3bGhOp8KGB8m5bvYKdaFzCzM5q5hCk2Pcy4WHiHOx9
         61RbNxXOpUOZGiUMwH3/GgCc9HXByMjd/UU4kdhvFgP0zbuIUIRLcYPbGFi8GOx/+4Il
         yX2Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.221.179 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qB+d8rnAEY9Qwg9FZdegQsPRKxXGtMCMApVmdxjsuGE=;
        b=jF2RzkaVe7VWHSPEYrDghagok5A5Cx2SWDdVmxgkuTuAodzALvu+GEvp0s32pztdvk
         P7Uh+pgS0Rcc+53/bpDRn+6P3FzOVxcy/pPcTTE4DINkgoHieNodXnQRLQ+JYYs2cLMg
         fCCwmU2jxYwHyPExSZclJgq6spZuaWy7UyOzWppJGxyc0Oksdh7l/aSgEScUxd5fHhyU
         gVMtyTmk2MuwlBMg8+OHdN6sGVrqTsCI1+dwqnsM+SS6jrbP5gJO/0XtZAF+THFy994a
         J9nxUt2Gy6kw8e8cVMqGa3+B9xH+BcoSLzVNEVRT8GJbxrKG+IGGmz/X+2enDPheFZfC
         rdrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qB+d8rnAEY9Qwg9FZdegQsPRKxXGtMCMApVmdxjsuGE=;
        b=OlF/AjlCpjU8qAcTzmAd4pxWyMdg/BBCtP+B7vbk3qEUguo+n4HUPBtLddTpbuhOmC
         AKtwP3wPo8XxjeUbakze8Ym57QCVWFLhCvZRr21Nlgdp3RzzgdmpmzNYCzk+ZPpSL1NB
         WW39IS1aX11n4HdPuj8W6qLbwK0Fms8Fozv/poZPszvb67DGNu7yyU7rfD6/LJH158TD
         trBO3UFR7gvzdLC19UJSJUKlQfveYoqOgwKF5Vbsv57pGLnRAsvqnjg9X/EkARRs85g4
         nrPycZd//qbhO2qlqqSfo3/IqYySnrPw/eGQSezjujabdocfmSs8TRoqjUhN7WUmRWlY
         dg9w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530NQ9P4bbekoyHCdEAOCyQoAHOPr1huo0lL1RyILe0L4l/IeRWz
	s/z6GgjDn7Eo76H4bcWvLwM=
X-Google-Smtp-Source: ABdhPJyZMB0/Y5sHeQlckPR1BwclgSb7tWDR/lHxUizIfC9ZFWjBUQpWk5Daiv5gHQin/QXu7SjyBw==
X-Received: by 2002:a17:902:bcc3:b029:11c:5ffb:61fb with SMTP id o3-20020a170902bcc3b029011c5ffb61fbmr2211676pls.18.1626332680991;
        Thu, 15 Jul 2021 00:04:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7e81:: with SMTP id z1ls1792667pla.10.gmail; Thu, 15
 Jul 2021 00:04:40 -0700 (PDT)
X-Received: by 2002:a17:90a:ce02:: with SMTP id f2mr7678080pju.232.1626332680352;
        Thu, 15 Jul 2021 00:04:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626332680; cv=none;
        d=google.com; s=arc-20160816;
        b=yEVGQHWFu00gezXLHY0RkctVKXMuxA/NuljVWp/q9SEvFWy1rzWzZSt35BaGjXdXyk
         +K+Bjitj1qoRca9uf/Gm5iotojqXQYgolylG6e+J7WMNu4xBavOgMobuR4i7Qd4DNwx+
         X64z2TV22UBaVeJ1x8gksVVDbHUnrcuu7sLG1tRAsqzuXFu7I0/p3HM3IxGJqDiZDtio
         Rgqbd2YtPzP5NyeSlsCs6e8SYsjafl2IFXCsnsM+GLgGq2jxfcvI3WaP6sMgXNeF6Dfl
         2Qq+KjLfZyQHi8MqIE9haTu6yoYtj2bNCM8/PPGPGjtQ7PVuK9bE6zIWQeUzzzBKWkhw
         8IIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=xBOQfVAHN/gMLaUVEeV1YaP5S3H67lxPpg5yEoNNiuo=;
        b=nuLezQVql1hMi2yqzht1Y1dd17jAbO65HA6eq296rb6t6XLsz2sV1RjpA4KWduFrVu
         C/9PDxTj9w8La1EScGvehYoZ06/Udg22YcxqhU5wU4nWqB2J5el7NYiDMdBRT0rAbxIi
         c9uOeRXKuGrVP+wVnbnBAM6MUOs+FukImNEkeE/jCPzUd8eRdQ7NJO9EPkeRRCFQT6Np
         WufQqE4WKaTmLtqu1jyK1e6aR+PvTcxY60Pjuuloc805JpS4TS0wd8yVOcE9xLioS7aP
         mYL1ngFEQjEDiJ/kyum6huMtadoDViZX7zaDzfWMIUqDD3ASXOC215DYeH3RMITws0+D
         QBQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.221.179 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com. [209.85.221.179])
        by gmr-mx.google.com with ESMTPS id o13si1236728pji.3.2021.07.15.00.04.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jul 2021 00:04:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.221.179 as permitted sender) client-ip=209.85.221.179;
Received: by mail-vk1-f179.google.com with SMTP id x20so1075760vkd.5
        for <clang-built-linux@googlegroups.com>; Thu, 15 Jul 2021 00:04:40 -0700 (PDT)
X-Received: by 2002:a05:6122:a12:: with SMTP id 18mr4016447vkn.1.1626332679580;
 Thu, 15 Jul 2021 00:04:39 -0700 (PDT)
MIME-Version: 1.0
References: <20210714151130.2531831-20-geert@linux-m68k.org> <202107150434.SylYq7Cs-lkp@intel.com>
In-Reply-To: <202107150434.SylYq7Cs-lkp@intel.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 15 Jul 2021 09:04:28 +0200
Message-ID: <CAMuHMdUf4C=+vUk6QRm5rO8meZCRZat3MrhktPBW7wUkZOxhug@mail.gmail.com>
Subject: Re: [PATCH v3 19/19] auxdisplay: ht16k33: Add LED support
To: kernel test robot <lkp@intel.com>
Cc: Robin van der Gracht <robin@protonic.nl>, Rob Herring <robh+dt@kernel.org>, 
	Miguel Ojeda <ojeda@kernel.org>, Paul Burton <paulburton@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Pavel Machek <pavel@ucw.cz>, 
	Marek Behun <marek.behun@nic.cz>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	kbuild-all@lists.01.org, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, linux-leds <linux-leds@vger.kernel.org>, 
	"open list:BROADCOM NVRAM DRIVER" <linux-mips@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: geert@linux-m68k.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.221.179
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

On Wed, Jul 14, 2021 at 10:50 PM kernel test robot <lkp@intel.com> wrote:
> I love your patch! Yet something to improve:

> >> ld.lld: error: undefined symbol: devm_led_classdev_register_ext
>    >>> referenced by ht16k33.c
>    >>>               auxdisplay/ht16k33.o:(ht16k33_probe) in archive drivers/built-in.a

Thank you, the driver needs to select LED_CLASS. Will fix in v4.

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMuHMdUf4C%3D%2BvUk6QRm5rO8meZCRZat3MrhktPBW7wUkZOxhug%40mail.gmail.com.
