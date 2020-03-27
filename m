Return-Path: <clang-built-linux+bncBCJJPO575UBBBCPR67ZQKGQEVJE3Y5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD0019579D
	for <lists+clang-built-linux@lfdr.de>; Fri, 27 Mar 2020 13:58:51 +0100 (CET)
Received: by mail-pj1-x103d.google.com with SMTP id l5sf7346490pjr.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 27 Mar 2020 05:58:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585313930; cv=pass;
        d=google.com; s=arc-20160816;
        b=Xj0bSEkg+5FiPpykgCU+XZtIvmWFpXc2XIsEwzG4qlPBeAXBP0t0v3hCpWHzywaHji
         9m/WRcoIFIcx5rdJ8R9R3v4V/EdsxRyCfeouiFVnt7mabZS3nsD+lr7vqdHbDIMRMyVO
         uVRPVp3iqDMGXIXn+s4Mq963JxexJAGW40lQSkbm0pSzBij8vM0XDLTBrmIu0qos/nzh
         8Cc1X/KWXAKJRYrw+GWEktEOmqcnYAV3Zqvf7My0lfVYhOC7xxu507mp1/jwqedMsR2R
         ZGxOrpwmXl9Ey+qw6pLuNWnbztk23l+lNqv9uPkvvCOpq8+OcFuM3Xe6iVcs39785zQa
         uOFA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:in-reply-to
         :content-disposition:mime-version:references:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=jk8HG3we+oEH6DnCvzvQPnqqXClitmn/xv6M9nn3qqc=;
        b=Ivy8XIAPSF9eHukx4wVojkk1cpfX5LWK1qM/XLh5uF/NXCHbmS+caKrSAzBWye43F5
         xJ0geOKUpkyuNXVIiZTcLJOR1vVuBx6RwmT0V1DtoUTytLYkrkr0Fe6A2Wev+2DMeQwQ
         hPvhsYeuihYU77apB8hVrlAUS5A139mQJb0YdxNwLQmZi67glJ6Yl5QbVscxCkxARSDR
         EGa/ADOOARCPUzahJcPEhiFjUw+JaHruPfTnvoOvNl4d8K6owiQ0Aqx7uE18DqkTRs64
         g51utEPx2UmEwnjEtueBZEMuL/MA6w2y9jNHTtSZdkxCBnaf0xqDpDSIvMvh5nj2/guS
         EB+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of heiko.carstens@de.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=heiko.carstens@de.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jk8HG3we+oEH6DnCvzvQPnqqXClitmn/xv6M9nn3qqc=;
        b=ZA0KcBaShEfyF3lwsrwPzPveEJEH5bPBQvp3mcc2bYn9ISpfAKMrbwJymWtsN5FFL8
         9WxUw1h3lEVWXiVzho1GoGuBTdwvH6BJTvgp/OL/EfWdPp8ekijNX2FLPHjfrBL1wa9+
         KPnGB2oUb4yxPF9EmiCkaIP/9jTPYyr4OG+0XjFVpxS7NOcVOxTGYDXCkUaGGIOUo9kE
         6BtFd7RnnEgELMgmFvKsdiBN7qzAf3iU0K5Vl5veUM+qi9puQDYvNL+sMN05eJ98Rrvd
         tZfZGGWcI6q6KuLNn116JPY/MLGSbuwz1pzX9mLZK9FxGaeaMi0vWQvJeGv2ZhedI+rl
         8icg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jk8HG3we+oEH6DnCvzvQPnqqXClitmn/xv6M9nn3qqc=;
        b=YJMuRYrV8zA140Ojn6T3kXbyWwYSkfpstVr4UThTPr+/dYl4xELB6BNdd2mqs61V7p
         nDET1OOHYSX4qyv1fb+lQBegbeUF2mUiC6GCh2INgOWgC9mS2/VPz3c/xy4PwxBVTamn
         MxAeNx3Uo6HHIKWVuuP9bor1lDA+f255We4ZCSRlktMWPfbER+bdd+hrEsKxpuQToyoA
         8yKXGCMQpOssXMwrdGTo0rx7V5Wpb8DWsN5nXA7h39HsHfaJVricRBnNyvALlB43mHmo
         uVxMuZC8blEwK18tcJgVqaKFVQPoerOofJbb2CQ+tQiijjVdcsaHtE/nYYjwvVcVWdA2
         QYDw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0bLS8NkWbL7G3a3omT3H+DgcFgdmlAZTss5TcmmBYblBgJvHAI
	QLfYuybgmvTDw8vmyVc/ieg=
X-Google-Smtp-Source: ADFU+vuurJfTE7egVhW6xJf7dtvVdEhiVMEBT4JsrHw6ly2oDuHM+RzGRkdpu8jPDhMy1d6n/ufVCg==
X-Received: by 2002:a17:902:a5c6:: with SMTP id t6mr13827363plq.323.1585313929737;
        Fri, 27 Mar 2020 05:58:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:fd82:: with SMTP id cx2ls7315713pjb.1.canary-gmail;
 Fri, 27 Mar 2020 05:58:49 -0700 (PDT)
X-Received: by 2002:a17:902:b187:: with SMTP id s7mr13578511plr.84.1585313929296;
        Fri, 27 Mar 2020 05:58:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585313929; cv=none;
        d=google.com; s=arc-20160816;
        b=nzCfO5pZmuE62FZXYVcowj2p2mVP/rMON+0wdD0U+f5F2rVVfU0qIqDqxOw85RkfOa
         Ox9BlX8Y/ZMQfHe0cMhNwptA75m+yuudTSWTGZoyb/ImLYXjSPhVomAI5d0NCcQEwb5B
         IeFUBD7fkXW+RhZaMQ1fsJW9c2wpvVUUX2PFHdcwYP/XLL0HigNu9B0X1Jqld2y6AJNx
         gm2U07mt8YGnA9CFWg2CySTo9vr3A7pDnPg7IZnmbn/rliNOwYwg9DN7dhz4/vTePlE/
         yoThoQM5zdyx3Ytd2w2k2o9DpsKFuQfwpAODCcaST0nUwtYrVABYHUV4NFK/sryzwqRJ
         o4VA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:in-reply-to:content-disposition:mime-version:references
         :subject:cc:to:from:date;
        bh=I88tAsqlMo8fU8F/wZvz1DXuh/8b/l20KykUdymJeHo=;
        b=R6srhLlUbMr0n9X4cWh/chv8mIkI/pmfDmlvgutqqRCO9bQu2Doi9d0oKWFIBoBqJ5
         RW9GHdhpkxBZlJa3EmCB+C5FkTfszUHTrJjcYFsDB88hqWW97tS2IcBHGPHWkj59Gcf1
         UMMornZqzc3sHAP/Fss8dFfwtQ/ukODEuNWzzpqK0ybaEEQOs5QYm/lLqXzSphhyMmA2
         8v8Rm6L5WgRzdW3V2zqisI+ZvUrKcmF4Nq0gv96MUazw3CHX2iGcmMj5bZnHXDY6A5Sh
         mI2wt3AXOC6TMXW57VwIaxVtTc94GrVe/mZbH3l47j5eBW+PtEdPfg8FfvefajcaA+WF
         aJrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of heiko.carstens@de.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=heiko.carstens@de.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by gmr-mx.google.com with ESMTPS id 185si383128pgh.3.2020.03.27.05.58.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Mar 2020 05:58:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of heiko.carstens@de.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0098393.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 02RCYAgA045802
	for <clang-built-linux@googlegroups.com>; Fri, 27 Mar 2020 08:58:48 -0400
Received: from e06smtp07.uk.ibm.com (e06smtp07.uk.ibm.com [195.75.94.103])
	by mx0a-001b2d01.pphosted.com with ESMTP id 2ywbtmbyhu-1
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
	for <clang-built-linux@googlegroups.com>; Fri, 27 Mar 2020 08:58:48 -0400
Received: from localhost
	by e06smtp07.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted
	for <clang-built-linux@googlegroups.com> from <heiko.carstens@de.ibm.com>;
	Fri, 27 Mar 2020 12:58:45 -0000
Received: from b06cxnps3074.portsmouth.uk.ibm.com (9.149.109.194)
	by e06smtp07.uk.ibm.com (192.168.101.137) with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted;
	(version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
	Fri, 27 Mar 2020 12:58:42 -0000
Received: from d06av25.portsmouth.uk.ibm.com (d06av25.portsmouth.uk.ibm.com [9.149.105.61])
	by b06cxnps3074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 02RCwfla42270880
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 27 Mar 2020 12:58:41 GMT
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id BF0A411C04A;
	Fri, 27 Mar 2020 12:58:41 +0000 (GMT)
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 653B311C050;
	Fri, 27 Mar 2020 12:58:41 +0000 (GMT)
Received: from osiris (unknown [9.145.49.166])
	by d06av25.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
	Fri, 27 Mar 2020 12:58:41 +0000 (GMT)
Date: Fri, 27 Mar 2020 13:58:40 +0100
From: Heiko Carstens <heiko.carstens@de.ibm.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Vasily Gorbik <gor@linux.ibm.com>,
        Christian Borntraeger <borntraeger@de.ibm.com>,
        Julian Wiedmann <jwi@linux.ibm.com>,
        Ursula Braun <ubraun@linux.ibm.com>, linux-s390@vger.kernel.org,
        linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH -next v2] s390/ism: Remove PM support
References: <20200326190549.24565-1-natechancellor@gmail.com>
 <20200326190741.24687-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200326190741.24687-1-natechancellor@gmail.com>
X-TM-AS-GCONF: 00
x-cbid: 20032712-0028-0000-0000-000003ECD70A
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 20032712-0029-0000-0000-000024B24F2F
Message-Id: <20200327125840.GA4109@osiris>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138,18.0.645
 definitions=2020-03-27_04:2020-03-27,2020-03-27 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 malwarescore=0
 phishscore=0 impostorscore=0 priorityscore=1501 spamscore=0 bulkscore=0
 mlxlogscore=849 lowpriorityscore=0 clxscore=1011 adultscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2003270111
X-Original-Sender: heiko.carstens@de.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of heiko.carstens@de.ibm.com designates 148.163.156.1 as
 permitted sender) smtp.mailfrom=heiko.carstens@de.ibm.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=ibm.com
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

On Thu, Mar 26, 2020 at 12:07:44PM -0700, Nathan Chancellor wrote:
> Clang warns:
> 
> drivers/s390/net/ism_drv.c:570:12: warning: unused function
> 'ism_suspend' [-Wunused-function]
> static int ism_suspend(struct device *dev)
>            ^
> drivers/s390/net/ism_drv.c:578:12: warning: unused function 'ism_resume'
> [-Wunused-function]
> static int ism_resume(struct device *dev)
>            ^
> 2 warnings generated.
> 
> When CONFIG_PM is unset, SIMPLE_DEV_PM_OPS does not use the suspend or
> resume functions. Power management was recently ripped out of s390 so
> CONFIG_PM will never be set and these functions will always be unused.
> 
> Remove them so that there is no more warning.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/950
> Fixes: 394216275c7d ("s390: remove broken hibernate / power management support")
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Thank you, however there was already an identical patch from Ursula
which was missing on our branch. It's now there:

https://git.kernel.org/pub/scm/linux/kernel/git/s390/linux.git/commit/?h=features&id=194f75706b86847d1b4237958f7d6bd7ea7baf42

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200327125840.GA4109%40osiris.
