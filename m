Return-Path: <clang-built-linux+bncBCK2XL5R4APRBTPH6KEAMGQE5EXYDCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 215833EFDA4
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 09:16:30 +0200 (CEST)
Received: by mail-lf1-x13f.google.com with SMTP id c22-20020a0565121056b02903c8d745ff5csf380022lfb.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 00:16:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629270989; cv=pass;
        d=google.com; s=arc-20160816;
        b=TxfH/zZ8PDOr38aW12AL6MxmdRhzBczurYA1gcjCtiedD4rmqo5+tkvA8WT5pE7L06
         v2rcshbGW9GV5oBd/fECXxVsvMLkMm49BhPvBlInUEcGq9pDR5ExOfv6UbWCSFgmFPs5
         ecSZWvKPxm2+rnH2zttTxCuLLj5MVQrpdurnE112wQIkX09laVfawc7e7SdMXBVvVVq1
         v6oVCWUynmSCy40LqSdIV4o7F+vxR6nTnKFAkKkrL6Ssgau6OruCm3RX34u43WdxBpZ/
         1JRHcvhsaRM/BXKhHVqmBlG9EgWOS2SL7DuxmwtE3ff+B76PhYxgWnmiOw7+fvLsPkgU
         khGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=g9LhRu7bg/ZSfvtCPnZ7S8mNrPSY9kszJipn1f5Bdgo=;
        b=bMkwZ5sZlyzJmBJoAtDaoXmwJJNx0RT7uc70KF9R7jbqCQrAUL891OK6lYSQ6R5XZu
         z8BDZtS8N07DjIMpj+kSnoaD9BSLCxCQ3cii2KH0AFvdbhWdzqoUy7Qzw4Sr92pZodvI
         VcsZjun1Miow3nRna3vf200TmlhkOgmy91hiod/zG7bzL1ybKYvRC2bJizi5SxFqMm7D
         bIKQNdUuM10rc8fzgIPiAMjDj/jqBY6YFoLjCBitWaHiImnuxjBub+DC6/F0SjnkBazP
         JmrO3ZJCsfCAGmfV0g4SRJ0KxLBfrOo0KBvQYdWNsLVAgkhq2XShYP3eBj1LNAq5vhmX
         b2Pw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=vNjVcm++;
       spf=pass (google.com: best guess record for domain of batv+c26a8f31a710de91e748+6569+infradead.org+hch@casper.srs.infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=BATV+c26a8f31a710de91e748+6569+infradead.org+hch@casper.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=g9LhRu7bg/ZSfvtCPnZ7S8mNrPSY9kszJipn1f5Bdgo=;
        b=ZXexJby4cXuaAqt1gkT1EtuMXqDvq895NsTIGwb4vwmwwMsB7i5NYALXvSfGgW7KO1
         vi3utNwvCnIG1bZWEQf6ufENBmlrFLZKzGc0K8Zuf1EFbI7Osr56FodI382FCAWm5oA3
         6MTRGV7B9op2W2ALn+cGRd5wfBNrSUh1mE89G3yreEsn6hN3DqJc6dlZZkAmjAjbNwqW
         bLykFNwFosgLKgLhq9MIKGz+72lGvwSqnKTle+41rRqGcwLPDhqp+YT44vG2f3drFIie
         pXBkzQ0WsLVRW5EfqqEfcfjDCXMjXo1Zp2C2uBV5sCZ9seFPW4w98kCFgCuyJQ99pfMU
         b3SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=g9LhRu7bg/ZSfvtCPnZ7S8mNrPSY9kszJipn1f5Bdgo=;
        b=hnNiB2VoFDn9yPygXgjsqAY2wBjEm1yXnk+sZGIKK8SvwSH6MHgrLuVEiQ+dOFkuuh
         jxQh+e8qlYV8XCmhWLb0l3+7NFbH8MWuTnBwPMx504oFCTVcq4+htQCpy5gqGwq899XV
         N9PinMxKrmq2BeZYtAr+2iNP83AUqC/MgeoQswuDB2xOIDr59ItZVovdVwZS3MZRNtJC
         dEeX60pUP2EAPKtTyvswEiKIUF3RTYu3f6mmNDbAfzKDK29sK0ekrrunQOMkNNEvFL5m
         fE6pgZe+GnX9jAfhLwIHqCAr6+HOKIOMkEbZrVZ35qJ65zy1Jv2/K3sFlGIYjOwUf2UI
         60oQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533h+bv5Y5tcycrBZmT9sWueX6qrMeC8Y3ATv8FsGVJYz3HixkRn
	3MYlr2nhfK1ETzq2TlRTU2Y=
X-Google-Smtp-Source: ABdhPJwV0dmBKSgsL4p1wKJpSXMEWjjOJ7NIM33ar/1vlIvzkO6ef0b07WEDqVfO9pprZSSgj3MF+Q==
X-Received: by 2002:a2e:a606:: with SMTP id v6mr6612055ljp.366.1629270989732;
        Wed, 18 Aug 2021 00:16:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9109:: with SMTP id m9ls190085ljg.2.gmail; Wed, 18 Aug
 2021 00:16:28 -0700 (PDT)
X-Received: by 2002:a2e:a587:: with SMTP id m7mr6783265ljp.493.1629270988843;
        Wed, 18 Aug 2021 00:16:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629270988; cv=none;
        d=google.com; s=arc-20160816;
        b=atJ8OodQeg/ilHRyxY23KPw9SSwyqc/Wuzb31/b/TpOLV2J87IHo6Cxv12rqHPEhRZ
         obq/HaDMtL1qdWj7E0Pk8mc8htPk60Gbyji2RRqaoq5GhCiIhO2IXge4At7ONUZJcZMj
         oVNWP7kKVgIXJ+grCgg/7sAxdQvWTkwejJLd4BrMp1l8rFokq2Zo72EqTEpRlsNMcayi
         JXTgFwl1LsytbUSJthjtLMvxD6kDyTedZXNC5rDDI71YO6Ml7oSOEW5X+uDkvonXpDv0
         v4DP5DFWOf/DMMxySRHe4BluNRgCPifvqrcVg9Gp0VHv7XTV1tG0Jz+teFMR+vsBwXlc
         jzlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=IY1rYvs/55MDJaEBbVK760ru7sspZ6Ehf+ilKA9rPY0=;
        b=ybd3O/Nh8AlSz71ovxZ857KvQ9ZkfiExjEIxFfvF1vGKvhnjR6k0COeXPUfol36A/e
         Vhl4I/EKFhz2W4Aqe+nQjwtgtmsp8pbZTcgJVInPp0DgsvWCor98jic/KwtwvyctpJrm
         YpdIbBu/ssIJzVl6PqHhNfI+82v4UlfFufAK55mwrzVIb7gmK1jrJt6wzvEU93Xwkie9
         Efoe9cOTL6lJtVih9/64udnaDIpUSif9GkpP1m01eVRDZtHNdLgXJ4N3QPEgwCgLzwSE
         FmmLicN2p+rPcONhJpCEkrzBkUACYwIcvn/2fOHQPIKYtJuKye8S2H5EopfJlVRA8oIj
         tY+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=vNjVcm++;
       spf=pass (google.com: best guess record for domain of batv+c26a8f31a710de91e748+6569+infradead.org+hch@casper.srs.infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=BATV+c26a8f31a710de91e748+6569+infradead.org+hch@casper.srs.infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id a9si184353lfj.12.2021.08.18.00.16.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 00:16:28 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+c26a8f31a710de91e748+6569+infradead.org+hch@casper.srs.infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from hch by casper.infradead.org with local (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mGFnB-003Ufz-SC; Wed, 18 Aug 2021 07:15:35 +0000
Date: Wed, 18 Aug 2021 08:15:17 +0100
From: Christoph Hellwig <hch@infradead.org>
To: torvic9@mailbox.org
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"x86@kernel.org" <x86@kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	"graysky@archlinux.us" <graysky@archlinux.us>
Subject: Re: [PATCH 2/2] x86, Makefile: Add new generic x86-64 settings
 v2/v3/v4
Message-ID: <YRyzhWJrqcRZkYRM@infradead.org>
References: <269701460.117528.1629210189833@office.mailbox.org>
 <796036867.117557.1629210288168@office.mailbox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <796036867.117557.1629210288168@office.mailbox.org>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by casper.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=vNjVcm++;
       spf=pass (google.com: best guess record for domain of
 batv+c26a8f31a710de91e748+6569+infradead.org+hch@casper.srs.infradead.org
 designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=BATV+c26a8f31a710de91e748+6569+infradead.org+hch@casper.srs.infradead.org
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

On Tue, Aug 17, 2021 at 04:24:48PM +0200, torvic9@mailbox.org wrote:
> +	  Generic x86-64 CPU.
> +	  Run equally well on all x86-64 CPUs with min support of x86-64-v2.

> +	help
> +	  Generic x86-64-v3 CPU with v3 instructions.
> +	  Run equally well on all x86-64 CPUs with min support of x86-64-v3.
> +

> +	help
> +	  Generic x86-64 CPU with v4 instructions.
> +	  Run equally well on all x86-64 CPUs with min support of x86-64-v4.

How the f&%$% is a user supposed to know what these garbage descriptions
are supposed to mean?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YRyzhWJrqcRZkYRM%40infradead.org.
