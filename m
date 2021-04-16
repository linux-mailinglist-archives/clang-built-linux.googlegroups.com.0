Return-Path: <clang-built-linux+bncBC4JBM6XX4IRB7U74WBQMGQEESYKW7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D096361BB7
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 10:51:12 +0200 (CEST)
Received: by mail-pf1-x439.google.com with SMTP id x23-20020aa78f170000b0290250e6e3a6f1sf4059492pfr.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 01:51:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618563071; cv=pass;
        d=google.com; s=arc-20160816;
        b=DFTY34hMzBmXDG6qIhUn50LrhE0ffcmBG/K4PQMQTir9uZDr+SMsTEZ2MzvchHs6bm
         /wA4gUr6BpxfURhSWevL5v/joQrRa9NykdSP5fVrqAJELkpiHiBqs9lFuQt1oFg3BxgA
         PMU3/nVhsftbVUF90oxkUQ3REeDBptyQI2NvkjTecs+F9eQOpRVSfVKk+sB0tus7GnoC
         kokPS/Mudau2iU1h+nDIWfw9p7/IDD8I6PoFq7YMOmGZ64icHsHh8IjoJIHYD5ZBLV0T
         /IS8SD31jChe/Y6ddk3XRMev9VbS8v6mlJUSJYbjXgtL7ATlmBPuCe05NiP1BxDEmFUY
         0WmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=wCaN3GdGoWjtAiOp1doNnYPGDcADIQUuS130pqRj9iI=;
        b=GUIbgtAkHqu5O/Px9giRhgH45GChyzClYNdkvX6/XRja248l3p9WPugkad/4Q3g5v9
         g06tXIJTMMHxJcYqq3kT9WAKhFtVxFC1hvvVueRHB757G9hJXynarlZOmVWlzPykz9Pt
         nV9ItTZKrVxaRmrxzR5WnyhU7CLK1g/56Fk9ChmKvVIYRxti0G2zzWs03wlOJMpzVyl+
         GyUiyHEOZvDWY89tW+fGqVfV4Gnv2XkqhI0qk/eCgPOfPAnQ11obDvL/H2Pul/KI4FsF
         /Fk1NNdLP3B6QGEXRJ6MLoM9RRCMy5f/LG06Yz4sqE2Hm1oT8AVI6zNjVcmMkZMNhCXI
         c0cw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=GnF3XUS3;
       spf=pass (google.com: domain of johan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=johan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wCaN3GdGoWjtAiOp1doNnYPGDcADIQUuS130pqRj9iI=;
        b=DHWV/DGVlIyYGzWD9z6/ZRwXCFPPz9/GkAJo2uGLEfjCB6AMdXhEJO9+qWy/gC8KOQ
         K+5R4Ul4rp6nE88PhwlvsmS8EjpQI3BzsdG2W5fCmSHGsbOyGVdRc0dzCxiR/SedC80i
         rCaELH/+MFj9LGd2ghimdsouN7s0Q1a3Lhky2nu7za7bL8G6+LlsPdhHy0snF+F6ZyIH
         XEBczMVUhHX1fs8cPc4LaRUT+v6c74UfNsoKWXh+mZnkvaBvCCjm4WexBLZxUspAIEGP
         lZtclfyPrW9aunLIKDQYl74LpSp37d1Bdj7tdmzs3pkt3NTeFZFtk5kF8V9UdUgmXuDS
         QNFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wCaN3GdGoWjtAiOp1doNnYPGDcADIQUuS130pqRj9iI=;
        b=DXWFEVhSnC3p9bNvDqBNnT4kRJmRo6eGEMSo07gs4TcLqUBKJ16AUlkderLVJs/Al9
         pp/5x4HdQHzE4vSpqcAcS/TLR5LZMFoquJVov+H+2r29PQNCghBXIMG9U9G0SryBMu4O
         R4F1bGUB1NOdOI81rbhnEXEi9SSrrln54tgW3T8d7fVoJEkR8widXZi2GgdmcQU6ZlOq
         1vmwWk3voz+qThxNCj6N6EG+Jpd5CLzakYLWF1enP+LbjO4++gUb5NExM34kQDrcgbYV
         PUe+mdpxJA2coXz3HPkrJV7OhHG0t8OyrqPTzostNHwmnDSnkLSJtmUDKJNdjxJY1Hgy
         UGfQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531+14l53tomWHLxkukXQ7Gx/nLmHBOvGcfVw/7K8trlrDU2+YkE
	KanCVora8LHtcsBXhDFAn5Y=
X-Google-Smtp-Source: ABdhPJzfl0tnhX0tj1Rnqw75fiOwuLjPKfYnnkDadz5Yun9lRrm4Mo/U32vSk1+qLOg62V53TTPdbA==
X-Received: by 2002:aa7:8711:0:b029:24a:3b1e:fb2d with SMTP id b17-20020aa787110000b029024a3b1efb2dmr6819295pfo.14.1618563070837;
        Fri, 16 Apr 2021 01:51:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8f8a:: with SMTP id z10ls3606809plo.1.gmail; Fri, 16
 Apr 2021 01:51:10 -0700 (PDT)
X-Received: by 2002:a17:902:be02:b029:e6:bb0d:6c1e with SMTP id r2-20020a170902be02b02900e6bb0d6c1emr8434052pls.77.1618563070247;
        Fri, 16 Apr 2021 01:51:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618563070; cv=none;
        d=google.com; s=arc-20160816;
        b=zD1cQqEAzKmNFM+uWHHximikvcDhWaL934r/wDdZG+s8h+vJCD6Jykc7996Emz22he
         YTS5i0v2bXQiV9E+OHrXZutAwTKENKhsAIVfp1CFA1oyEd7h2AxE0Ojk9nRZZTxzFNgQ
         PZkbpMfyQq2zJifXG67mn3ORWRzF/5bpc8i0FlXp1kHkg0GQqHHO4f3B0sWRh9l4Lf83
         rb0vnTNSjsStW5Y1yiTwLuTwgryZz4L5el23zUnW00ASE2iBckWrfRshCdX10TSqSOxn
         ONRDi2c399CNVCtGUlU15bwhjyeHKsS657pv5VWaDzdO0CcT8jaBolh5+51zZb+CqZyX
         YQGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=HDcs9N8rK4Jgfg1ARkJXfoy7TxIgpGEJ868Oi00DY1k=;
        b=o554u33nSsWZcPZozVGPsWcTEsksYT2mseZPQpjH3528rvixCHHxW3FH15kC4SlPL3
         VjY/p6Jhe5iScMRLjFRbxGG22Jx1wDXLjZ7/LWfH+Su5pzaFhsMJ/cq848VnhfyYxzTO
         wdvEp9I13TJi1o/+8Vix0em0Qh15guU1xjNKwBTnmEF/qpTqWd7vDHEeCLawJyWOab9u
         YalqTieUfqq5swNwS/3HyZj9OHTNr/FACkyEcSt4lsNz5nb+82PE003rwH4BukvyVq9Y
         3WVXx8BELSeOYRsaj9vLw8AS0H1evk0O2ycWDWEye4zrOQHbgClWh73W69gm2/hiy3m2
         Oliw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=GnF3XUS3;
       spf=pass (google.com: domain of johan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=johan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z22si506997pfc.6.2021.04.16.01.51.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Apr 2021 01:51:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of johan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id B17B061107;
	Fri, 16 Apr 2021 08:51:09 +0000 (UTC)
Received: from johan by xi.lan with local (Exim 4.93.0.4)
	(envelope-from <johan@kernel.org>)
	id 1lXKBx-0001M3-Dk; Fri, 16 Apr 2021 10:51:09 +0200
Date: Fri, 16 Apr 2021 10:51:09 +0200
From: Johan Hovold <johan@kernel.org>
To: Erwan LE RAY <erwan.leray@foss.st.com>
Cc: dillon min <dillon.minfei@gmail.com>,
	Greg KH <gregkh@linuxfoundation.org>, jirislaby@kernel.org,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre TORGUE <alexandre.torgue@foss.st.com>,
	kernel test robot <lkp@intel.com>, linux-serial@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Gerald Baeza <gerald.baeza@foss.st.com>
Subject: Re: [PATCH v2] serial: stm32: optimize spin lock usage
Message-ID: <YHlP/SryZXr/nNLM@hovoldconsulting.com>
References: <1618219898-4600-1-git-send-email-dillon.minfei@gmail.com>
 <YHRGPpQ03XgBMkiy@hovoldconsulting.com>
 <CAL9mu0JF-9hy3Z_ytpEO+hzKh0D+f-0gYaUBEA0v28EOHpC80w@mail.gmail.com>
 <CAL9mu0Ke97FUZ03jvdH8Lz2qRnVY82B7tAEtjbhW97sPOVkAxQ@mail.gmail.com>
 <e17fddfb-f9b8-238f-da74-a4746f33134f@foss.st.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <e17fddfb-f9b8-238f-da74-a4746f33134f@foss.st.com>
X-Original-Sender: johan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=GnF3XUS3;       spf=pass
 (google.com: domain of johan@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=johan@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

[ Please avoid top-posting. ]

On Thu, Apr 15, 2021 at 07:09:14PM +0200, Erwan LE RAY wrote:
> Hi Dillon,
> 
> STM32MP151 is mono-core, but both STM32MP153 and STM32MP157 are 
> dual-core (see 
> https://www.st.com/content/st_com/en/products/microcontrollers-microprocessors/stm32-arm-cortex-mpus.html).
> So your point is fully relevant, thanks.
> 
> ST already fixed the same issue in st-asc.c driver in the past (see 
> ef49ffd8), because a systematic deadlock was detected with RT kernel.

That's not the same issue. The above mentioned commit fixed an issue on
*RT* where local_irq_save() should be avoided.

> You proposed a first implementation in your patch, and a second one in 
> the discussion. It seems that your initial proposal (ie your V2 patch) 
> is the most standard one (implemented in 6 drivers). The second 
> implementation is implemented by only 1 company.
> 
> It looks that the solution is to avoid locking in the sysrq case and 
> trylock in the oops_in_progress case (see detailed analysis in 
> 677fe555cbfb1).
>
> So your initial patch looks to the right proposal, but it would be safer 
> if Greg could confirm it.

That would only fix the RT issue (and by making the sysrq one slightly
worse).

Using uart_unlock_and_check_sysrq() would address both issues.

Johan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YHlP/SryZXr/nNLM%40hovoldconsulting.com.
