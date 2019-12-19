Return-Path: <clang-built-linux+bncBDVIJONZ3YDRBY426DXQKGQERFKIF3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id EB6A31271D8
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Dec 2019 00:53:08 +0100 (CET)
Received: by mail-qv1-xf40.google.com with SMTP id c22sf4791310qvc.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Dec 2019 15:53:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576799588; cv=pass;
        d=google.com; s=arc-20160816;
        b=RZVIk4zJ7WRE0PxZzwNwIp/XhLEEbs/rmnS99BmFCVGMhzLupOEZivxYg4OTwHrIBJ
         J0NxO8K5HbB9bZPJGwqyIxFn+KRWP95SRF+s8QAorZFSaBy3P119tjvywglVbLuass+L
         NNWuPPvc6JZH65JL4kanYdNt7ZhuF+150YIy/q3dLrS4Fk+j+QkyAnlJtQ3/t9P6MY6j
         l6yCa89hYg8yTTuVJPIuzhWdh6SA4krxlQucApYht2RerzcOCjgHIgX+RUyB2hjTitlp
         UyEnAAhm8I7rcr7rgbtIQ5ffmddgMdFTd4Y/b4Y2GDbI7fxRrB+84ZcK/TJOAxpY9wQB
         2HVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :in-reply-to:date:references:organization:from:subject:cc:to:sender
         :dkim-signature;
        bh=hcCMoFyidInfTalrUs7uui6g/CquTvK/tXdapsBphW0=;
        b=HIvYKmttYduDxBgSTWig6lTFDuMCDQ+/SmxPzUEpzuen9GGwpET3k8Zpq1LESzHA/V
         0MKkwaTE7haFF+jNop0j8BuybMD2xXFLEf5Gc9p+jWOHLkAZbYl4k9ehPZ67f7ObQ/U5
         GYaQHxofZY2kfvu934PHSJ8edPuULajDuSa/XBqqQUyT4kLy3xkBOFwDS1AdqBUGmQNB
         pWocnrWwuWc65p75dfMLt7Q+J2AWM0mysIqkn93Cm3H+tPw9eX2tI5FOE2kEFTSDhxN+
         j2pR4QHAGEpx9X4LiRdRlH5BLT9FJWWR5BTXxw5wxZ+vZWjuckIDg0+f1yLX4hHWA0FL
         dRwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=QT37i+rE;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:subject:from:organization:references:date:in-reply-to
         :message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hcCMoFyidInfTalrUs7uui6g/CquTvK/tXdapsBphW0=;
        b=WyFZW0/xjcBajIuHKqQhWKJeota3qNwgu9YeYlr+7MCoYiFCwUmaMA8qjHpVg63yhG
         I6RSzSfwxSwXV2dpHQq3PkrZEVFELKPz9sUgfPgzJZaWF5Dl5mmH1eOO3T3R0nnZ6yDP
         0g1BSLHPV2ky7wKFp9g9HeALGy8V3Rcrd8p2YE8/3mV9zQA77XKtUMcEzqA6qJ2i8ewm
         9PppQAY59VCtFJre2x+mWwKd16cjY3xEZ+rCIxEUI8p00LFxlO2UfcxvdmPcAkXyAvLp
         Pn67HTA09IsHkaAtJXHFCRSYm4NJa/vQvjRGUVhMbZXNWy9KmEDBQGhk7jUYuUpWeP0c
         +mag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:subject:from:organization
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hcCMoFyidInfTalrUs7uui6g/CquTvK/tXdapsBphW0=;
        b=QsKYAZCHJOTqGDPQfqZ7VEq6bIBglbsmFAO20sF0/ucKf8XQDoWMvj1XYADFNyJopD
         KMDU9GdcjSLisxwmP+TZ7K57lAmpf/5YYgFRvUdkP6POxdt+gWfXOSN7tjoUOF/hKDqC
         uNo6p0QoOPtr+RWOn8Hb929V/1HeXNMdjPSluWLegafWk8mImAq7FUWifhV7Jb4c+8qk
         vyYRw5tivfKudHCDj9IblBOazL1hBXmwnJ1xfrEqMABXgZQ/3gSmsEoc95B22qw4cjHq
         GRPcM8/sKoKvE53XRrWmwf61FDE6FOMrLKYF/PWjIyGOUz0uheRSIGaPXn8hEAweiWGO
         N8Ag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWhVDoaNR8y4pfh3bHAFJgzT5Lw2tih1ADcDI+nlNbjbrL/DeGf
	owIqTDiVUSJO4qW6srnmRkg=
X-Google-Smtp-Source: APXvYqyvAW2YTElRVt7JRKajvljvJAWD97w7snGg4Qo07dWckX9s8puFj2fAGS1BZhwXqxNWf9VMoQ==
X-Received: by 2002:a0c:c345:: with SMTP id j5mr10333267qvi.156.1576799587970;
        Thu, 19 Dec 2019 15:53:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:108:: with SMTP id e8ls1882115qtg.4.gmail; Thu, 19 Dec
 2019 15:53:07 -0800 (PST)
X-Received: by 2002:aed:21b6:: with SMTP id l51mr9719403qtc.22.1576799587658;
        Thu, 19 Dec 2019 15:53:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576799587; cv=none;
        d=google.com; s=arc-20160816;
        b=eA6RTA2LQZJSVDlKzQq8nSsPIJislqa4uJvGiqxyCvN2W8NdEWhetMSDVwzJcBQQA5
         nVmg2axFfsRldfOKmzANV6FToFUGtvpqg/deFfEfQcG5D6Z59XwP5oNDZdgb5YbaVwPq
         s4sa6YXBeLAwEIJQoqDmU1WlgUOBK8gVtYoBbc/VZQRV1OnvIUKwH/xVrwChFCLkPLE6
         0EmNxG6DXZI2n4pOmLuQgV+/4nROJInBW+HvewjGKS5unpaCvGXTKLwMqvqqbQxYIl9h
         h9IorAR/UT+35ODE6dXfRKjcm2rkpD+1S8t0R3nLU3b2kHrnKj/w1fkDdf07eON30M8J
         aWAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :organization:from:subject:cc:to:dkim-signature;
        bh=IOAevKSgu4HyS0J5Cpr/uD26hsiJUKyCo1KcIHUOt/k=;
        b=i8esHy1nzznMwcv2NJX6dWNDc5w1lTaOLj9ooKLUXh5gsk+S5u2dmcIV6scnzvYcUL
         9qiJr1d4AJl4+t/e1VZk2VvAoo7SZNz3LJcwHHjh0FwwgdvrAXQQ1LmBjC+eu2gBMN0C
         lLumbkEpv+cV9XggD5PkLz4F9HdNZXR+GzY3IPrkrPw9AbaZHShH5zxWPD7iQqCC/l7m
         oJuCz2zLWzrrzNzgOHsPCVIdXyqKw+5+DRc0LlJ5aVTotbZNKbfjcompB92EgPQ2AUuN
         9QvhaepeMu/fmYQYnodHZTn5ds731g9sKbNmlB2VjDpUY26WWv7oPlPMiheJfpoRfuq1
         wWlg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=QT37i+rE;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2120.oracle.com (aserp2120.oracle.com. [141.146.126.78])
        by gmr-mx.google.com with ESMTPS id g2si292591qtv.3.2019.12.19.15.53.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Dec 2019 15:53:07 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.78 as permitted sender) client-ip=141.146.126.78;
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
	by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xBJNnheR092452;
	Thu, 19 Dec 2019 23:53:05 GMT
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
	by aserp2120.oracle.com with ESMTP id 2x01knnw27-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 19 Dec 2019 23:53:05 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
	by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xBJNnVpT013896;
	Thu, 19 Dec 2019 23:53:05 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
	by aserp3020.oracle.com with ESMTP id 2x04ms8xg1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 19 Dec 2019 23:53:05 +0000
Received: from abhmp0013.oracle.com (abhmp0013.oracle.com [141.146.116.19])
	by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id xBJNr4Zc014111;
	Thu, 19 Dec 2019 23:53:04 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Thu, 19 Dec 2019 15:53:04 -0800
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: "James E.J. Bottomley" <jejb@linux.ibm.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        linux-scsi@vger.kernel.org, linux-kernel@vger.kernel.org,
        clang-built-linux@googlegroups.com
Subject: Re: [PATCH] scsi: csiostor: Adjust indentation in csio_device_reset
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <20191218014726.8455-1-natechancellor@gmail.com>
Date: Thu, 19 Dec 2019 18:53:01 -0500
In-Reply-To: <20191218014726.8455-1-natechancellor@gmail.com> (Nathan
	Chancellor's message of "Tue, 17 Dec 2019 18:47:26 -0700")
Message-ID: <yq1immban4y.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9476 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=947
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1912190174
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9476 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-1912190174
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2019-08-05 header.b=QT37i+rE;
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


Nathan,

> Clang warns:
>
> ../drivers/scsi/csiostor/csio_scsi.c:1386:3: warning: misleading
> indentation; statement is not part of the previous 'if'
> [-Wmisleading-indentation]
>          csio_lnodes_exit(hw, 1);
>          ^
> ../drivers/scsi/csiostor/csio_scsi.c:1382:2: note: previous statement is

Applied to 5.6/scsi-queue, thanks!

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/yq1immban4y.fsf%40oracle.com.
