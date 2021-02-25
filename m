Return-Path: <clang-built-linux+bncBAABB5N54CAQMGQEEA6YWAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 166E1325935
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 23:04:39 +0100 (CET)
Received: by mail-yb1-xb3a.google.com with SMTP id a63sf7888168yba.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 14:04:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614290678; cv=pass;
        d=google.com; s=arc-20160816;
        b=xYCGy7QldSg79kQy7x/cRbRmZ6OjrteGhXgh/w95DxJqq5hUhXWBFrfQzQC02zsau/
         2ZyTjkKCJF/BCwp1elKFeWpRouW1jtdYlRlU9aI0iu/BMP6mRSh4ympjdjuvgI8hCp6w
         P/lO46kzOXWgBU1MdFQTUecg/S+v58q+ohBAFQJ7vr6+EUBQbBEHVt7DxUBMELnLMalU
         mmW6tJ4ifN/mXoVKXO8Q3pMFOHl3IvvlSzXjcRfDcl2VJGiGjLd1/QrWXtQ82ujxtTcf
         AzUCeuS3uW9uAU4UfLvykFtnUz9wCUgxonTZLjBReyp228IJlRiOSgPK8L4Y6O0DLrF7
         PsbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=D39A+Jwz1AwMcPEXeWX9Xa31+9jrjZBS7i12Z+jn8Ik=;
        b=A54bi48XqjAUcouTTf6jed/B/XSdGOoRZq52n3QbzuP5VOsBvU6dp/uR+7RCwSG9xH
         PHTJ+c5J1AOc2xC7u/NwE7V/NYPRNsipxp/abdKCqiYv/bfv2QzpPYXtasX393/K7X/r
         L7Zsvw7SW9HnZBiWwW7aTLjUpTwzlsZEcJ6DagSwCTOAckt/wg6gGAAZsMYn6S6NVjg/
         5fQUBRjv3RMMpdAHwqU71qNtjZObyL+Ka74ZSsXBLCvkSJi7a2T48jHaSpdWXmo9lljU
         sw7/utZFgXYjpmZ4gSrduDM+O7e2wSfjSTIyDkX+Oj3xj+y6yl+3BcR8FUD0MWWuXfOc
         ntEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=to2a1hhe;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D39A+Jwz1AwMcPEXeWX9Xa31+9jrjZBS7i12Z+jn8Ik=;
        b=dBXfXafgCworv55O0fpYP2uQHAMgqyVqfDGyt0pkULZ8UuomoOHUXLKEx6gpRyAr71
         tltcdyj1y4XS5ZxF3xTCHrj+zxMt9NfaNtzgQMhQ0zYvC5mKc7xr9KEj42VH83MDGVVN
         AykrArDyFTcHWf4KHj5J2Y2TohLwXBfu8/Foi1Pi33Lt0T3qhTM+RPOtlKWgk48ohkTX
         e28LasqndbWQ9FgNOQpKsc2wD+JyqLB6SXb/kzICQ5YZjKokfkqKcMlyui/ZYEIPN4h0
         MOjC/BqljVbbmM7Lxrp0yTRsFUVKbOURplcyKr+K973TRAPR1Chrrnme7B0f3NKOOAzK
         ugAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D39A+Jwz1AwMcPEXeWX9Xa31+9jrjZBS7i12Z+jn8Ik=;
        b=oAvjJIgFyIVwI379WzXLET+BRuHOcvnDUYJ2kLVdamiAD+S7CwgmBAyY++UHMmp2xb
         6U2CNc8ekmofKQRESqOEW0Pm+ikJPy+DJkiUiR9NXA5sfuAjuVZOxLABBTRRAAgJZkRG
         xFwP4lDJE/8hocXihWVPaDJeJrrEUfUiKkNZ1iG0GtAZdZX8vUphNa8CC4Y6a5H5mfip
         pWIlHcg3s4iAjUEDWsxwIhu5ZvtLZkt5oaM19VtOyb4Jy0Kb+cl8SRlifuCRYMOcvJlc
         WRyuPp4J3rAdgYjpK8X4PSpDVAo49WosnxZh0qrOkBbUTQkWBjXLEUGhR0LHqvqbqwB8
         rG2Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531is1Gicif8YgLe8rdNAZpzNd2nkBC6Llga2FsqkFfmYkl9czGS
	u3+qml17Xf6K76qgi+8nmZw=
X-Google-Smtp-Source: ABdhPJxiQ3dS/u5A3mdaGpM1x4fGWxOEJTJgViUgBMRBXRFfu/welH6b8PG1S5aNhXCTd8qGtOru3Q==
X-Received: by 2002:a25:7645:: with SMTP id r66mr7109949ybc.331.1614290678132;
        Thu, 25 Feb 2021 14:04:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:bc4c:: with SMTP id d12ls3326230ybk.0.gmail; Thu, 25 Feb
 2021 14:04:37 -0800 (PST)
X-Received: by 2002:a25:560a:: with SMTP id k10mr7453481ybb.165.1614290677709;
        Thu, 25 Feb 2021 14:04:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614290677; cv=none;
        d=google.com; s=arc-20160816;
        b=ulWfwQTV9ITnRE27zGCXcELE5lTGaRof2wCDQZK1A5tIiFGyln0VD2RGFR/gsgoTdQ
         EgDQWNWlY4o07CecZRuKJyS+ClBgjHyCp55ZSL2mkt4mT1wnUy2KtgjdEPl+yBWqPlu/
         aBtTGKLeQx2rc0LnjQ4Fe8FIHg/vS7847KVNcGOz/Sx+6FLBKiGA+4V4MDio0S3ToFgR
         4dv/To9bIikSx84pYmvYlFk5HP6/hTDsNpWivVufAXNUDAfAew3hVdqK1Uk6ocg0kULN
         T2TkDA/Y/HSc3h7qqx//KweAT1avRCcBoiu1Y7kma1w98VNzgEkLScDD7ZFVr/FVsv28
         VRyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=EKCjfjlTCd3wpaMe+Kw4fyWwwnsfTACf9u0jXIB+SJE=;
        b=k4OT/QCPa630KHNOsaqpbQB+++fAmeRmLOSh/52YzOPAT1smJjE3XhVMmmGTCoQF+r
         C7Z2BbHdJNgZs6zmyfbe4IiPz3ibBUYaraTtB7rljVC0xCCGNpzN9PeelUExCLoOLtUg
         55KGXDW1NYOAxCi6HM1mL14L/tcddi4jwk6nh1difZD2Owg1Rf7yWP3LWRynt5c6Pshr
         hepvqAEdNunmXIDyGAzguclwrMFG+OToT7fO4hbv+pIyz52qiwcUTmGkPeZ9hEviPp9+
         pQISDSQV4+qwfYXeim8JzE50faEpEfDGP9ESLg6bEPoRAucCOdRVTxfgMZK708AV074X
         Ygrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=to2a1hhe;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c10si517705ybf.1.2021.02.25.14.04.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2021 14:04:37 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 54877614A7
	for <clang-built-linux@googlegroups.com>; Thu, 25 Feb 2021 22:04:36 +0000 (UTC)
Received: by mail-oo1-f52.google.com with SMTP id y21so1734150oou.13
        for <clang-built-linux@googlegroups.com>; Thu, 25 Feb 2021 14:04:36 -0800 (PST)
X-Received: by 2002:a4a:870c:: with SMTP id z12mr48017ooh.15.1614290675584;
 Thu, 25 Feb 2021 14:04:35 -0800 (PST)
MIME-Version: 1.0
References: <20210225094324.3542511-1-arnd@kernel.org> <20210225164522.GA3554437@xps15>
 <CAKwvOdm_yh6gw_ecjeKgepRb12Q69Wk64x7xj=L2CDjBekiioA@mail.gmail.com>
In-Reply-To: <CAKwvOdm_yh6gw_ecjeKgepRb12Q69Wk64x7xj=L2CDjBekiioA@mail.gmail.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Thu, 25 Feb 2021 23:04:19 +0100
X-Gmail-Original-Message-ID: <CAK8P3a2XD7yA7s4d1t1Ogy0vnX-YGYRaHkY9Civ0H4Z9VJ22Tw@mail.gmail.com>
Message-ID: <CAK8P3a2XD7yA7s4d1t1Ogy0vnX-YGYRaHkY9Civ0H4Z9VJ22Tw@mail.gmail.com>
Subject: Re: [PATCH] coresight: etm4x: work around clang-12+ build failure
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>, Suzuki K Poulose <suzuki.poulose@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Nathan Chancellor <nathan@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Mike Leach <mike.leach@linaro.org>, Leo Yan <leo.yan@linaro.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>, coresight@lists.linaro.org, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Bill Wendling <morbo@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=to2a1hhe;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Thu, Feb 25, 2021 at 10:23 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> On Thu, Feb 25, 2021 at 8:45 AM Mathieu Poirier
> <mathieu.poirier@linaro.org> wrote:
> >
> > Good morning,
> >
> > On Thu, Feb 25, 2021 at 10:42:58AM +0100, Arnd Bergmann wrote:
> > > From: Arnd Bergmann <arnd@arndb.de>
> > >
> > > clang-12 fails to build the etm4x driver with -fsanitize=array-bounds:
>
> Is a sanitizer enabled, that would trap on OOB?
>
> > >
> > > Link: https://github.com/ClangBuiltLinux/linux/issues/1310

As described over there, this happens only with the array-bounds
sanitizer.

Actually, looking at it again now, in the reduced test case, the inline
assembly is not even parsable, it only works because it never gets
emitted without  -fsanitize=array-bounds, and the alternative
code path is used in

#define read_etm4x_sysreg_offset(offset, _64bit)
         \
        ({
         \
                u64 __val;
         \

         \
                if (__builtin_constant_p((offset)))
         \
                        __val =
read_etm4x_sysreg_const_offset((offset));       \
                else
         \
                        __val = etm4x_sysreg_read((offset), true,
(_64bit));    \
                __val;
         \
         })

read_etm4x_sysreg_const_offset() eventually turns into something
like

asm("msr_s " __stringify(offset));

so the offset has to be something that can be parsed by the
assembler. __builtin_constant_p() checks that it is a constant
value at compile-time, and in this case it can be because there
is a small upper bound and clang just unrolls the loop.

I don't think there is an alternative to __builtin_constant_p()
that can be used to decide if the argument is something that
can be used as a constant expression in an inline assembly.

            Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a2XD7yA7s4d1t1Ogy0vnX-YGYRaHkY9Civ0H4Z9VJ22Tw%40mail.gmail.com.
