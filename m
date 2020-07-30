Return-Path: <clang-built-linux+bncBDNYNPOAQ4GBB5U6RD4QKGQETJSPRYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 95ED523288F
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jul 2020 02:08:24 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id p4sf15376997pls.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jul 2020 17:08:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596067703; cv=pass;
        d=google.com; s=arc-20160816;
        b=zKSRy3yBCp8RadCGYhW5/1kp6+NdeeN254ZhIi54HKO3Z0rXIKn/ih/Z7H6YhiC1R8
         bRVzT4HBDzHSbSmeHwCrYjTurI56wANTDvDkFDe42+cgqacLsX9QhHnKid6AqTe2O2E/
         pN7o+PdAsN5lOaDURAi4mCy2hkVs6qSJEeyMn4nodwLPyYeZHug8aBHOkwyIUFDqmCa4
         NrUUUaDo3w5VpVviQXJ83vOuQK76YaaUGaAteXvoQrfMZqb1ZVZ+J7pNKI7KHGUBEpRP
         rdbmKB0Qig9bjETVaWGWcQeh29TC8jP9r2VL7X/nIh9SObN+pdluiKggirYrCMoiTKGh
         AwjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:subject:autocrypt:from:references:cc:to:sender
         :dkim-signature;
        bh=Ga2+zDIwDB7cMDeWCXi9kOf1eXhoxA2yybShADBrT8w=;
        b=z7S0AnVeYEjC7Wd04o4IHD3Nyf2R/8uWr5qObMzUZuAfH5pZRw4PlgUmA3mofDrjGo
         2bbaYkGrYvnIjE2MoK+90ptpkRnlFeGrPfG+p9pz2dT/jVyCeF7qzP6yM2f5jVAhtqos
         yqBCmLT1KICzxn/52Uiqhi5c3dKuyvR+c+FuBBhg9kVwoS8ayqHF1i9p3PW+73aiyoty
         wKyM5Nb0baocStD0fbq7iU59QNsXsEPIbY4Xw5GKffQURK8gsdoCbABCkONJSCARx76O
         eoQSzmCYKVbSIukj2/AzdV+dnet3VapUenQ4WxTVRosI2lbR5hTe7yKbl0TV13YgyBLU
         QhIw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b="gd3/GZhD";
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.54.2 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:references:from:autocrypt:subject:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ga2+zDIwDB7cMDeWCXi9kOf1eXhoxA2yybShADBrT8w=;
        b=TLbtUJYijAqzUfgTax+ZxBvavJz/cKeWabP3iai/Fs8oXvVWCcgFN/orJNoaRl6iWK
         Gi6D4FqvZ52wkvEdKdi3Fnh4I8TkxQqt4wMtDHNh32T46oo94a5RvRjKe9EVzCkAnMOe
         +sjzyel+FLO6X1MTIQVEKIAOWy+9ZloHqhWaFYf/xIksU+grIK6/XjNVKQ0YIf9P9xc5
         06lb51X2AoJJtmX89AniuNtC78Jhfxw3cp/6e++mUwQJ/4093CRrUlHDi5s4gxI02lGQ
         //TFockv/Mfq+//3DfGOaTlgOoXLaz++wskOOvMRgIsrH9woE0HiHBx29cgMYTPo06eW
         lUQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:references:from:autocrypt:subject
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ga2+zDIwDB7cMDeWCXi9kOf1eXhoxA2yybShADBrT8w=;
        b=iT+UatimfT3iSQFzDCz42QoLbjGwqyVZJs7e/xeBBV8Ttjzv7lpF6YFaroFszbK59M
         mOShb944q2ayMMORxFvkUobPwjpY/4vCB7HmOzn1VFLyAzhxNMlz03qy4/VFv686RRfo
         MNepVPWRp186dJdt3WK8LTHrpIsOWY4aKfIkTa6WxJUumefwsMkTtfGcZZTyI3nmWBD2
         yG+1K/PtAtCDOTNuRNNcdWWT2tZUCgqXod0feJJov22bevwZ5ELa8TVvESMAJPSvrRqb
         UtQOQZhE1WJUXRHX+M6E6EmP3OMDZVvQ2knS8B4/rNODX0gEnb6ViHY4yoQCCDa7vpbs
         g8hA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ovTNrfTp/nx7rSri+J5+lbyAicHfLolrQH5q91yCzQwaUB1lx
	Tz76XhJJzGLNWwGNXIdvdD8=
X-Google-Smtp-Source: ABdhPJxtLVZgGIr26R80g2OWgFDPB1dz8ImKdW/SXodjF/4QKwmMRUc8wjvSEq3wKSiUkJdwYYZ/fw==
X-Received: by 2002:a17:902:e993:: with SMTP id f19mr30445253plb.305.1596067703032;
        Wed, 29 Jul 2020 17:08:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9344:: with SMTP id g4ls1555654plp.10.gmail; Wed, 29
 Jul 2020 17:08:22 -0700 (PDT)
X-Received: by 2002:a17:902:6bc2:: with SMTP id m2mr30810694plt.158.1596067702579;
        Wed, 29 Jul 2020 17:08:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596067702; cv=none;
        d=google.com; s=arc-20160816;
        b=h/0qMadQYtcHRAD0gBR5xunuFL2Tj9ymcRutoUhvZxjywc9ZAu3GCt3e/fzaD3e3rF
         WGMMxejMySfCH5HLGj+b2ndCmCsgbq2VER5ZOZu6fefRbUt1eThsWLH4xQsSVk4msgMN
         jBno0jLyAPcMxKb2GwCSHIULupe91r3eGBBSx/y0jyiHqA4sDqpDCNPava8L4lQWjTI9
         U6FWfMcXeyGvb2sMTQPnKslis42r8m5TQXG0+FJUja1Mnrp6eIlEhntA08yFC9YwmcUn
         1R6PYv98GeR+nr9B8ZGuiManwn1sfYo3U2F2SOcPBsNtaKyJhWpnmLATfJHeFBV0VSVT
         pPyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:subject:autocrypt:from:references:cc:to
         :dkim-signature;
        bh=O9pd5wZFyMlo2KIw2w7Jr68x5gB033RYBnB9J5fYDs8=;
        b=a+3UUhjm4bC23Nxcts0NNgH/xKXMb7Gdc/m5avO/6Efr4v40qlVzjjL/InfEb5NeoM
         If/dDnaNOa38we/sDdomBbUmeTN3Bn3PicAPr+ChdP8uDKG3Sh2OteTMthIukt+AQl1b
         BSoQIWArnRDHOChYrnv0nRQL3MpPcqlSEN6sPqe0V9kEgZS2veyXRlWp9Br4u/gmj/Dd
         K6WGQFNyGFnVbqNjGHf10XHbXiquoxrwmfGnKN+q/L1iLLrUE4sCSXslG7bjpts8oJcK
         1oWGqT6z78JebXeKWbMgOzhNx+CcR3ljtUAbY+ogCMWScp6VBRnglo4Pps0NhPqN7F9I
         cQ+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b="gd3/GZhD";
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.54.2 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
Received: from gateway20.websitewelcome.com (gateway20.websitewelcome.com. [192.185.54.2])
        by gmr-mx.google.com with ESMTPS id j4si274911pjd.0.2020.07.29.17.08.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Jul 2020 17:08:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of gustavo@embeddedor.com designates 192.185.54.2 as permitted sender) client-ip=192.185.54.2;
Received: from cm16.websitewelcome.com (cm16.websitewelcome.com [100.42.49.19])
	by gateway20.websitewelcome.com (Postfix) with ESMTP id 53C3E405C7F64
	for <clang-built-linux@googlegroups.com>; Wed, 29 Jul 2020 17:44:15 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22])
	by cmsmtp with SMTP
	id 0w5fkxmcKQyTQ0w5fkXcP5; Wed, 29 Jul 2020 19:06:31 -0500
X-Authority-Reason: nr=8
Received: from 187-162-31-110.static.axtel.net ([187.162.31.110]:51790 helo=[192.168.15.3])
	by gator4166.hostgator.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.93)
	(envelope-from <gustavo@embeddedor.com>)
	id 1k0w5f-0031yi-A5; Wed, 29 Jul 2020 19:06:31 -0500
To: Qianli Zhao <zhaoqianligood@gmail.com>, cl@linux.com, penberg@kernel.org,
 rientjes@google.com, iamjoonsoo.kim@lge.com, akpm@linux-foundation.org
Cc: linux-mm@kvack.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, zhaoqianli@xiaomi.com
References: <1596034214-15010-1-git-send-email-zhaoqianligood@gmail.com>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Autocrypt: addr=gustavo@embeddedor.com; keydata=
 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
 AP7RWS474w==
Subject: Re: [PATCH] mm: slab: Avoid the use of one-element array and use
 struct_size() helper
Message-ID: <90b2c9f3-cc2b-b2e6-51ef-998d2f79123a@embeddedor.com>
Date: Wed, 29 Jul 2020 19:12:31 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <1596034214-15010-1-git-send-email-zhaoqianligood@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - googlegroups.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 187.162.31.110
X-Source-L: No
X-Exim-ID: 1k0w5f-0031yi-A5
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 187-162-31-110.static.axtel.net ([192.168.15.3]) [187.162.31.110]:51790
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 9
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-Original-Sender: gustavo@embeddedor.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@embeddedor.com header.s=default header.b="gd3/GZhD";       spf=pass
 (google.com: domain of gustavo@embeddedor.com designates 192.185.54.2 as
 permitted sender) smtp.mailfrom=gustavo@embeddedor.com
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

If you are going to copy/paste this, please at least CC the people
that is originally working on these changes, in this case _me_. One
needs to be very careful when doing these transformations. This
code doesn't even exist in linux-next.

If you want to land your first kernel patch, I encourage you to start
in drivers/staging/, while you get the hang of the kernel development
process and you know how to work with linux-next. :)

Thanks
--
Gustavo

On 7/29/20 09:50, Qianli Zhao wrote:
> From: Qianli Zhao <zhaoqianli@xiaomi.com>
>=20
> There is a regular need in the kernel to provide a way to declare having =
a
> dynamically sized set of trailing elements in a structure. Kernel code sh=
ould
> always use =E2=80=9Cflexible array members=E2=80=9D[1] for these cases. T=
he older style of
> one-element or zero-length arrays should no longer be used[2].
>=20
> Make use of the struct_size() helper instead of an open-coded version
> in order to avoid any potential type mistakes.
>=20
> [1] https://en.wikipedia.org/wiki/Flexible_array_member
> [2] https://github.com/KSPP/linux/issues/21
>=20
> Signed-off-by: Qianli Zhao <zhaoqianli@xiaomi.com>
> ---
>  mm/slab.h        | 2 +-
>  mm/slab_common.c | 7 ++-----
>  2 files changed, 3 insertions(+), 6 deletions(-)
>=20
> diff --git a/mm/slab.h b/mm/slab.h
> index 74f7e09..c12fb65 100644
> --- a/mm/slab.h
> +++ b/mm/slab.h
> @@ -34,7 +34,7 @@ struct kmem_cache {
> =20
>  struct memcg_cache_array {
>  	struct rcu_head rcu;
> -	struct kmem_cache *entries[0];
> +	struct kmem_cache *entries[];
>  };
> =20
>  /*
> diff --git a/mm/slab_common.c b/mm/slab_common.c
> index fe8b684..56f4818 100644
> --- a/mm/slab_common.c
> +++ b/mm/slab_common.c
> @@ -166,9 +166,7 @@ static int init_memcg_params(struct kmem_cache *s,
>  	if (!memcg_nr_cache_ids)
>  		return 0;
> =20
> -	arr =3D kvzalloc(sizeof(struct memcg_cache_array) +
> -		       memcg_nr_cache_ids * sizeof(void *),
> -		       GFP_KERNEL);
> +	arr =3D kvzalloc(struct_size(arr, entries, memcg_nr_cache_ids), GFP_KER=
NEL);
>  	if (!arr)
>  		return -ENOMEM;
> =20
> @@ -199,8 +197,7 @@ static int update_memcg_params(struct kmem_cache *s, =
int new_array_size)
>  {
>  	struct memcg_cache_array *old, *new;
> =20
> -	new =3D kvzalloc(sizeof(struct memcg_cache_array) +
> -		       new_array_size * sizeof(void *), GFP_KERNEL);
> +	new =3D kvzalloc(struct_size(new, entries, new_array_size), GFP_KERNEL)=
;
>  	if (!new)
>  		return -ENOMEM;
> =20
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/90b2c9f3-cc2b-b2e6-51ef-998d2f79123a%40embeddedor.com.
