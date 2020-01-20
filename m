Return-Path: <clang-built-linux+bncBCYIFQES4IBBB5WCSXYQKGQEK5BVJZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 197861424D5
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jan 2020 09:14:47 +0100 (CET)
Received: by mail-ed1-x53c.google.com with SMTP id ck15sf21249494edb.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jan 2020 00:14:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579508086; cv=pass;
        d=google.com; s=arc-20160816;
        b=wbGlnj4+QJOonzC0jejqaSSCXbyzLsAI1HBTket3Zqg87aNL+ykcJeEBlEylFm31oN
         jONQaOynikzCThXju4LUS/l9byf0UqKZZY0NMfFSV3vT07pW0gLkjlneWCYaie2wThcl
         9/euz9/qFuHKoXoJsmaccyBXMxZXiO80uQV4dhku0cGk/BS5FJB+fieeA9BBT+++8Mdb
         BcFT4wv4HSc1km7KgNzg1A80VI6iYV6ygLwdT5pkrx31wXFCC8dXCmncPZqX2Oe1lwJe
         BHZhJsbM4i++VP7sZR/N1qPDY/pcXEvUoyDUDO7zmP/po79KfYDSPV1EBKRPyimf7o0C
         zmVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=0K7fNOHem/5yYeR6WR9S4CL6B35wKr+lvhmxNskEQ0g=;
        b=DVb+7vX0UvJXqVUnY/rOkWNwh1wpi4foQYn5RRr3AYBmOrB9dzYfGWvfmSSGdVpNQ0
         CEOhH9I/xP6ZoWpGdfC/k9PCdGdBW2qGokYdx5voMHnSMprkOLNpc0MBuPu4km/IQgXy
         hxkCRTsA6+q3kZMWolgTpAG76HTYMSlwCtLQp4wwih+IJkXylClx/Yi+6IDlQ1Q47J79
         f7Vo1c79fg9NH/Tdv/yPZYg+rrDXfIZqoHbHwMsKj7MXh3vvbzFvBzTnyzu8ztperxo2
         Tmh0Fmtg9gEzQe40k28RlaGLfJEtzUJF21bMvVTLcYuU6Zw4eJkChKeEFkiDfsNIOtWY
         kg6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hR97wZBL;
       spf=pass (google.com: domain of zhang.lyra@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=zhang.lyra@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0K7fNOHem/5yYeR6WR9S4CL6B35wKr+lvhmxNskEQ0g=;
        b=Sp7n1KwDIfdN49k6GQDmSXejfLwIP2yEzJ71OmHJJB7McZF17ix22wT36teRvzV8Eq
         009ulzzWRSGeAitvSJ4KKm5h+2+pTduo1iWrXFHhg/DpkxeV5e33dE/uwqegEwxmoYt8
         LVSn+6Q5J/yjGIRyk/SQO7ytwYlI8vKkv4fxRxTH2ghs0NBe7GFZ9Wfb4Xs6LOr4Uhy4
         pX3O6ThVY1+WUlOxkT5FoOppUAK5MUhztW5QxJdPUgOe0aDsGF6pMM3DjQpxtDSdDpJM
         167DPjNYQJiuHjhmiDtePEN4GxC7id9pw3kQ/yNBCHMUkhf/hdA0nvIXoBDpems78Om1
         dn2g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0K7fNOHem/5yYeR6WR9S4CL6B35wKr+lvhmxNskEQ0g=;
        b=aZ7conSlyRNpn56skFR8qVcQFx0GkgtgiW5rdj6rxIhLv1sk8jRukdoeeMrffkwKQ9
         pZKkkejDoKyiWYFBexICQus/xDtOqCxnCpNPBQGKeVYpRXMlIZy4b74b9cdq63J+QxqR
         csSVA38YZDhh2ftGI7NmHKqj/JYaofkudge7Pn5vh+mkBNJaMNrqQUv1cEVPWvOmKq5C
         defpt19ClminHzr574GmUtUQMhb5ityTMrhsILmzThDj2JV4Y0aEHj0mDTZ/Qqild5R1
         qT6gCk2FcPPDfNQTapQdjpLXZgFJipiGQX2ghinOWvfdbdQnFR0w+Eq7DoCr/NrceFgN
         sgkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0K7fNOHem/5yYeR6WR9S4CL6B35wKr+lvhmxNskEQ0g=;
        b=mRZgu7Zzzy7fh93lpiHeb3J1ZHiXiW/oxYoJ03eq8t9Mmq5/pXTZu85Y6jfc9R6n+U
         51HtdwsAp+6iyg4LVR+mxp9y7ASt/9nQUczDtL5qRmGTTvlOvR6nyJqpxU+1Jgec7cyg
         giHb6LxxOeUJ8sodHYqT6/F1mmZ8PYuqqdVUKgtLyetj5EpPB2eQ/kAaLUvmNL9dqkdE
         zEfRJ/FMNrdfQnSoLwEEQ0BzMa5PTjyna/xDvlgFG6sdJq5nzI/4I2sOHM1yj3lW7Mil
         2S1KxNKdmPfcZ9WDBk8vbCikRCrvrhjMvcP91IjqFTY1R91tpkkS+GYLgIV63XGPzUlb
         dcTA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVjCw3JQguaaje+VGVV5GRw33bQvkUy8eUoQ8PqwsXlqESR+oFQ
	3XFJ1nP1RZLvZnuRMOz1sJQ=
X-Google-Smtp-Source: APXvYqwfnmoFsWZWSF9w8hE6MkIikfY1RQsz0Crftwx0uq8zSiI1F8MBjSkB655dMEPx2IYfsvunig==
X-Received: by 2002:aa7:da42:: with SMTP id w2mr16869781eds.3.1579508086744;
        Mon, 20 Jan 2020 00:14:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:48c4:: with SMTP id d4ls4898288ejt.14.gmail; Mon, 20
 Jan 2020 00:14:46 -0800 (PST)
X-Received: by 2002:a17:906:244e:: with SMTP id a14mr4258577ejb.43.1579508086174;
        Mon, 20 Jan 2020 00:14:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579508086; cv=none;
        d=google.com; s=arc-20160816;
        b=lSbyAmAgcsJuuyN4FtpuUIA5Nj+33fbPA/s9yGvj04w9aquqwkCIfdFaGITBOXzcWh
         O95gDiyCcGVj07Fw1M87J6AkLG4iKg2FLMtq6OYawHxvTx0nbDUDtOneWfgN4xSPWNaj
         6F+/NXJDJ1to+P1kwSqSMJBSaASrQj0H02NQDsfIYut/cA5V7JXm0hx8hDxQ29USGqH+
         UGSawnvS4CYXhKYj8D610IiI//8iZK9S8E0WyDt/5QR+8s9V9IlJTtJv6prz4Xur071h
         LcEGHFUCIWAaZZeWOIahDGZRuAFrFb2yZz+cCGCo/9lDcPBoRuvz1UeQaoIzd9qCTLU3
         G1DA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=UIic33wM3WlTJ/qyfJXoCISYAJdeCBgMYcJKMtJGZhk=;
        b=RRKyh6JedT7iZBS41uy48Qxil6lcjt9BOccDNfh/gck9H6X1sHsRvLLGNViTbLQH90
         mFiqMDwNZ1+K5ZxyXYpge4x97Y3+BA5eAMkBlkOfTIdZLedbYXckiy8T0CSLTPMM2/80
         0AKrVOpprsx+1FMIXE5lEikbrfEgLbFX4G4XJE/KjBEtoQQXTOq2Im7Qxvtpv50MCPX0
         9cIaqBvdfjH3eExH99ZhTLj9w3uBbLOM47uXNBPjiws8SgBQZgFbFzccJYanQH9c0s1z
         lTMu/bKCQyiHlSOiSVJS7uErVyT6fC0xur23jQyV2isqSKYos9AVm8ueQRsEcyAg54f8
         y5Gg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hR97wZBL;
       spf=pass (google.com: domain of zhang.lyra@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=zhang.lyra@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id ba12si1354916edb.3.2020.01.20.00.14.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jan 2020 00:14:46 -0800 (PST)
Received-SPF: pass (google.com: domain of zhang.lyra@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id w15so28515382wru.4
        for <clang-built-linux@googlegroups.com>; Mon, 20 Jan 2020 00:14:46 -0800 (PST)
X-Received: by 2002:a5d:5704:: with SMTP id a4mr17680370wrv.198.1579508085926;
 Mon, 20 Jan 2020 00:14:45 -0800 (PST)
MIME-Version: 1.0
References: <20200120031023.32482-1-zhang.chunyan@linaro.org>
 <20200120033223.897-1-zhang.chunyan@linaro.org> <65f7272c-ecea-03de-433b-21ba2e672d20@intel.com>
In-Reply-To: <65f7272c-ecea-03de-433b-21ba2e672d20@intel.com>
From: Chunyan Zhang <zhang.lyra@gmail.com>
Date: Mon, 20 Jan 2020 16:14:09 +0800
Message-ID: <CAAfSe-vjmFGkK5Enj9Nj_qrERJbNQTLejpVL+JVJLG7tgNhT9w@mail.gmail.com>
Subject: Re: [PATCH v2] mmc: sdhci: fix an issue of mixing different types
To: Adrian Hunter <adrian.hunter@intel.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Faiz Abbas <faiz_abbas@ti.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Chunyan Zhang <zhang.chunyan@linaro.org>, 
	"linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>, clang-built-linux@googlegroups.com, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: zhang.lyra@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=hR97wZBL;       spf=pass
 (google.com: domain of zhang.lyra@gmail.com designates 2a00:1450:4864:20::441
 as permitted sender) smtp.mailfrom=zhang.lyra@gmail.com;       dmarc=pass
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

On Mon, 20 Jan 2020 at 15:15, Adrian Hunter <adrian.hunter@intel.com> wrote:
>
> On 20/01/20 5:32 am, Chunyan Zhang wrote:
> > Fix an issue reported by sparse, since mixed types of parameters are
> > used on calling dmaengine_prep_slave_sg().
> >
> > Fixes: 36e1da441fec (mmc: sdhci: add support for using external DMA devices)
>
> That commit number is only in next

Ok, so should this line be removed?

>
> > Reported-by: kbuild test robot <lkp@intel.com>
> > Signed-off-by: Chunyan Zhang <zhang.chunyan@linaro.org>
> > Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
>
> Acked-by: Adrian Hunter <adrian.hunter@intel.com>

Thank you!

Chunyan

>
> > ---
> > Changes from v1:
> > * address comments from Nathan Chancellor
> > - define a new variable to avoid type conversions.
> > ---
> >  drivers/mmc/host/sdhci.c | 5 +++--
> >  1 file changed, 3 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/mmc/host/sdhci.c b/drivers/mmc/host/sdhci.c
> > index 30b5a624b50e..f9e0b5f2c692 100644
> > --- a/drivers/mmc/host/sdhci.c
> > +++ b/drivers/mmc/host/sdhci.c
> > @@ -1201,6 +1201,7 @@ static int sdhci_external_dma_setup(struct sdhci_host *host,
> >                                   struct mmc_command *cmd)
> >  {
> >       int ret, i;
> > +     enum dma_transfer_direction dir;
> >       struct dma_async_tx_descriptor *desc;
> >       struct mmc_data *data = cmd->data;
> >       struct dma_chan *chan;
> > @@ -1234,8 +1235,8 @@ static int sdhci_external_dma_setup(struct sdhci_host *host,
> >       if (sg_cnt <= 0)
> >               return -EINVAL;
> >
> > -     desc = dmaengine_prep_slave_sg(chan, data->sg, data->sg_len,
> > -                                    mmc_get_dma_dir(data),
> > +     dir = data->flags & MMC_DATA_WRITE ? DMA_MEM_TO_DEV : DMA_DEV_TO_MEM;
> > +     desc = dmaengine_prep_slave_sg(chan, data->sg, data->sg_len, dir,
> >                                      DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
> >       if (!desc)
> >               return -EINVAL;
> >
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAAfSe-vjmFGkK5Enj9Nj_qrERJbNQTLejpVL%2BJVJLG7tgNhT9w%40mail.gmail.com.
