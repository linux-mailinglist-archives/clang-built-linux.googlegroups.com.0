Return-Path: <clang-built-linux+bncBCOKR7GX6EORBF7KSP5QKGQE2FJKQPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id CFF10270395
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 19:57:43 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id l9sf2396917wrq.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 10:57:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600451863; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZVAGRD/UJzO30B6x3H8HEX2VU1nHuGUsHkWqETNiE3akO9F6OF+g//nnioHTe6KCwY
         pZmfXz0OqLLc8tYAu62IzIzcEucm8S7mRxSNYizA1LSV8Pqb5rOBnFF0ckFzV89uXMpO
         AqS+eMvxfFmM2EUZNVGxH9tHeaM8GWyeHyirzwFJvMdrI0ua4hxdjgsqiwp/wOO3001H
         BWKMTcU6pUGJvD/qryKgefOr5+ji2MOtAA+IKwzqR0zjiYRkRxuM8euECTxcz4ssvuC0
         qDW6XkRtKb0f5UJo7T2M+4qNE7QUVZulITiEB8ZezdGJ2lESQHVlAIPJJ0Kbyb7Cbmrr
         /foQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=4/DWTuQxAN0GMzmPxF9j+v8lmgebECv1UMaZdAJb/lk=;
        b=x36L806tZEJxtLiIanFx2rSBZHZ1P4MjDGF0SzxKlcLqY2kPWwd4RbeztjifdKuFjj
         3BkRnij45GBLEWiKY8u/mvfKK/SIf2cBHjJRkLqF71R/DcEF6zj4ji5sk7Mim7rv+T51
         wUufPoV1UjD7DCISTgZGWCrXu0yJjLHS7bc12hVQTvNQOvnmzyeHLUm4YHflQHGKNuGv
         oKRjd8KAoF7Q81yEBBQjbGQkoKY21YP4Kv6j8glRSGngNgLZfxTaQ3j1+NajtltGZBUQ
         Sl4GdLrLrH05vxendrXGSOscvmXTxjmuRmhgEtYP6bJnGSyyIFyHm+hPGtBcnjsBiKxh
         hfvw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=afpjKtXs;
       spf=pass (google.com: domain of rrangel@chromium.org designates 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=rrangel@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4/DWTuQxAN0GMzmPxF9j+v8lmgebECv1UMaZdAJb/lk=;
        b=BWGka2SfcOZUZ9gtHS0qJ2D0t1CSCkh1xnM7wPSQ+TxqsGcAw+jNk6aqYGzI8V2ULC
         k8+NYyNmwfdtE5Iew9gbA8Lqdmq76UkV+U5eYGmRchn/AzDzkhQwFxUm/I6U93k9ZJuB
         W9EmztaFxiIJZQXceoTnSmNgkcIcQ+GzWR4EJjBeOq0/Ne8uI5GIpCeUWXbQs485M1Pt
         VqHSd5B/KGnxi5zefhgFAdYYln9yxxuAau8NXz5XOzGyIzikykROMwka8ADekFXrZkeK
         LsULDknYKuG6/e5h2Nv+sSd3cNAhiBbhQnQAgzoj7qzCSnigxL+bhHwhjkCz/g3mInec
         OJog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4/DWTuQxAN0GMzmPxF9j+v8lmgebECv1UMaZdAJb/lk=;
        b=IK7cWY/WU1cI/AnxDaSDTPH3Pglh63aw42+O6lkvhdGZZg2wo63j0eQ5hIZqwtxeAc
         7JZrv6yc05QEBwWt1qwLsyIZMUhn32JofXm+h26SSMVvPZhtmgBy8aEqMVbmf5P7pr+t
         sIz1SqQTNVu+LWbcUF8EgWoCPQOnsrbc3+0r3NHUQCzNuQ5lzUqnolrfLjn/XzW3Nkq/
         1emgwxhyhUxBcqL38h8OElsGymf7osytjWO+dn8srdOrTjJwRIqrHfjkfqHzHTqm/gOd
         lVP3wRV+nV6NBhULs2zbLBOiIojfgNF1mNH8v4Kd1C/8hwJiOEWd4wn87tdZWphyi2+W
         jmAg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531pQgXWl9Kytx6TlvSkNPD/Fp9f6b1EkXOXCEx+7L8p0xnSXil6
	BJC2qubt0OfXXAUzIAiCZgU=
X-Google-Smtp-Source: ABdhPJwNjDLOCqfuxM/oy4kikhJqRokBMYaHs79wNyb/00lOWEVMDD3x9zHIBdk3NCakCVTyW5Z0Dw==
X-Received: by 2002:a1c:f20b:: with SMTP id s11mr17346759wmc.144.1600451863602;
        Fri, 18 Sep 2020 10:57:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:a58a:: with SMTP id o132ls3318471wme.3.gmail; Fri, 18
 Sep 2020 10:57:42 -0700 (PDT)
X-Received: by 2002:a1c:7714:: with SMTP id t20mr17558618wmi.55.1600451862759;
        Fri, 18 Sep 2020 10:57:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600451862; cv=none;
        d=google.com; s=arc-20160816;
        b=THFprPZT3ilU3Cp8yA70sy19j+NJ/2GiZJa3KUW41krg2Gkrgtl7pqdfg8wiQqW4dX
         un01Gll8FaGSZ6fUk28tmgvFGu9cRYPlHGn+esRI4VL2UxE1AbSXVSw/o8g6Fisz07h6
         erkLpmGHiwPNlWnLq3viYHnb98WFTvHkOR5BUKC3npAdDelXlKqVo0727CSQ3tW028Fc
         aPLOXaQOfzjaQmKNkWIMag7vqxyI06NbbJUb4p0FSbhCOiKxf4KvsiCVHihAvpROIC55
         quT9w9Vp/ey1QE0bJcFwjwogsukouZDpab5E5TeVP7atGFdSNhbGN5Y5EziFItNbk4+V
         VGTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=G0p3wb5ss5WDoQeyeweRprLyH7nkOhBWnapnwOW315M=;
        b=0dsbFvGBIGO4UIALS1qd3grbwMjX5StmR79ZdvCYgDJ+HhCD1s3HcfmxHsqKb7lnVI
         xngew0K7aEGGS6dqVwnZoMHrLVWyal4HaxvD063VSZrJA+0sbpXQG/FNQM3pXu9ZDSFr
         AmnPm+JSEWDYtjM1hiVdAfyxpi7gXiYeuWXbyJl0APfJ1Cj04cnoele0ndHHnUF31vuv
         Iqu4cuZnHgy5JuZULAfBR0ub9yO/yZNyb+k5h2wowmLGG4EIOU/JDXNREWH4J04dt7bo
         rs0bKpmD1w75ZJVQoUoJ1/rJ3UNaH5wy9F5aDv96YtdgzLRiDZcXKdkiYdOhuG++xMnN
         cYxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=afpjKtXs;
       spf=pass (google.com: domain of rrangel@chromium.org designates 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=rrangel@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com. [2a00:1450:4864:20::543])
        by gmr-mx.google.com with ESMTPS id z62si99023wmb.0.2020.09.18.10.57.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 10:57:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of rrangel@chromium.org designates 2a00:1450:4864:20::543 as permitted sender) client-ip=2a00:1450:4864:20::543;
Received: by mail-ed1-x543.google.com with SMTP id w1so6948571edr.3
        for <clang-built-linux@googlegroups.com>; Fri, 18 Sep 2020 10:57:42 -0700 (PDT)
X-Received: by 2002:aa7:c387:: with SMTP id k7mr39037982edq.242.1600451862076;
        Fri, 18 Sep 2020 10:57:42 -0700 (PDT)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com. [209.85.208.42])
        by smtp.gmail.com with ESMTPSA id b6sm2738485eds.46.2020.09.18.10.57.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 10:57:41 -0700 (PDT)
Received: by mail-ed1-f42.google.com with SMTP id e22so6921899edq.6
        for <clang-built-linux@googlegroups.com>; Fri, 18 Sep 2020 10:57:41 -0700 (PDT)
X-Received: by 2002:a05:6402:22fc:: with SMTP id dn28mr38605078edb.365.1600451860701;
 Fri, 18 Sep 2020 10:57:40 -0700 (PDT)
MIME-Version: 1.0
References: <20200824122131.v2.1.Id6f3c92fecf4acc60c3b7f57d5f4e4c854ace765@changeid>
 <873b0786-a088-54af-80ad-96d2b041945d@intel.com>
In-Reply-To: <873b0786-a088-54af-80ad-96d2b041945d@intel.com>
From: Raul Rangel <rrangel@chromium.org>
Date: Fri, 18 Sep 2020 11:57:29 -0600
X-Gmail-Original-Message-ID: <CAHQZ30DXUuWKo1n50aX3a86QfLCD4Z3W4CVescRDFcvQrEk3Ww@mail.gmail.com>
Message-ID: <CAHQZ30DXUuWKo1n50aX3a86QfLCD4Z3W4CVescRDFcvQrEk3Ww@mail.gmail.com>
Subject: Re: [PATCH v2] mmc: sdhci: Don't enable presets while tuning
To: Adrian Hunter <adrian.hunter@intel.com>
Cc: "Shah, Nehal-bakulchandra" <Nehal-bakulchandra.Shah@amd.com>, "Wang, Chris" <chris.wang@amd.com>, 
	Akshu Agrawal <Akshu.Agrawal@amd.com>, Jisheng Zhang <jszhang@marvell.com>, 
	Ulf Hansson <ulf.hansson@linaro.org>, clang-built-linux@googlegroups.com, 
	linux-kernel <linux-kernel@vger.kernel.org>, linux-mmc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rrangel@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=afpjKtXs;       spf=pass
 (google.com: domain of rrangel@chromium.org designates 2a00:1450:4864:20::543
 as permitted sender) smtp.mailfrom=rrangel@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Tue, Sep 1, 2020 at 4:54 AM Adrian Hunter <adrian.hunter@intel.com> wrote:
>
> On 24/08/20 9:21 pm, Raul E Rangel wrote:
> > SDHCI presets are not currently used for eMMC HS/HS200/HS400, but are
> > used for DDR52. The HS400 retuning sequence is:
> >
> >     HS400->DDR52->HS->HS200->Perform Tuning->HS->HS400
> >
> > This means that when HS400 tuning happens, we transition through DDR52
> > for a very brief period. This causes presets to be enabled
> > unintentionally and stay enabled when transitioning back to HS200 or
> > HS400.
> >
> > This patch prevents enabling presets while tuning is in progress.
>
> Preset value should not generally have to depend on tuning, so this
> seems less than ideal.  Also I am not sure you can say some controllers
> are not accidentally benefiting from the current situation.
>
> What about just letting drivers choose the timing modes that support
> preset values?  e.g. using the change below, a driver could alter
> host->preset_value_support as needed

Sorry for the late reply, I'm just getting back to this. I like the
patch. I have a few other patches I'm
going to push up soon. Do you want me to include this in the chain, or
do you want to push it up?


Thanks,
Raul

>
> diff --git a/drivers/mmc/host/sdhci.c b/drivers/mmc/host/sdhci.c
> index 3ad394b40eb1..3e69c25c90a3 100644
> --- a/drivers/mmc/host/sdhci.c
> +++ b/drivers/mmc/host/sdhci.c
> @@ -2360,12 +2360,7 @@ void sdhci_set_ios(struct mmc_host *mmc, struct mmc_ios *ios)
>                 host->timing = ios->timing;
>
>                 if (!(host->quirks2 & SDHCI_QUIRK2_PRESET_VALUE_BROKEN) &&
> -                               ((ios->timing == MMC_TIMING_UHS_SDR12) ||
> -                                (ios->timing == MMC_TIMING_UHS_SDR25) ||
> -                                (ios->timing == MMC_TIMING_UHS_SDR50) ||
> -                                (ios->timing == MMC_TIMING_UHS_SDR104) ||
> -                                (ios->timing == MMC_TIMING_UHS_DDR50) ||
> -                                (ios->timing == MMC_TIMING_MMC_DDR52))) {
> +                   sdhci_preset_value_support(host, ios->timing)) {
>                         u16 preset;
>
>                         sdhci_enable_preset_value(host, true);
> @@ -3934,6 +3929,13 @@ struct sdhci_host *sdhci_alloc_host(struct device *dev,
>          */
>         host->adma_table_cnt = SDHCI_MAX_SEGS * 2 + 1;
>
> +       host->preset_value_support = (1 << MMC_TIMING_UHS_SDR12 ) |
> +                                    (1 << MMC_TIMING_UHS_SDR25 ) |
> +                                    (1 << MMC_TIMING_UHS_SDR50 ) |
> +                                    (1 << MMC_TIMING_UHS_SDR104) |
> +                                    (1 << MMC_TIMING_UHS_DDR50 ) |
> +                                    (1 << MMC_TIMING_MMC_DDR52 );
> +
>         return host;
>  }
>
> diff --git a/drivers/mmc/host/sdhci.h b/drivers/mmc/host/sdhci.h
> index 0770c036e2ff..79be471ff934 100644
> --- a/drivers/mmc/host/sdhci.h
> +++ b/drivers/mmc/host/sdhci.h
> @@ -603,6 +603,9 @@ struct sdhci_host {
>         /* Host ADMA table count */
>         u32                     adma_table_cnt;
>
> +       /* Which transfer modes support preset value */
> +       u32                     preset_value_support;
> +
>         u64                     data_timeout;
>
>         unsigned long private[] ____cacheline_aligned;
> @@ -760,6 +763,14 @@ static inline void sdhci_read_caps(struct sdhci_host *host)
>         __sdhci_read_caps(host, NULL, NULL, NULL);
>  }
>
> +static inline bool sdhci_preset_value_support(struct sdhci_host *host,
> +                                             unsigned char timing)
> +{
> +       if (timing < 32)
> +               return host->preset_value_support & (1 << timing);
> +       return false;
> +}
> +
>  u16 sdhci_calc_clk(struct sdhci_host *host, unsigned int clock,
>                    unsigned int *actual_clock);
>  void sdhci_set_clock(struct sdhci_host *host, unsigned int clock);
>
>
>
>
>
> >
> > Fixes: 0dafa60eb2506 ("mmc: sdhci: also get preset value and driver type for MMC_DDR52")
> > Signed-off-by: Raul E Rangel <rrangel@chromium.org>
> > ---
> > The indentation changed because I ran clang-format
> >
> > Changes in v2:
> > - Fixed commit message. Patman didn't properly strip off the TEST= line.
> >
> >  drivers/mmc/host/sdhci.c | 13 +++++++------
> >  1 file changed, 7 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/mmc/host/sdhci.c b/drivers/mmc/host/sdhci.c
> > index 37b1158c1c0c9..fd702c436c165 100644
> > --- a/drivers/mmc/host/sdhci.c
> > +++ b/drivers/mmc/host/sdhci.c
> > @@ -2360,12 +2360,13 @@ void sdhci_set_ios(struct mmc_host *mmc, struct mmc_ios *ios)
> >               host->timing = ios->timing;
> >
> >               if (!(host->quirks2 & SDHCI_QUIRK2_PRESET_VALUE_BROKEN) &&
> > -                             ((ios->timing == MMC_TIMING_UHS_SDR12) ||
> > -                              (ios->timing == MMC_TIMING_UHS_SDR25) ||
> > -                              (ios->timing == MMC_TIMING_UHS_SDR50) ||
> > -                              (ios->timing == MMC_TIMING_UHS_SDR104) ||
> > -                              (ios->timing == MMC_TIMING_UHS_DDR50) ||
> > -                              (ios->timing == MMC_TIMING_MMC_DDR52))) {
> > +                 !mmc_doing_retune(mmc) &&
> > +                 ((ios->timing == MMC_TIMING_UHS_SDR12) ||
> > +                  (ios->timing == MMC_TIMING_UHS_SDR25) ||
> > +                  (ios->timing == MMC_TIMING_UHS_SDR50) ||
> > +                  (ios->timing == MMC_TIMING_UHS_SDR104) ||
> > +                  (ios->timing == MMC_TIMING_UHS_DDR50) ||
> > +                  (ios->timing == MMC_TIMING_MMC_DDR52))) {
> >                       u16 preset;
> >
> >                       sdhci_enable_preset_value(host, true);
> >
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHQZ30DXUuWKo1n50aX3a86QfLCD4Z3W4CVescRDFcvQrEk3Ww%40mail.gmail.com.
