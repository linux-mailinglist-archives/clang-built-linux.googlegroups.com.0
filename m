Return-Path: <clang-built-linux+bncBDRZHGH43YJRBT6WWCEAMGQEB4FUREQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CCCB3E1B15
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Aug 2021 20:17:52 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id 81-20020a6b02540000b02905824a68848bsf3444666ioc.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Aug 2021 11:17:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628187471; cv=pass;
        d=google.com; s=arc-20160816;
        b=xhvk95PZAwzYHBNScGFoD2BygdTwx0fiMXRI2a8MLijVAtkgeuTZQT+kjz8azrkiAT
         /XVl/gnLxC6sQth2YlRNAx/ssJyQyW9TuchzdO046aVmrGT6yQTWBtnjzymcfVZReyzW
         yi3PIXG0L4VgHSpBB1HhIZWybtESZ0DRReLGa/eXSNG8oH9F4FYCl61Q05ijoGoJpphu
         5t2FvngnXxWoj16hyY5mro3NA5Ftwirmm+KcAg/A0I5sEhT3E8OWrQgP+S4GaegX9Hfb
         KNbt4Unz/Qt7mZu4dLSA25eo/DTU2vOqGqPQMn2v/Ydcssbp1bfeHq8a0Yc54/YRfAq8
         4ETw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=XFNOzVstAemRZ6hbCk6LhXUO3gSnKNuQ5Xn9UQBrEjY=;
        b=UeClFQgahr8YUcr3Ka6VB25Tnc5B0iClOxDqETrSVbhD/nOrDRgo8lFX/jOJ7IWsx1
         iJRSqVuZNFTViW5Zzpg3vjRMUAS5DWOvZFprpK/QOpnNOq4iLF+DRc4N+D9se4it2Pbi
         6l8MxfL0+ydshCqIQDH0PimMDyKxEkT1dn8iisqk1RtU/y/207EfpakTT8oHt7JAnvkh
         iq1N9srJBu8H1ToePIbESOJh5QrzzLRp2cMgS5BHKbTnAoT6Iwlkalgq3qJEjUsEtvQ4
         im5opN1dTRYTvqCQkGn4YH93vkJNHGowME9KUe3gAhtj/ZSkTC+ksakIPAmKd3w8URfC
         3Vgw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ban+ybOo;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::136 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XFNOzVstAemRZ6hbCk6LhXUO3gSnKNuQ5Xn9UQBrEjY=;
        b=XpL96Z0QwXr+NU3A8GDTM8SRO8ifo95U3nIg3Y4rN/Cc3jwXmKbs8+RM44KCd5PKhI
         Eo+822yhXCdlcxfZysjjIeg8V9bc7GxtQd3Ayl4Rz5g8dcg9WmD0BbmoRaOv7DBds4gx
         2vKj6NgJHEia4EcjwmktqjHPGIUr33AJCJjkbLBG8aqPm0NvVf9/obZXyVun/4Dc9XqV
         0YtYC69wAYtOlJahLCdwOFsLNON1CspMgV+9CiUv3FDnBgTsQdWns3vWZoPRuAyZrwFX
         GRBNcmqE4NtOZLGR5h7TmrpL69l2vog61giwI/yox+HjFsE1NIfWCBICFDMimAyfrgUg
         8SZQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XFNOzVstAemRZ6hbCk6LhXUO3gSnKNuQ5Xn9UQBrEjY=;
        b=X2NYzLWjqpjL/tlQmGT9mU9uHHcjdcQaVd2Gydi/XJLDH6bBK9V2jSADaBur41oGWF
         S/PC2k7GkcuqnWIu/pnL1LnpHKsWdXgDVapBA5RP0n6jyuHCLhIn4AvTrVqKa3L2SeLj
         UQff1BFyDedQtHNrVw4yB9d+IUsZYr8Q2PmvJhhkjdPXmNO6YD2R7DM2sRU2WoFuyG59
         +KapI5xafvUmUBjRB9N3O59nI3hij41Z8+jTHdWSRiDshRg8LUxq5x4ZC0FUYZIor28d
         921gNis/XAMXO6eYcWuSX0lksVDZIm8RGDOtmr4WYZQf4fBRRRF74ZcHIiIHpurYi47G
         4/eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XFNOzVstAemRZ6hbCk6LhXUO3gSnKNuQ5Xn9UQBrEjY=;
        b=mlf68mLrps02DbCaMMs8ifeLlc9HQmJcxewkb8SKmm01Gq121vRJQ5GnGossTpngjF
         ynYlxNR1bpaeypJEkN+2w1xtFpoQ0lHBB8GK0f77JgkyCZfTSnAsuQXdYCqU0qa6c4Qm
         2LBIY956AHENpQHvZLPzzlYJnnFojm9nWaRVdSkvowy2gCU0eV4VFpT1V07gXlBC4ZkJ
         650BbETOQv0USul+mM2g+gjLRGrW/FjAIovAxaBqx2blFjaqjQkfolWHdjE6Awvo87Z7
         DR0uHL3uGgWoZ1goPXlVxiUFwY6Zu0uOE/p+oO7rpot5wptkmjYdECaVoH/QVEcxNq9R
         JPaw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531wC5ODcGITTiyDtr2t/+fZwOBqZHGfhVnhm2KpYRzA3Jra5gMG
	89qaFSdiUdAbfVqBoUY+sys=
X-Google-Smtp-Source: ABdhPJx5DUWk//zUG9CzaXfTWXWyUUoYqzhus+YVEMudVbJAeOCOJwDQIG4WsFuQ2F0mmynDvbSQBA==
X-Received: by 2002:a92:907:: with SMTP id y7mr1620208ilg.260.1628187471544;
        Thu, 05 Aug 2021 11:17:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d08c:: with SMTP id h12ls554662ilh.0.gmail; Thu, 05 Aug
 2021 11:17:51 -0700 (PDT)
X-Received: by 2002:a05:6e02:1aae:: with SMTP id l14mr252194ilv.35.1628187471110;
        Thu, 05 Aug 2021 11:17:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628187471; cv=none;
        d=google.com; s=arc-20160816;
        b=HU8ktrza7uJ3UWS3seWgdnkW/kSb3P5qxNey/jKSGaO8DHYiKEXHgNt5zUYFV266mD
         5FGhtyjKLCGisuwFXFwd72Lz89MgnLqnOJWrvpPN6FQK/7l/S/wibrn3eowX4Rte5K1V
         Kd0iUl4SwW3NoQ3HOMG23Yv3DC4fJjCk/ADo/xco8wBMDobh6AVsmSaB1sPssHrDX4gm
         GenNMsyMq70NKLaG6eEaOCbsq54hRlCj0RX0EHRfcAwotVQtaBrYq/ts8Te+ufJx+OXs
         GkKaKjVhO+IhlMiCCfz2ySuKZJ93IQTp4WHpLXoDi0e43JeFVc4uzwxmUS5VwzDaE/1j
         KtMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wrqyGrlzJbaQiQwV6UU8HEiTXlXj9XwABefl+sGFyRs=;
        b=B8a4o9HOoyhZnMM/J+A5R3XnqVjAJHGUN1fEDtL4yytrIRXnxLdzO08ynL3hSAzYMR
         Y0GX6Lgc7R6k0WhBhv/29cO89V7oR0F8Vom3GVAvEiAjy7tEIY07XB1p6cPwu8ODSuwa
         0ZwjfEN9XN3zcoTJdM5ITasZo7CqdkYQDao4M1DWHCsq5BrzZinAA6aVPXpJIGsQYExB
         GLdCC2fH1DSbwEp0mkEXAwetoGOh7gYIGSa42ZIXVmvo8u2BfNVT8IBY8z+WSEHPBkV1
         67Qsi87aw0Tjn4z2Az80+itqkynNikunVJYFg2cx6gOhU/lsEHfs6vIY4+wgRAdBW5ST
         KOOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ban+ybOo;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::136 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x136.google.com (mail-il1-x136.google.com. [2607:f8b0:4864:20::136])
        by gmr-mx.google.com with ESMTPS id e16si342087ilm.3.2021.08.05.11.17.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Aug 2021 11:17:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::136 as permitted sender) client-ip=2607:f8b0:4864:20::136;
Received: by mail-il1-x136.google.com with SMTP id k3so6060889ilu.2
        for <clang-built-linux@googlegroups.com>; Thu, 05 Aug 2021 11:17:51 -0700 (PDT)
X-Received: by 2002:a92:b74d:: with SMTP id c13mr535113ilm.176.1628187470918;
 Thu, 05 Aug 2021 11:17:50 -0700 (PDT)
MIME-Version: 1.0
References: <20210802183910.1802120-1-ndesaulniers@google.com> <20210802183910.1802120-3-ndesaulniers@google.com>
In-Reply-To: <20210802183910.1802120-3-ndesaulniers@google.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 5 Aug 2021 20:17:40 +0200
Message-ID: <CANiq72ng4a1g8TDFWb652TNhch2NDrQsHkJyP5HrrkJREGg8jg@mail.gmail.com>
Subject: Re: [PATCH v6 2/3] Makefile: infer --target from ARCH for CC=clang
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, 
	Fangrui Song <maskray@google.com>, Michal Marek <michal.lkml@markovi.net>, 
	Arnd Bergmann <arnd@kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Christoph Hellwig <hch@infradead.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>, Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Ban+ybOo;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::136 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Mon, Aug 2, 2021 at 8:39 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> We get constant feedback that the command line invocation of make is too
> long when compiling with LLVM. CROSS_COMPILE is helpful when a toolchain
> has a prefix of the target triple, or is an absolute path outside of
> $PATH.
>
> Since a Clang binary is generally multi-targeted, we can infer a given
> target from SRCARCH/ARCH.  If CROSS_COMPILE is not set, simply set
> --target= for CLANG_FLAGS, KBUILD_CFLAGS, and KBUILD_AFLAGS based on
> $SRCARCH.
>
> Previously, we'd cross compile via:
> $ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make LLVM=1 LLVM_IAS=1
> Now:
> $ ARCH=arm64 make LLVM=1 LLVM_IAS=1
>
> For native builds (not involving cross compilation) we now explicitly
> specify a target triple rather than rely on the implicit host triple.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1399
> Suggested-by: Arnd Bergmann <arnd@kernel.org>
> Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
> Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
> Suggested-by: Nathan Chancellor <nathan@kernel.org>
> Acked-by: Arnd Bergmann <arnd@kernel.org>
> Reviewed-by: Nathan Chancellor <nathan@kernel.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Acked-by: Miguel Ojeda <ojeda@kernel.org>

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72ng4a1g8TDFWb652TNhch2NDrQsHkJyP5HrrkJREGg8jg%40mail.gmail.com.
