Return-Path: <clang-built-linux+bncBDVIJONZ3YDRBPFOXP7AKGQEIOJ6Q4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 317F02D201E
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Dec 2020 02:30:38 +0100 (CET)
Received: by mail-oo1-xc3f.google.com with SMTP id i16sf1018121oos.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Dec 2020 17:30:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607391037; cv=pass;
        d=google.com; s=arc-20160816;
        b=xemNdal7jryF2OVNgncB26h0e62/38cN7vT9DgOnMN+qdVfk+wT4oWWZw9RnTkmiBO
         aB7ewlB9FxyGgpq2vhP9X14MclUJou6P4zke0dMrs7SYdfzjZA4CHJn6oPkgw/LQ8i3a
         Grj+nZ+x2ig6fYFiW6s2W3aJ2G8oLDnzgY4k8zeLXEtM8HdSAOTfb3wFNqECD22SI6KS
         uGJqgyaRKbWcWKYZMBa8/pOp9SOojtF1vSZ9fi+/PA24719RFIEQAKhcC1GDzHNYe/dp
         LDB+UyjR/xCNxg3D5lBcmsldhhs9B8z2T5WGoUHJBwLvpNehADfui5TfM4RDRYxKouLW
         /F7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:in-reply-to:date
         :references:message-id:organization:from:subject:cc:to:sender
         :dkim-signature;
        bh=O9wlDfb5nHwDwWhpSq7FF8lz7HH89Npu4i6xb/KBI8k=;
        b=e3NjKwBCIwP6P8n5NE+fArZtIgvXhkGEi8eZ+3Y4X+QZtMOC2wqN4eQJYrdCMgnJcz
         8BeJNkzqvl4ZFwGTIxCftQqriusWFhKHRR/vRPcfdyASxweWuGzevyWLd5df6r2UhD/d
         38FZRYdyCAFOevVbPob/xjN4IKrKQ6rv9MYHTighOYEScCfPWIaBJVCdzHvPlPA3p/KE
         e99ykaD1eejlm2pe2/GB9EYHpSyeBvy8u4W4j4TpVxYbGNT7sA7Vr3nUWFswVJsZPzCC
         izCDv3jaAP/KANcd3nPJny53uOuWnwuaf1zCHx24DrNURT2hmED4f4HlMoquKi41DbVd
         XArA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b="wEuk4/W9";
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:subject:from:organization:message-id:references:date
         :in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=O9wlDfb5nHwDwWhpSq7FF8lz7HH89Npu4i6xb/KBI8k=;
        b=i4PURLEgZ98jx7DkghkX0AZ+Zms9fTusOG7Nb62+5bnHD+YUshzHS+zwsHwhKA6JeS
         CUhf58uJu92yRAtXM/3v44c1OiH2kLtxtQXMTCfRhptaVnKhjn43T3XsK/9X4VEwgoBe
         8eE4lN/OiKsBY7D6ns3wfNXt/ki8eOQjWwsnpCB2ZWrPRQO0daVn8oFL0hpqhoNYl6Af
         SZ0P9YMnu41N5duYnxMfw+sszje5aIVI3wlc2zbzAqYZAY1gWEKubkgWAqCbeyOzZgY3
         YuGGbmzut15WkDF71I+N2+J07JAQjPQGUoH5PEj02GFMciy4nebGFVxDc6/CUC2Qq3zu
         QTOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:subject:from:organization
         :message-id:references:date:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=O9wlDfb5nHwDwWhpSq7FF8lz7HH89Npu4i6xb/KBI8k=;
        b=seOkxtYlSW+lcdUosjWk+aparwgQEmhBwHUjoyRpYHkCxEr1DrdbvQTLqTVq2zfAxk
         CCDDNnqHko7VFxtfdyOCFGMrlLNoeihs64rqgBjUNoHja6T9FrUk/79KojEw4upkDuqf
         XNGkQRdSEvUWtYYz0TReHutKano+we4POAeGqD+48tfobZLKNGenyZsIp1S/XeVm/UT7
         7oxDbqroDLGzRsAOmzRQEzMp6UUXcAaQEAFxNPsJ8VYqHQxua9tFz/1hHubZqgf3Floa
         4RwSH7tmFERLLVaN0s1SkidnjGubxpdyBgzZ5mCXgOr2orJjxMkQx9qbaV7jfLhAfsuc
         blyQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533lyEAU7JnFwC3jpuC7e6eEUuD9Pqe8ILGlSK6VtijqL6v4hQTx
	8nQ/8nTF8j3Dvk2JWKOoGpM=
X-Google-Smtp-Source: ABdhPJzidL6gCOJd/8dV5rTsO9mMOaygmfOyHzJg50YMtVnvA1Amq6CtOwwbmGGA1jA7CRz56XaLfA==
X-Received: by 2002:a9d:3b36:: with SMTP id z51mr7776928otb.272.1607391036795;
        Mon, 07 Dec 2020 17:30:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:8c3:: with SMTP id 61ls4666457otf.6.gmail; Mon, 07 Dec
 2020 17:30:36 -0800 (PST)
X-Received: by 2002:a05:6830:210a:: with SMTP id i10mr15082797otc.145.1607391036342;
        Mon, 07 Dec 2020 17:30:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607391036; cv=none;
        d=google.com; s=arc-20160816;
        b=VWilmfngzcD+g0Nm2gGL/NeWagAGSeVM6wPMDPQXOYr/f9dPyXV9kCL0gTqjyZ6wLn
         CeUqN6s0yYSSqUhpaF2hH8JnYF++t1psYBwOmZAtYyylmZismhLVujxkPvUBPykLglpw
         bn9Fc5Wluoe+4oXlS9JKXVyMEdlRasFMBSkt+nGadUHVLRjangKB2+DOwYp/EM5KAyO5
         qoQMQlrZ8lU/5c/VqG9m4p/Z9zukElKzHAIi0HTa/NzNVCh3o/otfL0XTGAW9g7Vju2V
         4HIvH0GyIvKY6pmznfLRjlf180Af6+eMR0D7i4YCVag6I5KuZZrlP2dfoPNvTCLqe4Vd
         mE9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:date:references:message-id:organization
         :from:subject:cc:to:dkim-signature;
        bh=sYcP+zt4qLnmC4XoPneH40sjSPVxmZGxQb7RF5dynPI=;
        b=0wJVUJL/dsj4p0DdnPEcjBmn/xaSUKZ48AIEUEVERBFluaHiQ1lUupq2wD2t1UaE0k
         tHbuJ8RMVt+5f9VU5mDtFlGHp40yOENRmdcoFj8tAcUn9nILmxRQOa41ZVAXwFmrCR9B
         x5QFdfO7D5OwUH/EbShsc4bCku6Nmjxx5R4VIOu14TH3NRQyOcUHe0EoqZKadgArSpOC
         V6Q/cE1XQcb14bbUQePfaG+d6a1KugR08P+Zql6GMSwFxFWlvpii6X1ggWXx1QndkQeC
         wYFwlROcuH0a73TqME6bTLZ4Hl0Rz3LeVYFjEyu52tyNYWYT2cSHyfL7B9zp+YZBlYaZ
         45HQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b="wEuk4/W9";
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2130.oracle.com (aserp2130.oracle.com. [141.146.126.79])
        by gmr-mx.google.com with ESMTPS id p17si914440oot.0.2020.12.07.17.30.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Dec 2020 17:30:36 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.79 as permitted sender) client-ip=141.146.126.79;
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
	by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0B81TGqD103681;
	Tue, 8 Dec 2020 01:30:25 GMT
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
	by aserp2130.oracle.com with ESMTP id 357yqbrhcp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 08 Dec 2020 01:30:25 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
	by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0B81TfcN117394;
	Tue, 8 Dec 2020 01:30:25 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
	by userp3030.oracle.com with ESMTP id 358m4x2kw8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 08 Dec 2020 01:30:24 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
	by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0B81UI2C004546;
	Tue, 8 Dec 2020 01:30:18 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Mon, 07 Dec 2020 17:30:17 -0800
To: Arnd Bergmann <arnd@kernel.org>
Cc: "James E.J. Bottomley" <jejb@linux.ibm.com>,
        "Martin K. Petersen"
 <martin.petersen@oracle.com>,
        Nathan Chancellor
 <natechancellor@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Jaegeuk Kim <jaegeuk@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Alim
 Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Stanley Chu <stanley.chu@mediatek.com>, Can Guo <cang@codeaurora.org>,
        Asutosh Das <asutoshd@codeaurora.org>, Bean Huo <beanhuo@micron.com>,
        Bart Van Assche <bvanassche@acm.org>, linux-scsi@vger.kernel.org,
        linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] ufshcd: fix Wsometimes-uninitialized warning
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
Message-ID: <yq15z5d13vl.fsf@ca-mkp.ca.oracle.com>
References: <20201203223137.1205933-1-arnd@kernel.org>
Date: Mon, 07 Dec 2020 20:30:14 -0500
In-Reply-To: <20201203223137.1205933-1-arnd@kernel.org> (Arnd Bergmann's
	message of "Thu, 3 Dec 2020 23:31:26 +0100")
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9828 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 spamscore=0 suspectscore=1
 bulkscore=0 malwarescore=0 phishscore=0 adultscore=0 mlxlogscore=975
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2012080006
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9828 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1 mlxlogscore=987
 clxscore=1011 malwarescore=0 bulkscore=0 phishscore=0 adultscore=0
 spamscore=0 priorityscore=1501 mlxscore=0 lowpriorityscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2012080006
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b="wEuk4/W9";
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


Arnd,

> clang complains about a possible code path in which a variable is
> used without an initialization:
>
> drivers/scsi/ufs/ufshcd.c:7690:3: error: variable 'sdp' is used uninitialized whenever 'if' condition is false [-Werror,-Wsometimes-uninitialized]
>                 BUG_ON(1);
>                 ^~~~~~~~~

Applied to 5.11/scsi-staging, thanks!

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/yq15z5d13vl.fsf%40ca-mkp.ca.oracle.com.
