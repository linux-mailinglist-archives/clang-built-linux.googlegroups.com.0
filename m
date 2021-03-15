Return-Path: <clang-built-linux+bncBAABB36MXWBAMGQE7AYDLZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A2FB33B4EC
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 14:51:45 +0100 (CET)
Received: by mail-io1-xd38.google.com with SMTP id w8sf21149856iox.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 06:51:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615816304; cv=pass;
        d=google.com; s=arc-20160816;
        b=PWuNkH7Qf5DBtuiB4oR6dFDIXVDA0YsBWel30Pr335cLMNC+qpUquRzuj9LGsXuZm0
         p6i5ktntC7f2x9wQf8ATaWWJbvygnGZYOchcdoFqecmIMDmFn8zhBgkAAWjDsuMaoeAb
         V9HtNMCk5KH5EWSuXc2v4Yl5Qt7g+LP3hVE1EzO/wjxlo87OFAXNSNKyLwNDtVcNn2nd
         qREzhrDuFN0SZTuEhbtWIJeb8S5Pe6u74MjSA9jD7B9Ty0NakAup4G74vzb3aN9uXKU0
         7oO9gu7G/8tWcg5hFWJwqPaHiPqpWshSjUEc0Pgk9oGGiaoS7iUVQtKlmthrdoS1SS1w
         bRNA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:date:message-id:from:references:cc:to:subject:sender
         :dkim-signature;
        bh=HFFHsWW5BQY8hPcdLjZjGxyQrB3hu/8BIt5JX587MsM=;
        b=O/J31fnVzCbe0KKFRTB/iEhmzk5puICsGLaVD41rNV7RSTzFIRXrDVCYqITasn8yir
         oVLzpR8nXipgx83HTb/0p68geMbUdONxlZQS2TmjCkKuQh2WNm2CDnEbmGExb/iJuxIW
         ViR/VdNz5B/uYVFQq+hZJtnzDkEfNhiOgPAcn5GNLCA1zJSmenRPHYqmJMer40psANOZ
         E9y12WIZyBpklpuHpNENrcTThkhTncB4cCWXUd/VwBwybDL1AX9TzndPtUpNe57kOsnI
         MBtK47QKd3go8qbWMx9gitjOalbmVipjW5GWA0BB0PoV9+9YPo25NjyOvYpdWpnOSXjw
         9Lyw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=JRVlcYaZ;
       spf=pass (google.com: domain of oberpar@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=oberpar@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:mime-version
         :in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HFFHsWW5BQY8hPcdLjZjGxyQrB3hu/8BIt5JX587MsM=;
        b=T7De4/dqjFHwTA93JegCZEJmrXRe8ihG/3MfxLJJmhfAhMwcsMJThIrPgQP9HRIyYH
         dywsO4GdaLK3fFXgPz9Lsv9ub/6Y8MyHTTNQZkeN6vUTq+p3XTNHwy3lMN06MZ3EG4Rk
         JM21/m7CIM88KsndjsUC+8RrfFMKvGuvvHnb8Br+ddFkQIG4c/r19AOaoQ5Z3Dd4ESxv
         Sz2w4KNDJlmeij7+XW3N/1kcOtn0KVl7yEpBzRT/ISfLF5WluoNSRnF4xVMaKOX877x8
         nkJOcjJ7RGy8agpx3NDnfl0Wq9tRc4ecFbhUzNoNzn4GhrpIy2tgS6yPMwxBKhuKNDjP
         LQFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HFFHsWW5BQY8hPcdLjZjGxyQrB3hu/8BIt5JX587MsM=;
        b=qIfAXp1d4rWgcyBGCyKnyY95HpLlbJQ7k69dQqWHYctZ19v3vL8EVNeY5Ii7qmdjee
         x8eR/WRuraGy8VVO4sATTP17+aP6xVozkCiwHLDymZ7oNbUmCxe+bp5xuf3r2+1jgPd+
         61XwuAWXvCLsDnBOJ8gtFNuphvjsgejSP9ElbEt6+lap6Pbyo1BAyJSGwZJjU0L7NWNs
         GReCgfODIzyXqQybbtj6yiXMliflAvrg9KPAzDt5E7doNvMEoX5dPsgBc/wz4E5E1kRh
         vtUiBDQUAUH4i/cDzbHCRz9MeGz9dnb6EqUAzolJ9gdXX/zWf8Ts5/KU4uyscCkH3I//
         Q0Gg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531BPeMWnLAO9lFHRwmJpeIQgo1H0Hg5YOn+dHrDdXFvwKXD+SKO
	CMpDGAGZo5dsJmpX5f2sxIU=
X-Google-Smtp-Source: ABdhPJwiZc4fstcrr9Z/V9LQ5AmuY1WWdK73O6ea6tOhtHuVYzDQN55VTg03OrKeP2vvkg6VcwjmSw==
X-Received: by 2002:a05:6e02:4a4:: with SMTP id e4mr11239626ils.114.1615816304042;
        Mon, 15 Mar 2021 06:51:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:88:: with SMTP id h8ls2282202iob.3.gmail; Mon, 15
 Mar 2021 06:51:43 -0700 (PDT)
X-Received: by 2002:a5d:97c9:: with SMTP id k9mr7203601ios.45.1615816303703;
        Mon, 15 Mar 2021 06:51:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615816303; cv=none;
        d=google.com; s=arc-20160816;
        b=c6DoZ2lfTVz/2GTtiSd0gsN8jc1qkghFzP0DUR2so3vkR3ydEZ4f5j3PmE0nRDdEmk
         x3TJnL6QF9hNdvNVip0rYPiFmn/1CCTl3l+yj+3ROQa2c1SuqHfhfir6X2QSRaV1o/vH
         McDFkNWTjATDajzJc/EUIkv0SIhq5f5YiaXA67T9rInYtApsOWfJ2p+6uIceYiMCNIuL
         5+HW6qD/XoZKfcjjMwh5nf0087QsR6AKHLRqAhh+WHigX0ozv/Fg8565S5YeaimhJU29
         Wd0G65sQoulMgsnhtHoPOoQE0+eDh4MB9R/rMEZq820mFeacvAlmPEulP3c0Fgo3eCt4
         W30w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :date:message-id:from:references:cc:to:subject:dkim-signature;
        bh=eOGjjfwBRqIXEaoAxvH/exvBFolj5BMfaXKZ0b6//co=;
        b=ITbvkBVZZ4ver7YrHJcA65XZxsT+K/S27yH8zB2a9QvpBURZBSbUfqw7GiwtW9Eo6i
         EwXw8jFv//H091jjXEi8HUY7kuJKRaCc7PXi0c/27wMB6mROphx2BNOxFB2RqrpvJUDB
         tqJF5GKTpaMIvRQfeyArNn6Sd7INW6LGlyys+sk/vU2waOBvTyJuxJSXTswnj3cOsxU/
         d6j27QjDPPb1g+QVXOfQBYZuo2b2pOjTHfUFQ85m1ez742Alk36xhP+5kwO8YsUs/OA/
         M8VZAhKRmmTFQk+rldmqcHLjFCOTvpq+boFc7oWYVfp6LDYpqIot3ersgYVbnABpBB9P
         5Ntg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=JRVlcYaZ;
       spf=pass (google.com: domain of oberpar@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=oberpar@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by gmr-mx.google.com with ESMTPS id v81si624749iod.4.2021.03.15.06.51.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Mar 2021 06:51:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of oberpar@linux.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0098393.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 12FDY8eY110249;
	Mon, 15 Mar 2021 09:51:42 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com with ESMTP id 379yhqqe7u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 15 Mar 2021 09:51:42 -0400
Received: from m0098393.ppops.net (m0098393.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.43/8.16.0.43) with SMTP id 12FDcMlE132376;
	Mon, 15 Mar 2021 09:51:42 -0400
Received: from ppma03fra.de.ibm.com (6b.4a.5195.ip4.static.sl-reverse.com [149.81.74.107])
	by mx0a-001b2d01.pphosted.com with ESMTP id 379yhqqe6s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 15 Mar 2021 09:51:42 -0400
Received: from pps.filterd (ppma03fra.de.ibm.com [127.0.0.1])
	by ppma03fra.de.ibm.com (8.16.0.43/8.16.0.43) with SMTP id 12FDn5KE027569;
	Mon, 15 Mar 2021 13:51:39 GMT
Received: from b06avi18878370.portsmouth.uk.ibm.com (b06avi18878370.portsmouth.uk.ibm.com [9.149.26.194])
	by ppma03fra.de.ibm.com with ESMTP id 378n1890k9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 15 Mar 2021 13:51:39 +0000
Received: from d06av24.portsmouth.uk.ibm.com (d06av24.portsmouth.uk.ibm.com [9.149.105.60])
	by b06avi18878370.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 12FDpLN837683526
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 15 Mar 2021 13:51:21 GMT
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 58C4442049;
	Mon, 15 Mar 2021 13:51:37 +0000 (GMT)
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 06DF742041;
	Mon, 15 Mar 2021 13:51:37 +0000 (GMT)
Received: from [9.145.154.43] (unknown [9.145.154.43])
	by d06av24.portsmouth.uk.ibm.com (Postfix) with ESMTP;
	Mon, 15 Mar 2021 13:51:36 +0000 (GMT)
Subject: Re: [PATCH v2 1/2] gcov: fix clang-11+ support
To: Nick Desaulniers <ndesaulniers@google.com>,
        Andrew Morton <akpm@linux-foundation.org>
Cc: Nathan Chancellor <nathan@kernel.org>, linux-kernel@vger.kernel.org,
        clang-built-linux@googlegroups.com, Fangrui Song <maskray@google.com>,
        Prasad Sodagudi <psodagud@quicinc.com>, stable@vger.kernel.org
References: <20210312220518.rz6cjh33bkwaumzz@archlinux-ax161>
 <20210312224132.3413602-1-ndesaulniers@google.com>
 <20210312224132.3413602-2-ndesaulniers@google.com>
From: Peter Oberparleiter <oberpar@linux.ibm.com>
Message-ID: <67b313b0-3254-b394-7aa3-69113fe32838@linux.ibm.com>
Date: Mon, 15 Mar 2021 14:51:36 +0100
MIME-Version: 1.0
In-Reply-To: <20210312224132.3413602-2-ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.369,18.0.761
 definitions=2021-03-15_05:2021-03-15,2021-03-15 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0
 priorityscore=1501 malwarescore=0 mlxlogscore=999 spamscore=0
 lowpriorityscore=0 mlxscore=0 suspectscore=0 clxscore=1011 phishscore=0
 bulkscore=0 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2009150000 definitions=main-2103150096
X-Original-Sender: oberpar@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=JRVlcYaZ;       spf=pass (google.com:
 domain of oberpar@linux.ibm.com designates 148.163.156.1 as permitted sender)
 smtp.mailfrom=oberpar@linux.ibm.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=ibm.com
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

On 12.03.2021 23:41, Nick Desaulniers wrote:
> LLVM changed the expected function signatures for llvm_gcda_start_file()
> and llvm_gcda_emit_function() in the clang-11 release. Users of clang-11
> or newer may have noticed their kernels failing to boot due to a panic
> when enabling CONFIG_GCOV_KERNEL=y +CONFIG_GCOV_PROFILE_ALL=y.  Fix up
> the function signatures so calling these functions doesn't panic the
> kernel.
> 
> Link: https://reviews.llvm.org/rGcdd683b516d147925212724b09ec6fb792a40041
> Link: https://reviews.llvm.org/rG13a633b438b6500ecad9e4f936ebadf3411d0f44
> Cc: stable@vger.kernel.org # 5.4
> Reported-by: Prasad Sodagudi <psodagud@quicinc.com>
> Suggested-by: Nathan Chancellor <nathan@kernel.org>
> Reviewed-by: Fangrui Song <maskray@google.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> Tested-by: Nathan Chancellor <nathan@kernel.org>

Looks good to me (minus the code duplication - but that's IMO acceptable
since it's cleaned up again with patch 2).

Acked-by: Peter Oberparleiter <oberpar@linux.ibm.com>

That said, I'm currently thinking of adding a compile time check that
performs a dry-run gcov_info => gcda conversion in user space to detect
these kind of issues before kernels fail unpredictably [1]. I'm
confident that this could work for the GCC gcov kernel code, not sure
about the Clang version though. But if it's possible I guess it would
make sense to extend this to include the Clang code as well.

Note that this check wouldn't work for cross-compiles since the build
machine must be able to run code for the target machine.

[1]
https://lore.kernel.org/lkml/1c7a49e7-0e27-561b-a2f9-d42a83dc4c29@linux.ibm.com/


Regards,
  Peter

-- 
Peter Oberparleiter
Linux on Z Development - IBM Germany

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/67b313b0-3254-b394-7aa3-69113fe32838%40linux.ibm.com.
