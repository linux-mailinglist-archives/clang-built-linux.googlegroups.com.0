Return-Path: <clang-built-linux+bncBDVIJONZ3YDRBOUJZX6QKGQEMZLQL3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 39D3D2B57E9
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 04:34:20 +0100 (CET)
Received: by mail-pf1-x43c.google.com with SMTP id 144sf13794278pfv.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 19:34:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605584059; cv=pass;
        d=google.com; s=arc-20160816;
        b=WiyF5m4NIXyloUygjdNduY5vfU5YIHS2gahUAmEgDSsj6KhmGiwHhxpNGBwFfHHa2s
         oOxgfKhVHGfWOeHqx19zFo3OpjSvws3NQsEH3CmXSJY7aImHzYGuSl7dOEJ8/uJFftVp
         h9P/dAno4bOgXpgrB7n3yATZrCuhCOXUvqxAB6PFrNxWMWGrJjA/Am6LyE2mroWlGamV
         1XhdMR3HPklMI5VFM3lKsUJW/ZwL6d4iw19TIcAKC/jKLMx0bc4KtxDOaSgI18fqELDf
         fAkZkipIz+d90kQISusjw0+jdU5d43oYByWxyu7P7miVVL87McVx7W6g3n29DkFkmjJ8
         hXtw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:in-reply-to:date
         :references:message-id:organization:from:subject:cc:to:sender
         :dkim-signature;
        bh=t7vg8i75wAr16v51mOCKwHugXdgN2dY1mCeLpVfXMPw=;
        b=uTk9XELBKuyES48bsl3F+tHHwdCxFYtFFY2OWGgbGSdKu4S/oOaUaOFB7zyrVEurPt
         1KZs/m/MZMf+Unsp391ft0eg7Vbqs7xo9X/FQ7dQfQpHAPuIQZ3mB7zqy2LkCOg1+X43
         UOE33egLlqNVuIrGcT2p6QQqx8Y8tXmdgaHdRnWSzE+IVmuzSZPNt/of0tfSTFL/neti
         Z8JpdC0HJL8XTQQ4wM2gS7XwLj9Xui7oCOVSUEulk07gErlKt9wFLwzCA0FI+6+rG/FG
         VQ3o3HeVMTG8wIgWYdIxdMOV+SaDRx+iiavyT8egRTgUfdEZradoouj4uoKsPZ+SUuNQ
         9c/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=rHI+0fKL;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:subject:from:organization:message-id:references:date
         :in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=t7vg8i75wAr16v51mOCKwHugXdgN2dY1mCeLpVfXMPw=;
        b=EaQQK8da2c3CUIFA7dQyLV5TGcFeMYiEXvQ3wKAUTtdsJCVvPQVeB6HLMArYmeKWIu
         z6tXLq/aGRqnpwPNGQFgEck5Y5dIYJyg5JZgitJDJiemF/id0e51WO6c9EUL6+3xmgpk
         HtYJCYMGfkwRyT9jPHZSIs3+ktR5moqXz9aFdXMG3AqcmcywSuHRFTfaYxlfIbfH/B/I
         izf40ksXth1X+IOVXPmcuiQX8fhGkDu+Kd+vIkpXdfSLh0X44uDEUQ6RfZYZi2JCoX5z
         DHyH/TfWVzROpNY7AE7RyLIsYdNdV6k213yIDeS97IPLTWgxDOj6QDgyL+chg+72O8xD
         5kYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:subject:from:organization
         :message-id:references:date:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=t7vg8i75wAr16v51mOCKwHugXdgN2dY1mCeLpVfXMPw=;
        b=mqEvkHTs9/BJh9TMX8ELcIUi4X3Ky8BGq1TxNFtj6grziB+OXpapkv4BZRnM1dZF02
         zDGmUL3bkJqvrc0ecyKE/tu4jvaffonLn12o7BhRTyXSFnRI8a5UqCy4YY5d9TVnXMIX
         nqazzpf3CDCKKoso5WuZ5ZP0kqdnww440X0aOFOpMzcC5UaVqxXkm2499gjs+PTIJfS5
         U/FHk7lhhEwyJO5X4ZpDcvfIg85JjhpuoWMuCkh8aPA/FnlBSl5OQt04LNQ+5xibLkMY
         SBiHkmVtlNqMiPYGDytjFkRDVyx3rpnSmgrTytxMZlAUjxdMmwYIeh3ayqEt0PFlA7kS
         0VxA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53342mHXgzLxUF0kXzR/BlVscBVxMnrXNNPIUYlrtQDAwBPTD2wv
	Rr6bSpIrr3YYsQJTxTR6MIo=
X-Google-Smtp-Source: ABdhPJxpcJRbVYA60C/rFuCj1MDMGYCpZ3DEmeGM9QxQMKSE8aRC7mCOOOz8UZ9sXgbw+aPFpFbb+Q==
X-Received: by 2002:a63:7b55:: with SMTP id k21mr1893331pgn.256.1605584058961;
        Mon, 16 Nov 2020 19:34:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bd01:: with SMTP id p1ls32556pls.10.gmail; Mon, 16
 Nov 2020 19:34:18 -0800 (PST)
X-Received: by 2002:a17:902:6b04:b029:d8:d392:7791 with SMTP id o4-20020a1709026b04b02900d8d3927791mr16020711plk.47.1605584058393;
        Mon, 16 Nov 2020 19:34:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605584058; cv=none;
        d=google.com; s=arc-20160816;
        b=RGBsMpPeanKFnJZTmYctivBy21u6flKYxaUaL7PCpqc1AeE0yHU6JjDjame/ujOJpk
         wbefaadSM+MtGfJVej1ke8bkpFmEl7N34oV5NawVUvu5bXuplHTldX3HekidCnPvRiVQ
         CNUywjC+jJbABH6zh8Jwn80iorucylnOT1pdPUOPlvYLZ868I54MOIUY2ECAkTqJBi1H
         w5WRYG0wvrukTd8lRQUYETH1Yw0QNupH7GavGsThV+q7UuykcXaMNmEnc1DWkQi8JkDB
         e1XqULT/f7PecsNAGkAC0MEuXmneb8r6WHHN0X6c3GhKY/Xa+uu2JZD6nmWfVbWd+tfa
         fyqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:date:references:message-id:organization
         :from:subject:cc:to:dkim-signature;
        bh=H82J0ueyDaWBzhvDdYKhMwH3WryqxDEz4KhE3KN/5mw=;
        b=WIdAX+C+SgkDlmvV//yI6WBxUXRs2up2CPyX+8POYh+RwZTMU80OKbgDx2nq9jzSh8
         XcnEXuyPpmkSLJHPhKw5FC/JTAg8m82kEc24/tfU/KzHO7tmMdHci21BjdHt4J2UUm28
         6c+ODca8JdoPW6aCeCHReP/uekbPWikpYjnLlcRBKxN9/ZDs7WAWm4dt2y/jafUhvTbc
         mRO22VmgL5Y004JGR6CTXxvGsHYbRL630xERIHDuCor4Z1DJTdRqPNqmH9j+Qx1v1t2T
         40o/akceOvsEueKH62Bqpt1fnGCwTlnpKDsUo02rB0wx9oBO6ijPRuipM0NEw8xp8NlB
         PXPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=rHI+0fKL;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2130.oracle.com (aserp2130.oracle.com. [141.146.126.79])
        by gmr-mx.google.com with ESMTPS id o24si112223pjt.3.2020.11.16.19.34.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Nov 2020 19:34:18 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.79 as permitted sender) client-ip=141.146.126.79;
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
	by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0AH3OCiV069379;
	Tue, 17 Nov 2020 03:34:13 GMT
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
	by aserp2130.oracle.com with ESMTP id 34t4rarghq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 17 Nov 2020 03:34:13 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
	by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0AH3PQEw087421;
	Tue, 17 Nov 2020 03:34:12 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
	by userp3020.oracle.com with ESMTP id 34ts0qahvm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 17 Nov 2020 03:34:12 +0000
Received: from abhmp0016.oracle.com (abhmp0016.oracle.com [141.146.116.22])
	by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0AH3YBS8014723;
	Tue, 17 Nov 2020 03:34:11 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Mon, 16 Nov 2020 19:34:10 -0800
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: "James E . J . Bottomley" <jejb@linux.ibm.com>,
        "Martin K . Petersen"
 <martin.petersen@oracle.com>,
        Nathan Chancellor
 <natechancellor@gmail.com>,
        linux-scsi@vger.kernel.org, linux-kernel@vger.kernel.org,
        clang-built-linux@googlegroups.com
Subject: Re: [PATCH] scsi: core: fix -Wformat
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
Message-ID: <yq1wnyk64id.fsf@ca-mkp.ca.oracle.com>
References: <20201107081132.2629071-1-ndesaulniers@google.com>
Date: Mon, 16 Nov 2020 22:34:08 -0500
In-Reply-To: <20201107081132.2629071-1-ndesaulniers@google.com> (Nick
	Desaulniers's message of "Sat, 7 Nov 2020 00:11:32 -0800")
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9807 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 adultscore=0
 bulkscore=0 suspectscore=1 spamscore=0 malwarescore=0 phishscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2011170026
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9807 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 clxscore=1015
 malwarescore=0 impostorscore=0 lowpriorityscore=0 priorityscore=1501
 mlxlogscore=999 adultscore=0 phishscore=0 suspectscore=1 spamscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2011170026
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=rHI+0fKL;
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


Nick,

> Clang is more aggressive about -Wformat warnings when the format flag
> specifies a type smaller than the parameter. Turns out, struct
> Scsi_Host's member can_queue is actually an int. Fixes:

Applied to 5.11/scsi-staging, thanks!

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/yq1wnyk64id.fsf%40ca-mkp.ca.oracle.com.
