Return-Path: <clang-built-linux+bncBDYJPJO25UGBB4GXVTYQKGQEGH2PI6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc37.google.com (mail-yw1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E39F148D18
	for <lists+clang-built-linux@lfdr.de>; Fri, 24 Jan 2020 18:40:02 +0100 (CET)
Received: by mail-yw1-xc37.google.com with SMTP id j185sf1855433ywf.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 24 Jan 2020 09:40:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579887601; cv=pass;
        d=google.com; s=arc-20160816;
        b=N+EPshv12vjuT0/qlS3Bvqa/8ESqjFFSg9SNhP/M+LuTPUhdmj16alKsDcV8bJzMSh
         TMBCOZeW7asVSsGy2Ib+/0RwZIzVCY1r9deTpbSL9N8o1rVZcTnwaSFRdHAPh6ymxnuL
         eb5yV1xqhqRpVxaoN/vBtFKP5oc/VMxlWiwkaOhYRrk/DIRngLoZPiyRjyEJrFASDYDM
         7ur20TKowlqZJvbOCVsj1gpA5wVhMZbN/wiDFhOrLDJDca2qNETszC/zC/fL0S0AWn8w
         N8kQf92WHi4OGCqbqmIOkOmedqGmuH2jKHQQAyaQcgjBvBD2xDFnmB2ZpOpIe5+JfnAx
         h6Rg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=zMR4psV2M5j5L2n9w3Cl8lol+RSQU/Zct77656W+Hig=;
        b=GDo4It9R6vX2nZlhONZNvl8gVPDBavU+IBVvJyeXpmrviHeEFBY0suvQgZ8VtpkF2i
         xgScgM1/fWQyJ1AgJ7cwz33XZucfrQtgH4YV8dKJcFSnontbqXb8eS8ATgKOgXigKBFc
         SZVj28jOTDiU5Uobt4Iao0rXTJrgiNu2P0zEdvAxRrn9fhOEPZwlXmx0MnG5ubQ7NQZn
         vDzikCn5OcG/ox2f2bG84viHXdrhWhTEbUsZNMw9ieRXGo3qEq5AvUJThAdXgWkHlvZh
         TTuxcGrZMGat1680o2ayp1ZZukLpMksbMfoc3pSE7rMEHN9Oa0Kb0ph7bne4IVtbT+2t
         Z+sg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Xr9b25sd;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zMR4psV2M5j5L2n9w3Cl8lol+RSQU/Zct77656W+Hig=;
        b=NCV6GHnKtPxQidFXLTb4HC+2wI5jkJPbmyqXoQHrAuXvVJskqh65V2e2H4Dvo46gWO
         dwTZwOdYlbSDKdxgUVGVEPe0WHLOy90ytEC8Aze9ax3x9GQ3ZLoEZQ5ceu4Y/c9aKCnw
         fDo0DSn9/yrOdzGElciTLjq5xeJRdKYMDIz9oa/bBMUfZWkhaHYnNqRjWD9a7FBnjDAZ
         bb8mDvTAPMWiOWegnAvA5PcbSkZR7/eYEZk88ap48tWLddRNZOL1DDb7aRl/OQ2zLQVJ
         a5ZOrFuN4hps2ygJK01fVlepDbRM1ITAt8mCL4VpjJvzy725ATbBrWPmniZe5mUgqPRI
         YExg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zMR4psV2M5j5L2n9w3Cl8lol+RSQU/Zct77656W+Hig=;
        b=eE50vjZ29oSH46xYBt6m+8zOtw0Uk/rsN6jXArSi07/S5t7ZOy2fCC3V2Z/vYn+sXI
         PXQRw6n2ejWQHvKls/U17opPr4/4Kl6fp1/xLdk66HViVwby/NNuefuGFVCTOY7IcpDM
         qOvkQKmEhHbGYmzJ+8GVhPcnbPKTgM+DrifMeRexyPK5+4BiNPKySKCwJEgkartwk/tb
         OIT0NMqZ/R3kX/KAqj92ZhTW9WG2/Ue27qFd24dhUUdH5XBgsHpDai+6KlRcudTatY+z
         FgiagD6QW6a1T2vXfvLexdMeuvcoizdWCVMS6Hz/ZxI7oLtgaGBFeUIxHx3hY/IeIH2q
         KAZw==
X-Gm-Message-State: APjAAAXM9eyrHAMLXDS0Aw5VdELCB3VtWWKFvWpoHeJF3jla9kboOWYF
	83WS21djF53Q9ouP6eQI6Qw=
X-Google-Smtp-Source: APXvYqwRoPxt/arD3GETLhp9PsrEz6D47jTj/1pGUh/IlV46YiN4RRRHnvXyy4XZ0ZpqEClVvicV9g==
X-Received: by 2002:a25:ca04:: with SMTP id a4mr3258403ybg.295.1579887601015;
        Fri, 24 Jan 2020 09:40:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:cfc1:: with SMTP id r184ls551206ywd.9.gmail; Fri, 24 Jan
 2020 09:40:00 -0800 (PST)
X-Received: by 2002:a0d:f804:: with SMTP id i4mr3063802ywf.508.1579887600625;
        Fri, 24 Jan 2020 09:40:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579887600; cv=none;
        d=google.com; s=arc-20160816;
        b=ONqTWgFJ40VJtdWdTrDsGMvQcJ7XdhLCVtCGKrPlaWtv3+ogdXsOpNzcUY4DJe3e2l
         /Fd0DNx/X1toDmFZ9KOOzhPAg3dT9munLeht9eH4s6Olg/ciHQrqsgfjQPpONxr6mOSp
         tZiTcO0Z5IaXUdCfPL3GJaew0gOGTseYCht3wteBt3C6fq5+x/qVubXulNalfh0kgDoh
         jYYuqTzeNBCLmbFGkdZg7pVO464FmK875oeDnWYNdKLBcF9T++Xq4QdYM1qMwRq1rnv4
         H1PQIGqmAkPggkB5YPL2a305+udZTbjr/LcAMCrDwPeB7UKJ+DuKQ1t5J2v5Z6Ko6ULM
         W39g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=8Fl9DtoEGdJPaF6wiMaulBg+k/QaiWHWReTuVYIV7lg=;
        b=kKHk6bTmZX9ynynosewzQ5PgZbwaOkcwPzRuXy1RXf2VHrNp5Q7z0exi3tSQbtrhSH
         GvE3BRFxVnfiQek6v+fhceqI2QrJ/9ZwmkdXwfkroZ3jgLnlm2M2NyNuuSdCLytINNu2
         e4sHbG7pl40aeCkdKX0GNpqWMojCvITjJLw5FKxC3Z5/+8yQBvNOpl7dtp6ITjXF9zs8
         1xGmSnx6cWV4ym1tc3cxhrGP/I7X2+8NH10lW1Dv9YyQpkXkOqIUGaY2G80Q3EtaH+XF
         lSLosSSxqSNjDae/IU8eRxIRJutauxjB/j+/1taqSK9ZtPa93BKHr/0svhhY/oodFPZu
         Xtwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Xr9b25sd;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id s131si337526ybc.0.2020.01.24.09.40.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Jan 2020 09:40:00 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id t6so1084069plj.5
        for <clang-built-linux@googlegroups.com>; Fri, 24 Jan 2020 09:40:00 -0800 (PST)
X-Received: by 2002:a17:902:6948:: with SMTP id k8mr4558881plt.223.1579887599337;
 Fri, 24 Jan 2020 09:39:59 -0800 (PST)
MIME-Version: 1.0
References: <20200124155750.33753-1-natechancellor@gmail.com>
In-Reply-To: <20200124155750.33753-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 24 Jan 2020 09:39:48 -0800
Message-ID: <CAKwvOd=R6NrqAvQWdu3yZHFNPVqAMO=verL6gRDGprMjCDPGcQ@mail.gmail.com>
Subject: Re: [PATCH] ASoC: rt1015: Remove unnecessary const
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Bard Liao <bardliao@realtek.com>, Oder Chiou <oder_chiou@realtek.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, alsa-devel@alsa-project.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Xr9b25sd;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642
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

On Fri, Jan 24, 2020 at 7:58 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Clang warns:
>
> ../sound/soc/codecs/rt1015.c:392:14: warning: duplicate 'const'
> declaration specifier [-Wduplicate-decl-specifier]
> static const SOC_ENUM_SINGLE_DECL(rt1015_boost_mode_enum, 0, 0,
>              ^
> ../include/sound/soc.h:355:2: note: expanded from macro
> 'SOC_ENUM_SINGLE_DECL'
>         SOC_ENUM_DOUBLE_DECL(name, xreg, xshift, xshift, xtexts)
>         ^
> ../include/sound/soc.h:352:2: note: expanded from macro
> 'SOC_ENUM_DOUBLE_DECL'
>         const struct soc_enum name = SOC_ENUM_DOUBLE(xreg, xshift_l, xshift_r, \
>         ^
> 1 warning generated.
>
> Remove the const after static to fix it.
>
> Fixes: df31007400c3 ("ASoC: rt1015: add rt1015 amplifier driver")
> Link: https://github.com/ClangBuiltLinux/linux/issues/845
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Thanks for the patch!

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  sound/soc/codecs/rt1015.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/sound/soc/codecs/rt1015.c b/sound/soc/codecs/rt1015.c
> index 4a9c5b54008f..6d490e2dbc25 100644
> --- a/sound/soc/codecs/rt1015.c
> +++ b/sound/soc/codecs/rt1015.c
> @@ -389,7 +389,7 @@ static const char * const rt1015_boost_mode[] = {
>         "Bypass", "Adaptive", "Fixed Adaptive"
>  };
>
> -static const SOC_ENUM_SINGLE_DECL(rt1015_boost_mode_enum, 0, 0,
> +static SOC_ENUM_SINGLE_DECL(rt1015_boost_mode_enum, 0, 0,
>         rt1015_boost_mode);
>
>  static int rt1015_boost_mode_get(struct snd_kcontrol *kcontrol,
> --

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DR6NrqAvQWdu3yZHFNPVqAMO%3DverL6gRDGprMjCDPGcQ%40mail.gmail.com.
