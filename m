Return-Path: <clang-built-linux+bncBDF57NG2XIHRBPNKW75QKGQEPTZRK6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D9532785DD
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Sep 2020 13:32:14 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id o60sf824169ota.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Sep 2020 04:32:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601033533; cv=pass;
        d=google.com; s=arc-20160816;
        b=dwJ4m+3UVC8QiwEywg/7vZYM/kxzl9WdxpQGkflVZFbiovqHEGJ6DW/V7sCDnNaW0G
         whJ0VVQVlR2xtyec8eISzZ5DF7ce9Asc3TDfKaU7meqHEWALP6cjaj5HVsooc0MjgA73
         Z4HtWl9nE6KUHUMCOC0x1Nev22beBwG/2Bn/8ehJ7HTQ3RJWPIof7T0MpNljJs6Bl1zo
         xnbGrcNOiBzV78Md/AWpEMS9Hnqw8e2Zaoz7ghkOXHsenSFB8T9rYbH7ldf/baf2XTtk
         1sb/wPdEKmUlDP5ECbmB1iopl8SS124xQk1LSB5CqpPnVncrqfT0/7wKNyJxf01+SCat
         872w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=7xGnufeaNMSAJ8M52JMWESFOzhQll5UbdU/oWQ8lz94=;
        b=eIBGKJ1H+CHIgh+xH71Y9W3tuuq9MsVdYA6Fwi6WidUUd+1RbIPKb1ww705423KkeK
         dVmzt+lFEuXd6xjbppIoCBSK/42oJEhf6uslmvn2+mdG+jevvAmLCzJ+71fZTFK7k+tB
         P5e7OL9CpZc3hah7LUSsoCewaNNGrS1uGIXIQiyowB9qMxw4Spn3f7ZMmd5ARA5ph6XR
         U21NBV2ZXFMByBLmIjgTrB7AsiF0vQQEAkR4NT/z2B2Q5biRRPLQP3RXGo/g54Qg/544
         +s3rRShhOxFRy8R/MHOfXvVrfn7IIa8IwNN01pY4ZUqa1Ey+qDpnRIukpwsOnjcPSO/v
         bngg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Lp2vK2rg;
       spf=pass (google.com: domain of ulf.hansson@linaro.org designates 2607:f8b0:4864:20::944 as permitted sender) smtp.mailfrom=ulf.hansson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7xGnufeaNMSAJ8M52JMWESFOzhQll5UbdU/oWQ8lz94=;
        b=JQHJdmY7O1zYmAgc8QdH4wS3niF6kpD5l3HXuYXa9+a3ahHxEOX5cY2HhTYaBDS7ui
         awJH2Qjpf1xnmuhnpEToddEH3VtPWJqRs5ePMIL5xLhyqyzNaN8jnJ8/3PJrc6QxjSdw
         bgnSEYLL8+0O7UyVgSYnmeGW5noNR7NHEvhsHz40U5r1v+vqTWcTR5ggCdYubZZEvu5y
         P/qg4OduogHQMrs3X+3ufgATIC4jHhcPIpMPbydFTSRN2PzdyrFJdqAhOZaBY2i9QZW6
         MpUikcgiGKRa39KHElCU2TvmOb1gu5xxWltC70uGGD5nH+BEaGCM6glIEZ1qL9w9tnAc
         Cttw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7xGnufeaNMSAJ8M52JMWESFOzhQll5UbdU/oWQ8lz94=;
        b=DPY+hfsMNoNVZ0RBfgxDMmglm4qZbfGS+7rXsg/tqA8XD3CsIW3e9tkPeElGb7XHe4
         8dpDk4oyj3BLylY1NWuVIK/cbpPGj0O0LQMXT+WR0nA9senxFMQtdLDjslRWGKrnT0Oo
         EBaHUj2KyXeKtYACXEI19wok57pyr4j0F6bbZ3qie6v2rJnnVJK0mRy9sDSfYY/BB7FC
         OuVIXkCT8ZmEk7AkjFq8xg1rFnuAogI7GyOcJMiC7WPVbmZBuif/8NB3HnZFzkELERsa
         oS5BuT7/O7Z+FqZQQMPL1t8y4peHUmfub2/WTZMSakV+JiYKWdr5uFBOuvxmVyO0v1pO
         eQSQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530jN7qQ7vwErDQt6O4io65IW3FUTqdJeeQStcO/3HjByBB7Wjcy
	g7DrUJXlHTlLzSpFa+U+jxE=
X-Google-Smtp-Source: ABdhPJwWcCDCsaWN3wHdvRUgtn4aR+UfyL2DQZg4vJBPveN3aPV2eNlEOPN57p2mURBHv8oU3p988g==
X-Received: by 2002:aca:1716:: with SMTP id j22mr1296430oii.44.1601033533249;
        Fri, 25 Sep 2020 04:32:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:ec08:: with SMTP id k8ls503312oih.0.gmail; Fri, 25 Sep
 2020 04:32:12 -0700 (PDT)
X-Received: by 2002:aca:49ca:: with SMTP id w193mr1310063oia.46.1601033532868;
        Fri, 25 Sep 2020 04:32:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601033532; cv=none;
        d=google.com; s=arc-20160816;
        b=AE3b5kDObzgCq8EWhU43eLR6FtM02utKC5vSylYaQjtdJcSbO/11rpW5v347PZNxyq
         qbh5mWoLAjC1S3xE93RSCxno5mo3KzkmVliJRuanX+WzlhLtgzKa46Tg5FMBkPNYx1ez
         9B7hh1FYAgPNr0qEg8EEZSc9wK78JjhNz8/jxLUUdJTXfPlDe1sO6ORxVsNlmonlXVny
         q2cFy86lFeW+j/AkWbpNSiXal09N0nCoB8Ho4bB99LNr3FZHLWNgjZktdmpJFewc1XuE
         pg1OXeIk84UsFxSVNfYFTSJ+YAZlwKpnGrarT59EjU0e25qjRAeZAeGabGYbmnIoo08E
         J4kA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fKb1AhxRafAK9/ZvzZmKgGvwAcRONq6KI4tp+0pa55g=;
        b=RvXu4wkaRmeAEfP2YocyPyLjKQr+KbXQuyP4lA28DEJXtBzLOoz+dKeoAzRwIPT75L
         oiC8lEj3ZNURqljxthbbqqS9NFD4Ac5LcXt0DJJUETkFUaaKbCN4dYSqMNPbUpgSQccv
         0WGWh9vezLadqDxnKSzpVlKGPEm8UWVuxkpufjlsvOp9w6PuDcyj26fPRTmFZRRUC9B4
         ERRbH9fY2K0wMp8yOU3QMtvGDPMctLkesLftBXBTGR/0PgDuNZZ/Px9oOtW7lx0lagoW
         J1213jysdttg7onWOHy4alZeuedLuTF12EQjlp+9F774nHteTf3qadcFcRtNNEdRdBrZ
         Ybjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Lp2vK2rg;
       spf=pass (google.com: domain of ulf.hansson@linaro.org designates 2607:f8b0:4864:20::944 as permitted sender) smtp.mailfrom=ulf.hansson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ua1-x944.google.com (mail-ua1-x944.google.com. [2607:f8b0:4864:20::944])
        by gmr-mx.google.com with ESMTPS id d22si205966ooj.1.2020.09.25.04.32.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Sep 2020 04:32:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of ulf.hansson@linaro.org designates 2607:f8b0:4864:20::944 as permitted sender) client-ip=2607:f8b0:4864:20::944;
Received: by mail-ua1-x944.google.com with SMTP id z19so824812uap.2
        for <clang-built-linux@googlegroups.com>; Fri, 25 Sep 2020 04:32:12 -0700 (PDT)
X-Received: by 2002:ab0:2904:: with SMTP id v4mr1978931uap.15.1601033532387;
 Fri, 25 Sep 2020 04:32:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200925072532.10272-1-krzk@kernel.org>
In-Reply-To: <20200925072532.10272-1-krzk@kernel.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 25 Sep 2020 13:31:35 +0200
Message-ID: <CAPDyKFo5B5j40W2wVi6rHsrHJscg_QeER2R7vaib3mE85yEuMA@mail.gmail.com>
Subject: Re: [PATCH] mmc: sdhci-s3c: hide forward declaration of of_device_id
 behind CONFIG_OF
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Ben Dooks <ben-linux@fluff.org>, Jaehoon Chung <jh80.chung@samsung.com>, 
	Adrian Hunter <adrian.hunter@intel.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	"linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ulf.hansson@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=Lp2vK2rg;       spf=pass
 (google.com: domain of ulf.hansson@linaro.org designates 2607:f8b0:4864:20::944
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

On Fri, 25 Sep 2020 at 09:26, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> The struct of_device_id is not defined with !CONFIG_OF so its forward
> declaration should be hidden to as well.  This should address clang
> compile warning:
>
>   drivers/mmc/host/sdhci-s3c.c:464:34: warning: tentative array definition assumed to have one element
>
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  drivers/mmc/host/sdhci-s3c.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/mmc/host/sdhci-s3c.c b/drivers/mmc/host/sdhci-s3c.c
> index cb5f87be7535..f48a788a9d3d 100644
> --- a/drivers/mmc/host/sdhci-s3c.c
> +++ b/drivers/mmc/host/sdhci-s3c.c
> @@ -461,7 +461,9 @@ static int sdhci_s3c_parse_dt(struct device *dev,
>  }
>  #endif
>
> +#ifdef CONFIG_OF
>  static const struct of_device_id sdhci_s3c_dt_match[];
> +#endif
>
>  static inline struct sdhci_s3c_drv_data *sdhci_s3c_get_driver_data(
>                         struct platform_device *pdev)
> --
> 2.17.1
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAPDyKFo5B5j40W2wVi6rHsrHJscg_QeER2R7vaib3mE85yEuMA%40mail.gmail.com.
