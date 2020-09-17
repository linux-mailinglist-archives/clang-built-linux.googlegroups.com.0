Return-Path: <clang-built-linux+bncBAABB6XDRP5QKGQEH2LM2IA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 60D3C26D2F3
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 07:19:56 +0200 (CEST)
Received: by mail-oo1-xc3c.google.com with SMTP id s23sf603669oov.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 22:19:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600319995; cv=pass;
        d=google.com; s=arc-20160816;
        b=frTKJ3q6LiMtrtLu0HiKcXZdbaN/IWHzQvUWBR0q6XSdOBg74X/gyarnC1fGn28Up6
         tWZhTvYIZ8BfNPWQ0bFNjsT1Pmeq6Z5ORmmQ4E4XeuUmaJAPfDwuuCMX/g02t1XWyie/
         owfOcJwkYjSt6TSJRn5q+a1w0rlVq21ZqvDB14hFq7xNCGBYXTxlR2j1HHHXwnK4LkHw
         1F/O/3aaJa5VcxL60tMKzGx64h6i2RpHsvFHcJ3rQorHrv+Df0HNFaJIRoPezaKdiyAc
         YS753sRtN5inI8phGGVXe5TtK+9kmeCg6O4Q0dzx8DP8KwOJ81T8vx+IkWNSOMcID9aO
         BqlA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=5P8qMoAhVTh1XO7Mh5qvb7A/09LVNrUQfJZ+8ZS/AVg=;
        b=Pcomv8P8VMLhyrBydTDGr0oWXVftNMDPDJk4FrNVSUrS9fHJJWOTcY3dv8B0Xdunnv
         BlD8lUf4cjnsv226tWCRGgQzU2ODNQHm+KGM2UStLGWc5lMhZcTi2SpmrGvfGiFb/l94
         Cq7q2TBRoJ5iiH5bbKDk/ZaRCyRGyuN4/ftx+As/tsUh5XsdwFIA7Er5e/904oa1ArHm
         U7QXpBsgrLfjIHF3a+i1o+NaHeNf8T1KkX3mv2jLbwJlobqTEOU1aozyXlXJFVDYxgM4
         4a2PkQ0AuwlfKcyx5TtkUrHIGxNS2gMaWbP2Atxiwo3xeQe5lJsb77BqOxw2HbpKBEeQ
         +CKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=nUxgf4XQ;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5P8qMoAhVTh1XO7Mh5qvb7A/09LVNrUQfJZ+8ZS/AVg=;
        b=VpAQAsGVoJ4ZafXzgEbS4ta71wMctKezm1zGn45jWccfP3iI1HMX2m7rMiPcy9On1R
         Kl5le99RTmvSKsV9FR0hZzo3Zv9ok6fBlQ6IlUjCWjTNcyMSJLKcumIyqyhD0Rx+XRwC
         TgQdN9PwgT5V9T8B1Xl/2wbqJOoynSRCljpX2QSnL+Z6u2kvN+EQiiL9PeRrSn41HvX7
         p4PZ97B/adRsLK98Mn0eWwWnH5wc+ONvU2dlQI6VIbNWpLA94qRff0RAivfiXfKYa+IW
         Cm+Y3KvY+aduu2PgInXQ8KkHKrIz5aGGnQZ97x1UqnrUXoFr15FHLwYxsde+GaT4xQDi
         p6rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5P8qMoAhVTh1XO7Mh5qvb7A/09LVNrUQfJZ+8ZS/AVg=;
        b=IAc8e7YP1ndUmo60MKnGTcCrQDAd34S8akFj1CtqdvmKikyffZo0kVYncvxRMC2+D3
         99SRcI4+N/Tdm1qGdLfQAjIHrisKMXb4BT0dbuLU8bjgalo72782kLh1knGyLtrIKwFg
         +8vOCsTdYX7BPUsrkm2BGxc60/fYYS0U06C+wwXc8Duo/v9Nw0Xqi+cBzM39cpyTOUaf
         Z9pW4W6GRBrtuZhCjYyefaEiFBmrMtECxc6bhpxaQOAFzicDbA6qzL3/VVX40bQfARFf
         wZC/w7KyViOa6nQ7VMRYJbIZ9q/BnlZV5t8CVP1KIKshBjOJ+w4riPC904ii7JvHqyCK
         Y1Kg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533r5Va7rxGOSIHmzXQ8tVZLuMUdavtdEmAvuPDQun8Apu3hlkh3
	efbZ9NLJQ74X8kMPuxnUmHI=
X-Google-Smtp-Source: ABdhPJwa6IY0SM6R3gD9+zgxB/OGTnNwnfd9DoBeykE+u/ObfwXilZz0p0CemAeHmZ4Q6xS7hWuP9A==
X-Received: by 2002:aca:42c2:: with SMTP id p185mr5053230oia.55.1600319994855;
        Wed, 16 Sep 2020 22:19:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d888:: with SMTP id p130ls173123oig.11.gmail; Wed, 16
 Sep 2020 22:19:54 -0700 (PDT)
X-Received: by 2002:aca:c6c1:: with SMTP id w184mr5496133oif.67.1600319994557;
        Wed, 16 Sep 2020 22:19:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600319994; cv=none;
        d=google.com; s=arc-20160816;
        b=P8h8LrwXQFbT5YrCa8PAmnygPpSFG+YYON09BGbaGmmf8RUu7k9wj7JHJYpte3ayM9
         pBrvL4kNSEk2e3TalMj86pK3KeA+fLxbp4nnjBiQWN1AEV69QuQNXWiMfRJ2eHv5WcSX
         hNUdhULUWvedY7EcH2SYhe3hn5jLUqnD+O9NO+Hb/IlaJTCEBWgUWrFBELgk7lyFRcCu
         pQEjoZH0S40GDTEXcDFFu4GvsnEHfXv/A6qdL0Xx8nyHquZAW+t1UEXUCsRRVdiPaxyP
         Y6d56rRD2Sa5fx5C4FhJw6Rt1ytqM+bm8WmCVl5JrzUv/AWchouJGwjhFfHHQykFB6vV
         tGMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=cYV0bLC3BwA3JpPOgMPNxfgdd1TGD9K8g8WQfQjYfnc=;
        b=X7rBC9igL51Ig6jwmA+e62X1khZ3BEaNzDY1mhERnGkFiQuvHW2sT2K0H60D0nAYcn
         uBKbXoDqbRpwcPKKcrGrExK1si6SzZ2qCDjbSpwA8WciR5kppo30fmJGypO+ISQeDa8Y
         zqECGQt1Hd3kj2Q2s8BNHBgk5nDwltzLMVwKyDGVLoFVD6euxCywuEQ1kxND4oFY3fhM
         ek7PvAZlgN34BH1iQQf8twvlFuvG7rWJGpvLAgQxn0RikJD8iqQBMSY4EW7rVnzxQZRg
         YLS4VcSSZzsYXPEEPVmUvGieYuhKVJcDeR79eUKUp/vdyjgz4xa8ogcNktXJnqRpGahN
         ilUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=nUxgf4XQ;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l19si1493621oih.2.2020.09.16.22.19.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Sep 2020 22:19:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from kernel.org (unknown [87.71.73.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 38D71206C3;
	Thu, 17 Sep 2020 05:19:48 +0000 (UTC)
Date: Thu, 17 Sep 2020 08:19:45 +0300
From: Mike Rapoport <rppt@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Ard Biesheuvel <ardb@kernel.org>, linux-efi <linux-efi@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Russell King <linux@armlinux.org.uk>,
	Linus Walleij <linus.walleij@linaro.org>,
	Nicolas Pitre <nico@fluxnic.net>, Stefan Agner <stefan@agner.ch>,
	Peter Smith <Peter.Smith@arm.com>, Marc Zyngier <maz@kernel.org>,
	Will Deacon <will@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Jian Cai <jiancai@google.com>, song.bao.hua@hisilicon.com,
	Anders Roxell <anders.roxell@linaro.org>,
	Naresh Kamboju <naresh.kamboju@linaro.org>,
	Mike Kravetz <mike.kravetz@oracle.com>
Subject: Re: [PATCH 00/12] ARM: use adr_l/ldr_l macros for PC-relative
 references
Message-ID: <20200917051945.GM2142832@kernel.org>
References: <20200914095706.3985-1-ardb@kernel.org>
 <CAKwvOdmSXm7cV3hB_Yp=DD0RwwDHtPzzDBU8Xj5kBREn3xqYdA@mail.gmail.com>
 <CAMj1kXGuFFUyT48EYvzFmjCP4QZi_Sk_GpBrBCaHjP7HKLhjBA@mail.gmail.com>
 <CAKwvOdmkNgi_+kfauTSLwtpVChipW851_KGJG+gBbhwRxJJORA@mail.gmail.com>
 <CAMj1kXHTkP7-8xscGZGXN_0Sq=BCSnt3zWqkcm8xdO11xmditA@mail.gmail.com>
 <CAKwvOd=G2Rr3StUJ=oWu1L4b5y615m+uYNW-Y5sis13uqBvrYQ@mail.gmail.com>
 <CAMj1kXHEpPc0MSoMrCxEkyb44AkLM2NJJGtOXLpr6kxBHS0vfA@mail.gmail.com>
 <CAKwvOd=Sq3XOquw4ACEi+cYCQp0-LW-JXoecFt+yy+jtmtuhiQ@mail.gmail.com>
 <CAKwvOd=CmiZ72yVmhX6LubObC6nUxjhwHhexjzW25j_8bpn_KA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=CmiZ72yVmhX6LubObC6nUxjhwHhexjzW25j_8bpn_KA@mail.gmail.com>
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=nUxgf4XQ;       spf=pass
 (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=rppt@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

(added Mike K.)

On Wed, Sep 16, 2020 at 05:16:32PM -0700, Nick Desaulniers wrote:
> On Wed, Sep 16, 2020 at 2:25 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:

...
 
> Maybe this is: https://lore.kernel.org/linux-next/20200916140437.GL2142832@kernel.org/
> ? That looks arm64 specific though.  Maybe 32b ARM needs the same or a
> similar fix?  Oh man, this boots, total shot in the dark:

The CMA change is the problem IMO and it's now removed from -mm and
-next trees. 

> diff --git a/arch/arm/mm/init.c b/arch/arm/mm/init.c
> index 45f9d5ec2360..7118b98c1f5f 100644
> --- a/arch/arm/mm/init.c
> +++ b/arch/arm/mm/init.c
> @@ -226,9 +226,6 @@ void __init arm_memblock_init(const struct
> machine_desc *mdesc)
>         early_init_fdt_reserve_self();
>         early_init_fdt_scan_reserved_mem();
> 
> -       /* reserve memory for DMA contiguous allocations */
> -       dma_contiguous_reserve(arm_dma_limit);
> -
>         arm_memblock_steal_permitted = false;
>         memblock_dump_all();
>  }
> @@ -248,6 +245,9 @@ void __init bootmem_init(void)
>          */
>         sparse_init();
> 
> +       /* reserve memory for DMA contiguous allocations */
> +       dma_contiguous_reserve(arm_dma_limit);
> +

This might be too late for ARM because in paging_init() it calls
dma_contiguous_remap() which presumes that the CMA area is already
reserved.

dma_contiguous_remap() might be NOP, so your fix will boot until it
fails eventually :) 

>         /*
>          * Now free the memory - free_area_init needs
>          * the sparse mem_map arrays initialized by sparse_init()

-- 
Sincerely yours,
Mike.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200917051945.GM2142832%40kernel.org.
