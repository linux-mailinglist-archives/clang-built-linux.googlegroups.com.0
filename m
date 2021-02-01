Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBZ5U3WAAMGQEGRZW7FA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6186330A008
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Feb 2021 02:33:29 +0100 (CET)
Received: by mail-pl1-x63b.google.com with SMTP id d1sf8577589plh.13
        for <lists+clang-built-linux@lfdr.de>; Sun, 31 Jan 2021 17:33:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612143208; cv=pass;
        d=google.com; s=arc-20160816;
        b=rsc3/tC3z1Y8f5NziDMn8BdqmVQhbb8Pwdynv8rRu0Ufhztm7q6+tIyFpT5jirSAhj
         KIlQrSHWRysunI40xPmG6pGqH+Rsd3D9GBmT3Rw2dk9Y2U/JC5Gt2/pXB4R14G5lXihW
         aZ40YbAwQPb6rwOJAr7j5J/TIlTZ4oPwCIZtVYSsHujPny5Zve5gTV1Aa1zrHLvr08gS
         LErBOp94n3ceF4fFnBwJm6k4f3tD++JQgLKax1LeTO0ujhPsov5AfWuFhPiYYFlwUqg3
         ZoMbuXrQb1n98n7cGtRb0aNaW9ZPXowwYt2H7d3aDgSOIlERfF7VC1kCKJtzS0pfCRyX
         vLWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=pL2IS9+AIYxSs6LwhpTLGDqeo+/HwPJwgffAwzmEP5A=;
        b=bGTdslXRK3+dJ7jqN9PGcWrrq+qEbtBlRVJzDPmbWz5cSOKo0qcTR12q9+Rri1zUUu
         a53//HUFjndGd8eioJyUBDQQRNS9uM72GK5XcPZqM9OlZuvMhFv1Fe201hwURQ0Z1cnw
         nC8hmxm3SDi9N87wkTn5msP8YSFeJHhLBYEcXmvf6e7VwhcAN5nBW7mysp/tVodYRQC8
         EQzKeDD6qYD0bvASB0OaCGbqo2UQz9E98Sk/Nj/vt1guDa6ypUhESUvzJpsji2eiEB0V
         a9iDTF6GtMfbqFFLxKXc2nvig6pYQV0tYUJ3qx4X5ThzHtd6Bq6ssA+X1r3fMcuJHoFH
         l6Fg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=hsJzZlc9;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pL2IS9+AIYxSs6LwhpTLGDqeo+/HwPJwgffAwzmEP5A=;
        b=JlQMulpwxWtbsR/4XWAstbEJiU6zHYp/bFH00SpYIocUUlijm4VXKZTGU0cz1YtBjN
         3J5wlthJnUg0hYf/SFu7RYVdybyszn/7oAM+4l0PWdLxJFZ7SkyLWCAKJSZsjnLJoXGb
         WgZQTXqkTGqKC0zbcA/DaUKOjNCamMwe3P0wzIoFeLMIR4hKmJkeq/XR3C4oghC8A/Hq
         CMPOX4t+S1mFXNqgHsIUD8PN+9/BRo+3akCaftMHPUMhL6re8ehSRZNcKWdV2X5CpR9b
         ea3ltUbKJ7fwIFkIirMgB/9vAwTaVg0bVfQTtGpfraf4j/Cmo6Q77JMw9u0dPPOyuWJ5
         jcgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pL2IS9+AIYxSs6LwhpTLGDqeo+/HwPJwgffAwzmEP5A=;
        b=TkuUTzF1NrACgqpuiHjmaJfZ5IlyThWgW43+HunpgbkAueWdkzI2TBVHekVNYj42tg
         i+t4+hwGk4i0d6ma+6URlNmeHIbU3TN12uhMosKsfZp+1Y5lM6f/BYoXOPpmpg8dnDbn
         4ZUAfJDt7sEx1Wc4Voql60ptaH+l7mXFdyQnl/7W0KuQA/mesZgJqwFbzmkfj55lx31D
         Neb8+omUm5ku9mSIRKM8tBmcfgVwtDFKqbxRbi6SZ/sF28dQIs6PZ94STKCy0Q431Yu/
         wriTNjYj1tnu/pmvLJ99RLThSVvyfDwwdA+KKdxmffHnIkJqSy/XiEjaa2G3uGJwuTZE
         6xPg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531sEpRoWwELg+wXqBt85PvBpMTua3QVLt8h09fMgdfBm1qf6unb
	YeJ5ZN1ePlcVGOSqNKoYneQ=
X-Google-Smtp-Source: ABdhPJwaCcxCeWxIAOV/kj/q8/7A2SCFZLBW1CRhZDEx1THQ4ABqrc5NmFr1TQsfGnKkNvw/qINlrQ==
X-Received: by 2002:a17:90a:304:: with SMTP id 4mr4168032pje.126.1612143207932;
        Sun, 31 Jan 2021 17:33:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ba17:: with SMTP id s23ls7356093pjr.3.canary-gmail;
 Sun, 31 Jan 2021 17:33:27 -0800 (PST)
X-Received: by 2002:a17:902:a614:b029:e1:5b43:956a with SMTP id u20-20020a170902a614b02900e15b43956amr3065654plq.38.1612143207331;
        Sun, 31 Jan 2021 17:33:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612143207; cv=none;
        d=google.com; s=arc-20160816;
        b=qxG4QEXeP6cCsnbeIBjEfV4xz0NmQ/Gf4gcW481SOXAx6R7lkK5ei6WTl8J/+N3/uo
         bncbXTQZE9KpqYfJquttGQdxlAAxDyJZHk0EQJMkjghViUypdLB6lk3pIb3jQml/D+sw
         i0PJF/WYxOf+z4DE5pYrteeL4nwd/sZwMPvI/jHiIDBmlClQ5Sn63P2Kuaux22yM95xF
         Ndxvc2mpWjhH3mjZn79f7qFJ1eFx3Ucgqrgrpl2I+y2yAZ7ti63L8y8MLDhbotyMb5Wn
         6RISYC77I51T4ikyYr5+5DmE3m7kWAjbjBscLBTbrviwmDWUvSKRrerXElLNyFtOVNtI
         d68g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=g4PvqZzWG4zpxGnnkiNTYBSHMVkLcnXauLhWOIubAwk=;
        b=ERUY7v3F45phQ28RHysgyjt2qC0V2Ixffvt3upkB7la83XF7jN2mv/LyF6AuO0UvPU
         JunV7c0YDoC1WhwQrGlThZ4hbDnYIyLU1MpIC2Mn1dsQXWQGcv+MYxoA+dCz9WPXMmGw
         trIq5CV2ae+Xo44DBsUCO/onjmbiJcSpRXhOQBuOyxzQ0zoZStU2NFviAW3N8jN1Xz5B
         U3OmNfNDR4LbhPZHHxu6zFzsFv+1NATejmVv9Q+zFW906jSKFTx7m1bT0FrstHpzQqLY
         afGZwuh29zkonziJACfc1lN9o/E7uHL1QrcbifcA/Huh8M7L6QKhfb/yUlVW1ThKdFfL
         Z4zw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=hsJzZlc9;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c17si543197pjo.0.2021.01.31.17.33.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Jan 2021 17:33:27 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3FE0B64E2A;
	Mon,  1 Feb 2021 01:33:26 +0000 (UTC)
Date: Sun, 31 Jan 2021 18:33:24 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, linux-doc@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
	linux-spdx@vger.kernel.org
Subject: Re: [PATCH] scripts: switch some more scripts explicitly to Python 3
Message-ID: <20210201013324.GA2423231@localhost>
References: <20210201010819.655597-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210201010819.655597-1-masahiroy@kernel.org>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=hsJzZlc9;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Mon, Feb 01, 2021 at 10:08:18AM +0900, Masahiro Yamada wrote:
> For the same reason as commit 51839e29cb59 ("scripts: switch explicitly
> to Python 3"), switch some more scripts, which I tested and confirmed
> working on Python 3.
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

Acked-by: Nathan Chancellor <nathan@kernel.org>

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
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210201013324.GA2423231%40localhost.
