Return-Path: <clang-built-linux+bncBCQMFSVRS4ORBVW763WQKGQEFSIUYDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D2E8ECFC7
	for <lists+clang-built-linux@lfdr.de>; Sat,  2 Nov 2019 17:33:28 +0100 (CET)
Received: by mail-qk1-x73e.google.com with SMTP id d144sf12596299qke.16
        for <lists+clang-built-linux@lfdr.de>; Sat, 02 Nov 2019 09:33:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572712407; cv=pass;
        d=google.com; s=arc-20160816;
        b=0K3AgYUr//Sdkl2+VmmKc2iLUT7Z9QOdjyyLlCEP8SbI0zbhD31B20UiKp3slh2CkW
         CpD70+pk4aoiN5C/ja5DKwwnpfZKGcfMWTSIJjdb4LzAVGNyZqRcA6CScZ6ObOfBXwaz
         ryoujHdPL6UwjDuda8+WVTPpS8+ytOarmd0qKVuILO5853Z2ZQa6sNdTs6KuvcqoUEbK
         C1JoeoaQqxg+Wy6IWP/bWM3kN+pAc7W9kXO2uSK0+gAONbGTM1kR9J/cMq76IHDTwEE4
         P/GiQ4rUJdyIpxPlox3MoWj5jknvXnlcUDFdZC9+faW+22pNEnO7QiUq4wwXMuRtYzqe
         q8SA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Y25YSeInmgvIjeBpKX8CG3gbAvCTdVdiG/NcXSjeGF0=;
        b=UjaCtEZ1YmLrJCvs1FWq9JiVrIW9wlIyJtighbGmnX2y+51dBTfESCLrdJtHRP698c
         36v6LVrmZXJ+tdb2TIiu/e7bIY3XVACKHvvaD41/Nkv31XMqUvlvJroVRzp3rRd8swsV
         E+r0QqfI/ePZgpX+LWooIXkcmcVygDQXxCqy6M+C0SjV184RzjCqHas55tDf1+sdoBft
         pZC5T6q8ssDJla4VnaqV3WkDErojRp71LGqAmtCrGfjLN+h2ABaBr5Paxsbip8H5tPPD
         dV0ncnr/hUZFQCPuWPcoA9khf+fMvQ940GMH41uendpDowJc/7ACCAr6l0dPreLA4aHF
         w7bg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=SjBb4mr+;
       spf=pass (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=vkoul@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Y25YSeInmgvIjeBpKX8CG3gbAvCTdVdiG/NcXSjeGF0=;
        b=EDwL9tmrL0e5fqq5/Tn28mA5dTc4yJcgr1bkyIWc6BLJNSJT/+NMUNmqvZ5v+huqNl
         RWLC5feSgxcK3mClB9SqMYSsImI+r+tBnjPO1y5qT9v+1tH7N4xx0945/vbAmJt1MgHF
         cxuNGXoofioIdhQisGnuyEMwMcogVHMi3nF5kFJq0xxLCNlvcDN02nCLMiAGsc9HirDQ
         MkXU+wl34H3MvNkjT+suo8tqhhQzc4F4SI31ik1x9LDrIUNQ+ZICYxdAcYPrqJBWDbhW
         igteEJW38xQz3ML6lIFhFs90Xdlv23BWPijM9YS9CRW2YA0iDKvvaTGbKRWaXSmGE9EA
         G8Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Y25YSeInmgvIjeBpKX8CG3gbAvCTdVdiG/NcXSjeGF0=;
        b=JmxsgDP1QG4oaBufR5K6SZck/aKQRDFSEqo2TuSA2IgtDGXlk7+qkgqotBTOcDEJsH
         nIHNqejd7DIbwCPJsxm0xjp16Mp50hnpmBy/JfeOdAGqNv/UlGg1VcZhe/jySiGjrkyk
         Re+Je3tVzryAx4UJzu0JsVDSfgD+2i+T9j+8tHjJABc9lqVXicfzNmRTWBKtX/4hXXKg
         kiexwfrIZUYBm7ZehVucqnEmRqA2Fcfp9Px1np5fM4HwV0LXgJlOHGs+xviGkbQI/vOa
         ZWzAO6FX7y68XzRNDDRbWARE+2Ua3VvjUJLSyUBMnaZn86cTmUTfVSxBxwE2NtSaJts7
         Tnwg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVTc0I6I0CrpoXR7nTkboS2pMQE8iOVG6RjNhP6XVCUfw43sB8F
	FrdKfBr3zzbLPeynzvEmBBQ=
X-Google-Smtp-Source: APXvYqwAanSVfyowoQRnJ5FF2h/uKsxGhDqC49K6Vv8+TnwmcZkeeUWLNXTG/MT6tPjlEQ7RiDdMGA==
X-Received: by 2002:a0c:e64e:: with SMTP id c14mr15892928qvn.13.1572712406957;
        Sat, 02 Nov 2019 09:33:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:4454:: with SMTP id r81ls3210521qka.5.gmail; Sat, 02 Nov
 2019 09:33:26 -0700 (PDT)
X-Received: by 2002:ae9:f204:: with SMTP id m4mr1470495qkg.105.1572712406557;
        Sat, 02 Nov 2019 09:33:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572712406; cv=none;
        d=google.com; s=arc-20160816;
        b=OZl33+mT2KkvLUt0vLE6a3fmiaLncMhXAMo+1g3jhMGltisf06r5HhOXaZkDkvrAJB
         KEW/MJk8DRHDUp5I9prFZZHeEbbeBxQi6HjqdBo2xe7ix2+6W9xCI+QMsanxHPnHydwu
         MTVe/wfEVhKyIZ1ngPLCZVCJu4dBntFNTkucb2GxlA0+EUxduoCG/1Z/P6AgSAkGfUA8
         elg26IQP1zVMySI+0feTVtWt4tzQEqxidhB3xlKeVe4cX0uEBotLkfClpiexRHACb0Vi
         IjOkcKSxC/mDk9lNlDoteK8I/ktun1ordN/fjkKxRMaZvzrbktEECR0IQHeaBzO7SmrR
         RGUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=P7eowq2qr2Sw6vkhcODxptU0j9Sid/bM+EtRWFmAI3k=;
        b=QoDeBIAEBwfsvWda2N3uAWkVoyRfLKrxWTicg191oyp1UOL4xW9udVNHNuQSn3qvq3
         6jm72dzFu83GhW+p8IA46rxp5MWpveztmTAymKXOULd81NeOgOJNYIwBptajtwPJ5XTX
         bdqG/u5CGSvqHVmNK2T0/bBVv7ccPrQgmICx0JRFutUmGZV236xT6dPynCvnqROzFG1y
         YO95D4JmQeFCrmNG2EHn8cjHMwS+mllSA01loPiNgP61XL1RRt1vbO9uKbCXORjdQzQk
         W4BWNsQiCrN/s+IAxP7r1IQoXBdEri6L3u5uAXrg7rpSuLc2L+1n064I9iu96kKtOzu4
         xW9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=SjBb4mr+;
       spf=pass (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=vkoul@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x135si481518qka.3.2019.11.02.09.33.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Nov 2019 09:33:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (unknown [106.206.20.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3A26E21726;
	Sat,  2 Nov 2019 16:33:23 +0000 (UTC)
Date: Sat, 2 Nov 2019 22:03:19 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Peng Ma <peng.ma@nxp.com>, Dan Williams <dan.j.williams@intel.com>,
	dmaengine@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH -next] dmaengine: fsl-dpaa2-qdma: Remove unnecessary
 local variables in DPDMAI_CMD_CREATE macro
Message-ID: <20191102163319.GD2695@vkoul-mobl.Dlink>
References: <20191022171648.37732-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191022171648.37732-1-natechancellor@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: vkoul@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=SjBb4mr+;       spf=pass
 (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=vkoul@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On 22-10-19, 10:16, Nathan Chancellor wrote:
> Clang warns:
> 
> drivers/dma/fsl-dpaa2-qdma/dpdmai.c:148:25: warning: variable 'cfg' is
> uninitialized when used within its own initialization [-Wuninitialized]
>         DPDMAI_CMD_CREATE(cmd, cfg);
>         ~~~~~~~~~~~~~~~~~~~~~~~^~~~
> drivers/dma/fsl-dpaa2-qdma/dpdmai.c:42:24: note: expanded from macro
> 'DPDMAI_CMD_CREATE'
>         typeof(_cfg) (cfg) = (_cfg); \
>                       ~~~     ^~~~
> 1 warning generated.
> 
> Looking at the preprocessed source, we can see that this is true.
> 
> int dpdmai_create(struct fsl_mc_io *mc_io, u32 cmd_flags,
>                   const struct dpdmai_cfg *cfg, u16 *token)
> {
>         struct fsl_mc_command cmd = { 0 };
>         int err;
> 
>         cmd.header = mc_encode_cmd_header((((0x90E) << 4) | 0), cmd_flags, 0);
>         do {
>                 typeof(cmd)(cmd) = (cmd);
>                 typeof(cfg)(cfg) = (cfg);
>                 ((cmd).params[0] |= mc_enc((8), (8), (cfg)->priorities[0]));
>                 ((cmd).params[0] |= mc_enc((16), (8), (cfg)->priorities[1]));
>         } while (0);
> 
> I cannot see a good reason to create another version of cfg when the
> parameter one will work perfectly fine and cmd can just be used as is.
> Remove them to fix this warning.

Applied, thanks

-- 
~Vinod

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191102163319.GD2695%40vkoul-mobl.Dlink.
