Return-Path: <clang-built-linux+bncBDRZHGH43YJRBIU3T37AKGQEOTB32PQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 195222CBD4C
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Dec 2020 13:50:44 +0100 (CET)
Received: by mail-pl1-x63a.google.com with SMTP id b4sf970692plr.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Dec 2020 04:50:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606913442; cv=pass;
        d=google.com; s=arc-20160816;
        b=QrQnIPsFn6Ot3h4yaLj77xAKemVjr4LzInvd+OLc8b2iAg4w7WhHnnIns2taT31UCv
         fSRZZf38n9+NPHL4g/F/o05hACzU4GXwRgqSp6Xg//Jkpmh1/eFOkDX6aeKi8M1MA+Jh
         t2c389HXx41GInRVWceeRcQy25k0L7Afm+/pAiQ1nEQWaw528M0FPUBg5agb+uDI15Y2
         yjtpxX9IhBsobdD9MFNohhvadk+uoOWa+t6DSpCyVQkGU0RQgLq66Wmw+fm/i+9Jyumq
         ffdkBlf2Hb6jRh7XQKjEvjtjhUdohguqZm1iQGKmOeQWSD0/ulHjBmyhiNnvJQ9EcpnL
         Mw3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=IagAcy0MIggmC7KEzGhEhl9B2rtgXkUMcmMnONQhG2o=;
        b=oC/GHF2rJg94sLts3Rq0sB20kdWA741i7nBdZ7yqWi1I9IeKUp1AJLOVhJZCBqRfb0
         I2IAzgDXtIHlcEUv4jQ5yCc8gidJKlyK4BVq0PWjt0a7HyKWEeCSBNFL88q2MJmzkgqb
         Ej8yGNwG/c6b+bnQUqFL6sh4qPGOm6+TDIXYqV/PJEFwfKZdkkZJIRby5tmI/4EIQ+sM
         oj/Gt4c2vF927LcQkQuD96MMEwcmiBbDr9+KaMu/xXmaEoq/2+uuZbUAUqp8DWxOIY6k
         AwU7ScjE0IsbU04NTtB2BcnAsOIOGDLU/xSN6n6XckLmYahhkQPervtxdBZMVh9P9++N
         tGVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Pz5K1LSq;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b41 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IagAcy0MIggmC7KEzGhEhl9B2rtgXkUMcmMnONQhG2o=;
        b=ZEWffDKES54Z6S75fxr/7qcinrdu97kEsfjdJ94c0OD2A53kB65gM+OqR+E308W7RZ
         bbB+dEPr7n3M6M69JBUJD2z4S5/hfRUdHLtqWyMRZqV42a7TUDCsBEioThaNWeZVEgDZ
         zIA2uN8lEXQ26GQfv9MHDjthUhCAu4jVynu3Hnctumogm6Upq9ywUq1zr1XQ1DRoQ0fT
         I9GRdJtk501LP0zGEllTk5CAiUyDp4UPm0NAnIFSImqOs9/yMU+NXBCRJ+GO9AUpgTUG
         e/G/jlHl69/l28G9nGTPwJA/zlo1mwa+NMT5hHMXDOOK16lYWRDKXnOiNVT+CyZTO97H
         CGmA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IagAcy0MIggmC7KEzGhEhl9B2rtgXkUMcmMnONQhG2o=;
        b=pxpMg3XPlNhSPM3lXlf2IQ0Fmoj78MOGAfojCE0mJuTNwlOOzoZPbiwmOtJBJ/ZsQ5
         2tOKMmz71Mjn/xmBL4voRbqfglmXqk5Ge0o2g3eOESX8GIe7fxbeg/9uAGyERVveILOt
         pJ7Yse7wjl7qdjbmf14RpUZIgvBUmEHkAR9D3/sOxqxdiPqTNMlj40tDS4AeAkS2oLaJ
         BseZrYjJRvqwzHgVckQZaUNSVpM1hG7mhvRZt4PmCHsmbu5yCWNKcXDEkSZSYulSJcZc
         kGbF0ijp1oTdn+o3jGhcb4ULivaaBNZAM0yO9ZBEV7Tgpat6kkMtYs+mSUX2+PUa4hF7
         o4Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IagAcy0MIggmC7KEzGhEhl9B2rtgXkUMcmMnONQhG2o=;
        b=sk31PsA2WQ2clfOJEGcFYHaPOkcyzYhpojKTwjFVp1I4moIqRa5xAwGhkoPnZxqKNA
         OyMKtmsYzsA3p2/reNTDWDh74ugc4bknVzCwwCCup4n1gSA89A+t3OlVZuVrbWv9SIwU
         Ua4fXGqa9tpJDkGstbUGwTO0bandQGrh42PDnaYBIRhYJneGNdXEQbct0YH6EPpCW8iN
         btTL3c1yghFiwHASxoLN1Kc693FaNiPBKUfR3exA4db7PRqrMzk4H5IanRLSZh7FUUYD
         h0irojDXoz1vpo3vFYz3AL1NGQcPlPc192m8aZ8nbUOYTNKRCFFVypNsJx8iVrbeU9Ei
         lt2A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5331k8ci9wOTXXRZOhnzyqVsqZZyUNwyB1lWzMRrH9oOVnIgT+4e
	U2tNxC4ikVVr7OBlojSC83k=
X-Google-Smtp-Source: ABdhPJwnqveK1zx26peJiuGkDUKb6rx37SfA1RhU7ElNwEjXqyDJudqAx7q+CWqw8gR3JzFBWnZp1Q==
X-Received: by 2002:a17:90a:5315:: with SMTP id x21mr2263191pjh.119.1606913442621;
        Wed, 02 Dec 2020 04:50:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7745:: with SMTP id s66ls772253pfc.0.gmail; Wed, 02 Dec
 2020 04:50:42 -0800 (PST)
X-Received: by 2002:aa7:9888:0:b029:18b:a9e2:dc7a with SMTP id r8-20020aa798880000b029018ba9e2dc7amr2376860pfl.67.1606913441950;
        Wed, 02 Dec 2020 04:50:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606913441; cv=none;
        d=google.com; s=arc-20160816;
        b=aDar9ZU2b99FNh8CiII/QDJFBdOUepFNyo53w4oyAoopmUqQAEQAzOU5Dt8g8Xa9PR
         ia2wbPzca9FxDAnKtpUCu6sm0EDW2LDbMURRHcwNEWi1VUnc+jbnNjP2FsxtRzzBYnoN
         twvrY14A54UIaHIrm9I6p868rCHRAnlbyElROBtk0Wa55h83iAC5ByKgo9qS0jG+CLyg
         w8+G8SIuljbX+ZLmPwv3FKEHei5QrRicPxiAT9/8zGe+WCLqznYRh4FP636OSiAoJ4Ev
         HHWZL7v7sL4r/C7Kw7uowzCNaV0AWfyuD7GMf1Bg2TB+QqG0OQyY3CjKXAJGqNycUi9s
         5NRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wZOsnLsRD15EE78n8bQEf+aUkvjzCWrGeOD2j6m7n7M=;
        b=TSNW/X8Gxi/f2kceFZWb6TCssqJaFEeiZpEFktu6yx2YJapxpYARPQ3JGlGoh9gU+l
         WaGWmreNmEGmu7OxbtpwrCOe0t32pfvVY6kfwW+sVt3mIhEOxdTtCwbpbMsOkV0Ar25F
         P0HpMM/JcTIJKVrVZwIaEbcTumkofGs8rRSXGh3Zaij2c5EiSTbuj4m+6tP/32ieXkwJ
         qzbS0KqOw4yECL4kN0cn322RoOx/I7vlPFOW+4Nd8tBkxzJDkPjiGBpRE0zwwbGNqqtZ
         zFms0X/EgY9wxpQtj4gXJCfx+8zjCURR66TBYr+SeNcXF24CMdLJla5KUnhQjwhWApFg
         YSLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Pz5K1LSq;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b41 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb41.google.com (mail-yb1-xb41.google.com. [2607:f8b0:4864:20::b41])
        by gmr-mx.google.com with ESMTPS id o2si130711pjq.0.2020.12.02.04.50.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Dec 2020 04:50:41 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b41 as permitted sender) client-ip=2607:f8b0:4864:20::b41;
Received: by mail-yb1-xb41.google.com with SMTP id t33so1519351ybd.0
        for <clang-built-linux@googlegroups.com>; Wed, 02 Dec 2020 04:50:41 -0800 (PST)
X-Received: by 2002:a25:df55:: with SMTP id w82mr3065596ybg.135.1606913441319;
 Wed, 02 Dec 2020 04:50:41 -0800 (PST)
MIME-Version: 1.0
References: <20201128193335.219395-1-masahiroy@kernel.org>
In-Reply-To: <20201128193335.219395-1-masahiroy@kernel.org>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Wed, 2 Dec 2020 13:50:30 +0100
Message-ID: <CANiq72=WanQ0sqL14D3Keu0hT3L5GXBSV-znU5C9hhC1gjs=wA@mail.gmail.com>
Subject: Re: [PATCH v3] Compiler Attributes: remove CONFIG_ENABLE_MUST_CHECK
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: "Jason A . Donenfeld" <Jason@zx2c4.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Shuah Khan <shuah@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	linux-kernel <linux-kernel@vger.kernel.org>, 
	"open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>, 
	Network Development <netdev@vger.kernel.org>, wireguard@lists.zx2c4.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Pz5K1LSq;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b41 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Sat, Nov 28, 2020 at 8:34 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> Revert commit cebc04ba9aeb ("add CONFIG_ENABLE_MUST_CHECK").
>
> A lot of warn_unused_result warnings existed in 2006, but until now
> they have been fixed thanks to people doing allmodconfig tests.
>
> Our goal is to always enable __must_check where appropriate, so this
> CONFIG option is no longer needed.
>
> I see a lot of defconfig (arch/*/configs/*_defconfig) files having:
>
>     # CONFIG_ENABLE_MUST_CHECK is not set
>
> I did not touch them for now since it would be a big churn. If arch
> maintainers want to clean them up, please go ahead.
>
> While I was here, I also moved __must_check to compiler_attributes.h
> from compiler_types.h
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> Acked-by: Jason A. Donenfeld <Jason@zx2c4.com>

Picked this new version with the Acks etc., plus I moved it within
compiler_attributes.h to keep it sorted (it's sorted by the second
column, rather than the first).

Thanks a lot!

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72%3DWanQ0sqL14D3Keu0hT3L5GXBSV-znU5C9hhC1gjs%3DwA%40mail.gmail.com.
