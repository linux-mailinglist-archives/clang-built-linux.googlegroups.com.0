Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYX2T3ZQKGQEWHCG32A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3374C1802FA
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 17:16:36 +0100 (CET)
Received: by mail-qt1-x83e.google.com with SMTP id a21sf3104303qto.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 09:16:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583856995; cv=pass;
        d=google.com; s=arc-20160816;
        b=vzVymMgR5kfgHa8xUjD2St6LTAY8mmlXb9MkbcegISj2xq4qSsfIvGlSXGEP1tB2sv
         ZfmjSBJgQNFfLH4/w/AGTYHznGeSkRLyD2LHGVBiG8J+VdiDcm7ApGrDu3b/IG3KDPK+
         fJdNVlJtixxtSnTub+zzN/jVoW6rn9YFpk/fv/s9IXeI/7wdK8ouy5LtfUv4Lz6fs5CM
         gI8RZSCFfnnp9YCy2uaBX+g/YU4v2h8ts1pka1OV1u3LzC1T1IP8kOp+A+alSQ6OW+NI
         VgbMbSL5B20cmnIg20+F/9CG0ECVtHNDvKcqpJSIxnOJ6mVflwd+KgP9YoBZqotKOsRO
         8lqw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=m4zYAWTJKP0URP7BnVa55rMocrD1NWYIDb/1HMLXIpo=;
        b=eYGB/6ICn3PHDeiCq9BFWEA75dQ3KyGwRyaDAu0ZlGivW9zeEAq2qUPsg6DQaoADIQ
         LkXsTR3XtoIno4GY7Rh+tGqxZoHycNovNrj3ufSw9F9OjnsJaTUIAQZ7xCJpMcDJ1nQS
         Dhn8V/uL5PU+uwe696J4kXNSNjfzARDSs19OOqUrd6xB/ikN9qU2Dqk2ax+wG6SnfJoU
         eCH8Tu4MGoeXlXoRFTgfCbCOsG2Tc9pgBf7D99Q6xMEwVyoGyamuIBNGh0KKkR8zyBA3
         gr5FYne4JpkDTXgD1FP7D7eEWLJV75BzxG1wTrT3n7gi9MzNKHMJwD4ObziSq9zd7WQp
         Zzuw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Glbfrsj7;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m4zYAWTJKP0URP7BnVa55rMocrD1NWYIDb/1HMLXIpo=;
        b=ZNUJf4JncT3zyOi/WoqsaUUAx8ghEd7Pfx0yd3QNyIRdAb+rb9+2qJV7aPjt8myEiQ
         q9jcVo16vNo9VzrPqGGIccKSU0aAEwTdpbrj62Pzrl353pbwg0Nz3qESXqz17dBl1cqT
         tVpauWJTQBaN9WwTOA0NtSmJ0a951n9TJlCxC/lk+xWssANesdebefcsJ3NdGl+7mNge
         TwmTT2kLsUKldJau8vB8qA8BeyMxd+DlFGhytjLMifz0CL1x3yLoOEPhe0YhE9/Y3/PM
         FN9/E2Z3CIcNKeJEM0RF+fAxQusldfWvWzlMj1HIx7HdYsK/uwdt45MzEgje2Ck8G4PE
         L38w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m4zYAWTJKP0URP7BnVa55rMocrD1NWYIDb/1HMLXIpo=;
        b=awDwEIeig+MSfB0NDFyGpZI8yUaBSZvXLTI6fIF2URtvlksJviAio049ttSDmCV28u
         wKLY2qgW/L0QxxQeSLTRqznA8Q22AHSkkMtMyQyKWVewkXPqV7E8beNcs6DzU/JLJig7
         /1Q9eBFu+QkvTMJtZHK2278ceCXejKVLqAce4IdSHJyp9G1kvBWZ2uWVDivdlLgCjVH1
         Yx4kcI3ywaV1sQqTt8oS/oWWWCwXzr3liy3Mp2oWrqS/hl2c+gQrN5DZanAezdlartBA
         QdbnqavRIuPpXU19gEfsOIbSHotZ8+Y6prPKScmhOahxKlhoEy+Uma/Lo5lcH/HFxsRJ
         jlyw==
X-Gm-Message-State: ANhLgQ0PZNGMdtfST5TLSBDOKoRyOCd+M9dFsIii4m0Lp2IHwuexb+8k
	7TLuzxPUiTvQIX9Ewk3V178=
X-Google-Smtp-Source: ADFU+vtFk+SP9B17tH3kXIP32l7VDcPtGuqlIeVarZmu8PvWT3wUPrLcSDa2rR0m98jSZxkNEt7MsA==
X-Received: by 2002:a37:4141:: with SMTP id o62mr19542670qka.282.1583856994765;
        Tue, 10 Mar 2020 09:16:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:38ad:: with SMTP id f42ls1062148qtc.9.gmail; Tue, 10 Mar
 2020 09:16:34 -0700 (PDT)
X-Received: by 2002:ac8:4555:: with SMTP id z21mr19939263qtn.340.1583856994397;
        Tue, 10 Mar 2020 09:16:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583856994; cv=none;
        d=google.com; s=arc-20160816;
        b=P7bZVxHKZkzhUgyOoJvy2TfKxAM4mBLPRErnGmSJyb7ceqjOz3Y1ENj+4HKDPasI6x
         f65ZhtpnX4lUJBmq57UBSvPtYdyx+lu7B0wSS9MZ9Iru1hfMLbo3LYbJCCL+MjbwCMYY
         5KheoxuSEnEegOE6y2wzqoJ/TV5nm4ubvMr9bW9yj9WFWmv5u2m66S2wDzgCfrEHKqWy
         1OBZCkouzEDk3PPMGRuGgGGGfK80YuxieD6shMU9ClerNYYKbnrHbgrBtbJhfPFYYSNZ
         ffkAxNhR09iFdMyWIbF0MtOrlfdKxczfqr98lb6mc4oZRRHfgWW2XS+vlu4uyB6oBOZn
         fHqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=DOrOSAeLspFbYbXz9Qm/Iq7jD9WCeEQR9ClLCc8oPgE=;
        b=Vxg4PoXak4QE3x0pQzaaXYUYi1HIWBI35y548JU+wODOYQa0/XlYtqWwWNJ0vqYI6/
         oIhOBLh/qUfHvTT+uxTlZ/upp9eGxrXggZzdIfrMRaWNumWruvS/DhmZstt25aKkIaPS
         Ze3eVYlbPM/3wBqZ9iU6RWj2TIQoAvzWfGG/g8CUj+pmw8XLZRtLsSFgylT2JrnLt/+L
         tyjADm1m/83g3UQUYvl200SFs3BwCJ1t0ipqg4iwxbSAKbMN6oc7zErYVAcs4WhIrkdZ
         6b++j/TIUBqCjiz+8fp4Ye8SX1XI45FjY9lDJEDI2y7oKS1LgQrFVeFQ0Sttr/9fVcy7
         jFRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Glbfrsj7;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id c6si901162qko.3.2020.03.10.09.16.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 09:16:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id u10so619420pjy.0
        for <clang-built-linux@googlegroups.com>; Tue, 10 Mar 2020 09:16:34 -0700 (PDT)
X-Received: by 2002:a17:90a:1f8d:: with SMTP id x13mr2509613pja.27.1583856993053;
 Tue, 10 Mar 2020 09:16:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200308073400.23398-1-natechancellor@gmail.com>
 <CAK7LNARcTHpd8fzrAhFVB_AR7NoBgenX64de0eS2uN8g0by9PQ@mail.gmail.com>
 <20200310012545.GA16822@ubuntu-m2-xlarge-x86> <c2a687d065c1463d8eea9947687b3b05@AcuMS.aculab.com>
 <CAK7LNARMsO0AeO8-kH4czMuW0Y_=dN+ZhtXNdRE7CWGvU2PNvA@mail.gmail.com>
In-Reply-To: <CAK7LNARMsO0AeO8-kH4czMuW0Y_=dN+ZhtXNdRE7CWGvU2PNvA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 10 Mar 2020 09:16:22 -0700
Message-ID: <CAKwvOdmf0V61O5gsuby_50fijrxe=LNh4pTtRGy_8=5637P7qw@mail.gmail.com>
Subject: Re: [PATCH] kbuild: Disable -Wpointer-to-enum-cast
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: David Laight <David.Laight@aculab.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Michal Marek <michal.lkml@markovi.net>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, stable <stable@vger.kernel.org>, 
	Saravana Kannan <saravanak@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Glbfrsj7;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043
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

+ Saravana, who I spoke to briefly about this.


On Tue, Mar 10, 2020 at 8:32 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Tue, Mar 10, 2020 at 8:31 PM David Laight <David.Laight@aculab.com> wrote:
> >
> > From: Nathan Chancellor
> > > Sent: 10 March 2020 01:26
> > ...
> > > Sure, I can send v2 to do that but I think that sending 97 patches just
> > > casting the small values (usually less than twenty) to unsigned long
> > > then to the enum is rather frivolous. I audited at least ten to fifteen
> > > of these call sites when creating the clang patch and they are all
> > > basically false positives.
> >
> > Such casts just make the code hard to read.
> > If misused casts can hide horrid bugs.
> > IMHO sprinkling the code with casts just to remove
> > compiler warnings will bite back one day.
> >
>
> I agree that too much casts make the code hard to read,
> but irrespective of this patch, there is no difference
> in the fact that we need a cast to convert
> (const void *) to a non-pointer value.
>
> The difference is whether we use
> (uintptr_t) or (enum foo).
>
>
>
>
> If we want to avoid casts completely,
> we could use union in struct of_device_id
> although this might be rejected.
>
>
> FWIW:
>
> diff --git a/drivers/ata/ahci_brcm.c b/drivers/ata/ahci_brcm.c
> index 6853dbb4131d..534170bea134 100644
> --- a/drivers/ata/ahci_brcm.c
> +++ b/drivers/ata/ahci_brcm.c
> @@ -415,11 +415,11 @@ static struct scsi_host_template ahci_platform_sht = {
>  };
>
>  static const struct of_device_id ahci_of_match[] = {
> -       {.compatible = "brcm,bcm7425-ahci", .data = (void *)BRCM_SATA_BCM7425},
> -       {.compatible = "brcm,bcm7445-ahci", .data = (void *)BRCM_SATA_BCM7445},
> -       {.compatible = "brcm,bcm63138-ahci", .data = (void *)BRCM_SATA_BCM7445},
> -       {.compatible = "brcm,bcm-nsp-ahci", .data = (void *)BRCM_SATA_NSP},
> -       {.compatible = "brcm,bcm7216-ahci", .data = (void *)BRCM_SATA_BCM7216},
> +       {.compatible = "brcm,bcm7425-ahci", .data2 = BRCM_SATA_BCM7425},
> +       {.compatible = "brcm,bcm7445-ahci", .data2 = BRCM_SATA_BCM7445},
> +       {.compatible = "brcm,bcm63138-ahci", .data2 = BRCM_SATA_BCM7445},
> +       {.compatible = "brcm,bcm-nsp-ahci", .data2 = BRCM_SATA_NSP},
> +       {.compatible = "brcm,bcm7216-ahci", .data2 = BRCM_SATA_BCM7216},
>         {},
>  };
>  MODULE_DEVICE_TABLE(of, ahci_of_match);
> @@ -442,7 +442,7 @@ static int brcm_ahci_probe(struct platform_device *pdev)
>         if (!of_id)
>                 return -ENODEV;
>
> -       priv->version = (enum brcm_ahci_version)of_id->data;
> +       priv->version = of_id->data2;
>         priv->dev = dev;
>
>         res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "top-ctrl");
> diff --git a/include/linux/mod_devicetable.h b/include/linux/mod_devicetable.h
> index e3596db077dc..98d44ebf146a 100644
> --- a/include/linux/mod_devicetable.h
> +++ b/include/linux/mod_devicetable.h
> @@ -261,7 +261,10 @@ struct of_device_id {
>         char    name[32];
>         char    type[32];
>         char    compatible[128];
> -       const void *data;
> +       union {
> +               const void *data;
> +               unsigned long data2;
> +       };
>  };
>

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmf0V61O5gsuby_50fijrxe%3DLNh4pTtRGy_8%3D5637P7qw%40mail.gmail.com.
