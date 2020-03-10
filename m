Return-Path: <clang-built-linux+bncBAABB5PFT3ZQKGQEQHQ4E4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3d.google.com (mail-yw1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id ACB281801E2
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 16:32:06 +0100 (CET)
Received: by mail-yw1-xc3d.google.com with SMTP id q128sf21415334ywb.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 08:32:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583854325; cv=pass;
        d=google.com; s=arc-20160816;
        b=bsbFdvTU5cpenaUd5MGk3fXZBTQZfpFXkrnbXp5nVm4JbT/9lLH4+EpAjg4L74uwI7
         B2mSs4EYHKEz30vgmtKOmTaZt1FSFKHtPz5w3AzYdBjyfDMFuz/1nUrROQX7HN7B+Jhn
         L1gZ6u5/zZIjUVDcncpcbrueOwiEtuGepZjcATRvdnYIZWYKV7xVjSxjI3WdCkqblDVz
         pA2K+EHwZvExPyrzUozjRrYsTCYI6G9cuxp/c9D4OGJQAns2t2A80lGz8lcf91bYEGut
         6QbJhG7cmu6z+/bcTxEtd+V/OUTVTU4oPbeDdmX2WZZovh/ERE/P1XgtFKL2Sl0wnytG
         /RDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=KY6MkM2qg+AkWOkKk/EA69ipEtS1srlylewZJOjpYL8=;
        b=chQMua4dxqNygQKdkoLGNzjMBUDeaUWQ8Ba1BTD3f8c6+DfLqpktalCJXu1GKaqGIq
         1W2o8Fc+qCytpQhQXvSOSk2lEhMrdKJoe2VjLr4/boo0tNeN4Sv2u6WzfYy1jSn97HhS
         /GAFusfgvheGPmbjJD7Asmp+gSiigeTB6K4H2OSRalgepcr91Pnn0XTgZ4sJDDJc0E3j
         Glbc/WhIQ62/brZPob469lvQdcr3kCeoyA0XP/HWIfO+FrMhzY5nKBi/5nENU/rUTjWQ
         g0FOfh+zmptxOUDIMWHPR77NSnPVPHABVB4/p/IECTDBIrnVL6zGwFeR+bjMdZPhEps2
         QnMw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=uBFbZowb;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KY6MkM2qg+AkWOkKk/EA69ipEtS1srlylewZJOjpYL8=;
        b=pt340hnoIDI/h+Rj1+Mz3glWdUUdWJjwAwx6es3zVILPYZfZDXxa+y85o+Ny3rgOgM
         IeGgoyIFVmGXR9jlSx6TMDloHfwfANm51G9qq6YeyuwAYojc4d6JwNyzVVpEqe5h/e/w
         RE9Pq8uFUcs1/NGc1N5OYP7QsA33krKYNEowQAuZIZ5YPaOJSIESsnsL2xQZCS0vPCwp
         ex/KDfKJnDGAs49QrdB9/WU4fE5Gg7I3sJ3BbTiAlXJdXs3vVM44U8ca2QHBRMHSOZte
         /GWmj7V9xoaTRuUB6+gopzNYP55SwVv43oMddRnzew+oglhJNj325DvePpFfIkdAVtbm
         0lAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KY6MkM2qg+AkWOkKk/EA69ipEtS1srlylewZJOjpYL8=;
        b=j9kgateqqhtQXecIGs53nNZUaYBrGrPMJKYgOclYzwKqKYGrHbMTZ1BSlkWwil2mbQ
         w7tp14CB+dG6f8+bDKg3RcwRMuEYPg+6o9GT+tgT22UxqNGiS7zsAcxgKijjThpC7w8G
         5OTlIEjagveH9vp8pqKySDjTmshpcSG23Z4JEDndHj8XQA6pp7wm2SgU+uc1ox3cWgac
         U+8E5iE4IN3Sw51zIHN7wwqzjSfPu8bZZJYRoETRWRhn/2dGXmOVTm8n1M4UbVObQUnw
         4w1GE4zRpVjeiFNGpEKI9MEkPwAEcMae+KifNAmo6ybMujFu02gzM7Yw8qHEnQpIilwe
         CxAg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2P0TXE0HsSg8xAGsoEmP64YQoeS3qRyngzQJC1fHOkDnCD+f32
	a2Hymjkbagl8Y7zKA1Lfmms=
X-Google-Smtp-Source: ADFU+vthE0oeWXRmOyLifcyW7X47gsZe/5vyY/qGTlrvWPqK3JLEPqzADN/7zm7xun7+78iOzPQkaQ==
X-Received: by 2002:a81:9d8:: with SMTP id 207mr24228918ywj.101.1583854325686;
        Tue, 10 Mar 2020 08:32:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:ab94:: with SMTP id v20ls3749566ybi.0.gmail; Tue, 10 Mar
 2020 08:32:05 -0700 (PDT)
X-Received: by 2002:a25:18c4:: with SMTP id 187mr24958770yby.207.1583854325365;
        Tue, 10 Mar 2020 08:32:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583854325; cv=none;
        d=google.com; s=arc-20160816;
        b=v8dVDNO8uND+jmPFDrxLTJLtsWCVYjyDEiCvCWlAVEaQv4DsMKSq1lD/Xrewk3246G
         IgLkoq+CU24iN3HaeD+Nme84DFXj+1IYLEIty1SwB+Bqqcb6SNlNWFHgy3U8JNABMEQu
         Y3oCjtyTukXmdNdyI76QzcR207ItFKwzjrm8T3JsjS++ezfU5cB41Zdq4oA7gQq5BP/D
         sBYPy1jlckrOFUkO218KqZjZSndHNCFvrs4J/lG9zDrCav+xToiOJzpp0K0M8wffJoRH
         Itp+1LRSE9G0IthlyGckN01KCumYtXwPxlWMD8Egj4kqendTdE0ZVm0Z/jMLIayfvCu1
         2fBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=cU9zGQWEYLmKu3ABbJP9fWNhvET72vVMMuEoK2xZbeA=;
        b=PByHOmTnJJJ2PuMgYkpKrvX22gmHxHY8WMyqBFOlsKQQpl5wue56HJ2MLS7ybvb/W2
         UVTgTOGwNB8apav86N8CUHnQT8EQo2SoW6xlflyEscj5Nbrdr91cCoO9gVJosMF7zgp9
         IotWjaeiNs8X1UHBPqzb6XDHERmaPCGPcKEo0P0UCxu6E7Ch3OQJsV1/aqF772h6JWYn
         aSzt8L/GeV5MnDbk5ZuS4+1WdUxT1USgcAbn5CfBVVaGr3QyYEgWkPaO9URxja5sOe3z
         dwh7Hd4t9W6QotUl+C7e5CwcAnmrTrBHgIA4I+XEf691n16O+4InzsZ8dHmUTZVyJqZB
         02pQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=uBFbZowb;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-06.nifty.com (conssluserg-06.nifty.com. [210.131.2.91])
        by gmr-mx.google.com with ESMTPS id u202si96717ywe.5.2020.03.10.08.32.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2020 08:32:05 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) client-ip=210.131.2.91;
Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com [209.85.221.175]) (authenticated)
	by conssluserg-06.nifty.com with ESMTP id 02AFVYfW006411
	for <clang-built-linux@googlegroups.com>; Wed, 11 Mar 2020 00:31:34 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 02AFVYfW006411
X-Nifty-SrcIP: [209.85.221.175]
Received: by mail-vk1-f175.google.com with SMTP id e20so3297623vke.9
        for <clang-built-linux@googlegroups.com>; Tue, 10 Mar 2020 08:31:34 -0700 (PDT)
X-Received: by 2002:a1f:900c:: with SMTP id s12mr2563486vkd.96.1583854293448;
 Tue, 10 Mar 2020 08:31:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200308073400.23398-1-natechancellor@gmail.com>
 <CAK7LNARcTHpd8fzrAhFVB_AR7NoBgenX64de0eS2uN8g0by9PQ@mail.gmail.com>
 <20200310012545.GA16822@ubuntu-m2-xlarge-x86> <c2a687d065c1463d8eea9947687b3b05@AcuMS.aculab.com>
In-Reply-To: <c2a687d065c1463d8eea9947687b3b05@AcuMS.aculab.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 11 Mar 2020 00:30:57 +0900
X-Gmail-Original-Message-ID: <CAK7LNARMsO0AeO8-kH4czMuW0Y_=dN+ZhtXNdRE7CWGvU2PNvA@mail.gmail.com>
Message-ID: <CAK7LNARMsO0AeO8-kH4czMuW0Y_=dN+ZhtXNdRE7CWGvU2PNvA@mail.gmail.com>
Subject: Re: [PATCH] kbuild: Disable -Wpointer-to-enum-cast
To: David Laight <David.Laight@aculab.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        stable <stable@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=uBFbZowb;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Tue, Mar 10, 2020 at 8:31 PM David Laight <David.Laight@aculab.com> wrote:
>
> From: Nathan Chancellor
> > Sent: 10 March 2020 01:26
> ...
> > Sure, I can send v2 to do that but I think that sending 97 patches just
> > casting the small values (usually less than twenty) to unsigned long
> > then to the enum is rather frivolous. I audited at least ten to fifteen
> > of these call sites when creating the clang patch and they are all
> > basically false positives.
>
> Such casts just make the code hard to read.
> If misused casts can hide horrid bugs.
> IMHO sprinkling the code with casts just to remove
> compiler warnings will bite back one day.
>

I agree that too much casts make the code hard to read,
but irrespective of this patch, there is no difference
in the fact that we need a cast to convert
(const void *) to a non-pointer value.

The difference is whether we use
(uintptr_t) or (enum foo).




If we want to avoid casts completely,
we could use union in struct of_device_id
although this might be rejected.


FWIW:

diff --git a/drivers/ata/ahci_brcm.c b/drivers/ata/ahci_brcm.c
index 6853dbb4131d..534170bea134 100644
--- a/drivers/ata/ahci_brcm.c
+++ b/drivers/ata/ahci_brcm.c
@@ -415,11 +415,11 @@ static struct scsi_host_template ahci_platform_sht = {
 };

 static const struct of_device_id ahci_of_match[] = {
-       {.compatible = "brcm,bcm7425-ahci", .data = (void *)BRCM_SATA_BCM7425},
-       {.compatible = "brcm,bcm7445-ahci", .data = (void *)BRCM_SATA_BCM7445},
-       {.compatible = "brcm,bcm63138-ahci", .data = (void *)BRCM_SATA_BCM7445},
-       {.compatible = "brcm,bcm-nsp-ahci", .data = (void *)BRCM_SATA_NSP},
-       {.compatible = "brcm,bcm7216-ahci", .data = (void *)BRCM_SATA_BCM7216},
+       {.compatible = "brcm,bcm7425-ahci", .data2 = BRCM_SATA_BCM7425},
+       {.compatible = "brcm,bcm7445-ahci", .data2 = BRCM_SATA_BCM7445},
+       {.compatible = "brcm,bcm63138-ahci", .data2 = BRCM_SATA_BCM7445},
+       {.compatible = "brcm,bcm-nsp-ahci", .data2 = BRCM_SATA_NSP},
+       {.compatible = "brcm,bcm7216-ahci", .data2 = BRCM_SATA_BCM7216},
        {},
 };
 MODULE_DEVICE_TABLE(of, ahci_of_match);
@@ -442,7 +442,7 @@ static int brcm_ahci_probe(struct platform_device *pdev)
        if (!of_id)
                return -ENODEV;

-       priv->version = (enum brcm_ahci_version)of_id->data;
+       priv->version = of_id->data2;
        priv->dev = dev;

        res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "top-ctrl");
diff --git a/include/linux/mod_devicetable.h b/include/linux/mod_devicetable.h
index e3596db077dc..98d44ebf146a 100644
--- a/include/linux/mod_devicetable.h
+++ b/include/linux/mod_devicetable.h
@@ -261,7 +261,10 @@ struct of_device_id {
        char    name[32];
        char    type[32];
        char    compatible[128];
-       const void *data;
+       union {
+               const void *data;
+               unsigned long data2;
+       };
 };

 /* VIO */






-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNARMsO0AeO8-kH4czMuW0Y_%3DdN%2BZhtXNdRE7CWGvU2PNvA%40mail.gmail.com.
