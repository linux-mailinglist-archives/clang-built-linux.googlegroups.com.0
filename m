Return-Path: <clang-built-linux+bncBCHJVF74S4BRBNOAV36QKGQEKU7NYZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id B02FC2AEB41
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Nov 2020 09:26:30 +0100 (CET)
Received: by mail-qv1-xf3f.google.com with SMTP id u3sf900743qvb.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Nov 2020 00:26:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605083189; cv=pass;
        d=google.com; s=arc-20160816;
        b=J3LUM813D292D0YTaYZePQNJh0PJIRrt9y5QpSskawJYvNFePS/61ny/05NJTm0ad8
         xwqWZdz01mH4aQKeUXMycaAk3sw5yxPqZd5/p3wchd8Zph+VXluWZlyMZ5cVHBrukUAb
         FepUwBon0o3789WgdHhzVcFI12R1bGwX7bI8b5KZPboRLlzhv2Lb99KtjOQ/8K+/gEoZ
         fik+NelVjdoZX4MEM0XLJd7DTMxPy7l/1lzcQ4QA0I6l8RBQFe76/iqiwnPkhAPjOscn
         tx9NUGJORvkgbJPXTNCvA9hDskqWQNqpqsgZFdOLMj1YD9JSYVe2H36kAI0hCJZdL/zF
         HgXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :in-reply-to:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=9jenUqwrvbMoN7V8xN+1ZdUlbcz99eETrJU5J7/ImIQ=;
        b=diLOztOtkDpaviVdkUeNSBWA85vKNQhHHcA8P29PMJYC7wXfbMD7+v2AEcsgJJKvAw
         YJUNn1gKfY6Ijfgp4qCNDsJ2dTqCJTgmTLohoKY+PSIVNjrVGf22OfB1S1Tk8aGQEnSv
         SHuGZaWu63QrUYiucR11b2FInUDyfpg4Z2pvIVq/BCc7+cqXaz3ydKeFi8xTOD6u6Ya/
         ZW93q2oOF3KUmmbvyZi2YVvvU4rUXlSAlC5yFvCQKmZro3ihXJj4IJI8uoJDoGYLhJhf
         7QahtH3r50Mp6aS8hCeXN/E1kiRA3W/qJMU9qwrhO9t6D+pxCmpxkhwrWYhwUNOc1EjS
         1TIw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=ljchvJrC;
       spf=pass (google.com: domain of borntraeger@de.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=borntraeger@de.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :in-reply-to:content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9jenUqwrvbMoN7V8xN+1ZdUlbcz99eETrJU5J7/ImIQ=;
        b=RgZ8+R7CQhYLaECwgdtp91vYH5c/Rmbd0vK89+4AY2i/ugsx4hYd5lmM68Qa28zlve
         PC4HmX8npcsWLzV4QXGj+ehs5cM3WtW2gfsAR9aBZyj4muNiQ92lZf+mi+S2Ysx7+toh
         1lG46PdkiUv88XVPpCZ6bQU5L2GT5U6YQENsCy94ox4h8DfV92ZtGwMIu2wCPvMIKeMC
         dKEhyYxqlj54NRCllVYAzuWukKv6BGangCR5ltgKV7oiVpPEV3fxSD2amQNUwATrEi19
         GujAPE56TX8DSJkYiY88Cv7Za+ZnWStOoYmJT7eK02gbb27H7Hchvho7jYjjrRbBZOy2
         QT+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:in-reply-to:content-language:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9jenUqwrvbMoN7V8xN+1ZdUlbcz99eETrJU5J7/ImIQ=;
        b=FYqbEokHknlJQk8Kr2xt49z9XWsFL25ER2Fnj+Gtdyfv/6ANxYjk3B3O53lxyQ2LtM
         c/R4GoRABB02GKEnw0fY7DXqXnCY1nxxffW0xi80wetlmE/cL3eUGKzEmK6EGE1qK0Pv
         V+8iG4WyfBvFIdBH0I92y/IwEg5Fusib8QPQRMCWCMpxgqTHqqp1djWqQkB+Z/0MgFQr
         a43sYMqnxgkZqofFz7ERiQMvkOXwfc+PGy2Riv/6k1MQqK/AhI7pm8uXoYt+MTYyAad4
         o105h8jKWMlTHE+D7JLQt1zp6vYxgwSgwFC+w8fedbovMFcoGaX8nMhCG7eevL0I97Bl
         DLNg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531xL5twE7LT3sr5VrkI6++080hqDSlEGn1pTlGjZ/ZbB/Oiqs3Y
	dZSsQgqEKcL8N+/3sx9luig=
X-Google-Smtp-Source: ABdhPJzXB77suW8AFuBhol/OpkQqVw3f0ac7PgcUwLW0PUC13W+tnOgRpuizfOPJp9MPTCEzedYJ3Q==
X-Received: by 2002:a05:620a:4141:: with SMTP id k1mr24398521qko.60.1605083189630;
        Wed, 11 Nov 2020 00:26:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:8744:: with SMTP id j65ls7310425qkd.1.gmail; Wed, 11 Nov
 2020 00:26:29 -0800 (PST)
X-Received: by 2002:a05:620a:851:: with SMTP id u17mr24952005qku.7.1605083189206;
        Wed, 11 Nov 2020 00:26:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605083189; cv=none;
        d=google.com; s=arc-20160816;
        b=xjgoKWR+CWTDKGyAuUy1cqM8LCyVtuuyyb1yCIR1+kvw4FXIr+j21mnzel4taDcgBC
         mW92WdjoN0DrAvCzpBw4vsSD7HZTetdh0+/5QC9bhujhNWLKn4l+mpY7uFELjo+Ub1Wv
         8+SQTAoHtTLilXzoUWO5HDX+EvBW6rXitOMLxP1IcFasEmNeK3gwC+Sgc20Mz+FJZ9n5
         Nxw2V/qX/fKELrI1+w21UAjd75XXMLR2bldiy2kO6/kUNRT2DBAd2HmMzyZPJai8YG32
         70C1LCp91t3asWCwoaZphDgul9dUOuJZ/gDdzr+9l2sIUalZHuK4pzbHYOkodsUR5HVU
         kyAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language:in-reply-to
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=cUmKwLEAyQVRF4lV9GFoZMc6wfddiF5gnKiTJOkJ0rA=;
        b=jKtgc2UVoPtQ4pMRE34ptsRD8NODljbP1ul1pGsJj4sTblNd1pF5gkSHCEOrQQabNQ
         Dd98DibXOWQx6CuIsWjviKU9Hnkf1HT5ukM9pPYdord8V616+nds96DXENtcLp5HzrJU
         GaS5uNfIOwWz3VeqAsKzwZxE56b5OEJ1Yj4kKgekDgNEFXagBB3qxoj5Sr5jlbrJm5ny
         FoXnYqLC2cplOOQReCEsidHdHTs84P7zIWZWbAxWG8ZhTvSffiWdYW4T8dFwEbd0US1s
         hOFQXTyHJoAQp0fu02pU9My3kbOvUuNLwNoeNoFYFnhW2Gmbvb63Nj/Ua4aSApqIS7QF
         QvdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=ljchvJrC;
       spf=pass (google.com: domain of borntraeger@de.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=borntraeger@de.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by gmr-mx.google.com with ESMTPS id h3si72260qko.3.2020.11.11.00.26.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Nov 2020 00:26:29 -0800 (PST)
Received-SPF: pass (google.com: domain of borntraeger@de.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0098393.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 0AB8O6GC003382;
	Wed, 11 Nov 2020 03:26:27 -0500
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com with ESMTP id 34qkt0b0ks-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Nov 2020 03:26:27 -0500
Received: from m0098393.ppops.net (m0098393.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 0AB8QQbV012197;
	Wed, 11 Nov 2020 03:26:26 -0500
Received: from ppma04ams.nl.ibm.com (63.31.33a9.ip4.static.sl-reverse.com [169.51.49.99])
	by mx0a-001b2d01.pphosted.com with ESMTP id 34qkt0b0k4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Nov 2020 03:26:26 -0500
Received: from pps.filterd (ppma04ams.nl.ibm.com [127.0.0.1])
	by ppma04ams.nl.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 0AB8Lfv1024018;
	Wed, 11 Nov 2020 08:26:24 GMT
Received: from b06cxnps4074.portsmouth.uk.ibm.com (d06relay11.portsmouth.uk.ibm.com [9.149.109.196])
	by ppma04ams.nl.ibm.com with ESMTP id 34p26pkay8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Nov 2020 08:26:23 +0000
Received: from d06av22.portsmouth.uk.ibm.com (d06av22.portsmouth.uk.ibm.com [9.149.105.58])
	by b06cxnps4074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 0AB8QLkD4194840
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 11 Nov 2020 08:26:21 GMT
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 1FD164C040;
	Wed, 11 Nov 2020 08:26:21 +0000 (GMT)
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 5E2F04C04E;
	Wed, 11 Nov 2020 08:26:20 +0000 (GMT)
Received: from oc7455500831.ibm.com (unknown [9.145.72.90])
	by d06av22.portsmouth.uk.ibm.com (Postfix) with ESMTP;
	Wed, 11 Nov 2020 08:26:20 +0000 (GMT)
Subject: Re: [PATCH 2/2] mm: simplify follow_pte{,pmd}
To: Christoph Hellwig <hch@lst.de>, Nick Desaulniers <ndesaulniers@google.com>
Cc: akpm@linux-foundation.org, dan.j.williams@intel.com, daniel@ffwll.ch,
        linux-kernel@vger.kernel.org, linux-mm@kvack.org,
        linux-nvdimm@lists.01.org, Heiko Carstens <hca@linux.ibm.com>,
        Vasily Gorbik <gor@linux.ibm.com>, clang-built-linux@googlegroups.com,
        Linux-Next Mailing List <linux-next@vger.kernel.org>
References: <20201029101432.47011-3-hch@lst.de>
 <20201111022122.1039505-1-ndesaulniers@google.com>
 <20201111081800.GA23492@lst.de>
From: Christian Borntraeger <borntraeger@de.ibm.com>
Message-ID: <673267d5-93f5-7278-7a9d-a7b35ede6d48@de.ibm.com>
Date: Wed, 11 Nov 2020 09:26:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
In-Reply-To: <20201111081800.GA23492@lst.de>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-TM-AS-GCONF: 00
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.312,18.0.737
 definitions=2020-11-11_02:2020-11-10,2020-11-11 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 mlxlogscore=950 suspectscore=0 clxscore=1011 bulkscore=0 spamscore=0
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 adultscore=0
 phishscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2011110043
X-Original-Sender: borntraeger@de.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=ljchvJrC;       spf=pass (google.com:
 domain of borntraeger@de.ibm.com designates 148.163.156.1 as permitted
 sender) smtp.mailfrom=borntraeger@de.ibm.com;       dmarc=pass (p=NONE
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


On 11.11.20 09:18, Christoph Hellwig wrote:
> On Tue, Nov 10, 2020 at 06:21:22PM -0800, Nick Desaulniers wrote:
>> Sorry, I think this patch may be causing a regression for us for s390?
>> https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/jobs/432129279#L768
>>
>> (via https://lore.kernel.org/linux-mm/20201029101432.47011-3-hch@lst.de)
> 
> Hmm, the call to follow_pte_pmd in the s390 code does not actually exist
> in my tree.

This is a mid-air collision in linux-next between

b2ff5796a934 ("mm: simplify follow_pte{,pmd}")
a67a88b0b8de ("s390/pci: remove races against pte updates")

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/673267d5-93f5-7278-7a9d-a7b35ede6d48%40de.ibm.com.
