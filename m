Return-Path: <clang-built-linux+bncBCYL7PHBVABBBRV4R6EQMGQE6QXVE3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id B43883F4FBD
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 19:43:35 +0200 (CEST)
Received: by mail-qt1-x83f.google.com with SMTP id 7-20020ac856070000b0290292921115ecsf8975468qtr.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 10:43:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629740614; cv=pass;
        d=google.com; s=arc-20160816;
        b=dSDHJTMyK0Y3BuPOsqTMqDnPWlxcSLn6pPTuFT/+nCB6Y9/GToVUshwsRF16+pjGSG
         1x4mYjfKlQYg1eADSIwT25GADb7Lybg2tndNWUe5Em9wGkdHVGLUjFRuKWCOljYnVb+C
         MT3wAyltjZxl8AILx71E4Nm7zMQssUTuffcqkSQFcQa3CBeVwTXeuN+2xy/+glceFXad
         /sJoLKUZ51yBgVby9yhqL9db3BPjpb9W27jV7fm0nMcmtsFHNLE6/p32QCpaj+kVS4Op
         L3NITkDOvB1ipic1r27Un0cdrBXHS51TCc5r9CYtkYLrojC5mPhonIPa9I5pSSzzpB3+
         t03Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=NTQSFfEd5N05ine0B/KbY/rFbnpmvqZ6GIn4vActYXw=;
        b=QjcK1TyKegGUbBzYs3oQIP/jLm9sz9dcpwL5W3522afknPNo6i3fU5i66W+rB2cjKC
         HOGKwsv8z/uXnEqvjTpCS9pyQjnEb2xPPUMBUgfowSjYcRXzK7qRlJujEgZOLuEeeZRX
         V4wTB9e7FYad9JB8wWuvjci7sGXLvxJrEtoQd3cO6hrC0uDilUhRdyaa1GzB6wPQUVzh
         FIdZOxmugoJvp9yR8qoSqj61OgKXSIkAdM9sr6di/NprjoDV16QggiPxPurSDmKuhPTJ
         HOn7/LSS9OQSv/AQSu3oOt5L7Tm8QTnTLato6wrmnnnsVRTFyk/OjFUg5y81Cl9wF/o+
         Bzhg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b="ROKG/5jd";
       spf=pass (google.com: domain of hca@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=hca@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NTQSFfEd5N05ine0B/KbY/rFbnpmvqZ6GIn4vActYXw=;
        b=E62pDDtYQrCKnxSoJUEHUEsj86v2zkN97qYCikigTPxPsmlhhVH71Y4QR9+IPggxcC
         Ae5SqnguYFu9atlKQ0hGmPq+7xY23T7VDJR1lSdbKwq7HKPdwFjAbDLHJU4OczQ+Zpab
         kFcQks/Mtwgl+HxIalgnBmoisu5TDRmr7v0xHY79MuMX71yrs4rrTOi0wvdBgLDJZzhW
         pp/Wa7bG7TP5L4wun997etjAHhgK6UTqoxwy784mE9RaToctMXqrnqMKpfgp2XaiAbTb
         HkUziZSfdWWhlCRoE5kUiHSq9fX/EwO9u1ceOEXGgFHxSi+EQC4fG9lRY3kPBP2VoLxQ
         zFPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NTQSFfEd5N05ine0B/KbY/rFbnpmvqZ6GIn4vActYXw=;
        b=NGn0fHayZ7uXCit49xbSUYJKOh7Fj1x1Cw+A126RHXPnh9DiUdO3Q98NTE8EAPeSxi
         BlAGcIabkhFHj/NZxRiw7pk/XXeSNnIuUXWSuBEVfTXvMQo41UtAlKFlob8lix+PS/5f
         gzT5107KJF+b5pMTlpwlcaQfE7kreXj4IjIHcQ/kBcjNd9/wTRdcjDkf5gEtCUW4Eq7m
         IGToGZ3DFcyq+hsm6IbpezIs4yLNC+Poapk7Yb+nq6tl8bxYwdsB3KsPg/10ezn46cYa
         +Yd4gLKM106flBsyMSax7vWkYJxtISyrzGjIaT6olS9Ik35GMNBMIOSlrZK4uNZF6/IL
         M5bw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532AJHWh94JNhRTvxorHVLbKNO3PsHqQ8ouAfIFsJ3nHLf8u5yBm
	YdkbpESh8Mfj6RnPct2lx/Q=
X-Google-Smtp-Source: ABdhPJxVkyLbnhiRFL75AyN1qcPyMdGlrogfKXOA5u07T1c7MnI1BtnXn9WxcIw9JWnM7qKMq3DESA==
X-Received: by 2002:ad4:5805:: with SMTP id dd5mr2569500qvb.62.1629740614796;
        Mon, 23 Aug 2021 10:43:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:153:: with SMTP id f19ls6173808qtg.5.gmail; Mon, 23 Aug
 2021 10:43:33 -0700 (PDT)
X-Received: by 2002:ac8:12c5:: with SMTP id b5mr19786373qtj.215.1629740613880;
        Mon, 23 Aug 2021 10:43:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629740613; cv=none;
        d=google.com; s=arc-20160816;
        b=jmCvX6h9Gco36B90VFWvGArSX6kBEC+nk5k0oJR71F5XehDjf8uYIXOXWQ/mMrYwnT
         kGlgn+d7ihw5PfHq+YobM+Um8rXYy18ZqW8V6d5IkTxQ6Sbj68Rv7D92p6XQCTc5X1ol
         KsxaSR/igb6tw8+i7acejgsx9U2KDzUmg4TpjOMa+0iX+N65bBH4g5w6Q2bVLj+YwFPc
         vUyENGyDxDqMLT8ETT/FptFRN19UONsdr7CyycopOPLvtcF0JMpbmwFtE0Mpsr/R4hO2
         lubBYzmzLouH70c6I/vEFf+DBQ6TO1BUQ7ozG5HNFPl1EjY50y9IaLMoIr3/YYnOgvlJ
         2EWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Gg5sFM4b+sIW7jMBhQudCGlDJg7nvd0N5gE0RA4oK8w=;
        b=X5NFE9fF6Q1uDN//otuu05MLdqTPBMLM0GK0LQsUnWw/WAuY/0xenY5M+ziJ5s+VhF
         8rNdF2pu44wqdikYmZVXyCwdqj90EiyfXLhR1ZnklwDf3Df64GX/zJHGlLPYgOe/fhBD
         51Yh+AvsGZVgKpEGdppbnMTdlBbIgKJPY/IolxVYnv9sMrL0vSLLw26hIpstpqDuY7sv
         gAmALCU6V+alNOURUu8ILCYfKwrD8i3j9625GjC2PVu+kRaZYoJjI1EUrEWCRNF7uMYl
         VyHJuY4XXk8LLcYqZEG/gm0ftsxzySiEgbpkJcCkMIVxRijunE0k4uAu3sixfKNvuWTL
         pFng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b="ROKG/5jd";
       spf=pass (google.com: domain of hca@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=hca@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by gmr-mx.google.com with ESMTPS id n78si843413qkn.1.2021.08.23.10.43.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Aug 2021 10:43:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of hca@linux.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0098394.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 17NHZJ1B072729;
	Mon, 23 Aug 2021 13:43:32 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com with ESMTP id 3amamh3y9x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 23 Aug 2021 13:43:32 -0400
Received: from m0098394.ppops.net (m0098394.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.43/8.16.0.43) with SMTP id 17NHZfK8077317;
	Mon, 23 Aug 2021 13:43:32 -0400
Received: from ppma03ams.nl.ibm.com (62.31.33a9.ip4.static.sl-reverse.com [169.51.49.98])
	by mx0a-001b2d01.pphosted.com with ESMTP id 3amamh3y9e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 23 Aug 2021 13:43:32 -0400
Received: from pps.filterd (ppma03ams.nl.ibm.com [127.0.0.1])
	by ppma03ams.nl.ibm.com (8.16.1.2/8.16.1.2) with SMTP id 17NHhTJ8027098;
	Mon, 23 Aug 2021 17:43:30 GMT
Received: from b06avi18626390.portsmouth.uk.ibm.com (b06avi18626390.portsmouth.uk.ibm.com [9.149.26.192])
	by ppma03ams.nl.ibm.com with ESMTP id 3ajs48bnhm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 23 Aug 2021 17:43:29 +0000
Received: from d06av23.portsmouth.uk.ibm.com (d06av23.portsmouth.uk.ibm.com [9.149.105.59])
	by b06avi18626390.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 17NHdlGV53805480
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 23 Aug 2021 17:39:47 GMT
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 480BBA4055;
	Mon, 23 Aug 2021 17:43:26 +0000 (GMT)
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id E79ACA406B;
	Mon, 23 Aug 2021 17:43:25 +0000 (GMT)
Received: from osiris (unknown [9.145.169.88])
	by d06av23.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
	Mon, 23 Aug 2021 17:43:25 +0000 (GMT)
Date: Mon, 23 Aug 2021 19:43:24 +0200
From: Heiko Carstens <hca@linux.ibm.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, linux-kbuild@vger.kernel.org,
        clang-built-linux@googlegroups.com, Vasily Gorbik <gor@linux.ibm.com>,
        Christian Borntraeger <borntraeger@de.ibm.com>,
        linux-s390@vger.kernel.org
Subject: Re: [PATCH 2/7] s390: replace cc-option-yn uses with cc-option
Message-ID: <YSPePKNwZ/znykqf@osiris>
References: <20210817002109.2736222-1-ndesaulniers@google.com>
 <20210817002109.2736222-3-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210817002109.2736222-3-ndesaulniers@google.com>
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: UtT47z8QGmI0ydM34YlLL3dsbKiL0Ok9
X-Proofpoint-GUID: 83Pr5PXP8r-T7XJ19xXKk76OGBSF74gm
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.790
 definitions=2021-08-23_04:2021-08-23,2021-08-23 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 adultscore=0
 malwarescore=0 mlxscore=0 lowpriorityscore=0 bulkscore=0 impostorscore=0
 mlxlogscore=735 priorityscore=1501 spamscore=0 suspectscore=0
 clxscore=1011 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2107140000 definitions=main-2108230120
X-Original-Sender: hca@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b="ROKG/5jd";       spf=pass
 (google.com: domain of hca@linux.ibm.com designates 148.163.156.1 as
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

On Mon, Aug 16, 2021 at 05:21:04PM -0700, Nick Desaulniers wrote:
> cc-option-yn can be replaced with cc-option. ie.
> Checking for support:
> ifeq ($(call cc-option-yn,$(FLAG)),y)
> becomes:
> ifneq ($(call cc-option,$(FLAG)),)
> 
> Checking for lack of support:
> ifeq ($(call cc-option-yn,$(FLAG)),n)
> becomes:
> ifeq ($(call cc-option,$(FLAG)),)
> 
> This allows us to pursue removing cc-option-yn.
> 
> Cc: Heiko Carstens <hca@linux.ibm.com>
> Cc: Vasily Gorbik <gor@linux.ibm.com>
> Cc: Christian Borntraeger <borntraeger@de.ibm.com>
> Cc: linux-s390@vger.kernel.org
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  arch/s390/Makefile | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)

Acked-by: Heiko Carstens <hca@linux.ibm.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YSPePKNwZ/znykqf%40osiris.
