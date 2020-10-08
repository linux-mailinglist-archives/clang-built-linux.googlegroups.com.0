Return-Path: <clang-built-linux+bncBDVIJONZ3YDRBPPP7H5QKGQEE5Y6UIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D04D286CB0
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Oct 2020 04:21:50 +0200 (CEST)
Received: by mail-ua1-x93e.google.com with SMTP id w22sf1061445uam.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Oct 2020 19:21:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602123709; cv=pass;
        d=google.com; s=arc-20160816;
        b=sRY84ppAue6DxP8VNOPqOwsvpCc8+eLUpmTCLGbDIXaCiim+9ZmtrLFI65541J+bWe
         9UfdGNEG07gV5Q+RTSTY1Vsx4kXTvaohcaZ6A8D8rGT38HKuTbiZDgqk3uHxBNEDYOhF
         hYvP7c3t8VbXxExo4RZghg1hfISlEAObUtG/G+LPJ95h/dMTANLJhVMoJG7RXvxrFFLC
         ZONwm7fjTw4gnQfL2499mHxxQQBVZlZFnwakmAWMaoBGeyrEK6ir0FZEdMUHGeCbpnZ9
         yj5lR+EMooPSNU5BzGMdZGlrw2RaAsq7AZp25kvlVu6+rCxx0wIo07WhxWCwdJ0efsiD
         d75Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:in-reply-to:date
         :references:message-id:organization:from:subject:cc:to:sender
         :dkim-signature;
        bh=+abKkq3FOgYcX4CLgeds2EKCVVFMYQt6laOJQrh6hHw=;
        b=XK8juKmSSl1XJQzjWRT0YFKr5s64gi+dzqsMsk+BJE+S7bX7YO+NCypSM5uiM0Fi3N
         D0luwbUvLs3xoaS5FI7ibUq+nTNDnVa4eepSeiLDBHunOFQEB/M7YuGCMploqASvxPBR
         vBc0fsH+GFbgg3onoVitmjwz9THAXhwkvkE+ziJt02717S9zTUTf/l4Pj3siBrTuls/I
         5xh5N3ShRG8kmMyN3W9mRFwtKkd7pXllgsHuWTh3R6n0p8Tw8Uz/eDk/ZySqlRvgv5yN
         2N8adG2EwSzd3JBijMrtwNiuvc5jiOA9uOifnF1n3Vpu7Xiyl0dWdq3Eb0AT9J+noUgN
         XUvQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b="LFelTi/M";
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:subject:from:organization:message-id:references:date
         :in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+abKkq3FOgYcX4CLgeds2EKCVVFMYQt6laOJQrh6hHw=;
        b=YiCW5ehP1otz0308QImNMcVnr5vSVhM9y9+VEhScG+vVn56zAIUuHLYEJwWnlYRufj
         721e5q4u2qIjZHFhyeMrl+sIOCoZcUmwY5PNK/5/cFby3FfaLDlnacnaduyUEfdw54pA
         Yz2NnWSURWOY/TVkdTqc1vsLHaeOZ8XryUBU6t/OniW3lhCO9HxkjFR5luCtcgSbePHF
         zKDjgzLYpdQ52DfjPDszs5SgVXFwHzNpQAJfDeDSAVCNnB/nYIWqypjmA7R800YxQX6y
         ej/7oQekY3Lh1JcsZRuAUKmB0fwqnU8i02fjqR7x1IIYAa5qfiBeNJIW55/FLB5XmP6V
         SbZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:subject:from:organization
         :message-id:references:date:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+abKkq3FOgYcX4CLgeds2EKCVVFMYQt6laOJQrh6hHw=;
        b=hpQmJGlRKghjetH0Yuh/gOv7l/9F2Wqu/MO0jNlppchEQhqM+SEAABh17Cb3N0MKTZ
         46c0rBxzGH0QoqOu7VFopRvKHhJ2H0rz+jHnS0qNjfVLEm/Zov5r2K25pDjNo1pPgDux
         vdsCKYpU1XI0wewz+LGKDxnWdUON7CxOBvcCUGbFkG08iSWC4PjVEK5PnEUMQ+9skPgA
         ZGm7Fq8zApiaKm4KRjiiKcHfhxBrhQBNrKYKqLUB8j5PtQOSY+WQxUauzcU9pGCeKK6N
         4TAXd5tsh0NO4aM3CTMH+8y+BPHdN9JwXPybVpI6F7Fw5DFtNCvtg7pNYF5qMukZo/G1
         cwdg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ZqDcx3RYezmRysjWc744HgSksHj2x6du4xgwXMKJ0fbYfP+4T
	2eMOJsqohCsB44owkxbcgA0=
X-Google-Smtp-Source: ABdhPJyffGfa3XLlx3xW1Jz0OYEzt0gPcX9zG6qGyuwWiGtAwo7q7cUqi4o0htFi+basW+jLtAe9Rg==
X-Received: by 2002:a67:1804:: with SMTP id 4mr3364583vsy.54.1602123709569;
        Wed, 07 Oct 2020 19:21:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:40a2:: with SMTP id i31ls285661uad.9.gmail; Wed, 07 Oct
 2020 19:21:49 -0700 (PDT)
X-Received: by 2002:ab0:30d8:: with SMTP id c24mr3448849uam.120.1602123708984;
        Wed, 07 Oct 2020 19:21:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602123708; cv=none;
        d=google.com; s=arc-20160816;
        b=DESwdaPjbx6zRfKnQUCl8yVsszKH4iYuxJVpU9WtFdPOrO+DGwyF9zdBLESpOhEmnJ
         Iv8Bg73dd+GG4tj8xyrSkBDw4dt8gSN6ExjfDewVmlmD1wMZlph8NkpBoqkn1UjOKvWU
         b/i+S1gAnG5SOZg25tmGQ4wS7tjJ2N6iam8kDdqH7AYjEiyJ9CvlegnrE0MdAp0T5Y79
         biNcXNY5Vq5PI95Yb9grhQb2UVU/htqieTIoQSxh1g5EDYCpL2wUo17xm8SD0aCgGtVT
         //Y1w7uGx+7lEBL7OBC7+3WsSGamOjyJ6qRYRG3ayKmRFRFcI6z+u2IAIpgtRKE3RkcF
         G/bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:date:references:message-id:organization
         :from:subject:cc:to:dkim-signature;
        bh=zcmG44xznlrg+QSPUoqWB8ND72BytUbbk4I58Oj+LC8=;
        b=Lifdi3tuNsN6cc0/BkYXiOd0LPdlOxNawz2tenMfSzTsyenHminCZUBTYjq3aA64qt
         7ZCtONUnMNAR+nYZJId40a8Ee70Sv0yXdz21XDrGWlycXVdiGx1eAAMV0cdWmeH0GUh8
         WIYjVZq/6w6f3DHhowl5aR4KJhXVlaVGwUsHrE1HPfbE0TVjwgkXTVKF/mTpdWReIcF/
         fouNsi6M2I3e7U/97NaRPUYXbjfIX7krDDU9YU58o0LIIaRHcopZceWdnP/mT7GTqdPO
         tHF4Lt2YdgwpBoe3W3ip9EWLD/NwK+DFzNWmLZp/2m1vZuY3b+3szUxYncIb0XW3IE+d
         XyeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b="LFelTi/M";
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2130.oracle.com (aserp2130.oracle.com. [141.146.126.79])
        by gmr-mx.google.com with ESMTPS id p129si194974vkg.3.2020.10.07.19.21.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Oct 2020 19:21:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.79 as permitted sender) client-ip=141.146.126.79;
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
	by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0982LkeA182285;
	Thu, 8 Oct 2020 02:21:46 GMT
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
	by aserp2130.oracle.com with ESMTP id 33xetb5aaf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 08 Oct 2020 02:21:46 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
	by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0982KDS6031217;
	Thu, 8 Oct 2020 02:21:45 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
	by userp3030.oracle.com with ESMTP id 33y380bxgn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 08 Oct 2020 02:21:45 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
	by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0982Likc003339;
	Thu, 8 Oct 2020 02:21:44 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Wed, 07 Oct 2020 19:21:44 -0700
To: trix@redhat.com
Cc: njavali@marvell.com, jejb@linux.ibm.com, martin.petersen@oracle.com,
        natechancellor@gmail.com, ndesaulniers@google.com,
        GR-QLogic-Storage-Upstream@marvell.com, linux-scsi@vger.kernel.org,
        linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] scsi: qla2xxx: initialize value
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
Message-ID: <yq1d01tzcdf.fsf@ca-mkp.ca.oracle.com>
References: <20201005144544.25335-1-trix@redhat.com>
Date: Wed, 07 Oct 2020 22:21:41 -0400
In-Reply-To: <20201005144544.25335-1-trix@redhat.com> (trix@redhat.com's
	message of "Mon, 5 Oct 2020 07:45:44 -0700")
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9767 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 bulkscore=0 spamscore=0
 mlxscore=0 malwarescore=0 suspectscore=3 adultscore=0 mlxlogscore=667
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2010080019
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9767 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 spamscore=0 mlxscore=0
 clxscore=1011 priorityscore=1501 adultscore=0 mlxlogscore=699 phishscore=0
 impostorscore=0 malwarescore=0 suspectscore=3 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2010080019
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b="LFelTi/M";
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 141.146.126.79 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
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


Tom,

> clang static analysis reports this problem:
>
> qla_nx2.c:694:3: warning: 6th function call argument is
>   an uninitialized value
>         ql_log(ql_log_fatal, vha, 0xb090,
>         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Applied to 5.10/scsi-staging, thanks!

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/yq1d01tzcdf.fsf%40ca-mkp.ca.oracle.com.
