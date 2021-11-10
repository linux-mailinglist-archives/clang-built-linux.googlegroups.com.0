Return-Path: <clang-built-linux+bncBCYL7PHBVABBBJWGV6GAMGQEG33N5LY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id CF17844C440
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Nov 2021 16:20:08 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id i25-20020a631319000000b002cce0a43e94sf1709539pgl.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Nov 2021 07:20:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1636557607; cv=pass;
        d=google.com; s=arc-20160816;
        b=ror9TcTK9BzXT2RKgNNbedXFc4Y/w+jLu9CZw6pG2gG0mVy+ITplyD8bvd6jRGqlj6
         IAyNYNxNhbYoTmySOrmdwXhilUM0DhFIsoAQoQUCMB7okSZ/E/wWpaLczYoSeMOBs5Pj
         +NbMEmxHVo7vSUcViiJIXgCSA7a0f7VkhyahEaFCk4CID8L1C/SMqa6iKkcRCL0AUeNm
         7gsCi0tCm/AVwnbz7dLmVdbTCpKtISlrguArb8qaEUi3MEnX7OSEAcLF0/Ezn+9VSNhf
         HX2G/u0pViHzouRF/IBcE+5hNghPWXwSOdjYNaYp1LL4XTpCBe1YFIqAbpSimte/bSmi
         u99A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=lRu9urkgR/zC8xAhjymhmck3e2I3dwbz2os9dwbM6fQ=;
        b=s07uSF0Df65DQD3vnkDBSEabH+Nld3lQtMTnHezCZZTxSOAwDsf3NJesvM/ANi52fx
         ho6rWcFqJbd8NhMd5gSMqB/GlwBLvXlrQE8/ZCc6mHNtJQzwVz0xeNFUp4U53+AD0w2s
         PbB9Sm10OQmuUMV7rApCWTpJ1WWgkgVa9wIfO5e4lym8kSaQ4IgaE3cJW/i3Ga9v1uf9
         SwMYYgfyq8fNWiLU1e0DlnNs6Cpyd94r9zHcu9F8rcoNbHPa69YO1YPLjmDGObBtniEg
         rvhQ+I0/XUYDwdh9moLFfdxM+9zvfQKKhYDLm/nR6igk1yppLW5Ljfh5UM9ngHIkhYjF
         GsaA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=iid2yqDU;
       spf=pass (google.com: domain of hca@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=hca@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lRu9urkgR/zC8xAhjymhmck3e2I3dwbz2os9dwbM6fQ=;
        b=bs/32LP0McfgnAOnftq5jbD6eUnCspJww2U/l2cPNugBEg86dw9ma1bieNwf7fKL6g
         pMVbn9HlaxF/qKvctaoLg6wjjChCiarFQ/u8auP3s45wRWHxikz21eYxXNXY+uQz3ojN
         C+rUfcMrq8d+/ZodN9tgaVfm/w15nzpaSE2Ypqw/cWt/I+Xsa1duY/UqHmAuITe6msCY
         LKEaCQgzRx3QR3xtlr8cf+jTHMbOy1vHzGAA3LXAq8DtPIUHB88RN9OBvbuJVhUcn/4A
         QeWf9FLHLiBQ13DTo3nlklAV+KFY9gw3OuF9R17E+9qpdu+14nl7BhqX9ckOiP86Lnv4
         fCrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lRu9urkgR/zC8xAhjymhmck3e2I3dwbz2os9dwbM6fQ=;
        b=NEJAwCgct2Gvmpk+z16/8vtoAT/SYZi/AoPyJFOdh+0+Uiw5COMtOkU/FhHbOGcUkm
         wWgu5RA+JrYDySsgg6dBum1qYnaI7TnUyQ78IktvzqmXzV9msKU0wz38Tv528+xh0oOb
         0iAISLyjLmxxATvLzEOutcD10tmOvjzNEknkZJ5Q3NWde7X8vIaREuctTTi6RbezzcBN
         SOEvY3XZnOHgkDzPsShGFZH6Se3T8/lZAvjvZAB797HOMm8uaQKntCsoEzsoPwJ1A4w2
         lp6/LMbQMz04KJallBs/uHrcz1KtXGvZZituKbDTQItrJXb81qxGxhbFBH6aH5AaAFuN
         SD4Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530IbjBCfwVyGHMgGPjPQIoYtSIWRKO6YbmC6G2yspTaUvSdafKQ
	PqtwG0ci1HbtvlKgEWKiRf8=
X-Google-Smtp-Source: ABdhPJzuz8kmTIk2oCniEI61LjhLYaJfjMhfSWh49HdK1UrOSTc/f7lsht7liwGRWZmgIMbxMuk87A==
X-Received: by 2002:a17:902:dacb:b0:141:e931:3b49 with SMTP id q11-20020a170902dacb00b00141e9313b49mr50789plx.45.1636557606957;
        Wed, 10 Nov 2021 07:20:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:5847:: with SMTP id s7ls2333pgr.11.gmail; Wed, 10 Nov
 2021 07:20:06 -0800 (PST)
X-Received: by 2002:a05:6a00:cc8:b0:49f:c4a9:b9f1 with SMTP id b8-20020a056a000cc800b0049fc4a9b9f1mr89607pfv.32.1636557606357;
        Wed, 10 Nov 2021 07:20:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1636557606; cv=none;
        d=google.com; s=arc-20160816;
        b=wzX6PHf0AvHYuozQm1DybkV383C2DwWNJmbF/QsDnEVdJK/wWX+IJKwd8Zs7uhqS2i
         1nvC4v9SItz9DyWGs5Li0XfRVed0G7BYSz7+Zd+9HDPQoqkOpr2Rb7YExcdsHIuvEysJ
         SLoABBaospul12wNyQeS4wCx87lJouhGK21GBTJehwrqBeCD5pJBm5u72eWQPLoCyrkb
         pHvKs4wgLVa3KiuTavYpric6m1VoJvjkSTC4I7N/Ijj3K5YVfd9ljo/HWb0fkipy53VE
         kuLvxcQ+9W9IdbS0bJE8sQmbvgHv4LBblrcS8lnQelriWakDwXDItUzsdTwT+J2688x4
         W6pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=KTQMzr8/V0eMZthQi6n6Cwl8vmrIFyIah4GL8IWMuRE=;
        b=WA1I4xY+2DTc8UTzx1AKH9qOGoB5cj3EdXM8FMh5YGFj3TDrl2UabR4D+yMlfBA6Yz
         j1QPTq+HRAJGwDaJ7xdfqho5c9IwfFJ8jCTjumxf3A8+8ekKaQQpqPQ3LG6VAMdwl48w
         DTEvt0bohb+IM24otC3fwqy99uA3vRjK45pIzv1hN/gGOJ1k1juJBwDSs2qIcnxIh8Wi
         Sz2zDft73s+2H/HV1FNGnpagaII77e8PArbUzloHtd/+Xu/LvtK4Efh4pM4DxgU/1T9c
         /poME6w2VOYuf20B9ZFrqtxDijxRAIUfE7LuNspREH/fDxn5P873ICbGEl6Upr0bXKK6
         W66w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=iid2yqDU;
       spf=pass (google.com: domain of hca@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=hca@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by gmr-mx.google.com with ESMTPS id b20si9129pgw.4.2021.11.10.07.20.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Nov 2021 07:20:06 -0800 (PST)
Received-SPF: pass (google.com: domain of hca@linux.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0098413.ppops.net [127.0.0.1])
	by mx0b-001b2d01.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 1AAEidPo013969;
	Wed, 10 Nov 2021 15:20:05 GMT
Received: from ppma03ams.nl.ibm.com (62.31.33a9.ip4.static.sl-reverse.com [169.51.49.98])
	by mx0b-001b2d01.pphosted.com with ESMTP id 3c8g3s0ws7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 10 Nov 2021 15:20:05 +0000
Received: from pps.filterd (ppma03ams.nl.ibm.com [127.0.0.1])
	by ppma03ams.nl.ibm.com (8.16.1.2/8.16.1.2) with SMTP id 1AAFCnL4029249;
	Wed, 10 Nov 2021 15:20:03 GMT
Received: from b06avi18878370.portsmouth.uk.ibm.com (b06avi18878370.portsmouth.uk.ibm.com [9.149.26.194])
	by ppma03ams.nl.ibm.com with ESMTP id 3c5hbaksuf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 10 Nov 2021 15:20:03 +0000
Received: from d06av21.portsmouth.uk.ibm.com (d06av21.portsmouth.uk.ibm.com [9.149.105.232])
	by b06avi18878370.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 1AAFDIlK63767034
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 10 Nov 2021 15:13:18 GMT
Received: from d06av21.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 2FE095204F;
	Wed, 10 Nov 2021 15:20:00 +0000 (GMT)
Received: from osiris (unknown [9.145.55.149])
	by d06av21.portsmouth.uk.ibm.com (Postfix) with ESMTPS id CA1C352067;
	Wed, 10 Nov 2021 15:19:59 +0000 (GMT)
Date: Wed, 10 Nov 2021 16:19:58 +0100
From: Heiko Carstens <hca@linux.ibm.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Vasily Gorbik <gor@linux.ibm.com>,
        Christian Borntraeger <borntraeger@de.ibm.com>,
        Alexander Gordeev <agordeev@linux.ibm.com>, linux-s390@vger.kernel.org,
        clang-built-linux@googlegroups.com,
        Ilya Leoshkevich <iii@linux.ibm.com>,
        Sven Schnelle <svens@linux.ibm.com>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] s390/vdso: remove -nostdlib compiler flag
Message-ID: <YYvjHjD45+z8wTkH@osiris>
References: <20211107162111.323701-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20211107162111.323701-1-masahiroy@kernel.org>
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: SdVV0oAzT_d2UCPMypGbVaHgE2Aq4K9x
X-Proofpoint-ORIG-GUID: SdVV0oAzT_d2UCPMypGbVaHgE2Aq4K9x
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.0.607.475
 definitions=2021-11-10_05,2021-11-08_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0
 priorityscore=1501 lowpriorityscore=0 bulkscore=0 malwarescore=0
 impostorscore=0 suspectscore=0 mlxscore=0 mlxlogscore=693 clxscore=1011
 adultscore=0 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2110150000 definitions=main-2111100079
X-Original-Sender: hca@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=iid2yqDU;       spf=pass (google.com:
 domain of hca@linux.ibm.com designates 148.163.158.5 as permitted sender)
 smtp.mailfrom=hca@linux.ibm.com;       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
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

On Mon, Nov 08, 2021 at 01:21:11AM +0900, Masahiro Yamada wrote:
> The -nostdlib option requests the compiler to not use the standard
> system startup files or libraries when linking. It is effective only
> when $(CC) is used as a linker driver.
> 
> Since commit 2b2a25845d53 ("s390/vdso: Use $(LD) instead of $(CC) to
> link vDSO"), $(LD) is directly used, hence -nostdlib is unneeded.
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
> 
>  arch/s390/kernel/vdso32/Makefile | 2 +-
>  arch/s390/kernel/vdso64/Makefile | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)

Applied, thanks!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YYvjHjD45%2Bz8wTkH%40osiris.
