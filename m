Return-Path: <clang-built-linux+bncBCYIBK4PW4CRBCGOVX4AKGQEQWLOOAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x639.google.com (mail-ej1-x639.google.com [IPv6:2a00:1450:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D98821CB25
	for <lists+clang-built-linux@lfdr.de>; Sun, 12 Jul 2020 21:39:53 +0200 (CEST)
Received: by mail-ej1-x639.google.com with SMTP id lg24sf15937240ejb.11
        for <lists+clang-built-linux@lfdr.de>; Sun, 12 Jul 2020 12:39:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594582792; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ym4lwzgBYBjZ796xiwMRSkLbMZcZ85Mbq4Qxu0ERhkJFcuTXfHwgjXVd0INRN/7qXD
         TWY/97SXF07icqFhRuvh3eUcZVqGKICapDySiPrGDHCSVOCE2lF/3x56GBqIeBEmfiMU
         gv7E4x1jB4igaS+Gthq48z4GFJv6KMQ+VZV9lwVC5wZLJm2g0BdhDoorAB3eqm5hEfsN
         WIZ3mQ+Wk76ynU5ZZxT4vKuyofa3z1LKnyo+4YrE7H5l5EprAUbudTMCZiwG+NGdbmsV
         R3bbHKP1IcCzYOlx/M0G15/4hfjeEdd4gzsZI4+MUq+xKyDs2BGfQH/gV8J++Qp9N6Al
         /q3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=DmDpTzdWh5Y24HecC1dW0NBu8JYjVqvHEpGTC3AABUs=;
        b=csvLPJyzCFwstzQuZ19UsIy9X6aak5R6OIDmJjvDfvlhuRLUOhArY+TBqnQsCLydyo
         62FY6OKWizEfqsE3F+mgXb+WIGTL7s/FzEscj2ig5/GEWtNdHVIiB2WfSE8j3Nik8tSe
         pcDYoq1py+2dCBxRhi+lXq3W2LdQKa5KJi7uQNFSZiQYTR7jgoQ//7W4Sj5KwxPoFiRB
         M+2GawsTNmewRDBw09ek070jkhKz4JIDpFOZm8bHRSpCf5ydUwplF/+03U/ZOX9DKPSd
         gtLh2W4GO3uHzrQ6/q91DMEhCxlHGSwGsFfOmAQRD1FzdaSXP3LGii77x2CYirPKMo9L
         0XTg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of josh@joshtriplett.org designates 217.70.183.201 as permitted sender) smtp.mailfrom=josh@joshtriplett.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DmDpTzdWh5Y24HecC1dW0NBu8JYjVqvHEpGTC3AABUs=;
        b=Vf3gSsrbTpb7E/k+7NsAPBGDSVIuLFb1xT0ZrOhkJwklj+JZLMUpXXlqnhIxAqmU+f
         x1tjBdtwBEqGT89eAOU4QZMySzO27V0uLBZm9XSnXc7fRMWMPeMUg9WA5hUxNIBfcgfc
         SjL5Zy0V1pZ8SK1qmrHbhBUnjXy3HdYd0Omqa4OV9MJ8uUGDz8VkeypQ9mBlFl0fOYyP
         khGEqPilwsAc5W4S2pfoXlFhE3lwhFFO/ltMjBxxEVxSPrNwxt7zmIsQLbj4H1dDUrbu
         6pSniUXUL0vJuciCbcJEiwp0funXkZXD/cMM71TawRSHR6EXNWPAVUTmNHyxVY1PXlfo
         SDOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DmDpTzdWh5Y24HecC1dW0NBu8JYjVqvHEpGTC3AABUs=;
        b=AacgoCARi3glqSmHPmTpJCygbhZIgbq0bm3c3daCdKktcQUSIetcGH7sdPzNzQDubh
         V7c44MoMeTxxFniXeampuvPDY9x00zKGFsYIS/+FmYO9FtOD3oRUiJI+eI37H60mazDc
         PIBe2pweIa77yD/WKj3mpz7w2AfRPv55UnkhLEK7cj145mc6kqD8EYfpZBAqmY1K5IO/
         QjGhpl6AwSUqpfOkwjU9bWDUSLfgZXM2ZaRf36pP5hY/dGdnzY0+YT4ULHkYrcRe+P7V
         q2mtxA3nUQKute+mBiIkYD+DWmRC7RcoPSRNWVq71E0L7B0dQ8WksqbZUxJd337d+xbp
         BNyA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530rxR9WtHVop4T+3QDd/eqRLaCduMzFDwc/nCalStWIlIDvayYv
	Yykyx4ITtkOE0DAb2ZsbBP8=
X-Google-Smtp-Source: ABdhPJxj9K50boFOj32xpCXFrCg78+5ZkZ5dlpxD22G2lfbRrHTw4BQzN7LsidD5H+OwQ+qKNoejEw==
X-Received: by 2002:a50:bece:: with SMTP id e14mr8753300edk.190.1594582792781;
        Sun, 12 Jul 2020 12:39:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:5798:: with SMTP id k24ls6361399ejq.11.gmail; Sun,
 12 Jul 2020 12:39:52 -0700 (PDT)
X-Received: by 2002:a17:906:ccd3:: with SMTP id ot19mr76304702ejb.468.1594582792264;
        Sun, 12 Jul 2020 12:39:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594582792; cv=none;
        d=google.com; s=arc-20160816;
        b=IlvQ4ennQGneb4ehLzcl4KlV6otq+RLwsmgSdoOmoiBS4xzLsSVbNUT8NUvkLI6voS
         /1yKME5NHycBkBRb1ST2eETDa/PV/Rj2FHY7KXMjqpPth9YR4rpFCDr8aHJ8ghISWH0t
         vOs93JBZ26vRWLRBT/ki8BRiQzFc9A3gSYDF2dVKX/XrTixDUP4Mc72i/ufdYWRcBv85
         h2freQ1Ni2ck8JUfUtFiN3ITDoLnj8jlxlgUwAzdbw1CnkiE9E9nGA08X6MRbagz4vOk
         3+oqC+r26iHWQJBjrhS7efTNroUPS3EvKP55Lpt08ckxtgHLkYdMfDGJBJiWcxR3HwLo
         6ntw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=eUtyZkd2tW3MUJZMeweephDrN7kfCJ1gq6RG34tW7A0=;
        b=wtxOCHcuf/uIYEt1X03D2cDdQBsJshHH53Q6tpy73JsJs2owvrVEtgfM4aaBF9WphS
         tDAUVizAE1xu2QxFpGQB7zi0AL6BuWkTD7TuIBnAjH5yY3GpzwjB6ssMkF/zUIECnPSh
         6Fb3VocUZLg+wus0ySRSXMcFp9c4djeJbCr9m3te4JXZ1b8GOA8YH2dyAcEi+RlgNOQ2
         gvnEYxpNv6BMSeYFBBEZFi+xa7wv9zaUDHWSXrV+9lHHHJk7kyPtDxLRHNWkn8ixMkJT
         9kXGDq+TE3eFI/4YuGVLD1GeAdqwohTUhsodjLNNu6y26gSZbbchDA3JuROHjol34ni+
         yB2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of josh@joshtriplett.org designates 217.70.183.201 as permitted sender) smtp.mailfrom=josh@joshtriplett.org
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net. [217.70.183.201])
        by gmr-mx.google.com with ESMTPS id i18si569842edr.1.2020.07.12.12.39.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 12 Jul 2020 12:39:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of josh@joshtriplett.org designates 217.70.183.201 as permitted sender) client-ip=217.70.183.201;
X-Originating-IP: 50.39.163.217
Received: from localhost (50-39-163-217.bvtn.or.frontiernet.net [50.39.163.217])
	(Authenticated sender: josh@joshtriplett.org)
	by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id E2F421BF205;
	Sun, 12 Jul 2020 19:39:46 +0000 (UTC)
Date: Sun, 12 Jul 2020 12:39:44 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: Adrian Bunk <bunk@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, alex.gaynor@gmail.com,
	geofft@ldpreload.com, jbaublitz@redhat.com,
	Masahiro Yamada <masahiroy@kernel.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Greg KH <gregkh@linuxfoundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: Linux kernel in-tree Rust support
Message-ID: <20200712193944.GA81641@localhost>
References: <CAKwvOdmuYc8rW_H4aQG4DsJzho=F+djd68fp7mzmBp3-wY--Uw@mail.gmail.com>
 <20200712123151.GB25970@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200712123151.GB25970@localhost>
X-Original-Sender: josh@joshtriplett.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of josh@joshtriplett.org designates 217.70.183.201 as
 permitted sender) smtp.mailfrom=josh@joshtriplett.org
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

On Sun, Jul 12, 2020 at 03:31:51PM +0300, Adrian Bunk wrote:
> On Thu, Jul 09, 2020 at 11:41:47AM -0700, Nick Desaulniers wrote:
> >...
> > but also a larger question of "should we do
> > this?" or "how might we place limits on where this can be used?"
> >...
> 
> I won't attend, but I do have a topic that should be covered:
> 
> Firefox always depends on recent Rust, which forces distributions to 
> update Rust in stable releases.
> 
> As an example:
> Ubuntu LTS releases upgrade to a new Rust version every 1-2 months.
> Ubuntu 16.04 started with Rust 1.7.0 and is now at Rust 1.41.0.
> 
> It would not sound good to me if security updates of distribution
> kernels might additionally end up using a different version of the
> Rust compiler - the toolchain for the kernel should be stable.
> 
> Would Rust usage in the kernel require distributions to ship
> a "Rust for Firefox" and a "Rust for the kernel"?

Rust has hard stability guarantees when upgrading from one stable
version to the next. If code compiles with a given stable version of
Rust, it'll compile with a newer stable version of Rust. Given that, a
stable distribution will just need a single sufficiently up-to-date Rust
that meets the minimum version requirements of both Firefox and Linux.

(That would not apply if the kernel used nightly Rust, since
nightly-only features are allowed to change before becoming stable;
that's one reason why we should use stable Rust, and try to get Firefox
to stick to stable Rust.)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200712193944.GA81641%40localhost.
