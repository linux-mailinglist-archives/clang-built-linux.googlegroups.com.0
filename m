Return-Path: <clang-built-linux+bncBAABBCXKV32QKGQEOTR7ACA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93b.google.com (mail-ua1-x93b.google.com [IPv6:2607:f8b0:4864:20::93b])
	by mail.lfdr.de (Postfix) with ESMTPS id BB3841C0DBC
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 May 2020 07:35:07 +0200 (CEST)
Received: by mail-ua1-x93b.google.com with SMTP id v10sf1277811uae.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Apr 2020 22:35:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588311306; cv=pass;
        d=google.com; s=arc-20160816;
        b=v78bPN5YomwqShAKb4ffIIEGqqe9V+0pOoN1oeQ0GIQ23IRddFd3Ulv7Kb7s6iRdWP
         CChxxhoJI+zsWdrAIJIiQxNR6laPKvRgCXs8+7wYIrqYibpgV7lY0rIJHZ9YL68o8/NY
         vBau+GVQrykZfQsqY6tNEvOsUnG7TuLC9jsVzQTI1BQjQu0ARNNxOnTw2h0AatIycfER
         gK2PgkLwZoBhqNb64MOqNVpfnF9Oksm3PTEaYBQ2TB3dqipJYn6i+gFmL5u8T97694oU
         0JzKXaH4W2yGD2yN6OXGup4crzkBeU3x7pEhnMxPrs6ZdkBLV4O/MQ8ciMtGFIYEX0pd
         73Pw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=TItgjJ6LtKz6zPpLlpSk+l5wXdeg3Vg/s/Buow9t05w=;
        b=kOuXwqfi5n9EamE0eBWgSYIYb0e5U+77smk7iebYnvB5mnjokgfbmbFl0WNzJ0xEYS
         A2rQAWe9xzLzfGOX4OB96l3O54/n2S7r5I8TXORkBS4Ti4vGZ4b3QiWKijBZq988XIxY
         SWeRbbZiAekPw2ua4Cj0uSCZtm7lUnaJkwFl4YsfeFRjhTiZVH+tORqRn3rP6jPcddz5
         qloCLBKA7lITudJ24EOsrN3N8YXFBe366v0jhjDa6rOweqk9li7PSd7ZBRLDxGzl+gXu
         sUa45LnJL9SWlft1CfJpf8+dxRHthac+qmhJTho+Is9FWmI0ncf+LvyJI4rxBFNuPlgS
         +cDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=xb1tWHX+;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TItgjJ6LtKz6zPpLlpSk+l5wXdeg3Vg/s/Buow9t05w=;
        b=GQkNcdKRV8O3Krn3Piu9wmymDy3mGChkihb7yL0LGprWVxO2Z3+LbTAiQjfCognjZR
         xn98VcUFxH0m7H98CVTRVPkai3eCF2cBsG6+jUrcOVITKYM6evgfl1bc3KipU55egQni
         gBoelGTWvt6qAGKPPvIXVdFIhF5vJQ6I5ic4TelQ5VugwqRXbrXAjRa3VNYL14EfFL3y
         VFfyU/rbh45KYJ5KUBjLpwtnKgbdZ+Km6aBhQA+jptIjvrHLnw5gCEF2xlD8UeOD2Q8E
         8sIhURVG+30vGc68JFfcm5+6yWmxqA7dGUYKS8aDmEhhrAW57ebgB0vniIagHCWolA35
         0XCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TItgjJ6LtKz6zPpLlpSk+l5wXdeg3Vg/s/Buow9t05w=;
        b=i53HBHw5THfWZAxbYId5I6lHpL3RRZfPShSvPywxSKDjimmoL8Auu2bk/sCiQd8I9N
         oskD+ceIPY9GPDIHi7KqaYcUlSarDNCuGr+4qoa3uHSqYwH+f0b1TcrwIKlmop7He3N8
         d5j9huYcCeOOkHS+BQb6tizhmJBegNXX1sF22OvGjfHGn35ybKsiAfyEjANewpagC+pR
         VJ3cFqDUbU6CEKPqXu73UULrGs2CL1HrR6Dfwzj3x2Z05XSQbJeRaD8nJLu5cvw/0ug6
         mPPLwUfIBnnf4uqJfGIWAK7J6kj7zJJ/Y4QD1b4+5JWyR4kCwIGatRrmdlgOdIDNGpdh
         OUrA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZ1RycaFfMNEUhNweMnIn0n9x3d7gCga2jwsfYtK0reG7CJNjBg
	a80MGSTHRFWIxOnEJPXAjsA=
X-Google-Smtp-Source: APiQypJpgDIDUERI6p2DmJZ+LLJ1wfoWPcWMxYgZChtaMfhUTUc2AcuqDEhgPpi7gcdGzPNd90Ku4A==
X-Received: by 2002:a67:fb4c:: with SMTP id e12mr1972296vsr.79.1588311306611;
        Thu, 30 Apr 2020 22:35:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:5a87:: with SMTP id w7ls761129uae.6.gmail; Thu, 30 Apr
 2020 22:35:06 -0700 (PDT)
X-Received: by 2002:ab0:4165:: with SMTP id j92mr1758213uad.127.1588311306313;
        Thu, 30 Apr 2020 22:35:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588311306; cv=none;
        d=google.com; s=arc-20160816;
        b=PvNTSuqkrMp4Luy9+ue9J747mHu1WavI9RIBbqT+Htb7KgrvHiNnkV3hhfeWTOYLiF
         JcdDdag3B5DzEHRbCKznTxKrCyCxtAF9MPrCL7/wTn1y/zhjsfYo35tPLa/Wm90s6KSk
         QM4U1mviPjkP0XiciOSPr6bHjV+Oesz/WiZM9lVX0114I/QDjGf1ib+BUK7fbYz4DBJa
         nq8Af/CZ4s2ua6f3bFvTblpvNhWbM6nu91CJLWtAd5Me9SAvk7ryeIDbe+OVXFcbfnB4
         U543A9EwLMWwt93340cnNCtXDsIKD/pooOV7LLc9wAqndB3/wELX6nfSU5z831pnByvB
         LotA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=UZWM7i0RZnnhTnaPc+bA3fPcd9baVcIj+Fep60CTyUs=;
        b=ysXr3qaHbqS+H3+uyzJ94KmJJtBy84sMtVw7mhnVWb13GvKtCumFxQ16MDi3xW8LmP
         maClKcjcICQdW6QTvTbXHPb5I6fBCnmOVHYCFpp7MvFMSXUMa+PRJ2TVld4uKJRMbwvp
         fO2GawsOHHT/LaiWK1I26qWmStmkRcAgOoOPECFjCGPXv/7Xz78/VLB7IvSK/d4euHJP
         Hye8AgmSzgXhzx7YXRRRYfIBuXRXFmkzUx1VFtGJNfpsbhaYjrGMjAgybHOvFYUoCkWa
         LguQqAbNYfn2D7yAqN7TTM07hTmWPFWF7++HmCYwb9UJM12x/VyACPWJgQS0Nn1Eq3D3
         Obng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=xb1tWHX+;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id i26si192165vsk.0.2020.04.30.22.35.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Apr 2020 22:35:06 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-vk1-f169.google.com (mail-vk1-f169.google.com [209.85.221.169]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id 0415YlDW006054
	for <clang-built-linux@googlegroups.com>; Fri, 1 May 2020 14:34:48 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 0415YlDW006054
X-Nifty-SrcIP: [209.85.221.169]
Received: by mail-vk1-f169.google.com with SMTP id i185so2466136vki.12
        for <clang-built-linux@googlegroups.com>; Thu, 30 Apr 2020 22:34:48 -0700 (PDT)
X-Received: by 2002:a1f:d182:: with SMTP id i124mr1573782vkg.26.1588311287171;
 Thu, 30 Apr 2020 22:34:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200423142354.312088-1-masahiroy@kernel.org>
In-Reply-To: <20200423142354.312088-1-masahiroy@kernel.org>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 1 May 2020 14:34:11 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQH07KvoCgv5B8jUs+EUsJ167omM1U2AWHKdaAB+nAMCQ@mail.gmail.com>
Message-ID: <CAK7LNAQH07KvoCgv5B8jUs+EUsJ167omM1U2AWHKdaAB+nAMCQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] kbuild: use $(CC_VERSION_TEXT) to evaluate
 CC_IS_GCC and CC_IS_CLANG
To: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=xb1tWHX+;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Apr 23, 2020 at 11:24 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> The result of '$(CC) --version | head -n 1' is already computed by the
> top Makefile, and stored in the environment variable, CC_VERSION_TEXT.
>
> 'echo' is probably less expensive than the two commands $(CC) and
> 'head' although this optimization is not noticeable level.
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

Applied to linux-kbuild.



> ---
>
> Changes in v2:
>   - new patch
>
>  init/Kconfig | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/init/Kconfig b/init/Kconfig
> index 9e22ee8fbd75..5f797df3f043 100644
> --- a/init/Kconfig
> +++ b/init/Kconfig
> @@ -9,7 +9,7 @@ config DEFCONFIG_LIST
>         default "arch/$(SRCARCH)/configs/$(KBUILD_DEFCONFIG)"
>
>  config CC_IS_GCC
> -       def_bool $(success,$(CC) --version | head -n 1 | grep -q gcc)
> +       def_bool $(success,echo "$(CC_VERSION_TEXT)" | grep -q gcc)
>
>  config GCC_VERSION
>         int
> @@ -21,7 +21,7 @@ config LD_VERSION
>         default $(shell,$(LD) --version | $(srctree)/scripts/ld-version.sh)
>
>  config CC_IS_CLANG
> -       def_bool $(success,$(CC) --version | head -n 1 | grep -q clang)
> +       def_bool $(success,echo "$(CC_VERSION_TEXT)" | grep -q clang)
>
>  config CLANG_VERSION
>         int
> --
> 2.25.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200423142354.312088-1-masahiroy%40kernel.org.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQH07KvoCgv5B8jUs%2BEUsJ167omM1U2AWHKdaAB%2BnAMCQ%40mail.gmail.com.
