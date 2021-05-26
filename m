Return-Path: <clang-built-linux+bncBAABBIWPXCCQMGQEN26NDGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 77AA5391553
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 May 2021 12:49:07 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id y11-20020a6bd80b0000b029047317d1c991sf312562iob.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 May 2021 03:49:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622026146; cv=pass;
        d=google.com; s=arc-20160816;
        b=UmGQUjIoLOV+zmOCOgHRTcBolZtW8qk3DA5kP6z+Z1s++V9GeSk9rxfpak768ZNG4j
         vOH+NjZnvOO2a+eLblorgXhNBCMnLobB5+ub47psLwQ3FcYkZ33MNJuXpuN/oa8O8tX6
         1NempDw1opMN6g04ZE5pwR1ERt6HT7pOpEQynjqkAe5KJfm0fpmOPkjUvMtWOu3ZyCh3
         L66OA3qp0d2r6K/yo1N28uWl7bQwqUmuyRuMD5NZV81En3Og44PYfP1y2gjiE55JSWHB
         HUerDXT9xFWt64AnPjCL97FfH948RJmKLcDglITQ8hKUB/ksLpjpmVpuEO9Ny78x6xxB
         e/BQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=KpQ6l6qGZZRHxYvw2XmVB0hRU9KSUC5EL+3m+iIz0+s=;
        b=tt6oTWmtYaVk+Sgriv7TrAVh/ZHyIw05AEymV1uLtQyuigISeDPHnHYy7KdP4e83dF
         BX69JDOb1vrZ0hbgaFmzuZlpXHA5a82OK7sGMNWnCcEYR1LLV1mLzXgzJjdBq8VK+ZZ2
         Uxs3u0aKYzEgcKdwPNeDSXtRo6uMxqLlnbjfJnoUo5SFOYZeGuRqRPBDKoKFgKOnWmGG
         A4zPcwOBUULnZGBPnoI3vjEQdLDI5hhUbPi2PcmE2Fsg9oe+mzppcnNwZ/sysPkbYeIG
         yjLlEvSpLMndpar6gtgbwYDeIY3tUj9femQBXsqL7bmgCl610uKqQI0JAAvrkacSFy7H
         OBVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=D7TqMxxw;
       spf=pass (google.com: domain of jikos@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jikos@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KpQ6l6qGZZRHxYvw2XmVB0hRU9KSUC5EL+3m+iIz0+s=;
        b=lDgWrJKzn83AXp1jMBU2Wfe9fwQMiG+n9WBCuZAxMicMLGxdNq/BfRPupJLALe/YuU
         mg4OFiIq7RGOsYhKZ4U/KV2bidZirX0ShqoitQOm7VjqkvaRtuxvnZzOiiOjon+tZBbu
         gHlU0hm5NE1Jw6HDoI2aV7YSffFcnmKcHUJq4MKTT93sajNwkE9+/RgCM1Z8uWZoeqmW
         dMFHTrZhKM9A6j2neW5kskz7X3BSMQdFxojg8cYOW2crs1SMfjIH4FrZHzONFc/paw79
         wguNvmeAo9PgYTiwKPGgsBmII9+lSNhuUOd/RCbexYal5jT3ni8h4gcwjyNeRondyONl
         /p4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KpQ6l6qGZZRHxYvw2XmVB0hRU9KSUC5EL+3m+iIz0+s=;
        b=R83wEe3Y37tjOXeX3JC92U1d4ORrhCFT9ots5uzSUhpALulU8JwYzUcU7okOGC03LN
         kmfMal5HWkBfESvM7D/ywZ5tXxY62wXInr++5xzuqEp9AyspsIG6Qj2VoAkS00cfL8do
         AoH+PANhD4f0ah1s/JCGFoigv6dWY6e7AH24FR797uiLEXDgEEB1GfrzvK2uL88VxPee
         CXtfySbfpildrtFxe80VAKQ+7eBaCyYEpgRV1fO1wLktQqyxNYtmS/u402i7Y0IKQZiG
         72XxDJ1PZqIvgGfPOSj83OfXqKdWyijmiZNv+yWtfTOI44a+NsCRBxtgpSj9whT3xmMt
         wp7A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531VpYQ7puEzAvS115HfxPRdIj5h3MDTHfVOpyl4vN2xZmre+syw
	j5bNowdrktXvogF/xV5fdus=
X-Google-Smtp-Source: ABdhPJwerCyWHvO6btoN33Dg3wKTmrnsbK+k0Ej0Lw5tAFgbadgsi9vcbd7KtK3dqrn0JYBMltZopA==
X-Received: by 2002:a05:6e02:1708:: with SMTP id u8mr29422825ill.188.1622026146297;
        Wed, 26 May 2021 03:49:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:b002:: with SMTP id x2ls1633476ilh.11.gmail; Wed, 26 May
 2021 03:49:06 -0700 (PDT)
X-Received: by 2002:a92:c794:: with SMTP id c20mr3200571ilk.288.1622026145982;
        Wed, 26 May 2021 03:49:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622026145; cv=none;
        d=google.com; s=arc-20160816;
        b=n2omYwIrgXGA9fsKadCPmbDEErV9twy9msvcv0dmpnu0VsdG69QmtC276nZ/+dhzvG
         i7gFyq71FmCEmINmbQnDCBZLZXkJGhVr/xIITG1DYnfHm/i1f2H8VGE4iKD2xco0fPF6
         P4U2eB6FGO0ayEYvfDOcVEpSqVvc5hk6RG8xtbP00uRnjmt1e9sHoaI8KIOcu3mCOqLW
         cSYH3h3ITK+tynlf47j07nj3qVsYbvrTZ7MGnAGU1Fdb6coq3vfyQ54di+66VmeY9GH7
         vsqPQ2Bp5byQ9xUgg1EEoq/MfQULjZUzquJ8GxvGJziVCVMkPW5Rgo/amI8ZDcBeHhwl
         uOJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:dkim-signature;
        bh=TpfywWt1/bGCBDCnRf3CvwgHGPUWL7DaF4dTxqrptlA=;
        b=y+tgVGr0RzczAGDyYCJFKCxuP+JX82/6WfAVXznClw0KyHblMF/aiBePcN6QBL59GS
         KuZAYnHZm8km64OysOT9vFKmRRODsTDu+hWq6N/D27pbGT1f4sJL7Sx0G5VcPvx3PeO1
         h6Wf8JmAz0ct6ZjKbCGIhwwPIJ9IXNifBpKZkB0mG7Bc0OU27nEcSOX1md+MwwtLU1i8
         vcDWu35HvGfSlmCdJ+P+ijG9mZWctk9f4t6xcQG5A2dOfE77HtOmITtaWQcZtqZrFP7/
         OJNukDiBzIAkYZ6Ac8VqCJPuJXNdA4Ga/k9k/lQgYeUGKhU6kcrQR1x7QGS3MbarDmha
         GoPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=D7TqMxxw;
       spf=pass (google.com: domain of jikos@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jikos@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f13si2456431iog.3.2021.05.26.03.49.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 26 May 2021 03:49:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of jikos@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id C143F610A8;
	Wed, 26 May 2021 10:49:02 +0000 (UTC)
Date: Wed, 26 May 2021 12:49:00 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Arnd Bergmann <arnd@kernel.org>
cc: Benjamin Tissoires <benjamin.tissoires@redhat.com>, 
    Nathan Chancellor <nathan@kernel.org>, 
    Nick Desaulniers <ndesaulniers@google.com>, Julian Sax <jsbc@gmx.de>, 
    Arnd Bergmann <arnd@arndb.de>, Hans de Goede <hdegoede@redhat.com>, 
    Douglas Anderson <dianders@chromium.org>, 
    Kai-Heng Feng <kai.heng.feng@canonical.com>, 
    Xiaofei Tan <tanxiaofei@huawei.com>, Coiby Xu <coiby.xu@gmail.com>, 
    linux-input@vger.kernel.org, linux-kernel@vger.kernel.org, 
    clang-built-linux@googlegroups.com
Subject: Re: [PATCH] HID: i2c-hid: fix format string mismatch
In-Reply-To: <20210514135901.2924982-1-arnd@kernel.org>
Message-ID: <nycvar.YFH.7.76.2105261248530.28378@cbobk.fhfr.pm>
References: <20210514135901.2924982-1-arnd@kernel.org>
User-Agent: Alpine 2.21 (LSU 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jikos@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=D7TqMxxw;       spf=pass
 (google.com: domain of jikos@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=jikos@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Fri, 14 May 2021, Arnd Bergmann wrote:

> From: Arnd Bergmann <arnd@arndb.de>
> 
> clang doesn't like printing a 32-bit integer using %hX format string:
> 
> drivers/hid/i2c-hid/i2c-hid-core.c:994:18: error: format specifies type 'unsigned short' but the argument has type '__u32' (aka 'unsigned int') [-Werror,-Wformat]
>                  client->name, hid->vendor, hid->product);
>                                ^~~~~~~~~~~
> drivers/hid/i2c-hid/i2c-hid-core.c:994:31: error: format specifies type 'unsigned short' but the argument has type '__u32' (aka 'unsigned int') [-Werror,-Wformat]
>                  client->name, hid->vendor, hid->product);
>                                             ^~~~~~~~~~~~
> 
> Use an explicit cast to truncate it to the low 16 bits instead.
> 
> Fixes: 9ee3e06610fd ("HID: i2c-hid: override HID descriptors for certain devices")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Applied, thanks Arnd.

-- 
Jiri Kosina
SUSE Labs

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/nycvar.YFH.7.76.2105261248530.28378%40cbobk.fhfr.pm.
