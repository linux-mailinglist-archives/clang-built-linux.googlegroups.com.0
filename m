Return-Path: <clang-built-linux+bncBDYJPJO25UGBB65ISX7AKGQE2JEHBPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD502C8EFE
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 21:22:20 +0100 (CET)
Received: by mail-io1-xd38.google.com with SMTP id l20sf6018236ioc.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 12:22:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606767739; cv=pass;
        d=google.com; s=arc-20160816;
        b=nvcUEnbiU/TkOLer8bKZyZHfj+PRV/x/y8ey1a7JrMy8e05tRHO1NUU2oW7kgLvqqu
         e7aXWA/HPIWPZlCd8+b8E3Bf+2khezEXrBEWGBXseMNNlIlil50QGBtb6OJklqt447do
         FE7+rBHYTgFg3b7Lc4L5YHL3rdCm8Mw6twiDsW2lgtqVUOTgHsPwpDzQnSmDsRwfAka3
         FqgCcKpuwPWPDOZZIb6N/roLX3yRH9oRMNhogNSR4b5oYrec7Ss7x4WYkb54bxcJ/JaZ
         2WtYcXxbhHQRlzzcmlIWN9mry+Mg3KHcXQuA+vvSm3xQtSoa6fCdGwDaULa3KnqVpVbQ
         n3lA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=vuajqQoqqW9KU7CWgKZj7j9IygrmHlANsLXEhOtd+bY=;
        b=sgdIjCf1LQKfpfRc+SAEsU6yA4kY46QwSdGXoWUAVqIHuddoOueIxssOINApzUvqNl
         /anQhP7v0IXhQHcEoc4apnaXsNHcdBfmWS5fOrOyYNBmi7+lpoHYFR6bSRYNFSCLVELa
         cLoMXK4AEdU/i9pMrFN19Evq17IdSCjMenyYq+59cDsFRHdl/vtLMGTzb8BWx6tikISa
         jszJhnHx8YG3QbYzfc1O3/9MGTkb6FARXHOMOrsHJZkg5prHWTOjGu9hi9zPZUZx+QeS
         rpFCuqYtPW8S6Mf3hPY1y/r1/jnXbqPq/ONtuFKZcmqiLvR6afnZTo9zUsMQU1d0/qot
         hQaw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hCYtJpAK;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vuajqQoqqW9KU7CWgKZj7j9IygrmHlANsLXEhOtd+bY=;
        b=XrSr/2+uHoppf5UXOgJNWvGyiwDW1pUpo49khmvXssbvtXb1AdRnFLwG1milxTknRb
         ecnVkIk2e4rTHWNcouT7TwSSucQE7mnnX8pnxtafUjdZDo26eQaK0eslNGPZynqrMC2f
         1BVkVg6N+dsJsA47mQeZ1QK7HT1lQDUe2iXJWlYVhi8yOHQd4jS5S3vRrmPjLozeAvJN
         yHEP6+kjvard97U0CrMuqSFrQVkpSCmgl7RUfT2Gg0JgMsi+iUt1Tqk00tKt7jljJonF
         1WI9cyCNZzCilaP2rSOJvYP5aiSw3TFXZWJfefDSNlGgQgrIvmk49pPQVK3cY1C73zi8
         BA0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vuajqQoqqW9KU7CWgKZj7j9IygrmHlANsLXEhOtd+bY=;
        b=brevuPkELfcPs2zwrhetE+hZm6HSGZstjlJJFbbDIALtfywyG3KUKNUwqL0DeqfTWC
         /CHr8CL3wL5E+ZqBAyTfyATK/rEyzZGQVTT6bagChvQgFuQoq5vGudFWFvPxJjGl4p+a
         +eo4CqTA/9KCWk/MGrkEWoBVi0OSQXQaNOX1crNSo5lwt+NPK3yN1t+izrKGc4MZ1hPj
         CKcEsNcm6yJFfXxcq0rqWXj/uicXDrVrg6WK7/t2+0hSpGF+IwdwhzY1u6MOJBFKEwHg
         W1y2Mq9e/x5gfqn/b9up4aHkn+uW3Zexeqw3V56xZ+jpg0Tv7zByQUQIS3tAZDBkUwGO
         0+4g==
X-Gm-Message-State: AOAM530Hz7OYo8e4hYitaxbz4Shw8Mp5WLKtPiAEmKVh8YE4xLvKJT0e
	u/1sXkX9FymW6alocSKhlEg=
X-Google-Smtp-Source: ABdhPJwqphYHw1py59vM2q3VvtsbCbYGsxLUXZPkk4A0gXBM2RnyV8mOdaScWd7SedPzeYLKBy3VQg==
X-Received: by 2002:a92:d690:: with SMTP id p16mr11657649iln.26.1606767739323;
        Mon, 30 Nov 2020 12:22:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:7404:: with SMTP id s4ls2125175iog.4.gmail; Mon, 30 Nov
 2020 12:22:18 -0800 (PST)
X-Received: by 2002:a6b:8fcb:: with SMTP id r194mr3658268iod.155.1606767738850;
        Mon, 30 Nov 2020 12:22:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606767738; cv=none;
        d=google.com; s=arc-20160816;
        b=AsxYsHEZ3kXZEZzvXZteHpcoASn8Yg8o4TS24bQmqIqGEfNABUNu4ZIIAdvU2wlTCq
         gxZskNXoLzCq664M2Rm13qcXFaVRFFoDcXjANymb86FXzjQXiDpr5UpDxA8NxiOg/7dd
         mYEGXsojM6RDW3kxtwZA6VV70gXGBbULmgYasABsCpOGCm8Z3Z05sZe0opEJc+koV12q
         F4crt1u2gAIlp1MQa1XwDs4pLGzP2Xk5PNSEMr3BxT4np4gYye+8eEND5O4pompb7c8w
         zo0I7cn5pSG6gToSiqnhTC5wr3lpvWwsREJCTZOrOGeHteyPymgNaihVpYT36jhHl8wv
         4DmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=PhqkesEyNsbnWI5IbqVSyafnBntjvSaAxrpkezcKIVU=;
        b=xsxRcU4xYfO2XKQPYUU4OsLMX4FCKb3RXGS8zYCFAz74xEGcsSrhBUcW0I7qbzCU3F
         Sm/IWMtjMwWD+Bf4fHUAPI48Z5u5Zjgw/ud/53WyJv12DsBpoeh8crajtpHREwrHr6fL
         FNF+p9fP2eKHnCaUi+qoO2ybP/QNnm0aR4tN5BDEJ0gjMUrkPsO7duqR0XQB4ZhbsFPM
         vEZOjYtHSKfdn5nezYLbv4Ak7m8AjMRwvUX1gpBI55E8HYas/dGbKqagb8uccnmeCPeY
         4+UAoqS4glkB9chtNTkw25NJ3NvV5jcqKO8uBZtLEtcGsFhtrUreeOYHLiaNkaWU3ach
         VERA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hCYtJpAK;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id a2si1120913ild.4.2020.11.30.12.22.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Nov 2020 12:22:18 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id t21so297129pjw.2
        for <clang-built-linux@googlegroups.com>; Mon, 30 Nov 2020 12:22:18 -0800 (PST)
X-Received: by 2002:a17:90a:dc16:: with SMTP id i22mr697324pjv.32.1606767738145;
 Mon, 30 Nov 2020 12:22:18 -0800 (PST)
MIME-Version: 1.0
References: <20201127083938.2666770-1-anders.roxell@linaro.org>
In-Reply-To: <20201127083938.2666770-1-anders.roxell@linaro.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 30 Nov 2020 12:22:07 -0800
Message-ID: <CAKwvOdkbPCaJO8c+Zj_BSwfkwcVuMQSFhnxj6PXGo5i86NQ_Zg@mail.gmail.com>
Subject: Re: [PATCH] mips: lib: uncached: fix uninitialized variable 'sp'
To: Anders Roxell <anders.roxell@linaro.org>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Nathan Chancellor <natechancellor@gmail.com>, 
	linux-mips@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=hCYtJpAK;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042
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

On Fri, Nov 27, 2020 at 12:39 AM Anders Roxell <anders.roxell@linaro.org> wrote:
>
> When building mips tinyconfig with clang the following warning show up:
>
> /tmp/arch/mips/lib/uncached.c:40:18: note: initialize the variable 'sp' to silence this warning
>         register long sp __asm__("$sp");
>                         ^
>                          = 0

Hi Anders, thank you for sending the patch. Do you have the full text
of the warning; it looks like only the note was included?

>
> Rework to make an explicit inline move.
>
> Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
> ---
>  arch/mips/lib/uncached.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/arch/mips/lib/uncached.c b/arch/mips/lib/uncached.c
> index 09d5deea747f..21a4b94a0558 100644
> --- a/arch/mips/lib/uncached.c
> +++ b/arch/mips/lib/uncached.c
> @@ -37,10 +37,11 @@
>   */
>  unsigned long run_uncached(void *func)
>  {
> -       register long sp __asm__("$sp");
>         register long ret __asm__("$2");
>         long lfunc = (long)func, ufunc;
>         long usp;
> +       long sp;
> +       asm ("move %0, $sp" : "=r" (sp));
>
>         if (sp >= (long)CKSEG0 && sp < (long)CKSEG2)
>                 usp = CKSEG1ADDR(sp);
> --
> 2.29.2
>


--
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkbPCaJO8c%2BZj_BSwfkwcVuMQSFhnxj6PXGo5i86NQ_Zg%40mail.gmail.com.
