Return-Path: <clang-built-linux+bncBCNODNHUQUJBBMNVT7ZQKGQESND3A2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id C844218061A
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 19:21:38 +0100 (CET)
Received: by mail-pg1-x53e.google.com with SMTP id h21sf9078210pgl.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 11:21:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583864497; cv=pass;
        d=google.com; s=arc-20160816;
        b=Zo6z3HMay1Qu4prrQGOYP5cDc7Hg8iTvftH+4k5YJ+xZRo9MjtxHs6Pj9LQV2rc9qe
         pYm29EOjQuMbWSkmQdjacD79NOMukAQmbi46oqyPNmWmxnjhZlrcG5trB7Rwf5c2rVPr
         kBfqRfWxwgvEzQXkhrREHr8ycUiZ/X+XNq+SAGiW2B+T6OuHZ+pIUnI2a75iEoZv+V34
         k9jaYrFZtdQ191uloRDbWudSJWm0K26/lXAQ+lfdNU9M2Wvi8k+05+mvnB0J7lZeGwe5
         TIO5YAgmlAqsUN23mV6GMcPCvYW5ZYfTca8Mh3Z+3vmcLZI2boPz8gj6OKt/F1sIAjCO
         JV9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=wfjN/zxXQoYFugwbIvWoxo76JjM6G4gPud9Ljcl00YM=;
        b=G85hqnHz8jk/FDkeuxX/rIozb/my9+wDy9ct1NSPMcMoLysyS9hgeqKNQKzDcnFgMN
         XxYlqLfm50TDW47m0dH2YraIcrvq5D5Td2bFjORiUbNHq36TSUYzRuSBXgOUzpEJ0lbK
         p+t2iqQzTWXWjzKlpFwIP6bTgk8Astk0mNPCjtjkMWxKKz7e8tuX+qSfGP7GcAoWldMA
         owW0E8B8AC8LU0XG5AIQVP1ZaW2cxy3BIN3UkRYHhwtgW97+7Q1ZLhhJgIl0CK+jd8kH
         e9eudnXR1rWNjEQzsp1WB+tCBIjXuhOK+HrCJjj25J+y1S4qneQsnQl9EF7/zFMT3L1P
         2yHA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="u/hp1G4Z";
       spf=pass (google.com: domain of saravanak@google.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=saravanak@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wfjN/zxXQoYFugwbIvWoxo76JjM6G4gPud9Ljcl00YM=;
        b=o2jOVxkzVsXE8rkd/un/567mfkqrptT/II0/JAzhsUouVoVnCnt+T5vULMarT8gSdc
         Fb5QiKerQwJbassEeo5Nqc0tmCl2s3AQ60roXxh0I73IV0+M5OPFU2sRnEK+nS20Smxr
         ROVV5+1fzoavkTxw6YXIgo4Hptas9xU1on7QvV3PhmoWNDY69LCGNfmQJW/i1BsBu5cs
         Ar70DdBEcMKDpM5rwLBcM2mkh9uhizYKpCMP9zk/gKqtfpqAw20Fs2hXS9PV2nTGXiPr
         CQiNorFiEOaJOHtR2IeemgqQINl2mycHesVXqqGTByXqzdy4Hv6qN/ouddro2YwG8uqg
         3AFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wfjN/zxXQoYFugwbIvWoxo76JjM6G4gPud9Ljcl00YM=;
        b=Zny7XAA6YsQme2ZbN2xSBEhaPC864fV9nM6hVa2G15Egbyfy0tGpo0ZmH3nrXSw3wU
         z4LeISg7FQfu9Y/2s+6lO2XVxJFn/vXe/MhUm/bEMufRIuK8dkbVonM/KEX+tIqFXbp0
         WyJ/YpIGk7T+aAyEC14h25sCgQPiBMrS9iiMEBiA3IeGzoEQGOPOMWOXyCSZBysfvGfx
         ncgql/aN2sNpa6C9oAieZzssDOlpGikBq0dxroH/+zX6zi9FwTWIdzjM9mN9Jv7dcXJ+
         z8SGgsuJcpWU6/L4xik9URKnNH1PiMzcxcjUB7P38T8VevCghaqa0iupBmRQBgBeH1U2
         HmWg==
X-Gm-Message-State: ANhLgQ1p5yZBafTLHmLym/DhSWsapjUQ2lA2KYAvvDqFk6ZfExmy9O4P
	Jwz3zrgWvxH/d4wuyuuaJSc=
X-Google-Smtp-Source: ADFU+vs4GA8htK6305O2qCvKOW+26nsHcWVjGVrOKX8Nic3rrEQUXjsKhgMvK41thfktN9rC1E8N7A==
X-Received: by 2002:a65:67d9:: with SMTP id b25mr22577979pgs.190.1583864497189;
        Tue, 10 Mar 2020 11:21:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:5f8b:: with SMTP id t133ls5260091pgb.1.gmail; Tue, 10
 Mar 2020 11:21:36 -0700 (PDT)
X-Received: by 2002:a63:5c4:: with SMTP id 187mr22999360pgf.348.1583864496701;
        Tue, 10 Mar 2020 11:21:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583864496; cv=none;
        d=google.com; s=arc-20160816;
        b=n6v5WFVtLKPQQFh7HfXDZf4yXewzFCxIpUixjjXBvRzltc/S7islQFdXXTPxZDUsZt
         Tb8n2BlC6JYFnXdQLQJ4RdKEjjJkTh0lmCVUbecdyjexy5mLObO47fZTAxZemOplWKi9
         DmWXVMhWxDrpiW78HnvXRxHvui+3eFPnUISFG+dA3YlGYhe+nEvQFbPJDNfhQU2Vcjjc
         vqvecuePT/UsvGa4GiL10Z9PZgdP33sp/DiK3ZysInszAzSHcel9PjW11idRGBowyWLA
         YaOMlbt/GDjKEXylICEBRmzFKfmVkSyympyALTreveSz0qD1ZPgRcmpqwBG+3yIYVkLk
         34dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=JQ+KXG5Dk3F2Ym0hqQSR5htSfCifQGVz+T0JMvTAuUA=;
        b=HIG8sSn24ybPKiKPhZuQaQiJfk93Jtuxo3Y10RAfYwld3esDIMaNIQOiIKFSqv0E/M
         wxr+55l0IZkCLoyVwNYAfpgsw9umN5xSPQugF+2/8YNgOjEtos+gqIP29A+yBhF65ozw
         0hCK7w0RTIDLnU6Oy/Zl/AJibEF1AWEPYZTJjh8ErsqnHxJGf4mwuT370UTNRNyaXYhv
         xf7hTdPS5M1YeU3Fag0oF1VHlnkUTz7MIyDYOhqzxGFR2b8Bh2xgnPTIvwrgxgTtmGBJ
         GcOApeqkXVAHpGQzybfz0qWqicYgVaPz5TKF/7HrlB+YVdzQb1i6cdwZRw7dd0XQPcJE
         vMvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="u/hp1G4Z";
       spf=pass (google.com: domain of saravanak@google.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=saravanak@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id my13si116331pjb.1.2020.03.10.11.21.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 11:21:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of saravanak@google.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id i14so14150287otp.5
        for <clang-built-linux@googlegroups.com>; Tue, 10 Mar 2020 11:21:36 -0700 (PDT)
X-Received: by 2002:a05:6830:13c4:: with SMTP id e4mr18265547otq.139.1583864495682;
 Tue, 10 Mar 2020 11:21:35 -0700 (PDT)
MIME-Version: 1.0
References: <20200308073400.23398-1-natechancellor@gmail.com>
 <CAK7LNARcTHpd8fzrAhFVB_AR7NoBgenX64de0eS2uN8g0by9PQ@mail.gmail.com>
 <20200310012545.GA16822@ubuntu-m2-xlarge-x86> <c2a687d065c1463d8eea9947687b3b05@AcuMS.aculab.com>
 <CAK7LNARMsO0AeO8-kH4czMuW0Y_=dN+ZhtXNdRE7CWGvU2PNvA@mail.gmail.com> <CAKwvOdmf0V61O5gsuby_50fijrxe=LNh4pTtRGy_8=5637P7qw@mail.gmail.com>
In-Reply-To: <CAKwvOdmf0V61O5gsuby_50fijrxe=LNh4pTtRGy_8=5637P7qw@mail.gmail.com>
From: "'Saravana Kannan' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 10 Mar 2020 11:20:59 -0700
Message-ID: <CAGETcx930eOFOLjf2zjY5RLvSNnyyESLRv+8M7s=cP8EnMDBLg@mail.gmail.com>
Subject: Re: [PATCH] kbuild: Disable -Wpointer-to-enum-cast
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, David Laight <David.Laight@aculab.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Michal Marek <michal.lkml@markovi.net>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, stable <stable@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: saravanak@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="u/hp1G4Z";       spf=pass
 (google.com: domain of saravanak@google.com designates 2607:f8b0:4864:20::343
 as permitted sender) smtp.mailfrom=saravanak@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Saravana Kannan <saravanak@google.com>
Reply-To: Saravana Kannan <saravanak@google.com>
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

On Tue, Mar 10, 2020 at 9:16 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> + Saravana, who I spoke to briefly about this.
>
>
> On Tue, Mar 10, 2020 at 8:32 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > On Tue, Mar 10, 2020 at 8:31 PM David Laight <David.Laight@aculab.com> wrote:
> > >
> > > From: Nathan Chancellor
> > > > Sent: 10 March 2020 01:26
> > > ...
> > > > Sure, I can send v2 to do that but I think that sending 97 patches just
> > > > casting the small values (usually less than twenty) to unsigned long
> > > > then to the enum is rather frivolous. I audited at least ten to fifteen
> > > > of these call sites when creating the clang patch and they are all
> > > > basically false positives.
> > >
> > > Such casts just make the code hard to read.
> > > If misused casts can hide horrid bugs.
> > > IMHO sprinkling the code with casts just to remove
> > > compiler warnings will bite back one day.
> > >
> >
> > I agree that too much casts make the code hard to read,
> > but irrespective of this patch, there is no difference
> > in the fact that we need a cast to convert
> > (const void *) to a non-pointer value.
> >
> > The difference is whether we use
> > (uintptr_t) or (enum foo).
> >
> >
> >
> >
> > If we want to avoid casts completely,
> > we could use union in struct of_device_id
> > although this might be rejected.

The union like you suggested might fly. Maybe the new field data_ulong
or data_u32 might work and even help non-enum non-pointer values to be
stored in this directly too without needing the casting that's needed
today.

I still don't get why the compiler can't be smarter about this. If the
enum would fit inside the pointer, why not leave that alone and throw
a warning only when the enum really can overflow the pointer field?

> >
> >
> > FWIW:
> >
> > diff --git a/drivers/ata/ahci_brcm.c b/drivers/ata/ahci_brcm.c
> > index 6853dbb4131d..534170bea134 100644
> > --- a/drivers/ata/ahci_brcm.c
> > +++ b/drivers/ata/ahci_brcm.c
> > @@ -415,11 +415,11 @@ static struct scsi_host_template ahci_platform_sht = {
> >  };
> >
> >  static const struct of_device_id ahci_of_match[] = {
> > -       {.compatible = "brcm,bcm7425-ahci", .data = (void *)BRCM_SATA_BCM7425},
> > -       {.compatible = "brcm,bcm7445-ahci", .data = (void *)BRCM_SATA_BCM7445},
> > -       {.compatible = "brcm,bcm63138-ahci", .data = (void *)BRCM_SATA_BCM7445},
> > -       {.compatible = "brcm,bcm-nsp-ahci", .data = (void *)BRCM_SATA_NSP},
> > -       {.compatible = "brcm,bcm7216-ahci", .data = (void *)BRCM_SATA_BCM7216},
> > +       {.compatible = "brcm,bcm7425-ahci", .data2 = BRCM_SATA_BCM7425},
> > +       {.compatible = "brcm,bcm7445-ahci", .data2 = BRCM_SATA_BCM7445},
> > +       {.compatible = "brcm,bcm63138-ahci", .data2 = BRCM_SATA_BCM7445},
> > +       {.compatible = "brcm,bcm-nsp-ahci", .data2 = BRCM_SATA_NSP},
> > +       {.compatible = "brcm,bcm7216-ahci", .data2 = BRCM_SATA_BCM7216},
> >         {},
> >  };
> >  MODULE_DEVICE_TABLE(of, ahci_of_match);
> > @@ -442,7 +442,7 @@ static int brcm_ahci_probe(struct platform_device *pdev)
> >         if (!of_id)
> >                 return -ENODEV;
> >
> > -       priv->version = (enum brcm_ahci_version)of_id->data;
> > +       priv->version = of_id->data2;
> >         priv->dev = dev;
> >
> >         res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "top-ctrl");
> > diff --git a/include/linux/mod_devicetable.h b/include/linux/mod_devicetable.h
> > index e3596db077dc..98d44ebf146a 100644
> > --- a/include/linux/mod_devicetable.h
> > +++ b/include/linux/mod_devicetable.h
> > @@ -261,7 +261,10 @@ struct of_device_id {
> >         char    name[32];
> >         char    type[32];
> >         char    compatible[128];
> > -       const void *data;
> > +       union {
> > +               const void *data;
> > +               unsigned long data2;
> > +       };
> >  };
> >

I've never (or long since forgotten) consciously declared a union
without a name and directly accessed it's fields. If this compiles,
this seems reasonable.

-Saravana

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGETcx930eOFOLjf2zjY5RLvSNnyyESLRv%2B8M7s%3DcP8EnMDBLg%40mail.gmail.com.
