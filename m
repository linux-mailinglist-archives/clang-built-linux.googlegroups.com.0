Return-Path: <clang-built-linux+bncBDDL3KWR4EBRBHPS3P2AKGQEYD6VXXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 884881A9F11
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Apr 2020 14:07:58 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id y7sf19633990ybj.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Apr 2020 05:07:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586952477; cv=pass;
        d=google.com; s=arc-20160816;
        b=k4L2/jLU2o5EzySimV2q4mZtyISt6aGL3u3Mfw1IhhdusfcDdF5EA3G3CsZ+Dqfj44
         OOx1q6sL/pUXJLGDxCvj4DxvacZCwLmv8y5bXcO8kcohiplekGEmXTjlo+oKU9jxUneG
         UjVH42G4XbV4ALvXTOfTAy41rkYR7+HzogAWqfCyNjENOVdZFYoP5TBWAtFGAEtrCnyX
         B/6bGsqn0gadDE1qug04RyFy+Db4sl4EbHEXAI+G9JyC7d5QIS8exi9K/9W36lWSjfVs
         kfpxF4FETkHASG923nZx/ptX93sn4G9uehRdIudquZgPDeg0NLNz4hOgABDA6APlFnKD
         72wA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=pMxcTd+FksUIhQZGZKtNd1MP64GzSxXsALWOrjz8J20=;
        b=vWcpR+EXZLDYf0ZPNurzCysx9embHlFUgXdv7T9Zs67z5jSpEg2TpXyNu7hPACJv1W
         P+ANCG9/t5EGfarUyF9lDuGl4X4YOEAr8Hez3iTrczrlWIdgfX4fbQ0MPEiPLiCGyh+6
         AgT3D9OifYmL8PTrxRQdNbgNprmLMr+rBPqCnFmyf6P7BjMkd0okBfg0bAsTGWJvjXWd
         yLOfii1+MblipXRnO1uaS2Zt1LPgxHnUGKzVz395NmPuv0EXIV/PH8CeZ4gelM1YKFSX
         l7g7wapL6zeQt2ZpDr2zDdwktP68ZJfzid7kjMf9QadMhVl6z77SnFrMYB5Iveoabhjh
         sBxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pMxcTd+FksUIhQZGZKtNd1MP64GzSxXsALWOrjz8J20=;
        b=Oj3lZUsITDuuoHQmxzMqJdXFy5eRr81Q3jBNwTQIBYLYx9hQ9VJZHvr5bG6BeAKxd+
         C8YolzmZ4PU4KG83LzbteoTE8CnecFsmjT2lzb8H1NFfLTc8oY2kEtpw0bRb6FMsyhg4
         vsoW+dd6Ue495ddygn75hf31l8ifZBbUHT1ymmtjLVBfo7Sabj3iRTN5UfrXNPUKYvNd
         566IoJXT4BW8zdv94bi5DyOtaf84k+Aqnkm20tG1ME9LI+/pIWBeFXl13KnpkwHMzXuH
         9GoStvaIVC4cskWXxi5bYHhdWzWLEcyDTwXTFwAQOrIW2MoMCzYBlxRiJwVRYMic2pIH
         R/QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pMxcTd+FksUIhQZGZKtNd1MP64GzSxXsALWOrjz8J20=;
        b=dzs79lc9qOyWIaADwZBEAKK8hh7hdaI51ZloKA9QAjH/2B0WpOITSN3rpu4stitVJG
         v9cSmp0xwZhH5+n0VmC+wzDLPmVUWS8raSpXZkULlTgvA0Nl8363yW0QUUsz6W5RfHYF
         +fsBV/IKTbSLB6rwguJ9MOc16KLlLjbqGDasME8LSfDdj7nLGm+XEnx9LPVFm/OaBYKP
         GuD+LkvyyLebC2pludnND4j1M5+rZhe5Ag6tbErInj0FDF3qFKXNemr/9iW28tRxEvow
         C1B2hZRby8tMk+Z16caNyjevPtNsE4jtbvtv4zObpIXScKZ8Svct78yZuHV8/r3mFPWp
         j6Vg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZdGrUydMmn3E6FYYtcjqjcDdAwDNH9/d5no+JbXvD0iNBZJ8WM
	bXedDuFTiY4dI29lRQgIZxM=
X-Google-Smtp-Source: APiQypL6InQr0cdZIUPPrmTARKTgop9RTfzsg0Wpr7qaC1FS0WAP4kLxp0eIgnaM0IBwvl0ddKNLAQ==
X-Received: by 2002:a5b:84f:: with SMTP id v15mr7308795ybq.134.1586952477356;
        Wed, 15 Apr 2020 05:07:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:e00d:: with SMTP id x13ls2649014ybg.7.gmail; Wed, 15 Apr
 2020 05:07:56 -0700 (PDT)
X-Received: by 2002:a25:80c3:: with SMTP id c3mr8689944ybm.33.1586952476943;
        Wed, 15 Apr 2020 05:07:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586952476; cv=none;
        d=google.com; s=arc-20160816;
        b=UaJAS+dw686+4o4kzCjHiD3vVpgjwDe/iuUlizF6wQ3HWdkq9ODGlYraEFGwZFHSZP
         74Dieu6aRHR1cPnyrNOVAAGpPknw+UEd9ihg7fXIv5wqqAAG5Mgj/MreH54JooIs4QLw
         qNEbMyO4Og7YF3mY3mNXUmg216sV4ASL4YmkAfPckmk1/FlXG6Zzjf6pn+cvWI30frcz
         6glBRRzqXrMHGGGhbMqSNA26ZtOJi4IJisXsu0jC5OZG2fbScEfnGwdd1IbmcW+aVOwY
         XjZ/4CzzGAYPUHoZuBQmTry3pBzwVNJFkK3IgK2mS+DwPLpMqJOqPTz0LU2d8fNrFOYL
         uA9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=NHiOx8HuGBIWG4TyDkQM7WGqG/+VYErX1ETDBr5EevQ=;
        b=If7rxHXKr3dK0xkQmhhCBDRGh8xdM/4qzogt86ET/784OyLXDsmp8HVwhzs1FOeW2R
         DFOvkPU7V2o024NUKqZl/qkGIGw1kGa4+gSp4ThOEbIId6U2plaPlzWHVxBijev2eVn3
         9E3iFNLri6ZfzGrV6iEwIttOZg1wPGQE34HqDZ93Eeb86evORDjVKqkj8Nnvt3i+XglD
         YuttudeM7wqyCJ+SrICfu8Q9POGgiYjZH3i/rqlkuKM4+HEyFqqDo3tWNL/8iLsEMQPc
         HWlV+USSP+glLKKxJq9K2tiLboLftZAPsuh8Bq7xzXh65o2HhF/5WdDSB9Fyci3YzxVc
         mAOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id m18si925265ybf.2.2020.04.15.05.07.56
        for <clang-built-linux@googlegroups.com>;
        Wed, 15 Apr 2020 05:07:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3931C1063;
	Wed, 15 Apr 2020 05:07:56 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E1C653F68F;
	Wed, 15 Apr 2020 05:07:54 -0700 (PDT)
Date: Wed, 15 Apr 2020 13:07:52 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Fangrui Song <maskray@google.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	Ilie Halip <ilie.halip@gmail.com>, Jian Cai <jiancai@google.com>
Subject: Re: [PATCH v2] arm64: Delete the space separator in __emit_inst
Message-ID: <20200415120752.GD6526@gaia>
References: <20200414163255.66437-1-maskray@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200414163255.66437-1-maskray@google.com>
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

On Tue, Apr 14, 2020 at 09:32:55AM -0700, Fangrui Song wrote:
> In assembly, many instances of __emit_inst(x) expand to a directive. In
> a few places __emit_inst(x) is used as an assembler macro argument. For
> example, in arch/arm64/kvm/hyp/entry.S
> 
>   ALTERNATIVE(nop, SET_PSTATE_PAN(1), ARM64_HAS_PAN, CONFIG_ARM64_PAN)
> 
> expands to the following by the C preprocessor:
> 
>   alternative_insn nop, .inst (0xd500401f | ((0) << 16 | (4) << 5) | ((!!1) << 8)), 4, 1
> 
> Both comma and space are separators, with an exception that content
> inside a pair of parentheses/quotes is not split, so the clang
> integrated assembler splits the arguments to:
> 
>    nop, .inst, (0xd500401f | ((0) << 16 | (4) << 5) | ((!!1) << 8)), 4, 1
> 
> GNU as preprocesses the input with do_scrub_chars(). Its arm64 backend
> (along with many other non-x86 backends) sees:
> 
>   alternative_insn nop,.inst(0xd500401f|((0)<<16|(4)<<5)|((!!1)<<8)),4,1
>   # .inst(...) is parsed as one argument
> 
> while its x86 backend sees:
> 
>   alternative_insn nop,.inst (0xd500401f|((0)<<16|(4)<<5)|((!!1)<<8)),4,1
>   # The extra space before '(' makes the whole .inst (...) parsed as two arguments
> 
> The non-x86 backend's behavior is considered unintentional
> (https://sourceware.org/bugzilla/show_bug.cgi?id=25750).
> So drop the space separator inside `.inst (...)` to make the clang
> integrated assembler work.
> 
> Suggested-by: Ilie Halip <ilie.halip@gmail.com>
> Signed-off-by: Fangrui Song <maskray@google.com>
> Reviewed-by: Mark Rutland <mark.rutland@arm.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/939

Queued for 5.7. Thanks.

-- 
Catalin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200415120752.GD6526%40gaia.
