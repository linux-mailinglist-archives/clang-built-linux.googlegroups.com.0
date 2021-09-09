Return-Path: <clang-built-linux+bncBCV6NQ6YVAMRBZOM42EQMGQEGUYFLHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 96457404580
	for <lists+clang-built-linux@lfdr.de>; Thu,  9 Sep 2021 08:15:03 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id d5-20020a63ed05000000b002688d3aff8asf590582pgi.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 08 Sep 2021 23:15:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631168102; cv=pass;
        d=google.com; s=arc-20160816;
        b=DEyyGT/BSVMyRTAuahyQomMbm9EY3IVAvEMXNJwKbtTeshtjsXFDBQa74CLAuDwelX
         j8X0k2o+RgCHVFo7RKcxLgyx22xzu5qvU8Kk64j9v/cRC7c4hDmKJZNw4RQ+qAzrRkje
         kSrOpGf28/+EbZFWVDCWkuihMLsRLn+vDvj4waLYqPql08nRvLkEyz75VWAjDskvkn6f
         btnemK5iW0gswzSxE6YZkRrPzoYnhIztz6qlkCKHWnTRLSifXPoI/LUKnwB7HWwzpV0P
         +/U4H9tVLupPckNJDeYaJYZC0PM5Hgc9sHLHkXsUCWCPKZ+k3+VE0NN9/x59zKiLmklN
         3ztw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:organization:from
         :references:cc:to:subject:sender:dkim-signature;
        bh=LAVhV239bXwgVkNLWj7Qmwo4D2gdEGZqx4IJzsrftSM=;
        b=02FfaUaZnpSBTT2TFM/DRwJCIS4r1AplhbLNRIXSQfVwjW9/OUG6pYxCeQ1WpuihRK
         eTkOnuxntW9XnctRM0Z7nGiyuWPN+yg5Z0dSPnc01t/4gInwc/61yune0aEref/ivEkj
         /LJ7979P3qT4Qqs7xjc9V9k3RfxpOaqhiUyzB1tBst/Pqj4Z46nxImTjoBQfxijYtUeS
         T5MYqE776Rv+n9vKEkIfGJjbb8eTucCKSMEratsO653UnH4rvRBt2zm3DyTpCTqZxzQo
         OQk3RGgdGQiMayYVZjKFU7LV5stpLemyKE1yn/zQzfWS5wmfQ+vZNefxvkg5zZdV6Mx2
         nVqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=NrJLNRL4;
       spf=pass (google.com: domain of kgraul@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=kgraul@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LAVhV239bXwgVkNLWj7Qmwo4D2gdEGZqx4IJzsrftSM=;
        b=UoXetO0A5aws+SrYDQuBeKpY6JN5RnEGP83uu1ngj7miZ9AymxGBE7F2Wrtf7CsyhY
         EPlE0r1KW7hdFVr2hm69Uizz0VlX5PuZwHgarpEoV8toHPJu4isQ/P/3NiI3KMxa6hiz
         ZetElfAB00sldJF9qdsXFhloW4sZMKosFBgJtSeA6DR77n8SMrh/QU36KwmF2V4mJ89l
         JpJgSlbvt4tcl9HILFBskkPJe8a8OFFVji+SeFY4MlXyi3h7Lh6f2BVAIbQXaxFP+oZx
         1qlKMAhBheVCves3vbCA2Bj49gmU46xFhvYMxwyYSIu7c1pLdut/pOfoEtg4aPjkxp0L
         hbHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:subject:to:cc:references:from
         :organization:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LAVhV239bXwgVkNLWj7Qmwo4D2gdEGZqx4IJzsrftSM=;
        b=Lje53PUgI22TqeU9g24HIoHxuHrFZYZQmawqPR1sWSRL3PanTc8LCZZ6/Aq9FFhq3t
         7RxhibdvEj8PF57Mu7SCisbZAhEuvDw8CSYfeWAJJLSOgsj6nC8mAj5L/ihaDTH0OKuM
         KfCu7qOWI6nbgWdWsbftVkOOSQS7Hh+zt/0OtXIxLmC+Anv2Nl0OLfNK9T4be2o8qbV+
         ThJO3TfMGxVCW0rwVDTdvROsfWyjRMgtKYXYTsRTEFsrOs8QSy/QtMEovIgTRKr0RZzZ
         GIZgGOZZuOl1HvSAWUUNnYW+80K49qfWL0tFdVXwtEM6xKx1UkuycvOMfOTFzhSWRnmE
         jZhA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531W09s1FYHA+0tH+781O8ClDd60pi3Ig8Lg9GVMydAegbU05bvD
	BfJ1kCjo6wzrPSBp13ANYrU=
X-Google-Smtp-Source: ABdhPJwgE1DQMZ4LrtDPxVGaQXPfBAVx0ravGPoC7ISyr3fSeUVuR86XtCmL7pl42a8oUCvXZ8lLIA==
X-Received: by 2002:a17:90b:388f:: with SMTP id mu15mr1653654pjb.193.1631168101793;
        Wed, 08 Sep 2021 23:15:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:fb01:: with SMTP id o1ls468897pgh.4.gmail; Wed, 08 Sep
 2021 23:15:01 -0700 (PDT)
X-Received: by 2002:aa7:820b:0:b0:3ee:de1f:18a9 with SMTP id k11-20020aa7820b000000b003eede1f18a9mr1526699pfi.73.1631168101167;
        Wed, 08 Sep 2021 23:15:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631168101; cv=none;
        d=google.com; s=arc-20160816;
        b=iV3PkEhbB776ZTw/yNOlEN44Gb7CKGOY127BwPxtuV7gqtlGwhWSLxn7s5e9Z/xHl1
         110Ww/6ILMEfNnpoboXXBqCEkbVB7DO368eGxr5C5z7/KwDZbLZrBDbMuVaURjYwPlud
         ws/HzVWaf270qRYlfK7blgEDbb6tEprKk0C9UJPZBmnrSt8MCfx97UCKl0f6saXp6ST3
         MfCm12fkEsksWUygawDbW213wsIy8rhgVx/S81ZlkyvdkDzJn6uBWHb3Why/PyxKPrXS
         0xA85yjrakwjARn280sAwBnciGHbEKWBiF+hMDNaJ6ALPzlZlPMhpYUTLqLZ0aABfNfJ
         xOTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject:dkim-signature;
        bh=cPUonm5kJsYc2X/GGy0xJ2tmTzDsookwnNtXApmtolc=;
        b=UqU8s8n2Cij8GiudvCpI8rrmKWDgSywASoF9wXithfwb556ooZnNTYYXbch3Ec9hGd
         ary+qhLfvfb6GH0UejcFVDhG/Y1ayGAFF6/VPVyYCUUcJJWvWR84hGOtZxYh/AOe1W3v
         5vF56AYUgi0dgSo3XtqUyQinY1PY8yOsUJo11tS18U6PjwUrn7CShWymfCxP+LiMoSf7
         dAc3faXyRpc/lbiKqRY3TyJqFlVBm6+zWuZEix3hWEZgk+0PTmP8ZkWALryIK3japZiK
         CH2zZ4sfVtkbNujkHLpDjC+I2QhPmdKwW/wPiKUNs5mMPcmVuzsjWG8Zx+F3D7LUTcLo
         s6XQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=NrJLNRL4;
       spf=pass (google.com: domain of kgraul@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=kgraul@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by gmr-mx.google.com with ESMTPS id b15si63732pfl.6.2021.09.08.23.15.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Sep 2021 23:15:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of kgraul@linux.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0098393.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 18963cdb004569;
	Thu, 9 Sep 2021 02:14:57 -0400
Received: from ppma02fra.de.ibm.com (47.49.7a9f.ip4.static.sl-reverse.com [159.122.73.71])
	by mx0a-001b2d01.pphosted.com with ESMTP id 3axmeqtg97-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 09 Sep 2021 02:14:57 -0400
Received: from pps.filterd (ppma02fra.de.ibm.com [127.0.0.1])
	by ppma02fra.de.ibm.com (8.16.1.2/8.16.1.2) with SMTP id 1896CAlI007700;
	Thu, 9 Sep 2021 06:14:55 GMT
Received: from b06cxnps4076.portsmouth.uk.ibm.com (d06relay13.portsmouth.uk.ibm.com [9.149.109.198])
	by ppma02fra.de.ibm.com with ESMTP id 3axcnk87vk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 09 Sep 2021 06:14:54 +0000
Received: from d06av24.portsmouth.uk.ibm.com (d06av24.portsmouth.uk.ibm.com [9.149.105.60])
	by b06cxnps4076.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 1896EpGp46661900
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 9 Sep 2021 06:14:52 GMT
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id D918B42041;
	Thu,  9 Sep 2021 06:14:51 +0000 (GMT)
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id DBB794203F;
	Thu,  9 Sep 2021 06:14:50 +0000 (GMT)
Received: from [9.171.14.134] (unknown [9.171.14.134])
	by d06av24.portsmouth.uk.ibm.com (Postfix) with ESMTP;
	Thu,  9 Sep 2021 06:14:50 +0000 (GMT)
Subject: Re: [PATCH v2 60/63] net/af_iucv: Use struct_group() to zero struct
 iucv_sock region
To: Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org
Cc: Julian Wiedmann <jwi@linux.ibm.com>,
        "David S. Miller"
 <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>, linux-s390@vger.kernel.org,
        netdev@vger.kernel.org, "Gustavo A. R. Silva" <gustavoars@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Andrew Morton <akpm@linux-foundation.org>,
        linux-wireless@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
        linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com,
        Rasmus Villemoes <linux@rasmusvillemoes.dk>,
        linux-hardening@vger.kernel.org
References: <20210818060533.3569517-1-keescook@chromium.org>
 <20210818060533.3569517-61-keescook@chromium.org>
From: Karsten Graul <kgraul@linux.ibm.com>
Organization: IBM Deutschland Research & Development GmbH
Message-ID: <19ff61a0-0cda-6000-ce56-dc6b367c00d6@linux.ibm.com>
Date: Thu, 9 Sep 2021 08:14:52 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210818060533.3569517-61-keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: oFVZQt8pTzxySj5pZJpy_ghkEsh5Wye4
X-Proofpoint-ORIG-GUID: oFVZQt8pTzxySj5pZJpy_ghkEsh5Wye4
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.790
 definitions=2021-09-09_01:2021-09-07,2021-09-09 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 bulkscore=0
 phishscore=0 adultscore=0 suspectscore=0 malwarescore=0 mlxlogscore=968
 priorityscore=1501 clxscore=1011 lowpriorityscore=0 mlxscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2109030001
 definitions=main-2109090035
X-Original-Sender: kgraul@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=NrJLNRL4;       spf=pass (google.com:
 domain of kgraul@linux.ibm.com designates 148.163.156.1 as permitted sender)
 smtp.mailfrom=kgraul@linux.ibm.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=ibm.com
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

On 18/08/2021 08:05, Kees Cook wrote:
> In preparation for FORTIFY_SOURCE performing compile-time and run-time
> field bounds checking for memset(), avoid intentionally writing across
> neighboring fields.
> 
> Add struct_group() to mark the region of struct iucv_sock that gets
> initialized to zero. Avoid the future warning:
> 
> In function 'fortify_memset_chk',
>     inlined from 'iucv_sock_alloc' at net/iucv/af_iucv.c:476:2:
> ./include/linux/fortify-string.h:199:4: warning: call to '__write_overflow_field' declared with attribute warning: detected write beyond size of field (1st parameter); maybe use struct_group()? [-Wattribute-warning]
>   199 |    __write_overflow_field(p_size_field, size);
>       |    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> 
> Cc: Julian Wiedmann <jwi@linux.ibm.com>
> Cc: Karsten Graul <kgraul@linux.ibm.com>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Jakub Kicinski <kuba@kernel.org>
> Cc: linux-s390@vger.kernel.org
> Cc: netdev@vger.kernel.org
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  include/net/iucv/af_iucv.h | 10 ++++++----
>  net/iucv/af_iucv.c         |  2 +-
>  2 files changed, 7 insertions(+), 5 deletions(-)

No objections.
Acked-by: Karsten Graul <kgraul@linux.ibm.com>

Thank you.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/19ff61a0-0cda-6000-ce56-dc6b367c00d6%40linux.ibm.com.
