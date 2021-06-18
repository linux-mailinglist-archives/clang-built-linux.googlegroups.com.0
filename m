Return-Path: <clang-built-linux+bncBCM2HQW3QYHRBT7KWKDAMGQEMGSTY5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 0684B3ACE38
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 17:01:38 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id bn8-20020a05651c1788b02901274fe2c687sf5237909ljb.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 08:01:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624028497; cv=pass;
        d=google.com; s=arc-20160816;
        b=CK1fTP1UQdLM9PfbvWx+LBaNmr8ATfJNZEYu9MctJHTFIBSM98TBqNSCBNxixLKUME
         5xy59ZIp/3WnaPEL4JWDeSZx2Zd9I38bD+1FAg9b/0b3RCXMQiJAhCjjd3Jjfw+gbCSV
         5YCZ9p27RI54vTCGS0MDBXeCVoXjcM8t8+rV6mYOcqhzZGM+uFyqOEI/DpcuGPVb37l+
         R9yxZjTWnU43XmfPJFPSGCLZnAC798E6O7l9oZKI4jLfuMBD8hjnpY80jyr/7XnRI+qI
         tBgHesj6p/EUqG70Lgg97n3grs0b6RIgum3uTH8rRPnWbQTRh3pOXcDj3Hq47FLPtvpE
         16IQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=D+ed0rgukqVVedSWC+MQHqy+IrBv3bWPEcKZqwSb6qQ=;
        b=M14pGRz/UJx7ZCRYzUMp1nxSTtAZ+mNUA+7HjM/Lp8G6Fr0y0CK7KvZ7Xd0iGI/3EY
         eVZFVx78lbEaiNfe0Gxl5p9fBbkK4oLh7fc+QR8aSRiNXtWR7rx4gHfNxZTnxkyvQPZA
         VbkA0od+aUKjyf/lrnJZ55g9dOdXeEVB+BoOqWaMVHVUvY7N29u2/GwlYlFeydKvY+iE
         iEuTFKTnov7T36Y7pBzb2qBPRy4AXEOr0xy9qr3Eox06ic3zu3K0tXnUqBGRe/2WaVrv
         DThE1IAu9kybsJhuJJcOix0AGvjXhVjxeaZwXqmv7RK31jVC2LgJNdMc56nre+ce7Lef
         JFsw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=iGLZeQ07;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=D+ed0rgukqVVedSWC+MQHqy+IrBv3bWPEcKZqwSb6qQ=;
        b=sWNDLLkdrGni7kUS6DuwEDNt/kLiMLTe2eC9vznt5TzWsVByiMZX/BvH9i1oXhMxxu
         UrSrKjHnHxfskdgFJUSEBdBfv64s4cdaWwEXGgCsL9U+6fPFgJ/LKrY1uNZ3gW2aFY0r
         dH6bf4IIGiV2n35pnuyY4Us/ku8NLx/9dJagJokEjB4+ST1F6O8601iy7np3m/hHzZAt
         X7V3lqcVxywmTz13FsyMfOyRrn866p6uTfXGRrpBjsdUhov/k+7lOrAF/t0Ff/15Duy1
         7qnAsuGx6ro26raZCpIgf7ZHjOp8zeyopCcgkvYm7ag1f8GTNyOZuW+a7t+/YBch0Fg4
         juow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=D+ed0rgukqVVedSWC+MQHqy+IrBv3bWPEcKZqwSb6qQ=;
        b=o5VB48VXro9uk3soxk1VTSTrtEW/FtUefDWlLITuDcqoJuasdVIifjsEqHF9QxSUmc
         oOOjQm3/AJWQj4HW9DSjjS1EhToAIfj0OcYrZQlsrfAtOJXVzGA0NP4P7jT1OGaIIlmA
         NrqodonWOYqEfbFsXBsLabTMw8yelPwmZlakjbWrVw7jWzS77tVoAwNXth6wYWszo4QT
         O4FZp6V/EYxYKaDcuuLLQre82f0ffBhdwxb60zzscqHaEZvvbIhPl4/WgUCzwjEYNK2m
         arULygw7R3QhqwwED5aSO1tmDBBTfjCQIRETftxTCJgTuudBJQt03KIqocsE7OE7KWmY
         ZGPA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530jvaeyv/SBj1Jsq+pyMqFE5NLcx07wwLBeaWhnudpFnHpZpLK8
	zR34LXapAYPYZY3DJ+HE0rw=
X-Google-Smtp-Source: ABdhPJwLlv9eGVt46KT31O0twRZVSbRJnVd9RJoN4X6Y/8mXkaKceo/APxIwrhULl4EX+skP/BG34Q==
X-Received: by 2002:a05:6512:3c83:: with SMTP id h3mr3523276lfv.80.1624028495886;
        Fri, 18 Jun 2021 08:01:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8790:: with SMTP id n16ls3440723lji.11.gmail; Fri, 18
 Jun 2021 08:01:34 -0700 (PDT)
X-Received: by 2002:a05:651c:178f:: with SMTP id bn15mr9829460ljb.448.1624028494614;
        Fri, 18 Jun 2021 08:01:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624028494; cv=none;
        d=google.com; s=arc-20160816;
        b=RjLCgJZ0JoPxW34cT2TcOIXdXw7HTbKTUixvlPZScn9Z3Sx9YdU3Yw9NxnhRI+ZdyZ
         445tlihPMYmj2rciOvbwL4KNBurPwgRsZkxmt3LNGk4Yvn6dbKbQX+JVFCVJRAfqR3ed
         JgOW8no3VlsEv7IIYaSs+O67HF/KDrPx7Yi8H2cn0VHyaPBkr/jrMTgYOf+QWSF7g+i7
         yrFsuxpf/KpgztGG3FLZ+MXS9udqAIoskajGYzD3Ery3lBjmvLqqMyrsm915duKz73C2
         yY5goXNRr5c4MbqH95v1uGc87RtY2sBX+XNbRvR0ymcoPkPXgfIF9+AWM4dfMJ42WC4M
         6DFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=lE6/LRNU2ACZUrRFcA6pvNzr0RrB0aVnorgMrzorXY8=;
        b=ITeK55mkvC6t1Cb1CY96Aw2H7aHl2Jk2tZsZQNQPcS1sc16Ey8HghI3QASBYw5ZsQd
         //Wgf0Vztgx7AszywyjQp7aP/JAXQBch/MP4Req/smcWrhaFYsM+PIPbJHEThZeHbU7b
         F2HjacXmr3ggLGKPzgej/Th9V6tsVvTzr5kmdqLPCkf0SbkuTZ6k1msbSZXG9QOUjNCP
         dflKRNdoxh9zJ5gxuTGVuQQKoKmlBJHcBpv/ZHl5eg8DfWYX52uXUKaD4mAI+MAfnXr3
         478Dnqw2Y1sA6sNXTqfRskvmydrWiqiDUFf4BIejPjUyCVWQPP3/C2fMumfbk6L75TMf
         GXAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=iGLZeQ07;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id e14si208810ljn.2.2021.06.18.08.01.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jun 2021 08:01:33 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luFyw-00AO1i-3k; Fri, 18 Jun 2021 15:00:42 +0000
Date: Fri, 18 Jun 2021 16:00:30 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Thierry Reding <treding@nvidia.com>, kernel test robot <lkp@intel.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Dmitry Osipenko <digetx@gmail.com>,
	"kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	Linux Memory Management List <linux-mm@kvack.org>
Subject: Re: [linux-next:master 5946/11253] ld.lld: error: undefined symbol:
 reset_controller_register
Message-ID: <YMy1DpeyrYm/pwYF@casper.infradead.org>
References: <202106182243.KgZxMD9A-lkp@intel.com>
 <YMyzKmDO+SJt8n4N@orome.fritz.box>
 <b29290ec-679d-322f-0cd0-32358533aac7@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <b29290ec-679d-322f-0cd0-32358533aac7@kernel.org>
X-Original-Sender: willy@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=iGLZeQ07;
       spf=pass (google.com: best guess record for domain of
 willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
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

On Fri, Jun 18, 2021 at 04:55:23PM +0200, Krzysztof Kozlowski wrote:
> These are randconfigs, so I don't think Linus will hit them when
> merging. Therefore assuming the reset-stubs are applied (and tree is in
> next), we should be fine, shouldn't we?

It's a bisection hazard.  Please fix it before the merge.  This is
exactly the kind of thing that linux-next is designed to detect.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YMy1DpeyrYm/pwYF%40casper.infradead.org.
