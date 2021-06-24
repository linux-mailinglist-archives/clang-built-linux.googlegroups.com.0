Return-Path: <clang-built-linux+bncBAABBXU72KDAMGQENIRMFWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 857993B309E
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Jun 2021 15:59:59 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id h15-20020a170902680fb02901279386573fsf1930032plk.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Jun 2021 06:59:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624543198; cv=pass;
        d=google.com; s=arc-20160816;
        b=zdQ5f40Sbu2FYCI19T5JsFMHpmrSEgIdrT3JE19bnr0l9t0krKykwOq3aa5zC1GxzE
         3KxdfAIbB17qf0n+l3jFvSLHEOtEBt7IoN1mH7Cq88CGqa42fGBXGETCakTJJf3vfvBO
         uj/DgAJoMsGq1cFX8kuBiIwNM40lV7hQgStdULGDGE/ETGyJOD/uVz18322JQCv3G3pH
         wkGpRWXjZBdxhTDB+L5/OGOjDQ9d+w0BdepXz1ugX9n3R1T4rkQ37rpUEM3nArs2acZ6
         hsBT9rg/sK7AINhTI/iSDDk5LeDZoE1Nv+JoYlj+YK29Pr7KfJaHm+t3RB1lkxhBZfsD
         2cWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:date:message-id
         :subject:references:in-reply-to:cc:to:from:sender:dkim-signature;
        bh=Er+SfUNDLdVZcpevGI067ldJSvbB/Ocj1EiOnaq3QHc=;
        b=bknR/7SZGSikSRD/1nhtAiU/NRTcEjA2mKrtzyOSJMeHTRVKjI4rYWbmgW5VjgcS/W
         TTPAD1xwKf04ryxa8lpX19IQBluSpGM6tC/BABJ5Q+jxpICOppK3b6Ut7gCnedg7imVl
         5qbMyIRFD1dlXy4vvwWWF/jz3uK6Bw6DvbyVqnnug4Q7oxXOW+k3QAgve6AeSCVW2meA
         FZycGbTVBQAfoFRPZBqT3JnDA4AesFdqri4NnjCk7sdQMC5bKfp1UaUuargH2zS/yGMb
         BKpWQmDDkeErhJrv4NtvBmAITxHxG1Vz2bW2EBOThQ5J2DDEjCCoz4+AZ9wnJ2C8Bmu/
         mvEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of michael@ozlabs.org designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=michael@ozlabs.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:in-reply-to:references:subject:message-id:date
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Er+SfUNDLdVZcpevGI067ldJSvbB/Ocj1EiOnaq3QHc=;
        b=gUVOvJeznYl9U0dbVX86JUSHS107kix+FKhN2K1JrKWo938wVEPJz/ZFOT4PD5/55H
         R+nMRM2m387bWRyrCp/I2Cn1fsTkhiiSqzrCsP3DMmZQPLwD0ey+J5O0kU7+sZqoRhJZ
         HDj0FCV1LodssKN5mZfdXl7nfbk3ylJB8oasUX7ODFwGIK6vdLZEKWCJ2Fhmx9HvPEB7
         UiHUtCFpPf03t1Z5rwFYIXJVSLyGEFera9RQt1xY1C1HOKi0C+ZE+QLhHcOiHjSd90kc
         uR8vGC5jc5fuTaKH4/QAbSzgh3SUQ+h9ZVc6IOln5jLk9YxhJv3E00nygbLflS9Sziy8
         XeLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:in-reply-to:references:subject
         :message-id:date:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Er+SfUNDLdVZcpevGI067ldJSvbB/Ocj1EiOnaq3QHc=;
        b=pb8tDHR1sJTANWz1TMpAF4KYtybjsJQ8gBT4HidSBMyHjq07Ws5WcApULwLP4XAOvg
         pKUYZp9gutbGwOj3xLT/51L6xmUYykW2SwZNYgF0W+0oQdpyXmBdwKO2tgY+Gri1Hpgq
         2cEs1Cbtkt/ucvBdhKm7e0B6djOESWg4SNvxzKwFOPlSApSIwRuSJH6NKNbZC31dm6I5
         dJLOWFlr4Vp3wTLjHHmPH3VOFWP/fLfQJnIcvTaK7eC1R3D0RM167e6jScSrT971dKP8
         +10wxCCnFMdLNWRadunqbN+xurmHKB4SwAoqlHhRlArqTnglcM3dgJQUrrKbe9mDry9t
         RHZA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5336N86Q0mfMi2XXqjx9iZ9cp11ZrAe3EZ+byRIJpdy3HA0GjRIq
	1Zk2U+tvyj3CfisH9972DoM=
X-Google-Smtp-Source: ABdhPJwgzaAsXXDGyBd4hZk9RMhwayEQMZ0hDzHBU+0bHa3LplmXxpT2fw4zgjcmUkbvcJYuePH+Hw==
X-Received: by 2002:a17:90b:a4e:: with SMTP id gw14mr13034574pjb.223.1624543198316;
        Thu, 24 Jun 2021 06:59:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:8410:: with SMTP id j16ls6288431pjn.2.canary-gmail;
 Thu, 24 Jun 2021 06:59:57 -0700 (PDT)
X-Received: by 2002:a17:90a:4208:: with SMTP id o8mr5608708pjg.216.1624543197877;
        Thu, 24 Jun 2021 06:59:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624543197; cv=none;
        d=google.com; s=arc-20160816;
        b=VffVbfe/9yer3g3IGFiGxl+HX4poXXKiF5ndOWP5i4ZOuHYot2dfxhomhaiur3NocK
         KxRSHyeCcLrW4B26aUQ81pIh64ELXJmGtZS1I0RDOHtFR7W8K9ax6W89VyIYg8hGvzyp
         UABwUfBGzSwzXfU43pcFBakHwRaENihhTx+Jk8NBtqtaZpxAdhlcX/pmN9gAQnD4VRso
         D4GVGHs6e3vOS7yl1mOlCCZ3X8kNd7lua3z2/KLYGsLKdHbgdYrKhDdP6iQGK6gh/A9s
         42HJmmw25w0ivZ5CWTuLCKIUAuEdCNOP1b309UoaDmuO1N2r2dmxj/mK/z7uUXQooW8s
         p5bQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from;
        bh=Zkvqv8mdLSwrXN4xCM2ENUUtQ3I2UydmzWHEfQeb5wQ=;
        b=oERxOad6aaS/sy+l+QeuWcoKj9PDE2umZlYgd7NCvPDez//RLkaEsVsZ60k28KeOdL
         u/k/ibn/sGNi0jTTczSLNlEMb7K9/H7ECJKvgHXoBfUhHIg6fNFY3fBtLV+dmmedEGCg
         GY4e991W8eGXP+ctpOcRwQvlL3duoFQQn7nCyVRW+p5AmnXGiJIv6UvaaQsNqVU7QI7i
         KF3Em1LBofJhR3EtYs409LUtWjzqDkw4HnCkXjZQrDJjFYpLb4pCkuao/KMTs4l9CP60
         ZcEvyCChBZY7glxk6FS7YSNOsuOGsyBP8vOLtOV1ikLFmYL1GxPSxjHBVi9DuBTj03Vt
         eUOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of michael@ozlabs.org designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=michael@ozlabs.org
Received: from ozlabs.org (bilbo.ozlabs.org. [2401:3900:2:1::2])
        by gmr-mx.google.com with ESMTPS id h22si266426pjq.1.2021.06.24.06.59.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Jun 2021 06:59:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael@ozlabs.org designates 2401:3900:2:1::2 as permitted sender) client-ip=2401:3900:2:1::2;
Received: by ozlabs.org (Postfix, from userid 1034)
	id 4G9hbD5jzzz9sVt; Thu, 24 Jun 2021 23:59:52 +1000 (AEST)
From: Michael Ellerman <patch-notifications@ellerman.id.au>
To: Paul Mackerras <paulus@ozlabs.org>, Michael Ellerman <mpe@ellerman.id.au>, Nathan Chancellor <nathan@kernel.org>
Cc: kernel test robot <lkp@intel.com>, Nicholas Piggin <npiggin@gmail.com>, clang-built-linux@googlegroups.com, kvm-ppc@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>, linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, Benjamin Herrenschmidt <benh@kernel.crashing.org>, Nick Desaulniers <ndesaulniers@google.com>
In-Reply-To: <20210621182440.990242-1-nathan@kernel.org>
References: <YNDUEoanTqvayZ5P@archlinux-ax161> <20210621182440.990242-1-nathan@kernel.org>
Subject: Re: [PATCH] KVM: PPC: Book3S HV: Workaround high stack usage with clang
Message-Id: <162454315620.2927609.2836123364412705213.b4-ty@ellerman.id.au>
Date: Thu, 24 Jun 2021 23:59:16 +1000
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: patch-notifications@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of michael@ozlabs.org designates 2401:3900:2:1::2 as
 permitted sender) smtp.mailfrom=michael@ozlabs.org
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

On Mon, 21 Jun 2021 11:24:40 -0700, Nathan Chancellor wrote:
> LLVM does not emit optimal byteswap assembly, which results in high
> stack usage in kvmhv_enter_nested_guest() due to the inlining of
> byteswap_pt_regs(). With LLVM 12.0.0:
> 
> arch/powerpc/kvm/book3s_hv_nested.c:289:6: error: stack frame size of
> 2512 bytes in function 'kvmhv_enter_nested_guest' [-Werror,-Wframe-larger-than=]
> long kvmhv_enter_nested_guest(struct kvm_vcpu *vcpu)
>      ^
> 1 error generated.
> 
> [...]

Applied to powerpc/topic/ppc-kvm.

[1/1] KVM: PPC: Book3S HV: Workaround high stack usage with clang
      https://git.kernel.org/powerpc/c/51696f39cbee5bb684e7959c0c98b5f54548aa34

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/162454315620.2927609.2836123364412705213.b4-ty%40ellerman.id.au.
