Return-Path: <clang-built-linux+bncBC3JRV7SWYEBB64W7H3QKGQEYPI7ASY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id BD144212E71
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Jul 2020 23:02:52 +0200 (CEST)
Received: by mail-qv1-xf3c.google.com with SMTP id m8sf1689563qvv.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Jul 2020 14:02:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593723771; cv=pass;
        d=google.com; s=arc-20160816;
        b=PffEm5iv5oz8s66aOFn5HxWNXe5t9QSJatoZmACPFh/js0NJsAZIT+kjonoEf+4T5P
         uwWBfWLKyIUZo21ayT/HWBGRMiLSiQnTiKTyZbFK+bxqzROfbmz9cO1O58rI6qxUQVcR
         q/TwbKxkqUiH4grckjzsaCyHqOkSVJhQ7trwM7GxshV5jAns3avnguezRnWoJkmw3lT6
         /MY0I1OkmHjIa7SIaJlv7B7u/EHzcqXM6UDHlO2glMaon708ExuyJ5NdTQJGatOsJU/9
         zDg1o7hw4OPfLs0/FmeNX87ZYjbGkIV8RpltXGYq02gD4jqQAQ3U+j/oHfwLC0b044D6
         NI1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:autocrypt:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=lqd1SwojNWjh+Z0tJ+aE/S5cZ2WIJZRGEQwna6GgAgM=;
        b=nbxpabODABcZqfMADhDNWBNUoHHX9LZMd3BNGrCx/9pHMqyZ60BEwlcScDYGMfgfIe
         Iy9GuNVuwVHmLyCEOhR6SoJfGydlAuV/Jj7Cx8PTlYlsWHwQnU4qJT/G5wPK5UK0RuIt
         G+cdFas7hPxU9XgfZH2g5eoS3fLhoIg/aDMbcavLBJc4IDT4nota5XwhWI0YyJVcl0bj
         vD9iQ0RshUU9HAxYv/yhSnufsBBb9fqkFuc5Kwcq7qtFJhpPY084tCKrYT0Wy9+sejwF
         UJapNK8eg+vGi9Pcd6iQnfsuiUoL/xtE3MJYWLDRzvgpFDVVK0ojXCI4Jty8Wt0PfAC8
         u47w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=HV4SxcyK;
       spf=pass (google.com: domain of boris.ostrovsky@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=boris.ostrovsky@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lqd1SwojNWjh+Z0tJ+aE/S5cZ2WIJZRGEQwna6GgAgM=;
        b=szJ92nwT9qyyUj7+e4ifyGf2IoFaGXYKpHz8hIP+LCpvZTq7MrCe8AGo2OHno22ydG
         O1oT97gdxLR6ZeUsnnsY2PNJ2eyfhSYuSWVpCZaJ+enZ8tOXMe5mdEsHLpZuv6SizoRk
         DuAHsSb4jsvSwe4pfFsBIYvKz+YYBBeNbaCwUhg1Eo/j1nG9ZCt0r1TIHf4Xsk68rzxh
         ml8eyLxp+42n6j3PWduSqLsVvvD7V9zS8608tEirKF6M1JjJS92uYitPE9uRL2BzTwi1
         cw8Wwue87LR2OhxGw4XnEHk0wUp9FZO0KlAsRd+Rah1ul/2pzGyWCBCXADb4NiZBcPX7
         wB/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lqd1SwojNWjh+Z0tJ+aE/S5cZ2WIJZRGEQwna6GgAgM=;
        b=Cc/RGclQ6uIvbOz6OZahQDXpuRwHbBDZA1OnOrDpPgAaHTfpKzX0OFJAwUM/PnlA58
         MpkJR8/SoXt9NzUrsA0IQn1/HdH4woJBGT0vqcMu94vwUX6XvVMg2cqxaP+mRdxtouBQ
         eCVR98mjGCXkRSRGaUhOdm3m1ECHMbDWKML3y5yqJKJmxUQtPjQL1Lnr55ISsqJ26G5h
         3iYdZVGN5xVHDz7FAzkyJx4rmo/LMJb1i+I/KbWxTvCYWhQEic9gtyZYOiMreUqqOOEd
         eK1Q0NXSvqMVnLpDFualUjIhp0AQQYIC10pmpTi+YEN8zwKk1kQ8ylcbMSq0nVrpnvRV
         KyhA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Dkqo8ViiNPGVk2TofJW1F6bPPtrYm6v3TrzBwYYOeZ2lNqyzd
	/YBcxVQgBRTUay2IsExxXXY=
X-Google-Smtp-Source: ABdhPJwbSdejTQWgi9TINOvj9+pRk+7gNt9lbSc2ccp4m75Zw9VEANqPqNq/ssGbs8AUmWzQiVs2Fg==
X-Received: by 2002:ac8:4d5d:: with SMTP id x29mr33755318qtv.358.1593723771822;
        Thu, 02 Jul 2020 14:02:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:2ac4:: with SMTP id t62ls2905952qtd.7.gmail; Thu, 02 Jul
 2020 14:02:51 -0700 (PDT)
X-Received: by 2002:ac8:4419:: with SMTP id j25mr34463114qtn.0.1593723771481;
        Thu, 02 Jul 2020 14:02:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593723771; cv=none;
        d=google.com; s=arc-20160816;
        b=IOzAhyxYBebp5gYpEHaKbt+UrARtDCs8JtgdXT7LULN2bA1fPnSFpX7+zn6wM9acVe
         uosBTkHnHRi/vettCImT/iJGsxvz4Rsm2yU6GcAfY7iYz1oK6tlzdueDgmrbEQuHAxD3
         IHAGp/0cnGTZepTDXpLE73abq9Q9rMuirvsmJupBc5Y51Q5PsXnQ37mOKyRiDN2W5Ied
         ZpOeNP+yFxDxjAkASAPslHleV/EWEs6E+3nzSzKpNjouA5APwEuBernG2V4dogh0ep0u
         pWllbE8EVbD6sp6SV22mIbjGZlC789fkdclk+UbnLu2STZuFGCZ3kqnNmt226LslQYHO
         0BKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:autocrypt:from:references:cc:to:subject
         :dkim-signature;
        bh=YiWks5ex821tPWXOK4J5iyPZscj0Ms1G+WO1UwXxeWo=;
        b=PsyTVkL+QgwFMPAop6TifK7w07u0mQdvtvCzawjf9Sy6n8u+pEl3d/A1azh2j0GLhn
         8aCwMPRhxEBfhQebNCUaT8JE0hEXwlqbFcFcIjdPX25wOaLasu8W51asj1EsxHWayC4a
         lCaj2IccaSR9r9XrAa6LzPe08MwUFZVWi5Kxix5/w6oZiTzyl1xa571wRP7hGUrPuR1z
         AdwYeirXskvAcjMEJc7cQTHgL60c76qa2KWfoPLvNjY98PDzdj0+6algZYIUL60n51/G
         AxdazUTLMgaXNHNffWmfa4+FhKitN5FokChuAWNWE3gsB1T1FgaxOZhf1MEXlXK0S0Hq
         Ntnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=HV4SxcyK;
       spf=pass (google.com: domain of boris.ostrovsky@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=boris.ostrovsky@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2120.oracle.com (userp2120.oracle.com. [156.151.31.85])
        by gmr-mx.google.com with ESMTPS id w123si542629qka.1.2020.07.02.14.02.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Jul 2020 14:02:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of boris.ostrovsky@oracle.com designates 156.151.31.85 as permitted sender) client-ip=156.151.31.85;
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
	by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 062KktL2183409;
	Thu, 2 Jul 2020 21:02:48 GMT
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
	by userp2120.oracle.com with ESMTP id 31wxrnjn86-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 02 Jul 2020 21:02:48 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
	by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 062Kmut9122943;
	Thu, 2 Jul 2020 21:02:47 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
	by aserp3030.oracle.com with ESMTP id 31y52nac7f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 02 Jul 2020 21:02:47 +0000
Received: from abhmp0002.oracle.com (abhmp0002.oracle.com [141.146.116.8])
	by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 062L2hLw032250;
	Thu, 2 Jul 2020 21:02:44 GMT
Received: from [10.39.209.60] (/10.39.209.60)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Thu, 02 Jul 2020 21:02:43 +0000
Subject: Re: [PATCH v2 1/2] xen/xenbus: avoid large structs and arrays on the
 stack
To: Juergen Gross <jgross@suse.com>, xen-devel@lists.xenproject.org,
        linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Cc: Stefano Stabellini <sstabellini@kernel.org>, Arnd Bergmann <arnd@arndb.de>
References: <20200701121638.19840-1-jgross@suse.com>
 <20200701121638.19840-2-jgross@suse.com>
From: Boris Ostrovsky <boris.ostrovsky@oracle.com>
Autocrypt: addr=boris.ostrovsky@oracle.com; keydata=
 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
 Jg6OxFYd01z+a+oL
Message-ID: <80b8927f-d654-44f3-a860-fb3e395652d6@oracle.com>
Date: Thu, 2 Jul 2020 17:02:37 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200701121638.19840-2-jgross@suse.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9670 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 phishscore=0 mlxscore=0
 adultscore=0 suspectscore=0 bulkscore=0 malwarescore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2007020138
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9670 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 mlxlogscore=999
 priorityscore=1501 impostorscore=0 bulkscore=0 clxscore=1011
 malwarescore=0 phishscore=0 adultscore=0 cotscore=-2147483648
 lowpriorityscore=0 suspectscore=0 spamscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2007020138
X-Original-Sender: boris.ostrovsky@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=HV4SxcyK;
       spf=pass (google.com: domain of boris.ostrovsky@oracle.com designates
 156.151.31.85 as permitted sender) smtp.mailfrom=boris.ostrovsky@oracle.com;
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
> xenbus_map_ring_valloc() and its sub-functions are putting quite large
> structs and arrays on the stack. This is problematic at runtime, but
> might also result in build failures (e.g. with clang due to the option
> -Werror,-Wframe-larger-than=... used).
>
> Fix that by moving most of the data from the stack into a dynamically
> allocated struct. Performance is no issue here, as
> xenbus_map_ring_valloc() is used only when adding a new PV device to
> a backend driver.
>
> While at it move some duplicated code from pv/hvm specific mapping
> functions to the single caller.
>
> Reported-by: Arnd Bergmann <arnd@arndb.de>
> Signed-off-by: Juergen Gross <jgross@suse.com>


Reviewed-by: Boris Ostrovsky <boris.ostrovsky@oracle.com>


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/80b8927f-d654-44f3-a860-fb3e395652d6%40oracle.com.
