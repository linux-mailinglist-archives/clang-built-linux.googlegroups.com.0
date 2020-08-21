Return-Path: <clang-built-linux+bncBCU77JVZ7MCBB5FCQH5AKGQEJTPVCVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x340.google.com (mail-wm1-x340.google.com [IPv6:2a00:1450:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 5700324E3AA
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 00:57:57 +0200 (CEST)
Received: by mail-wm1-x340.google.com with SMTP id c186sf1521305wmd.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 15:57:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598050677; cv=pass;
        d=google.com; s=arc-20160816;
        b=uCNzwWPsjB/2ouhQwd2J8hwhEgKHGxdWgT0UJL6d3b89+USEni0d2k47Oo1hrObwQ6
         TsWPw/m/fyiZSR7orvpovH4OKtu+zfCTEewLuGeLnOQEFYN9Vwn3Eqnu0vCj4wRUNUl+
         mLMH0TJuCR3pJzAo3lL7Jhjp4ca4rW03mFzNdMGAwwj5WVWk4JQwU1fPkTF08YEd06i0
         C1hRMj7Mv1jW+cWoRuDZ3fF3N/j5TEDDWf31fEBHN3kbLxU8iUY6r9hIpLB3RGrA4HBR
         YbbV9k8loR/Zx0lvsHtBCZqrzMkD0vmGqAtRJHdHT1QUydLYYG1g8FOEP2080XuIWTO+
         ulxw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=3ntsSY8O7UjIYUvIcv98JtbXsna+SwV3E1IVJ/Q/Csg=;
        b=lK+a2whTWhr0K8s5GZFCXoIqqxbxorq9uN0qMWuflexLWvXYIhbAnFrRd9ShjKQbG1
         p0aBdYjOFVkisRy84WkwAiPdu0EGz04rNFIjF7PFld+4+IQ6n9ltXHooJvcNrKbDjC7Q
         /HxN6xTACFU7kkKjqCfALSMRQrehekdf/ibYoryjzSBPja1SQ33WSOHgnxykHFQmzv2v
         PtHD9wjQY+eSCgm5qo/eulGXa65M2kOEXrw2hpinxNuB+58d/kgFpeDy9vq6mgpFAMYr
         /QydN697xEo98u/KdA0halX2rRdFUbdSUzbXAwKbDmyrSh9UKbw+wg0f5lYMubqqphzN
         bcjg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LmYlBWlq;
       spf=pass (google.com: domain of olteanv@gmail.com designates 2a00:1450:4864:20::544 as permitted sender) smtp.mailfrom=olteanv@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3ntsSY8O7UjIYUvIcv98JtbXsna+SwV3E1IVJ/Q/Csg=;
        b=PvmV5onP1snVSHBqLV/aIYacBASDZszz17/bx4wCwnv0avsEen6RrQUIZLmNbYrRdr
         Hbf69PrajADM9fl/Ekq7noKcjajqktvSRgTV01jikDStVz6UgNVAZzAhGih6EOy2g98x
         E/sq2N59sN2O6WFfF8BGl28p7Ee1dGWbKxt9alqDm5IuH3PFPT3gHj1+GtORoSyeDAHg
         YViOyqqw0LU/Kqqm1M0il8IT6FkIHdqf3jntBKoEt02jCBD8pAFnqvsgufZbcSt6I4zT
         drSfQc4CJwTIxv1v9KOKF2Q8GOd1BWrd0jAeGhXScwds0c8TsnLMpXpDEtOw9ZMaurlJ
         Ucig==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3ntsSY8O7UjIYUvIcv98JtbXsna+SwV3E1IVJ/Q/Csg=;
        b=P4fLUAY0BTDt5/w3SwkHY0OYYjvmuLuT8nyK0y7rWD2qgwgGUcIcPnOv/mD+30U67G
         rhPzXbsUcLPmVzyLWb+iLGoMw5VLq2zTBOJ13Ynce8tH5R+Ss7TkH0zTZfgQH6mQ3yqh
         ml/SCr5y6IyV0LlHpfOMhiGX1Rh3o3na7c082zOpxJEXHj/XX+raDkdvsrRQJeuF39jS
         /0pjXqoNXSa7oTnhKJToKyKY3j9yKBk8S4/RYhvNJ9CjH8F2DrWBXXzNakyncxb0fy/f
         EoDz2FaAZYqrfFqQTuYTpzUW8qsYjqQ3RlDNftoMvpX83hquGPuNgOy4PaufgW+eLzke
         /MYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3ntsSY8O7UjIYUvIcv98JtbXsna+SwV3E1IVJ/Q/Csg=;
        b=uecuceQcwtjtyG07ThRJ6tJCc26i1R3QqhXJ+FwgoFVGhAjHNwOdKZS15PV6eEbt21
         FdHzgdkZd8cYMqqDpNFAKbbxQzVr3a7EsXFbXvPvsz7ZKcBvfH7x+DTPiRPaprbQ0xh7
         yt1lBQDoOSxskhGc5NTbOQ/sv4UwXG4i5Lzdeh+sxn+l4snKUXePAjrt3JM0djKOciga
         Nokiwiallzvr7qCUK9KR5+fVNqh7+DPSDE43uSb5/+tGMWHhjMJ9g6qnAIO3HHQSOhek
         N/KMc3jOG7Exc/eshzSa+WYdGCFExnP7VkZOE+qbNyaong7BQ9NkaQy5IK1PLNqj8opD
         goQw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5311uKdgBIsYXGzvh99ZxsYrkHjVQFnCUtXdnLU456BFelmBxwA5
	ouXTzcbPehDKdhdoFOa4xwM=
X-Google-Smtp-Source: ABdhPJydYZeYpsu84FrSqJ3pIKa1urd0gj8XWmy8H7/FI/cxX/ok1dM3fLZvbiC+l//1PhC2iNKS6A==
X-Received: by 2002:adf:edc3:: with SMTP id v3mr4544517wro.193.1598050676834;
        Fri, 21 Aug 2020 15:57:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:b1cf:: with SMTP id r15ls3517924wra.3.gmail; Fri, 21 Aug
 2020 15:57:56 -0700 (PDT)
X-Received: by 2002:adf:a192:: with SMTP id u18mr5004629wru.158.1598050676161;
        Fri, 21 Aug 2020 15:57:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598050676; cv=none;
        d=google.com; s=arc-20160816;
        b=kRL5pylvItUSN7xMYMdaNnu1sVilvscHyKkLuoRpAVfrbb9FhyuaXrVLaoCgVA5b3U
         QaBmUlsFQnstM5wYNhbdtiChZavyAbup+Oms/F7DSkxjip/Xg8fA4xxRA5ebalIFcqVl
         1IQl0lZy1ZZvSE/4Cugiz8jhJDaJRQm6xMKVJy9K2YaogFekEU438dxuHMbNY5AUvR9A
         HqDKzu0cub9ZIwthp6HrHlTpiWVwmj+TczcKSKCH4yujAY6E7ChNotrKR0gfJ5Cdn756
         TQZrVNI6wAjLkqRP9+f9Ahpfp93p8DQL9fSGEw/Ysl1FT0A0gwTjKcrWtDy0SLKhD3eW
         RjJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=6Y3HAkrVgYNsW26WADT1OAHIAmh+irSetkJetEKSBLc=;
        b=0tPWI6Y8RS/04Ig3Q/hKWZWUpmp81ZSPbRDNh33fGaCYMsxbc32XLSbJfQaLldDOnF
         hd6rBm9Sbe5gfWK8SUaFBgftY0+Yy3HjGys5R6z+cj34IIBwCQG4dV1qzhIXUUzSyVJB
         5xCqs3s+y/GdAs7mrLy1WA6yCJfvaUJKM+lS3ztUvCKU35T+jQ8QI9HNIloHQKHHN69l
         sVITS5TUxy2MDz34ADFdXMMxyVyBbCLDh8veccnKpiIwBNmVWkUu5BadUrdPjZeHnhtG
         Y79PX6h43SGOZsTEl1BIh7qoJ3nW2gu3WgH3OKyJ3kCXymmhSUubHiwC1367YXXc/j93
         Jucg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LmYlBWlq;
       spf=pass (google.com: domain of olteanv@gmail.com designates 2a00:1450:4864:20::544 as permitted sender) smtp.mailfrom=olteanv@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com. [2a00:1450:4864:20::544])
        by gmr-mx.google.com with ESMTPS id b198si141629wmd.0.2020.08.21.15.57.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 15:57:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of olteanv@gmail.com designates 2a00:1450:4864:20::544 as permitted sender) client-ip=2a00:1450:4864:20::544;
Received: by mail-ed1-x544.google.com with SMTP id w2so2900926edv.7
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 15:57:56 -0700 (PDT)
X-Received: by 2002:aa7:da04:: with SMTP id r4mr5032282eds.265.1598050675861;
        Fri, 21 Aug 2020 15:57:55 -0700 (PDT)
Received: from skbuf ([86.126.22.216])
        by smtp.gmail.com with ESMTPSA id d9sm1839906edt.20.2020.08.21.15.57.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 15:57:55 -0700 (PDT)
Date: Sat, 22 Aug 2020 01:57:53 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Andrew Lunn <andrew@lunn.ch>, Vivien Didelot <vivien.didelot@gmail.com>,
	Florian Fainelli <f.fainelli@gmail.com>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] net: dsa: sja1105: Do not use address of compatible
 member in sja1105_check_device_id
Message-ID: <20200821225753.cfaclxay6zhq6swg@skbuf>
References: <20200821222515.414167-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200821222515.414167-1-natechancellor@gmail.com>
X-Original-Sender: OlteanV@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=LmYlBWlq;       spf=pass
 (google.com: domain of olteanv@gmail.com designates 2a00:1450:4864:20::544 as
 permitted sender) smtp.mailfrom=olteanv@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Aug 21, 2020 at 03:25:16PM -0700, Nathan Chancellor wrote:
> Clang warns:
> 
> drivers/net/dsa/sja1105/sja1105_main.c:3418:38: warning: address of
> array 'match->compatible' will always evaluate to 'true'
> [-Wpointer-bool-conversion]
>         for (match = sja1105_dt_ids; match->compatible; match++) {
>         ~~~                          ~~~~~~~^~~~~~~~~~
> 1 warning generated.
> 
> We should check the value of the first character in compatible to see if
> it is empty or not. This matches how the rest of the tree iterates over
> IDs.
> 
> Fixes: 0b0e299720bb ("net: dsa: sja1105: use detected device id instead of DT one on mismatch")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1139
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  drivers/net/dsa/sja1105/sja1105_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/dsa/sja1105/sja1105_main.c b/drivers/net/dsa/sja1105/sja1105_main.c
> index c3f6f124e5f0..5a28dfb36ec3 100644
> --- a/drivers/net/dsa/sja1105/sja1105_main.c
> +++ b/drivers/net/dsa/sja1105/sja1105_main.c
> @@ -3415,7 +3415,7 @@ static int sja1105_check_device_id(struct sja1105_private *priv)
>  
>  	sja1105_unpack(prod_id, &part_no, 19, 4, SJA1105_SIZE_DEVICE_ID);
>  
> -	for (match = sja1105_dt_ids; match->compatible; match++) {
> +	for (match = sja1105_dt_ids; match->compatible[0]; match++) {
>  		const struct sja1105_info *info = match->data;
>  
>  		/* Is what's been probed in our match table at all? */
> 
> base-commit: 4af7b32f84aa4cd60e39b355bc8a1eab6cd8d8a4
> -- 
> 2.28.0
> 

Thanks, Nathan.

Acked-by: Vladimir Oltean <olteanv@gmail.com>

-Vladimir

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200821225753.cfaclxay6zhq6swg%40skbuf.
