Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXES6TZQKGQE6NPOI3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 14CD019480E
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 20:58:22 +0100 (CET)
Received: by mail-pj1-x103a.google.com with SMTP id go23sf5508675pjb.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 12:58:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585252700; cv=pass;
        d=google.com; s=arc-20160816;
        b=wqNKfUAndHZLzJZmlc6ALZMLgpQ4nRA/zvo4bAH6FdSDZfPRH7kRN3lUwPWb09iGXI
         2AgijBUsm05k2TAE0gtuwIrIQlD6cB4pDEYgZvasxgFJKL2TwFMe2E3jMoB+/raJZbY2
         b0W6ocSJ0l2gTEbEIA8J6qZ0F0aX6fPEE6uHfPcXvd5DNUuqF+r6OQp3RsvVEPrhUXGQ
         4fw12dcq0Cgp7POQAIeTYeZlc/t6K6yWkppU65WYFI8ulesaP0982i9h6F2KwU3vL6P5
         AtPDEIOcxrwj/dw3Fs8tmeor90jPlkpWn0w6+dhI9ia/KgzVAOWlshmVmvedA26k4OMp
         O9PA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=OoIVimhHnEb6klGk08CAgMPWYCjvx906DFhcgv8D8H8=;
        b=UesVjP1Dew27ibIkLDM7X02mCiGpD+CYRnBGElUSwM2qdjoU89bbJD5PYiv6lGmwb7
         PoMrSCY6YFniv7z1LCD9h50unEYMhKofAzdeUFISV9hxk6Ca7Un+Hw8uG1tJwpHhT8hU
         1FN2EYIDZm9zGkFDmp03lXDmGnD+kYB1Fs1Zzlmx8cLDVSAKSw05tDHhUJt9dfDv98Nw
         RBBN4LF5celheEcIFTdA1HSYbqIJnO5V6VC5S5cH0vq3LYyhUe1WqL55/cSSZMkRiHzp
         Ea6UMnF/q/L+NBIcDkZJS1xWwvjYh56z8KeXAJ0djH7nwjrdcAD8IzPALGqt2c1iISO8
         91Ow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PcUVhKbS;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OoIVimhHnEb6klGk08CAgMPWYCjvx906DFhcgv8D8H8=;
        b=Ys+ZZsYd63aOvr66euNMjL2avF92c3WVtc3DUFjPOTlULPIiGX1mVmZMZjp0kOuKA9
         CQP+VQqvyuRQ7nrznqaNw7OTV31xrcxirQFOJN/cTVG07iPlZw9hclUKZznLexJ5H0Bc
         XqJGmUSJ2WRjj0V17azyex1km2b1HG8C+IbIg/fUgkevkiY5IvYfoR9a0rlD3i2ZU/eS
         OBZV0pcmWFoFWcKtmQpgYvCJZ0o8f57utjoslA3H84E0clrSH0Nz4MvLvYIKrM/c+ly9
         O3+33Rvt0pdUPcUkYRbBMM9TwkJ7G1+yF2xHAr42YnR6IBcHn777k0bbO2u2lREBy9oY
         IEeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OoIVimhHnEb6klGk08CAgMPWYCjvx906DFhcgv8D8H8=;
        b=Se3woWRjbzJkUAEVjjgtTaIVlGGmGEl0r2SO+ArD52GF5exJPcHQPDnBqrzQeOBvnX
         XX6pU2jPKHM8spOXM0Tz9Hf1Q7QgT0I8vWnpEcI73w6/Jth9X/1Wvk16WA+lSnPhUbny
         gcpUvkm/Cor0WIfTyekX1H+Edujf/0PNSLDt2zUlnjF9xU5Y9BSJt5y0pej+yGJSqEoi
         HWXjL+gFGQUgkiKbMIc0nx/v+yQzru4fFDtpjTLAxffIrWr2JcgLb/7d2tRCTvHuKxUb
         Ren0+LPQbHp4Tk6cG82Po/wGDe41ewXnBmx1niFk+TvY48g+Rxd5OKmNsi1HJLggw81z
         AaqA==
X-Gm-Message-State: ANhLgQ3SVpxnBzuhQtdnBX28BVlDCKBnHeukvleSfVQUPu4lqj7HIb9u
	bVJQhN1E1174SO2+RtSlYbQ=
X-Google-Smtp-Source: ADFU+vuYxO7zLKrSbjVE/c50kHJihKafLTcJZsbWFkGU3yBsPzFnPFc0J/Y/P+lQEBZSYjJ9eiTFWg==
X-Received: by 2002:a63:5fd8:: with SMTP id t207mr9847444pgb.186.1585252700658;
        Thu, 26 Mar 2020 12:58:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:63:: with SMTP id 90ls4642937pla.10.gmail; Thu, 26
 Mar 2020 12:58:20 -0700 (PDT)
X-Received: by 2002:a17:902:aa49:: with SMTP id c9mr10125221plr.145.1585252700185;
        Thu, 26 Mar 2020 12:58:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585252700; cv=none;
        d=google.com; s=arc-20160816;
        b=EB32l/THzLM0At+ae3D8XUsWb16ZZN+6vPiuXkgoMe847AONQQzTU+oqDEWiIEyJ5L
         g08ZCIeD4JSSiIxFXUXBZAN9LDmNuaWazOQbo14zjq5E+C094hG6M8KMInqDGQa3GD1M
         BTd+4GvTeoAWyNLvpZcsKu2MO1NDfpRMH5MiVucJUaNdVhIPiMe7wk/J8RzE2ksuqGsq
         6YyQgrpCO0vSYqN3UKKiGPpQQ0iSHTzFnZ6AlwM9+3/IvoK6fT4+mg8R01+7NLvLumXZ
         8n+qpb/M2oQjzWVvnh3jIO0wnofD9Uc28LgEdi49D/D6NLSH7gRTwRwFuEaaz8/HaeSM
         ZICA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=OTZW/xLJ1BGsM+V9a0Wd+8MrhnBqRKDutU8ctncjlHo=;
        b=bNO9EWe/l2yASNjv32v0gcb/BjQ8CE5hrlLiDCE28vd5t6yraRGGv7HO984F4W8qYg
         sMEi70bbhxqwdp80cDQpIX7z1GepqOFBDDKgWsiHNVYS40LOknDClwpjJieNQfpWWUlg
         P+MbUA6RDIo30X2CngTkcXubKpwIzyH4YXv+FL7v49T13eC1QpAAA8EEXGq2gngWIWxq
         UhYsJ0AOS/xk35zPuOEGl9G3rmv53c5m2rhWgFpVJCw8i7Ez/B0HgCgIuxDK1ktZemvB
         yW8Nl0vbzui4RBQD3KjsIHxvO/mcu1rgCyMTJznhfP4G/KxWlzB70rcJb4GN6MYgQgFy
         c6rQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PcUVhKbS;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id f8si341813pjw.3.2020.03.26.12.58.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Mar 2020 12:58:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id x7so3444061pgh.5
        for <clang-built-linux@googlegroups.com>; Thu, 26 Mar 2020 12:58:20 -0700 (PDT)
X-Received: by 2002:a63:4453:: with SMTP id t19mr9656195pgk.381.1585252699540;
 Thu, 26 Mar 2020 12:58:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200326080104.27286-1-masahiroy@kernel.org> <20200326080104.27286-16-masahiroy@kernel.org>
 <CAKwvOdnG4F6+Ndfj+=BoV6OidJjWS_dYtjvyCEJ6nyxkSQc3rg@mail.gmail.com> <CAHmME9p_N2cpMt20Gf1kWTRnj36nwrceFxEui2MU0kFu3WOdww@mail.gmail.com>
In-Reply-To: <CAHmME9p_N2cpMt20Gf1kWTRnj36nwrceFxEui2MU0kFu3WOdww@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 26 Mar 2020 12:58:06 -0700
Message-ID: <CAKwvOdmLWqVq_EQk2S4FUSUCU7yoppYD4oiL+P7taWoDTyrb9w@mail.gmail.com>
Subject: Re: [PATCH v2 15/16] x86: update AS_* macros to binutils >=2.23,
 supporting ADX and AVX2
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Borislav Petkov <bp@alien8.de>, Peter Zijlstra <peterz@infradead.org>, "H . Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	"David S. Miller" <davem@davemloft.net>, Herbert Xu <herbert@gondor.apana.org.au>, 
	Ingo Molnar <mingo@redhat.com>, 
	"open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=PcUVhKbS;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
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

On Thu, Mar 26, 2020 at 12:48 PM Jason A. Donenfeld <Jason@zx2c4.com> wrote:
>
> On Thu, Mar 26, 2020 at 11:55 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> > I see four checks for CONFIG_AS_AVX2 in:
> > net/netfilter/nft_set_pipapo.c
> > net/netfilter/nf_tables_api.c
> > net/netfilter/Makefile
> > net/netfilter/nft_set_pipapo_avx2.h
>
> That code isn't in Linus' tree right now is it? Does it make sense for

Indeed, it seems I was grepping in my checkout of -next.

> us to see which subsystem trees (crypto, netfilter, raid, etc) are
> submitted to 5.7? Or would you rather this patchset be rebased now on
> next?

I think rebasing on -next is the way to go.  I usually generate my
patches off of that, though some trees that don't feed into -next are
technically further ahead.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmLWqVq_EQk2S4FUSUCU7yoppYD4oiL%2BP7taWoDTyrb9w%40mail.gmail.com.
