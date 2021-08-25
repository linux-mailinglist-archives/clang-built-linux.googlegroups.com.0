Return-Path: <clang-built-linux+bncBDYJPJO25UGBB27GTKEQMGQELE2DNDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 30E563F7D8D
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 23:17:32 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id v17-20020a2e48110000b02901b787efe665sf238115lja.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 14:17:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629926251; cv=pass;
        d=google.com; s=arc-20160816;
        b=eiBpt5fbkfUc4ddc0BOUgedKjJRWnaHuCYyYKe0o/qbz5wboo4jFcss8LMADAui7Xq
         f5OlFARn91ZMnol21Rs9vxMDsUPT0MVo7bgCQ3XPEaBkvzTxN2tYkylwh2KVpxjaM7cQ
         DQO46B6pr5eZn8/J9pBdVjijiQFBXu8grA8BPQWvz1yctNsmQyW41gRfsGQrilEsszkk
         3BaYTeTN+soVsPsp0Nu+M71NjBT1YQtPmnmC/hg3Z9Vsje4y3rWTPM/IjxV3MXVuRloq
         XLjYwxAi6RdFV5PFI5fw3xIe4/oKxr3Wqkrv0g0INrlr+Q3zfn1ceKq8mYnrrS7d48Wa
         U4UA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=havKCLocpRfGOusi8fuiC31BL1x0yRrbAgdb1n3v8/Y=;
        b=jWAkz7bxhrJ7rOPA4bnjgpEixorl5krqSWp9UO472hJsWLz0eHuEX1a+vaRiOjyEPQ
         MVxQ+fa1zplwRMTXwb7oIYEwM70twYHIDSOM0QdKcK/6ZdLhUVRBXz+CSgTKu15Eoak1
         yqqDUZPku2MvdY7F3W05kxXCRfv84OEKE/tvvp6EvpqyVMFClXftb75t4Ab07ZvpTyvz
         jltgZe1WPWNKowxlREv6G8FH00qW1zmXmWRyEow1XDnVkUzlEYqqoNKLIVB3R2O5P4rM
         qvhPDgJsdg6UVwrDOAVOCt6+8yqjZerYodOGFMGgHYdN9KSO1S0mWs6ojnLsK+kNywdf
         QEAA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Twvb5JwG;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=havKCLocpRfGOusi8fuiC31BL1x0yRrbAgdb1n3v8/Y=;
        b=WqjVocA4wtCcZCtl1a2TcQyImZkt8qa1vczpiHfBCE3LwrSE87N+rO2wFfMEGNk3hs
         8LQBtdWJOPicZROu+Y8CkKpOFhxXYCaE7DHHaw6JcRdi0vQ2Pyoj6cSSjJWedlpCACYK
         4QVAeaT9C1v754kgmP5tmi2M/7kngL0lz25NQ9CwsfOtQbUuncNHzqfCU/GyXA7k2AOY
         oCdP5wbvnYafqtjhzap4aTjgGRaaei89bxNdLfGiSmFEUyzcsO/9XZAy4vrP/bGEDBEx
         2qXTETOAzZxo6K8N85YiIBVt/62n+vG24xQDEPW2QAWtND8A6BZWYAKhP799890hn/sE
         21yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=havKCLocpRfGOusi8fuiC31BL1x0yRrbAgdb1n3v8/Y=;
        b=YM2jP2ly6La0vbLkhqRGZWS5bIZSeE+rn2OVklSU6e3aik+NfMDrstQr3wGJkLNI37
         n5vkUlxQ3VOGHPmCR7eBfPcO31uQ59elPMA+0y9xkEBbw4+4/Epf3jeiM1pTK4CFoPfF
         UId/EbR/Rb7g4q7bwtpHjtN1QFik9c5RYrTNziQ6hYYTBh/iYIAmdy6wlcMcHA2d8F0w
         vH/7D64jhrOoW0Fdj07yLziKQ5pjNrWbi1mfDKWBYNw/m10UbqBDs7edoNQFcI3gDqI1
         RyX7sSGSh8q6tGtg8HMXdwX/XltwpMBQIJE9Vn6REJkj4LSKuwTrW8aye3brUGTnlAT8
         xPdw==
X-Gm-Message-State: AOAM531cB+EA3j7wQqz16SA2V1HLlrEAKRg2FaUqRPvMtfdTc2syX/Il
	2zBC61kGIOKmaTCiJdXY4D8=
X-Google-Smtp-Source: ABdhPJxIwdshl1uQvbYpLlo62Wc6J8E10CbRnUTBvb4j9IDYhZWkl6gMGZvXylfFIYnZvhxVrENfyA==
X-Received: by 2002:ac2:424f:: with SMTP id m15mr122916lfl.126.1629926251685;
        Wed, 25 Aug 2021 14:17:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:4146:: with SMTP id c6ls2498445lfi.2.gmail; Wed, 25 Aug
 2021 14:17:30 -0700 (PDT)
X-Received: by 2002:a19:ac04:: with SMTP id g4mr109480lfc.176.1629926250677;
        Wed, 25 Aug 2021 14:17:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629926250; cv=none;
        d=google.com; s=arc-20160816;
        b=reAfhYFiaD9Gxwq2yLncwriXqJdBo1vMHDDjwp+PEzEpemtpAUg+jrrSNW14qHc4Xo
         eZOxiO3ZLyDuR7FH5dG6DlUxYqoALJehvWSYSjwGgyTzTODAQ3MaspWzzpp8msQc7pOr
         xG6qVJfamFTu81NwRpWeW+tUMbX0sgLfRZxkYvlty7a1HAu/DtKKJ1ifE7oNmtVVNXY4
         OytRB4qC65bqA3qKMhGaApJ1MrGIdPM52MmdxoVbtKz/UlVZ2z0nvkHQ+rhOl0h1X/dQ
         TLXctNyt9OhS/OtECcWmdxt0gi7hpVdcCJxPh9dbEE5B9rzIg7PqpDxRDWhcuIgxxPy9
         Voow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=cAlJBNQn16JjUkHYdCuHXibhY5cJqMeU9e15H1wH+kQ=;
        b=O6Z3LqI78Lvc83jHERmxD/N5UbadAMpY4xwYIJy173l6kkS77nREPO1w5XYNl10Pk+
         Hi3EqctF8Z4BJMk/hEgVeAG3lqKnbhEuZYj0v2YaVyg7zA6lBgRmLjwixFWTNAxgS/fx
         ZXYqlLVaQ32U5orYuBstvEzj6I2evtSyYFDyLOZZjmKWn2o0M9N8jar3/6mWc6oZ7Rrf
         yMUYb7IVWmx4axeAFyunjx+QqJr+ZHiPGkBu7spbZlC+FRIqJajd1ACAO0d+0v06/Trv
         x21dXdc45lCkp/0aVMXWYrxoa4rAhbLUmEkClTpCqc2ktE6T6HH824SmaVcRbqPbOgB1
         8Dzg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Twvb5JwG;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com. [2a00:1450:4864:20::135])
        by gmr-mx.google.com with ESMTPS id g5si37191lfj.3.2021.08.25.14.17.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Aug 2021 14:17:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135 as permitted sender) client-ip=2a00:1450:4864:20::135;
Received: by mail-lf1-x135.google.com with SMTP id g13so1714832lfj.12
        for <clang-built-linux@googlegroups.com>; Wed, 25 Aug 2021 14:17:30 -0700 (PDT)
X-Received: by 2002:a19:5f04:: with SMTP id t4mr88603lfb.297.1629926250176;
 Wed, 25 Aug 2021 14:17:30 -0700 (PDT)
MIME-Version: 1.0
References: <20210818081118.1667663-1-keescook@chromium.org> <20210818081118.1667663-6-keescook@chromium.org>
In-Reply-To: <20210818081118.1667663-6-keescook@chromium.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 25 Aug 2021 14:17:18 -0700
Message-ID: <CAKwvOd=bcs5W6eEDXGn5ROR2EuMiSp_2e6sLFxak=KK6yLWcvA@mail.gmail.com>
Subject: Re: [PATCH 5/5] Makefile: Enable -Wzero-length-bounds
To: Kees Cook <keescook@chromium.org>
Cc: linux-kernel@vger.kernel.org, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	Masahiro Yamada <masahiroy@kernel.org>, linux-kbuild@vger.kernel.org, 
	clang-built-linux@googlegroups.com, linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Twvb5JwG;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135
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

On Wed, Aug 18, 2021 at 1:11 AM Kees Cook <keescook@chromium.org> wrote:
>
> With all known internal zero-length accesses fixed, it is possible to
> enable -Wzero-length-bounds globally. Since this is included by default
> in -Warray-bounds, we just need to stop disabling it.
>
> Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>
> Cc: Arnd Bergmann <arnd@arndb.de>
> Cc: Masahiro Yamada <masahiroy@kernel.org>
> Cc: linux-kbuild@vger.kernel.org
> Signed-off-by: Kees Cook <keescook@chromium.org>

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  Makefile | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/Makefile b/Makefile
> index af22b83cede7..3b6fb740584e 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -1071,7 +1071,6 @@ KBUILD_CFLAGS += -Wno-pointer-sign
>  KBUILD_CFLAGS += $(call cc-disable-warning, stringop-truncation)
>
>  # We'll want to enable this eventually, but it's not going away for 5.7 at least
> -KBUILD_CFLAGS += $(call cc-disable-warning, zero-length-bounds)
>  KBUILD_CFLAGS += $(call cc-disable-warning, stringop-overflow)
>
>  # Another good warning that we'll want to enable eventually
> --

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Dbcs5W6eEDXGn5ROR2EuMiSp_2e6sLFxak%3DKK6yLWcvA%40mail.gmail.com.
