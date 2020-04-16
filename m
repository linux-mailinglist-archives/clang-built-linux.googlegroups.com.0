Return-Path: <clang-built-linux+bncBDYJPJO25UGBBKH24L2AKGQE32APCGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id A2F671AD0F4
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Apr 2020 22:16:41 +0200 (CEST)
Received: by mail-il1-x13c.google.com with SMTP id z24sf76819ilk.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Apr 2020 13:16:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587068200; cv=pass;
        d=google.com; s=arc-20160816;
        b=HhoNMn+UOGPB3mCNtwctsx2sxZ10gjgpHNUxdHcjUAA8S1glAtWvaUjm28dyZIP8V3
         YK06OBF1CPhwqyPGk7sG1Ki6hG7RTk45IzWZD1X2tPQoOySCBMbPMXME0EjcbR7dNrsm
         tDVjmwjldL+z68hfdVzX/lw28tqlAottmPQCzRAlI5LnzDQaPajlsgg15Jwhyn+y7FZT
         26ZnuENjVYauNuZfFeC2+NlblzPsUfzJYcejOwqXHfGvXI7jWsrjWa8JkIUIHUE6+K91
         2lHAaWyTDrYhCNuzylnVb9/U0mESWuwh3Ijc9KWC/dFmGvvznS95f//3/C2oOPzslbMR
         8K8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=2kik3WGQK/GnfGpZEfUhPqjdk2PhWgpWBkwNoqHR+VY=;
        b=d7LcUPt6eg5iB/IACAr5H3MNLqBN4DPFOovHk7EdliCwAKVlv2T4V+miHI0O1V/ZPF
         GmoD49m41B5+sz1IKHmt8fnJEW+i8PLrT2b9aHUfMbo4qBZcu+Jt5c2w4t1fbZycf4Bi
         GjCEzyeZxcVDAD9spIDn+Guq3KfwgJkS348ob3ulIHb9+W7eM+aZGYM/9nuiatsd+hYJ
         ODAGQYQ7SR/Xla2GX15z/JdpzoxHMEfp+xOoHgXTxMhV0zLmyMGHlCdhmxBtNhREFyXW
         Lgn4+nO8O35oojiJsSUlj442/aoooyCRlvg/Zb3XN3Hx0DuIhYI7jic9DA+CAMEdakzF
         rCuA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DiLrCwPu;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2kik3WGQK/GnfGpZEfUhPqjdk2PhWgpWBkwNoqHR+VY=;
        b=jgYzAIgShyiVDoL9ymN2n1OhAGIG/08iuaROodnHW43G06yg4dVMMBNIGqg+Ntv4EC
         t6jmnJNax3EDuK4QVVo9WzZO1cKhqBLCsX4XF8AsSosbSfinbfSocieLAU2DRml6kzYz
         HBkBeNdRwQJ2zUkpUM8hs+XDc/cVvypVbuPQkwhXKUqixLG9esKqajxS5P04VtB7AStM
         9GjQskAlSlbkMZVV3Lya1UKnYr83z9sH/4gvNaiTiYx8AxqZuSq3aWy/mZQEKAZhKr23
         yP6bBnx7QS6wrduwUoWIXOa8yEhuMxFwFldIMbeEakDxtv23s7dNalOrr9lAh0dGjjU8
         XOOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2kik3WGQK/GnfGpZEfUhPqjdk2PhWgpWBkwNoqHR+VY=;
        b=S5aSSwn2131PUuUR3xVtJuNdWoQKu5tv2+bfDZjAM6NXVMtaxh99c/liB6a0uilrK8
         Zct2oc4M0jVCO2Yk+NvshbwmrVeAo9KtMDmPKg8Up/5xrdTC7sFPlvRRSIdlkwqiEd93
         LTplyzZ7YmyBs/HAB69QWMSDyTi14SyMipnsnFixt/HnFZgFYtIABKyDxbhJJfKmSHpO
         B5qAJgi04KE/mCiRhxmcVnG//dTpZFvjFGXypS2U9ebEItaAsQ/8p1qEZaX3DKjrZNzC
         4rabYC0JAvthinb64djB9wtgVPttw1uRLs4OyJhATWMTCG2+/fKWZ8uvgOj1h5HH+eGR
         7BYg==
X-Gm-Message-State: AGi0PuYIDeeGXrJO59AliYCpZAx5OvK4esTTa2ApDqmnMYkUeloj6wov
	+Bm4ABb2ieYcRc9agNWtsT4=
X-Google-Smtp-Source: APiQypIB12hTR1AX9bK5+H6hWX8jBZrrb1Rd6gQd3HaYo3FbHOIwPZjMWFhHTeQAduxStAn7ytEp3Q==
X-Received: by 2002:a6b:510d:: with SMTP id f13mr18249172iob.25.1587068200609;
        Thu, 16 Apr 2020 13:16:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:c84c:: with SMTP id b12ls5626444ilq.5.gmail; Thu, 16 Apr
 2020 13:16:40 -0700 (PDT)
X-Received: by 2002:a92:aa0f:: with SMTP id j15mr12447409ili.211.1587068200283;
        Thu, 16 Apr 2020 13:16:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587068200; cv=none;
        d=google.com; s=arc-20160816;
        b=XngzwlOP1IQCKQWKfrNqLJV2CLqczrJ71kBsJbuRF4eKgyRCC/zkA999yZchZ0Qv0p
         m0Zbz42Aso0AliaLwhHTwQiBaso5d6ShUZRTFuWPezDQE7WhoDQAvFYG/6+n5raUpu9b
         9cWoaq8vUKU5A+60RIafT3+iIrvd+RswN3tuYCxdNPsvaLnY2prdKBmqTVP1bBTuNyR6
         D/0zHJyafX85d7rCookdKQaXAeqHBdT/XgXSK9Z57qeeCRiTeRiTAJzvsG7CzBUOXTQ9
         Ys5+jw936cb92Akj8GzvKZVq9UEsKYMT9dlcPAsxi5tk7idNPjgi4++nTy/JxYydgiED
         TRNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=vUAOCtCt8du7Os+3vw2Znw14Nonp2UoTlR0pT/AkghM=;
        b=Hg/FtJOFmBQWjINjNjVLsslkWSoFYMWFZa4fenT3zQTvZsOdpkSJObe9CdO5QNnWHb
         JVnlNpu+ttRPL9/ZMyH9QuF6c4S8l6JMtYvSZJpa3zfjvIjtycRYjOpZ4mQWOq3Z41AD
         gl5SyDaGA5606S7ToKal+A6JZNqfEOif52SC5Imj9H+SH38ZE92a0AqEKLUBzw8gUU5u
         Bf4tMMj7zGiNR8tmkOSzHwiFo0IM1dXpQDN90BWMi3fO9KxUgR85JQMYPhh6ptpNf4mp
         H2HpcJmq7ixgJmwEtTq1GxJKD6apfTZyr6c9DU47hoF4l4/YxRtW9E7I7+9eEhBBw6VL
         UBwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DiLrCwPu;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id v22si602992ioj.2.2020.04.16.13.16.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Apr 2020 13:16:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id r14so960937pfg.2
        for <clang-built-linux@googlegroups.com>; Thu, 16 Apr 2020 13:16:40 -0700 (PDT)
X-Received: by 2002:aa7:919a:: with SMTP id x26mr34178999pfa.39.1587068199267;
 Thu, 16 Apr 2020 13:16:39 -0700 (PDT)
MIME-Version: 1.0
References: <20200416182402.16858-1-natechancellor@gmail.com>
In-Reply-To: <20200416182402.16858-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 16 Apr 2020 13:16:27 -0700
Message-ID: <CAKwvOdkCMsDUGK88xGqfsA5Nc1eNmR+PbLBoHE0dv65aimcJyQ@mail.gmail.com>
Subject: Re: [PATCH] mmc: sdhci-of-arasan: Remove uninitialized ret variables
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Adrian Hunter <adrian.hunter@intel.com>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Michal Simek <michal.simek@xilinx.com>, Manish Narani <manish.narani@xilinx.com>, 
	linux-mmc@vger.kernel.org, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"kernelci . org bot" <bot@kernelci.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=DiLrCwPu;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
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

On Thu, Apr 16, 2020 at 11:24 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Clang warns:
>
> drivers/mmc/host/sdhci-of-arasan.c:784:9: warning: variable 'ret' is
> uninitialized when used here [-Wuninitialized]
>         return ret;
>                ^~~
> drivers/mmc/host/sdhci-of-arasan.c:738:9: note: initialize the variable
> 'ret' to silence this warning
>         int ret;
>                ^
>                 = 0
> drivers/mmc/host/sdhci-of-arasan.c:860:9: warning: variable 'ret' is
> uninitialized when used here [-Wuninitialized]
>         return ret;
>                ^~~
> drivers/mmc/host/sdhci-of-arasan.c:810:9: note: initialize the variable
> 'ret' to silence this warning
>         int ret;
>                ^
>                 = 0
> 2 warnings generated.
>
> This looks like a copy paste error. Neither function has handling that
> needs ret so just remove it and return 0 directly.

Forgive me for not taking the time to look into this more carefully,
but just a thought:

Having functions always return a single integer literal as opposed to
having a `void` return type in their function signature is a code
smell.  Did you consider the call sites of these functions to see if
they do anything with the return value?  I understand it may not be
worthwhile/possible if these functions fulfil an interface that
requires the int return type function signature.  (It's also probably
faster for me to just look rather than type this all out, but I saw no
mention of this consideration in the commit message or patch, so
wanted to check that it had been performed).

>
> Fixes: f73e66a36772 ("sdhci: arasan: Add support for Versal Tap Delays")
> Link: https://github.com/ClangBuiltLinux/linux/issues/996
> Reported-by: kernelci.org bot <bot@kernelci.org>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  drivers/mmc/host/sdhci-of-arasan.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/mmc/host/sdhci-of-arasan.c b/drivers/mmc/host/sdhci-of-arasan.c
> index 16e26c217a77..18bf0e76b1eb 100644
> --- a/drivers/mmc/host/sdhci-of-arasan.c
> +++ b/drivers/mmc/host/sdhci-of-arasan.c
> @@ -735,7 +735,6 @@ static int sdhci_versal_sdcardclk_set_phase(struct clk_hw *hw, int degrees)
>                 container_of(clk_data, struct sdhci_arasan_data, clk_data);
>         struct sdhci_host *host = sdhci_arasan->host;
>         u8 tap_delay, tap_max = 0;
> -       int ret;
>
>         /*
>          * This is applicable for SDHCI_SPEC_300 and above
> @@ -781,7 +780,7 @@ static int sdhci_versal_sdcardclk_set_phase(struct clk_hw *hw, int degrees)
>                 sdhci_writel(host, regval, SDHCI_ARASAN_OTAPDLY_REGISTER);
>         }
>
> -       return ret;
> +       return 0;
>  }
>
>  static const struct clk_ops versal_sdcardclk_ops = {
> @@ -807,7 +806,6 @@ static int sdhci_versal_sampleclk_set_phase(struct clk_hw *hw, int degrees)
>                 container_of(clk_data, struct sdhci_arasan_data, clk_data);
>         struct sdhci_host *host = sdhci_arasan->host;
>         u8 tap_delay, tap_max = 0;
> -       int ret;
>
>         /*
>          * This is applicable for SDHCI_SPEC_300 and above
> @@ -857,7 +855,7 @@ static int sdhci_versal_sampleclk_set_phase(struct clk_hw *hw, int degrees)
>                 sdhci_writel(host, regval, SDHCI_ARASAN_ITAPDLY_REGISTER);
>         }
>
> -       return ret;
> +       return 0;
>  }
>
>  static const struct clk_ops versal_sampleclk_ops = {
>
> base-commit: a3ca59b9af21e68069555ffff1ad89bd2a7c40fc
> --
> 2.26.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200416182402.16858-1-natechancellor%40gmail.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkCMsDUGK88xGqfsA5Nc1eNmR%2BPbLBoHE0dv65aimcJyQ%40mail.gmail.com.
