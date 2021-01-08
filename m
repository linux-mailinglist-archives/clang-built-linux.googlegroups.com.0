Return-Path: <clang-built-linux+bncBDVIJONZ3YDRB3F2377QKGQEB5O35YA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 021752EEC57
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 Jan 2021 05:19:58 +0100 (CET)
Received: by mail-vk1-xa3c.google.com with SMTP id f139sf4821233vke.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Jan 2021 20:19:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610079596; cv=pass;
        d=google.com; s=arc-20160816;
        b=AY2aP6JPCs/2M7TEx6AyYIIi3Xb6Ruv8BH9E1lJXgmVkEDIhqQL/v4wmi+Ww2ScFJx
         LygiNHGmYrFx7RBwZCNFYk2Vh55zkMKcrvxonWk0ILI8PdKDpKRQlz38uCtrE5PuNT6F
         NrZC4MYIP65IbJNpu7UACxyZdo1+21WKa20dy5Td0N7YCufssrYAPPczLfPNKAEdqoaI
         0WNbSUiFt7jIqiMeV+qWTu5wmxlWsunjM44E3fI8KpmjWRV2NbemAofwOvjKuo79MN4F
         +kz1UAHHyu0uDEJJc7EnWs61yJUfv6DjO+imZijeis8Xa1wSYFB01z623xUWv3CZ4EOr
         V2bA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=bfsOm3hVe28tm3pOLztNFsusVY0dCJCkgHm+D5XAvC0=;
        b=oSGZXCV39X02pXH/px20It3H/bVWSsuGx9krUc4Ez64XbCad3BavZ7rvktvSQizIzp
         krp4LGTo2cbQbYjUJmmhfaJrN2FIWv9na4FFzv/Q62UGHZ3P3e2lqZJAVSSg9YV+HOrC
         XIbW1xYt52NTsF/diBDb9hoJQitkSEzxRf+B3dEjUkscNKsVmCcWeyY87nwEJ7+pxafi
         hkkbPITP9/8HmffzOOWicz2Y7gkkhUTsCE/SdBzgNLVet0QnfmvtfAAme3Vni3TMQcGg
         N9metzjy2e9AM6ltusC1rNZJ9iHteJYVA0/Eu7dRx3gIssm5+1e06Pl2DplM9ix4T5Dg
         wNmQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=U9tseGlU;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bfsOm3hVe28tm3pOLztNFsusVY0dCJCkgHm+D5XAvC0=;
        b=RnpQ4dyIkTLBIpgfZ/Yp5DR7iB6DPnM6lZnW/1NuV6QDV7NhjhngLVjoadlrgiEtjp
         uPWCo0TNESXYhI09dcjfDOze5wG5GKAkiY6velbD8JppB/3OWIMVD450v0B2M8ZXKUJw
         EAlvEje2n8WbYaI4+fGisb3hxMi055Ya0NjkUHMz7hZXWUC2aVBQAhJrZbLDiMRcfZOk
         ottSa3XobCYCkt44dpvf/F4zoy2PdScqPjNrJ8m5O8qstup9I9hz+6NFswKYU/KSS0FF
         /QNr9ytYdHqHbLjdvO+bnvsBcaXlLO+AweJC5u4UhJ0ijqa1KIrHlKdtsmU097TxjiU5
         fpYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bfsOm3hVe28tm3pOLztNFsusVY0dCJCkgHm+D5XAvC0=;
        b=bgbhqm2v3c5PYhy7Gs+EeQQSDg1P2jMh0U2YhbxD8HbmcT+pGEYr0NE83SUqa0EBYy
         eFAWMErmYEoHkv9KtM6TRr39BxQq5370EVtyVdpbTQY3P3IYoFTLejhmk2CFjuUDN+W2
         HHfXyhOBa4yzn74+vjo49iDIYaSpTI5kr7kA1+k3KjVRYW66pIHaldAbVwFAXVJXy0Hh
         ebitqx0M0Xq4eYYwyqIyHBxUncpHsQ+FLQDGJsNrPazmFXikE5H9/zIBhgELMyBOSG/A
         7iNO3ZgTHf5n9fqNz5/oGalKKQlrC7s8K93rh9QlCKvPW0HvCyNT+RodJzbdh0xKJIGn
         v1kg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Su4vnTs8WMhA39SNVZoG8l90o9oSNExRVgjGzOvrgOkeg7Fo8
	hHH1weK1Fo7fZ5iE0iBxf4Q=
X-Google-Smtp-Source: ABdhPJwDEiTriiKwHt1uCyLK/AjP8xBnvrlFqkFBcPoRaDrJm47Y0NOGVcMtXXqJ/VxCeuV1KYoBJQ==
X-Received: by 2002:a67:f113:: with SMTP id n19mr1299831vsk.6.1610079596789;
        Thu, 07 Jan 2021 20:19:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:3153:: with SMTP id n19ls828897uab.11.gmail; Thu, 07 Jan
 2021 20:19:56 -0800 (PST)
X-Received: by 2002:ab0:4713:: with SMTP id h19mr1563257uac.32.1610079596305;
        Thu, 07 Jan 2021 20:19:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610079596; cv=none;
        d=google.com; s=arc-20160816;
        b=d20mYDAlLBDNbnjeJtu4J8EKzlnil3LsDvvOq0GiwFdJqgTeNRkxF4CZGQibbz/T/h
         FmTTvcpEmJt6er0EF7eVVUKLHcXYLLyhAfwlISM/wfP87SR9pjQTNiEMBJIixQHByoNM
         rgOyi03yrF00dIH+fT3R6yO1xKeATcuoQwCGP+rVoHXIth98qjVVdEIHYKBjNcqshpL+
         gtDEFM0haBWxhIBQcepmqJpQ4sZHN63Ruh1H7LooRwdYojtKSA0Om775FvPK6xV0ba+J
         AUVIzRkGLM65V8td6oikZdvYc/cpSiTU34cFUozDXMG6zWaL9+uPHYWNvoy0DRJNQ8bl
         H4+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=fJtX/x/q0BSrKpHUkhYtCo9igyPNRl3G/Q1ztLnzj0Q=;
        b=QuRMRZdSq+AELqo9zytZ47n40jcSUCHqfYsB+6tGmAdduI/miAtP0oHnpvs2vNC9lD
         unZmH/9j7vXLu0Bt/yBEJV1EV7DqcDca7GaOzw416Dq+Luc/M72ZFqPU/foxAP1Gbp7t
         ic50dclJK6KUKuyK141jpa2RICg9lOLSH2U4nXFjcI8tH/FaXHzxxADt2X0mee3U6vtY
         XZMxIOJ2sY2ofr22hxj/T3lWtZho7qMTVNThKrERZeplDel1s54b5dE5HEcV0uWiSAZS
         jw2iMbOcjNZiPVkfYynh2H/4PbSZK5ZMl02nR7uIu3QjfAKBNMyKiVE8f4ljc2Cknadi
         /xzg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=U9tseGlU;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2120.oracle.com (aserp2120.oracle.com. [141.146.126.78])
        by gmr-mx.google.com with ESMTPS id m19si87925vkm.5.2021.01.07.20.19.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Jan 2021 20:19:56 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.78 as permitted sender) client-ip=141.146.126.78;
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
	by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 10849f67096788;
	Fri, 8 Jan 2021 04:19:54 GMT
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
	by aserp2120.oracle.com with ESMTP id 35wepmfd97-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 08 Jan 2021 04:19:54 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
	by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 1084AuAi079282;
	Fri, 8 Jan 2021 04:19:54 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
	by aserp3020.oracle.com with ESMTP id 35v1fc2x8h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 08 Jan 2021 04:19:54 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
	by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 1084Jqmp018065;
	Fri, 8 Jan 2021 04:19:52 GMT
Received: from ca-mkp.ca.oracle.com (/10.156.108.201)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Fri, 08 Jan 2021 04:19:52 +0000
From: "Martin K. Petersen" <martin.petersen@oracle.com>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>, linux-block@vger.kernel.org,
        Jens Axboe <axboe@kernel.dk>
Cc: "Martin K . Petersen" <martin.petersen@oracle.com>,
        Christoph Hellwig <hch@lst.de>, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org,
        Nathan Chancellor <natechancellor@gmail.com>,
        clang-built-linux@googlegroups.com, kernel-janitors@vger.kernel.org
Subject: Re: [PATCH v2] scsi: sd: remove obsolete variable in sd_remove()
Date: Thu,  7 Jan 2021 23:19:37 -0500
Message-Id: <161007949339.9892.18140869017043061616.b4-ty@oracle.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201214095424.12479-1-lukas.bulwahn@gmail.com>
References: <20201214095424.12479-1-lukas.bulwahn@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9857 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=850 phishscore=0
 suspectscore=0 spamscore=0 bulkscore=0 adultscore=0 mlxscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2101080021
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9857 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 bulkscore=0 spamscore=0
 impostorscore=0 phishscore=0 lowpriorityscore=0 suspectscore=0
 priorityscore=1501 mlxscore=0 malwarescore=0 clxscore=1011 mlxlogscore=859
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2101080021
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=U9tseGlU;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 141.146.126.78 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
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

On Mon, 14 Dec 2020 10:54:24 +0100, Lukas Bulwahn wrote:

> Commit 140ea3bbf39a ("sd: use __register_blkdev to avoid a modprobe for an
> unregistered dev_t") removed blk_register_region(devt, ...) in sd_remove()
> and since then, devt is unused in sd_remove().
> 
> Hence, make W=1 warns:
> 
>   drivers/scsi/sd.c:3516:8:
>       warning: variable 'devt' set but not used [-Wunused-but-set-variable]
> 
> [...]

Applied to 5.11/scsi-fixes, thanks!

[1/1] scsi: sd: remove obsolete variable in sd_remove()
      https://git.kernel.org/mkp/scsi/c/be2553358cd4

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/161007949339.9892.18140869017043061616.b4-ty%40oracle.com.
