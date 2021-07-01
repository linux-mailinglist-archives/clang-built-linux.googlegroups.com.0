Return-Path: <clang-built-linux+bncBCN7B3VUS4CRB5MF62DAMGQEKDT5MVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 531AC3B8F31
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Jul 2021 10:55:18 +0200 (CEST)
Received: by mail-vk1-xa3c.google.com with SMTP id b12-20020a056122124cb029024f6b600c04sf1053593vkp.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Jul 2021 01:55:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625129717; cv=pass;
        d=google.com; s=arc-20160816;
        b=BkOvQYigikz0Hw1WZO6iOr/kw6JwS35k7sm+4DcvnqF1mLx9jXd4QJs+UFUL1fF/un
         DsMaPuN8OMOOZYJ8yBfG5QSrDZK9wKHd2gaZJy+nVurJfG9x9DhXLwVjOU3ekgXNL2kG
         3qtcSJGesBG5vOXmsMW+tkyzku23rqgY1DjjreGxFUzyEFx5PIjzhl2KMJnErXFSlWIc
         WBA4JGESYYLboEpTNdgxMpyUtR3fAEUsaz4lGfl45x7nY7ntL1tR1sE9YrfzODGcTSQk
         1ivV8Qz1eQypurv4GoORPWKs8CXyeluEz+lNpZguV5YHmS3BOvJ54+9qs+K8x6/IxAFh
         Bqug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=bY88x1KYkCVVmMCj1ZKD5q3SchuN8MDr15X4NyG3Hzs=;
        b=WFG7rJyCyejJkrYqIA77/stdVyb2G3QLmkVpvGiaypTvXMQRrOw4zl/LwyW3qbpkDm
         10ABvnnbMWEy/Y0gCWDe4Vjs+NLnFC6tFgBDLod7M0qJl5SubvYfJt2PYRGHOR4X6bzB
         bP7LVzcQQILeY33rCcy1lpcrq2rnhWAKOWxjpVPkhFhPLGn89wUKH8qSmZJV2vWJXZC2
         ONXOPQTKa3AATGX8W2zxaH/SvMj7k++TI8kQ2Ahz3G4VRx9hofIT4XNuVTvFEUj+umqq
         86DwCgtVBxeaf1IlnVUDe/S3O3SOyhZzcUbBDVFjtgGUGz9oEHkNcS9JSTnNHZ4y5fpV
         LRpA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lecopzer.chen@mediatek.com designates 60.244.123.138 as permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bY88x1KYkCVVmMCj1ZKD5q3SchuN8MDr15X4NyG3Hzs=;
        b=k8DEQM3ymih7HP7M/TjGmR7Z8gSawxnUcVPlF7ZJSI5qXZ6Fg1pqZBSdwYGgLUla6b
         Zak99Eo1Cx7aWZ2NcSw3P6RDEE2xdgO8GRRhmU4lH+SV4Ju6uhZFwafw6FARAYc3DvI0
         opbupUTSFaTWjNfB/jZSIQ4neFJZU4ExUu1QcKH7dg3o5nfe1eYTzthQSylOK316oqRH
         DfJqLudk6PYlFip9DE1CV6vSHNxAV2JqcE3Mm1Gh7DZdm08SNa6SIAeeKM/0oHgu6g1g
         JdAqUkeNhJ4nV405gqBqTZD4s+v347udpMsYCDYsRTGcClvAVQcWDsAQnOMHP2KhvwAQ
         s6pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bY88x1KYkCVVmMCj1ZKD5q3SchuN8MDr15X4NyG3Hzs=;
        b=WVSKLLZdRpWJ2M+nq305zFsUMyAA33oVdF8Bm37ECsVgZKCfqJhI0TPSVHiMN28JCO
         hx32It3qjFAyF8+E2od0joqjMKuQpr8Ktse2uj1TlbOfOH5xz1/+u7L3JMgiL3TidXQY
         kSmwFcc9OEvdn0bBG8N20rLi+dkO8lMjn1j1syqvgcqvuNiZMNo4DQBpbLygmH3wSgpI
         g69M9Zbj4gWq2mijHyFPi2OHnVpNnEDxzOONAK6nBxexTCulXfd7zouuqQcql0JIWrf5
         HYXg8ZUlUUx1Y5wbFJvfUOd8PvlrzQPmyDlLkmO6JJqqyHaMSny8+bZMCvSKZcRyKw2j
         2qRw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530gT0O9Lt1BlWHDEk5oiEbPaM0VHssTYpG6lXZnTaol5Ix8kTgx
	33otNCNghpQbQ3kc3xyCZmA=
X-Google-Smtp-Source: ABdhPJzS8IHn4xDksj26JuCUGFQY5YJs4zMc1RVEL2xgLaZAMlLDONNSp8ngr7uNKF4vWiN0lWc3/A==
X-Received: by 2002:a05:6122:169c:: with SMTP id 28mr12053146vkl.12.1625129717435;
        Thu, 01 Jul 2021 01:55:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:6a84:: with SMTP id f126ls636340vkc.2.gmail; Thu, 01 Jul
 2021 01:55:16 -0700 (PDT)
X-Received: by 2002:ac5:c5c9:: with SMTP id g9mr32132585vkl.11.1625129716831;
        Thu, 01 Jul 2021 01:55:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625129716; cv=none;
        d=google.com; s=arc-20160816;
        b=XNA35wab2Gi8KGxmg9wbL5wxQulI6AO86Uv83iIJ9sGvGqQDuOLsP+X/UHwv+v+UkR
         kmVGgCVXii7UWv03weFBACEKfY1bdpQQTNoW8IQ/ZzBuh3zf8iC9hVLkzeRB5cyzdNLr
         AxZyhP+QYTVEBHJ27ch9Tunoy80442X8wAwhu1ZXnTtECcvgGNTM6ez6NfAli9K3RHfo
         edjEsd0Gk55i5BhxOCAuI0pS1GlKvhMBxMO9YFCiP5jKQ9DXPigsD2cKW10bmHIU1ieP
         +8wZLIx5BnNLCgQjfA1U5p2P4zXuuC6wqEiH7u389GKV85UDRJf8qRo4ESe5giiRLtoi
         +zNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from;
        bh=FiaAMyQ7mERFl5LORVJs2AKiHmHkIK3N8lATW3lYcgA=;
        b=sj0qHfnVWOTmvijMbfyS1hXL42r4mwNnJHntn8Nm1FfTLBjhJHYkYODXNkVkjRN28d
         8ggCh1MApAKTxkPWDcMnxv6rlgHs8i3l9qy4QYlUNNfISbIlGp3enSpgo2eAM5SWn0vg
         5XWcJZDq0Tvd/57yrfQJpioP4ktZTv1IkaOgJIYbCQiEoruK6Ls4bx9yFrg7jD9UJiuz
         pQ6WlFYguDHik+hssqqCgpzGS0kebM/xq6ObL0XA9x9Mtq65HYw9y92zLX36CIkGTXDy
         XQXMjb3wJSzJ10mtw0VQxi5GzFZn6B1ZGt7AAs7Hk/LcxSEZpMUTrjUZSX/mX4W9vF3b
         IK+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lecopzer.chen@mediatek.com designates 60.244.123.138 as permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
Received: from mailgw01.mediatek.com ([60.244.123.138])
        by gmr-mx.google.com with ESMTPS id a6si1949135vkm.1.2021.07.01.01.55.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Jul 2021 01:55:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of lecopzer.chen@mediatek.com designates 60.244.123.138 as permitted sender) client-ip=60.244.123.138;
X-UUID: 9cfc03a74eeb461082d1641529f2264f-20210701
X-UUID: 9cfc03a74eeb461082d1641529f2264f-20210701
Received: from mtkcas06.mediatek.inc [(172.21.101.30)] by mailgw01.mediatek.com
	(envelope-from <lecopzer.chen@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
	with ESMTP id 1520831154; Thu, 01 Jul 2021 16:55:10 +0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 1 Jul 2021 16:55:09 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 1 Jul 2021 16:55:09 +0800
From: Lecopzer Chen <lecopzer.chen@mediatek.com>
To: <nathan@kernel.org>
CC: <clang-built-linux@googlegroups.com>, <keescook@chromium.org>,
	<lecopzer.chen@mediatek.com>, <linux-kbuild@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <masahiroy@kernel.org>,
	<michal.lkml@markovi.net>, <samitolvanen@google.com>,
	<yj.chiang@mediatek.com>
Subject: Re: [PATCH 2/2] Kbuild: lto: add make version checking
Date: Thu, 1 Jul 2021 16:55:09 +0800
Message-ID: <20210701085509.395-1-lecopzer.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <6d687b9a-c295-ce8b-9472-d2859977be2d@kernel.org>
References: <6d687b9a-c295-ce8b-9472-d2859977be2d@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-MTK: N
X-Original-Sender: lecopzer.chen@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lecopzer.chen@mediatek.com designates 60.244.123.138
 as permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
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

 
> On 6/30/2021 5:14 AM, Lecopzer Chen wrote:
> > LTO with MODVERSION will fail in generating correct CRC because
> > the makefile rule doesn't work for make with version 3.8X.[1]
> > 
> > Thus we need to check make version during selecting on LTO Kconfig.
> > and the suitable version should be 4.2(40200) which release in 2016[2].
> > 
> > [1] https://lore.kernel.org/lkml/20210616080252.32046-1-lecopzer.chen@mediatek.com/
> > [2] https://ftp.gnu.org/gnu/make/
> > Signed-off-by: Lecopzer Chen <lecopzer.chen@mediatek.com>
> > ---
> >   arch/Kconfig | 1 +
> >   1 file changed, 1 insertion(+)
> > 
> > diff --git a/arch/Kconfig b/arch/Kconfig
> > index c45b770d3579..1571957bade5 100644
> > --- a/arch/Kconfig
> > +++ b/arch/Kconfig
> > @@ -632,6 +632,7 @@ config HAS_LTO_CLANG
> >   	def_bool y
> >   	# Clang >= 11: https://github.com/ClangBuiltLinux/linux/issues/510
> >   	depends on CC_IS_CLANG && CLANG_VERSION >= 110000 && LD_IS_LLD && AS_IS_LLVM
> > +	depends on MAKE_VERSION_INT >= 40200
> 
> If the bug depends on CONFIG_MODVERSIONS, should this be
> 
> depends on !MODVERSIONS || MAKE_VERSION >= 40200
> 
> ? Especially since the problematic block in your original report is 
> gated on CONFIG_LTO_CLANG + CONFIG_MODVERSIONS.
> 

You're right, I'll fix it in v2, thanks for reviewing.


> >   	depends on $(success,$(NM) --help | head -n 1 | grep -qi llvm)
> >   	depends on $(success,$(AR) --help | head -n 1 | grep -qi llvm)
> >   	depends on ARCH_SUPPORTS_LTO_CLANG
> > 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210701085509.395-1-lecopzer.chen%40mediatek.com.
