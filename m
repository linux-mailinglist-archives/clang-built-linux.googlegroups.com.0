Return-Path: <clang-built-linux+bncBAABBQO44KAQMGQETDHV2KI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3c.google.com (mail-vs1-xe3c.google.com [IPv6:2607:f8b0:4864:20::e3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F20E325EBC
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 09:16:02 +0100 (CET)
Received: by mail-vs1-xe3c.google.com with SMTP id f184sf751828vsc.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 00:16:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614327361; cv=pass;
        d=google.com; s=arc-20160816;
        b=euGcyuwB8jdTesMUfpDjz8554umtg7rprMes8v8EIfWeoQ5jgAOzHsmijjBrUebkFq
         BIAIpwR9oFwNRmd54UvKM+5+6wOda+n6MOTptUgv0aDY4NpvhXpVBc3EwFqD1aBwfmI7
         4UYIbY22nAqP9JIEp+K0F7vKbyFETWfRSwreQ6LE+wM8wylZT4epE+K6OLpKtj1JYg8v
         P4zoZ1kXgPmk1SIYSl4g2KmWcWqUA+3TdEAv29p6EAwU2vNQZJ1UissuCXmOJ/Mk0tlH
         2yvIOtKPiF47gXbNJA5w8ta3bWT7VNx+Dbbg/EuP2qT35fDWnO1K9E8ih9Eifag5isW8
         Q57g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=ifpYQAtE+XJsXEpc1ZpA7gMYyuw1MSMpItfawAqO68w=;
        b=jAS0VkQQyqS7UTwqOjZfNMgdjymd5sDu8HKPb3EG8u4r8inUj/nehBcYNufVuGxzqQ
         me6mB4+ADG0gUEMEdZ0oBQit7pflLVxwzkPdxPWKddZK2o6OAszQFVriKmenGoEOa7eJ
         1jgbjN8Jr/C9BD9T3gcJPB2aYpwz944f1F/WUj+cSXeTD92e+X3a6szJhmgy/g/FFu8q
         TSHyt/8znVN6u0vUYC5OLzZZgqzaJMkdvmqTttbSfzQivuQak1/pe1zu8svE0aZbxuPL
         gvVDS8b+zKTFE0PpI7Zn+4+8uuZ7TYItDHc5MoHs7U5M8v8B85CYqn/4MSjZRCKpO0g8
         +n0Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=EVXzNnfm;
       spf=pass (google.com: domain of p.yadav@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=p.yadav@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ifpYQAtE+XJsXEpc1ZpA7gMYyuw1MSMpItfawAqO68w=;
        b=LE/Uqrj/iZlvC/1Gzd1md8sarIU7qSDMWfnM2z/ho95kSCmlW85G70Utdje2ap6G7/
         qyYXm03l/wjPn+UeMrCswP7OYe4W1cBodu2TgW+d9FXEPZ+FZCjg8Sf7gCSm3IUroVGp
         2BRzgeuZMCyJ0HueNZpqBB8I7bXJmfafvLkAiBHkkqUIeQu2wFg0y2qk8ECb5xCvImyY
         yC0+cHIkrTtcdVP1riSUig2p5IteiKeAwcUAxXLR1mQYeYEcq/lUlIV8BjsW7AweDanN
         jjtFA7epsx/nmS3484FAaR5CVQpwaFm2ieyKg/MY6G0Fjf16eJ14FuvnEla0VTK+uhRt
         Okjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ifpYQAtE+XJsXEpc1ZpA7gMYyuw1MSMpItfawAqO68w=;
        b=QZVSov7ai3xsRjypyu9FuZw+vTDIfBH619Mf98X+WABk0FfxBDLFMG+k/ar7NSXw6C
         oO+roJFTr63uBdCxXr5HAPxWd4qj532AcDT7sPMOUcOrPnJJXhTHZtlJ7CNIZ+KO8Oxw
         xCjrTmq2d/18TlJ8hE1zKpOGikpfobm55UxSahuJ+4ccJ/qDZUs+ihSaLswy8cUdzgC5
         67lBHXgn02TWgGoQV46wEMRqkttgCJ4+JheQhuCXJg8JeyrfFBNtqr0VE78qgqHe3RSU
         qanNwJBRh+a7QpIQnn1+vFx7C3oVThSU/ixNP0johqrNkgBG9l+b7QB6FSpXOBTqKzfd
         TiQA==
X-Gm-Message-State: AOAM530QDqUvEubnATawEXsTuBx3PU49f+lMpyCUqh9A4ZPmRvHjd/J5
	PSJXuBpwiiVizXMxwPYp3ss=
X-Google-Smtp-Source: ABdhPJzkaFxyyAdzbCb8g6WlwH6KpMhTNRp08StySOFbJ1m8RGJQE9BPdwpXTo8zDL80AAI799+0mw==
X-Received: by 2002:a67:798b:: with SMTP id u133mr728014vsc.9.1614327361541;
        Fri, 26 Feb 2021 00:16:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:3004:: with SMTP id w4ls1001861vsw.9.gmail; Fri, 26 Feb
 2021 00:16:01 -0800 (PST)
X-Received: by 2002:a67:2742:: with SMTP id n63mr860353vsn.1.1614327361045;
        Fri, 26 Feb 2021 00:16:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614327361; cv=none;
        d=google.com; s=arc-20160816;
        b=LkiTP/8YWyl1tgy2QK/Fd5TPdJJANdeyb2dc6VUxhdqiEzmprtcACjOofRWv77/LYR
         UxV3b56sJrwd6k/PeV/dlcLIuHfXgHfnRFuS2OgOvLy2KmPWxaRC4nWdelIX8CrV6HBa
         wZCU2JJLSx+/9J+mZF63tfQRQ8Xu0jGZhwSrCVg8lAZPqeMSNsWkOpunl2XYvkOrJuTM
         fgCu6L6TF8gR2hw6ldeOskCq0f+sy3f8eb5llANT30upeowqnOzMlkcu5n9HkAPHskS3
         aOq/iG+8RV3AV+uGBJJxo0Aw+HQ8Y+rDohCFXjRMEy5d43zEuiXbAtC1eIxiuGaET9al
         MRmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=M1DX4Z5TbpoNhnKn+jRkQPGNQQ6oXlmXqLr7m8RL0SA=;
        b=k3ZsgyWNf10+2Tu/3l3Dn+GkbkMpuTJbq06dR5N1yTmcZdHje8juN3T1NVKKe1F62B
         PKCySx6+Psqk5vduQnALFaF7vIyLzF5UGS1xGaAI/zyUyWEUrmcqwHhgipXDXqfP7mj6
         r4/Goc9SLmFce6kHH7/G2pDcM1TfTftsZksZwNzIQmbR2Ut3tYCeY6VUma6qbFXTBj1C
         caPtN01j5s21e5EYeGmLJYJRi2/lcF/sxfTEFNev9LfFcmyT8SCHED8Vu9xg0h7Raid2
         okEhbKArKEoaR3chz20VTrrrCgMfvIymJwmv+0d3kPLhBojXyfFx2zcEp/B9HHmfO8CP
         6U0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=EVXzNnfm;
       spf=pass (google.com: domain of p.yadav@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=p.yadav@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id e11si455597vkp.4.2021.02.26.00.16.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2021 00:16:00 -0800 (PST)
Received-SPF: pass (google.com: domain of p.yadav@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 11Q8FovB105037;
	Fri, 26 Feb 2021 02:15:50 -0600
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 11Q8FodB039421
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 26 Feb 2021 02:15:50 -0600
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 26
 Feb 2021 02:15:50 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 26 Feb 2021 02:15:50 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 11Q8FnDe107039;
	Fri, 26 Feb 2021 02:15:49 -0600
Date: Fri, 26 Feb 2021 13:45:48 +0530
From: "'Pratyush Yadav' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Arnd Bergmann <arnd@kernel.org>
CC: Mark Brown <broonie@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        Nathan
 Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Emil Renner Berthing <kernel@esmil.dk>, Arnd Bergmann <arnd@arndb.de>,
        Jon
 Lin <jon.lin@rock-chips.com>,
        Chris Ruehl <chris.ruehl@gtsys.com.hk>,
        Alexander Kochetkov <al.kochet@gmail.com>,
        Johan Jonker <jbx6244@gmail.com>,
        Vincent Pelletier <plr.vincent@gmail.com>, <linux-spi@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] spi: rockchip: avoid objtool warning
Message-ID: <20210226081548.h5ls5fxihunzxjvx@ti.com>
References: <20210225125541.1808719-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210225125541.1808719-1-arnd@kernel.org>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: p.yadav@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=EVXzNnfm;       spf=pass
 (google.com: domain of p.yadav@ti.com designates 198.47.19.142 as permitted
 sender) smtp.mailfrom=p.yadav@ti.com;       dmarc=pass (p=QUARANTINE sp=NONE
 dis=NONE) header.from=ti.com
X-Original-From: Pratyush Yadav <p.yadav@ti.com>
Reply-To: Pratyush Yadav <p.yadav@ti.com>
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

Hi,

On 25/02/21 01:55PM, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> Building this file with clang leads to a an unreachable code path
> causing a warning from objtool:
> 
> drivers/spi/spi-rockchip.o: warning: objtool: rockchip_spi_transfer_one()+0x2e0: sibling call from callable instruction with modified stack frame
> 
> Use BUG() instead of unreachable() to avoid the undefined behavior
> if it does happen.
> 
> Fixes: 65498c6ae241 ("spi: rockchip: support 4bit words")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/spi/spi-rockchip.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
> index 936ef54e0903..972beac1169a 100644
> --- a/drivers/spi/spi-rockchip.c
> +++ b/drivers/spi/spi-rockchip.c
> @@ -521,7 +521,7 @@ static void rockchip_spi_config(struct rockchip_spi *rs,
>  		 * ctlr->bits_per_word_mask, so this shouldn't
>  		 * happen
>  		 */
> -		unreachable();
> +		BUG();

checkpatch says:

  Avoid crashing the kernel - try using WARN_ON & recovery code rather 
  than BUG() or BUG_ON()

Which makes sense to me. This is not something bad enough to justify 
crashing the kernel.

>  	}
>  
>  	if (use_dma) {
> -- 
> 2.29.2
> 

-- 
Regards,
Pratyush Yadav
Texas Instruments Inc.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210226081548.h5ls5fxihunzxjvx%40ti.com.
