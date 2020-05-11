Return-Path: <clang-built-linux+bncBC3JRV7SWYEBB4VF432QKGQEO4DLYMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B1E31CE220
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 May 2020 20:01:24 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id r9sf21861pjz.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 May 2020 11:01:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589220083; cv=pass;
        d=google.com; s=arc-20160816;
        b=JqUdVbHjPR0biY+AyRstRLJEadoqVakum1vZ44gD4msuCw9IBS91QKfojyKrbD26wB
         cp4ZJtbSpbOMtAQLxQ/8vaBqD0bizvqXIJhpczCqLUPwnG9nLAAsckzp1j1eeBBKNGxn
         f1YGwFpKDmWQ+r3FKvF2SFVUt+pMTD4bDIJs5uPjJ82hOuKNcmeI5s+zUa5juhIkl1lm
         BtfKzBm0STYMJakWelbz7AQ3H9UkI6Ar9ZT3ggds/zH23255CNvLc0EeEnh2IsPoxJWM
         s0iL2bwL4Ddeu7u2hwQhApr9r6XmjXAY++/oPkIjPQlJMe5dHFWv7IlFzRKero/ncOK/
         Lugg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=NfgyAcpkBYfgEomqrGrpoNQ9s+F61wQgkBTCDGq0yZs=;
        b=S4o1qbgmdy5E0PU/HnC9LS9RE+16mKiz4/73vie90LJ5vAlRl2tncN4E/2MQExQCsr
         wz03dyn/zaEl6vD0vGYBgkFt5bQ8FjSZ3qrzoD6mN9Aff5QyQp+TRE4sUbT5ifVEIj2f
         dDd1Gg64v4jbYXqswzBSkepOTKN2xuESLnTwwTCwYiVhD6UofzId4ebmKX/J2Om4o69B
         JuX7Az6H9NzbuTHGogzSv7yGSbukn21rZ/bDTPjY23pxtrtFs8VyeYn8D4jXtFauIFU9
         24FXjUR3stV0WX9Eeb7gTjaXF+B6oILnpJ/t/K2sOzVoAwNWZtIWo0hcG7lfFjh9TGzq
         hYaQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=J08lgend;
       spf=pass (google.com: domain of boris.ostrovsky@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=boris.ostrovsky@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NfgyAcpkBYfgEomqrGrpoNQ9s+F61wQgkBTCDGq0yZs=;
        b=IV76gWllvqNZCRHUpAC6OS17HYGxw2pd0bX8xx61qpMOKRMYFB5lnh7QWFfC1Uhzb+
         ij/epUsxIUEy/eniLvtxCgfsbqqqF9pww1ZWZv97IBX9v7/tEvjL+cA4a4xUbmRJyLEe
         yj9P1lUsvMVJ54Dx0Rq3Nnzc5NRLpen/R/cLMjoOU8RKhGOlth2SHmqyA4FmVcl+l/2M
         Nk3snKVc9g0BVMuclaUQhrSpkykVijk516UTn12CQO2GyPGc2dc8XFCVbledV+afz1ai
         0Hzc7bfgP7f76tmu5go2S1hKu3putcKqfJu6R0syVZvxEBNrxIsIdW/YaQYFBx0nQ7dF
         7MEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NfgyAcpkBYfgEomqrGrpoNQ9s+F61wQgkBTCDGq0yZs=;
        b=cvBjGQ46IRaoknrVeN8R60LP8kmCvoODXHkYY5w+We3Ct1fKjuJNcVfJI7p11sakJK
         3xXK885usUCI+OriwTLaZKqehLknEr1IfU3bcMefYwvxLPFFuGYZiCmJeJC3204409Yo
         SwUfPHEiNnWNoVpHEW8eNV+HKcXImtnBNJqBhBxSKT5rKGcMu5hEUbEXKNEzWizUoiPA
         SMGj5elgB2bjO90DG5wVAYEq1GIvO5fLgplUXwb0tgGOvE+f9eAM33zOmubpR2/1m6XT
         E82cl3lVYoZslSpHRixipzMJzn+wix9p31yqbAM14MSYAtu5bJEHaAcMe2FjaFS+HxDR
         BjyA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYOkY1u6895tDiDw9BqiyGszPBn63KlM5U7SJs6auHz7elGk765
	dyPcrq1oxVC/7VqRrjnMDE4=
X-Google-Smtp-Source: APiQypJNZGIcb++JcgGXgv/1hHJQXrWuMpL4tBvjA/CQ+ewqCLhOCkKGeSwApXBQzkImqJS2w9htOw==
X-Received: by 2002:a17:90a:d703:: with SMTP id y3mr23835873pju.75.1589220082885;
        Mon, 11 May 2020 11:01:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9a44:: with SMTP id x4ls103015pfj.9.gmail; Mon, 11 May
 2020 11:01:22 -0700 (PDT)
X-Received: by 2002:a63:f157:: with SMTP id o23mr16085998pgk.15.1589220082060;
        Mon, 11 May 2020 11:01:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589220082; cv=none;
        d=google.com; s=arc-20160816;
        b=hiW595qFZBqVQGCAFhzFOZZzomzBBdq1ElWaZMMbohW9B0T8E2/H4raicgQYk4Xa0k
         qaTsqnIqxhhEn6t06+AtS/JuC3KGUK+4zh2e6un/UPbbG8Ipg2CZvmfK76HgLyK3+kfz
         TP2dN9K9297ssbzJ0wDn4TZ0VCOIhBi1/cy3cJWQVIQ9dutXjZoS2MaXMDdLQCZaCBi7
         053OK/4Qo9hzdilaDFaEKr5bWCOFo4uXYDMGHZZJGaQ/TYOYUbciKztlPxWkCRUEsZBn
         FTBvLT+u9DwaQG6gA7aF/b8LLC+ixiY0sKF3BhvctsZEL6me6qr0duEjVbjC3SwH29vK
         W6wA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:dkim-signature;
        bh=3kDmNoqAEMZCIXkcb0qOJul4sO1nAcYTG6P0n3tKFVY=;
        b=Ltfnz8m5TzIZgCjGaE7jHonM8ZvZ9ZAKREY3EmdhLVvt6kg8bFcvN9n+mJJGBlGlEI
         8gPT5ZHyFezpY03tR+XRJkhrkNO8d/CmuBqIDjIjWoeq7zQXxx3HvjNm/eStjixOshB+
         q2fezZPJqJXlSBl24K28K/L5qPaqeIJa1ap+fPGdZNrVeSDKm6ATRJi3S4/vgFPDM5pE
         BySVBwReoUMisOvysWoZ1JBHu1lHzSv8qfHpt8gFHM6+dVxT6IcThQOhdfro3fdKn/Zz
         TRj+iqptxFeKDutXzzI8n/VV1dQ8qKVlwdvntk4kja4UziZ2fE3TXazOA//7vq1vicZc
         dc3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=J08lgend;
       spf=pass (google.com: domain of boris.ostrovsky@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=boris.ostrovsky@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2130.oracle.com (userp2130.oracle.com. [156.151.31.86])
        by gmr-mx.google.com with ESMTPS id g23si750423pgi.5.2020.05.11.11.01.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 May 2020 11:01:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of boris.ostrovsky@oracle.com designates 156.151.31.86 as permitted sender) client-ip=156.151.31.86;
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
	by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04BHtoZZ165453;
	Mon, 11 May 2020 18:01:18 GMT
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
	by userp2130.oracle.com with ESMTP id 30x3gmenme-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 11 May 2020 18:01:18 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
	by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04BHht2K117945;
	Mon, 11 May 2020 18:01:18 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
	by userp3030.oracle.com with ESMTP id 30x6ewggc4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 11 May 2020 18:01:18 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
	by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 04BI1Gwt006639;
	Mon, 11 May 2020 18:01:16 GMT
Received: from [10.39.250.101] (/10.39.250.101)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Mon, 11 May 2020 11:01:16 -0700
Subject: Re: [PATCH 1/2] xen/xenbus: avoid large structs and arrays on the
 stack
To: Juergen Gross <jgross@suse.com>, xen-devel@lists.xenproject.org,
        linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Cc: Stefano Stabellini <sstabellini@kernel.org>, Arnd Bergmann <arnd@arndb.de>
References: <20200511073151.19043-1-jgross@suse.com>
 <20200511073151.19043-2-jgross@suse.com>
From: Boris Ostrovsky <boris.ostrovsky@oracle.com>
X-Pep-Version: 2.0
Message-ID: <965e1d65-3a0c-3a71-ca58-2b5c04f98bce@oracle.com>
Date: Mon, 11 May 2020 14:01:00 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200511073151.19043-2-jgross@suse.com>
Content-Type: multipart/mixed;
 boundary="------------444D946E3E378382AC37167D"
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9618 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 spamscore=0 phishscore=0
 mlxlogscore=999 mlxscore=0 malwarescore=0 bulkscore=0 suspectscore=2
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2005110139
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9618 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 mlxlogscore=999
 clxscore=1015 spamscore=0 lowpriorityscore=0 phishscore=0 bulkscore=0
 malwarescore=0 priorityscore=1501 mlxscore=0 suspectscore=2
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2005110139
X-Original-Sender: boris.ostrovsky@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=J08lgend;
       spf=pass (google.com: domain of boris.ostrovsky@oracle.com designates
 156.151.31.86 as permitted sender) smtp.mailfrom=boris.ostrovsky@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
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

This is a multi-part message in MIME format.
--------------444D946E3E378382AC37167D
Content-Type: text/plain; charset="UTF-8"

On 5/11/20 3:31 AM, Juergen Gross wrote:
>  
>  static int xenbus_map_ring_valloc_hvm(struct xenbus_device *dev,


I wonder whether we can drop valloc/vfree from xenbus_ring_ops' names.


> +				      struct map_ring_valloc *info,
>  				      grant_ref_t *gnt_ref,
>  				      unsigned int nr_grefs,
>  				      void **vaddr)
>  {
> -	struct xenbus_map_node *node;
> +	struct xenbus_map_node *node = info->node;
>  	int err;
>  	void *addr;
>  	bool leaked = false;
> -	struct map_ring_valloc_hvm info = {
> -		.idx = 0,
> -	};
>  	unsigned int nr_pages = XENBUS_PAGES(nr_grefs);
>  
> -	if (nr_grefs > XENBUS_MAX_RING_GRANTS)
> -		return -EINVAL;
> -
> -	*vaddr = NULL;
> -
> -	node = kzalloc(sizeof(*node), GFP_KERNEL);
> -	if (!node)
> -		return -ENOMEM;
> -
>  	err = alloc_xenballooned_pages(nr_pages, node->hvm.pages);
>  	if (err)
>  		goto out_err;
>  
>  	gnttab_foreach_grant(node->hvm.pages, nr_grefs,
>  			     xenbus_map_ring_setup_grant_hvm,
> -			     &info);
> +			     info);
>  
>  	err = __xenbus_map_ring(dev, gnt_ref, nr_grefs, node->handles,
> -				info.phys_addrs, GNTMAP_host_map, &leaked);
> +				info, GNTMAP_host_map, &leaked);
>  	node->nr_handles = nr_grefs;
>  
>  	if (err)
> @@ -641,11 +654,13 @@ static int xenbus_map_ring_valloc_hvm(struct xenbus_device *dev,
>  	spin_unlock(&xenbus_valloc_lock);
>  
>  	*vaddr = addr;
> +	info->node = NULL;


Is this so that xenbus_map_ring_valloc() doesn't free it accidentally?


-boris


> +
>  	return 0;
>  
>  

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/965e1d65-3a0c-3a71-ca58-2b5c04f98bce%40oracle.com.

--------------444D946E3E378382AC37167D
Content-Type: application/pgp-keys;
 name="pEpkey.asc"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="pEpkey.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----

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
=3D3tCZ
-----END PGP PUBLIC KEY BLOCK-----

--------------444D946E3E378382AC37167D--
