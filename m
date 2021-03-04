Return-Path: <clang-built-linux+bncBDSZXKXZ3MMRB36QQWBAMGQEJJZNF6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DF5C32DD99
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Mar 2021 00:08:32 +0100 (CET)
Received: by mail-wr1-x43b.google.com with SMTP id h5sf165136wrr.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Mar 2021 15:08:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614899311; cv=pass;
        d=google.com; s=arc-20160816;
        b=xN6t41mdxZvFgfhurPuPPeO6fKNnCULrD1cQoBGyTGCmzyYmD4ztz79NRvHYZWrHQZ
         DhtlLdNz3y+JUn/J169SrUdrxfHHX9H2aWvv8jY6grL76CLpDJ4SYZGglewJYk7IkD3q
         Z9wkQE1Pln7+F7zDOr5Ds3wjy2vyznmZ4zB8/eU+0XvIxZ+I+xBnhhQjL/qs7w9pX/cN
         1aZi9kYHTT4YIgwrd9wCQs1t0BqgAVM/9wb9eQs1fbq7T/K25ssacE3Ir28NkBVGDBi0
         l+o7DiGCwZc2M02tNm7k5v/qAiA4VHgDPP3EmjHFHeFqJPBr/r1YpHx3Qo+sAyPmjshx
         dgrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=qHrTWvk4rv0Wku4B2cNMytJkJR710rI7QER5tt0DJAc=;
        b=xr2beVN6QAZRpn3JKHsVs3wdj3u5AKXR4rW4lR41UaEM8Ba+5nyi9JBj7AG1wxmtQU
         PjSHZSFMG8LEGhbtMs/WHIQFD+WjT8WguX/1KYFujMamPhzCAHtmLT4zivh9/MIV3Oew
         NT21gsZOFoahGNJCccKqk5OyYnwIEoi+HFqmwIJs5H5yFmvRvHUC4hP2WUMgwiumNd2X
         WqFuDaCx9X6UW8ivvBBxrRYaEtzrNEPiWo5/ihiySByIcX0p4AhNQH6IOg547K35BCh3
         UjTv1PKyFF7+pW/m3vPRO7hlgxmf9uc1LunaoBaMRlB+NV9va2UE/k/Vtis2rBejNHrV
         P+lw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of macro@orcam.me.uk designates 2001:4190:8020::4 as permitted sender) smtp.mailfrom=macro@orcam.me.uk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qHrTWvk4rv0Wku4B2cNMytJkJR710rI7QER5tt0DJAc=;
        b=q6Eob+NflLswDkiVpdyeXVMpnlatv+yO3HYHuYrt8GdmuouIhGof4PwMgMypumAA+P
         tfSjpuKPCd3MEHLEhwKPnLWWLBfMfuHvzVEtuEpgyb+vUP7jjkfRs1R4CgEXaYHe30c2
         nz4bQYDUoxXsZqW3KzuWxRHCXC9sJ2M51hZTkFGUaYRr2AG1jOo4Zegi4VWlv/5Q7jHB
         OWWsYQsMP8mAh1S1iDOG1seed96Dq0+D2mm2OGICC2KnjLFtE8MDErMf6o94EpYX/wcj
         z5j5uvfTWwiHgOapZRV4BHCW48bpF+Cqqg8skleD7349AgsRIVUhc1/8MSWPqjqR7Lni
         4qTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qHrTWvk4rv0Wku4B2cNMytJkJR710rI7QER5tt0DJAc=;
        b=h1Ehn+8Z4cJJ2lwsWwhsqt3sEfT7+Abis4f8vv6BqhJ4Y7doAnt7G9ioOfyZjIn6EB
         rLOwhW+bXGE8FBpaSFPQ2igmePOU6X0CwZeykgc6tVV6emKdpcL6U9BPTWyiWH9oInRY
         1pU1cUygFmKqwuv3XIeRVaRZatXNp0KzrRudLA1GE8LO6CUvtENZjBEPs9VHiE0eaVlj
         mk0rbTu1co/kc0ZP5YCFwB1geilbuIsK7c3Bsq++i7hsoKQ1qKtgbTU46pAFx0FaCeuR
         i+1XsZwi5Iw12ZjGJpuIh3LunDER4lT+K/3BYermhfhOXRP6AG8dnviZIyNQIKWoR9L9
         n06A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531VywZvs3dWV3275pzW5vfHIGkOe8eF6G2/wPP9GP7kCSLqskvN
	IUKr8A2U74kW4CA3HLHw6pY=
X-Google-Smtp-Source: ABdhPJyvpbPjhEpWOUWw+vgCYr2NM7GGs8L4RtdaXvMlcIA5x8ygtf6tRaGBn8Ug0uaddqHtTmDifw==
X-Received: by 2002:a05:600c:290a:: with SMTP id i10mr5996271wmd.91.1614899311790;
        Thu, 04 Mar 2021 15:08:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:cc94:: with SMTP id p20ls3612415wma.0.gmail; Thu, 04 Mar
 2021 15:08:31 -0800 (PST)
X-Received: by 2002:a1c:cc04:: with SMTP id h4mr5891552wmb.142.1614899310998;
        Thu, 04 Mar 2021 15:08:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614899310; cv=none;
        d=google.com; s=arc-20160816;
        b=XuNG/MyP2g0K2C4UGZ6iMiYWVlTAvNF+2jP6BBJEd5a2ksTeFq7vLmeU49/1+ENb1Z
         rR4zlFAVqguOFZ8Bwr5uIWuZsmHGVXHsaPp9YW+5e2sXGvK+eAnlmhUnIPmErpPYPpko
         85U+Zjg2KQMz4LQjf7rj39YvxrnN0WTzrPdyMns+wvSYVoLpLc6tJFzoZjfbZKYAgEQN
         7yaPNPFdtpkPXQG5dkMZY8mKiAnuNYlSd4n4giSWvvlmpF9M7om9i7aGafk+cHMmNy3Y
         7Ks6q0VezMjEGXGxNJce/rNeIg0BBjlPQVSy+xT0EKfomAQMF6UIqY9Sbfpaa1yRxJhN
         Cd3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=ZHoZiqsyqVK51kkRzXtoNfxPUYeQzZDFSRCUa8/qgFY=;
        b=G9xc8//+YulxLe2oyMamHR/AadQ4n5YJhiker2bJkPhXyyjSUleyHoZUEqcqdUcv3X
         yOcqOyZXlUdfRylMIrsCdGIqZ8p6LtHIVLgwymIGA9YDA5kKHsx6VSTsJnqe5qnzl+PP
         LjIzJ3tlC+8wEA81mR6KOf9Qxto2YVAMffh+iEQLu90jD4tLp9d4uD2vDhv5x/eq65ha
         iJbjLTXevTjWNhF28bZiSSoLsmausfHFlaW5nw4wEGCbsCCN35x47vq++fTPhvW1G5hR
         4moOCdlXzvFr6CUqEckeV+awCSkwmvdCwMGVS9VBmjVAZwTlwX3G6bEXIr5frEAPWCBV
         cZxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of macro@orcam.me.uk designates 2001:4190:8020::4 as permitted sender) smtp.mailfrom=macro@orcam.me.uk
Received: from angie.orcam.me.uk (angie.orcam.me.uk. [2001:4190:8020::4])
        by gmr-mx.google.com with ESMTP id h16si24767wrx.2.2021.03.04.15.08.30
        for <clang-built-linux@googlegroups.com>;
        Thu, 04 Mar 2021 15:08:30 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of macro@orcam.me.uk designates 2001:4190:8020::4 as permitted sender) client-ip=2001:4190:8020::4;
Received: by angie.orcam.me.uk (Postfix, from userid 500)
	id B42C392009C; Fri,  5 Mar 2021 00:08:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by angie.orcam.me.uk (Postfix) with ESMTP id ADE1C92009B;
	Fri,  5 Mar 2021 00:08:29 +0100 (CET)
Date: Fri, 5 Mar 2021 00:08:29 +0100 (CET)
From: "Maciej W. Rozycki" <macro@orcam.me.uk>
To: Tiezhu Yang <yangtiezhu@loongson.cn>
cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
    Nathan Chancellor <nathan@kernel.org>, 
    Nick Desaulniers <ndesaulniers@google.com>, linux-mips@vger.kernel.org, 
    linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, 
    Xuefeng Li <lixuefeng@loongson.cn>
Subject: Re: [PATCH] MIPS: Add comment about CONFIG_MIPS32_O32 in
 loongson3_defconfig when build with Clang
In-Reply-To: <1614820544-10686-1-git-send-email-yangtiezhu@loongson.cn>
Message-ID: <alpine.DEB.2.21.2103042356150.51127@angie.orcam.me.uk>
References: <1614820544-10686-1-git-send-email-yangtiezhu@loongson.cn>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: macro@orcam.me.uk
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of macro@orcam.me.uk designates
 2001:4190:8020::4 as permitted sender) smtp.mailfrom=macro@orcam.me.uk
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

On Thu, 4 Mar 2021, Tiezhu Yang wrote:

> This is a known bug [2] with Clang, as Simon Atanasyan said,
> "There is no plan on support O32 for MIPS64 due to lack of
> resources".

 Huh?  Is that a joke?  From the o32 psABI's point of view a MIPS64 CPU is 
exactly the same as a MIPS32 one (for whatever ISA revision), so there's 
nothing to support there really other than the CPU/ISA name.

 As much as I dislike all the hacks the Clang community seems to come up 
with for the shortcomings of their tool there has to be a saner workaround 
available rather than forcibly disabling support for the o32 ABI with 
CONFIG_64BIT kernels, but the report is missing the compiler invocation 
line triggering the issue (V=1 perhaps?), which should be included with 
any commit description anyway, so I can't suggest anything based on the 
limited information provided.

  Maciej

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.DEB.2.21.2103042356150.51127%40angie.orcam.me.uk.
