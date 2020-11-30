Return-Path: <clang-built-linux+bncBAABBQHCSP7AKGQE43BRBMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 515712C84EE
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 14:18:58 +0100 (CET)
Received: by mail-pl1-x640.google.com with SMTP id u14sf7629608plq.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 05:18:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606742337; cv=pass;
        d=google.com; s=arc-20160816;
        b=DeTCVA1tSzgFs0ME/c4fXzeECoj+5Tsm1ELGtlFk+ujkpA02hGIyceto6r4AGXv8p+
         4D0xCE74l2V1Op4UwyvkYCECszrE+KVVQHBQis3zvYLWxFzhLL60JbuYl/OUQddEPD+B
         lfBkdK3ds+US80bhJXpBmae/dY9yOznZhyuwYArMGPWfUvbOUlbsiLZDx310ZVt7gwEk
         p3b+JGfXm2Rs2raLLCK2hdrfD9GZf+4RC0slN23vvLXZu53czrT3fbkXNM6m3Son/sKx
         /ZpoDYWoYBWVt7YNGu2Vqk3R6cQctZuwHjVwIf7XaMENxzFhMO5s1ycFsRAwyRFbTi7i
         3HMg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=dFylS4XZcDZ+wZxVF5Sx5+LfcnjDJMbllRG0lkNh5Zw=;
        b=kjEQsQOEn/my7hC1Ve0CqIObnxb2y+xr57SGPydVs2kuLsLLHhYM251ByvjuTLVQH0
         9XQG5PudBkFQV+LeHB/5qRF1R0Xs/1O+hetZgI/cSuiofIVVnY8+sc7XexyPJSCaXQKg
         Hk4qmv1Q4MWiwN+pafHBvscwmrwxet2My5odt0SmbSHPbokcdVLdmYw3dfcEaHs+vYby
         XmSqYI4vnIh8azO6HHAopBpwFC5FgSsF7GE9UTRlNiZiRebpRWu1Dn/Dn325flaLQ4kt
         mFUaMv/LOOfFi0LsLtHpjTDdVqQUESu6vXofxyrJ48+MZ96c4rOJmMfq1mHtquBDH+gk
         KcUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=Tdcq8qI9;
       spf=pass (google.com: domain of hca@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=hca@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dFylS4XZcDZ+wZxVF5Sx5+LfcnjDJMbllRG0lkNh5Zw=;
        b=WhyPWZ1biDmvJ9uwOTYEvdkhNoVOuqgqkzEvAprXZPH32af/Jqa9v/oDQfuAtNlhkT
         rGsUGdWsNAz1UXiSfLgrowSFk4j6wL6mtwG4iaOoSGXsM0DnHtY+RqLdZyB5H3LLLLu+
         IjhZWvZtH5e+hIgPBvt8i48saOM8u5C9mPU7Eg7fSWx9WVv/+UzMOQ7vRrwNBQU03YeB
         tZt9qmWB1Wij9mVvpVsIOsDzWX9Z5PjBnPdrL1zYIArC4xdX0LuBPFsvr/UAgdjgr0SP
         3LovndVcrjZQgbUyiIjsmqmyxOeDZXpFrWcRuAjE6ROk2NZSwtyiX3/3wFCg292tx6a0
         y3KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dFylS4XZcDZ+wZxVF5Sx5+LfcnjDJMbllRG0lkNh5Zw=;
        b=L4w75IhoLS7bq+DOBwXJWqJm36LSmDwGLJq1ovG7o3lZ5QMACqht1jSDzNiYn9apCT
         PUqLMr7vd7Ns/qs1DTvoAm2YTLIQzcaoK3MDHP5cvfibEzSyM+DUiWJSDkSRrxKSIUs9
         +RHJbDYuWnbs7r2O1o+h6E7VeQt/rNALPNJ+2s8A45MssZjoPMDD7EbN76b+D/y/WKD7
         /24ur58hUJqD/9/fp4pE7YwLc2WaaZKanGbWV5dSY236y8JmEQamMu/ls0T3iZnGD6wx
         WhMIpu6uKxjol9C9rwZFUJexsuFmVBKpOcXZbjaEwNH7417a6vWOk8KU0hkVJp/gVFkU
         Zfsw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5339tXh5HyYmii9+kCyWpMvJgUjIvOtynRMWYDSeiYeFhjgPrKHf
	S7maLvMyk+4nZbykc+IDorI=
X-Google-Smtp-Source: ABdhPJyDwS+Rzt+G5T3Jxr4l0W1mTvalgfhqaEsFVYFt8e4Cr8PAqAk5EzbvYl7s4SgjNJsR8t5QeA==
X-Received: by 2002:a17:90a:16c1:: with SMTP id y1mr25463220pje.168.1606742336928;
        Mon, 30 Nov 2020 05:18:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:f0f:: with SMTP id br15ls6009592pjb.3.canary-gmail;
 Mon, 30 Nov 2020 05:18:56 -0800 (PST)
X-Received: by 2002:a17:90a:7087:: with SMTP id g7mr20010625pjk.200.1606742336333;
        Mon, 30 Nov 2020 05:18:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606742336; cv=none;
        d=google.com; s=arc-20160816;
        b=U0BCJ5IBPwU9dKLqXHH+x5pW9r3Q/IpZlTfvXT0Ub/PO4+W2yXfEnS5vkwwMz4WygL
         Cc5EuUY2kOxy/JuzmbegVSuuWOXfDC3r+fMzuWvusn+d8lFrQCqijuPenq3D2/0ZaK/c
         nmJV6dK8TT3MjVsg0s97Ff760hLOXbDfAP3qfo15uEsFHEM8CfghJdb7JWfd50dGIy7p
         O7sYT1pJOhLhVKN0WiFpRFHidtcLS6SrFDKmXXf/AJosr3h4+ImyP2OmXFi+vyMcjZsA
         Gqofo5anfYJaYo13NwSgjxTIKGEAHoGoysqr8n1pjMujzvX6C/rtIIgnrn1sp8SD2r/Z
         fACA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=58ao67nn4tnXiDeKz0ADd8aVHvL3E9mqByct7ab3mH4=;
        b=gtZ84Zk7+3lIOFqdJ62Yzs4hOyyNFgncQBVs1yUJ8It7rOGGCuVvPvOMG3bbwusoRs
         JGhTNY/gqnsVPM6E6uiDfhqHJNV2zbLompHyTa9Nhmo0k0Aq31cBKscRqlty8GVAJ5qs
         w0/zwDf+Ioj9k6dncHNGF2WIRxaMZ1ZqAdqx6tcmJRJ/mfbZYJfX1jlkc1FQYN65BMxA
         4JaGrWWDxweFBDsgAf0pA7uvEAmqJaglawjbO2Ia+AyM5nCXxPN5uxEmATYVvzRWUCHv
         M5OER5i9TniocIcLI9FIXXxatzUAF30ciQEj8j8R4I1/Vc7ie/u6JHYBvSmdTXj3KS5y
         ITOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=Tdcq8qI9;
       spf=pass (google.com: domain of hca@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=hca@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by gmr-mx.google.com with ESMTPS id d1si57438pjo.1.2020.11.30.05.18.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Nov 2020 05:18:56 -0800 (PST)
Received-SPF: pass (google.com: domain of hca@linux.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0098410.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 0AUD3f6B104113;
	Mon, 30 Nov 2020 08:18:55 -0500
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com with ESMTP id 355101rygp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 30 Nov 2020 08:18:55 -0500
Received: from m0098410.ppops.net (m0098410.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 0AUD4UHm110993;
	Mon, 30 Nov 2020 08:18:55 -0500
Received: from ppma04ams.nl.ibm.com (63.31.33a9.ip4.static.sl-reverse.com [169.51.49.99])
	by mx0a-001b2d01.pphosted.com with ESMTP id 355101ryfy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 30 Nov 2020 08:18:55 -0500
Received: from pps.filterd (ppma04ams.nl.ibm.com [127.0.0.1])
	by ppma04ams.nl.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 0AUDHc2g016655;
	Mon, 30 Nov 2020 13:18:53 GMT
Received: from b06cxnps4075.portsmouth.uk.ibm.com (d06relay12.portsmouth.uk.ibm.com [9.149.109.197])
	by ppma04ams.nl.ibm.com with ESMTP id 353e68222m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 30 Nov 2020 13:18:52 +0000
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (b06wcsmtp001.portsmouth.uk.ibm.com [9.149.105.160])
	by b06cxnps4075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 0AUDIovh8258160
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 30 Nov 2020 13:18:50 GMT
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id ADE69A405B;
	Mon, 30 Nov 2020 13:18:50 +0000 (GMT)
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 647D2A4060;
	Mon, 30 Nov 2020 13:18:50 +0000 (GMT)
Received: from osiris (unknown [9.171.81.148])
	by b06wcsmtp001.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
	Mon, 30 Nov 2020 13:18:50 +0000 (GMT)
Date: Mon, 30 Nov 2020 14:18:48 +0100
From: Heiko Carstens <hca@linux.ibm.com>
To: Souptick Joarder <jrdr.linux@gmail.com>
Cc: kbuild-all@lists.01.org, svens@linux.ibm.com,
        clang-built-linux@googlegroups.com, linux-mm@kvack.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH linux-next] include/getcpu.h: Fixed kernel test robot
 warning
Message-ID: <20201130131848.GA11190@osiris>
References: <1606578117-2895-1-git-send-email-jrdr.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1606578117-2895-1-git-send-email-jrdr.linux@gmail.com>
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.312,18.0.737
 definitions=2020-11-30_03:2020-11-30,2020-11-30 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=1
 priorityscore=1501 adultscore=0 malwarescore=0 mlxlogscore=999
 lowpriorityscore=0 impostorscore=0 clxscore=1011 bulkscore=0 spamscore=0
 phishscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2011300081
X-Original-Sender: hca@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=Tdcq8qI9;       spf=pass (google.com:
 domain of hca@linux.ibm.com designates 148.163.156.1 as permitted sender)
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

On Sat, Nov 28, 2020 at 09:11:57PM +0530, Souptick Joarder wrote:
> Kernel test robot generates below warning ->
> 
> >> arch/s390/kernel/vdso64/getcpu.c:8:5: warning: no previous prototype
> >> for function '__s390_vdso_getcpu' [-Wmissing-prototypes]
>    int __s390_vdso_getcpu(unsigned *cpu, unsigned *node, struct
> getcpu_cache *unused)
>        ^
>    arch/s390/kernel/vdso64/getcpu.c:8:1: note: declare 'static' if the
> function is not intended to be used outside of this translation unit
>    int __s390_vdso_getcpu(unsigned *cpu, unsigned *node, struct
> getcpu_cache *unused)
>    ^
>    static
>    1 warning generated.
> 
> vim +/__s390_vdso_getcpu +8 arch/s390/kernel/vdso64/getcpu.c
> 
>      7
>    > 8  int __s390_vdso_getcpu(unsigned *cpu, unsigned *node, struct
>    > getcpu_cache *unused)
> 
> It is fixed by adding a prototype.
> 
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Souptick Joarder <jrdr.linux@gmail.com>
> ---
>  include/linux/getcpu.h | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/include/linux/getcpu.h b/include/linux/getcpu.h
> index c304dcd..43c9208 100644
> --- a/include/linux/getcpu.h
> +++ b/include/linux/getcpu.h
> @@ -16,4 +16,5 @@ struct getcpu_cache {
>  	unsigned long blob[128 / sizeof(long)];
>  };
>  
> +int __s390_vdso_getcpu(unsigned *cpu, unsigned *node, struct getcpu_cache *unused);

Sorry, no. We won't add s390 specific prototypes to common code header
files. Anyway, I solved this differently and the "fix" should be in
linux-next soon.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201130131848.GA11190%40osiris.
