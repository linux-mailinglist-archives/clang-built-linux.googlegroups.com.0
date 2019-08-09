Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBE7OWTVAKGQEW2I2OWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DC6E874C5
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Aug 2019 11:04:20 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id v49sf67548445otb.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Aug 2019 02:04:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565341459; cv=pass;
        d=google.com; s=arc-20160816;
        b=cxh1cE8ZqCqItKWJfbAxP3UoSZdXMh6gIrhGf/hkzGySSNRI1FtPRtniFyCmrOuJHX
         uGikiv3haUUFXCCEJOUg/ierLMIaVCCGiEOgsQs+rsrdNDEOexQWuzzbv62WUtH0Nzru
         BuGCXmfQ4ruyn9D99OY2o+2FcQcAOJP2j+HtiWr/ns+W/3kiM7SgYvhPc/TWE97NMxKY
         Wkql0pwblpe37GumKVtrJEr90HO0NIh3NNFMOQjSmGQQYnupxEUbs2RplS5IrXI2AiZM
         lTwpk9sfaweuVqnyCW1cd63gcu1OJKgPNHP57nG213rICTkb8NCgmLdSBQtPdX8HYG6J
         pa3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=ddNrJbeTnCJ/W9FLBKOTrZKWhICOURY3Jv7E3uJEvgg=;
        b=lLmj8VUDC9ycbROWFi3JYltrBb4GRG0ZP8K6R5jcL4h86K+CxSVTwGYKVOIjM8k7iD
         eNK41ot9SzcGOERqiK6U1A7mtZVWPz9qESE4PZywYYmIKh4k6OiPNXiSaqPAe0km90q/
         6IGmGcEVoKZosjzJpC4FdOIBUive3UwwIPVs652mW9Anea9rnULy2za94CBzWv8rPA7h
         GvsQlYJj3foJVZMsZ1tFNyL18kr7HhoSKx1i3Yw68WRX4D7VSL514aBO1zS69en+gjGM
         kxIDHbTpdLzMfV6Thj6kQWviaRYfWllXfY0fNdHIhkgT65JCci+/Zzz5s0wiiGf8uz+b
         oGwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Nevi0XM+;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ddNrJbeTnCJ/W9FLBKOTrZKWhICOURY3Jv7E3uJEvgg=;
        b=hLJhH7s7LWLB3F4qUA2UdSsODP6P2DBTESq9dgA0V8Y6tkJjnqPYhKBgV8y6gd0s3W
         bk3ApCWnTysP60M7VWBnZiEAeBbkQ9UBYSuMOM+fUEhrXx1Wy3On39ZT30mCuMXDLyjN
         VssyNwKi+7B3ulRFpMdt7PO0FSjUWMMo6yH3GDYm+//TIEm7SQhI7hYdmqwGnkb9n9xf
         xi9w5G1p3v1MpNnaopmvecgLHFKol4YD74keb4RWVpuxD+f3rHWxrNxgOrk2mfkcApyv
         EepGhVLriAr/i0jcxavmro1fl8JC5OitDnhba+XVe23fRbKymLld7f9twRNhG3OMmXYn
         ZySw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ddNrJbeTnCJ/W9FLBKOTrZKWhICOURY3Jv7E3uJEvgg=;
        b=sMV0vOfRjmIRetSC5VEb+6owlA/r+OT//I0OTavn10hM1hgnt5y01oDVd0qmS1wmSw
         8Jbqdf0la7o8zw684M4L9NYgVBjWWFvTw1rxzW7JX7f7VNjk/iHxfUNSINx8NQECeCp3
         OrZgWdKwSHVmaQaQn/4vccgDfTcI/Ej+WFOSsdCPtuksaGdRlJTnCrBMsFXpTpOdcCo9
         JFlITiN5dqPO52CTWgD+iW7eBbr9c6l8uJ3JQoneOd5G3y9tqe1Z4PLbqEIvzG7TD6oY
         NxYBlH4/31cTX/9E8L4wqSk8nTCK1cGFKDQEIKknFWyUv1Qyub1NaxWW3jfK3qXJjHEO
         81wA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXeX1ZC6TlAxEd7T5Y9P1qbJvM7zL/zm48lJ0baopprXoxg+ipP
	/2RRmspkSlDgcjzGoNGFh6o=
X-Google-Smtp-Source: APXvYqxW+1vrmMgLIGPOCKPHZQSDwFr4o7Icmu+vBQCbbOmd1Dsh/yulyxWkWSMdkc9y70ptN1QF3A==
X-Received: by 2002:a9d:5911:: with SMTP id t17mr15944840oth.159.1565341459354;
        Fri, 09 Aug 2019 02:04:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:3e45:: with SMTP id h5ls3080830otg.11.gmail; Fri, 09 Aug
 2019 02:04:19 -0700 (PDT)
X-Received: by 2002:a9d:4703:: with SMTP id a3mr6296411otf.183.1565341459056;
        Fri, 09 Aug 2019 02:04:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565341459; cv=none;
        d=google.com; s=arc-20160816;
        b=pfY1mJHEEqDYegyL1XQnF7tM0wqL/A6hHy5LQL4O7k71hrf5BHzwWqzf6az/JLi5k1
         Xno9LKALYnYddsENJezWXdScPpxKonn3tOsnLwNS5+MeG59eeQYKyWdMLXuMgDb/C12U
         SutjPRMEf5fPzVQiFE78rPxwffgShRpMdPNK/nrl+XA6ZTi8ncGZPcHRr3spyzEdsOCj
         3qZwb4psq0RPUTQ07L6HAprxFHeXHj7+yLZhzsMExxYA0/Ocb1jetbjzRK3j+86TFjKR
         UEzJeFK89uFPKUOjtvkCy5sUj2k99wAhir6is/d8F861l3PhhKpj0/cE71mLs+S2CUax
         9Vyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=WmJcn+tdvH3mLNwA8coL9q0I0evSbzxY8gCGGt0Mkgs=;
        b=KwumZK8TJQXFQHpYtX532q1ZJXsCQjjlhpRrSJzAKfSW29O5b7CRLqDb7aKwvzHeZl
         B53kzVA0ocrSuuVLfBXJFeN3fQVMroQERnGT4BwMY4RMtkZwBnhZITpAR+ZxlOp7kAo+
         AC/wo0hF4nAqD73kDmaNocaDAVWZLq4rzvUKwoYDtasl7LpCI+6bTIHaOsspX8me0jHU
         GCvV445RlmRmsCQ/N+IzgeQvcygde0fXYc04lLa7b/UXH1vbEB4r/UC3KnGwvOTsIc5D
         fL8AmGL6BDNzZkpjyGM/R3ClexkzxUut+qLs0JQiFVjrQftv9ArZvg0dmIo6PuCU4Jva
         GaFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Nevi0XM+;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b17si4658721oie.4.2019.08.09.02.04.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Aug 2019 02:04:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0CC4B20B7C;
	Fri,  9 Aug 2019 09:04:16 +0000 (UTC)
Date: Fri, 9 Aug 2019 10:04:13 +0100
From: Will Deacon <will@kernel.org>
To: Qian Cai <cai@lca.pw>
Cc: Mark Rutland <mark.rutland@arm.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	linux-arm-kernel@lists.infradead.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Linux List Kernel Mailing <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] arm64/cache: silence -Woverride-init warnings
Message-ID: <20190809090413.c57d7qlqgihdyzt6@willie-the-truck>
References: <20190808032916.879-1-cai@lca.pw>
 <20190808103808.GC46901@lakrids.cambridge.arm.com>
 <D2A2F2B9-0563-4DF6-8E77-F191A768CE4E@lca.pw>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <D2A2F2B9-0563-4DF6-8E77-F191A768CE4E@lca.pw>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Nevi0XM+;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Thu, Aug 08, 2019 at 06:18:39PM -0400, Qian Cai wrote:
> > On Aug 8, 2019, at 6:38 AM, Mark Rutland <mark.rutland@arm.com> wrote:
> > Please just turn this off by default for clang.
>=20
> As mentioned before, it is very valuable to run =E2=80=9Cmake W=3D1=E2=80=
=9D given it found
> many real developer mistakes which will enable =E2=80=9C-Woverride-init=
=E2=80=9D for both
> compilers. Even =E2=80=9C-Woverride-init=E2=80=9D itself is useful find r=
eal issues as in,

Every single patch you've sent to me resulting from building with "W=3D1" h=
as
been a false positive. Every. Single. One. That's not what I would call
"very valuable". It's probably what I'd call a "colossal waste of
everybody's time", especially as your tendancy to shoot from the hip when
writing these so-called fixes has resulted in some patches that ACTUALLY
INTRODUCED REAL BUGS. Do you see the insanity here?

> ae5e033d65a (=E2=80=9Cmfd: rk808: Fix RK818_IRQ_DISCHG_ILIM initializer=
=E2=80=9D)
> 32df34d875bb (=E2=80=9C[media] rc: img-ir: jvc: Remove unused no-leader t=
imings=E2=80=9D)
>=20
> Especially, to find redundant initializations in large structures. e.g.,
>=20
> e6ea0b917875 (=E2=80=9C[media] dvb_frontend: Don't declare values twice a=
t a table=E2=80=9D)
>=20
> It is important to keep the noise-level as low as possible by keeping the
> amount of false positives under control to be truly benefit from those
> valuable compiler warnings.=20

So that's where you and I have a disagreement. I think maintainability
of the code is the single most important thing to consider after
correctness.

If code isn't maintainable, then it's liable to churn and be a constant
source of bugs as people keep tripping over whatever subtleties lie within.
In some cases, we have little choice and the combination of things like
performance requirements and compatibility force us down a path which we
wouldn't otherwise have considered. However, appeasing a compiler warning
that *doesn't even appear with the default build options* does not quality
for this sort of treatment in my opinion, so I will not be applying your
patch.

Please stop sending it. Real fixes, sure, but not this rubbish.

Will

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20190809090413.c57d7qlqgihdyzt6%40willie-the-truck.
