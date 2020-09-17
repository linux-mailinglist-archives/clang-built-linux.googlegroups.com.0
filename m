Return-Path: <clang-built-linux+bncBAABBXMART5QKGQEI47DYQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 545FB26D38C
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 08:21:18 +0200 (CEST)
Received: by mail-oo1-xc39.google.com with SMTP id e2sf665526ooq.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 23:21:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600323677; cv=pass;
        d=google.com; s=arc-20160816;
        b=K6suhUIyIUtfdtoim7HgPbzWk5GhTguAHPIkVJ2Oqe/bxJn07QIb5tNC2bpRo7I0Oz
         bRsADFQV7B1l9R8IT2iGYCyQ74kuXa88LF9jKcxT1OwMkdmG9nyv/AzZ17Pqh4GE++OW
         niHFXC9pMNWbPmKt2wuq71oxz/BWvOEtEu346N5vKGSv2aqwUlab71OD5zf9x/j0Q28Z
         KsMgUt/lXOQgJ3kBlbG3IrAAlabihLmTlNZR3qJukr7fFaUxL9qFqcehWg9iK5zogZpG
         bfl+ohvi+Ygi9OPPB6OKwb1bKDdr0jWafhQ/PkWxROEeurdx1mjHiyekVV1ehHOHW3jP
         cL7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:message-id:date:thread-index:thread-topic:subject
         :cc:to:from:sender:dkim-signature;
        bh=sicuikSx9iH7pMfFFhIkJWS8bO3pwmBK+PxHYdt79nQ=;
        b=nLdxNczfOLCddv1VDnldpScaQOO7W731G8BLgUt7twwIUauUzrNN/2bYTUSuopm34m
         n/LukTMUlA9s7sTwKyJHJyIEw/bjqHeowel3+jGU4PUNbT+nZEgUP9C7qKj7HRRzetax
         E5X0KYB+HsXz5cWiKtTEJGn3RU3bcTvveVgY8C7CWPq24Ad6oqNMLNgKj9DhvsH6Lyju
         Ms5vFuXDT39y1pbVl+2zhOJ1mVdhu+JwB98Owv54QAGYFiYKSCy7qeKbY0P0HVHZUXTb
         lS9VTAp61VtFtkM/OuavNhM5xR7t3OeAZ89GlAb6/fC1TDc3zmmzPa2JobfvCmgXQYVW
         GV+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of linmiaohe@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=linmiaohe@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :accept-language:content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sicuikSx9iH7pMfFFhIkJWS8bO3pwmBK+PxHYdt79nQ=;
        b=X5JN3SZUB+vX2GxUHHhLt6qdb18dxw26sPlNbxXmXOD/VBUp9he71Sst3m7GvCzMnv
         YdpArjJBLrC2e9VzJf6RxSRmRhxjQJODfwmvsuHQpI7T66eN+KxqZme0P3ni+UB0KonM
         R5MtYlxVSk9sQDdcb5eZdNTf2/jE7Ut6aBQNqYaq/Cg+rFnUpR1kzPZaOy1p/axce0Lk
         KcPYN2j/kSNvNbXwMWQcnciy0Fa1000O8K/hliEABwqR2cO7bPHnuDELVTyHjNshhghw
         hRUuW1VDcnMsSMcKorGLPceTh2P7O9qPJkkUPctji2eEM1itXmfN4pF8euWBiXRunNLJ
         rTaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sicuikSx9iH7pMfFFhIkJWS8bO3pwmBK+PxHYdt79nQ=;
        b=VDU+9q3kQ08162MF0c4u73eNsiYxIX5/xbH26VI1LZNY33ixz04m0yTYB5dr0/4R73
         SBLcG+yCQIFGTjmfht42I4Kh9+/kPvwspTRHnRZDrc8W5gYTrGjhiB38y21h2PFR1dSP
         6ySgygakgVybDcG0CpVHo5OAmoYsY8i8txS1x0n3Q1P6YWiXud5WEnfw2OZ7b0rCKlos
         qBrvY+xHezspRis4QSeUbULOMjc/YGTA2wqtQGgNw4PQJfPSDzOZFFSRUKiTJF8AnUoL
         AgA8uBUCq7zU91RaqJ//p6tBedSnEASClStDy7bVgHd8cL5mg3kjYBbAN38FKUNY9IFo
         A70g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5308Yzr6GlV3PWnjruvxvveAHln79fB/gtFrjosWDH3IzyS1YA1k
	JJLj87EU3GBe/W2Unq05Eco=
X-Google-Smtp-Source: ABdhPJyjyf7UKmyyzCDq3vA01/GzADXaM5VDqPqxH2fLcz2WHaaY4ni91yExUroXgsvAgdXdn483Tw==
X-Received: by 2002:a9d:3787:: with SMTP id x7mr5178134otb.165.1600323677309;
        Wed, 16 Sep 2020 23:21:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:3e51:: with SMTP id h17ls213870otg.5.gmail; Wed, 16 Sep
 2020 23:21:17 -0700 (PDT)
X-Received: by 2002:a9d:3aa:: with SMTP id f39mr4668466otf.29.1600323677001;
        Wed, 16 Sep 2020 23:21:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600323676; cv=none;
        d=google.com; s=arc-20160816;
        b=Gok9SSfzXFKcYYPUAu4qkqigQFvhy8Z5mOii/eZh8H6moRFPY4xWgETuqWsi8ryROs
         TAj1t0+m5O7/svTUoKd0SsAFIIetLN6ab2rzw8p4uKhurTC+DoZez2gBPG0T0h9ALS4k
         1weFb7lwJVki8hjyTWnwZnyUsPEeVyMz/ePyXY1Yegi667grDJIfOMpV+RGHZq15IqT8
         4n647Qa+gN299vAioy9IlHTRVqEHgSLCllbzvS2JQlgM8EW2qgFfNQKMNPpXWEhO38Da
         bXoVLNy25XOVU2CxPNHeL4pheJMTDlvtYPCojw7qN3/iEIinyetUn+zudbgWOD1lPFw+
         SITA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:message-id:date:thread-index:thread-topic:subject
         :cc:to:from;
        bh=PBWmUUFEtWgmSJ2KaOdzCHkXjWOSk3yD4Wwcx+m3dto=;
        b=gsrqIGyIATmB48OfqS4k6+8YV6bsWVieAffxYDSHHxYo3RJI+28lSrcV7eTClF3O6a
         h8btgTBn5qHfhL+v0SsvioO6VX1qXYwkN7EyO1r6N4jygk7PRvUgkyhuUJmga95cAgtX
         6hrjA4UQp7bK6lPMywz+rIQkJlgC03tKoz0WhFk0oIrd0p3bIkSVzUDGOXc33NNWPLBk
         NM9hpJeluoOVSEYx6RmULioul9ItjgpkjOaMWy5MJoSc+d5Esn9nOgGuJ+1wANRhnbxJ
         d56CHv3WLpyVxMBkYbx+y7ON8y/+2G368oezo9ywGVcGEAdMAvXRxv94X8eWmJvSBIv1
         4ZNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of linmiaohe@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=linmiaohe@huawei.com
Received: from huawei.com (szxga02-in.huawei.com. [45.249.212.188])
        by gmr-mx.google.com with ESMTPS id k7si1300719oif.3.2020.09.16.23.21.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Sep 2020 23:21:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of linmiaohe@huawei.com designates 45.249.212.188 as permitted sender) client-ip=45.249.212.188;
Received: from dggeme752-chm.china.huawei.com (unknown [172.30.72.54])
	by Forcepoint Email with ESMTP id 5402E246117BD6188804;
	Thu, 17 Sep 2020 14:21:14 +0800 (CST)
Received: from dggeme753-chm.china.huawei.com (10.3.19.99) by
 dggeme752-chm.china.huawei.com (10.3.19.98) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1913.5; Thu, 17 Sep 2020 14:21:14 +0800
Received: from dggeme753-chm.china.huawei.com ([10.7.64.70]) by
 dggeme753-chm.china.huawei.com ([10.7.64.70]) with mapi id 15.01.1913.007;
 Thu, 17 Sep 2020 14:21:13 +0800
From: linmiaohe <linmiaohe@huawei.com>
To: Nick Desaulniers <ndesaulniers@google.com>
CC: "Gustavo A . R . Silva" <gustavo@embeddedor.com>, Joe Perches
	<joe@perches.com>, Nathan Chancellor <natechancellor@gmail.com>,
	"linux-nfs@vger.kernel.org" <linux-nfs@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	Trond Myklebust <trond.myklebust@hammerspace.com>, Anna Schumaker
	<anna.schumaker@netapp.com>
Subject: Re: [PATCH v2] nfs: remove incorrect fallthrough label
Thread-Topic: [PATCH v2] nfs: remove incorrect fallthrough label
Thread-Index: AdaMuodnVDGlupKbQBWadlZPzzQK5g==
Date: Thu, 17 Sep 2020 06:21:13 +0000
Message-ID: <5de6c6d3ced340ac80702c527bb38d12@huawei.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.174.176.109]
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-Original-Sender: linmiaohe@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of linmiaohe@huawei.com designates 45.249.212.188 as
 permitted sender) smtp.mailfrom=linmiaohe@huawei.com
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

Nick Desaulniers <ndesaulniers@google.com> wrote:
> There is no case after the default from which to fallthrough to. Clang will error in this case (unhelpfully without context, see link below) and GCC will with -Wswitch-unreachable.
>
>The previous commit should have just replaced the comment with a break statement.
>
>If we consider implicit fallthrough to be a design mistake of C, then all case statements should be terminated with one of the following
>statements:
>* break
>* continue
>* return
>* __attribute__(__fallthrough__)
>* goto (plz no)
>* (call of function with __attribute__(__noreturn__))
>
>Fixes: 2a1390c95a69 ("nfs: Convert to use the preferred fallthrough macro")
>Link: https://bugs.llvm.org/show_bug.cgi?id=47539
>Suggested-by: Joe Perches <joe@perches.com>
>Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>---

Reviewed-by: Miaohe Lin <linmiaohe@huawei.com>


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5de6c6d3ced340ac80702c527bb38d12%40huawei.com.
