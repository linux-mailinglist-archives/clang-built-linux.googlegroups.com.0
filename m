Return-Path: <clang-built-linux+bncBCWYVWVBVIEBBSPFRLZAKGQEDMJHUFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 8764D1590FE
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 14:57:39 +0100 (CET)
Received: by mail-wr1-x437.google.com with SMTP id m15sf6819980wrs.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 05:57:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581429449; cv=pass;
        d=google.com; s=arc-20160816;
        b=huHlkKWqpsnlI0u3bquGVFGPBe+NhBlAB5y0qM3uUM+NS+gP7CYv6zfDznWV9ua67C
         YVC2BzbF1oCo/41v4Lj2AumgyGAd7Q3Clpa1I6D3d1YAue3zcMfzpxPS9n/2lP3quCoS
         PBmWK8WUqPYHA6apghfoJNv22BFi4bVioyTUeMHrGW4TByTf/8VkMW3a9gJCrkVa/eyj
         lpQqhfPACn7wZEjIMJUCEssDMV2S9YYce0A6UXiL7hIAxV6rKW+I2flgUx7XQSELPkBE
         qEjD3JzNjCIsWkxaFZdRsP7Q/6DT2fkHhcKOScj+mqhV7Afy/zbFYqp4kMCj9vc386y8
         OvLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=KOgoMJFx3r9TTl+tfPK94ZQG180MuA3O/+UpmiYT1pk=;
        b=XaYaR7HwLxoBuJ1yksHb3w18wggx11ZhTOvNfyro/vAdsS0Pmksl/9a1Nnc5CT/0xq
         ovPn/DPXgEsJOv2GolIU4NgWFKOeAnQNdmlHQxcy4oV8S4qqAuTyrR8fJH381Slph3ub
         8CFp4Wulzpo15p1KCS6Cexy5MT0wreBY8wcF4nY35DoPbAQC1gyTXW9GwA52kCw+3uw0
         vrfuB926XnuQpqtR91PFYZLG8NoGLrBE+X9QEF9Sfa+3A2+H2v8KmqWvpOfLFoECv1al
         ZxsWfVE5QJ59S2CKOqg41A0QuZjITNH0d2RwmNX01tdElGXTSlXNDGpXK+u0jf3Y6ZG6
         vzKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of james.morse@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=james.morse@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KOgoMJFx3r9TTl+tfPK94ZQG180MuA3O/+UpmiYT1pk=;
        b=dVmsW5SLnyDy9Y6DjkzKLuyWaDdeQgSs535cUcRX3lxtJcBonyONY+pH8pAZqgSV0U
         s4xacBMYYiYWfoIp10UJAHppXOMDDdYO0ZC8GotVBO/LX0SRBvS1mTVKi9HIIPft5NlW
         tKDEBwQ7CUKW9yWo9UrLXabtKZT7OtRKCw2IGty0b+vn4Y5oGkIy1fdHtvuy7SbIoN0P
         jSdux9Gi7j2c+3j+eh6bU2Je8MGxH559KUP7NnoidrQoWjrYjUewVsQfIgqPEsMjuSfH
         Gnx6ocNL2qdtkpyYCdnTQXCoK1H+SVAPxrW4sjOPPIE0WjM2W+a37Koz5UfcSO+/BmBu
         257w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KOgoMJFx3r9TTl+tfPK94ZQG180MuA3O/+UpmiYT1pk=;
        b=rZ7mmgE1HnoMBx269qv9gWapOEt0AcmnIEq86M3qdqO0dB5Mim6M95MJnTAOFJhAha
         KFJIrvCIfN4MQxzJoPT8eCMfnaQS9rY0lM5bv67xzYgZkQSAfa/lGE23tPBYYROB2T0J
         WE84p0g45rm5KGZI6chhHxBeApohOb57ynVWEovo5udVojeyrtkpjZgFt27ibkGwnM+w
         90eneS77d2LDmRJRmMHkxSk5ByVxt/iscpccpZTwJgkBQJCrzIJ6CTSZIoRbEjuJ90e4
         5sKtsV6lXaBS0SZyqkqfhiQ3dVBwiWSffXoM/JCLnX0VHnh2Z1MhDEtnh7/i0mLmDVpK
         ZK0w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVz+UW4iHa0sc2Lg75sFT6RldZmsMhol9zDwzuGew5iSVXfxPBu
	IykCLHq9wHHd3PyYAvV2Jwo=
X-Google-Smtp-Source: APXvYqyoRdPIR8/dCHqF+c3C9aheuDqkmEpjGStGXAI9XUVBJNVkzgyBGdQngk0wkgX0OXSvSDX9ig==
X-Received: by 2002:a05:600c:2c08:: with SMTP id q8mr5917123wmg.45.1581429449198;
        Tue, 11 Feb 2020 05:57:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c0d9:: with SMTP id s25ls3139297wmh.0.gmail; Tue, 11 Feb
 2020 05:57:28 -0800 (PST)
X-Received: by 2002:a05:600c:4105:: with SMTP id j5mr5954005wmi.28.1581429448606;
        Tue, 11 Feb 2020 05:57:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581429448; cv=none;
        d=google.com; s=arc-20160816;
        b=A5ncTq8AnbMvbTI194gOnKkOnvDJKsV7ZmhF4m1XDmM970VNomArUGwugTD/2STQLu
         jFDMGFPkb8/U9UdDlRlhkNAiAEV6MBOo6M+yUct3MYLeT9374JsgUVFd13SXGYmAL9J+
         mKiRaDh0jv8l2VaMrD//ORPm7NZpBH1O62ga+UzJDgtrvPCmVRiJNp/aEDeJUjBP5kuh
         3O29OrRflt1h8yT4FIaH9kYNXRJphavohkANpMjOpPw5kBbZ4bgYMfec+scqbWJw3ebc
         TudVJbdd2rqHt/mpez9UGQWXqk4eQB4lC5MXNzeOnHptTxuT05+8cHMGVZEazFp1XltJ
         HThg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=YQ5ZhzyPLYcsDMkGZFFGytX3ckfYx0ymTm8A6VHff4Q=;
        b=V5d3t5h56Tm+WjLkq0YfUyXd1Cb2M/f9jkK92hpUquJB2Leb5zd6bRymOb1JYPUJxf
         dQFZVhvBKREn+ohQEqv8FfVzgCFLRL/BwrWkM1xuZEVLfgSqjpLdIqBcC/NY6RI1GGf0
         7oaxWhlSl63lQE+lZPWmaw4yC8v3qaBs74tJer0Nr5BuV9UK9CwJT7sbVPjURmrtDq3N
         d6aLL9c6HEmOuVwYh7UXHLF1E2H17uwkogEiYCjjo0xUOPjEpog6P5FkGHGm/xkvBb/p
         scsHzTK3kgSY0YlOtPFI/mTPCqwFDF8gUqsBHARlI7jeG4/eDxTPACKMlYs4+t5i0TLA
         1xwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of james.morse@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=james.morse@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id m2si158719wmi.3.2020.02.11.05.57.28
        for <clang-built-linux@googlegroups.com>;
        Tue, 11 Feb 2020 05:57:28 -0800 (PST)
Received-SPF: pass (google.com: domain of james.morse@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C768030E;
	Tue, 11 Feb 2020 05:57:27 -0800 (PST)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 909D33F68F;
	Tue, 11 Feb 2020 05:57:25 -0800 (PST)
Subject: Re: [PATCH v7 00/11] add support for Clang's Shadow Call Stack
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu
 <mhiramat@kernel.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Mark Rutland <mark.rutland@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 Kees Cook <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>,
 Marc Zyngier <maz@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>,
 Jann Horn <jannh@google.com>, Miguel Ojeda
 <miguel.ojeda.sandonis@gmail.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200128184934.77625-1-samitolvanen@google.com>
From: James Morse <james.morse@arm.com>
Message-ID: <63517cff-4bd6-bb6c-9a54-23de4f5fbb4a@arm.com>
Date: Tue, 11 Feb 2020 13:57:24 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200128184934.77625-1-samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-GB
X-Original-Sender: james.morse@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of james.morse@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=james.morse@arm.com
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

Hi Sami,

On 28/01/2020 18:49, Sami Tolvanen wrote:
> This patch series adds support for Clang's Shadow Call Stack
> (SCS) mitigation, which uses a separately allocated shadow stack
> to protect against return address overwrites. More information
> can be found here:
> 
>   https://clang.llvm.org/docs/ShadowCallStack.html
> 
> SCS provides better protection against traditional buffer
> overflows than CONFIG_STACKPROTECTOR_*, but it should be noted
> that SCS security guarantees in the kernel differ from the ones
> documented for user space. The kernel must store addresses of
> shadow stacks used by inactive tasks and interrupt handlers in
> memory, which means an attacker capable reading and writing
> arbitrary memory may be able to locate them and hijack control
> flow by modifying shadow stacks that are not currently in use.
> 
> SCS is currently supported only on arm64, where the compiler
> requires the x18 register to be reserved for holding the current
> task's shadow stack pointer.

I found I had to add:
| KBUILD_CFLAGS := $(filter-out -ffixed-x18 $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))

to drivers/firmware/efi/libstub/Makefile, to get this going.
I don't think there is much point supporting SCS for the EFIstub, its already isolated
from the rest of the kernel's C code by the __efistub symbol prefix machinery, and trying
to use it would expose us to buggy firmware at a point we can't handle it!

I can send a patch if its easier for you,


Thanks,

James

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/63517cff-4bd6-bb6c-9a54-23de4f5fbb4a%40arm.com.
