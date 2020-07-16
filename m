Return-Path: <clang-built-linux+bncBAABB37TYD4AKGQE2TOZCBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id BD608222158
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jul 2020 13:28:48 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id h4sf3530894qkl.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jul 2020 04:28:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594898927; cv=pass;
        d=google.com; s=arc-20160816;
        b=qNk03oycARymsgRIUVoWjENYb7U2o0DiB04FAJmBCIJ4QNvF7gli5eFSQQiTOkHu8Z
         PWboanpZK8xiB3M+jFDHQ8eGiapu72xQZ5GI4EeFo1UHDSyYeBBSP7ofN6uZTorxhUBI
         5awEzXTJ+SRKjOCSkvXkTnNzBJpmzeU2I8A9fxB/BeL0a8at8rzGwn/wsBxjMjFbaDfY
         Jmlc73Co98eyG1F4SZ1hQbELA4BcRcIK3NCVX/9XzqU5JyKbxpkS9bSGBb6TbkZTb0Xi
         VftbVwL2nLk0BHrUKJzRAiJOv7afFNHStN/aYRDuX1UmAgWxqw3fEWft975/8pmARQmQ
         CCgQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=EWUzc1uJHs2IaAMaAHlQblP5vprdT3ntI9W8mAEgGsY=;
        b=aISB8r9TRJYrv+pB+0tXg2BDW2o+Mp7C+Wpf5lZq2jQMcpX2mxNj0Dw0YuscvBo5nN
         BuT+fzcihPE6sYDnhSIDMQXSZ5A+p9W4F8Aw9NXx/2K0mRI9xLizYYxd0h/Ml3VB7K1j
         OEjrCZIg+fJsp2eFC24CEqZ4d4L9p+WlesvgGsXhFEcoAIzNhjQxVC+IvlH99Cufto3x
         dHnvJQX82VH7W/KrSw5o2FqITANiaAJ8na76hRFgbszQXHWZtIWVKzyiOtBE7ClT4PYX
         ElyKPIOJJBi6nhAgs4jAfs/j0XdIBMREstEGNzw7OTFc4nLSQT1lE5njeRGGm6hi7wzC
         cmgQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of hca@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=hca@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EWUzc1uJHs2IaAMaAHlQblP5vprdT3ntI9W8mAEgGsY=;
        b=kCTbquRZvbY5HWdSg5iyxP6nq/rW3eC275ZreCtAbRB+O5LXQNBCz9abLjDk0K84t3
         W9RlYZAzH3Sbq2FyK7mqQvDiH8x8FjDKlmMkoYNnlPvZ8yRtW1M3Rec8rAW05WmEfix+
         hKFRM+U2VI8SWcdW5KBgvK+h9wKC6DqsOtRLrEb1DllAofCAukv+XYsd+wWHnsuKEsQH
         AZRu2rDd445borwgXuZ9WO2qmdBBWP7t7J8nGJBPVPja2eU3ZaubUoeGw/MMKj7BDWA2
         sP9Pa0VddpszU2kkBvSMBHFNS3XgpW6mYjLnGVfZEn41URdmRqI0YIWl0LL8FJFZLGNm
         oMpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=EWUzc1uJHs2IaAMaAHlQblP5vprdT3ntI9W8mAEgGsY=;
        b=KeaWL9xeFnx1Tenmb1s/0MVTILcVyxB6IrQEpRTFiu2Q3qzrDJCb311Z2Z5E6kvFHc
         /OJfGUiDhu4ZihysZiYa0t8soAS41pJ1mgWB2n07ckk0LmiR3Japhdop6Eu0kjCOddeR
         pKeCfwXicHy946O8cQUGgbIpXRWKM7iE75IAnqMM8c0VePExWqfTttzhJr9fgg1veext
         BaXZPGl6VGPdDv1RGCTRMpcKKrfwlAORC59HY1DLWjGLmSeJWBtRy/GeUQveflYZBSlk
         Xl65yxTdiMQ/SkKVmeeXYeH/tMrfUjkgvWWCbEEBJfsUmyJjMjfUBU7+xw04RMVV1tKg
         rFOw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Nlg4JjDDtwlnQ3L0fpmrfW3JjhP68CO1hAZBcdkB8BY21+f04
	FPDUVs2+REon0VjVB5xK7po=
X-Google-Smtp-Source: ABdhPJyIKFPzo9anbSXaeq5mwpcid3dkQk0F1SJxsIhLuvQenZUTp3jzntpoHrdscpkY59/ji9E/yg==
X-Received: by 2002:a37:a78c:: with SMTP id q134mr3622287qke.368.1594898927704;
        Thu, 16 Jul 2020 04:28:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:2dfc:: with SMTP id q57ls2115961qta.2.gmail; Thu, 16 Jul
 2020 04:28:47 -0700 (PDT)
X-Received: by 2002:aed:29e4:: with SMTP id o91mr4710447qtd.181.1594898927437;
        Thu, 16 Jul 2020 04:28:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594898927; cv=none;
        d=google.com; s=arc-20160816;
        b=qwU8us6usuH0Yazi0wD0wFwZR5R+IMg/3bxmfK9mF8NZIQH/mDPc+ytTuV/JskItRx
         RP1hH0QryMy+y0EVIyRdhWK84bvhjjMnWEICGZORJHKDUyjHve3px+6N/8L10eR7kr5s
         AN4EX0cCV1lga5yCYZU6+bmPEEnQ3FVFFm8nHeyva+tWS4wrDSF4fDDau9sbsgVG6lHM
         03FhdVivCRRKHaCbDULmRU/CtDE3NO5lD2hCgIDwfDpctF+IcvrhKgBJl9rTve9IZLbV
         ZW6k24SPyBWebVeLKdlz1PxzQWHWMqp14m74VFAI5BWRjFdGW50NBCkALMWakuSXguIX
         mBWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=xv++3jWoQGeaPaMXus8pTaQ0qKJRf+pPVcSiZ7yzPZU=;
        b=ONsOYNRX+3ErU0QW/iZ0WNrmqB51l9Z4hxhgMMrF03yd3E4mS2YyElLau8VFgoEbvx
         MuStW3kQui/MJ+BA8PpImEwxuCL6dN0tg94QRan6nCSZy73Woep2klVU+pPE8nmB7ZV2
         +1ft73sOd5QLcPvN/80tpEEx7fQnCbf9dXvy47C+jDeWZ0A4W8pduAMjfjMscFW6+dkI
         DPLJLvwsNfDjqfwg3YcCcmGnDCzrFwUh0jslJVNi/aAp1/uDNCCiBC+gmJTxH7QrnKna
         lMmus1yQtPzNsqNSMpeDQiesOj+ycU/z7hSRNVHLRdrt7KwJXPq8n1UFZ7CJBP27QBdN
         RgaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hca@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=hca@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by gmr-mx.google.com with ESMTPS id f2si276009qkk.3.2020.07.16.04.28.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jul 2020 04:28:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of hca@linux.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0098419.ppops.net [127.0.0.1])
	by mx0b-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 06GB0dF3117895;
	Thu, 16 Jul 2020 07:28:47 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0b-001b2d01.pphosted.com with ESMTP id 329r1jw0k3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 16 Jul 2020 07:28:47 -0400
Received: from m0098419.ppops.net (m0098419.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 06GB1awn122780;
	Thu, 16 Jul 2020 07:28:46 -0400
Received: from ppma05fra.de.ibm.com (6c.4a.5195.ip4.static.sl-reverse.com [149.81.74.108])
	by mx0b-001b2d01.pphosted.com with ESMTP id 329r1jw0je-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 16 Jul 2020 07:28:46 -0400
Received: from pps.filterd (ppma05fra.de.ibm.com [127.0.0.1])
	by ppma05fra.de.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 06GBPgp3003813;
	Thu, 16 Jul 2020 11:28:45 GMT
Received: from b06cxnps3075.portsmouth.uk.ibm.com (d06relay10.portsmouth.uk.ibm.com [9.149.109.195])
	by ppma05fra.de.ibm.com with ESMTP id 327q2y2f01-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 16 Jul 2020 11:28:44 +0000
Received: from d06av22.portsmouth.uk.ibm.com (d06av22.portsmouth.uk.ibm.com [9.149.105.58])
	by b06cxnps3075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 06GBSgSX30671044
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 16 Jul 2020 11:28:42 GMT
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 76AC84C050;
	Thu, 16 Jul 2020 11:28:42 +0000 (GMT)
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 2B8804C046;
	Thu, 16 Jul 2020 11:28:42 +0000 (GMT)
Received: from osiris (unknown [9.171.13.43])
	by d06av22.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
	Thu, 16 Jul 2020 11:28:42 +0000 (GMT)
Date: Thu, 16 Jul 2020 13:28:40 +0200
From: Heiko Carstens <hca@linux.ibm.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Vasily Gorbik <gor@linux.ibm.com>, linux-s390 <linux-s390@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        LKML <linux-kernel@vger.kernel.org>
Subject: Re: linux plumbers + clang + s390 virtualized testing
Message-ID: <20200716112840.GC8484@osiris>
References: <CAKwvOdn-2E=v_7Uie71pz2jjYCKnk98K1Ly8EkpxzvC6M5pXFA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdn-2E=v_7Uie71pz2jjYCKnk98K1Ly8EkpxzvC6M5pXFA@mail.gmail.com>
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235,18.0.687
 definitions=2020-07-16_05:2020-07-16,2020-07-16 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011 malwarescore=0
 priorityscore=1501 spamscore=0 mlxlogscore=999 lowpriorityscore=0
 impostorscore=0 adultscore=0 mlxscore=0 bulkscore=0 phishscore=0
 suspectscore=1 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2007160084
X-Original-Sender: hca@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of hca@linux.ibm.com designates 148.163.158.5 as
 permitted sender) smtp.mailfrom=hca@linux.ibm.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=ibm.com
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

Hi Nick,

> We were very excited to see your patches going by for enabling Clang
> support for s390.  Since then, we've added s390 builds to our
> continuous integration setup.
> 
> We've been running into a few issues with doing virtualized boot tests
> of our kernels on s390.
> 
> I was curious if you'll both be attending Linux plumbers conf?  If we
> carve out time for an s390+clang talk, would this be of interest to
> you to attend?

I will not attend, however cannot speak for Vasily. He will have to
answer as soon as he returns - besides that enabling Clang support for
s390 was done by Vasily anyway :)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200716112840.GC8484%40osiris.
