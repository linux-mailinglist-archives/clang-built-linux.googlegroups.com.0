Return-Path: <clang-built-linux+bncBC3JRV7SWYEBBKWFQOAAMGQE35KTPBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 39FA72F6F83
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 01:32:44 +0100 (CET)
Received: by mail-pf1-x43f.google.com with SMTP id y187sf4393845pfc.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 16:32:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610670763; cv=pass;
        d=google.com; s=arc-20160816;
        b=Cp9DjZZtdf3upg75sLB9mnVbeIsx3HA/2ppgNj/YM3xjmake2HrZKpPKOYpTxmZJkO
         nXLWp/iTtHeemUNarUJIJv4YPf5aS4MA6vcIBRc+KGGRuMe08LBWaVXkWzA8AUMqX4lJ
         jFW8mSkPfo8dOmSQeLmyE+UD+j4jxFvl/19ySfNSV9C+3iYZFCRB95SyVX7U0clS/1Ql
         QngHWKVyjwU5ycP/1T9sAI2BbCHxsFmML9QSkn1BPNdP60XpthtvbOG8YNqxT2CRS2/B
         PXtU9pKx5mRewqq9wtYLW259XI7TgUDPUxghM1e1p7nkIAvSoFPXjwW/sV8aCYOBVt84
         obLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:organization:from
         :references:cc:to:subject:sender:dkim-signature;
        bh=pIfO0FEcFVYsNEZe0Cs1k+cOXPmERi6F54IMvOcyWMk=;
        b=CZ7Bbtz7GvYsUW1rYo1qRuCPJEOcpwYzab43+UtcxfQNCUR+YvbKoFo2bLqDqW0NU0
         2uB5jZgm9nOvFvaxmKTjJMa6SeBUus99auE6HIrW1P/YeP3CdcunZc51/QeoLNovSz17
         wbdF3tWymivuEXlJZfQ/48o/pkjHiFwMoqULF/RXc9AT98sOeZMC/hbpjLAyTev3y6NK
         59F7RG+hORmZyZlh4uCo0S5+Fc5w2rvqMDo09lkqBbSlJ/jb+fGI/HP2CVx4DvsFH1sx
         UO9c6lP3XmQRoNrineIMzbGbY9Fh2HdZosVdejQr4VF9D91a6Fr5znRzgjzidz7wZo8/
         clnA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=EWZcynLC;
       spf=pass (google.com: domain of boris.ostrovsky@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=boris.ostrovsky@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pIfO0FEcFVYsNEZe0Cs1k+cOXPmERi6F54IMvOcyWMk=;
        b=OhbBp8UuPXJ7qtvfxxjRq+CggLvH192cjirEG9lqJk9KqJDvD9WO1vzk+2aFeQoatl
         5sn5uqr6YSVRRVfQs65xuu4OR/SgjPXBprHoj5ZYXF+b1rVluAwYNG+qHOnvNLBFIbP+
         qimfOtwj+/eBa6/2xsg5O06MyOyANE8sQaGHwfQWTYbWRHykETYE5FVI+wPiEPChNOwF
         pDwgVm2hfX1va6xviAry+ckJw+eL/gH7fP4tfqTFfeBmdqAS9Wq7KrypzRQnbXrpQj8j
         69Ukgngt0M7AUorNStkEien8I1Fht4lqvhUpZ1knlETy3K6uCqx6TOSn1o84Itsr3kr1
         YEXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from
         :organization:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pIfO0FEcFVYsNEZe0Cs1k+cOXPmERi6F54IMvOcyWMk=;
        b=fCAxW/zYglhutDVxFUC6FkNSHj7T650Oynpd2/AjkIA0Ksk1lV9jLCIzGOroQchUzQ
         OanbNUxfWlx/CYQI1/K6RmxBaxteqLYyj5Z76RNis8Thg8Ub+Zyc6TU65b8LHYOVs8O6
         k/d9jTmez7SuMYby4e2pdIVvACXoV2WAF3+Vc8yvRsfnsBxAz9gCmAjBu+XnRuyQzfaP
         JGfJcQKYFs9TygBbjoM6CqQcyGcApNFOLB2wGFNvAL81DtU80GM+//+cpUgXjEi6I3G6
         6ppvAblhn+dLFOjMkXfvPhUt/4gC9+X5MzVsDEUKnjmTbvTvZXcTPlNLnrFnF/vn+kiC
         r3fA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5326HHKVI23PWEvMMKLZFbx3Ra4EEcE6dM6g5+VVn9rdzo+l1TON
	oUdxrdlWLSxDAOJEgzsWoBw=
X-Google-Smtp-Source: ABdhPJymih0VadfJfx1r39ZmSWdhdxrAC6NwbIC8yLcKugsYwFNR6mFYk1XZ4RMR6eMbkvZDR5aBNQ==
X-Received: by 2002:a17:902:7001:b029:da:bbb6:c7e2 with SMTP id y1-20020a1709027001b02900dabbb6c7e2mr10004946plk.50.1610670762986;
        Thu, 14 Jan 2021 16:32:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8489:: with SMTP id c9ls3459201plo.4.gmail; Thu, 14
 Jan 2021 16:32:42 -0800 (PST)
X-Received: by 2002:a17:90a:d98f:: with SMTP id d15mr7651450pjv.55.1610670762330;
        Thu, 14 Jan 2021 16:32:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610670762; cv=none;
        d=google.com; s=arc-20160816;
        b=Hk269uyn6vf3aEhOM19fJN9oXFyy6735RigvbSkqqmDVAzutuxnz70ByGRZiZhVMvd
         23kcOPV52M8Gd4wu3RRP4KrSUdu0CoZEKB3pY78RqtLpA4cG1fkeUzephyquYh2bVxVG
         FGbq0FhDqwzk5OQKb/YiXys4U608fcdx8sSOOWS42lJ91nnOU4ggj/QOO2PosmUdIFLE
         o4X9ufC2/QU+VbugztZwpFcBrCH+tnZ7PNNiv4B0PWl9S8ay/71Dpeh2LqOhzsUJpj6O
         k7WoXUZVQ1dXvaSWKZc20L4droLDBLVyN9SXwiC+QN/zbSt01YBqYa4GjC79LJx2FoMh
         gphA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject:dkim-signature;
        bh=OA6GdvJeqiN4Ph3TVwCUQIibKNIxhmsnzDhfaxhSSd4=;
        b=R2k4Bv168vxBO992DRXG5Q1CAkA2pKet2oy/V+bmA/Pcgm7DX3R4FCWw8UpLrLCOLl
         rOnQwCZTzeZdzEhU+aZy1bT42IfWv+FFbrfprqnIiKrwmsi9ns3LSEC351C7RRDSuGnL
         JIwQpBzFwiP+iGWygp4cxxFgwNYkRWO8wMG4cEod9DYEPj2K98uYkTTkI/7/qMKFH/NZ
         g/QjyGQ/b5zeV3BKA4sd+7YzJ8CBbv8N+GHmqvEWhMzTvOcMwsABrdOEi2aj2phzeJe4
         CLIMfIQxGu5IMgBb8PGiUjzNbKPLS59vQAZnA5G78Oyzbjm+sn8VM69INzrO0+w7OxCN
         YACQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=EWZcynLC;
       spf=pass (google.com: domain of boris.ostrovsky@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=boris.ostrovsky@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2130.oracle.com (userp2130.oracle.com. [156.151.31.86])
        by gmr-mx.google.com with ESMTPS id z18si420522plo.5.2021.01.14.16.32.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Jan 2021 16:32:42 -0800 (PST)
Received-SPF: pass (google.com: domain of boris.ostrovsky@oracle.com designates 156.151.31.86 as permitted sender) client-ip=156.151.31.86;
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
	by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 10F0FkY3106022;
	Fri, 15 Jan 2021 00:32:38 GMT
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
	by userp2130.oracle.com with ESMTP id 360kvkasqq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 15 Jan 2021 00:32:38 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
	by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 10F0EuK7184276;
	Fri, 15 Jan 2021 00:32:37 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
	by userp3030.oracle.com with ESMTP id 360kep1y75-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 15 Jan 2021 00:32:37 +0000
Received: from abhmp0010.oracle.com (abhmp0010.oracle.com [141.146.116.16])
	by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 10F0WZFP005885;
	Fri, 15 Jan 2021 00:32:35 GMT
Received: from [10.39.240.226] (/10.39.240.226)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Thu, 14 Jan 2021 16:32:35 -0800
Subject: Re: [PATCH 14/21] x86/xen: Support objtool vmlinux.o validation in
 xen-head.S
To: Josh Poimboeuf <jpoimboe@redhat.com>, x86@kernel.org
Cc: linux-kernel@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
        Sami Tolvanen <samitolvanen@google.com>,
        Sedat Dilek
 <sedat.dilek@gmail.com>,
        Kees Cook <keescook@chromium.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com, Miroslav Benes <mbenes@suse.cz>,
        Juergen Gross <jgross@suse.com>
References: <cover.1610652862.git.jpoimboe@redhat.com>
 <02a3b646aa20035c9c700c5b6d7897a9f898ba24.1610652862.git.jpoimboe@redhat.com>
From: boris.ostrovsky@oracle.com
Organization: Oracle Corporation
Message-ID: <e3595399-eef1-bb9c-261d-f09f8b163396@oracle.com>
Date: Thu, 14 Jan 2021 19:32:32 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <02a3b646aa20035c9c700c5b6d7897a9f898ba24.1610652862.git.jpoimboe@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9864 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 phishscore=0 spamscore=0
 malwarescore=0 suspectscore=0 mlxlogscore=999 adultscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2101150000
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9864 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 phishscore=0
 lowpriorityscore=0 bulkscore=0 priorityscore=1501 malwarescore=0
 clxscore=1015 impostorscore=0 spamscore=0 mlxscore=0 suspectscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2101150000
X-Original-Sender: boris.ostrovsky@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=EWZcynLC;
       spf=pass (google.com: domain of boris.ostrovsky@oracle.com designates
 156.151.31.86 as permitted sender) smtp.mailfrom=boris.ostrovsky@oracle.com;
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


On 1/14/21 2:40 PM, Josh Poimboeuf wrote:
> The Xen hypercall page is filled with zeros, causing objtool to fall
> through all the empty hypercall functions until it reaches a real
> function, resulting in a stack state mismatch.
>
> The build-time contents of the hypercall page don't matter, since it
> gets mapped to the hypervisor.  Make it more palatable to objtool by
> making each hypervisor function a true empty function, with nops and a
> return.
>
> Cc: Boris Ostrovsky <boris.ostrovsky@oracle.com>
> Cc: Juergen Gross <jgross@suse.com>
> Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>


Reviewed-by: Boris Ostrovsky <boris.ostrovsky@oracle.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/e3595399-eef1-bb9c-261d-f09f8b163396%40oracle.com.
