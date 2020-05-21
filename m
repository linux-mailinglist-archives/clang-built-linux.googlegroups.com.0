Return-Path: <clang-built-linux+bncBDVIJONZ3YDRBHNZTP3AKGQETFDV6GI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id EAACB1DD7A7
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 21:55:10 +0200 (CEST)
Received: by mail-oo1-xc3b.google.com with SMTP id s23sf4005406ook.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 12:55:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590090909; cv=pass;
        d=google.com; s=arc-20160816;
        b=k2yCuBJAe27JDZMgbvRiQzm2R6HgM6pqOP6aiSoLq8dlKtlUtjLULvaxqd7OZ0k8/q
         xmP3A9ZQeUWsmtHAP5MLLap5r82h2qSxXejAjjsiBY3sE+UmqmTV7NG5wfEOscoICqDL
         wfXc36kNtELX4XufF4YN/ZLrH8gp7vjTWikmMWYdKxqzvEvi1Fk89INIYCIOx4fT6rLU
         WLSEjCQfKSR4GXPfbwTN/USn3y07uHIf3iseYAaTAdJJm0+VPziJq6Yoz86ArAhkEYqN
         dfo85nRH1+WgoMtuk/kHPI5iihT5RE4rdg7guo8DIrmogNa6A8AimVeaLX3wH7rccftR
         wupg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:in-reply-to:date
         :references:message-id:organization:from:subject:cc:to:sender
         :dkim-signature;
        bh=Ccgtz3Ig2lxRY7jGqtGLuReHQhkBqOFHxASFxSc3JHU=;
        b=GyTsXpFTSYkgGrKiUred8oUBFyR7CIcu8gG5ctCMinCNwZBiB3PqC1mvDiOoHyLdGQ
         n5oWhLfJl6s34ItmGRWytNXR90X8RCG2yY0n4sfR0GVw1kVF58DeyE4GBGUqrMge+WY5
         q9VMhog2NGF7uj1J9wcz4qaJ7CUyXyjyogzJYjgO3KUCkItdHSfEXVVGDb+Yy7wIx3Mg
         gFY1mJ7grS9Ngb03Nhrd98xrRUZui+My88R9o75h+8HUgsZlLq79+dZjFkgVpfxFxzLS
         92QIpSkt3oj0HYbPhmCVf9qe90ueXczQWZMqHcKHx6Rz91JiOwL98mXYhca3kwtMf1Jp
         lYJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=p+XBpIjk;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:subject:from:organization:message-id:references:date
         :in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ccgtz3Ig2lxRY7jGqtGLuReHQhkBqOFHxASFxSc3JHU=;
        b=I+1eXYVkZUHgT/pHvdO6oUFoLkJLzBnygTxahg5iijbCm6CnnU0uM6dT679vDi3qBx
         AbIg9s9nE/Ov2VIxn7yUqGKtsKtox7ZPmPqkqCCMGOGe42PWfaRYMvrrw3to70iaTnoo
         pVpWKbqM+zz7eGgp40IpACmUK8Z5lJtWaVnTJ8N9kn8uP5TrRT0sIAX23cHcpChvKaGz
         jc16U6Y92zBJIDSyS4L2xWQEItIhOKFoVsMwEqWh9bpNmyqr2VnteTkTlO6aa1E7TUYE
         NV92Y4wm69zIVAMv6P6r0WnCw9lqLpXUx4VVvUz24niWOVc2IfeiuoezErBk+Xo0OTab
         srXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:subject:from:organization
         :message-id:references:date:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Ccgtz3Ig2lxRY7jGqtGLuReHQhkBqOFHxASFxSc3JHU=;
        b=fAiVVKhvMQfXpSWFOATJD6qIBYZptRxntB7iTNzswuCd9deJm0qFiESJJv5CJ5qPLj
         2gOuVP7gNNF/qi2Btr4iyDe1arHbOe+GyZL9I86tqW/D2+Cf1TBtb8oClWFeVfRTZjq+
         cb2rg8nV8ZkaPeMRB377RfNedvz0nwPuj5ZMUZHJQ1XTgtitYTII+EbG+x3dDkpqhEq9
         hZmSrnYlwysaOEk2ii45ON1nVJE9BX0KpnQSzP2Nv5gwA7lDp3q1mOSmSrTtciRHEN+I
         UTlfombiv814ZNkyUejLg/RIxbx21HK9b7bVJn0DUGMIJByGkxGYqlexiiOLjOaFZuov
         e2pQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533DRuZeyiWGqwdvbAuI8sdH5bZwsilSnUIfGoYSWb02z54IBAwa
	1qw+4YVQ21DUMG3QG6EPU/s=
X-Google-Smtp-Source: ABdhPJyRZ9zoIwY1nLFEjJmhRMbBaM7OWSBNYo+23kesk7dYXA/jfAXDzsve2QTqbgEZXnHPMC4FVg==
X-Received: by 2002:aca:c416:: with SMTP id u22mr151122oif.162.1590090909734;
        Thu, 21 May 2020 12:55:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:3757:: with SMTP id r84ls173878oor.11.gmail; Thu, 21 May
 2020 12:55:09 -0700 (PDT)
X-Received: by 2002:a4a:2511:: with SMTP id g17mr260623ooa.24.1590090909387;
        Thu, 21 May 2020 12:55:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590090909; cv=none;
        d=google.com; s=arc-20160816;
        b=v0hiTaUbhl/AYy38lbpfVxLIyiWSr9x1XDUP9AItDIY9W9Urok9n8JzUIJ9SKDUoSd
         +LiECbfOO2nVi+6M9yEqRba9z80VvqK11Q1u8Hu+Zg6iyqMD1UocLEvUrBCdq2VFpFqx
         NTMQ5tb8PpFTHZ0qBd5ALFPZhm3i3s6osKKSgHQWxNcIB+TFLnB08b4kBqwbxt4wFWZG
         Z30TO5PuEb0tmb2FTvajqyX1cLoi3KJVmxIA9jzgAm55tZ65kxpxl3yNNUr3HA6s17XG
         heK19QxaEtClQknM5STPuMCtxTvAsB05hPbJhinPlRHTsH+U7ONw33oEhL8uQS4DH1zy
         wQ1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:date:references:message-id:organization
         :from:subject:cc:to:dkim-signature;
        bh=KE3j6EjAg5sjWxC1a9dT6uBM0y3jh8dEUKouxWwWgHo=;
        b=giJk/t16qcrsv3UipfPL2QyHb0mFi3e3mfZEY2Prf/LYbsBl1Ono8Jl/h+XIsq1qPp
         ZJuW00SnbtfGjYCRnuRO3YC5RhBhVaK4wR1KPmel0ax81Zh7rxcxDDErIzzqarhYNhWV
         9oGl0ZoMVvXPsQTWHDm8EYghnY/rq0Ka6BmRuYcNBX6S20CKkCVJqnTT0eO62lAtvNdg
         t+Ie2gx9EBw+vIpfjJ6S52S9KemcQfQUr6qlIcWNch7jnTyOjG47uIy9raV4efCRIKNr
         3VpLi9F9JnRhWdbIlv4Qf5tWcMlpGkYItc+BNu2YB/rV7B+/C4J2diBR9Bb5WG8QI8vR
         l+Ww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=p+XBpIjk;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2120.oracle.com (aserp2120.oracle.com. [141.146.126.78])
        by gmr-mx.google.com with ESMTPS id k65si616816oib.2.2020.05.21.12.55.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 May 2020 12:55:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.78 as permitted sender) client-ip=141.146.126.78;
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
	by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04LJqSCo033318;
	Thu, 21 May 2020 19:55:08 GMT
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
	by aserp2120.oracle.com with ESMTP id 31284maf5s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 21 May 2020 19:55:08 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
	by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04LJqXXK038469;
	Thu, 21 May 2020 19:55:07 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
	by userp3030.oracle.com with ESMTP id 314gm9uf2j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 21 May 2020 19:55:07 +0000
Received: from abhmp0008.oracle.com (abhmp0008.oracle.com [141.146.116.14])
	by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 04LJt6Ha022747;
	Thu, 21 May 2020 19:55:06 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Thu, 21 May 2020 12:55:06 -0700
To: Christoph Hellwig <hch@lst.de>
Cc: kbuild test robot <lkp@intel.com>, Israel Rukshin
 <israelr@mellanox.com>,
        kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
        Max Gurtovoy <maxg@mellanox.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>
Subject: Re: [linux-nvme:nvme-5.8 26/33] io-cmd-bdev.c:undefined reference
 to `t10_pi_type1_crc'
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle
Message-ID: <yq18shlqd0y.fsf@ca-mkp.ca.oracle.com>
References: <202005220306.P96iFPve%lkp@intel.com>
	<20200521194702.GA23114@lst.de>
Date: Thu, 21 May 2020 15:55:03 -0400
In-Reply-To: <20200521194702.GA23114@lst.de> (Christoph Hellwig's message of
	"Thu, 21 May 2020 21:47:02 +0200")
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9628 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 mlxlogscore=903
 adultscore=0 phishscore=0 mlxscore=0 spamscore=0 suspectscore=1
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2005210145
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9628 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1 mlxscore=0
 cotscore=-2147483648 impostorscore=0 malwarescore=0 mlxlogscore=950
 lowpriorityscore=0 phishscore=0 spamscore=0 bulkscore=0 adultscore=0
 priorityscore=1501 clxscore=1011 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2005210145
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=p+XBpIjk;
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


Christoph,

> Ok, looks like the previous fix wasn't enough.  It seems like we
> need to fold this in, similar to sd and the nvme host driver:

Looks good.

Reviewed-by: Martin K. Petersen <martin.petersen@oracle.com>

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/yq18shlqd0y.fsf%40ca-mkp.ca.oracle.com.
