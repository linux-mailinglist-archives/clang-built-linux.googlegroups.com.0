Return-Path: <clang-built-linux+bncBAABBAMH675QKGQEBUE66NQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 73457286034
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Oct 2020 15:32:50 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id f4sf1299108qta.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Oct 2020 06:32:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602077569; cv=pass;
        d=google.com; s=arc-20160816;
        b=qtSWenbOEgr9uyZBlW/IvpHAvqNLIC0YzHM7nJz66Jj/3S7aMFunbq4Z16nPliKMMn
         5IaHUVGZ13MFti1lda5tLDv1SwEFi2LhOwsTjS97DUbB+ivoM/bJiNxfjiMtjJDagcUx
         PZX4KAr51511amismbHIcTlMyk2YvAzFjt262A6atqkCSBxquDyAshPg4EBmLbsyyMpQ
         RsMnNch9p6pPFoxNiXfyVgOY+HMWJBpBB58nOngiTSTls5iHv1QsBzvmW7sy+DDRDId8
         OTGvGLrzP4S3qlIXpWFQ55KWQXBup9JJOY5r0LvqgOqaUr6q6x8eXEGAMYuKEEY5kj59
         clnA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:references:message-id:cc:date
         :in-reply-to:from:subject:mime-version:sender:dkim-signature;
        bh=s0/43d+O/2T9ruseKpK2h/PBfWTtPmDQPUOWjODZhfo=;
        b=Cg+OtWOSaRyKhDbfNlHaMX+vP3fyBU7TV7Kci4Ev2uPGsXww2cKIS3ztOdoHOPLzzS
         /k1edLbuOA+HSqcXMYfnUAiM6f7K2VGWP1NPC+J+1mJErdrlZMoT+26fnzOnTGsK57Fu
         DyEMZmkGobY69uM1qRy4aiGmtsk4wn2rT2rNse6+H/TvtCrqKXRVlkACGUblasSAz7/X
         ipKthEPq3WsiS78IvdM1kll49MWbsUvhbQQtp1PhjtjPtQ/657jxFz674YLgkLkfbux/
         AJhRE8/bjudfz+pGQQdKhjefT+sgeR2rFJQhCfUHTjssjV7Z8QJCPK6pNP3iU0ZRUqqp
         8Xjw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=vaudEtAg;
       spf=pass (google.com: domain of himanshu.madhani@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=himanshu.madhani@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:subject:from:in-reply-to:date:cc:message-id
         :references:to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=s0/43d+O/2T9ruseKpK2h/PBfWTtPmDQPUOWjODZhfo=;
        b=GAunmoH22BTiCJ3eIwCv3WNJ08qR0ZTug+rAacQMzxWhCb2pfcPG1x4qJBVQRVU1O3
         b9J3lDGh38YcSQfHrdgq7yIRTp2EGHsHpdpZUOELBfat9sC+dYhLE/upuoR4f5Ps6oLh
         GC2vhQm3xAo7qTcMMRhKpTGBFhFlnNXs4vJGeF2HuU60sz/fP2HmggCZyWA3Ypbe6m5t
         JWBwTMWKa3ktnj8JFTfTzdePufgq9Sx0Ue9rPl+F6eBXyWBIy9nzFwTTdfzvMG/HeRwt
         UWEEWTh05Y7WFAhQS/xLgkTaRa6a0+y9C5GYFW2Ya/KRUiZ94SWHbAz6nmucE5Bp7PWF
         VuoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:subject:from:in-reply-to
         :date:cc:message-id:references:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=s0/43d+O/2T9ruseKpK2h/PBfWTtPmDQPUOWjODZhfo=;
        b=QtH8vsqeJFBbnJReCp3b0z9byYPKldhHa+J55AWVXqFwHiQNvzH/7RHprog7YdHNFa
         aRq2ClodArcjfN07Gj2sJ+GqRiFwXsA27tQVzMImqQoOe0CKKe1L+NMXycFDXqBHdfBO
         0Zmf3FpaPEP/zXTtDLFu/IEcdLuAibtsdOzrSdxv81MpZRjTflYVivjldJZ18lVEezPn
         qBOYxky7iyGIDfUo1ULhbDH0hjyOCg83NRZ+bUa2n7DpMvlydNmjzqRfWlZ8X6fdGtb7
         ZR0jLZxhhiwH4ssWotyGioCsvlhc8u+NkPzxbduCnkD6ySBpyJaZCFMyXLnPcfvTs5fV
         H11A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532a+9y5iOvtJAFiRZdarKgtHEEvRQ5uGqObC7u86L+MjMF9xcrS
	LMklZ49Oq5qxmu+XLXEUkWY=
X-Google-Smtp-Source: ABdhPJwdwoF/+RZhYTZjy5G6WzKo6FVf+dAwJhqdEGGOIxqvos7xMqOub77NmNRnhJFbACAXcV6MKA==
X-Received: by 2002:a37:664f:: with SMTP id a76mr2917916qkc.370.1602077569374;
        Wed, 07 Oct 2020 06:32:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:59cf:: with SMTP id f15ls813602qtf.1.gmail; Wed, 07 Oct
 2020 06:32:48 -0700 (PDT)
X-Received: by 2002:aed:3321:: with SMTP id u30mr3266671qtd.11.1602077568687;
        Wed, 07 Oct 2020 06:32:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602077568; cv=none;
        d=google.com; s=arc-20160816;
        b=WlZb5Z8aONnK58CC2IoJaibrJ4DSZu3M3eY/oodwh5Ayx1fCGbQuqQTOK6NKal+1iJ
         ZcPzIBezcWnG7c0HPXhIsStKyjx40rmLpDZbvRqUuJh4T6rJ6CN7S9cxkarv3GYgR2hM
         oIdZsMv1DYnesuH0KeZurcY++rb3ca9U9OfQ811kTJPSdfAYYRd1lL7SXIe0Q0AQAslo
         +qBL4wVirS1kbVW0hA5TUmwPBitbvC6hmCx5qXCJLwgkJTWYmkebcGTTQWZ10mGLDPCb
         6l979QqvB4u39E75TkGSLmPQWR2JCMOAhh87TV2SKjiECozefDZT+3V/P2cRumXjyaT7
         u6WQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:dkim-signature;
        bh=qs97gC59p8+vTB3DTCcQDnWHINcXtYOlPp2Ryb61e/E=;
        b=QR9O3pnYo2wN5VAK/DEvQL6re0QhrdSTcYA/sjGAaLpdU3TsLXexLllSVsyOCfiLOD
         B+cKsmFcpi39FtfEQEuq/Wn09Gp25cE35z5M6i+YzEJg/pCSKQ/q+MPONzZEC18ImBbU
         pIWUNdN9sFYZQf9P6VzttO/uYKmi/5C710HQnUlOf71mB1CcnnxLVvKdASbdbRMG3Wab
         BL74r63Yw62O30USF2jZnzW0G8iDjWtrNurTi3KviEpW/9Az7UjfXCZ/7ILuyAWqBdK3
         SCt/WQHK7o30LpQ0bMgA8IBdIJtGiBNseua2u1VS6OgIJLbt78udznKuCQzCct9BQvoX
         cGDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=vaudEtAg;
       spf=pass (google.com: domain of himanshu.madhani@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=himanshu.madhani@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2120.oracle.com (userp2120.oracle.com. [156.151.31.85])
        by gmr-mx.google.com with ESMTPS id k17si122828qtf.5.2020.10.07.06.32.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Oct 2020 06:32:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of himanshu.madhani@oracle.com designates 156.151.31.85 as permitted sender) client-ip=156.151.31.85;
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
	by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 097DDUE2134529;
	Wed, 7 Oct 2020 13:32:45 GMT
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
	by userp2120.oracle.com with ESMTP id 33xhxn1pbd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 07 Oct 2020 13:32:45 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
	by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 097DFKWL120949;
	Wed, 7 Oct 2020 13:32:44 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
	by aserp3030.oracle.com with ESMTP id 33y2vph5s5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 07 Oct 2020 13:32:44 +0000
Received: from abhmp0001.oracle.com (abhmp0001.oracle.com [141.146.116.7])
	by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 097DWhN2019396;
	Wed, 7 Oct 2020 13:32:43 GMT
Received: from [192.168.1.26] (/70.114.128.235)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Wed, 07 Oct 2020 06:32:43 -0700
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.4\))
Subject: Re: [PATCH] scsi: qla2xxx: initialize value
From: Himanshu Madhani <himanshu.madhani@oracle.com>
In-Reply-To: <20201005144544.25335-1-trix@redhat.com>
Date: Wed, 7 Oct 2020 08:32:42 -0500
Cc: Nilesh Javali <njavali@marvell.com>,
        "James E.J. Bottomley" <jejb@linux.ibm.com>,
        "Martin K . Petersen" <martin.petersen@oracle.com>,
        natechancellor@gmail.com, ndesaulniers@google.com,
        GR-QLogic-Storage-Upstream@marvell.com, linux-scsi@vger.kernel.org,
        linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Message-Id: <2E536F63-9F97-4B80-8538-D3176650CC70@oracle.com>
References: <20201005144544.25335-1-trix@redhat.com>
To: trix@redhat.com
X-Mailer: Apple Mail (2.3608.120.23.2.4)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9766 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 mlxlogscore=999
 malwarescore=0 suspectscore=1 spamscore=0 phishscore=0 bulkscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2010070088
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9766 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 malwarescore=0 bulkscore=0
 impostorscore=0 lowpriorityscore=0 suspectscore=1 phishscore=0
 mlxlogscore=999 adultscore=0 clxscore=1011 spamscore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2010070088
X-Original-Sender: himanshu.madhani@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=vaudEtAg;
       spf=pass (google.com: domain of himanshu.madhani@oracle.com designates
 156.151.31.85 as permitted sender) smtp.mailfrom=himanshu.madhani@oracle.com;
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



> On Oct 5, 2020, at 9:45 AM, trix@redhat.com wrote:
> 
> From: Tom Rix <trix@redhat.com>
> 
> clang static analysis reports this problem:
> 
> qla_nx2.c:694:3: warning: 6th function call argument is
>  an uninitialized value
>        ql_log(ql_log_fatal, vha, 0xb090,
>        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> 
> In qla8044_poll_reg(), when reading the reg fails, the
> error is reported by reusing the timeout error reporter.
> Because the value is unset, a garbage value will be
> reported.  So initialize the value.
> 
> Signed-off-by: Tom Rix <trix@redhat.com>
> ---
> drivers/scsi/qla2xxx/qla_nx2.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/scsi/qla2xxx/qla_nx2.c b/drivers/scsi/qla2xxx/qla_nx2.c
> index 3a415b12dcec..01ccd4526707 100644
> --- a/drivers/scsi/qla2xxx/qla_nx2.c
> +++ b/drivers/scsi/qla2xxx/qla_nx2.c
> @@ -659,7 +659,7 @@ static int
> qla8044_poll_reg(struct scsi_qla_host *vha, uint32_t addr,
> 	int duration, uint32_t test_mask, uint32_t test_result)
> {
> -	uint32_t value;
> +	uint32_t value = 0;
> 	int timeout_error;
> 	uint8_t retries;
> 	int ret_val = QLA_SUCCESS;
> -- 
> 2.18.1
> 

Reviewed-by: Himanshu Madhani <himanshu.madhani@oracle.com>

--
Himanshu Madhani	 Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/2E536F63-9F97-4B80-8538-D3176650CC70%40oracle.com.
