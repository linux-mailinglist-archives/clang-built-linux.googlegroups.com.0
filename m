Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBSWRU2AAMGQECNCGA2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D1452FEFEE
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 17:16:12 +0100 (CET)
Received: by mail-qt1-x840.google.com with SMTP id f5sf1785771qtf.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 08:16:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611245771; cv=pass;
        d=google.com; s=arc-20160816;
        b=bKPEOn6+WpG96eNal0RuNePnL6kWTHD6Xjm0GVi6ApjkPEMAlGdQcezh2qtntyKLlm
         ehprJTmPv2WwW/nusEZP20Wog3NZJ2AJlVig+l0dXGC+A4mAdv6Ntfqqp+8YDz6YuAvK
         Ab4oHGlCk8WZo9faNskW9icw5TvoUdDE4ZTl+OMH+2DHw5tzC67Cml/sb2AqpTsxmVAd
         65DPliKRozYOd2Vo86g6M2Z4y7yrmRKYQq9He0r9dNto9viA7hK46qS3YUWle0NivtAx
         l+kRqdqzVz5+tUQJ+l6wSna3TI8P6U+EmCprwoTWbdynLXVXnHM0frQH8LqkqmkEM+CA
         7fLQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=+Z+DZZce6si7LlHcxZEyNGtOQ/Q3dAfzseeTEJSWjxg=;
        b=TQBDeiOBb5t8fR0TVl7gkjRdXQGp5ozgBWJkuR3PgwqJM5o7FFKFfo9fOK4K/W33dt
         tyFVnfnzB/BfyJVdVBKb6U2+WBCIywgPAmeCTyfgfufGacPPQQOFAhmhaadSdP42TKQ/
         wuQxpXPoPfdF7+XaaEMAhq4EOqGIF34J0kAz0OgSACVxgfw7TRfwZQpOhRxix3PR93MI
         er8viQqLyN476FJm82Rc7jD9SHSlun8JBe3WufGtVuTYZGA3uRxdbvo6uaZBTm/vgA1G
         ymhZ24sHbrJsbDNzPsP/aMKpHW9ywvCTbommFIxb2F8C0+NfIz7vrRL1iOOOtLnE3FXQ
         VeQw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OFZX1TOc;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2a as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+Z+DZZce6si7LlHcxZEyNGtOQ/Q3dAfzseeTEJSWjxg=;
        b=GfkNCKK6doNaxzEO0H6LAJ/tffLBwrZ9zx6i2z4CxcYtVRqEx/dJLvSFPV0IMqB3jL
         yyxioVrl1wouoOkFOl0qmZU7bCUBPcXPWNFpXb+MHiYF5gxyk/UPwFzEodzzsogNeenH
         gEBl6Hz9wqhb3Qgs3OlRmYQzVI1tBEjWUPyLlZ+hv3xVFSTWtefD4Q3kuAtE4C5iB4pd
         SB4sL5UssvgJu8s1WYxYlWQe9aqC3FN9qyg3C39/ONg21yyjB7jEOiPdzXtdhFDZuluq
         Y/qFXN+wIZz6BMnov2avH6vx7TazjCz9l9Fm1/dldl/djnhi7QuEPUabUHSVGwiYFhhG
         +jLQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+Z+DZZce6si7LlHcxZEyNGtOQ/Q3dAfzseeTEJSWjxg=;
        b=i4mGpJFQJcHsJQkGuv4a2YONqWZwN3AflUHRO3y6qErgIP4P0yZxaUEWpAq/eyMN4e
         TcrzKhC89CCEI/zV1PYlwApjjBeI9x4mn6qQn02XAyXmv16lFqmxi73XGxhRmbXfen+h
         i06dc4oeKBPrRtMzgqLxRkhyAQrsieLpwBI2S6kux2e08lz2EWS1uagdWOmRs8lrj4ro
         b4EsUaxVU2it8B7i9jSimj9oXqeFcis9fJzwMXDF/FhqemBsvN0apJiLfRUjNq/HHf+6
         E4WkZTRlUQOd2RWWTkQP76ltpBd5kj7zYgyd1Zm3X2+F1jFSo95Vx/W1YZrBuY9cHEln
         41Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+Z+DZZce6si7LlHcxZEyNGtOQ/Q3dAfzseeTEJSWjxg=;
        b=dGtxKIjp9LxZEXVcnhqctPaavQQW2gj6QI94RpH3GwL1IdseE1rRULkV1srbJeKy78
         Q4s/Js+O3mtGkwU+VF8IIDlyrqSk/vUcMzkfjcVoef/9cwjkBMy03MJRexHZT9SQ1DOd
         KsZHL4o7+EpaGcO5oKTltd6ZBXrtvmML2QFoM6pE8rPEZqWW9Qee5S5AxZa6Y8dOaXL3
         aupn2pP7cv81smG2xkjNKR/HrK8QIwFuqCJSkD/s+WH1bMNd9VzX9j4+anr8+PUNQdA2
         gguLF7C38hoBs59/cJJR7KvJ9U0gi29DVoykMUi3XXYgJS06E2XRYBbiOHe05vP2R4cl
         XF0w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533PPPKQrkjaeMIqGVeyxM06w9wMX8cw+jocWzoF6fBBBdHhtgoW
	exn4f1tpRorja+n6nje55yE=
X-Google-Smtp-Source: ABdhPJxUWfVcswo5TsMC6yZiEXiPDfqWOmkbw+aw1o2Mfb4a6BmOJzS78tUboG1U9/yHbiTyhHirOw==
X-Received: by 2002:a37:2c42:: with SMTP id s63mr488863qkh.87.1611245771070;
        Thu, 21 Jan 2021 08:16:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5a04:: with SMTP id n4ls1082847qta.5.gmail; Thu, 21 Jan
 2021 08:16:09 -0800 (PST)
X-Received: by 2002:aed:2146:: with SMTP id 64mr342751qtc.296.1611245769870;
        Thu, 21 Jan 2021 08:16:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611245769; cv=none;
        d=google.com; s=arc-20160816;
        b=BgzENdCe9hJQFhp8CnZgUyvcjbQyJ4ZwzbL2HwMItWTR4ttY9//mx3N+NzTW9t3aRt
         /UZHTiQGsISjmDKfnM+Et8k914W5ofWBt6spkkb21OpU5DXLm4X4/5qyuOSRHAfsjz6B
         2EGEcbMm9OiZS0D6vq+X1/Znk7SBC22Xsca+YHh2/dl5tIJ8E3s/6niGpQfsu40yQsPQ
         05zQE8u6qEJO3PiZrslCtPtNzTOM4lLBXd4y1UJck3nbhBmXg+nW6JSB2HLME2LEJUNq
         WSl+Z0tg2gCAJ7Dv+uAaN1MPm4yhDPZr24k5a8yrRo8letwsCSdxZL3KSwITrx2dDRnM
         6mzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=a9iCtFUmnzGGIbS1P+ZeOeO6idkiYX7p0cUJy2173kY=;
        b=jcooiCl8Y8TrcAXtfH1+ooKTfIBkn4kEt4e2DAoTc2d8HuFGmZSnFBQapaZ7CsP5cc
         2EAAlk8jmJ7Bj9HYJpNBYU/s81tq7I6mLxOCyQ9+wjzaXrFCcnT4egm4kmZFDiHsoKZ2
         3DN/xIh5yBfXTQgSteTEvUh8XUREGZhkuxAafPYqEUKg/m1rkuSZfe9PofEirSRssVmD
         RPvKWXwVZRVFHwC/zYGjLdqE1LpFHLayLX9JVtHzUvR2bZ8wenhC1n9a7OJEF14CeSjI
         QU4ntgAo1DBuLb15g/htYf6r7QSVYHqeZPR9AtRKXz8cPlYR8GiW1qFImxgY9iMFkZGz
         1ePw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OFZX1TOc;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2a as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com. [2607:f8b0:4864:20::d2a])
        by gmr-mx.google.com with ESMTPS id j33si494256qtd.5.2021.01.21.08.16.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jan 2021 08:16:09 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2a as permitted sender) client-ip=2607:f8b0:4864:20::d2a;
Received: by mail-io1-xd2a.google.com with SMTP id n2so5042570iom.7
        for <clang-built-linux@googlegroups.com>; Thu, 21 Jan 2021 08:16:09 -0800 (PST)
X-Received: by 2002:a5e:9b06:: with SMTP id j6mr138100iok.171.1611245769353;
 Thu, 21 Jan 2021 08:16:09 -0800 (PST)
MIME-Version: 1.0
References: <20210121160115.4676-1-lukas.bulwahn@gmail.com>
In-Reply-To: <20210121160115.4676-1-lukas.bulwahn@gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 21 Jan 2021 17:15:56 +0100
Message-ID: <CA+icZUV3p+yQYXn=iVseNNQwUSvoMwztLxNDOFpdFb731kDOJg@mail.gmail.com>
Subject: Re: [PATCH] MAINTAINERS: adjust to clang-version.sh removal
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, linux-kbuild@vger.kernel.org, 
	Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Joe Perches <joe@perches.com>, 
	Ralf Ramsauer <ralf.ramsauer@oth-regensburg.de>, 
	Pia Eichinger <pia.eichinger@st.oth-regensburg.de>, kernel-janitors@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=OFZX1TOc;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2a
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Jan 21, 2021 at 5:01 PM Lukas Bulwahn <lukas.bulwahn@gmail.com> wrote:
>
> Commit 6c8ad4427f6e ("kbuild: check the minimum compiler version in
> Kconfig") removed ./scripts/clang-version.sh and moved its content to
> ./scripts/cc-version.sh.
>
> Since then, ./scripts/get_maintainer.pl --self-test=patterns complains:
>
>   warning: no file matches    F:    scripts/clang-version.sh
>
> The CLANG/LLVM BUILD SUPPORT section in MAINTAINERS intends to track
> changes in ./scripts/clang-version.sh; as the file is removed, track
> changes in ./scripts/cc-version.sh instead now.
>
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>

Good catch, Lukas.

As a tipp:
Next time you can pass '--subject-prefix="PATCH next-YYYYMMDD"' when
doing 'git format-patch ...' (or whatever you use to generate the
patch).

Cannot say if we can add a "Fixes:" tag with commit hash-id of
"kbuild: check the minimum compiler version in Kconfig" - this missed
that move.
Maybe Masahiro does a respin and can fold this into above commit?
That's not my decision.

Reviewed-by: Sedat Dilek <sedat.dilek@gmail.com>

- Sedat -

[1] https://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git/commit/?h=for-next&id=6c8ad4427f6ea306a1eee951d684a41f517b5986



> ---
> applies cleanly on next-20210121
>
> Masahiro-san, please pick this quick fix-up patch.
>
>  MAINTAINERS | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index e5d7cf38ec82..aafbea806a82 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -4355,8 +4355,8 @@ B:        https://github.com/ClangBuiltLinux/linux/issues
>  C:     irc://chat.freenode.net/clangbuiltlinux
>  F:     Documentation/kbuild/llvm.rst
>  F:     include/linux/compiler-clang.h
> +F:     scripts/cc-version.sh
>  F:     scripts/clang-tools/
> -F:     scripts/clang-version.sh
>  F:     scripts/lld-version.sh
>  K:     \b(?i:clang|llvm)\b
>
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210121160115.4676-1-lukas.bulwahn%40gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUV3p%2ByQYXn%3DiVseNNQwUSvoMwztLxNDOFpdFb731kDOJg%40mail.gmail.com.
