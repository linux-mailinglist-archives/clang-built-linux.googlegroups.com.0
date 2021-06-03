Return-Path: <clang-built-linux+bncBC7457HKSMPRBCUV4SCQMGQEAG3FOEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-f61.google.com (mail-oo1-f61.google.com [209.85.161.61])
	by mail.lfdr.de (Postfix) with ESMTPS id 0371339A682
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Jun 2021 18:59:56 +0200 (CEST)
Received: by mail-oo1-f61.google.com with SMTP id o2-20020a4ad4820000b0290208a2516d36sf3897963oos.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Jun 2021 09:59:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622739594; cv=pass;
        d=google.com; s=arc-20160816;
        b=EFa4ojDBUpcSiWTuvU1s996VVWaq5kak8d8xrRl/moFWjcOluaVAFDN1mKlIPTucXN
         /fkR8oS4oJ2aY8Pg4cvsWbuOwYLTCSptYLmoSPx2TgAdhr9Cj8g+VaVxfGL5LBzjCq5L
         Jjt4Cf4Y7lutsJZjcUQxTAy9jlox8sWXtZlH5QAnfKwfWqjKtzQEEyDC+xhAcN6UUQVs
         xoIOY3MFnweQNGwrbopyB0tA0qFeMtiqPzneNBeX0mevp7h8VNTTm1YMCY8zO0eNveX6
         Sgz5yiMoshJMlXNTJ4i/1FYwAG8QYDywX8zZ/X4H+nsC7phT4XfMw8WWWehqLPZ8B38o
         bVfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:thread-index:content-language
         :mime-version:message-id:date:subject:in-reply-to:references:cc:to
         :from:reply-to:dmarc-filter:sender;
        bh=G2vzzZw+GAIDrl5afH7NAihWUvPp7v6kODgNhDviQX0=;
        b=P48s7koJth9rErtUMbqEYtxJ7NxhMPX27370UHj5kW5jYKhSh4bxYxiiOhEue/ycyu
         M6/erKBA35ZdrRpjgMm1Aumdzx9qit3/KNjFKTHztRrivJWvf+LLQ/CDv6STQpmrJreI
         AQLG4HB7FDQhdF2WVyAkA9rtavPZfkkXg/RzvzeKBQEv/M8wC1wCBkyzn5UHKAaCV/oC
         n0Oh4NR5JVVSXw+wwKF8P8lYtJbkUW6aVCNFjArz613q/gNBQL5buEB0bl99okCShDdE
         vV8M857IYY7uj9EqP81y6DREyJpwgPoIza1dYUlponA+miRn7+aTscqGBg3pto73Wksd
         U3bA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b="W5/fQg8Z";
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:reply-to:from:to:cc
         :references:in-reply-to:subject:date:message-id:mime-version
         :content-language:thread-index:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=G2vzzZw+GAIDrl5afH7NAihWUvPp7v6kODgNhDviQX0=;
        b=b4GL694n3Is5z9BnI6O/El92Qdsas2irKxEJwhHSK2tI4XW2ezzQi/hjtWynzh41up
         Pe8PgriFSxzwS4P8ptRsKzpFfkZ7OrrI7cMFyDKnzqCwgObcyOCNr3fqJdGsQsjbgSV6
         OttRIC9/jo0OBhHhrM4tc4BGl1PYpFJ17wX3I4axGcf26hqgBes63cJo+qF6/cZP2thJ
         u9LkMnNmfNm6dvp8BZzU/sVvIhVAqT/FikMRin8+ua5uf6LkUB0bM3scu2JR1Bi2n19u
         mOmSCxBJ1TXpwNIk4HWyQEY5XKuWt0wYo3N+DbCUqKWoLuj0Yw9TMug8uOiwNceicVp6
         Fviw==
X-Gm-Message-State: AOAM532QnpOC9HYXM/gfutr9mstCmCSbAQWiSZMVpDyO2pWQdHC6lqEN
	VLSU0rUTmoUjphZ5KmPKCio=
X-Google-Smtp-Source: ABdhPJwufMMYsdySNWb2cAa9HJE26rC9J02g6ViRnoWJwVeZi+RG2wuQU0lu6bCF6wZrB1sXXcm/vw==
X-Received: by 2002:a9d:6117:: with SMTP id i23mr251838otj.28.1622739594379;
        Thu, 03 Jun 2021 09:59:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7c1:: with SMTP id 59ls1352736oto.8.gmail; Thu, 03 Jun
 2021 09:59:54 -0700 (PDT)
X-Received: by 2002:a9d:7254:: with SMTP id a20mr236340otk.142.1622739594029;
        Thu, 03 Jun 2021 09:59:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622739594; cv=none;
        d=google.com; s=arc-20160816;
        b=yDUY+lyVc4nzyidRSbgh3Tk3ylJiUGGMVMahODRtMkgz3c4FYcyXAn5VpN9Ngs+NQy
         dovxanKKuGF/3HQhS+COe7F/SWXrPIzU/frh9qusEaEOCqkrvyDl3pLveCtE0wX+2XIN
         0Cv9Ag2PT6LDGPoWF/w3zDiRQ52iZcGd/ykPD5xEZrlE6j8q+apbQPrwEw50a0SxfJs2
         k2/EGKedggpKG8Z1gVBn67IJp235xUHSYs1V9/Y1x+5At1zt9zcAeCksQAylGeJwVtxG
         I1wkJfrl951O2MFbKVaBspWm++uthaLjq0AYNyMxMY9rxdVzp85XquF3CyPBBLtFPCWP
         CvmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=thread-index:content-language:content-transfer-encoding
         :mime-version:message-id:date:subject:in-reply-to:references:cc:to
         :from:reply-to:dmarc-filter:sender:dkim-signature;
        bh=F429vFtl3XvYQi65CeuZUOOowDumhKntT+Oh2DXf98s=;
        b=xK75esD+DM+WNkNSAHKC97flwmHBdsJxyAxfaVifYL0Cf1zVMaXvTXLuvfJWJUvLyR
         dyYZmvqZUt+1AmVDVsxNqiD2VLna9bJXzW+uf4x49aZGgmCMOTlITI72axixciRAbRhk
         c2gbLujFHvc57ftkIpumzNgmOjXDr4VyIr87k/0+X5VylvhAvS/MfkpTraJcjrI0m4sX
         InGNnEHnfCWwWeq7fg5mU01fzzSQOzT0sojz2h5RfarOZxrw9iv43afLUtvqCk7+Y7u/
         kp4egqNWoXolldBNYHxtfjwPJz1lnciwEE2ZmiEmivh/vZV5keUpxwMoPdJdgJG4/nXi
         VxWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b="W5/fQg8Z";
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from m43-7.mailgun.net (m43-7.mailgun.net. [69.72.43.7])
        by gmr-mx.google.com with UTF8SMTPS id a25si460419otp.1.2021.06.03.09.59.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Jun 2021 09:59:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) client-ip=69.72.43.7;
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n02.prod.us-east-1.postgun.com with SMTP id
 60b90a83e27c0cc77fe2e750 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Thu, 03 Jun 2021 16:59:47
 GMT
Sender: bcain=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id A6BB4C4323A; Thu,  3 Jun 2021 16:59:46 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,
	PDS_BAD_THREAD_QP_64,SPF_FAIL autolearn=no autolearn_force=no version=3.4.0
Received: from BCAIN (i-global254.qualcomm.com [199.106.103.254])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: bcain)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id 54E76C43217;
	Thu,  3 Jun 2021 16:59:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 54E76C43217
Reply-To: <bcain@codeaurora.org>
From: "Brian Cain" <bcain@codeaurora.org>
To: "'Nathan Chancellor'" <nathan@kernel.org>,
	"'Andrew Morton'" <akpm@linux-foundation.org>
Cc: "'Nick Desaulniers'" <ndesaulniers@google.com>,
	<linux-hexagon@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>,
	<clang-built-linux@googlegroups.com>
References: <20210521011239.1332345-1-nathan@kernel.org> <0f3ac242-d187-57b5-e715-ea25933dbd52@kernel.org>
In-Reply-To: <0f3ac242-d187-57b5-e715-ea25933dbd52@kernel.org>
Subject: RE: [PATCH 0/3] hexagon: Fix build error with CONFIG_STACKDEPOT and select CONFIG_ARCH_WANT_LD_ORPHAN_WARN
Date: Thu, 3 Jun 2021 11:59:43 -0500
Message-ID: <09a301d75899$daf244f0$90d6ced0$@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-us
Thread-Index: AQImhg45Cwtn7gWc92+5nwbl9gAFPwIZtIyFqlNZDdA=
X-Original-Sender: bcain@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b="W5/fQg8Z";       spf=pass
 (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org
 designates 69.72.43.7 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
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

> -----Original Message-----
> From: Nathan Chancellor <nathan@kernel.org>
...
> On 5/20/2021 6:12 PM, Nathan Chancellor wrote:
> > Hi all,
...
> Brian, did you have any comments on this series? ARCH=hexagon defconfig
> is currently broken in -next, it would be a real shame if this continued
> to regress after you just got Hexagon building in mainline. These
> patches seem like they would be worthy of a 5.13 pull request.

I have started the internal review process to get these queued up in my tree.  But I don't know if I would have it in time for 5.13.

> Otherwise, Andrew could pick them up with your ack and stick them in
> front of "mm/slub: use stackdepot to save stack trace in objects" so
> that there is no build regression.

Of course: I'll send my ack for the sake of keeping the build green.

-Brian

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/09a301d75899%24daf244f0%2490d6ced0%24%40codeaurora.org.
