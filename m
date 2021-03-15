Return-Path: <clang-built-linux+bncBAABBDWOXWBAMGQE5YXSICI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id DB37933B521
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 14:54:23 +0100 (CET)
Received: by mail-qv1-xf3d.google.com with SMTP id h12sf23051070qvm.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 06:54:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615816463; cv=pass;
        d=google.com; s=arc-20160816;
        b=juP20LdXAkmOj0cLFRZum/f4DgBQGseW3NetoSp26f9srD08lOanrsX4DGUgx/qxni
         16IPNeBuzGHBVPE65n/iBQaoEhmB2fwzlDPzemEVsjVrzBK4W3rEWTIB3vOlKSKcQwu4
         pnSw85XaLxnra/y3ji8IMuvL7l0MNaVHLskM3Qon9SjwZbmutCaGgrzLa9uaJZkZrnij
         mf1u7/ebIeynRnH8s32hOvC9hGi+uD50VpdzMendGIv0CiNghTbJB3ZBsj/mdaxGZGcC
         O96FZjJ563uEMcRFCb6RNiU7wUR4DwcRhAAecNPk0p3p04L4oO7W6xJ9cC5EwUZHeTFv
         VWPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:date:message-id:from:references:cc:to:subject:sender
         :dkim-signature;
        bh=coSEVSzvfw9hVBlP8+dK/221PKGeaWV82AhemiJRF0A=;
        b=jab91DoD9zEaiKXyIbZzWTfK/UirSyq9i/CYGOzP5yat7f5LdAql9rhqybIxZ/D/aj
         3uXdl5tUJVSDNuHIiWCs3UTtxiTGkEo2NWTIe05snnKTrDlQBZaY9pRPxBh+zmetnHoO
         NX2QI2V02UVkT/liJR93WJixaUEYIe671D5GEcQVh1UR1Ez5Bg+6ndxbNApFUthxDWFD
         YwXroULV5BAywStaqKUDY0FCk3SiqHvSv2oO3cymfmvoCmCcPAPSuJBdczjm4P8neyBT
         uTWagzmNMNk/wzBfOKtYXyz8D01tQwjZc3QqbjjakT5WRBov3/754pLwv1gxuSaQd+Cg
         sLpg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=cMzteEjf;
       spf=pass (google.com: domain of oberpar@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=oberpar@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:mime-version
         :in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=coSEVSzvfw9hVBlP8+dK/221PKGeaWV82AhemiJRF0A=;
        b=lFL73FskXjo63ONJQ9F156PNNJhVBxxM6Kf8oooMYpIeKxXC6OwUpv4vLtd85TTRgm
         eV3TB0z+C7KWeSOgBviqvSs9tQLiqAZWaFL5xv600Qi/yIfCzlITLNVffiFmfM5P9C/K
         NFtd8jm/DlJwR8Axxw9lFPWhHGRCKcytZYTyOq/CDDM95iwkvPyvfnoUi9o+iGJzQSzA
         uXco+I9Lx/aIPFdh0lY6ZjJtAHiKN32+mG9aIsA7ecF6n55dKRE42drpTm7xF4wDG5fg
         lG8JzXPqDdKyp03ijWOg83bB3uPTzKaNach3Hy3dO4a/9DZE557D+V/RfKUDNfdqheZt
         kiHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=coSEVSzvfw9hVBlP8+dK/221PKGeaWV82AhemiJRF0A=;
        b=qyNUGQ5bpdgnwkzbgNHt+Skge+7U4xb02vn3H/wWxwjo3bo1Oc+3HKhcJ7W2ZArd6j
         GpwJYeEzXUmuOMmQJneMoLr6KrZ9Xq40rXreBqPOUEMgMBUomLmoJpaf6o3QfTOSjHOf
         BzNzZ3tIIAnmBxZunXS62pFOX9tDgL91BASxDqB7zJPeSpYS3nSdex77i00EE6WdTYG7
         EPO/4l3nzhayjig9osaY50gmbo+yxMUbonN8f8QOfN8K3uDV9Z3bvKVhjWy9dPCQT/1O
         jgK6KB49PMguFfQZYxAlQ3KaX+IfbOkncBqInBa4IoU0S/AqHXtV4cULO979Kqrcbzc0
         P4JQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532gsnEV4Bpc4nIgxtjDcKsX44w+S35oAh84sUtrgtMx1p35vhUJ
	DYjOqOGF5r3BWd+ddWUnQsE=
X-Google-Smtp-Source: ABdhPJxs0fFc7Z/18JvaPb9Ukr5EJMH2KCr/7Tew3+28WZncXrYvH1zhxj4ps8ZxqZFwQq2Z/2WuuQ==
X-Received: by 2002:a37:a48a:: with SMTP id n132mr24450986qke.359.1615816462839;
        Mon, 15 Mar 2021 06:54:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:56ac:: with SMTP id bd12ls4326093qvb.3.gmail; Mon, 15
 Mar 2021 06:54:22 -0700 (PDT)
X-Received: by 2002:ad4:410d:: with SMTP id i13mr10600602qvp.44.1615816462485;
        Mon, 15 Mar 2021 06:54:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615816462; cv=none;
        d=google.com; s=arc-20160816;
        b=AYKsa1T/PDxeU6YDQciUM/sh3fLAIqKjkC1sgW+2PYdatkfsSAeojSFq6BS0Q5wPBq
         w3yb1VgL8wtJ6GWE1EYEMHBeHWsmTUJtx4noAq43jfOiXOLzoOa1dgrY2VmnKqeV9+QN
         WbCGcDuaiAtRKbAwZ2tN5kKKYDLrcVqgeb0EFXCHQgB/yvkgbUX6QG3K/DCOQMz7L20Y
         643NL7BnHXxW3gIBT5B1kBvRmkBz3uk+xS+gWPSovCGAFo4F1/2K8X98udNCN7Va3Qrt
         cUxnxUsdFGpmnRfjQj6asJJB5gtcNJEdU7bfF5PQhXdy877MaqqCNtfL+xBTGTNUQzSz
         hOzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :date:message-id:from:references:cc:to:subject:dkim-signature;
        bh=IMkMB83HLmy5GJEh4yVZw4JAkAog+mf2q4x9F90mJgI=;
        b=F90AOtA5KZj2PGaVHVk4NeK1iPBAmoMh5ppFV5uaeiy6lwVphLqqZqtM5D6+ynemKG
         8lSnL8Un0TQZlCWi6VXOv9XrVUCgbSm2aLiMV71Kd1NHYRjeQgcALev7U6MinkX7NR8o
         2azTkOZXjbqtphX9oR4DUT9dFcijLqZyh2EEKxyyOLP8gky37+W8RRjK7WaYBe8Optnl
         XWJwDypZaeQ76ZyoKgMG5hGHahLf4V/9Z+X3QRKud9gOKoQJUxzi8+LDpdj4pRiH12q+
         fGS4jnCprlcoBDTXl/eGlNqnVP2CnV3qEpnNiSnDYf+oXRS8pzIsHcT3Hl0uNNplnY7B
         Vq3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=cMzteEjf;
       spf=pass (google.com: domain of oberpar@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=oberpar@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by gmr-mx.google.com with ESMTPS id w22si73251qtt.0.2021.03.15.06.54.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Mar 2021 06:54:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of oberpar@linux.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0098404.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 12FDfc6W015275;
	Mon, 15 Mar 2021 09:54:21 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com with ESMTP id 37a83y98mf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 15 Mar 2021 09:54:21 -0400
Received: from m0098404.ppops.net (m0098404.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.43/8.16.0.43) with SMTP id 12FDjrXO038483;
	Mon, 15 Mar 2021 09:54:20 -0400
Received: from ppma03ams.nl.ibm.com (62.31.33a9.ip4.static.sl-reverse.com [169.51.49.98])
	by mx0a-001b2d01.pphosted.com with ESMTP id 37a83y98kf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 15 Mar 2021 09:54:20 -0400
Received: from pps.filterd (ppma03ams.nl.ibm.com [127.0.0.1])
	by ppma03ams.nl.ibm.com (8.16.0.43/8.16.0.43) with SMTP id 12FDq5Zs005166;
	Mon, 15 Mar 2021 13:54:18 GMT
Received: from b06cxnps4074.portsmouth.uk.ibm.com (d06relay11.portsmouth.uk.ibm.com [9.149.109.196])
	by ppma03ams.nl.ibm.com with ESMTP id 378n18hwrw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 15 Mar 2021 13:54:18 +0000
Received: from d06av24.portsmouth.uk.ibm.com (mk.ibm.com [9.149.105.60])
	by b06cxnps4074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 12FDsFwW46072170
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 15 Mar 2021 13:54:16 GMT
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id D318942049;
	Mon, 15 Mar 2021 13:54:15 +0000 (GMT)
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 8B93D42041;
	Mon, 15 Mar 2021 13:54:15 +0000 (GMT)
Received: from [9.145.154.43] (unknown [9.145.154.43])
	by d06av24.portsmouth.uk.ibm.com (Postfix) with ESMTP;
	Mon, 15 Mar 2021 13:54:15 +0000 (GMT)
Subject: Re: [PATCH v2 2/2] gcov: clang: drop support for clang-10 and older
To: Nick Desaulniers <ndesaulniers@google.com>,
        Andrew Morton <akpm@linux-foundation.org>
Cc: Nathan Chancellor <nathan@kernel.org>, linux-kernel@vger.kernel.org,
        clang-built-linux@googlegroups.com, Fangrui Song <maskray@google.com>,
        Prasad Sodagudi <psodagud@quicinc.com>
References: <20210312220518.rz6cjh33bkwaumzz@archlinux-ax161>
 <20210312224132.3413602-1-ndesaulniers@google.com>
 <20210312224132.3413602-3-ndesaulniers@google.com>
From: Peter Oberparleiter <oberpar@linux.ibm.com>
Message-ID: <b5df9160-0c7a-8e68-dee5-569d4c4c8d8f@linux.ibm.com>
Date: Mon, 15 Mar 2021 14:54:15 +0100
MIME-Version: 1.0
In-Reply-To: <20210312224132.3413602-3-ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.369,18.0.761
 definitions=2021-03-15_05:2021-03-15,2021-03-15 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0
 priorityscore=1501 mlxscore=0 malwarescore=0 lowpriorityscore=0
 phishscore=0 mlxlogscore=797 spamscore=0 adultscore=0 clxscore=1015
 impostorscore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2009150000 definitions=main-2103150096
X-Original-Sender: oberpar@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=cMzteEjf;       spf=pass (google.com:
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
> and llvm_gcda_emit_function() in the clang-11 release. Drop the older
> implementations and require folks to upgrade their compiler if they're
> interested in GCOV support.
> 
> Link: https://reviews.llvm.org/rGcdd683b516d147925212724b09ec6fb792a40041
> Link: https://reviews.llvm.org/rG13a633b438b6500ecad9e4f936ebadf3411d0f44
> Suggested-by: Nathan Chancellor <nathan@kernel.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Acked-by: Peter Oberparleiter <oberpar@linux.ibm.com>

-- 
Peter Oberparleiter
Linux on Z Development - IBM Germany

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/b5df9160-0c7a-8e68-dee5-569d4c4c8d8f%40linux.ibm.com.
