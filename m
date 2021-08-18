Return-Path: <clang-built-linux+bncBD763O5S5UARB3NN6OEAMGQEOZ2Z4FY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 331D43F00DD
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 11:46:22 +0200 (CEST)
Received: by mail-wr1-x43c.google.com with SMTP id n10-20020a5d660a0000b02901551ef5616esf401153wru.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 02:46:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629279982; cv=pass;
        d=google.com; s=arc-20160816;
        b=BBJWAT3Ic9175jQNZgKqdlzCF8tU53+nNB8a7BIIim5QKw8VTQgxNVWJBl9v8YJ+x4
         NzJjh8P711gRQEoYbDEiwqEnWyCH6josaTg4OxDTwWO5VQQg6GnXFJdU6vhl5KcXzn9V
         jmP+OxtlHUw5P2SJAmnQzpVydMlHWiEMQILEEWAFmjsiXW+YuyQbqL775wgxB0Pcw/X2
         edGs1GCMeNbnmhoi1qrsfWPW5ZXlwxW7g90XtMnRloicPlx+OZ/3t8dVDezErM7zx157
         CsUUUamlWZbM/5WLVRf9ju/cdTldKDZJUSc3QM30bp9N4RK/z3g1CiCZ7gHdP1XFcWXB
         jkSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:importance:mime-version
         :subject:references:in-reply-to:message-id:cc:to:from:date
         :dkim-signature;
        bh=nczmDKOAal6IRRspENvJmBBi3xndnkyyqB9usRt3tPM=;
        b=RS+Z0tATqCWi0vwBlw10zvWOYWuQLF3OATORT4wjqy0p/oeXzJKLZ1/P83s2lV2xaW
         zkqpEuQe5gp8ADOvSWg2js4DvQaNnJdGBD0ndPqXVUlgpitJPVXy4kH/QAMfwC7BGfNY
         IuvMfjqBwk+qd2iy0HnmvNSoIsnrArnd9vtSfkCjoWmFa5jNRSbO2zXjAxplgKb+7Qwd
         WIHGraADSGvYy9ubv4sGY8BZcvIJvHMcpkacv/GU/HTFoWzlWd5tDMGMsUhTvBXn0dvL
         TCttwgTPpbisrkX569uLtj+jbXIjrLbveZ7BrcrnWY/bBTnGXRNI/+HrwThW7IJo/lja
         Ms8g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b="en0cAe/s";
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=xd1vsz83;
       spf=pass (google.com: domain of torvic9@mailbox.org designates 2001:67c:2050::465:102 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:message-id:in-reply-to:references:subject
         :mime-version:importance:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=nczmDKOAal6IRRspENvJmBBi3xndnkyyqB9usRt3tPM=;
        b=CTYNmj5xDRX7eG6Sxauh6TwYgUaDE2oylOMsEEY6D6v8XhwxHiW7nY1tvby2CVdST5
         6q6cSCOWpWUDeqERReM43WQK43WuaCoa3klUTCWH55y6Ffhf7KryjQ2wTPJwA5PUlug5
         kXPTlEB+iCixrGirp8o1Ec9KtppSSFiLJutfzIFTRlRIMMnuk/PuYpra8f3AxVXD0Vu8
         8Dp4m9Hkpvktb5sfErfd+G/u3DTakDIk4YSrXxU2MTn/tFNm+H0uEkp13AVzE21gAhFz
         16yYfLc+4EuUg+jcCtsRsuiASOdhLqHRFY9AKKlmPCpn+MAHJwBeJ88bEepnRkY3589s
         RJdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:message-id:in-reply-to
         :references:subject:mime-version:importance:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nczmDKOAal6IRRspENvJmBBi3xndnkyyqB9usRt3tPM=;
        b=PCY/4Q60Lm4Z/BiXyxyVxolbyepjpam2pOpG1SBiW24BxfWRdpPJOmUdSxtJCamWE8
         p+DZTUulWJzsonKpRruxGyLt6NT8y1A9tiMq7bL8eryYM01ZU3Gsrc//2uoUir4EO4nS
         v//aYctHQm4oRcIBX+BXqfe8HmgxOwP8Ic3pVTLGjoKp8vQgQ1KTZqDlnvFfuYbrWZ6r
         oaMFw7h9w0U62KSpOef0XB6Xa4cvSktxugyCv3bZiY0HCVDzvZbzq3dT+6fEKNJmiBn7
         U52KKnws3aSzeNQEBeSyYgPTubkF1RcDBdOOua2hPdhz5q/82nQdS/OhvEHMSJsnw9Pu
         P+9Q==
X-Gm-Message-State: AOAM530Q0MgVYCuPZexY5GpIAF/41cJvu83eM9avu9PlXKjK81l4v1G0
	1kwflngf6MWIYTZVvP2vhkQ=
X-Google-Smtp-Source: ABdhPJw9jn0SdE6hP8u/QvptFoBxdfGGXMdD17cinPeKGcftMSxHnNKENdJnUExBMqZwXJOE7WnVcQ==
X-Received: by 2002:a1c:7203:: with SMTP id n3mr7883640wmc.45.1629279981887;
        Wed, 18 Aug 2021 02:46:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:a191:: with SMTP id u17ls83250wru.3.gmail; Wed, 18 Aug
 2021 02:46:21 -0700 (PDT)
X-Received: by 2002:a5d:6287:: with SMTP id k7mr9132547wru.321.1629279980954;
        Wed, 18 Aug 2021 02:46:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629279980; cv=none;
        d=google.com; s=arc-20160816;
        b=yboIvd10rAoqcXEh/xsymMlD1bxfQQoc3nHZBdWtAyS5djWfS6qLx0GbCR03Zlfmam
         NXf4eZk6rp9NpP8rJEIWFPjbjukUW3ffLAZiDrk72bIVEtYlHLfY0qpsSK7xWZ8P4hTC
         13Le7EjGbQG3Q3GKfMRCRIKcfQxzDtfXey0/G1lbj7inUE0iUjIRHVI/i9PeDm6ZKhRY
         4bsCL54GoTb7IPPIFKVAiJVBZ6tlo1LoMkq4w1QF88HSrlenNbg9oog3dP2fzzH/0xE/
         LVhyrr+ssjmgfR/FeFxfucUIss+GeLn7NTxgFFfjT9ITffsLFblSboEtxid/NV+PSKih
         ByvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=importance:content-transfer-encoding:mime-version:subject
         :references:in-reply-to:message-id:cc:to:from:date:dkim-signature
         :dkim-signature;
        bh=pviwso17BFYUnD+xCSJlBHvvPfWSkT6kvM+T5S69UjQ=;
        b=Sno8BGhxs3C79WtA70rTOvFmDCO97NgeKlY1w/JaWC9OD8bWeZrLjQetSQDA3Y4yhy
         GTFEbT733AokMYrZaSKgEBsFN736toUc+Z5Y2dMbDIblWvrBuBsBbTDci3qisRD5ZTc1
         NUMnoa6ok3jmpSCT2x5QgG93tz+WK7KelHN/Tkchc0ONAt53xz5MALAmFe+gbQzB8UaD
         wJKP47hYp09Vr263N4o0Ja2JFWXZhKrOm63p/TjY4gmV6AmTtws3NHAjsZ/oZaBRg3IF
         4QYKc4glsUimsrX5yM79EZ6IQCgYOltz53RWZv9g4kLNHK3Kh0BdXkaqpz5b+XLFL7cM
         R7+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b="en0cAe/s";
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=xd1vsz83;
       spf=pass (google.com: domain of torvic9@mailbox.org designates 2001:67c:2050::465:102 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org. [2001:67c:2050::465:102])
        by gmr-mx.google.com with ESMTPS id z70si371529wmc.0.2021.08.18.02.46.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 02:46:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvic9@mailbox.org designates 2001:67c:2050::465:102 as permitted sender) client-ip=2001:67c:2050::465:102;
Received: from smtp1.mailbox.org (smtp1.mailbox.org [IPv6:2001:67c:2050:105:465:1:1:0])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4GqNMJ55L2zQk22;
	Wed, 18 Aug 2021 11:46:20 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
	by spamfilter06.heinlein-hosting.de (spamfilter06.heinlein-hosting.de [80.241.56.125]) (amavisd-new, port 10030)
	with ESMTP id dTcPzxAH41-V; Wed, 18 Aug 2021 11:46:17 +0200 (CEST)
Date: Wed, 18 Aug 2021 11:46:16 +0200 (CEST)
From: torvic9 via Clang Built Linux <clang-built-linux@googlegroups.com>
To: Christoph Hellwig <hch@infradead.org>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"x86@kernel.org" <x86@kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Message-ID: <385024923.121081.1629279976794@office.mailbox.org>
In-Reply-To: <YRyyicOaNu/HDgJR@infradead.org>
References: <269701460.117528.1629210189833@office.mailbox.org>
 <YRyyicOaNu/HDgJR@infradead.org>
Subject: Re: [PATCH 1/2] x86, Makefile: Move the CPU-specific 64-bit tuning
 settings to arch/x86/Makefile.cpu
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Priority: 3
Importance: Normal
X-Rspamd-Queue-Id: C994D18CE
X-Rspamd-UID: b2b398
X-Original-Sender: torvic9@mailbox.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mailbox.org header.s=mail20150812 header.b="en0cAe/s";
       dkim=pass header.i=@mailbox.org header.s=mail20150812
 header.b=xd1vsz83;       spf=pass (google.com: domain of torvic9@mailbox.org
 designates 2001:67c:2050::465:102 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
X-Original-From: torvic9@mailbox.org
Reply-To: torvic9@mailbox.org
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


> Christoph Hellwig <hch@infradead.org> hat am 18.08.2021 09:11 geschrieben:
> 
>  
> On Tue, Aug 17, 2021 at 04:23:09PM +0200, torvic9@mailbox.org wrote:
> > +# SPDX-License-Identifier: GPL-2.0
> > +# CPU tuning section (64-bit) - shared with UML.
> > +# Must change only cflags-y (or [yn]), not CFLAGS! That makes a difference for UML.
> 
> Plase avoid the overly long line.  Also having an empty line between the
> SPDX tag and the actual top of the file comment really helps readability.

It's a copy-paste from the existing Makefile_32.cpu, so I guess it has to
be changed there as well?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/385024923.121081.1629279976794%40office.mailbox.org.
