Return-Path: <clang-built-linux+bncBC3JRV7SWYEBB34N7T3QKGQEFP6FMLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id A9D14213892
	for <lists+clang-built-linux@lfdr.de>; Fri,  3 Jul 2020 12:22:40 +0200 (CEST)
Received: by mail-qv1-xf37.google.com with SMTP id y36sf20253486qvf.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 03 Jul 2020 03:22:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593771759; cv=pass;
        d=google.com; s=arc-20160816;
        b=U98y+Ikzt67OYPLdU6kYWeANrCxf5+lhsHGBjSnXbwmO8Q92rMGIs6FAhz5eKGq8Uy
         NgTGRaXeoHFxMNzXJtZ79AsvtwC7+2E+BPQ0dGlzSjo3wsaYM4KisnvMSObkt8HlXPB7
         eA5Rm0cJTZcBlSFHfyde8acN+g1XWe01/rixBxSluleuFXsTbZwokCdIAnSKlb2Wjy9p
         WZZHxCLpr6p6VfWw0D42cw+DE2o47WaRG6I1yiewjWT6PMGxWa1DnOQB4ywTU54thnhw
         WEYq3eEKx9uuTgQTXwKj3IVtSInz/idgL+XPxN2cTJ2bgtzgI/C23Ms2RnAf2pV4SE6h
         u+lg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:autocrypt:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=9jai2fgsJJwrhJExFuksFba7zMQPELSDb/yiODAcwvE=;
        b=Xq9VKA4UUOOrdGNOnhvdRrRjQmzha796czR3UmPVFPDExd1BSc6/+4jnYq7UtnfpDw
         hiIm8fYcwxsWrkX8+P/lWp8tO471RfiK2nVf0tP+lObk/Lnh9sNj1A/CcWFOrYw6FBEq
         LjNzRqjX1dFuZ1qMRTRnZxy+OPRD1Kp3YW7oIW2nNBMCL+Ow4ilYGptq2K+e3G8gCfO4
         itB44t+ZMElLS03rExfa3XybpnXmY9E10OTtFz421NJ9VbZv7JbmRjTXSt3/jHg/xTI4
         eLEmoeRve5TSm8qHoh6xU8WwTef2Wm/N+lHIpSO8jnrZfBp9crMWcTy+QnV16Aq/jbQV
         pDzA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=ULkl9YeO;
       spf=pass (google.com: domain of boris.ostrovsky@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=boris.ostrovsky@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9jai2fgsJJwrhJExFuksFba7zMQPELSDb/yiODAcwvE=;
        b=OIh93ZtM5iGbeo+8uzjd5qx2PyD/q3BiPlseJacCX/Ts/r3l4vl6AeHXvxx49ZRxO5
         OeHZ9+Hc2MZsZOCJhEuBXADfYwDFfHTK9F63bdWzHeO5YxQg4K8irLKpjA3w4uMnIvca
         nFYlvVIlXB9eDD/blsOjsnLBO/hq1r1UCVFg4VtLTOJHIgz0hzXeUThkkGoWoqvhVhb1
         wfY/lUIbbu9vdSJiGK1JRCTixXBkUWM5MWtwPNJZeMGg9oawWIyMHMRxViAmu3w78SHa
         ZoUedTsReQQa4tEYiBUlZhQnf9mDWKa/MeCPSwoo47OLETGBPhTca+uM99+HCyr5jWH1
         Tc6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9jai2fgsJJwrhJExFuksFba7zMQPELSDb/yiODAcwvE=;
        b=fxiY4L157ZWNBwGKSDFbgG5cABJFSS+scVprGJwzFgD2txn6Qo7YyuzRp7WgLHCOhb
         QKUdCY6g4N9Mepj2WDqGrUaWSTZ2DEgco/0IB1rwp3ysSjJGzx9fJ0IZBamFkYVSk5px
         oRWlbNUUAbtCfCKWr7udDq/Lwz4H60ZcsmV3LWrpLalB+DobMoDEbCGU87aMhKpC+nau
         DD7ijdtPpRRVmrWf1Piu1//YCvwLlDrpehJ9Hvj8gtA7ug2NgmK0jfQ673Iz9kwJHHz6
         HZ8PDISuwouRU5+YbpP1vno2n53G1duYDRablDt5zjihFCvwK82Q+hd+lqNqi9gKTDrL
         ejbQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532x6fSEEgn8TKZdUC30hwuCsMmdxiq6aKSOGWZNfCocn9y0WZY6
	bxaW0apq/hAz6NhE8LQVstQ=
X-Google-Smtp-Source: ABdhPJx/vSOx/ts4wD4/THHEuXOD4Y4G8Nv0eRKUjdz26XHsltBYIu8gsIRlKuxRvqkLkZv4mkvYRw==
X-Received: by 2002:ad4:458a:: with SMTP id x10mr34168480qvu.223.1593771759663;
        Fri, 03 Jul 2020 03:22:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:3559:: with SMTP id z25ls3591947qtb.1.gmail; Fri, 03 Jul
 2020 03:22:39 -0700 (PDT)
X-Received: by 2002:aed:2ba1:: with SMTP id e30mr37395194qtd.357.1593771759380;
        Fri, 03 Jul 2020 03:22:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593771759; cv=none;
        d=google.com; s=arc-20160816;
        b=SBKn1zCXyAzVAwWlbVjppn/8FnHXYJQAkH5heUs8i40WoDbmthqT9DYGaOPXLdu1EV
         FDD1cFIobLEoinBVOB7XdJsXOPASKoWQ8zpThgqy2IE4mwt/6tR/sJKmbhFZvLYKTJ5b
         q0xu5+QdW9tvrBgMl5bGrHdFhQiCuy6EsOZ/3my3HfSyz8MuQaZnNEUEHg713X2IjfW3
         jRJXL+3Wfv4G17kf5doNtDvgqP9W5LezwKlE/puNw19N+Xcf3PYjdKoi2/0vPcQYu8s+
         Ul5Y9rPLIvWPW+MB7X4Vo0babX66ieS1tD06tdaOS9f6xkt3mH/rQ/MkaXYGPqH0rtmM
         Ti+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:autocrypt:from:references:cc:to:subject
         :dkim-signature;
        bh=VRQkPgod6GGE++rwFxMBA+cnzNu5RnUyQ53+t1KYc4o=;
        b=1CxQlQBjvH+VwYBaCjFbPk1qeLRqSTxIHKyZfXYelPPXjTcWrdHGC6dAtpaAmSQOPN
         00w2xfV2QyqXPS0y3ErXGj2NUHX7YhGAwTKsS/F4g4XiQtQ0lVTQUAdIVrEFd3m79BDo
         Gu5m//YWtmDyAdDbO7/mWPLUUEg52R9X+Pb+2RJkYmFF4ZPTOmSrlCjz0c4DDhOfpHUc
         DBrztFn5mzC/7Ss57KuSmzgdORnkX+LbL2ppmGtgUFwygfvLziJvN/kiVwWMTBu8+A4p
         8jrUVoRR/1lwt+YBqJ70CZ6JdTdfb7ZVz3gvJq4BOY8E90itbjABql2wzTaKkZ7Q4RGl
         2wzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=ULkl9YeO;
       spf=pass (google.com: domain of boris.ostrovsky@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=boris.ostrovsky@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2130.oracle.com (userp2130.oracle.com. [156.151.31.86])
        by gmr-mx.google.com with ESMTPS id b26si663790qtq.3.2020.07.03.03.22.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Jul 2020 03:22:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of boris.ostrovsky@oracle.com designates 156.151.31.86 as permitted sender) client-ip=156.151.31.86;
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
	by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 063A1gOr191558;
	Fri, 3 Jul 2020 10:22:38 GMT
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
	by userp2130.oracle.com with ESMTP id 31ywrc3ckc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 03 Jul 2020 10:22:38 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
	by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 063AIifQ027112;
	Fri, 3 Jul 2020 10:22:37 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
	by userp3020.oracle.com with ESMTP id 31xfvx4r65-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 03 Jul 2020 10:22:37 +0000
Received: from abhmp0001.oracle.com (abhmp0001.oracle.com [141.146.116.7])
	by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 063AMZqu031832;
	Fri, 3 Jul 2020 10:22:36 GMT
Received: from [10.39.218.81] (/10.39.218.81)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Fri, 03 Jul 2020 10:22:35 +0000
Subject: Re: [PATCH v2 0/2] xen/xenbus: some cleanups
To: Juergen Gross <jgross@suse.com>, xen-devel@lists.xenproject.org,
        linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Cc: Stefano Stabellini <sstabellini@kernel.org>
References: <20200701121638.19840-1-jgross@suse.com>
From: Boris Ostrovsky <boris.ostrovsky@oracle.com>
Autocrypt: addr=boris.ostrovsky@oracle.com; keydata=
 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
 Jg6OxFYd01z+a+oL
Message-ID: <c940406e-cfb5-f536-2eee-278f3520c702@oracle.com>
Date: Fri, 3 Jul 2020 06:22:33 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200701121638.19840-1-jgross@suse.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9670 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 adultscore=0 spamscore=0
 phishscore=0 malwarescore=0 mlxlogscore=999 bulkscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2007030072
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9670 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 spamscore=0 mlxlogscore=999
 clxscore=1015 cotscore=-2147483648 priorityscore=1501 lowpriorityscore=0
 malwarescore=0 mlxscore=0 adultscore=0 suspectscore=0 impostorscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2007030071
X-Original-Sender: boris.ostrovsky@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=ULkl9YeO;
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

On 7/1/20 8:16 AM, Juergen Gross wrote:
> Avoid allocating large amount of data on the stack in
> xenbus_map_ring_valloc() and some related return value cleanups.
>
> Juergen Gross (2):
>   xen/xenbus: avoid large structs and arrays on the stack
>   xen/xenbus: let xenbus_map_ring_valloc() return errno values only
>
>  drivers/xen/xenbus/xenbus_client.c | 167 ++++++++++++++---------------
>  1 file changed, 81 insertions(+), 86 deletions(-)
>


Applied to for-linus-5.8b.


-boris

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/c940406e-cfb5-f536-2eee-278f3520c702%40oracle.com.
