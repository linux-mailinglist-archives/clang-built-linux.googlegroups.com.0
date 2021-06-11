Return-Path: <clang-built-linux+bncBDO4P7WH2UJRBP7WRKDAMGQETLN3Y2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id B6BD73A393B
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 03:24:16 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id 67-20020a2514460000b029053a9edba2a6sf2109617ybu.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 18:24:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623374655; cv=pass;
        d=google.com; s=arc-20160816;
        b=vFkLOkv6oDT5wY8TvtDOgaPppRRw3XD4sUcwmby0EGwqe7K3dAONvGQtOk00X2Lo8F
         Z9106XDU3eIqocxcVWueasZL7DqcGCZcfI7UDUykZPvN+DPJ5r4K8q9B+od9Vmf7T4fy
         9OSuk/yXkV7c13h0HXH71hsciHEEssado8V/LAY61kRbDQtRRc4N0XUZvYB3C5KQRx6N
         2upDt0E2R6+dXLFQrFiNQOWG6Veerh2iKE98tobNyhZdwzi3p5sNf4S1F7h7sff7kGLw
         3ZliOO5M0gmpZv49EjCzV9Om4o2RrV5YWqRSex9/4efDvYhC4FQ1Zz4hCcyw+TxSFyfN
         1z0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :date:cc:to:from:subject:message-id:sender:dkim-signature;
        bh=MY1YZNl1zEE3Xtl5/Ci8qyphnmI5CekDVSUqTXfh3YM=;
        b=BGEOmiQYs4IOAS/UR4rEHgOC5Jq5t4UaZL8zAFSAWh2e4CjYgOuL4mxVOrIA6f1R3x
         Rn1rdvEZBZ5lxEn/Ihs26LbjQhKlYm4lvlfRzoclYW341962+QTLK2VXTyxXOH5kJkER
         CVSPS5VFL04l7d/OFrN4FtVtTP56Ipx5kF89qubXU118iNl1mI8Y2uXqR5vJ1efTttbk
         x+tEOgZiv3HBtocRKsGTCC8oa6kNKE4xeViQCTYhqYDfehW6RrSCevuV530/SW0+vW33
         x4No3yBQ3Vku43AFhkB4FkMS+mHDW9+mqVCuzLFrFvPiu2+sgCO5xOsRUYTq7WbCqNCp
         Wh+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=p7XYyhON;
       spf=pass (google.com: domain of zohar@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=zohar@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MY1YZNl1zEE3Xtl5/Ci8qyphnmI5CekDVSUqTXfh3YM=;
        b=rugfgkOKtB2SEwOApb1xQfhC+DxFH1XyiXeW9cUjDRnjjl+ZUnD1KO+Bc9gDCKdYvD
         8no6nt2jIoUQJpxhmPx06r/NFcjoojRgN+PYiylhs1+3tZimPQ9FXmsJKggqvDY53rCn
         fo9BLbOAZxWh+ZIvVJkT+ZDnHnspgCPH2Mdrosi8Q6YGenfhdg7Q00xiZ497XplfEvQr
         J0hjM5Iv+4a2y7LllDCUnskwam1jb5+aN1N2y0tNHjOBG4o3emyRYPqc0wFEVNvh6qbg
         EQTnbJDhjEcuKwdEzssFkCwQWF8rAX1eQW23yAX2rpLwpHHqHnPRn4npJPK8eISIk/1f
         hKzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MY1YZNl1zEE3Xtl5/Ci8qyphnmI5CekDVSUqTXfh3YM=;
        b=I6vC7JOlLDtjpvF7jva5AX16BqsY2eHO9R1qlsVqms1ad9NDNcUnxxlNaBDaX1baFG
         GcOlf7hCpuw8uTMvEgqH41rDRJ/MSEX6rKR64QOygdtL0uhbuN9b9vjSKTFGGI262Gla
         i+I3+WoGdZaJHpnRXdLJUf8PDU7nhPmF7dfslojImUUwgSIoG8xypk+065Tta+7WCWjy
         /32/jxCiqB+ziM1cyIezWdUUgrqttmpynMr1NgvVaFNxf5ObalHDkbDycY6xEgWsBnAH
         4F1CmMpSbKF9kvbbCJJ/1NDdBzmp2/4icuZh4yeFVnCyKHuMCHC4tVRXMO4nm6b5lvje
         qleA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Vh3Uavsd4Ycqycb6uCB68us6Yqcj4fq5/o0l77hZmIlddabOS
	hDarSHlMfXjdVoLWJrUtWCM=
X-Google-Smtp-Source: ABdhPJxcygzGO1iUUPRsahxUak2+KpIRIdQKMbkuOi1uI2EsripB79UWA1PoggT2azRyVM9+F/SfVg==
X-Received: by 2002:a5b:34a:: with SMTP id q10mr2287051ybp.224.1623374655436;
        Thu, 10 Jun 2021 18:24:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:7bc7:: with SMTP id w190ls4909792ybc.2.gmail; Thu, 10
 Jun 2021 18:24:15 -0700 (PDT)
X-Received: by 2002:a25:d34c:: with SMTP id e73mr2241934ybf.460.1623374654985;
        Thu, 10 Jun 2021 18:24:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623374654; cv=none;
        d=google.com; s=arc-20160816;
        b=NVHqxzzTk84QEegreTBmUH3xpbHyc/ZDzB8iLze8sLvM6Emuu11LDQzpPuPj2haeMt
         SS8yMuTyQzA4UYXPAZSiVT8l/BlrgpMLmb758muu5qo2hwlg1pwNMqb4iNefpMyTZqGr
         o0PvQ/6xfH1fFVAb1nJ4D29zUUPaGNSj4NQ9YnFsqH7R0QPXPvzqb+P2BntI8xEiXU/t
         n9rq6NQBRooISTifzAYGrgVQmnX6ZtOky+PA7ZYN3daNRBfDQYXZRWT6ffJSjitQ07Zc
         q8/w6zwCb/oQ9tgSIxuIe/xWzNkPEVGb4fpXNaN9hG9anKW92nmjdeW5zybrADLhdENI
         8yuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:dkim-signature;
        bh=3UZaid9LaN7IOF3CYC1eCX4lLUxOwA2hKs9yAiR/CrQ=;
        b=diVJ4dEt4d/6Uf9uc65Le6lkrppsgae+88u1ypyzewXf+WKkk/Ri2jUG+zIPDaN1v7
         yo7epE0VJLqJ0rsvXIV3tFjc5sI6e3XrIEvv8EbYg+hYKITnefeBIGswWOfP3rVCPRti
         e7oUC2QW9JAoR6wbpLgLpwz5pwNfSxL8t9ALYqIpniFVDe5/eLPhKZNBiRUpK5yVPYUD
         3zqf35aJlqygXV2qkx3hF4pg/a+jHHzC2+OT4JsiZbvFyQcsFW1Lj4gcDSch6Eiu5xIA
         bN5qzybmVlvW6hVqUH54728kWlIKdv1LyDCGfFrXWEcbW9i2AmdfSugmtqPPwnHBtzir
         0bbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=p7XYyhON;
       spf=pass (google.com: domain of zohar@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=zohar@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by gmr-mx.google.com with ESMTPS id r9si580911ybb.1.2021.06.10.18.24.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Jun 2021 18:24:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of zohar@linux.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0127361.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 15B137WB122516;
	Thu, 10 Jun 2021 21:24:14 -0400
Received: from ppma04ams.nl.ibm.com (63.31.33a9.ip4.static.sl-reverse.com [169.51.49.99])
	by mx0a-001b2d01.pphosted.com with ESMTP id 393wq2gjms-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 10 Jun 2021 21:24:14 -0400
Received: from pps.filterd (ppma04ams.nl.ibm.com [127.0.0.1])
	by ppma04ams.nl.ibm.com (8.16.1.2/8.16.1.2) with SMTP id 15B1CK1m010743;
	Fri, 11 Jun 2021 01:24:12 GMT
Received: from b06cxnps4075.portsmouth.uk.ibm.com (d06relay12.portsmouth.uk.ibm.com [9.149.109.197])
	by ppma04ams.nl.ibm.com with ESMTP id 3900w8b4t1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 11 Jun 2021 01:24:12 +0000
Received: from d06av21.portsmouth.uk.ibm.com (d06av21.portsmouth.uk.ibm.com [9.149.105.232])
	by b06cxnps4075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 15B1OARc11469252
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 11 Jun 2021 01:24:10 GMT
Received: from d06av21.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 6260952054;
	Fri, 11 Jun 2021 01:24:10 +0000 (GMT)
Received: from li-f45666cc-3089-11b2-a85c-c57d1a57929f.ibm.com (unknown [9.160.28.13])
	by d06av21.portsmouth.uk.ibm.com (Postfix) with ESMTP id 7DDC65204E;
	Fri, 11 Jun 2021 01:24:08 +0000 (GMT)
Message-ID: <f6251386feb733d4278e97c3501c09f8dc1a4105.camel@linux.ibm.com>
Subject: Re: [PATCH 2/2] ima: Fix warning: no previous prototype for
 function 'ima_post_key_create_or_update'
From: Mimi Zohar <zohar@linux.ibm.com>
To: Lakshmi Ramasubramanian <nramas@linux.microsoft.com>, robh@kernel.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
        linux-integrity@vger.kernel.org, linux-kernel@vger.kernel.org,
        tusharsu@linux.microsoft.com
Date: Thu, 10 Jun 2021 21:24:07 -0400
In-Reply-To: <20210610171553.3806-2-nramas@linux.microsoft.com>
References: <20210610171553.3806-1-nramas@linux.microsoft.com>
	 <20210610171553.3806-2-nramas@linux.microsoft.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.5 (3.28.5-14.el8)
Mime-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: yea9vnz1XdiVSQ4XiFFNhIcN1tMKdy32
X-Proofpoint-GUID: yea9vnz1XdiVSQ4XiFFNhIcN1tMKdy32
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-06-10_13:2021-06-10,2021-06-10 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 phishscore=0
 bulkscore=0 suspectscore=0 mlxscore=0 spamscore=0 adultscore=0
 clxscore=1011 priorityscore=1501 impostorscore=0 lowpriorityscore=0
 mlxlogscore=889 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2106110005
X-Original-Sender: zohar@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=p7XYyhON;       spf=pass (google.com:
 domain of zohar@linux.ibm.com designates 148.163.158.5 as permitted sender)
 smtp.mailfrom=zohar@linux.ibm.com;       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
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

Hi Lakshmi,

On Thu, 2021-06-10 at 10:15 -0700, Lakshmi Ramasubramanian wrote:
> The function prototype for ima_post_key_create_or_update() is present
> in 'linux/ima.h'.  But this header file is not included in
> ima_asymmetric_keys.c where the function is implemented.  This results
> in the following compiler warning when "-Wmissing-prototypes" flag
> is turned on:
> 
>   security/integrity/ima/ima_asymmetric_keys.c:29:6: warning: no previous
>   prototype for 'ima_post_key_create_or_update' [-Wmissing-prototypes]
> 
> Include the header file 'linux/ima.h' in ima_asymmetric_keys.c to
> fix the compiler warning.
> 
> Fixes: 88e70da170e8 (IMA: Define an IMA hook to measure keys)
> Cc: stable@vger.kernel.org
> Signed-off-by: Lakshmi Ramasubramanian <nramas@linux.microsoft.com>

Roberto posted an equivalent patch "[PATCH 4/5] ima: Include header
defining ima_post_key_create_or_update()" earlier this week.

Compiler warnings don't meet the requirements for stable -
Documentation/process/stable-kernel-rules.rst.

thanks,

Mimi

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/f6251386feb733d4278e97c3501c09f8dc1a4105.camel%40linux.ibm.com.
