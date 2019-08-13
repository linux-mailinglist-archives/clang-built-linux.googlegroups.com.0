Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBCHJZHVAKGQEO3MU2GA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D3D08B268
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 10:27:53 +0200 (CEST)
Received: by mail-qk1-x73e.google.com with SMTP id d11sf95644878qkb.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 01:27:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565684872; cv=pass;
        d=google.com; s=arc-20160816;
        b=YmHQQv2hM7CTW23T0lSP4FEvBCRsAlgCUIu/v9aCNWuDzB69XX9SSxSRggy2ELyFd0
         JEnaUPaxW0/OwZoWDLbO4hdxKy+nUMQigBziA530ywXWBgQ3PVRWOUeBQi/XUjJ/BvSO
         wH1yqkYBMDpMDBcg1NFrkWF6TAl6Ma7fDOf3e3WKNtPSJYN9P9ck6qmbgljILR5icg6K
         PySLDOwAhdJ75R/5HXiJEt3BHjV4bBzbQHnd5ad61/tU0iiO5yGG9Gl+l5ejgAYbSRwo
         mOT0XUV7T/vy/Gdd76B4rFT+JEt4bqDQnDsduV/7vHOy2YdkLWc2dkmVR4J+77itgJSr
         tSlw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=4uvC5MPJFOuszvWBUUqctKb1XDhi+kAcXd6jzruTDHc=;
        b=ozi7pUjdpGVVITBAMKJ/Jg4sI4a10BGPth226GyMA+EP80gyZI39d4lQCcKJYXCIsp
         NG6vHTg7DWRkezHIn401sEBUQBVbBNNTN73Tcu/HqmuBhrPv4r5IiVoiPuP+4C+drgX1
         IJp5nauaaS16Horhzic7495w/EOWQOzaDRL/C0SBqzo7gGQMoIHyVZ3r3i6Q1LKfZ5h/
         +xEZxY4jz83iFOtNRy2jksf3hm9I5SgTxhDttqnRP/wenYcOf0kS/6Tc4pdn6pUxt8Yu
         vscZiRFOh+27M/el5JDg8p2xU6q96wz4LFUKkQVsxUYC0Odn4IOS1EsAWHGeK++1KUE3
         uuFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=QkIvwE5t;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4uvC5MPJFOuszvWBUUqctKb1XDhi+kAcXd6jzruTDHc=;
        b=Er1+4zke4vl8FnggUCSSbEYG2wcYE3aiw/+reZqg3hTV1Rs3WK4bVP6aqfoySSxz8O
         wEiC27EJyat5mTOeyVDOlAkw211i1c4wkX+UwCLlSBaooJGtcoFV55atkYVkYbg/4j3m
         y10lXyUtErJzDzWrc9DJzM1jCCK8YHSSejo715zrawI2hwHB1zG+d1eIDQpxYGuxz+em
         DVQhrNMejv2JnmuDr1c5hccDgENHuEB2ntQ6ezVlA0ZDAB9osaJ4zx42iTKj/mif10HH
         2JubAtZEwbVh0z2lksgC3FX0QpZEF8OunqwdHGcXzJlb+//kKcT8dYyqezvYG4HoIpeN
         lo+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4uvC5MPJFOuszvWBUUqctKb1XDhi+kAcXd6jzruTDHc=;
        b=d9bwCaX8dv7x1zQyCKdAkvFMibFAAunjyJb8kkwYe/8Wp2gaazIwko1yoH11OEJUfM
         VCY+OBSdy9/cyK1q8PROiM519SpxiYVJ28+8XnkymJXmEK/j+6Juw5Z+vX/CGeiyodKR
         VmqWnVZTkmBBRgiIoe381A06Sg6jiMVf4tzfyUJtidZQg0JVhU8jbrLfGrPLc+taVYIe
         iUart5kCznfq/dQsS5w2V4l/+QXOO033OoVkheqBai+ejtYjoHMHALU3GfcAj7FClQcy
         0fRYzU8r3RIjFVr9QtHIbNDdNEzxHkBDe2vW0VxZH6Qgjr+c75PzunisNbIQBSSStYC7
         eCTA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU6oYaPLVnBeqprtg0+9JKNAQVE0fI7DPKmeH+TKw+/Pv4+y1fX
	UJsdMzGPnLROWtJCbYWMZdo=
X-Google-Smtp-Source: APXvYqx/UnY1VNfR/LImnraIBGak56GetVRzdJ4RuWE4Robd1iSzsgxqUN94VGbWOmuLne2u3JNBSA==
X-Received: by 2002:a0c:e5c6:: with SMTP id u6mr21953161qvm.102.1565684872440;
        Tue, 13 Aug 2019 01:27:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:6d2a:: with SMTP id r10ls3757691qtu.8.gmail; Tue, 13 Aug
 2019 01:27:52 -0700 (PDT)
X-Received: by 2002:aed:2f03:: with SMTP id l3mr33967080qtd.264.1565684872250;
        Tue, 13 Aug 2019 01:27:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565684872; cv=none;
        d=google.com; s=arc-20160816;
        b=oQIlc1tN3MxOris+sFqd1i5QqG8IOWg52Tcvtb8ab3gRxBX4pTnxuDCmE4WEe8jrB+
         l83Qsg6XcF9HoP8qq/ygFyxHNPgzKdbRsCDD8dvF4MlR2qLsXewiWXrj3nIAl0iYzEnX
         nWGl3DCqDMB8/gpnY2vWNZu7XOjy31SjCeKgid3QV34mRtiSPKZbIXle9bUnA+t1UOfJ
         hNzkPiaMsYxgquARmUy8YxnnXsbrd2xEQF5n+Xbrg9jtRaXM6pUomkn2TysJSh9FAXIa
         f9mRsguZn/Rg4sup0PEgomT2k8SEDo3gGu67BB+7capFjnQ/O/n5dx6vE2AGLUr/dncx
         LUGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=l3gOxg9cDNbfEo+QFs5wJIXq1nA0q7JIFWh6Fy6/Gzw=;
        b=iNY1YDD4U282aO1cE4dtlzM+ZFv/MzR0kkK5nS3ezU75exx2v8L1MFl5r9neWSfml3
         uOi35NcspV4v7ZMwR+xT+MBu4FRhDeYMhQOFu8BijszTZYJb2KxvzPWOj58KD/4kVSHS
         kdAg+g+iBeCCZvqnD8cPM/G/D/GKwDwwEqihOikxEaeh3MkkCreEU45yJ2uOahsbwGEZ
         t7An8h1fYfW4457vipP25XCsNovFUsjOGehCi9/zQ3blPm51YvWQJWvUIxNTEZS4JP2D
         xldYGResGZWTChrCuuLwYU89vZTf0P0JcgybUH8869FLvkmdyTfB4JMcX9A5dtHMEKzl
         orbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=QkIvwE5t;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u47si900594qte.3.2019.08.13.01.27.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Aug 2019 01:27:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4CE3820663;
	Tue, 13 Aug 2019 08:27:47 +0000 (UTC)
Date: Tue, 13 Aug 2019 09:27:44 +0100
From: Will Deacon <will@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: akpm@linux-foundation.org, sedat.dilek@gmail.com, jpoimboe@redhat.com,
	yhs@fb.com, miguel.ojeda.sandonis@gmail.com,
	clang-built-linux@googlegroups.com,
	Catalin Marinas <catalin.marinas@arm.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
	Andrey Konovalov <andreyknvl@google.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Enrico Weigelt <info@metux.net>,
	Suzuki K Poulose <suzuki.poulose@arm.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>,
	Shaokun Zhang <zhangshaokun@hisilicon.com>,
	Alexios Zavras <alexios.zavras@intel.com>,
	Allison Randal <allison@lohutok.net>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org, bpf@vger.kernel.org
Subject: Re: [PATCH 12/16] arm64: prefer __section from compiler_attributes.h
Message-ID: <20190813082744.xmzmm4j675rqiz47@willie-the-truck>
References: <20190812215052.71840-1-ndesaulniers@google.com>
 <20190812215052.71840-12-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190812215052.71840-12-ndesaulniers@google.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=QkIvwE5t;       spf=pass
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

Hi Nick,

On Mon, Aug 12, 2019 at 02:50:45PM -0700, Nick Desaulniers wrote:
> GCC unescapes escaped string section names while Clang does not. Because
> __section uses the `#` stringification operator for the section name, it
> doesn't need to be escaped.
> 
> This antipattern was found with:
> $ grep -e __section\(\" -e __section__\(\" -r
> 
> Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  arch/arm64/include/asm/cache.h     | 2 +-
>  arch/arm64/kernel/smp_spin_table.c | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)

Does this fix a build issue, or is it just cosmetic or do we end up with
duplicate sections or something else?

Happy to route it via arm64, just having trouble working out whether it's
5.3 material!

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190813082744.xmzmm4j675rqiz47%40willie-the-truck.
