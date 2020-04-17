Return-Path: <clang-built-linux+bncBDF57NG2XIHRB4XO4X2AKGQELUAIV7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id 210961AD9EB
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Apr 2020 11:31:32 +0200 (CEST)
Received: by mail-ua1-x93d.google.com with SMTP id y11sf675321uaq.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Apr 2020 02:31:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587115891; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ll5nQrJgjw+R9/FJTZryI7wRkUjBoSHhwxp7hEpRRgUSITXT+woOXTAfXOXgHFgbkP
         1i85u0+xN5sBBm8FsMSgBfcJ78nvlOJYDvUsGVmeMiJ7wbOMD3EsMPrqqGgZYpBx+zk0
         FMaMKwCPZN0AkrmRKh33fEvN2lr7NmrwJWx6fPFVDhNaCEHdl5hU+W9EW+j64+6whfZU
         vGqNHMYcXns7tAjrfwIAprinDGBL9g4bYiU1fiWe5l6O4VBu1UJvmZhp9UTlvEraA5eV
         BiHHMaGTjZKAY0JxpZk16g0ZLcCMNPgzAf9hPF6OEA6NNL419tk0iV010AhCTIqLItRl
         zvlQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=qSKVhFRdlBZ9S6/8kTFSwkV9UTodVWXeg+9hUbrseRs=;
        b=NR+mE9iLszUgZ5Oq3sT1IqxxfeaTnwtWXIA3Y8VsYbu1Mfjm8MbOvKb5DihR5A50uh
         90fAPVcaz/xRhxuyr/2SPUEQt98h0dCGC10lXL/VTk3hU6l3TJQEb15Phe2C9j5xruI8
         qhgsiAA9VHebjx++QXtZtbhL36Fvwdbri/HqzRwsTvyhjSh46T/WhpI1tA5lOVBWwlL1
         urJqF1DdDjUNZEZhtfHG5himMQTdNY+PL+0vIWJwjbQ/SjmFYTtpgW1DOy2fweVqoSRk
         sFqlD0eFYVGog3YyZ07b45IPh2tNqX0OOARGtj5R4L37DvIDdqROYsA2WkILO/kcxDTJ
         gGfQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=By0UkC0U;
       spf=pass (google.com: domain of ulf.hansson@linaro.org designates 2607:f8b0:4864:20::e41 as permitted sender) smtp.mailfrom=ulf.hansson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qSKVhFRdlBZ9S6/8kTFSwkV9UTodVWXeg+9hUbrseRs=;
        b=dpTRtY3MxZGgTqAvy9+QN52UfxSYDOmFurqiF5JYBdrzl1XQNvFaW3Kf38mc/47vKI
         DpYJDFZq/874hBdqKdH7hDZz8VhkRbtu8ODZ5sJAwikvVjM1zK7rJ0D/QUZddyWgbb78
         Gnn+OsiUpOiQ1UrhZ9KwjlJdyJzo6mty1WlA1d/LtSJfuEcqz22yQ6lPKEZ/H0LkLTUl
         I2cFFEfdYvLTgC1SPj5WTebGD6eN6daf6QsA47MB3Q40ABWEht55EtWacUSpQhQuJpBc
         OGrypUZvFoYokHVOp5/hGfimnkhEdsmfRAhDLiH2+7nVoc9Y4xRKQKYnSjqAA/OkNa+q
         W5IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qSKVhFRdlBZ9S6/8kTFSwkV9UTodVWXeg+9hUbrseRs=;
        b=tn14mlrH539AK9BjtU97IIBSn2oCMnnrJ+z3wwZQYuHz49xRH7k4a3rY/kAxs3VTpa
         XCtfZI4OXdd3L8IcdZmdjLMHAdV5Vkt8jQPhkILJ/EEXB3MKWobWnmMWi0B/v/6smZsa
         oaA70AHnwSwg486rwWNtg87aCI8l6Qx/odidKmkqKBjwFTxm46ywpP20z8FOEsKlIyOT
         Bz2I5nrAd59C/0HrxMtfiezp5febjCR9Yr1+SPglrycAmCRlBfARH8POhDhe6F8uWKWr
         uq850neQq5jYSnK2nuudoCJVcFFx0BS56afNyaXu8Mj5rmwuGY+qiBpVSfTpfq91sRFU
         tTiA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubQ/HuDIVmo8F+U4MSEvQEs8zJR462Jo/IWfPmJ/ORZoQhDnL+D
	dXRQ5eXjil5/ZEkyrtrZgBw=
X-Google-Smtp-Source: APiQypK7rFnh4J0nmVkZqN6MbbKGm+kRaksGqAzIc7zdMfn9uwlJoR4SSp9Iu8NqaOdJQ0NnVNS0vg==
X-Received: by 2002:a67:6c05:: with SMTP id h5mr1570721vsc.164.1587115891102;
        Fri, 17 Apr 2020 02:31:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f88b:: with SMTP id h11ls238770vso.3.gmail; Fri, 17 Apr
 2020 02:31:30 -0700 (PDT)
X-Received: by 2002:a67:6282:: with SMTP id w124mr1224630vsb.160.1587115890559;
        Fri, 17 Apr 2020 02:31:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587115890; cv=none;
        d=google.com; s=arc-20160816;
        b=yICTudD32Gu+u2vytjDB7N7fLeRsEFpqIAzvYrFlqpbi25MR9XcKuZDV885l61GCQa
         m8WOC8JQkGglSFyi48zHp+nQRbaQiPWoCFIvAoy33I2lPUOjCoTEdKcRF4L1ixKg3EHC
         rErMuTQqNZZEJcvOnPjkNA6OcmuNCBNeQsVzWccS2Ik2Iyv+oQNhqxGTcU/c6He1vgy+
         pLTn8x232RQ8XXv6VyWgSN32tY3aBJsYQfQ0oNi8cKFd5UpEvOHaKUgrigKlFzJMmJcM
         Hji5R719TP6KU7njeGHf+qPFiKWergHIMTFck6v8F8dyKk3sHBRUPAYpZzsjWNtTERgP
         XupA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=p64gz4wBBzrCn9693S5Yg9rZbwKOwkix1v4fg68Kaak=;
        b=SSd8rkk3kx0mENmppjsDpUMNocTErl27M6FPg8aBwoYipvYUCa7I7vx/v+NvdhALbw
         pWrnwZWA/X1D3Iz+xcnpcvdoMqLxTkt3gIwVnCqcT7y46g2sEwS9SbKL40pk0gyru63X
         +Bk4kSAyTw6BqRCoMZa4X3qXRaN4fo5V4pn4UTQloZEpMc1sH0dfQ9tMPFuA8TKlh6Bk
         D18GFbB+LuSBxsjUv5Yctpb4pSwxk7Wz/n6TaLW5d1b6+fVjjt/aRJ5/q18Xq5/XZ2AD
         QlZBpe+zNoi3Krrdz/cQ5Jfz2A6p9OWBsEj0KnxQSJffBOvq31ho9rzfwtPO9dD6+cy7
         Xrfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=By0UkC0U;
       spf=pass (google.com: domain of ulf.hansson@linaro.org designates 2607:f8b0:4864:20::e41 as permitted sender) smtp.mailfrom=ulf.hansson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-vs1-xe41.google.com (mail-vs1-xe41.google.com. [2607:f8b0:4864:20::e41])
        by gmr-mx.google.com with ESMTPS id p7si604987vsf.1.2020.04.17.02.31.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Apr 2020 02:31:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of ulf.hansson@linaro.org designates 2607:f8b0:4864:20::e41 as permitted sender) client-ip=2607:f8b0:4864:20::e41;
Received: by mail-vs1-xe41.google.com with SMTP id z1so745115vsn.11
        for <clang-built-linux@googlegroups.com>; Fri, 17 Apr 2020 02:31:30 -0700 (PDT)
X-Received: by 2002:a05:6102:72d:: with SMTP id u13mr1392649vsg.35.1587115890241;
 Fri, 17 Apr 2020 02:31:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200416182402.16858-1-natechancellor@gmail.com>
In-Reply-To: <20200416182402.16858-1-natechancellor@gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 17 Apr 2020 11:30:54 +0200
Message-ID: <CAPDyKFr4VX-3Z=iboMbDmhJvwh+GL5wg_50aPw+_j5jMLBWctg@mail.gmail.com>
Subject: Re: [PATCH] mmc: sdhci-of-arasan: Remove uninitialized ret variables
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Adrian Hunter <adrian.hunter@intel.com>, Michal Simek <michal.simek@xilinx.com>, 
	Manish Narani <manish.narani@xilinx.com>, 
	"linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, clang-built-linux@googlegroups.com, 
	"kernelci . org bot" <bot@kernelci.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ulf.hansson@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=By0UkC0U;       spf=pass
 (google.com: domain of ulf.hansson@linaro.org designates 2607:f8b0:4864:20::e41
 as permitted sender) smtp.mailfrom=ulf.hansson@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Thu, 16 Apr 2020 at 20:24, Nathan Chancellor
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
>
> Fixes: f73e66a36772 ("sdhci: arasan: Add support for Versal Tap Delays")
> Link: https://github.com/ClangBuiltLinux/linux/issues/996
> Reported-by: kernelci.org bot <bot@kernelci.org>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Applied for next, thanks!

Kind regards
Uffe


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

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAPDyKFr4VX-3Z%3DiboMbDmhJvwh%2BGL5wg_50aPw%2B_j5jMLBWctg%40mail.gmail.com.
