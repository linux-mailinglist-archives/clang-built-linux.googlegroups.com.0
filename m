Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBQG5V37QKGQEZT3MD5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x938.google.com (mail-ua1-x938.google.com [IPv6:2607:f8b0:4864:20::938])
	by mail.lfdr.de (Postfix) with ESMTPS id 509062E7501
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Dec 2020 23:33:37 +0100 (CET)
Received: by mail-ua1-x938.google.com with SMTP id b38sf6729270uab.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Dec 2020 14:33:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609281216; cv=pass;
        d=google.com; s=arc-20160816;
        b=oHr5qpqEumKBax5YaMycP0R9d9/ttLbrgPTKaxmYm4OZe+GuMvMp2W6YBOnfPZxBEe
         g1tDsIRKAOiiJBawMwKGi98nLevsL/K9Pr2fG8ebUF+51/JEP4HvCSTAQvwYWGLA49gY
         /ykyaNdticR1nOBB6EtzetK/PDCgX3s9oqlELdEg5/nSBLRtkmMTE4KfPleB+PIOV3s6
         +f9hXIoeRhY6SJ9N9IWg0A/cJtBhI1jMqlOISytDsgCvUgGXKjCNRvsuKw5R5t98oH1N
         8tPlqkdt9g44RasZqQBWWUvxq9XR0+kpdMQEXGE1ZXvlM1TY69vpA3fxu1XQ+OY3K3yf
         X+Bg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=N/6WLIFJ82ffsNYe94PPTwvjzvDlQOjLaclBbU0uaTI=;
        b=WN7k6UFHFaGlUzXzDoWQ4uD+P4UoSyxoWqzOGmoHQ3FZthO6lmOH1NWvti/DqYjL9p
         D0xxtz9dhiZTminbacqAlWv4OI9BAyXpqG4FaKBBFWmG9P1Ij8NUqUBdN9P5j3v2Ybx3
         LWu7XtBNfy5mNymYDGua7ElnoBViR+mctNW4wVkh9zFDJj6EN+UVZfL/B5qRPT8K2bDC
         gXKaUxO7gL1v8lAf7M6zMlBAV98dAZVC1i+fVBvtO+k+/8A3XUYc+8vBBaZBS4D4Dfts
         OPDd70/bJBc+uVH6DYzWOS6TiMNNdpBLYSUsiJnJvmJ8aCuEdbuM6MdOH+pesMKfDGjP
         I1rQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UVBWYgTK;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=N/6WLIFJ82ffsNYe94PPTwvjzvDlQOjLaclBbU0uaTI=;
        b=WShp9KYjQW2rjXnW+lfY4TC56mZ9O5PF5zj3kfrSC4r0QJ3NZzVVc8A10uWHxn/zXf
         UV5wTOMvDbz/vJ70UUqubPl17L6g9KRl8yRCawCPvJ5+undW1IttJzPP6Ca6c8UL9ti6
         qjul6UqVFJvmO3TLpuyupRRJKKGlnOK0SnxWZaYx0FKl3JZwhUvpdELhk0wLuNC7sPqL
         k1saDEnm9bWui4ve5NC8Xa2vzRyWTsXxrTLcXJ5tZpdsqISbE/QeSwS1IQbYpn9xc1mx
         FEoeRs2oB9KSDXT3/bGYWDUyQBDPWuBU6ZcuZXwDwBQp0dDPgK/E5vkz4EwW+3cWVODt
         kE1w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=N/6WLIFJ82ffsNYe94PPTwvjzvDlQOjLaclBbU0uaTI=;
        b=kCHhSfkKQLxOXEUskRQfnvCbAauvPTPRsPzH5Xk/0cs5L3g73FesUbnVL0b1LE/gwh
         UMqMaKUaQ7H9qW99CGgyo4qY0v6BfEfmBOgyZNh871Xov8DvoyLlUAqzzYMCJOilNo3X
         wsbpTbLDLoOeNhcbTACkv2z7kl/wqnSaJ18BLvIb0HuA9UpJWHJDlC1k86x8YK0v1FKW
         jzqFMq17QUbwpu0mQhtdrRty3Sk89WVrhnLcvYVRECi8bYZvL4eXmQc7Jugd4+eoXZkV
         NwbhyLWPd4XCM531tGuRuUtwTkdkowr6m8SAFBGGzIdTLE5VD31K0u9u1Qx/mLuBA1UJ
         LkQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=N/6WLIFJ82ffsNYe94PPTwvjzvDlQOjLaclBbU0uaTI=;
        b=RwkklmlPYKE3Sa2Be/R6oBvEZmaOBU0Tiw03cBGQl/PIA8M6rrgMAy2Dp6yAAJ1tfC
         tshM9c9Zp79oMOqXAJLBEAt4tJ3/HvVd+j66son9uz66jzdL8uvSygK3/l1mbmSPc4vr
         jzYn8OklHcjE2fRyVAPGZKqhcS76uabys69UUlgDMXlQ419lCTwVYwdBKF5XGYCPpnKN
         fOFSN0zqq2un5DuHUBypWgpC7HM3bA1V25B4IqnXv43cckqrClOcFOd438tV5VLTPDgf
         L/TU6JEMZ5F0FQw84KcNIcQ16WYGdvzlyOTvfReFaJYak/Rh4qltOPRj9TxJiQ7bW8A0
         /nqA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530vLLU4aGukAh+NFoWwA5HhAmHJMYsFnmeCfT8LfeLIB4Kh9lPO
	hv1ljTUABGRywNxtvc8e4l0=
X-Google-Smtp-Source: ABdhPJyYi+vi3m9C5UoCaiDvLzk09CZqjdNH2OsfWBm4AEM52X4PK+zsYZUuCaWybL+2TZ3d4y4R8Q==
X-Received: by 2002:a1f:e842:: with SMTP id f63mr25946128vkh.11.1609281216125;
        Tue, 29 Dec 2020 14:33:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:e287:: with SMTP id g7ls7398966vsf.5.gmail; Tue, 29 Dec
 2020 14:33:35 -0800 (PST)
X-Received: by 2002:a67:edc9:: with SMTP id e9mr13997656vsp.20.1609281215768;
        Tue, 29 Dec 2020 14:33:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609281215; cv=none;
        d=google.com; s=arc-20160816;
        b=XJaJeo1s5SbrGHlYnc4wdJGWBx77spzEx00pAWRXgoaqbtZMlAVv90Fpt5H05o8Oz5
         dlaT72q7KBU5IqgM8a4bel8B2+qk8Z6XYDNp3VoJym3VwmpiJ4SRkR855vqvUPesRG3o
         xUiBcCiJQQN1es20vhjcJ4LwK54joIXxvw3dkXomtnsJAhNUBq2UTGxOvHDBYICujMJ0
         o4TH3ebvIr1dDcnCcLeW8aDSqqx0IZSS+ZPok4zTRbY05iKbt2+ygvdsuKWbX8i50cJ0
         EeBpDLbp9xjTk5oYy0fwxng0d63QjcDTG1mb/gp0GznXnnqZFf0wdLXh2q5Tkf/PFkpr
         AVhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=GkyE8LbEEVHxy2CefSeYkkl16YrbDYCmT2Fd0SUPzw4=;
        b=OawskgNRgpFfNaGMa8sb6LzhT2HtZvdSc7fEAEK8+5PMZd/HfejRDUMmboKeGQCeZr
         LJqWmdva3NfyNQYfwfbklv9k6TtU+mIBQ7qNfIjRbUajrM3Bha58f3sQa6KGwJAd0Sxg
         lU8vTycygw1FhzfaZPUoiF6CUcDuaa4oUf8ZKKO2UI+UNYawzgYV0qIywwhD6O9FH0JB
         T6J/wfmtIFiYqEthOuSZac5sapEUrFVtnQSvD7CC4kdTHlrFJj8ji5wwYYNgQbwvLOlZ
         rU0qVDirrqK+BXQ+xgDbqcFCaFnq4uJ4KquI+0lUvc4ARD9HvaO9l5foHPijbXy7lSGD
         h1HQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UVBWYgTK;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com. [2607:f8b0:4864:20::1036])
        by gmr-mx.google.com with ESMTPS id g3si2661314vkl.1.2020.12.29.14.33.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Dec 2020 14:33:35 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1036 as permitted sender) client-ip=2607:f8b0:4864:20::1036;
Received: by mail-pj1-x1036.google.com with SMTP id iq13so2136008pjb.3
        for <clang-built-linux@googlegroups.com>; Tue, 29 Dec 2020 14:33:35 -0800 (PST)
X-Received: by 2002:a17:90a:c20b:: with SMTP id e11mr5784720pjt.43.1609281214864;
        Tue, 29 Dec 2020 14:33:34 -0800 (PST)
Received: from Ryzen-9-3900X.localdomain (ip68-104-204-241.ph.ph.cox.net. [68.104.204.241])
        by smtp.gmail.com with ESMTPSA id 77sm41028915pfx.156.2020.12.29.14.33.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Dec 2020 14:33:34 -0800 (PST)
Date: Tue, 29 Dec 2020 15:33:31 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Marc Zyngier <maz@kernel.org>
Cc: James Morse <james.morse@arm.com>,
	Julien Thierry <julien.thierry.kdev@gmail.com>,
	Suzuki K Poulose <suzuki.poulose@arm.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
	kvmarm@lists.cs.columbia.edu, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] KVM: arm64: Fix section mismatches around
 hyp_cpu_pm_{init,exit}
Message-ID: <20201229223331.GA212@Ryzen-9-3900X.localdomain>
References: <20201229214336.4098955-1-natechancellor@gmail.com>
 <49e9d2e2e7103c49882b54c18c567667@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <49e9d2e2e7103c49882b54c18c567667@kernel.org>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=UVBWYgTK;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Dec 29, 2020 at 10:11:07PM +0000, Marc Zyngier wrote:
> On 2020-12-29 21:43, Nathan Chancellor wrote:
> > Commit fa8c3d65538a ("KVM: arm64: Keep nVHE EL2 vector installed")
> > inadvertently changed clang's inlining decisions around
> > hyp_cpu_pm_{init,exit}, causing the following section mismatch warnings:
> > 
> > WARNING: modpost: vmlinux.o(.text+0x95c6c): Section mismatch in
> > reference from the function kvm_arch_init() to the function
> > .init.text:hyp_cpu_pm_exit()
> > The function kvm_arch_init() references
> > the function __init hyp_cpu_pm_exit().
> > This is often because kvm_arch_init lacks a __init
> > annotation or the annotation of hyp_cpu_pm_exit is wrong.
> > 
> > WARNING: modpost: vmlinux.o(.text+0x97054): Section mismatch in
> > reference from the function init_subsystems() to the function
> > .init.text:hyp_cpu_pm_init()
> > The function init_subsystems() references
> > the function __init hyp_cpu_pm_init().
> > This is often because init_subsystems lacks a __init
> > annotation or the annotation of hyp_cpu_pm_init is wrong.
> > 
> > Remove the __init annotation so that there are no warnings regardless of
> > how functions are inlined.
> > 
> > Fixes: 1fcf7ce0c602 ("arm: kvm: implement CPU PM notifier")
> > Fixes: 06a71a24bae5 ("arm64: KVM: unregister notifiers in hyp mode
> > teardown path")
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1230
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> 
> Hi Nathan,
> 
> Already posted[1] last week.
> 
> Thanks,
> 
>         M.
> 
> [1] htps://lore.kernel.org/r/20201223120854.255347-1-maz@kernel.org
> -- 
> Jazz is not dead. It just smells funny...

Sorry for the duplicate, I am usually good at spotting that :(

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201229223331.GA212%40Ryzen-9-3900X.localdomain.
