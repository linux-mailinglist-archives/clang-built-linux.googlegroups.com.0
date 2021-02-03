Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBE5Z5GAAMGQE5AKRPKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F52A30D508
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Feb 2021 09:19:32 +0100 (CET)
Received: by mail-qt1-x83b.google.com with SMTP id r18sf16470521qta.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Feb 2021 00:19:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612340371; cv=pass;
        d=google.com; s=arc-20160816;
        b=EQI3LIvbX+n7S8gn282VsnDjL8sdGwQ3pzFNtWwfbtyMggeX4dV7Zm5Mlt8mnbpEoF
         zE1Cw+NN5KSy7WZZuwspqCQwyWCpPLOW+dUoODhuIKzIdQg3wzZD6COX0X6MXMqv+P2f
         3dk0LQUSPXTbQ5Rfky1X0RKzjFxqnxvJM+BTNTHI/DEt83VA6TWTz6RiCeY9D4hL6WU/
         3uzVx4KGoqxeVbYRDzyRtxc7XTFtM7Yh06qxIXtNkoRWt89ALyVMDE3L3WZl9/lBlhJy
         ZsDsE3PobEXbuD/jpvHaBN1gx1oMM+7Dy9UbOaSQ9gv8PDm4HGQt6eQFcZd20zKZalL2
         pivQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=jr4vXHgWR3qmjk2mKe5Khuea1qqQb8KMb5iwnuKSwvg=;
        b=wZPjPoE6XvanLVKpUxpewImSkSLtlXRSw6CH4KODeSVmjiYhYubuytU+v5RLbOqH1W
         NVM7o973kTwADx+MfVjyrDakBcJdw13NBdjKqJJXZu2awA5Tedf/+jtqNr+PbBANJzed
         QNQXhrOMN6M5LCTeHA9xXnAiVB24uXoB+q7ivintv/mlYIAZjFPAyFfkeb/7JE8LWUat
         ptN8ZbgQoZMMk/VrzavoQVKIWphd6FcfNgdsYZukZFImrIt3HCNXwNtbhlll4fhWZ4cs
         25DDZyVnNqI6Gn+W4xEBrIETlm4NeFeG1URw5Ye/LNRKU7MAKdq8qTNKygWrHNIacJaR
         9OAg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iTmKXcVR;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2e as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jr4vXHgWR3qmjk2mKe5Khuea1qqQb8KMb5iwnuKSwvg=;
        b=TpyaZNrMN/cI+P6eY0eftK5LCpzcWb7YE7RozI7us5Hl6tHCjvGoXM5lQF77+5j9mx
         pQKZt3UO1jAkgQs2QcAlQLxprZv6jy0bJjSrG9pnXDYQIWmfF5PVh4/nawnPig06Cblf
         wLYFE1scD2g5d0JdtoR/Pdp2UtHkzQIapuRxlZaW+Brzgqnm02QCPINsKdg1UlPTT2jN
         ojCiy+h3mPU4LkQbWPmGzkHobFw9dTYBV644uSxnzCJKBOfGAcEAk+TxXYdsMHuohyoC
         Bdt0zf6yYXJcYYMp6RqxGzV9oFQFFq/0A7CUKiIkOIwFurQ/SoXBTU30xSt2aaNxtMAm
         alNQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jr4vXHgWR3qmjk2mKe5Khuea1qqQb8KMb5iwnuKSwvg=;
        b=HjKm+XLP9boetDynGXMIUcjqvhoNHsusXxtpY6I1AE3fnVkV9tsrAPcKsx/W1q4iuD
         3DFJx4OkDI3/qXGnOK8rwQeTf6fjhpkl3fb6ZZvbW62vHAIjBsG9O5M6nDsWjDoLyhAk
         dRYbYrbwxBPYLNmrC4cez9Npep7V/R/Y8PuQYTsf/X3Fq4lRLmObQZoybG9cd79R67Mz
         5Ps9AMxWMYPQUiPYKp+/deHY9/YvLmtpfqHDw34MsKhbBm/KMbIUra1hFDTr3failQAj
         bdsiBwH+kAum35LS8Pi32HIuon0iYSuXE0Vd8r6705jT4V2WXiPAGloOmpLQK+n/v8Gj
         P+pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jr4vXHgWR3qmjk2mKe5Khuea1qqQb8KMb5iwnuKSwvg=;
        b=l0TuIYepd1z/A0qwm+GMvmHatUe3GK8BwSMIiw7Vl6syJFAWA1phCZdNSJImQiuCQn
         8UdW9lA2B7HQihYPAuy0EvIVHPQHSvEcdtkGlnNhfCtqapAsu7VOoQJxraLeITp/51QV
         Yx/NZZ6xuIKrhguSFZhAIt3zPM5dXKSMEMcFNhXJfCOFrHnehazRSa/rXfUHe7qfbeGI
         JSsmqfsH4kzpJ1NFxgh9tG8WQCTYshGupvKc353vGMUa7dIamKQTMgQpbhRRjYjxqDfQ
         eA9KrRnnSSmklsUZekpTd5Nwss6U0cWxEHIV9DlRKwumIZB4M3XHnVJaUAaT8P1odXVj
         1Ekw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531M0qirNEaFOlCxSpAFOEEV1xQ9dVv00c++rRgVkYMzdcE8UJAZ
	Cbi5E+VakxHby34OF4Tw1Xc=
X-Google-Smtp-Source: ABdhPJwtCONVaGfIwkVVffXrM6vSx+z7EG1YVSAz/2YKGkbGq1SfCGpUcOMY4MKCXVqEne7OzCl0SQ==
X-Received: by 2002:ac8:37c8:: with SMTP id e8mr1494507qtc.289.1612340371241;
        Wed, 03 Feb 2021 00:19:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:e60c:: with SMTP id z12ls274768qvm.0.gmail; Wed, 03 Feb
 2021 00:19:30 -0800 (PST)
X-Received: by 2002:a05:6214:906:: with SMTP id dj6mr1792816qvb.28.1612340370931;
        Wed, 03 Feb 2021 00:19:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612340370; cv=none;
        d=google.com; s=arc-20160816;
        b=ap1WJcQ+AbD2iPTrGrSiRLSUViswhSB/D4+6hwdmNqrMXKE56BhmglANaHuGJLlsrX
         ulNth9dWU5ozyvLBdSzpCWW4ywRYjYXlQONJD2gfAviPr25/bC4hsASCUp8/hjm+X5fn
         e+X3jAjgbHYyz0shRIJcTrOJA2eUUcg+iuoI6xktMyvuDoTkNFAhnlrH1EjX3z18Fpsb
         gyXH1Ojz80drg2XUoQ0hEpkqZ/kQ1h9hitSh/3siUkxfebtFoMZCeQr7kN/21Ngzd9kF
         FJsXsp2AqNkx1zDzGIWh2iPYkrwq+8hGflHRUc5JBBWd6HbUU0OZteJIyyTFCb8cMNcc
         nEWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Nwlpcct/F9cJQ/7dbMVRZOZAh6ZmCNE68LBrwiCRQ3w=;
        b=DHBBrLg9LZyqfgjkpL2O/h2bv0LCs0k2XGRAePQ5r2L08RH6aOroAqxdZ0zSCrcckj
         +ePDp1+UoC2P+g2J11D12KUOH8oayksUynLpLmEQzFCyYxA1xb3vJz7TvwQZ6m98hSo0
         EbFG+T8IP9zMXTHTlwThxJLm45TgRkrk1KlbBrzzADWlxuEqx0G4CAhYy8HWBMbkpxAq
         hC+hX5RJyjnSyH0A6rtfHKbTxefOr83LnFIdK/YcGHUz0wIF80XKOGMXKVZuh3Dj+OXv
         6Fj4fFq/6c2dLkO+iiFIEjoVSJHszLoRl6kYzglgmLRaW+9C62rTuT4OQmCkX38k07Oo
         8/Iw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iTmKXcVR;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2e as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2e.google.com (mail-io1-xd2e.google.com. [2607:f8b0:4864:20::d2e])
        by gmr-mx.google.com with ESMTPS id z14si80246qtv.0.2021.02.03.00.19.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Feb 2021 00:19:30 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2e as permitted sender) client-ip=2607:f8b0:4864:20::d2e;
Received: by mail-io1-xd2e.google.com with SMTP id p72so24287857iod.12
        for <clang-built-linux@googlegroups.com>; Wed, 03 Feb 2021 00:19:30 -0800 (PST)
X-Received: by 2002:a05:6602:2b01:: with SMTP id p1mr1566109iov.156.1612340370361;
 Wed, 03 Feb 2021 00:19:30 -0800 (PST)
MIME-Version: 1.0
References: <20210203075239.5505-1-masahiroy@kernel.org>
In-Reply-To: <20210203075239.5505-1-masahiroy@kernel.org>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 3 Feb 2021 09:19:19 +0100
Message-ID: <CA+icZUWpXQZqF+sz9bTv8ZUw2xYKUiCChyu92Zma1y-EtruRLA@mail.gmail.com>
Subject: Re: [PATCH] kbuild: fix duplicated flags in DEBUG_CFLAGS
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>, 
	Andi Kleen <andi@firstfloor.org>, Ian Rogers <irogers@google.com>, Mark Wielaard <mark@klomp.org>, 
	Michal Marek <michal.lkml@markovi.net>, Nathan Chancellor <natechancellor@gmail.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=iTmKXcVR;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2e
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

On Wed, Feb 3, 2021 at 8:53 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> Sedat Dilek noticed duplicated debug flags passed when building C
> files with CONFIG_DEBUG_INFO.
>
> I do not know much about his build environment, but yes, Kbuild
> recurses to the top Makefile with some build targets. For example,
> 'make CC=clang bindeb-pkg' reproduces the issue.
>
> With commit 121c5d08d53c ("kbuild: Only add -fno-var-tracking-assignments
> for old GCC versions") applied, DEBUG_CFLAGS is now reset only when
> CONFIG_CC_IS_GCC=y.
>
> Fix it to reset DEBUG_CFLAGS also when using Clang.
>

Great, Masahiro!

I wanted to request an "undrunken" switch for GNU/make :-).

- Sedat -

> Fixes: 121c5d08d53c ("kbuild: Only add -fno-var-tracking-assignments for old GCC versions")
> Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
>
>  Makefile | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/Makefile b/Makefile
> index 3d3f67b98ca2..769a38ee81b9 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -811,10 +811,12 @@ KBUILD_CFLAGS     += -ftrivial-auto-var-init=zero
>  KBUILD_CFLAGS  += -enable-trivial-auto-var-init-zero-knowing-it-will-be-removed-from-clang
>  endif
>
> +DEBUG_CFLAGS   :=
> +
>  # Workaround for GCC versions < 5.0
>  # https://gcc.gnu.org/bugzilla/show_bug.cgi?id=61801
>  ifdef CONFIG_CC_IS_GCC
> -DEBUG_CFLAGS   := $(call cc-ifversion, -lt, 0500, $(call cc-option, -fno-var-tracking-assignments))
> +DEBUG_CFLAGS   += $(call cc-ifversion, -lt, 0500, $(call cc-option, -fno-var-tracking-assignments))
>  endif
>
>  ifdef CONFIG_DEBUG_INFO
> --
> 2.27.0
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWpXQZqF%2Bsz9bTv8ZUw2xYKUiCChyu92Zma1y-EtruRLA%40mail.gmail.com.
