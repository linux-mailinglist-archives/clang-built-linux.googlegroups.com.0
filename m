Return-Path: <clang-built-linux+bncBC7457HKSMPRBFO5SSCQMGQEXEHHP6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-f187.google.com (mail-qt1-f187.google.com [209.85.160.187])
	by mail.lfdr.de (Postfix) with ESMTPS id BCAC938928E
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 May 2021 17:28:22 +0200 (CEST)
Received: by mail-qt1-f187.google.com with SMTP id b17-20020ac854110000b02901f279c73d75sf6220947qtq.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 May 2021 08:28:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621438101; cv=pass;
        d=google.com; s=arc-20160816;
        b=FL0s8wC5TlEBRu+io6ogALZphDISrHA8j+bWkNEiJkozRywKDa/Qx7G5vA90UsCm3+
         YWfpvz08S0nV9UOq8kcWgW8/TPjY3V/QNc4VNtmVKmPf0stSkqlAc+3VIkcjWGqhkJP/
         ACbRTaPVwislqGCuqdUNWVnGSf8lyko2N69Po6rOYq2tiCZNdN/r9TZm03oqfYr8Kyrp
         HhaAw4mq97wK+Zgirp21ZR8LKITh6fwTJye1zhVjJAYLYZNlHscMhcjc6AuRjwgnF1Av
         to2DmqwkDbGySKNVkKIWwlFi+6yuRfoja/LTI042XPNyIz/iBkRrjfQ75cMTs19ty08u
         IwFA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:thread-index
         :mime-version:message-id:date:subject:in-reply-to:references:cc:to
         :from:reply-to:dmarc-filter:sender;
        bh=OQSmM1twZ4CyQWvSENo7Hk0qGJIEc8HGMFftOxU+7ro=;
        b=xTpIxvaVvCA2HRYVJ/MZtRelKtPkBjFyJhN6yOEGvEe6GhnPOy2nUmG/q8FucWH0Iy
         aCWO3sGlfp0Y4SSrRbA2ufsg3USHMD0hA2cR0jweYsgeR3mTyiofzXylVQakPDMgZaiU
         fWWKYly/BRKtEaNol6v08s8ipqYGRiZWmWALhFYe/Tops3q4IDRbk7AhRb6eGfacwE0N
         /gdTWv0KPOvOuJxuPwtF4CfaapXmVtZS/u3hhjFpdKAhDzNpt1QzbnFqXvtD/E75IUQ1
         wXyPpaCYZUWOtltZKwumghNxuMxZgemxCmiAGuEAS7tWPE0wF/nv5icOmK7v4eE1uOHe
         cFkw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=wc7TOyH7;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:reply-to:from:to:cc
         :references:in-reply-to:subject:date:message-id:mime-version
         :thread-index:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OQSmM1twZ4CyQWvSENo7Hk0qGJIEc8HGMFftOxU+7ro=;
        b=pl5INlnozMSRASWu174lB/smMEcf/sqa7XXa218BtU3uXZQgXQFWxDa0Dy8FgfgStw
         CH5kjqlTRU2nQBcFc2j+WoGbeGAMWaY7Cb3Jy85AVg+jXHKn6MdcL0O3miP9jkfNi/YJ
         qarhBGtTIn/90WLMPF5k8xG4V3/bDeex+bQnUhMNHOFaauCli+NV3YN2XxCepQWW6q3k
         oj/R5ki5b12M4APV2dz3iSofLo3XnMVPBcY7XR9ktAf3wXC1Lk8GZs4Z4Hqax2HG6YmI
         wrNZH0doJ5cq/NYTO9eQckGprGP7eeEEai5721dNhg36AkquFiWMmwRbew00NA1T/i/E
         MrrA==
X-Gm-Message-State: AOAM532qbmacWK6dT65/mlebazwl4JAKdbpU5ZWtSaQ2afPZRgv9QAxz
	Fzz7T4vN2O4nBPE4v3iOro4=
X-Google-Smtp-Source: ABdhPJyLAhLV4z7EfyCX05xVSopE+rn8iapjP0eC9vnLQ8vb5cSjI3P3ngGpWKYSewh4ZE3tEvnNdA==
X-Received: by 2002:ac8:7c4b:: with SMTP id o11mr12019547qtv.336.1621438101710;
        Wed, 19 May 2021 08:28:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:7e8e:: with SMTP id w14ls27468qtj.0.gmail; Wed, 19 May
 2021 08:28:21 -0700 (PDT)
X-Received: by 2002:ac8:7cb3:: with SMTP id z19mr11993042qtv.22.1621438101226;
        Wed, 19 May 2021 08:28:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621438101; cv=none;
        d=google.com; s=arc-20160816;
        b=GeNaf2yLvQ9/Eiid4oD2ggEhijGJFkbzkj0UIrlqnUIgEv7xxJrndYGKBrV++Zot84
         KAIQv5xfaYOwgjnp9Hgg32wKh0vYgxjPOD9+254oCxD52Oxi3xj7DZcIYVaRtnlJfTN7
         rwbs1iS50Wv6GFyUi3vpk9WqIb4WfY+WQRd7OCv28rbEt/rq9AivC6OOFVC2taJC/jxD
         5QOEu2puRyZ98Qx2cpg1QsQH0HY7t3r/ooIseOG5xzhML4tJKtnm1HN5UXu2bUbumcf+
         gZn/rKVUyxz63yy3P6mslmE5NBP4FnPFW31pofgnTBcDsBUtVRk39ouK+2B49YBFLSk0
         KFRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:thread-index:content-transfer-encoding
         :mime-version:message-id:date:subject:in-reply-to:references:cc:to
         :from:reply-to:dmarc-filter:sender:dkim-signature;
        bh=FQqOtTWuOS13BN8O02FNaShatp6JGVjdDGcLP0U0neg=;
        b=oh6XfN1Ba/p2imW4cLt9Q9OZ+QqUbKAJrVjbYwDjlHhzUhuQwef7iqGE/rNvkHRlru
         J3aWW75YS7C0cNxixGPv/X9ByP/wF7SiHzBj0BhnL/FuRD4jyVWOOt1sesnwCWKWZXqu
         0fUiSyDN7MNQRwQxBF8rjR7uxTLgtXdCM7jIwf5n/LVrfZVhYQbtLuEV/HjRzKcyj+4g
         GwGInhBmMd9wARusdPQpr4DDuJ8eMqDIlunKXA6572cWUdlQu5D4pr9sffEvUw9GGH7i
         h3OOx8zPdH0EXc52RyKsjz07AAdLFmro0vX9XkwZVrVCEnZfybZkN9UiZTkFtKe0JdgL
         yZzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=wc7TOyH7;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from m43-7.mailgun.net (m43-7.mailgun.net. [69.72.43.7])
        by gmr-mx.google.com with UTF8SMTPS id 142si1816822qko.4.2021.05.19.08.28.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 May 2021 08:28:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) client-ip=69.72.43.7;
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n05.prod.us-east-1.postgun.com with SMTP id
 60a52e8b063320cd13ad250d (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Wed, 19 May 2021 15:28:11
 GMT
Sender: bcain=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id AB61CC43460; Wed, 19 May 2021 15:28:10 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,
	PDS_BAD_THREAD_QP_64,SPF_FAIL,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from BCAIN (i-global254.qualcomm.com [199.106.103.254])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: bcain)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id C4C4FC433D3;
	Wed, 19 May 2021 15:28:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org C4C4FC433D3
Reply-To: <bcain@codeaurora.org>
From: "Brian Cain" <bcain@codeaurora.org>
To: "'Randy Dunlap'" <rdunlap@infradead.org>,
	"'Arnd Bergmann'" <arnd@kernel.org>
Cc: "'Nick Desaulniers'" <ndesaulniers@google.com>,
	"'open list:QUALCOMM HEXAGON...'" <linux-hexagon@vger.kernel.org>,
	"'clang-built-linux'" <clang-built-linux@googlegroups.com>,
	"'linux-arch'" <linux-arch@vger.kernel.org>,
	"'Guenter Roeck'" <linux@roeck-us.net>,
	"Sid Manning" <sidneym@quicinc.com>
References: <CAKwvOdngSxXGYAykAbC=GLE_uWGap220=k1zOSxe1ntuC=0wjA@mail.gmail.com> <CAK8P3a2DCCjOq+sB+9sRM7XrtnkromCs_+znv3dehqLiYFDQag@mail.gmail.com> <fa0bed95-5ddf-ecad-0613-2f13837578c3@infradead.org> <CAK8P3a0ttLxzP0J-mocxB2TkfEYJYj37TdW=uM65fB4giC_qeg@mail.gmail.com> <026d01d73877$386a1920$a93e4b60$@codeaurora.org> <027401d7387e$f5630120$e0290360$@codeaurora.org> <24da08a4-e055-d8ac-8214-97d86cdcfd3d@infradead.org> <02a501d7388f$8dfb3b90$a9f1b2b0$@codeaurora.org> <42ab3057-3b43-7f98-6387-6e79761d2d3f@infradead.org>
In-Reply-To: <42ab3057-3b43-7f98-6387-6e79761d2d3f@infradead.org>
Subject: RE: ARCH=hexagon unsupported?
Date: Wed, 19 May 2021 10:28:07 -0500
Message-ID: <06a701d74cc3$92bc59f0$b8350dd0$@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQHA6GaHPKlqiI34kZpdCyOyqmKBQAItWAQVAeg2vD8CQqkwGgKUjDBFAndwqiQA36lpqQF/q2VJAknosvyql0WCYA==
Content-Language: en-us
X-Original-Sender: bcain@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=wc7TOyH7;       spf=pass
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
> From: Randy Dunlap <rdunlap@infradead.org>
...
> > Randy,
> >
> > 	I 100% agree, I would prefer a tarball myself.  I have been working with
> the team to produce the tarball and we haven't been able to deliver that yet.
> No good excuses here, only bad ones: somewhat tied up in process
> bureaucracy.
> >
> > I can share the recipe that was used to build the toolchain in the container.
> No Dockerfile required, just a shell script w/mostly cmake + make commands.
> All of the sources are public, but musl is a downstream-public repo because we
> haven't landed the hexagon support in upstream musl yet.
> 
> Hi Brian,
> I can wait. :)

Randy, thanks for your patience.  We don't quite have all the kinks worked out for a release process but I have worked with the Linaro team to produce a clang-based cross toolchain and we can share a link:

https://codelinaro.jfrog.io/artifactory/codelinaro-qemu/2021-05-12/clang+llvm-12.0.0-cross-hexagon-unknown-linux-musl.tar.xz

Contents:
- clang+llvm+lld+libunwind+libcxx+libcxxabi built from `llvmorg-12.0.0` release
- `qemu-hexagon` binary (scalar core only!) built from upstream github.com/qemu/qemu repo `15106f7dc3290ff3254611f265849a314a93eb0e`
- headers from linux kernel 5.6.18
- C library built from github.com/quic/musl commit aff74b395fbf59cd7e93b3691905aa1af6c0778c
- unabridged build details in https://github.com/quic/qemu/tree/d26f3843c794d9d9b17b637550dc3b5a2bacd837/quic/container

Once we're able to produce releases on a more regular basis we should be able to share a hexagon-linux-user QEMU that can do scalar+vector.  And some time after that a sysemu-capable qemu.

Our process for this first run did not include a signature for the build tarball, and that is regrettable.  It will be included next time around.  I have produced the sha256 signature below (post hoc) of the tarball that I tested:

	55c51e8289cc21e6779cfc3b18bb9ad02632fc52d3c3a91bf6fdb4c8f578c84c  clang+llvm-12.0.0-cross-hexagon-unknown-linux-musl.tar.xz

-Brian

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/06a701d74cc3%2492bc59f0%24b8350dd0%24%40codeaurora.org.
