Return-Path: <clang-built-linux+bncBDYJPJO25UGBBUHJXLXQKGQEDKSCKCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 768D21177D4
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Dec 2019 21:55:45 +0100 (CET)
Received: by mail-il1-x138.google.com with SMTP id t19sf12673434ila.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Dec 2019 12:55:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575924944; cv=pass;
        d=google.com; s=arc-20160816;
        b=XjMlxaWWtF9N1JJPts3tjRO0S59dm1l96MyqbM47bEvLWapyd/1Z3CzehUQNwhjq8h
         zkRBVrw0UHruWAiRUqzZgdJH4ArVnMIaPBCtDdieJ7xjIEbt7BMx/+tzWN1cf+tQ4adk
         EobzLZHAvoWdU/txULaDLPWZSI6XupK+/5CnB6jZpN++0aJiQd7vapurXnRyD/XKb4nd
         kUsx/sKel2uoqWwh9enyC2pzN5OSRt/hguIBlRTQuWMOcd6LkzZliKL6UAh5o/uucrYv
         cRABYjUdpTqu1L2lhDZUz9mNq6YJb3+2IgtBT1dGADyXumIL2uLuld3bTQk9HLNntiUj
         Xdnw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=AhfnpPpa+36ea13QnMfAb+hs96U5XzRKU58lHC7xxmQ=;
        b=Wm9H300ADcUEBU4a3hJ24c/OLe2dG0T9C8gxLYwC891jtSN9DXk5rObI8I3CqCWLO8
         oXpz7vrAmtemSIxgphx0uOiwznaTsDZnsxm09uYqGBYU+cl7dl8aodLiwqmmWNNUSxnK
         faXV4F7Mgk3rzwii29aNjtDF4VEw7VrTb86rJGrc7GshjRBg2pYd+h6+aqPoQzDQrK4H
         WBxNFYT6eXLoAsKu8peTMDphoKZ12KVAiaUlNZFpG9xXg+qRyZih6NyzJUYuhsqR51l6
         CJlbe5hLsE+2ntj9T1D4Ji7g55PLSviISXISga0WVfosctYU+kDvmf5vYwrQmR+/toRE
         JMbQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=G38QlEon;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AhfnpPpa+36ea13QnMfAb+hs96U5XzRKU58lHC7xxmQ=;
        b=JUbr/i/Sf6p1DOgZRjNwW7WdanUswTEVusNQcHRSWsPsbc/xbGM0nalBKJS+4WIxWI
         6UqGUlDPZBhicFyJFezomwf6bOTaCuIgJwclT4aCpsXuTO1OjmM3MCvGBNxzbfCBzNpp
         ssw80h/aN8dMzEcV7rnfGQ77p5CoWAfdrPYcuiJ+epUa86vEUu1f1qrZWRYhcfjk2O0C
         1DZ1osO2nSdqW5t9a9Ds9usPswq9E/Xdho+dFD3QAiNVGAIEI6n2+6hpRiZwhOaCdNin
         ZzPB00N5yO5kSy3OoDO7w8tsjdu8iIFusczbemRPLSKXYbdKQ37Ek4vksF647bACBXdA
         HoZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AhfnpPpa+36ea13QnMfAb+hs96U5XzRKU58lHC7xxmQ=;
        b=DXN55BNgyqtRkgLGbwmoL8u98s0y5vLIgQDsrll4gN2yGbXIWvKJ9ysnwYJZC0o2ap
         5XHdqRKddFNOfPedWaq1uSN86PBzK5i6ci/9ZUV8cQXn2e8S4eZadlMFIIP0slqWoxUP
         QLA7sI3M+8zbVL9Ne9MKR9i9j6JCfueJqZTfPrlp2ZYSkWRFQJV4cda4YTePO2ExkxVJ
         ZX8rl1/z6iLdbuKj1YCuhr9EiYhG5o3z7M/erzgVn3m3Fdw8m3/VtiUYXAkEgu6bHpR2
         i+EBJGN5z2we/aYcaV8CtyH0nCu+Y58IISuHHZ4cuuLP7BA6UkUwTdXMc/oCooEakmt7
         2EKQ==
X-Gm-Message-State: APjAAAXK13xwkdKQnfKVeP9DEPj7en/BYnrjg8QXy4xng46qOTSjsjqn
	v+nRuAf3Ri3LgIBYkuH2EBs=
X-Google-Smtp-Source: APXvYqzfVxCWPHh0Qg7gFmeV+0XbB/SCB5yV3bHerPiwp2BkGUl3lqxpKxdBpRpv8OBRNzs2b7LNgA==
X-Received: by 2002:a6b:4107:: with SMTP id n7mr5930139ioa.245.1575924944286;
        Mon, 09 Dec 2019 12:55:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:e809:: with SMTP id f9ls1567918ioh.0.gmail; Mon, 09 Dec
 2019 12:55:43 -0800 (PST)
X-Received: by 2002:a6b:7316:: with SMTP id e22mr22965133ioh.205.1575924943839;
        Mon, 09 Dec 2019 12:55:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575924943; cv=none;
        d=google.com; s=arc-20160816;
        b=pVwtPWlsIm9DPEfQrHkU08NjwBsFpsgYgSpEGXO2U/et8cf1j++T8TYT6CUc2DLkEA
         xcBiRxYO7CePhGxTF6dKaSFIS55/H5qEYpk8qoebKkEaungX0RUHad3oybP/7/IhI6tL
         XhTxszp+sYJgJl9ZIH8V19UmJYu0Y3CgVK/swMJPgH4gKKXUbqsRE8WiPIwycotzT/l9
         hD1G67kDbsIg2d9zdAuwtuVHt+yTcalc2Qx1g62SQfFdvEDbihee2GFC+HmcQLLzN8yg
         M3X6roxBJ4fqYXXX7mevrSZk0iTO1cqnIGx0vnLxMwsYbEo5gASYgrqlV+HwXtO61ruL
         M1hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=cADxJVnUoV3/CYs6mlZcytBGrKUT6v8F+9De0N+ZbQ4=;
        b=RiXB+au4B5yCxUzz9nicPkp2x/lN6QLYdCoe16uB7nEOe3kwr4pnyb573Em0mdCPrj
         Hxjut2xdIC4qwdJEb1BTzFCHIL+uA2nJ+4CvSoWWQagzq0jFdfTDMt8aizXQKLc+cbE+
         jQ0TmGqw/dXuz89a6ub0MwWFVrG/hV9s1Wbprr+OknSuZgWtdkgUs477m78iNlRo4kcy
         ijNiSRlOckYoz1IMm/Yv0xxJEWcnLTgaQsRjU9LFo/xBJ20MPZFzobzlIucRZhzqHciW
         tsCK+YpfKfiPfsxBrSlEtuVmbmn9iPzFvCY3zqyIvXVuqjMbCO4/TE3jip8PmMTkJRUc
         HxzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=G38QlEon;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id v3si64223ilq.0.2019.12.09.12.55.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Dec 2019 12:55:43 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id k25so7701493pgt.7
        for <clang-built-linux@googlegroups.com>; Mon, 09 Dec 2019 12:55:43 -0800 (PST)
X-Received: by 2002:a63:590e:: with SMTP id n14mr11564655pgb.10.1575924942967;
 Mon, 09 Dec 2019 12:55:42 -0800 (PST)
MIME-Version: 1.0
References: <20191209203855.25500-1-natechancellor@gmail.com>
In-Reply-To: <20191209203855.25500-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 9 Dec 2019 12:55:32 -0800
Message-ID: <CAKwvOdkYrXehgFPFPeOLy5KKsS96d59DHE6JH+aEn57-avVA3Q@mail.gmail.com>
Subject: Re: [PATCH] HID: core: Adjust indentation in hid_add_device
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Jiri Kosina <jkosina@suse.cz>, Benjamin Tissoires <benjamin.tissoires@redhat.com>, 
	linux-input@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=G38QlEon;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543
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

On Mon, Dec 9, 2019 at 12:39 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Clang warns:
>
> ../drivers/hid/hid-core.c:2378:3: warning: misleading indentation;
> statement is not part of the previous 'if' [-Wmisleading-indentation]
>          if (!hdev->ll_driver->raw_request) {
>          ^
> ../drivers/hid/hid-core.c:2372:2: note: previous statement is here
>         if (hid_ignore(hdev))
>         ^
> 1 warning generated.
>
> This warning occurs because there is a space after the tab on this line.
> Remove it so that the indentation is consistent with the Linux kernel
> coding style and clang no longer warns.
>
> Fixes: 3c86726cfe38 ("HID: make .raw_request mandatory")
> Link: https://github.com/ClangBuiltLinux/linux/issues/793
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Thanks for taking the time to track down proper fixes tags.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  drivers/hid/hid-core.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/hid/hid-core.c b/drivers/hid/hid-core.c
> index e0b241bd3070..9c7f03f23eca 100644
> --- a/drivers/hid/hid-core.c
> +++ b/drivers/hid/hid-core.c
> @@ -2375,10 +2375,10 @@ int hid_add_device(struct hid_device *hdev)
>         /*
>          * Check for the mandatory transport channel.
>          */
> -        if (!hdev->ll_driver->raw_request) {
> +       if (!hdev->ll_driver->raw_request) {
>                 hid_err(hdev, "transport driver missing .raw_request()\n");
>                 return -EINVAL;
> -        }
> +       }
>
>         /*
>          * Read the device report descriptor once and use as template
> --
> 2.24.0
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191209203855.25500-1-natechancellor%40gmail.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkYrXehgFPFPeOLy5KKsS96d59DHE6JH%2BaEn57-avVA3Q%40mail.gmail.com.
