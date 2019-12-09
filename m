Return-Path: <clang-built-linux+bncBDYJPJO25UGBBM7WXLXQKGQEA5RJZ3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id A88AB117856
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Dec 2019 22:23:00 +0100 (CET)
Received: by mail-pg1-x53c.google.com with SMTP id l13sf9328003pgt.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Dec 2019 13:23:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575926579; cv=pass;
        d=google.com; s=arc-20160816;
        b=jji61XgweOtcJ4SrtypFdHXLHaXqoybYY8oWi/83avgiTeG6UK/NjKltQVs/QXimri
         /zWox7XoLRZYyd2SI2Z5UQ7UgGnkJHPtSbynej96XKj7BysBAAUl8lni3aLPPx4W8x3M
         4CivB4RCfE9DvXtyWwqKFbielNdjD/s9oCIvuVtOB/sde5q1hcZ77YqF/OXWQx64O787
         OI6Vvl+TuSR1jFcWowTNpdrn5lCtiVyuN0HjkTpGVEC7B1ai3iiPOnr/vRpLl1uFPgCv
         0sBYxZAk4pEstq6aKHxa7EmPPM8l8dpTb2TuKSSc7MXdZ1q/P8AnUVfYvavuxZKPCmrC
         Ddzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=UkDQVSEZedT8hxE9+rZE6zIdI+kAw5gEmqvt9klL5Uk=;
        b=WE9PjZS3ThqS0C1j/lQWYbQE9SrBrK8ouSlFO3zb8B5uuoiqOoL14rV04Hzjq8k+lp
         2jAE7RNhA1KPCQAnO0+Oz2itEJ7zZwIWxKN32WDE9JsJldSkR+eKNCcjBIX2eR3rKUfx
         iYp4ZwQfcj5+IsaFmYrurxPqqdkUAPhi747MQz0GaeGM1G3VhYHdMorta09ZhnWbIwNt
         Th/56g0rtpAQJ+plKwrhyVlAgdTkVgieoiz7qh/bZWIa11UKbmlFExyZhuKKip8nvKHG
         O/vVJm4pZ0/V4xrkUSPJDB1i8iToY5+Nl8ftMEcgAZdJYnsDeO8/R+XvwkvfUpNH7u7q
         W9Qw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tIfUwUlu;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UkDQVSEZedT8hxE9+rZE6zIdI+kAw5gEmqvt9klL5Uk=;
        b=I+zTGYyOBT8tvnWsu2c34tuEpdNVOVRg5FnQVNQt2Wv3tQ4nN/Wpz838GL7ZMoHGKY
         /K0TCtINtJHa+xxnatw9BkbsCBThGRGt7mPcjXDKLWSRQgYqAcyxoGIsvwT6uX1epQFK
         vCu2P0RVS1NjbQiO56k+bnG6l62KHmuaCLQWhi62eWXEDlQQB/+Log+CvQNFb3VD1Vgz
         +g9uwsgBfJ8qRl4Y0FzCb6gW3iFutfN/ttWxYIakwHrjCKKvaArbADkAD5QRg6MrQbsv
         SCoXJmDBLhNXGQfHEtGEYOnhGsbuOqPZAhC0I2l5znIpCBc6kt/myDWyKEUhwG44L2+2
         7w9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UkDQVSEZedT8hxE9+rZE6zIdI+kAw5gEmqvt9klL5Uk=;
        b=f33CVMzCTCgdPhfrWcZLwEcQmdmJrd95/S3biQrUmltzmxj6jAdhZ2L8UCvy3UgmKp
         dqnQloPzebFLq8HYL/P42QFGrgWpwDfolz+cup78t9SK3ju0ImwvBA7Q6x6+O8dTxgzz
         wIGodhOn3CFKScY/i8n2cN2a3JJvvRTaKTIWpsUWwhA6DD6l4p4VOrObhcQXvlvE8ttH
         VQivCb9ce5QWuS96+BQuyYR/GZkmxEw1y6hk9mF/Uz64oP8qyJNAAO9YZxyTjNxk2EAq
         0hAkxWGoYeLHV77EXPBASwdQxUGibbtmvBGedh2BmEOTSwyUbzt6XnnIvPTgRYP63rXf
         y3nQ==
X-Gm-Message-State: APjAAAWOspskYaO2+G6OrS1HhMT9MGhdNqn3nsGlRZAEIK3tGXsVdrCv
	z8psHY+bR2oMRpHTepMASuA=
X-Google-Smtp-Source: APXvYqwFOydRCAkbMuIfNljbK3/2EPTV4w91wZY8aSjJbTwPtV3EOim/l16pAxuEqeJDtnx7iNWe5g==
X-Received: by 2002:a17:90a:2351:: with SMTP id f75mr1228792pje.133.1575926579201;
        Mon, 09 Dec 2019 13:22:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:e701:: with SMTP id s1ls3866412pfh.6.gmail; Mon, 09 Dec
 2019 13:22:58 -0800 (PST)
X-Received: by 2002:a63:2cc9:: with SMTP id s192mr20411300pgs.396.1575926578672;
        Mon, 09 Dec 2019 13:22:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575926578; cv=none;
        d=google.com; s=arc-20160816;
        b=G3ylrxWo7cmc/ZsdmJX4W6NzOrn8wUNdcrp2jBP6IpTBQrh9TUeWHUM//ZOeK/RJC3
         jEwuXAgWECVZqVqxKNw0s27up4iedZzIgyUdeBZSxDhL+101sI7s27J3plKOaSD3lfj3
         KJXBEDeJ4LT6yVwHlgN3oq+oOGR8cXffS8CZ+OzSPzR0QRj60RF4Cza6vESgUouAqJ1g
         DyiumdC0A4QTO8g0aGQutCiP24ZigP+MsKnJa3c5yBXfOywPmOfY92rB5pMPH6CrWRX5
         ZiKlrsnCI5vhvIm3IazpQ4LzM2tIJ+0dr6bqJxp3KKN5CY8DzRZe1ayKU1D/RMb56Wgl
         Z6TQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ZYKN4XMxSrLNdiW1K9zMIVb1AY7QEckrYyQGFO3gO7U=;
        b=mmp/ZtUUl54TKVdtC3H/I5jk1VUABIEEA2gf2jCXB8oF+DF1lEEdGdInGIVoxjpTxP
         PCbPXljlLgXAZY3iOzXcyO/5rUjYaz2bb7PY1wTC4BczMA4t5AFJ2b7tIMeiNLe5TOfm
         1/hhYU31HNxaEzVEbKqBA8z8SMTQcFUYYg7RDmcRtwoIZlz6x1N5wTbNAZcuNsLyoEZI
         0ps+M2dnnOtposcrTaeNVdnH1m8ByMz6XSxZb3ZLUSBF6x8Mhd/DuH1MMIsByKCv3Y3o
         d0WxrspqfPL5QgTXTmRcPbjsTiw/8SkoFTCyznDZFKk4rR5u2v1bEROFUBEfTlIt31F6
         lfxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tIfUwUlu;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id d14si40005pfo.4.2019.12.09.13.22.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Dec 2019 13:22:58 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id x13so6314482plr.9
        for <clang-built-linux@googlegroups.com>; Mon, 09 Dec 2019 13:22:58 -0800 (PST)
X-Received: by 2002:a17:902:8b86:: with SMTP id ay6mr18228675plb.223.1575926577921;
 Mon, 09 Dec 2019 13:22:57 -0800 (PST)
MIME-Version: 1.0
References: <20191209211623.44166-1-natechancellor@gmail.com>
In-Reply-To: <20191209211623.44166-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 9 Dec 2019 13:22:46 -0800
Message-ID: <CAKwvOd=UgY8+w9MVjJa-xpZ-08K9zrn79226otp2=TOCFT6MnQ@mail.gmail.com>
Subject: Re: [PATCH] net: tulip: Adjust indentation in {dmfe,uli526x}_init_module
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: "David S. Miller" <davem@davemloft.net>, Network Development <netdev@vger.kernel.org>, 
	linux-parisc@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=tIfUwUlu;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
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

On Mon, Dec 9, 2019 at 1:16 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Clang warns:
>
> ../drivers/net/ethernet/dec/tulip/uli526x.c:1812:3: warning: misleading
> indentation; statement is not part of the previous 'if'
> [-Wmisleading-indentation]
>         switch (mode) {
>         ^
> ../drivers/net/ethernet/dec/tulip/uli526x.c:1809:2: note: previous
> statement is here
>         if (cr6set)
>         ^
> 1 warning generated.
>
> ../drivers/net/ethernet/dec/tulip/dmfe.c:2217:3: warning: misleading
> indentation; statement is not part of the previous 'if'
> [-Wmisleading-indentation]
>         switch(mode) {
>         ^
> ../drivers/net/ethernet/dec/tulip/dmfe.c:2214:2: note: previous
> statement is here
>         if (cr6set)
>         ^
> 1 warning generated.
>
> This warning occurs because there is a space before the tab on these
> lines. Remove them so that the indentation is consistent with the Linux
> kernel coding style and clang no longer warns.
>
> While we are here, adjust the default block in dmfe_init_module to have
> a proper break between the label and assignment and add a space between
> the switch and opening parentheses to avoid a checkpatch warning.
>
> Fixes: e1c3e5014040 ("[PATCH] initialisation cleanup for ULI526x-net-driver")
> Link: https://github.com/ClangBuiltLinux/linux/issues/795
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

/^ \t
in vim turns up a few more cases that I think should be fixed (in both files)

> ---
>  drivers/net/ethernet/dec/tulip/dmfe.c    | 7 ++++---
>  drivers/net/ethernet/dec/tulip/uli526x.c | 4 ++--
>  2 files changed, 6 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/net/ethernet/dec/tulip/dmfe.c b/drivers/net/ethernet/dec/tulip/dmfe.c
> index 0efdbd1a4a6f..32d470d4122a 100644
> --- a/drivers/net/ethernet/dec/tulip/dmfe.c
> +++ b/drivers/net/ethernet/dec/tulip/dmfe.c
> @@ -2214,15 +2214,16 @@ static int __init dmfe_init_module(void)
>         if (cr6set)
>                 dmfe_cr6_user_set = cr6set;
>
> -       switch(mode) {
> -       case DMFE_10MHF:
> +       switch (mode) {
> +       case DMFE_10MHF:
>         case DMFE_100MHF:
>         case DMFE_10MFD:
>         case DMFE_100MFD:
>         case DMFE_1M_HPNA:
>                 dmfe_media_mode = mode;
>                 break;
> -       default:dmfe_media_mode = DMFE_AUTO;
> +       default:
> +               dmfe_media_mode = DMFE_AUTO;
>                 break;
>         }
>
> diff --git a/drivers/net/ethernet/dec/tulip/uli526x.c b/drivers/net/ethernet/dec/tulip/uli526x.c
> index b1f30b194300..117ffe08800d 100644
> --- a/drivers/net/ethernet/dec/tulip/uli526x.c
> +++ b/drivers/net/ethernet/dec/tulip/uli526x.c
> @@ -1809,8 +1809,8 @@ static int __init uli526x_init_module(void)
>         if (cr6set)
>                 uli526x_cr6_user_set = cr6set;
>
> -       switch (mode) {
> -       case ULI526X_10MHF:
> +       switch (mode) {
> +       case ULI526X_10MHF:
>         case ULI526X_100MHF:
>         case ULI526X_10MFD:
>         case ULI526X_100MFD:
> --
> 2.24.0
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191209211623.44166-1-natechancellor%40gmail.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DUgY8%2Bw9MVjJa-xpZ-08K9zrn79226otp2%3DTOCFT6MnQ%40mail.gmail.com.
