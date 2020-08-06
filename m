Return-Path: <clang-built-linux+bncBDDL3KWR4EBRB4WTV74QKGQERU24DZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AACE23D9F4
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 Aug 2020 13:31:00 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id p127sf33164412pfb.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 Aug 2020 04:30:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596713458; cv=pass;
        d=google.com; s=arc-20160816;
        b=j2Qy91PWlb+yNwqd0FtgRCWHAItcRiTJxi9PHYWZRsHlh17QEsUSWh+3Ikw2dxuUyi
         1bWFp3xkH+SvfgeIQlDy0kaP2zI1HdlKg7wSGYoh+3BI40LN2jaFF6b7yTzhDwYhWIJI
         Is2E9MeCOGRRbbXJfCPPMWSRwBmeVIM+U5518gKGNdtQ8YKIF2E4i6aCS96BMtVGy/iV
         iO1S8rYuu15ePxZqSavyLUpiar74nehnqRhZwKQNgyfCFT2QUZvE7RQGrJcrRNB9D6t3
         +AMobH0fUJXn/dB8QcZqlTvy6Z//VF685lcOCn8JviPNvIv8iSAPMyOTtm/QjeUImUxd
         8raQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=wCOVpvuKYvJ1hfWNNOXMvWeb0Htuw6d8WguZkAQ9xmY=;
        b=bOGbp8gs3A1b6/ckZO+3DS/rmGd+lggIK1BjUSPl3KEULddZJamGl7s3gMy53FBzDW
         32LsSFPL7/b11KoIKHYy4xcTwgnldSAOx43PRy7gi3HFAYeMjwKOoPs5YZie/ToDj33H
         wGmmYysWYtVjjQJb1fOGix1bqHIAxZY3iV91g/DSMnZ+EY13EXxf6NDgZXZqVyMYYCZL
         MKuUbt3RzzIlxVeqmD/Qwlhv/RrcoIxupuy+U/RcujMaRHTIhBckbHyLh8e+6lP0fP5y
         /7PozDl5a52iiDcaPLXQoh5EmSAs06u/i1FoE0/S0Pzs7EXcOx7ZgW0xG6VpIQBN2aVC
         VncQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wCOVpvuKYvJ1hfWNNOXMvWeb0Htuw6d8WguZkAQ9xmY=;
        b=fuA12HaXNi+C6EDVLYZZ+PbktWFFFZG/MQKRHU84lN952d/eVLKVUPHaAwLGO08gTj
         uwev1e2Qx9GQ6BqmVgaLx/96oT3yccngw4w3Xxl50ywX0MDUkyvR+t9rotKt37z3f66d
         ybJxFBVX8wz6phf3zbvj1krMnSw16L0VXzptLB8Q98K4MVws2qI1pxdlzuWz6fHqzGFr
         cEQ+MPkPTmw3lZZgX+3CiFy1/bK4FcCXSVngGbuv3d4OaptPq3Jrfzff7Cngv5iglXwk
         NJjux1gaVm7IhqS8+bEKlE1StJjuy5UNsQN/wdSliCb7rj7XAj7JT8Ih1UywWupR/Eyg
         mFfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wCOVpvuKYvJ1hfWNNOXMvWeb0Htuw6d8WguZkAQ9xmY=;
        b=CZETUJTqgVUMQ/DKrQ3KKuMfDxked+yfBdJzV2PWruBXIAHVB8puaHp64hUrfE3q6p
         8ha1cSj1ed6q5quzNbwueyqVRBM/CblWNPTIuzWRmJrb4xPMslLiIM44ncP2nF2KhZsl
         pRp5qSeU+eDDYaH9Mcy5bpvygq0WaNE2rujYWnybWxH9FL6yPIUSYY+ajuD8/qOvmv9K
         hw8OACanUwAjb0zmQ2nOsqgBQgfCJEec5//CDTGw109N7KZOzKdSbXehr3KIC7ZmO3Wb
         B5ZDjWcyJ0/bzUMQtVspRiCeQtneZwi70/lHNZdfXVxOuDMlNhNfT29Vyh7d2G+vBLmY
         CGfQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530hLonzY3uOKvQ4yG20u+zcLn9jvsUEB4ezRq0KnKcFi+r79HyV
	2XdbF/NNThcdvmU38ngpYQo=
X-Google-Smtp-Source: ABdhPJzKRtCH6d3hhhnhhpoQSDcFmGG9k4SZQ2+azf2cf7ndoxKNn9M8gTP9AsUbY0ewUiWrvTTxUg==
X-Received: by 2002:a62:7b4e:: with SMTP id w75mr7534479pfc.130.1596713458726;
        Thu, 06 Aug 2020 04:30:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bb8f:: with SMTP id m15ls2462209pls.5.gmail; Thu, 06
 Aug 2020 04:30:58 -0700 (PDT)
X-Received: by 2002:a17:90a:3488:: with SMTP id p8mr8207960pjb.211.1596713458299;
        Thu, 06 Aug 2020 04:30:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596713458; cv=none;
        d=google.com; s=arc-20160816;
        b=fHoOtwUrTDq+rpJvo8vbryTXKlmZ6VFAJFCWf10sFKL98EmgpzPmrOjmuWABhqC/9d
         kEuZNT0aPnS3qfk3Nn7lF1yVcX5tqRZw67yhknP1MdoAo6RNCQxlT6W7KhghAEnPfx9o
         yZx33My2hwvjWflq5zYJV0X7M9D05HHSsNNaEpKhrhQB+h5woj9QfRieSxMu58OEbBDT
         yRaRhf9g9973akmmagHLaWTjwsBpUq2+u94Urqmm1NrAavpcIdFDe+yoZaaSlAzU83Is
         GZYtrecHhSrTNXKDotGTmVj4tj9rWIqxqF2wt1/LILPeUxH6XhoP0lmUMlFD81szp371
         DIbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=OY1ajl4tZF6UrRyquuuuzd/GOPVA/CIjyFNMnuC/jaI=;
        b=QNqoJAE2aB5Frg5YHJlWmMp9P89nTHf2kzbST+lkt1/fb5G5SRKOXobZW7HxLDZfu+
         MKvyEOCcvsV0uQBXpNHxteo2RGDkl9bQ+H40oEe3WKX341Ry/RuQS/dxZRjxOCswCoKI
         z9U3eL4CaGoVmTGCrXk4Tt97BEs9bNC92Q6RL53VhGskdZv2MAYXUtNTxZKRNgIpnrp5
         UQHzSQx2x1Ftb3QnvGDgZl4lya7gUcqlnv1qvDARKSAg44sV12YLhtKn4qBUlOsM+I+N
         zWz2fL6HL4X+IxJUibNvrJURYxw62iP9+6EtxJmGTGOtoUmGQC1c1RzsDImdeJoEm2n0
         8eJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id n3si492531pjb.3.2020.08.06.04.30.58
        for <clang-built-linux@googlegroups.com>;
        Thu, 06 Aug 2020 04:30:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 515231045;
	Thu,  6 Aug 2020 04:30:57 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CCC7C3F99C;
	Thu,  6 Aug 2020 04:30:55 -0700 (PDT)
Date: Thu, 6 Aug 2020 12:30:53 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, Will Deacon <will@kernel.org>,
	Zhenyu Ye <yezhenyu2@huawei.com>,
	Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Kees Cook <keescook@chromium.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] arm64: tlb: fix ARM64_TLB_RANGE with LLVM's integrated
 assembler
Message-ID: <20200806113053.GB23785@gaia>
References: <20200805181920.4013059-1-samitolvanen@google.com>
 <CAKwvOdncvJbxphoDFdWTeiMnuu4pDie9xCxA-dC=__CK9p1KBw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdncvJbxphoDFdWTeiMnuu4pDie9xCxA-dC=__CK9p1KBw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: catalin.marinas@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=catalin.marinas@arm.com
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

On Wed, Aug 05, 2020 at 12:15:54PM -0700, Nick Desaulniers wrote:
> On Wed, Aug 5, 2020 at 11:19 AM Sami Tolvanen <samitolvanen@google.com> wrote:
> >
> > Commit 7c78f67e9bd9 ("arm64: enable tlbi range instructions") breaks
> > LLVM's integrated assembler, because -Wa,-march is only passed to
> > external assemblers and therefore, the new instructions are not enabled
> > when IAS is used.
> >
> > As binutils doesn't support .arch_extension tlb-rmi, this change adds
> > .arch armv8.4-a to __TLBI_0 and __TLBI_1 to fix the issue with both LLVM
> > IAS and binutils.
> >
> > Fixes: 7c78f67e9bd9 ("arm64: enable tlbi range instructions")
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1106
> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> 
> I've filed https://sourceware.org/bugzilla/show_bug.cgi?id=26339 to
> discuss more with ARM binutils devs about some of the compat issues
> around these assembler directives.

Until we get some alignment between binutils and the LLVM's integrated
assembler, the latter will be officially unsupported by the kernel. It's
just insane to maintain different options for architecture extensions,
e.g. memtag vs mte, armv8.4-a vs tlb-rmi. Even worse, I think you can't
add some .arch_extension in binutils without bumping the .arch version.
So maybe ".arch_extension tlb-rmi" works for the integrated assembler
but, if such option is added to binutils, it would require ".arch
armv8.4-a" as well.

So, please sort it out guys, collaborate between yourselves when
inventing architecture mnemonics so that you are aligned.

We make take the occasional patch to fix the integrated assembler if
it's not intrusive but at some point we may say it's just not supported
and reject the fix. We have a hard line on the compiler not generating
newer than ARMv8.0 instructions (unless they are in the NOP/HINT space),
so we limit newer instructions to (inline) asm. That's why -march
doesn't work, it needs to be -Wa,-march.

-- 
Catalin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200806113053.GB23785%40gaia.
