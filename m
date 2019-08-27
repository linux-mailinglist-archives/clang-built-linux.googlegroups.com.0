Return-Path: <clang-built-linux+bncBCSJ7B6JQALRB5EOSXVQKGQEJYHU2RY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93b.google.com (mail-ua1-x93b.google.com [IPv6:2607:f8b0:4864:20::93b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C3A39EBE6
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 17:08:37 +0200 (CEST)
Received: by mail-ua1-x93b.google.com with SMTP id s1sf1812617uao.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 08:08:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566918516; cv=pass;
        d=google.com; s=arc-20160816;
        b=IoDoEk72kWxfS/n0nhGFiOXm43qR8VrCU6ZkCxJgbgKLazNXDQxSFqbK6m99pJvesu
         Kzjr0V7fI5yVp1D88JHPWqhHOtYDHhp5KBBzlfK5kfPO8uSDQhajkgtNFkKR0X2CCUAU
         gMxhQiT6jMfw5gNV9A7MKntV0iUllu316X43YL6ax/vbMC/9vjmlzgj2BTpZ9mtXg6gN
         D8/2ipW0upQjTZCNx/sPmZKD9QMXtOGKKXz3TOJpl9lLoRaMbFzJ4NvJlavYFXWwZbAw
         KJsuOTCG2GKwJH84DOgFLtF4gNW3kiTP7Php075x2gh5p+R4sme4AWvaDnjRmy7OOxOk
         dRxw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=WfTWkz+Bx6DNbzj0dzK+cDAOvIIFBHkYhr3miQ5aIqc=;
        b=qVvPt69HuWgoKicK+2yeReT5gmHG26NjTcbI4CT7j+X49osC09J9GqjbWDcYB42zhI
         B4UTad5dp50Gv1Zs3ShxADNx7DMQT4Xxch5Wdi175j0//q4dPW0t1OeJUD/+Zn85TIzM
         /TJF239kql0cH+USDMSpnyRNWFmmVoJMcTm3MGzaU92/OcFF9AGaGOf2+wcwVdMJrlE1
         qh0RwjC8ZAjGj9YurHdwSbJQlMyNeiS+unZK8Qsq/rXR3vyEemnhfOTLLtLDVzEfcilw
         F3Mv7NJAF618L9oZm/GgUCHhSDXGz/1vjEXV6gvZQm4JBSVt4j0yfxIAOdrJBlfKG4L0
         XrmQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WfTWkz+Bx6DNbzj0dzK+cDAOvIIFBHkYhr3miQ5aIqc=;
        b=NaT6zmzohUVbEyC8cD8sdgTmRxLZeWwNwMrHh3X2SmzJaVT0J4Yv6C5/5+6azxj+uL
         ciqpQ8RUdk2QqmeVDv/L4yWU6SfeSgQJwxYCNRo/GM29zApyF7lqtgIv7IjfAX+Xv9AJ
         l/Cs9AEvH8jFKZPuRpyZEuvooE0Vo/8WwRFTbcZsBg52RUwEQZ+8dKuH1QiGLz+I5lEI
         VLkyGQP2CbpBVFJJkw9Wmq41mcWoBd8RS3fxSlmKNGStYPIb7eq3kDUTojC8t1cDo64b
         lCd+pBVwaDemUNYQWr/+7BlyKiquvdo2zJyD2Hkq9bIXYxMZlyh28wfHFd4WvadiVLxd
         irJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WfTWkz+Bx6DNbzj0dzK+cDAOvIIFBHkYhr3miQ5aIqc=;
        b=mIdeJ0F9r6DPXdzi3lIKS05+jSJSq6gMmIApvQb8TSEu9Zo1n787UKcItodpbzbqtg
         ffc0FnYrpZF7kBgmFb/ZKLJW4MS9dS1ins9UwHoOpKCvJJbgkRV6pFErPs7vCdpJB5j/
         yQXP+t1YFKev5NRe+xVJm99E8au04d8JWJWlQmd62zWHvv+A5VYJRuySn4nhXijsTNsF
         i2Htk/I4OMGRKPjN0Iz/9+Uip2J00ojArI7JZdFzWcd8lVtb+f0ICXyqp3wB3cMoJOTM
         PkfxOjnYzKWruv6Jdjlval2qjpWNY3xe117zz2ptG7BxhmhT9P33eIfjz0in2BJI7kA4
         BARw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXKksLsZhNbbP/myaK5WMz8UpMU01VLDaUzivZh6g1vye8z5Owi
	YPMTwzy7cgtvjQ1ilraGgoA=
X-Google-Smtp-Source: APXvYqxp9ExBNf3PG2flEGoPpq7/guCNWSGX/Fs5QW6SvcfPGnF5DV3WuSroQr3OesubgWNMjkqQVQ==
X-Received: by 2002:a67:f591:: with SMTP id i17mr8968167vso.225.1566918516596;
        Tue, 27 Aug 2019 08:08:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:cf09:: with SMTP id y9ls2241333vsl.4.gmail; Tue, 27 Aug
 2019 08:08:36 -0700 (PDT)
X-Received: by 2002:a67:fdcf:: with SMTP id l15mr3175494vsq.12.1566918516309;
        Tue, 27 Aug 2019 08:08:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566918516; cv=none;
        d=google.com; s=arc-20160816;
        b=GIP+vZ3FH2/n/SIngWQx6QdPZ5uFPiJCbFXHgVJA3JlXlAi92BNWpWqi9ZuqHBzsc+
         NcMMmkgz8I50ORJLgKE1JWX5eXmSfGbtluuzjsHXtq2HB2gQqioOqGUObX1MbvcWsmA9
         JT7zDyv6Z/iciBlna+Cvm4H+7Wh+jRtii6+i3h2LDJY3v3bCwo6qKUdAx8vVchsASJ0w
         jLNNY/PYjoe4B7saAUBAf63+nvbnaggjLLW620skRsZ5lKkponReU39RVWeKL0Sj9vMZ
         BY1WJrqnF0KA6Bo6Mkauli9oz0WwKy5NXbJ5sjmfHl5nMupYAM6lY4NBwp8q05J19S5V
         qjTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=/1LmeaA03WuIzbmVABD3wkTT7juMaBSoOrRqgBeWHCY=;
        b=S1MeAypn//mV9jPta8tRToBdusEgec/WdY7MnXDNaGYdbrsCN0lA0VatbLnNHtbzph
         hAwXKtgjjTS2XtkDZyTRCpYpl86nrLPHfzJ44iSkiQfDOyas37+LGLKGFPuB6hsjLLRE
         zy5xarSqSss1yqv1/07PHpF0wVSuhvphAWzjcevT07PTW8APgjQqBEjoBrUtnfSvF7uM
         Dolrc2lW4X7xs1IT1cxIP8ijaACNedL+PJ8r20UPcl670bcPon8/bfMMngkAhitwdvjA
         au08SM5PmZbI9PmuhtLhelsCOwWnjoKcHGPoaeIPEtbg8QrTMSC8Xp6yLa5rVA+v1Xkj
         PUKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from mx1.redhat.com (mx1.redhat.com. [209.132.183.28])
        by gmr-mx.google.com with ESMTPS id k125si753995vkh.4.2019.08.27.08.08.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Aug 2019 08:08:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) client-ip=209.132.183.28;
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 3717B308123B;
	Tue, 27 Aug 2019 15:08:35 +0000 (UTC)
Received: from treble (ovpn-121-55.rdu2.redhat.com [10.10.121.55])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B8ED560BFB;
	Tue, 27 Aug 2019 15:08:32 +0000 (UTC)
Date: Tue, 27 Aug 2019 10:08:30 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Jason Gunthorpe <jgg@ziepe.ca>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Bernard Metzler <BMT@zurich.ibm.com>,
	Doug Ledford <dledford@redhat.com>, linux-rdma@vger.kernel.org,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH] rdma/siw: Use proper enumerated type in map_cqe_status
Message-ID: <20190827150830.brsvsoopxut2od66@treble>
References: <OFE93E0F86.E35CE856-ON00258434.002A83CE-00258434.002A83DF@notes.na.collabserv.com>
 <20190711081434.GA86557@archlinux-threadripper>
 <20190711133915.GA25807@ziepe.ca>
 <CAKwvOdnHz3uH4ZM20LGQJ3FYhLQQUYn4Lg0B-YMr7Y1L66TAsA@mail.gmail.com>
 <20190711171808.GF25807@ziepe.ca>
 <20190711173030.GA844@archlinux-threadripper>
 <20190823142427.GD12968@ziepe.ca>
 <20190826153800.GA4752@archlinux-threadripper>
 <20190826154228.GE27349@ziepe.ca>
 <20190826233829.GA36284@archlinux-threadripper>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190826233829.GA36284@archlinux-threadripper>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.49]); Tue, 27 Aug 2019 15:08:35 +0000 (UTC)
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as
 permitted sender) smtp.mailfrom=jpoimboe@redhat.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=redhat.com
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

On Mon, Aug 26, 2019 at 04:38:29PM -0700, Nathan Chancellor wrote:
> Looks like that comes from tune_qsfp, which gets inlined into
> tune_serdes but I am far from an objtool expert so I am not
> really sure what kind of issues I am looking for. Adding Josh
> and Peter for a little more visibility.
> 
> Here is the original .o file as well:
> 
> https://github.com/nathanchance/creduce-files/raw/4e252c0ca19742c90be1445e6c722a43ae561144/rdma-objtool/platform.o.orig

     574:       0f 87 00 0c 00 00       ja     117a <tune_serdes+0xdfa>

It's jumping to la-la-land past the end of the function.

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190827150830.brsvsoopxut2od66%40treble.
