Return-Path: <clang-built-linux+bncBDRZHGH43YJRBSGJXX3QKGQEOU67RII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id B0D09202AD5
	for <lists+clang-built-linux@lfdr.de>; Sun, 21 Jun 2020 15:46:48 +0200 (CEST)
Received: by mail-wm1-x33f.google.com with SMTP id s134sf3386813wme.6
        for <lists+clang-built-linux@lfdr.de>; Sun, 21 Jun 2020 06:46:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592747208; cv=pass;
        d=google.com; s=arc-20160816;
        b=vr4VfGYNfdVEPQVlpinxzK2NyJrHfOBkS9Dyw7e9BHfpXqSQe8jc1MP6aRDyxNziDU
         jKUhS3kuKkNHAASrwI1y8a8a4NrUiITznhTuKZNuT3FNJBW5hC8+N27kV6L24inAwOIF
         AS9fnPYss94FTxwp9/LiQ1vJr6t6a/oQj8RVXp5sjCB33n949U+MhaaGTaHxfAzxwmaf
         Wq8iQQ3wjle7UOofMxCPrZ10CmUk5eYo2nTRxmGIusz5KNTxpoEm8AZ6FAdjWqb5H17U
         44v6/NrIfcvKKU/yXEc462bjiJTORUnn9pL5f72R3zcZjXnU1Tok538JYUD1hrxuB1O7
         Q+5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=HfcruyU+46mfR3xD6MGS4sPm3OutjS3WOv35IXrOvcU=;
        b=CUI47Xs6nN9/LU9lT/DqHFJXGWCUPuwbhxBqPYTiSCMmz1bzOFajbmA3kCzYNCyc/c
         Hv9G2RCcigUBlKTLQ51n/7NpZHwQvpv4VJ4OPOKEdT8aIyG3FgjUPKru25N9RUTjIWog
         ZEks/JHJ9mOj8ej/q6nn4RMSwy2v9IZWcrw84ZYMdKcxgk+BJbAIOj59Zo5nUwlHt5Wr
         UwW3OktllnelURh9K8uUi1V2A7KAu3PNQE2p3zCvkJ62K1/ejbfLHPfK3SmPESSPAOds
         QWv4/9ebkxRVCipybpag1tKN8lLjxZsDlWzCGmEr9AkBapsoXT9bsUmZ6G+bgHZfBja1
         eOzw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=odvbi0Lp;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HfcruyU+46mfR3xD6MGS4sPm3OutjS3WOv35IXrOvcU=;
        b=AVvDHsFXP9g7DuavPLDKVF6RBwhSEElzyb6wIlCJlpZ15LmBJ2tWk0i5iQvC9Bto6L
         L82d6lbPnmipkDeic+AO7FZvXWpkWY5L1FbvzpgA4k+OkwbSZ3kp4iwnsBGw7uTb6BJN
         zWuMF6GZFhscLV9ShP27Av1KvzztcoBob9RcKNuytKcMpFd0shWbi4B807zdYhbecSZh
         2z+t8ok4hTy4wxbABi8KVVL2X+n807zdZocx0sz12el20896jJ1+5r5UrgQs5ZL9v8OQ
         WSrXBKg3RsfU7P6sbYmv81F7/EB3NPdJ7y6okFrbVoE+OgxjYOpWrDVrKsmdipOYp3F7
         3WrQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HfcruyU+46mfR3xD6MGS4sPm3OutjS3WOv35IXrOvcU=;
        b=LNrz9G/BcqWqDV9BcvKMkmQ8m4CD7hhSptDE3SG9GyDxruN/3iBpQGT+sV6krih8QL
         VJJwT7GRtvXwqCr4+uUEmyz2CiM71chF5eTrr/QeWHhH9tuk/i7yg2ykH0uYEhMhXQFV
         CdzOLb9fyX+KfqfZ+te/8dokmM+re8qRmUrf5mctSM4kzZn3os3WcGILqUHWY0OsZsra
         FlwjryHITkb3blDdq7R04mI9A+6kU3W219K00zBlA62kruWp8gBsYJT49BKtHppCSlHn
         sM9eRdPAepr0wKthyyJnV+s/zkudNVyXgge5/9vQAFGNYc8FDyiMHSSz6CKZtlwh3O/Q
         t05Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HfcruyU+46mfR3xD6MGS4sPm3OutjS3WOv35IXrOvcU=;
        b=GVV6jzKaBJle8QQDarz8vqAR25xupyRE7yttlKs2Z1xsy7IxTWUx+Zsb9hF5tjWtZV
         T6DcDVJmf4ie9GO9nIpjKYhoNYR0kRyePmiBXG7Obw7/MjJxAHMry50LCtDYYpBF4X8C
         s6GAxZC7Mt0LWEBNqTOb23eQIvRvXHTyu2jbexa5Z3mn3lNEVuTdX8nKIPigAGlr6Tqa
         70YY4AsiV6eLCVtFAxRUuIkMtg/De1KoifWsqp2Xdbp53MUmioAsMBjXyOxbW6N86Ms0
         a09SbYa0ZozG9OyqmxD7oZJZpCO00zlJFxTUWMOZQaA0NiOWqpHsffFXVbvknD1dg+cs
         6cFg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5332gDdrT8hRoOY8FSZYVO6v6mFiH16CtqGGg8qEtIn0bPLOWEC+
	fgYvQQrN4Ydmm/4OjfjVV7I=
X-Google-Smtp-Source: ABdhPJxV48HEiIEitDL2ySLAZTvqoS9O+Uv4/UsfgfWxK6ZXrI/i8XUa9guTaZ4zfn590JJ5M3OcgA==
X-Received: by 2002:a05:6000:108d:: with SMTP id y13mr14881161wrw.180.1592747208437;
        Sun, 21 Jun 2020 06:46:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:2885:: with SMTP id o127ls2063528wmo.0.canary-gmail;
 Sun, 21 Jun 2020 06:46:47 -0700 (PDT)
X-Received: by 2002:a7b:c385:: with SMTP id s5mr14290734wmj.121.1592747207910;
        Sun, 21 Jun 2020 06:46:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592747207; cv=none;
        d=google.com; s=arc-20160816;
        b=KMp2+LO5wVUHrYizgvRKgnwCh8RUBFK0VMma0m2+d9R3QHpcBSH7RB+vDSaMBIMvui
         aTVxkW4b2bsFRQ1WVWswvMWFsnoSRGsmgIKkwZg40Wjj6a0qryt+LiDcm269Tr1A+TqO
         fjjsxlDmKKo+AsY/lVn2fT9ix/O0VfQaGBxAHuCzVYavmL3LpSd8jUAVdUOMCnUXaQcz
         YTjTfrNmMOkZRsxbU0Oa69d7pScnK/Pt/c/S/qKpXyGt+ITPAzW/Fh5ImvywKl0xs/2H
         JLYv3t8vp1Eaq6Znsd8nl5zRao5a3kVtYFXTR05slWeQ7UeMWYK5kSsP27WBP8wO46ro
         DlPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3j0kIvck3iasI2UkkkK/3yKkwAOt22SqCzg0IxsgEdw=;
        b=gbbXUXrfnuQD0X93MZuccCO0pOqHwYKKRi2I4EgVFJOEzinG/7UjyOYOanN7F42KWG
         mEiRDg//foZGR8i1kAEa07HXwg1Hbj5rRzvdoRb2fdgo2qQofKbZ8zJygTMCX4jC+q4s
         l5P3wp8+OhTedIJGDYPCgQBTldCdv5arSCJrZDzmwuq2i1Ql4HfA9U2G8QCq2d/E5ayw
         IJQ4icW4lOWY86S4WxJ84O+nqdBaxbQGOpbmcpqi10VghdEDpXrBzBpF1t2deuTjulVx
         HPbe07GDoTjHLVgZn7U24w1ElK4tnytUJdiVOIlzIO5avIMUD5hGbr2dbUPqgoPXHf/1
         lg1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=odvbi0Lp;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com. [2a00:1450:4864:20::141])
        by gmr-mx.google.com with ESMTPS id s130si493325wme.2.2020.06.21.06.46.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 21 Jun 2020 06:46:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) client-ip=2a00:1450:4864:20::141;
Received: by mail-lf1-x141.google.com with SMTP id y13so8112513lfe.9
        for <clang-built-linux@googlegroups.com>; Sun, 21 Jun 2020 06:46:47 -0700 (PDT)
X-Received: by 2002:a05:6512:31c5:: with SMTP id j5mr7312609lfe.26.1592747207435;
 Sun, 21 Jun 2020 06:46:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200621133630.46435-1-grandmaster@al2klimov.de>
In-Reply-To: <20200621133630.46435-1-grandmaster@al2klimov.de>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Sun, 21 Jun 2020 15:46:36 +0200
Message-ID: <CANiq72kA==S-G481VHx2qrKkJmaVK7ZOuYmin4xVr3XKB8x8ug@mail.gmail.com>
Subject: Re: [PATCH] Replace HTTP links with HTTPS ones: Documentation/process
To: "Alexander A. Klimov" <grandmaster@al2klimov.de>
Cc: Jonathan Corbet <corbet@lwn.net>, Randy Dunlap <rdunlap@infradead.org>, 
	Tony Fischetti <tony.fischetti@gmail.com>, 
	Chris Packham <chris.packham@alliedtelesis.co.nz>, 
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	"Jason A. Donenfeld" <Jason@zx2c4.com>, Arnd Bergmann <arnd@arndb.de>, 
	Andrew Morton <akpm@linux-foundation.org>, Borislav Petkov <bp@suse.de>, Will Deacon <will@kernel.org>, 
	"Chang S. Bae" <chang.seok.bae@intel.com>, Joe Perches <joe@perches.com>, 
	Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>, Kees Cook <keescook@chromium.org>, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Jacob Huisman <jacobhuisman@kernelthusiast.com>, 
	Federico Vaga <federico.vaga@vaga.pv.it>, =?UTF-8?Q?Jonathan_Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>, 
	Konstantin Ryabitsev <konstantin@linuxfoundation.org>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=odvbi0Lp;       spf=pass
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

Hi Alexander,

On Sun, Jun 21, 2020 at 3:37 PM Alexander A. Klimov
<grandmaster@al2klimov.de> wrote:
>
> Rationale:
> Reduces attack surface on kernel devs opening the links for MITM
> as HTTPS traffic is much harder to manipulate.
>
> Deterministic algorithm:
> For each file:
>   If not .svg:
>     For each line:
>       If doesn't contain `\bxmlns\b`:
>         For each link, `\bhttp://[^# \t\r\n]*(?:\w|/)`:
>           If both the HTTP and HTTPS versions
>           return 200 OK and serve the same content:
>             Replace HTTP with HTTPS.
>
> Signed-off-by: Alexander A. Klimov <grandmaster@al2klimov.de>
> ---

Looks fine, although it would be nice to have a link to the discussion
(using a `Link: ` line to `lore.kernel.org`). Also having the script
in the kernel would be nice for future re-runs (e.g. you could add it
as a first patch in the series).

Other than that:

Acked-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72kA%3D%3DS-G481VHx2qrKkJmaVK7ZOuYmin4xVr3XKB8x8ug%40mail.gmail.com.
