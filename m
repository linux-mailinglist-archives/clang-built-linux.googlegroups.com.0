Return-Path: <clang-built-linux+bncBDVIJONZ3YDRBQE26DXQKGQE3R2XCSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 20D951271D5
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Dec 2019 00:52:34 +0100 (CET)
Received: by mail-vk1-xa3b.google.com with SMTP id n9sf3247999vkc.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Dec 2019 15:52:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576799553; cv=pass;
        d=google.com; s=arc-20160816;
        b=b1fzoqttWMTrk9pmJrZspM2EBE/Lhx0COLFK+1OO+kd5RUa0uW2M2ykksZLpCEFEYc
         pB9h1VUHJkEUhBoL+UuodT00N/GcgRugn6/TAiUQU8/T/fVjvIpPzKo0YxE6Kt4tNEqV
         PfOXHCvARFHXbSIFWTw12ep8KgsZiWHLt1+zUBQ7HE2thOYsKv46SQSHvYzT0QZlpOup
         eMccwzI8qk44jsWmk0XeKT/QK35DqdZnGLXWbczbqq3vjHN7jZbLnYACUNUGhfDSUmmZ
         0lPg4Xc9GKE7EGxnM3r/oqedwC4eefkaNHxE582jDHSwvLW7pEaSPK3sOkLDbDlB1YZQ
         lLHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :in-reply-to:date:references:organization:from:subject:cc:to:sender
         :dkim-signature;
        bh=7vOBQai6M+77FX9cgZL190WUulqSW5eSD7UIs34LAhA=;
        b=p0Lu4CuTeF9K1eXJJs+f5murp+SP73W4tLLWVpVyXokjVOp6tjGYzdNFHYKV24hhn1
         E4Nqc20ct6Z8mXRszPKH0M+l+ATAIcQSNwpE6h10159dCSvbR/2jqvx9VZ+x1Ne826ZB
         sBBV6xEi2L9Ea9xUvFBMHsgUGEoNADVZIJHX1EOw8pS/Mm81kwoheZ4rwheAjEq/VfGa
         WTR+TUdqHGL+Ds2si1ZULL20JJRHi12C9kwe+DLvV1cEeOEcZavQIBZQrAL8FAT4vWtl
         T0hf+3UQy5yfx3BTnymujHqwS51NSwPTP/+Z6AoVDD02zjtaNEocPRNzj/LMSQmB354B
         vwBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=mP9dzk7Z;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:subject:from:organization:references:date:in-reply-to
         :message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7vOBQai6M+77FX9cgZL190WUulqSW5eSD7UIs34LAhA=;
        b=GZycAZy1DrIJUhfuka45inzG4hTM89qN0NEJ517y/ySU7AeWCRAV91RypH5zvEkCS2
         aBKgwdK7Nc+7+V0I8XEtoV60tWAB8jkDPssIYmChWkCydfKB2qLSLD2VHlmpmrQbpOM1
         Pw2NopLbXjiBjHXHQArPs4hvf1Lx/v93QI3WhVizWGqC9jMqGHIAYFT+42OICPg0n0zb
         Qny7Gm/keh1GtMe1Mg8enznv1+VFWdExAlr8Ah7xW4FWLsUiPUffmaba7jgjykB+y/nD
         EA4RDFk5D9iG0mpydqAv69zClhjuZNwYi5Ya2tEaNicFikXaU/BpGTGPX1t4c4COPg+9
         vhfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:subject:from:organization
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7vOBQai6M+77FX9cgZL190WUulqSW5eSD7UIs34LAhA=;
        b=Vxx5D3mu8Pjt9Gc//5bRv7vvBrBaAyLSUn9I4zPj2jZuNZNUc24BDeWeUwkf2/7ivN
         VlVHPZEyaE0t7wYu2Sdd4U+TKNLRUiwVLmE9P7wti/SGkfugUo141Y97XaNGV9gOCkq6
         BdKn/Xc94dFSyOYg6CHjMTyphTDHIGf1LMSU5EISupfLsjPTp1FLEoUlJ05OqNhnGQZN
         n120wHIZ1diZ50Sp9ayUVJwR5xePzPMA1rkLLoWhSPp80j1fHUJjXBrf1rerns29O+iH
         hId4IGQph+IPBdNqAxdc4V6KdcMEAn30V7ZgiXUXIsbO50yybyZEeQKD2zgewjX0r/R1
         A7vg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWUMpLdUspcQ5mshCfDRTOZZYTSHtLgNOk0Z27rbj2kOH3dG1aH
	EPzPlVBNwgid++GPm25edyA=
X-Google-Smtp-Source: APXvYqykxtgMiFbJusgOhfe3eWtbHH5ymU4mP8mIkYSut8hWUisrN80FFzQRMrwCTIpZaZ72VLOAhA==
X-Received: by 2002:a67:77d4:: with SMTP id s203mr6978906vsc.101.1576799552944;
        Thu, 19 Dec 2019 15:52:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:cb82:: with SMTP id h2ls687019vsl.3.gmail; Thu, 19 Dec
 2019 15:52:32 -0800 (PST)
X-Received: by 2002:a67:f9cb:: with SMTP id c11mr7084390vsq.180.1576799552674;
        Thu, 19 Dec 2019 15:52:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576799552; cv=none;
        d=google.com; s=arc-20160816;
        b=Dngf+Qe67Osjm4eK1SnlhrL31CiFn5V2EowxekoLcKOUByn7GHcrYruEfF4HCzEaAM
         vh7H0oCw+GsFiTyn5sMyU5gMQTCzN6iHsE0bZBVMLuBEzbiNnXKbcQ1qHwvlsDnS5WvJ
         4SWVqDKpxz5J+sxc2TD6Ughi5/jJBlRTyDepudTEc53DE7QmjYtkcpQcFyzH87XQUKqy
         a81ogwVu6Wagf4VGf1sldjpqzlRz8z7JfEyEbt/cWK4Cv9gKA+wGNKUZ2DiQ67tr+x1d
         3ej1P8YfKrmVQtCLAk0wznjotiCYp02/4ZVOQtM9lV9ixuaucoC/E8dEShiZwhNv+mIa
         9Ivg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :organization:from:subject:cc:to:dkim-signature;
        bh=zywcEs2hhoNSnHahJi++zcf+8e3ziBWkyoEcIZrfiuI=;
        b=E3p8+kEYj6Zc6XLOrxEwFw0otbi68hp82d06mBCuHO/LvsMseb+pvso+CDLlheBwth
         oDIVd6l8yHyARLw0WiEeFsCIVnQVSnMcintIBO1APaUaOUdHc20dhEqJTRm8ZqGqF013
         agaKR9oUgccLmW8oy7KP+wXdPWQdKCeGWzYBtfov59IaIXsr8Laa38mLqnZD90s7LJCp
         S9Uxi4TMvuTQuOiC5mLpwZm2H821jYfL3U8EgUH8EnvN1ydfPi5u6squsXdqnOEh+QiS
         PDuM9z8uMAKb90LvYo6kFnqrNDQ76uBg3ZPCc5LdYyqEJuxuWcQg8yvPAh1p3wFTEugO
         9gAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=mP9dzk7Z;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2130.oracle.com (userp2130.oracle.com. [156.151.31.86])
        by gmr-mx.google.com with ESMTPS id o19si413194vka.4.2019.12.19.15.52.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Dec 2019 15:52:32 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.86 as permitted sender) client-ip=156.151.31.86;
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
	by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xBJNnfKb109553;
	Thu, 19 Dec 2019 23:52:30 GMT
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
	by userp2130.oracle.com with ESMTP id 2x01jadv9x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 19 Dec 2019 23:52:30 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
	by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xBJNnapo099977;
	Thu, 19 Dec 2019 23:52:30 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
	by userp3020.oracle.com with ESMTP id 2x0bgmmj4y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 19 Dec 2019 23:52:29 +0000
Received: from abhmp0016.oracle.com (abhmp0016.oracle.com [141.146.116.22])
	by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id xBJNqSc3013940;
	Thu, 19 Dec 2019 23:52:28 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Thu, 19 Dec 2019 15:52:28 -0800
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Hannes Reinecke <hare@suse.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        "James E.J. Bottomley" <jejb@linux.ibm.com>,
        linux-scsi@vger.kernel.org, linux-kernel@vger.kernel.org,
        clang-built-linux@googlegroups.com
Subject: Re: [PATCH] scsi: aic7xxx: Adjust indentation in ahc_find_syncrate
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <20191218014220.52746-1-natechancellor@gmail.com>
Date: Thu, 19 Dec 2019 18:52:26 -0500
In-Reply-To: <20191218014220.52746-1-natechancellor@gmail.com> (Nathan
	Chancellor's message of "Tue, 17 Dec 2019 18:42:20 -0700")
Message-ID: <yq1mubnan5x.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9476 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=829
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1912190174
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9476 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=892 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-1912190174
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2019-08-05 header.b=mP9dzk7Z;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 156.151.31.86 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
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


Nathan,

> Clang warns:
>
> ../drivers/scsi/aic7xxx/aic7xxx_core.c:2317:5: warning: misleading
> indentation; statement is not part of the previous 'if'
> [-Wmisleading-indentation]
>                         if ((syncrate->sxfr_u2 & ST_SXFR) != 0)
>                         ^
> ../drivers/scsi/aic7xxx/aic7xxx_core.c:2310:4: note: previous statement

Applied to 5.6/scsi-queue, thanks!

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/yq1mubnan5x.fsf%40oracle.com.
