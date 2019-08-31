Return-Path: <clang-built-linux+bncBDRZHGH43YJRB6FWVDVQKGQEHVGCAGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 43D53A42F6
	for <lists+clang-built-linux@lfdr.de>; Sat, 31 Aug 2019 09:02:17 +0200 (CEST)
Received: by mail-wm1-x337.google.com with SMTP id r21sf4315748wme.5
        for <lists+clang-built-linux@lfdr.de>; Sat, 31 Aug 2019 00:02:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567234937; cv=pass;
        d=google.com; s=arc-20160816;
        b=tINlwA3FY5TAq0L+GEI+Npic+nvuyMWfbgbjYESu1frO8m2I4HkEarOLLhZ2hdEhA7
         JdAWc6bnT7EA/2UtqvirrBP5rBYfm2dMxM7TA04uZZe5Ti0A23nP5F2yxHXg9fESmvWj
         S74+rMqvXnUUEVnkoJvIGAsBZYfP7eSHz9jkLZetypQl+01YIEWDMfI5bpqjrpCk7nVX
         OyqvSbtGmEIzRi7obIl46oLJBrqhERRvNv4hxmMAcL6uzrql1cu6Zu3mwM4pfPpGAZh0
         MWOgTPxXTXCm6woO/lfsHjz2ZsAu0qogosxp7H11t95uiUS7jdfVopnXfzPms5X343f3
         QAQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=6AcGgONEsc0XWqbS7EvmU4DoLsnW/0y5SaAHhTyErX4=;
        b=ec5AKFQoU9UZV1sKGL9uRR7R0WXZvkBrYQEndnArEdGOb4DZ+8TIeiKnTgs2QmH0Pk
         tMi3+LwNrWC+YX+HFe+iY3HCnLhD6JiwAJ7qQ4S17y+049Vt4A2F9exlz/JYU5aBscoy
         ccjnfqB3hG2bStgahxPLQaIPgUa4l2YyjQZYdVSoroMDtyz4zL5Wp9sbUT7hY0FXe6Oe
         2/CVJG+6ok5XOP6If0/AKo+Qupw+L2u8fDcGsVEvLm5nNCBtKMxKgNv6siCKtqwOpJ68
         Lxg4YlPGis0o7zS4U2CN4BS3nU4oXe0HgyknPMk9Ephvxfe605iMJ5MeYCVnoOITwj+v
         N7EQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jp9tm+Kp;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6AcGgONEsc0XWqbS7EvmU4DoLsnW/0y5SaAHhTyErX4=;
        b=pXw/0ki4QRhQsiqyf/GGMHAKxgdS/ZfOMWcVjjbxLnjXtqXrSiEthnn6g0dxlAs/OS
         7N448ZZFDzM+CQ2zzKNvTw6mq2U40trtIg28JDtbUPvnSilpF1/nm1w8nOr0jwIJEr1s
         QEEHjDE4jSHIAEb9KbIcLZCykxJaFRD4E65GibVmqXh67uAqDc6MRJM9PMiqV2wtkXCI
         kwFenoZyplqb/Uycyw+YRiYwA6X06317mvEC5n7+sLGk6E6eCSjnwmIdhp3dhsdaUNWE
         dp2AVVuUptbtmM6Ng2/mywSeu77A50H1njsIt9KhCoDp9cCYf0L6uIvPJ6zWxcoTcYUE
         4LsQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6AcGgONEsc0XWqbS7EvmU4DoLsnW/0y5SaAHhTyErX4=;
        b=WR18Ui+Kz0WKDry6OaNTihTM0wLIpO2kbZy+2sp+LFIa0bInrDjt+82jbBz7wD9ayS
         tfLBla4D/8Jj/rhO+yLZ0mk0ibokFxwVhMhYB21Bq5MVKFCr6GxIln8JSDsGthYawCxm
         cQtiUuk15cXyBmnwDS9WrjrgzXxuAvGnG3yuQA3SLoga358k3Ow7OMwIaukJYuH5RxWt
         94hQVEXDnQbqsEWt3p1s9C/kZfAF5tO7OO61i3MS8BvLoN5fgxzTkZdPvhjjXELJ3Zx/
         /e1wFMBDnmrgyAvtoZdTvSw1PTG0VOQzorn4glexnIkIQI339eSNdJwUx75y9CmBIdIO
         9vHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6AcGgONEsc0XWqbS7EvmU4DoLsnW/0y5SaAHhTyErX4=;
        b=KGjrf9fwpeBlmvJ+9Ebu25oS6Uu3Gqn9Tg5wcyhyndawaFatxQGey23iWIZ+kJH6XO
         rmoCfAqtrqAPfDyoDuq8bWj9Tqg2YvFSOjnT0VSxKXU+ou8NPvGPO2baMKeXrijGKbMF
         1tYACTAjexklgxKezi7Ra0fj5U8MNaW3WFDmcSwW5fdEFR3sCrT6EQP6JbuowRWTSa8b
         R9UxADPoLuqyi+w/NlkU12iflc3RQhvVdsbxxYRFRKJ0W/WxwPeBzhvpnL4wk9NP7LnD
         AVx1kiKFTbGBZ/MvJutkgY2MjUw1dMsB76dA7ZMsqGgaQXK4gvrM0vGX+LQbMCQ2EEZc
         9Ftw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXN0Td7EGbCj3t94PoLTqNJj3IhP/eMPCW/dyjogk5YWdh5Pi1O
	4jwfj9tFi2kS7Tspd9bzcCM=
X-Google-Smtp-Source: APXvYqzbldznNynXMgyAeTJ995YWFE0wi5sMZBfVQwCHw95hnbOlCXAhvcNmb9PU7hWuXEcrRb0NeQ==
X-Received: by 2002:a1c:a015:: with SMTP id j21mr2666354wme.141.1567234936918;
        Sat, 31 Aug 2019 00:02:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:514b:: with SMTP id u11ls2613932wrt.8.gmail; Sat, 31 Aug
 2019 00:02:16 -0700 (PDT)
X-Received: by 2002:a05:6000:cb:: with SMTP id q11mr5106724wrx.50.1567234936391;
        Sat, 31 Aug 2019 00:02:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567234936; cv=none;
        d=google.com; s=arc-20160816;
        b=AJp2fwstFWjKsX8xqYgfN/N/n/1WZR7b/rnSRXuzh4kJATFDguzKdTcUv3XwMltZX6
         IVpK3vXKWq7qkMOGhft/96Y5XZhrNmy6CslVqxBAJZ8u5BMquMJH9mlEV5gApnLg0K9w
         n0Off2pHtghKhh/+8pkjrDpiy+7rVuyy/2vLVxgdymIp6RavCLlezbvka2ci3KhpXpgn
         sHWVMMGL1y+H4s66Bw689HLj5p/wzGpeWbfGxzANbikV1ttNdDvTFhs6weSwrPBacNWb
         716Eetww2WtYwGVbFw/lluc66FcnrpiGfdkHEblC+uh589iPBd47gLgz+InMQnHEzNcX
         LRoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=BbEil1PHHGNsnFuRIRiobHI97i2Pp0iIHzaiuj3CnoY=;
        b=hvn2CyGfqMzsJWS47z7mkSBn0skrLZfoEUnFqUNpHnWHluG7nRDtOaOkf6MPOmHIEe
         xcqf+sK8IaRpxTb4SscgIwBZaSf9aMNdzPoNAwPz9L9ZM7gwjXhYjauakk1/wg6MK4VZ
         jJszo5JZHOOQHPsyg0COYn6OdNwe3w+R7ZjV3Nm+qVnl+I9qQtPZ9Klq5+VK155uYdl/
         1zUMmiTs6eZ/BAq9i2ogYlHhtntiiVipry2IgjLKL3Q6xOxOvNYOqdevQROgMGNrJwce
         sN+A+Bd6JSx5T5GNNzF28E8TIKI/ZCS1rBbaTyXHlA3MmaU//Jl/7XfqJ+aYbhhPzfFc
         m6sA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jp9tm+Kp;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com. [2a00:1450:4864:20::141])
        by gmr-mx.google.com with ESMTPS id s194si515491wme.2.2019.08.31.00.02.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Aug 2019 00:02:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) client-ip=2a00:1450:4864:20::141;
Received: by mail-lf1-x141.google.com with SMTP id g9so6976927lfb.0
        for <clang-built-linux@googlegroups.com>; Sat, 31 Aug 2019 00:02:16 -0700 (PDT)
X-Received: by 2002:a19:428f:: with SMTP id p137mr11862296lfa.149.1567234935907;
 Sat, 31 Aug 2019 00:02:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190829181231.5920-1-yamada.masahiro@socionext.com>
In-Reply-To: <20190829181231.5920-1-yamada.masahiro@socionext.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Sat, 31 Aug 2019 09:02:04 +0200
Message-ID: <CANiq72neaWYEONu0Ww0enP2nU_KMCJuL5g0tzhgA0itCv-XpVg@mail.gmail.com>
Subject: Re: [PATCH v2] kbuild: refactor scripts/Makefile.extrawarn
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Sedat Dilek <sedat.dilek@gmail.com>, Michal Marek <michal.lkml@markovi.net>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=jp9tm+Kp;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Aug 29, 2019 at 8:13 PM Masahiro Yamada
<yamada.masahiro@socionext.com> wrote:
>
> +# W=1 - warnings that may be relevant and does not occur too often

s/does/do/

Acked-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72neaWYEONu0Ww0enP2nU_KMCJuL5g0tzhgA0itCv-XpVg%40mail.gmail.com.
