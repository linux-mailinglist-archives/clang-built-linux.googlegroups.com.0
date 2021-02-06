Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBYVG7SAAMGQE54CCOAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 0151331203E
	for <lists+clang-built-linux@lfdr.de>; Sat,  6 Feb 2021 23:08:35 +0100 (CET)
Received: by mail-yb1-xb39.google.com with SMTP id 127sf2054540ybc.19
        for <lists+clang-built-linux@lfdr.de>; Sat, 06 Feb 2021 14:08:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612649315; cv=pass;
        d=google.com; s=arc-20160816;
        b=mQJW4+pJ6jHIRqHHyP1WRZ8+nLeyCkHHVgFxfniM63HHmGhgfR1EfUWU/f71c0j1RQ
         bVQ7PXMHOzP3uqByudWbyOw0Wl0qfb+FZkuxHi+smTVwl28GNEfWFXqhDCDuPSsnBTos
         Olp104Nnmyfxm5HfAdqJuAs/0jhHgJlCU+aVs9PK343JqXZptkXke4sQkzbwwHVFxcMo
         mggPN84+UxPL0i2WYUmxH1EM6D0r2j/QJ6U0HgwSokxF90LtZT4XM1UerlS4LJb8iw54
         U/PbdB3ZOaoxsF7WbdUpuasAI+yScO4lqB4q9vw9rPdd57zdfmmaZk87RLsc3gv+immp
         DlSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=9mGy7R/A62QCPi2JH/wqVugG69eGGPJdjaYqkPjK6Bg=;
        b=ozUkil4aI87ubreCfeFEx0pqwzcPj8DsRxiH4bp1pCNdWx+rMx5PONps4TpWtX1QH/
         HHpb3ovrN9dN46CLLFy3tYBNQTO7M6Gua+LPpQkwEI5HAd7ZsT96+CQKqfprIvbCDlYf
         XoBZMRPV7uME1V3/+tY3FeXZHaT00O05ln8p+ByrXYx4mHW2jrSkW6hZAmJyKkztNMPh
         +Ze506ZfdWJUWQDyggthM0D+4ycPFmXaUzck1qIGwwG6SAQ/VRTsVIx+gmKoObM+mHH2
         2zwiPabVNADzqWEJweakOGr+TPNdtEtNN6HIdAm9fLrZ3DU7yUtz/pmIDzYLcPAvh4u3
         J4TQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=XbtQt5On;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9mGy7R/A62QCPi2JH/wqVugG69eGGPJdjaYqkPjK6Bg=;
        b=qtDrNNypSWgyigPC+BEWJwfKcqtuWkE6LoiGTGiXdAj4CA8XDTSuj8ZfWNa8KJQHku
         JqKDlS08M9mgGQU96X9/+3mSH1JpetlCF3Mr4RyCzm1210iEKBpyOgWDmT0OIocYF3L4
         GeqoRG2xnQjXUr79Lsc6mcQtWc7Tfh8BnG6BwzFw1CGk9OmupMZdhUSdYe5AgWZn3RGO
         ttw3DiUZobMEGBOHp6uNWQoZvnYgNHbR3dn+ghN12ikr1YQ3DVY232ih2RPZdHrJBc5I
         hRwmwjRGbZ2E39LARpS7KkL/Tw49DuZVjEtQlWbSxkjKKhY4Z25fTVEl1Okvq+Fsi2w2
         PGKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9mGy7R/A62QCPi2JH/wqVugG69eGGPJdjaYqkPjK6Bg=;
        b=YDNTwX8vBf6bf8NThzw6QIzbniBogC/+ZwlrXRi7c8O2MOZ0uqw3R4cCb8DK1CxSwT
         kyNOyJqR44BRAmEkGaZQI/yzcGamK431Dga+M6kJjBBRpLWidkr5UVZh2K5HdJYz4BJA
         xK+wfumsYXVy/spE/kyWYnGJQU6uVXaSj/b+E7Is/L5XWpSRS49EjIIpRBunJOpj5Qg9
         zn2RzHfGImEQs2bZVasy/U9ZpS/Lp5xmYSU40F0H65RaIL0L6T9psmke2lHvdcpkkXOv
         usXRzryGh8TFyhsjoyaPbrl3ue1+BbzO6+2LL6cjoDPEk9MQgJwBU8v43/KBTveDBtmb
         GoEw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530FFRON2aCk15ouqIF9LchlSOBiCnT+Uc2hUJ61QTLOpL2GmQc2
	nchNzJl4ZngpAnKPkFGpcok=
X-Google-Smtp-Source: ABdhPJxeG+s3bO+hq1oDr09tLQUYJC+lnccSl6Z/zzZ+SYaJwkRuOSaR624amLqbN7omsE1Obq7nlQ==
X-Received: by 2002:a25:d28e:: with SMTP id j136mr15508120ybg.117.1612649315023;
        Sat, 06 Feb 2021 14:08:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:8b88:: with SMTP id j8ls6224033ybl.3.gmail; Sat, 06 Feb
 2021 14:08:34 -0800 (PST)
X-Received: by 2002:a25:1e86:: with SMTP id e128mr15527375ybe.326.1612649314665;
        Sat, 06 Feb 2021 14:08:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612649314; cv=none;
        d=google.com; s=arc-20160816;
        b=R2fvs3cJlfNNnj+LgcmeqgFZD/ogbsuqsatyiWx2pkMnsYdhTbwcM4kLK3x+wTRs0+
         FNR1gz6JRYuFFgIUNHxJEZD4l6UTGsd/IiqD1g4QFWUUu13cJSRM/HIZVMLOotz5V2Le
         H4AgTjs4NmdXhH+Z5rlSBTCl0DsE5nKg1oRuWVGM1KbHMZftIZAYEP8IlB39tl/HuEtR
         Rroidv61keaAdnqqSxkAi+8+FStd6fj/ts6SqYezgE15qFO+agCp73MJTzYdUCbwTiHB
         GTILtDyDDTl/3YIBCj9P+iIOdcH1uNEiI28njdstGNycFikn6cX59Sf7RkP2gPbgI+Ad
         D3Mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=jBG3uolxOrSATwZtfz9W6ho3sNoCTUdwqv3cb6wNcFo=;
        b=0P3Ji1QT/jYLYYQlg4t85T3pjledHoZENeewDi48s//7mm/h90XUrt/KIgsqqe42jF
         tWjTYxwj4ku/sUWPk2CVKfLKjwVTKIkbm89SG2GUNg2yFDsM0BPk4b5eJT7G0bkH/wtj
         E8N08CN6oI9XtGcmPsG9IhHYiaMraHjuTi96EBkNpr3jNiUAJTfrd6jFmytQhsaine3x
         2IneTKiVdDGUvGgdW8E6wSyLaOY3/66j5bxutbIg1zlmR5kj2U9sMuqmjjtXVhAN4VPp
         YK7dT/O9fIpdmzBc0IseA/jnOWsMYCWm+6OGdfsH8ij+ASuxNPJwM/6Ov4jXctTlT/H4
         VNBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=XbtQt5On;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c10si857782ybf.1.2021.02.06.14.08.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Feb 2021 14:08:34 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8A07364E07;
	Sat,  6 Feb 2021 22:08:33 +0000 (UTC)
Date: Sat, 6 Feb 2021 15:08:32 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Santosh Shilimkar <ssantosh@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	kernel test robot <lkp@intel.com>
Subject: Re: [PATCH] memory: ti-emif-pm: Drop of_match_ptr from of_device_id
 table
Message-ID: <20210206220832.GA1466025@ubuntu-m3-large-x86>
References: <20210206111343.19273-1-krzk@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210206111343.19273-1-krzk@kernel.org>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=XbtQt5On;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Sat, Feb 06, 2021 at 12:13:43PM +0100, Krzysztof Kozlowski wrote:
> The driver can match only via the DT table so the table should be always
> used and the of_match_ptr does not have any sense (this also allows ACPI
> matching via PRP0001, even though it might be not relevant here).  This
> fixes compile warning (!CONFIG_OF with clang):
> 
>     drivers/memory/ti-emif-pm.c:238:34: warning:
>         unused variable 'ti_emif_of_match' [-Wunused-const-variable]
> 
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

Yes, this seems to be how everyone is dealing with this warning:

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
>  drivers/memory/ti-emif-pm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/memory/ti-emif-pm.c b/drivers/memory/ti-emif-pm.c
> index 6c747c1e98cb..179fec2da56d 100644
> --- a/drivers/memory/ti-emif-pm.c
> +++ b/drivers/memory/ti-emif-pm.c
> @@ -340,7 +340,7 @@ static struct platform_driver ti_emif_driver = {
>  	.remove = ti_emif_remove,
>  	.driver = {
>  		.name = KBUILD_MODNAME,
> -		.of_match_table = of_match_ptr(ti_emif_of_match),
> +		.of_match_table = ti_emif_of_match,
>  		.pm = &ti_emif_pm_ops,
>  	},
>  };
> -- 
> 2.25.1
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210206220832.GA1466025%40ubuntu-m3-large-x86.
