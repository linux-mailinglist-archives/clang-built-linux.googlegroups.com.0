Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBDH4UOGAMGQEYOVSXOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B936447E1E
	for <lists+clang-built-linux@lfdr.de>; Mon,  8 Nov 2021 11:38:05 +0100 (CET)
Received: by mail-ua1-x93c.google.com with SMTP id 43-20020a9f25ae000000b002cf28d7afd2sf8908861uaf.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Nov 2021 02:38:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1636367884; cv=pass;
        d=google.com; s=arc-20160816;
        b=zzW+T6tCoNpsA96tqrKT2V/dwQ/Rv4uhDrhnYqvmMk985MEhxwFamfA4ifnuwkYTuJ
         cx9Z3Fm1BA1gyf2WGO0D0omCODAGpS1moeIb0YB8UqFxh92p5O5lqUIZddxm2BneGWei
         IOXDosoaGqCSVF6oYSEn2PhgojQtIXWUj5VClBPL6r8484LGt6EIPUU++OfsZbXy3YRd
         hkwDtvMA5wovr61LQUGmdIdsUOKo2OBQbXUkF+Q5zejl8GZ6nZh7+Oa+3hpQhGyjGVXc
         WlUbqz+4/5aIDAnTLdN3O13bZDGyBtihFmIzNWoaWs1mRH25RnsJIt0YS8v4nFWm7Y/B
         JsNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=REGQ/WH7F4yOL5h8vPs9nyaantlkFzFmjABAAWCnNqc=;
        b=BjLBz/o+JqEzBxpXYS7j62w+h8zqRlaTijue2yXadDa1X8WJ0BfvCDCOxldU3ZhqbA
         ka2PVCo9P5eAOp0DyneT1J2xoT8F5zh/lqYKScvyGISgmL+ryOy9EQbx7FNjvaIsIvgo
         h3CNHGRVkUMXkOX3g9mWd5I3dOFx3Bxn/L8N2TRQB+gIF+Uj+j4cGy/Fz5Y6w3IO5PFr
         c5nRp9HB/FoUCe6ZuM/hM2l2ToEZzkAaPFhvm9Lf+wap4gjB+ttavzOC6kPfUnK0THkm
         9zu/CSb4/7IESiPTXOyNgXgMgfWtd0Whuws4Rt6kaksbE80C21y0CVuWpefbW+KHKlHP
         qKJQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=D+bKJ2eb;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=REGQ/WH7F4yOL5h8vPs9nyaantlkFzFmjABAAWCnNqc=;
        b=Xz5y60JVjZaDZJk4LSAgE6cAQCf0X5MaSrvKX8cX8MJcACqW3ADLSFjurhpz/Xlt5F
         yXydhGuaCnFMPB0g0UP3Bg9k/pqygSHVnzt0Cz+CzcD1ALTH3Y9f27GUlwkgqVfnmkRF
         SzI3hki0mMwDMmh81viyJVFOfLEBJiF6WzpWdAIl8xB38slpcZAgwsWnphMc1CtVHDyh
         oRCL1Wo0ACypCtYfNsSIQ0gnFEIH/4ZY70TlY+dBnsXek1mbOqhf43Emzo2dQOJHsMul
         lHV14jasUZet1Vl+RRTG+4areDmPCLfttD3OiY03puR9RTlyZTiP6HupSD/ACbvv8gAo
         k9/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=REGQ/WH7F4yOL5h8vPs9nyaantlkFzFmjABAAWCnNqc=;
        b=O5zjKAVrcyF2t/LKPyRpEBtPhnyT8wg3Rvd1oUQvr1TdZHmnToHA9heSoclTCWNS5r
         NeY80Ijloi38uQxKJtb8PBzCQjit+1ABbWeFXxLcRsLPSyvzwVZ75gFfPscseN0Cxhlv
         C/SXg+TEV2Sr5SGE0GsAl3k+7GgbuywsIBKsw4W0IaFhZeSlh4EeiUYu1m+VwXXfsDdO
         BLNCxgdCE1UQgJihGILWHl6Iwc4bmVs270g3oFZNfs4Lpzoocyp9m3wt1lpxwWU57o75
         vXuQJ/XqvVFuYZVqz07F8wmhZlKloxTcQIBC+Y2JdjXPoqBhUR8nnVvS0JNg80slL2mQ
         tHHg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530hMKLHVsDeZRetrqGybCBDe4pZevLApQz3Lq8McHbpBOR3tE1S
	vY1EaooZ3Kz3wUpKxKNWsfk=
X-Google-Smtp-Source: ABdhPJx6GfWEnlGX3QZ+17kKcEe9bKbMbue39N7gKe7/sGOvaExQJpfb7rPOYKdglmeAfonPsH+vRg==
X-Received: by 2002:a05:6102:e14:: with SMTP id o20mr47950523vst.26.1636367884255;
        Mon, 08 Nov 2021 02:38:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:a89:: with SMTP id n9ls4855942vsg.3.gmail; Mon, 08
 Nov 2021 02:38:03 -0800 (PST)
X-Received: by 2002:a67:26c2:: with SMTP id m185mr100033071vsm.2.1636367883801;
        Mon, 08 Nov 2021 02:38:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1636367883; cv=none;
        d=google.com; s=arc-20160816;
        b=TQ1v7EI+tYzsTx3tqp80JSDINQvCV160Tbi0SaZ2JmPmRzy6FIy2KSzwyy8Ecp+bsC
         MqFoax/aSV0+sc0rOZeLEkrf/tftuh77WKv89ZZmgMPwUd5OMDhCfENRYHULs7+CPJEE
         IkbajHSmx8P2YoBPUYQg0pgdrUBnrq28pXJ3191PCy+6zJ8V5FfCvkYaGBIH2tbBCtlh
         5Da7v3yVx+AFZFgjVsYpmK+o/0e/tZDQn3f1T3Y5+95SOwGbigXJnbIXL3droLdF0OPZ
         m3b6PRqKXq9jaj2vBEHxe2R0jP8sIKJk/zP3BG948PU6ZaINeWTbvmTC2ukkspUJAqR2
         4vhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=D6lHpG7x3FQFIGk/eSrixGOF8DccTb+rtb7Nmjed8n0=;
        b=cjx/8aLgPe8Mo6j7zQbz6+J3UUha/NmQldheP7RcrOMtEV2OVyXKUVknXxqM0CV7/e
         h2a25ACDw1ITdTfugDDB7u+Q9/UpQUowJhhIp6bf+44XiUAaY/MJR9uVKxx/+v3JJyWp
         5EJ4Af1tUfUFZTukXmLEDNnXpIVu7/dUJBUVDFLk0R9Tau0ASwz9rb3YDNzRd0mVBlVw
         iIiB/fpSqYlpvLnHppPGuBCsNtntQzacpYpF6ob0kqIUiokkLVbRCqJ5CtTkDR5fq43S
         NXEQ7APhVoEPm/5DBdFOpLWI9yfOWj8ib4VngE/POnuDvQNKzdA6UL5qIkDmCVNcUrTO
         wFaA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=D+bKJ2eb;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v5si775908vsm.1.2021.11.08.02.38.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Nov 2021 02:38:03 -0800 (PST)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 68B8561352;
	Mon,  8 Nov 2021 10:38:00 +0000 (UTC)
From: Will Deacon <will@kernel.org>
To: Masahiro Yamada <masahiroy@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Catalin Marinas <catalin.marinas@arm.com>
Cc: kernel-team@android.com,
	Will Deacon <will@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Nathan Chancellor <nathan@kernel.org>,
	"Peter Zijlstra (Intel)" <peterz@infradead.org>,
	linux-kernel@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH] arm64: vdso: remove -nostdlib compiler flag
Date: Mon,  8 Nov 2021 10:37:50 +0000
Message-Id: <163636577786.14627.11162131514345192373.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20211107161802.323125-1-masahiroy@kernel.org>
References: <20211107161802.323125-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=D+bKJ2eb;       spf=pass
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

On Mon, 8 Nov 2021 01:18:02 +0900, Masahiro Yamada wrote:
> The -nostdlib option requests the compiler to not use the standard
> system startup files or libraries when linking. It is effective only
> when $(CC) is used as a linker driver.
> 
> Since commit 691efbedc60d ("arm64: vdso: use $(LD) instead of $(CC)
> to link VDSO"), $(LD) is directly used, hence -nostdlib is unneeded.
> 
> [...]

Applied to arm64 (for-next/core), thanks!

[1/1] arm64: vdso: remove -nostdlib compiler flag
      https://git.kernel.org/arm64/c/34688c76911e

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev
https://will.arm64.dev

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/163636577786.14627.11162131514345192373.b4-ty%40kernel.org.
