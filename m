Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBBV75GAAMGQEEDSISXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 37AF230D53D
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Feb 2021 09:32:08 +0100 (CET)
Received: by mail-pg1-x537.google.com with SMTP id 8sf16391683pgn.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Feb 2021 00:32:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612341127; cv=pass;
        d=google.com; s=arc-20160816;
        b=EtQHJ9oUXqiiVxcjRGjnaJyonkbXdYi5QyYaJVhkRfNK5w+gZWYtiDVBTJaU/hetNL
         sPNhI1fA9vws3aBaFVXfnikcjPhVF5t4E0R5zJsv2iHyzaR6zuynQfH6PZ5Fu4JpgeYd
         tgO7BfwJomauAvfr8MgEHguzkO7g5TzPVoTRmUmrsrXebsYdeq0nkQXrrl1OoK6EKrQh
         DTiGlK4f50mZFagzQTv8kduoPx4zce+4d62sPjJcVh4PZFTceC6tZOEpHZ31CgtEC5/V
         55cWCW1/71xZ4hQ8HO4nvRma/bub4qdBDQm3ENYzeBdps/8f2O6cwF7nLRjyVkyEeEU+
         vq8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=L0DbtavASZLVUA9Yfd1aCBt6hLX+OR43yvAnzC+4+yM=;
        b=abRX6HTfwVeaRg0UZ2FAnrShPAuGEerC11jZRwXFiakrRttCGIbOO2pyr/iIzqPKTS
         Yr0e2qnejlXaWWCxx6ntEEgDRn1RJ01MhgpPV2VCQ9YgjQ1r8ZL9CmH7kdVECNGuTfxp
         CKw35c55UBGT8u1MV+n50niRtum/ZdUqtutL8Wz+Vh99AiFTzCREvRiQY1jiIwr+fpC8
         65zyL5xG2xuLMJ4hovwgqkrfUjvVAipSgxKYdp5qCENCx1ur4tU46SgswZ3AFWXeMX9R
         Via4bExqkF1AP5hzpO0SrsFjxk9ZgTOLuRqUB/vjnlAQ1vJxjLE2gTWzqx0dDI5a8CLw
         8brg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fYoUbYVI;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2c as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=L0DbtavASZLVUA9Yfd1aCBt6hLX+OR43yvAnzC+4+yM=;
        b=PvJseIHrH65li/2l/8iLCcHl6zQNE1iLuBgL1NJB377QPuCgbrApAKAPrUIVXC313r
         QVqxRn3Cps8Z8VTEXrJv/hOg8BGwhBgrw0R9HyG8Vp2CiPABSIok+OLo44eCVhNv0ieR
         OuW+fbBYyEeU631/vZzNgKmkQ+wR/P5JhzTHxcqkTD6lgqTTeP1STDP8IsF5dXsVFqUw
         Nuuj3Fmcy3zjLd3y78Ma2do7Otx+4ucYXfDYaL54cVfhBml3muz90IVyiyIVoZ4KGeVE
         KqpRUmEsdmBaug+M6ooApzzAW6ps18EGjs4HE0cThLA8nxTzSy1lcjpeoWuCBIeINSkZ
         WuQw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L0DbtavASZLVUA9Yfd1aCBt6hLX+OR43yvAnzC+4+yM=;
        b=ck7Am3HKQCLT8ZhTgFQbYgqdI0MZ7zYAG44kyUNcBKf4lXi0vPMFjrJgx+OX/uekLO
         M7giO6md2dSxWitzV1l19wq694X1ooDeoY8sRQ5VGP1qr3h7ubWEEdg0gUKbGB52x0Wq
         yvl7aFjNgPYoGwMidgeHIszen/vj8I8mQ1ZSlRSX08Q3ttKajqbhzy/vksWoNtnpNSDz
         mLHHNTW9vK4gc+/QHsJG7rH+xgkjWzKpydYHJqbnyMxtebYq5VWBwHTh0/m3axsIu5dP
         EtEWtkzmLp3BQFoyK1Ve6/z6zKPNdZrPF4NnIjIKssBz65imcy7Fgczs33T3/s37Kudo
         +NCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L0DbtavASZLVUA9Yfd1aCBt6hLX+OR43yvAnzC+4+yM=;
        b=kARj1KZgrFt/P0rfKeXT2oRgIFJBsHtXqLQFC72OOufUJwkpp6iuAGZkg1DizkhOFz
         zurHmpNGr+hpLNJz3UuKXE2ztcsqArIifuzTZmk50FLL5IV1rian2zMtumUm4Xxij0aY
         J3/21WAJkOuCjL9eqwosmXLzh6zZpmh+4zpQWazR8GXBRqs08JO8YjUkWJ3tCscvUJoA
         xSVjC6KBMUrRyoqwlYhydZEP3Tbyl/RD5PkPVkW/7GB22MAkku86FnzXK/HkBWUlmJh7
         le5Mb75f+X90/nIKa/yw/2qjxSqgZP6jbhTHfi6fRercvjcNjTcff1gwMSz2ViB61qBq
         lvyg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531NNuwb8nVHiEaFv3qiGr4HuFIE9/PbAshN45pAj9OyX4d+Fk1M
	O4E7ZcOd0PEMeunIO6KhFKs=
X-Google-Smtp-Source: ABdhPJwFfRhYDVnzTLNDQzliqqn1pq1YOX+RNoycrkjQVVEGBN5IpBOWO2qiYA2kwLOh2ssT7+ycQg==
X-Received: by 2002:aa7:92c6:0:b029:1cb:1c6f:c605 with SMTP id k6-20020aa792c60000b02901cb1c6fc605mr2175925pfa.4.1612341126951;
        Wed, 03 Feb 2021 00:32:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:d2c1:: with SMTP id n1ls741962plc.11.gmail; Wed, 03
 Feb 2021 00:32:06 -0800 (PST)
X-Received: by 2002:a17:90b:1649:: with SMTP id il9mr2096559pjb.62.1612341126224;
        Wed, 03 Feb 2021 00:32:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612341126; cv=none;
        d=google.com; s=arc-20160816;
        b=HB5RydmMW0TmlRV+a9G/pRyBYPoq7X+uIMizMjo3FUnWySAO1DFwoVMYvsUGo6+Bxx
         lWp+qa/26tInm63h7TwSn3uM4whFe6I6RZcWQ82gQLywNno1MOp3Lne2hK17BbRtvXsQ
         Bin3Y4hVtMB1dXVHj6VJsL5yjCpc1b3Fbx6PIVAu71P508lhpzYHs8ib3dPWUFdGk8p5
         WfjH+TFk08FmoWB/eVeVyFAO1VM4t3Qcro7raFCGA0o+QO8Lmq9sW201GznGMFRrH8K6
         X0k/9zSs86UlRnrjw3RjkyE18WvoXRW3Qv1jwP7N8N3aKqbnb7DCBUwu6+d4NTskNsOM
         v6dA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Xl7tdjaRBbAIoUBy33ehOqMQfuVpZM9WRqZuHrL1130=;
        b=IAHUnuGyWCMdo1w/uAR3vQ/ashKFC24o42lwnhsUl/OTbcGNYf6mfloh9MZlAqy0yp
         uQyjoz+JWPgL+GRH6fvbUl70DXrM+Liso7kJOOoU32LNrjJHbLQ0KFBABKcLgasybnZW
         w+C9k1sUGnOc82++gVceOM9moyiWhng+oRuO6oTB1V0289GL/EC0ZmsIaG136FB/0ku1
         FD4oj2RPEuGvF9bCmW9jdZbt/XEb+NNfUH0eW6chN2DspqdK7sDfhfAxcoJcw6cBJYNL
         AGoySNW+mNRQp0eVSHXa/h+ajeN0+bRo4ZTcy5EKzCIIzM6wR4f1bFbyKnkN00tVWWNq
         dvug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fYoUbYVI;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2c as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2c.google.com (mail-io1-xd2c.google.com. [2607:f8b0:4864:20::d2c])
        by gmr-mx.google.com with ESMTPS id t25si35220pfg.2.2021.02.03.00.32.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Feb 2021 00:32:06 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2c as permitted sender) client-ip=2607:f8b0:4864:20::d2c;
Received: by mail-io1-xd2c.google.com with SMTP id u17so24389345iow.1
        for <clang-built-linux@googlegroups.com>; Wed, 03 Feb 2021 00:32:06 -0800 (PST)
X-Received: by 2002:a6b:f112:: with SMTP id e18mr1565166iog.57.1612341125809;
 Wed, 03 Feb 2021 00:32:05 -0800 (PST)
MIME-Version: 1.0
References: <20210203075239.5505-1-masahiroy@kernel.org>
In-Reply-To: <20210203075239.5505-1-masahiroy@kernel.org>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 3 Feb 2021 09:31:54 +0100
Message-ID: <CA+icZUW-uObu=7xpqUqKTASmBfEgLKMrKgmR_uhmHBN-EwpBVA@mail.gmail.com>
Subject: Re: [PATCH] kbuild: fix duplicated flags in DEBUG_CFLAGS
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>, 
	Andi Kleen <andi@firstfloor.org>, Ian Rogers <irogers@google.com>, Mark Wielaard <mark@klomp.org>, 
	Michal Marek <michal.lkml@markovi.net>, Nathan Chancellor <natechancellor@gmail.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=fYoUbYVI;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2c
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
> Fixes: 121c5d08d53c ("kbuild: Only add -fno-var-tracking-assignments for old GCC versions")
> Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

That fixes the issue for me:

Without patch:

... -Wno-unused-const-variable -g -gdwarf-5 -gz=zlib -g -gdwarf-5
-gz=zlib -pg -mfentry ...

With this patch:
... -Wno-unused-const-variable -g -gdwarf-5 -gz=zlib -pg -mfentry ...

The relevant Kconfigs:

$ grep DEBUG_INFO .config | grep ^CONFIG
CONFIG_DEBUG_INFO=y
CONFIG_DEBUG_INFO_COMPRESSED=y
CONFIG_DEBUG_INFO_DWARF5=y

Latest make-line:

$ /usr/bin/perf_5.10 stat make V=1 -j4 LLVM=1 LLVM_IAS=1
PAHOLE=/opt/pahole/bin/pahole LOCALVERSION=-4-amd64-clang12-
cfi-pgo KBUILD_VERBOSE=1 KBUILD_BUILD_HOST=iniza
KBUILD_BUILD_USER=sedat.dilek@gmail.com
KBUILD_BUILD_TIMESTAMP=2021-02-03 bindeb-pkg
KDEB_PKGVERSION=5.11.0~rc6-4~bull
seye+dileks1

Feel free to add my...

   Tested-by: Sedat Dilek <sedat.dilek@gmail.com>

Thanks again Masahiro.

- Sedat -

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUW-uObu%3D7xpqUqKTASmBfEgLKMrKgmR_uhmHBN-EwpBVA%40mail.gmail.com.
