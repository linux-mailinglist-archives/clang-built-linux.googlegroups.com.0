Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQUQ4GAAMGQEH6D7BNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id B81EA30AF36
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Feb 2021 19:28:19 +0100 (CET)
Received: by mail-oo1-xc38.google.com with SMTP id p5sf2073092oot.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Feb 2021 10:28:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612204098; cv=pass;
        d=google.com; s=arc-20160816;
        b=mcpG0Jw7vdqywbsYrxrmK3+S2c6IyFNiDv/FJsa6/BBtgDHWjY0UaLdL8LkGtjhoy5
         eYc9AtQMtZEfSRaSUCjkURbzQAcTbsChjzgfTH3O0ZkF+9elp8zvVUS0ZOFEzFLN4V5m
         cY9JbrS1Apuia0hjNQvM+lCK+mC0GUKf7n1mAZAQRihlak2DNguHF+nq7qywZVk2KcTl
         CbH6S913UbK0Ktc5R/ZkMgQMJi5AXdeWIAuj7MjofOhfsCFAolClqQ26ti5lIva2MMGG
         yTu6jJBQYSFsN8X5uHnmvWEc0KsC9gudfVGzcQ9TYawNY4S1HijXLA6r9Bytfx6FiTNW
         BJpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=e2OeZavyWidl1RFqF6RMczsIFMNkJB8fkRySHR0zE5A=;
        b=kruG1sAV+mF10w8xw0IfACnOnpKY+ENS2pYcz9dAYIvIlhfx0FRJHgWIiyXqTDohZ/
         l1QpQF7jSS1bKs7VDLLc6WCQoY5dI6GgdIksXHY+C6yPTdd5nnekePYy2ggOIi5SRlcc
         JRcFs6KmoXoXk8GY7CORmkDuaLfWARne+pIVfRkiGxM5R/FlufCgJsvevmf5ZfFm6Qs0
         KgpZtpYOCvYngRn3Mhs+0uqCiyjCuxZg0CcmnwdzQhCcopbUHWkd4/dRMMGNT6nEjwYo
         sAgtt6xM7I5b88Je6UfYExvEiZdzEOrQWbPjyhpJhT1qAwjEqsRmUVIMMZOsVi6WIBj6
         evuA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=n7LNoaNu;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e2OeZavyWidl1RFqF6RMczsIFMNkJB8fkRySHR0zE5A=;
        b=bA3Qo+whaovMnLwlOM1Foyc3IL9QbZG6EJYLxRui14jiWG1AXv5SouL59dO4G+Umvi
         rb7i/TRzabsnGGdvieDWJH8ur4NlFdNwpEcaavd3MUiX3rOKPKF8ciiZbx3pETc8Sv5N
         Xn6I6UBwokx7rcV8bWbPploYTxSueLGWndGWOKCYN5aubSZscJffX634+c26/JAeMIsu
         MQi+lVUt+wKac001a7I1x95J1payjTOz1xqXItZqM8TMzMA5mJhtCPfg6V9b1UMk66KH
         bR6put8lBtMtaZdAvYK2SjSZIZDJFCbZAnqrUw0CGWWHjZT/7MgRQ+Wc1UJOLRvhq57q
         jGmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e2OeZavyWidl1RFqF6RMczsIFMNkJB8fkRySHR0zE5A=;
        b=kfDI5IVuQe2tvr3CDjx+smvVJ1S+t3tAlLg2RdJCVGNgtnaSFsrXnuh1QJ3KmRClcA
         /1ViXXrfyN8g89dWO+rswuzj8XtK/3//ZVJQvZBMzpCZvhfCfNERstrGKji6Rhg0hY+S
         NOQiyIm4KBjMe2hswqPyXjOEz9LXMCMUWTQCDGgWoN3Z9v1X3yhZ/IESI5wj9+Mq7f3I
         JxekV7PeESX3o6YkmGfBMKY4WncC73aqWCbWH6uS6sND+DGfsX2DSfUenXfJ8vHDUwjb
         xtscxAg3w5oeSiBgmFTlBgj+HznSOhvzjlZmNFAJSI5tHyC1H447TB6+spXAMGLFJJz3
         ymoQ==
X-Gm-Message-State: AOAM531dFVrywdKHOCpHOFuKaB68UyCivSo8sNQbSRZYzKTpqj9Vc/dv
	zCmYJvL+CjUV+KKZCdFemjQ=
X-Google-Smtp-Source: ABdhPJyt3QOaKLWikVWOSseB+HpfUSIEB8e0Pc+G7CTH0o7BKj+RHOYEtNo/jxu8ryCUr7jTAa+jWw==
X-Received: by 2002:aca:3b06:: with SMTP id i6mr118202oia.81.1612204098533;
        Mon, 01 Feb 2021 10:28:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:3c5:: with SMTP id f63ls4209039otf.6.gmail; Mon, 01 Feb
 2021 10:28:18 -0800 (PST)
X-Received: by 2002:a05:6830:4006:: with SMTP id h6mr12208465ots.33.1612204098122;
        Mon, 01 Feb 2021 10:28:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612204098; cv=none;
        d=google.com; s=arc-20160816;
        b=tbSQtWXV5RZZNIl6eWjHpXarjjQau2jZkfN1Pjj8gHOdFmYWguwFlcfgfB9itu/f0A
         3wBWO4JCx/M7qfiGa6yAEmbri1BZI0O5cRU3xw3MdsfClFI+1AzuaV8DOzthKArY/4j/
         x9m4n1Itm4cUCVorwA9LDv19EU3G7w8oqrHMysMD3JqLB4vpr1nMBJrsAl8hXvGeb0TE
         nVHybvSRSaR781ZrKmYl0DLVAce5NssLqoMB72Ms07NXCXovzDwf2R7gYWz5N6AtKvFI
         dsoWDyeEIF+ZCU2Opa/+qraRgMneEmPx1pSyCvFf0zSgaYUZXJLKPyuuxAVwMdum8SJR
         W4IA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ZpTMPQ2QiuaE7YgK9D97So9gGS45ZWVWJvJLwPy7gVE=;
        b=W3i1OESq4WIIJsINboQi8xIiYybhLtSqGKTkN+OaqnUT18qC7+mhIUnTNPpOhVwXec
         bzxCVzSL6u7E1A6o34aV+rq35HlZDxh2YMuwpTpa3nP6GYcB03ZI1eaS8g8L+kkwI4rI
         BTFV/Aq+9djw6fr/YqdmK2rnT5dLM/vkiC2eso0COpK3KWAJB8KM7AEf488yFqBU02YA
         o9vYta5BZPoDhFad42bHg9PPXvlOQU7COFv5Xzo8+MLAtVdQBeH4gv0dMZ+uklhxrzzf
         0yyRoR/lLL1P49KIiQv2/8NDf6cfXy7L2tOXupMH+ItXxn4EiPkZcSewWLxFEHhOyUxs
         LGyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=n7LNoaNu;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com. [2607:f8b0:4864:20::531])
        by gmr-mx.google.com with ESMTPS id r27si1255428oth.2.2021.02.01.10.28.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Feb 2021 10:28:18 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::531 as permitted sender) client-ip=2607:f8b0:4864:20::531;
Received: by mail-pg1-x531.google.com with SMTP id c132so12664880pga.3
        for <clang-built-linux@googlegroups.com>; Mon, 01 Feb 2021 10:28:18 -0800 (PST)
X-Received: by 2002:a62:7896:0:b029:1b6:7319:52a7 with SMTP id
 t144-20020a6278960000b02901b6731952a7mr17982053pfc.30.1612204097451; Mon, 01
 Feb 2021 10:28:17 -0800 (PST)
MIME-Version: 1.0
References: <20210201010819.655597-1-masahiroy@kernel.org>
In-Reply-To: <20210201010819.655597-1-masahiroy@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 1 Feb 2021 10:28:06 -0800
Message-ID: <CAKwvOdnECGDFe=n6ms0Aj7FB0sN7ktZyk4dyVvV0UTgPvpuWpA@mail.gmail.com>
Subject: Re: [PATCH] scripts: switch some more scripts explicitly to Python 3
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Thomas Gleixner <tglx@linutronix.de>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	linux-spdx@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=n7LNoaNu;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::531
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

On Sun, Jan 31, 2021 at 5:08 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> For the same reason as commit 51839e29cb59 ("scripts: switch explicitly
> to Python 3"), switch some more scripts, which I tested and confirmed
> working on Python 3.
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

Thanks for the patch. It's time to move on from Python 2.

It looks like there's already a patch in -next for scripts/spdxcheck.py.
("spdxcheck.py: Use Python 3") by Bert Vermeulen.
https://lore.kernel.org/r/20210121085412.265400-1-bert@biot.com

What about:
scripts/tracing/draw_functrace.py
scripts/show_delta
scripts/jobserver-exec

Or do those need additional source level changes?

> ---
>
>  scripts/clang-tools/gen_compile_commands.py | 2 +-
>  scripts/clang-tools/run-clang-tools.py      | 2 +-
>  scripts/spdxcheck.py                        | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/scripts/clang-tools/gen_compile_commands.py b/scripts/clang-tools/gen_compile_commands.py
> index 19963708bcf8..8ddb5d099029 100755
> --- a/scripts/clang-tools/gen_compile_commands.py
> +++ b/scripts/clang-tools/gen_compile_commands.py
> @@ -1,4 +1,4 @@
> -#!/usr/bin/env python
> +#!/usr/bin/env python3
>  # SPDX-License-Identifier: GPL-2.0
>  #
>  # Copyright (C) Google LLC, 2018
> diff --git a/scripts/clang-tools/run-clang-tools.py b/scripts/clang-tools/run-clang-tools.py
> index fa7655c7cec0..f754415af398 100755
> --- a/scripts/clang-tools/run-clang-tools.py
> +++ b/scripts/clang-tools/run-clang-tools.py
> @@ -1,4 +1,4 @@
> -#!/usr/bin/env python
> +#!/usr/bin/env python3
>  # SPDX-License-Identifier: GPL-2.0
>  #
>  # Copyright (C) Google LLC, 2020
> diff --git a/scripts/spdxcheck.py b/scripts/spdxcheck.py
> index bc87200f9c7c..cbdb5c83c08f 100755
> --- a/scripts/spdxcheck.py
> +++ b/scripts/spdxcheck.py
> @@ -1,4 +1,4 @@
> -#!/usr/bin/env python
> +#!/usr/bin/env python3
>  # SPDX-License-Identifier: GPL-2.0
>  # Copyright Thomas Gleixner <tglx@linutronix.de>
>
> --
> 2.27.0
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnECGDFe%3Dn6ms0Aj7FB0sN7ktZyk4dyVvV0UTgPvpuWpA%40mail.gmail.com.
