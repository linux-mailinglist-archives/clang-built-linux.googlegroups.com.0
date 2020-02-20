Return-Path: <clang-built-linux+bncBDRZHGH43YJRBOVBXHZAKGQE3OEK65Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 83050165A1C
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 Feb 2020 10:26:18 +0100 (CET)
Received: by mail-wm1-x337.google.com with SMTP id d4sf382250wmd.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Feb 2020 01:26:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582190778; cv=pass;
        d=google.com; s=arc-20160816;
        b=nlZd5tIMZics1ysZqTTCw4iVCm+Lw/Erq/lPQgcU40yIxjAAKI/Foc4qeMr+4eko4P
         0Ua4OxLH1pd1A+snUjdmXUd+FfqzeithHNgOgocrHuOEu+5V+rcy/SQq1YtKMrwEiLZt
         2see3SrMAFhSit+ceDvKFMXGjasvAHYjE3/SOTCbcSSOQmfPMOaewh+H+3PSdhGjNUmy
         6tx8FI1ifRdeYrsQSjgDpeAEzpfNCC1pge9kxAetHA9GObdYdbMNX3pKQEk6JkTSD9rm
         pymNTaKf010vlKzz1lsBpEmTL6NZfcFloYC30zSRc9CrzwVepZeQIE6uajnY6NEswUe6
         vE4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=KsBwrpwGS7gNyNd9k5naHA2JTcoqP++xm6t2pAM2OLI=;
        b=0kwIkoilyMywAExhrWCISUPZhiAIXmb1KCc11FIorIJJvT8/w3aMti/Bl0AGJ5oW1f
         LncKpsv21cCiHCHYkp7CVDokl6MNQbWF3ihoqGuJyB08b31gr8tmpwe4MKErjtxTNm+N
         9gJXw0cfaBGPNVdxK6l0jy+RGFfHyv55y96Yirrb8lTHrt20IBvhBwmJ3K0C9nD34GPE
         JTCJVNjtVkRt1xFxuqKw6xGbPGWich1WrorbL3N1FlXBe/MmmNbuAw/AsN59hDDPsuOh
         V8MuenyHWu8Ng5Ou62H4OqpN2NWrBsQEbppvxRwFPE/mbzIvFuurEIum3sjWAEifJyHH
         waWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FRjY7eWo;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KsBwrpwGS7gNyNd9k5naHA2JTcoqP++xm6t2pAM2OLI=;
        b=Lt1FGIR7zZEBZTMaFGO7iExCBUJwmabl9yyeIw+yCPxyx1tJ6+3IPzgCYIh0mjrjUx
         9C2yNt+CL6OyQZrZIYRnPrBA6f66sIt5swxHM8XpiFQcXs/OmvRxFa5HRxzW88KyFN6Y
         +Xu3bRPp79YUNFtqrNBhSuqNgPaLIX5CDOO+gze11PwV+PdAv5hSXpIIve7I3HeJ7KSJ
         beGxzEaRRs6Wv+abziIG4UnarGoslKvUXhl0BS/Qbcu2bko/9gL5Uu0e+7GdVkLvs5zt
         hos2E+ipHm9urXV/J3kylQz1zDsJOAGhGlBji2l/mbogiZETeahgzEgmWBbxN8UzJTT0
         P7Ig==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KsBwrpwGS7gNyNd9k5naHA2JTcoqP++xm6t2pAM2OLI=;
        b=s3wZCSWxyjFEC54n8pYMzAmfZFjh1WWt1kgPa/8OaznlTern2xiD4TwtZ/vd1+1XdA
         cWxCKMHlzV74Ywhg/SOJbLe6ScfDzAn5osZCyeuShND3u0b8mOV31eTw2oZWisolGKN0
         cbiEfY1LT4W53fd1Exhp9xbvP9eyd/Tzdea6YG6rYG0wCDlrlgnrTQFAEexaJ16IFcxy
         /OTioh3dGHAOe/ivojmorXI6JZ55ScKdFUKLnLzHK1u9PSKaxQ9uyvoZ2UGzwFNDtNJ2
         7g/8uw+qar3d+FBgkVhcNT9Dfm+NzFksea8ZDHUq/YttZQnXQO3NkH3uS4ijF3/srief
         AJgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KsBwrpwGS7gNyNd9k5naHA2JTcoqP++xm6t2pAM2OLI=;
        b=sYm+iPq2D6cws+0D07jUPNUDnwCB4vXR2aR6KHawmwxE+W6kaufO5/AfcvdgRQqvcj
         8J6jEqwbf+pGRldvxBU/VWwtc1H0WXGqjoCLUNnotMXs0JvQRxLMKAyhbAyrNy/4L0qS
         okBUMcCCFvZJGd7oMH4jYQJc/RUkt5YDlHq9/hM+Dq3PzAgqneM+NX7OIJp9+LlEHMNJ
         R9KrN/gMuC9mD737EVu+yOlQnpLn4E6xD8YzBAzRh4s5CZPgMf/5wnkiyH4YuE67eGjq
         dzWv975Zmd0gh4ZwXl6wvpiKZ5kIrVIzxT7jhZTY96VI18kOtXv8LEuPSY2hTu4OUmz+
         m4NA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWOQNGaZruGzWEUGnwKs5xnrThIV8IpiXDrzlomMbBiZ0PY7cY3
	CDj/mgI960rqugJo0LIVcFw=
X-Google-Smtp-Source: APXvYqwUvmiEEMl3B+9U2RISDWtgXeBKJVZiuCiFo36MUn6tnqv77bkcM2N02TW6Utkgu9///ljcaQ==
X-Received: by 2002:a1c:20d6:: with SMTP id g205mr3399708wmg.38.1582190778275;
        Thu, 20 Feb 2020 01:26:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:65d0:: with SMTP id e16ls11178275wrw.1.gmail; Thu, 20
 Feb 2020 01:26:17 -0800 (PST)
X-Received: by 2002:adf:cd91:: with SMTP id q17mr41825821wrj.306.1582190777495;
        Thu, 20 Feb 2020 01:26:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582190777; cv=none;
        d=google.com; s=arc-20160816;
        b=ZPuUexVZNV36ikV0nS3CQ7RmlwALdMsDOy3KmoHQHhd8R1ZI9ZBanZs/nDQKWH/wvb
         JUQMFY0kBo40Ckha7ne4lsS4t9Z+1khe0zFhy8TIMghxYwR1m0L9QI56tdx8a7ODBknJ
         Ev7BTQnBJittgaotK1Mwq2Ols1ZMM8AyatbrjSGKUcBstPuXLIzZ2d+E3cUppHKtymMx
         c2hWVQl6Jvw0eH7QPWtU7yjymH7LgKu8TFH2paueQr1SOHYcnGBd8TrksNn9qHbCnIFP
         QObLPwDzrmIeDyNt1MsYB9g2di1qRXEvrB+06jaNjYhZmFcJWsx3FSUSlgoJ++D1aFaQ
         c5qQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=jWL4OlWg/ImsZ63WRta4BWWVgqBXfj6sTueyX2l3ehw=;
        b=YUJpf9QYyc3nAZxdVzL+U8Rmi0yK6ZeAhJyShrNyIZHrWozDbW2UPhQoXp3I8Wncps
         YyIwCmdbAQHwMA4mp4I1ckmk3kqww39iNmjC/pEZaANT2lZczXzsCI8rG6npKGdjO/zc
         844GOYBmQM5bJxvAex4cQl2e2L9prS/wwUNRbHFcxLuKS2NwghOTL/SPWSpagMfbewvG
         jUT6Fz5gPFDWkN8A376DTgb7MSizGVrHxt/em2t2RqA45KuwracWed2apVfr+pSjoD6B
         vJKU22DTHLlUrShC81Yuw9FlKryez3rkZxGKLONAKB2q8eyTGQDgOKiKznZpxOVTST3Z
         081Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FRjY7eWo;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com. [2a00:1450:4864:20::142])
        by gmr-mx.google.com with ESMTPS id g3si107508wrw.5.2020.02.20.01.26.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Feb 2020 01:26:17 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) client-ip=2a00:1450:4864:20::142;
Received: by mail-lf1-x142.google.com with SMTP id b15so2526267lfc.4
        for <clang-built-linux@googlegroups.com>; Thu, 20 Feb 2020 01:26:17 -0800 (PST)
X-Received: by 2002:ac2:4199:: with SMTP id z25mr16242179lfh.26.1582190775281;
 Thu, 20 Feb 2020 01:26:15 -0800 (PST)
MIME-Version: 1.0
References: <20200220071140.14080-1-masahiroy@kernel.org> <20200220071140.14080-2-masahiroy@kernel.org>
In-Reply-To: <20200220071140.14080-2-masahiroy@kernel.org>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 20 Feb 2020 10:26:04 +0100
Message-ID: <CANiq72nWs3c2MWGTsG=zvDQ21B_=_Yaw3AhRhHDBAr2xFJwF_g@mail.gmail.com>
Subject: Re: [PATCH 2/2] compiler: Remove CONFIG_OPTIMIZE_INLINING entirely
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Andrew Morton <akpm@linux-foundation.org>, Arnd Bergmann <arnd@arndb.de>, 
	Ingo Molnar <mingo@redhat.com>, Thomas Gleixner <tglx@linutronix.de>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	sparclinux@vger.kernel.org, Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>, 
	linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=FRjY7eWo;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Thu, Feb 20, 2020 at 8:12 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> Commit ac7c3e4ff401 ("compiler: enable CONFIG_OPTIMIZE_INLINING
> forcibly") made this always-on option. We released v5.4 and v5.5
> including that commit.
>
> Remove the CONFIG option and clean up the code now.

Yes, please!

Reviewed-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72nWs3c2MWGTsG%3DzvDQ21B_%3D_Yaw3AhRhHDBAr2xFJwF_g%40mail.gmail.com.
