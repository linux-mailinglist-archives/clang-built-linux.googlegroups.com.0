Return-Path: <clang-built-linux+bncBAABBKOGZOAAMGQECQCNFYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AF35307A71
	for <lists+clang-built-linux@lfdr.de>; Thu, 28 Jan 2021 17:15:38 +0100 (CET)
Received: by mail-oo1-xc3a.google.com with SMTP id h10sf2790442ooj.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 28 Jan 2021 08:15:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611850537; cv=pass;
        d=google.com; s=arc-20160816;
        b=VD845WMRpHsj/SQ3tY46VvCM30FVfnsC7PkXM1Kb41IukuJVXLdSD5IOKqNBMyCwgi
         B+4XMiAKVMFsoDQ+NdDh4+ztnXhJOxgX3pwNAfYkR6WFuYNawDHc0npoNZt84zeA9dwE
         bTqSS3vPXZJJRG2lMYPISCNAGUmP79RyCjC+jhzLv+zhWgLDY+/m/dKKxNjSJn7D4eLs
         dsxiEuS/KeO7QREe9BSQF2Bm9Sebyu5rmqdOLay7k8wIkqDSIHkTW2zaapJBpPytbVHP
         nLL0aiK9YB9m23pomGJTbk8elJdBOAi/HLhnwJDvdDTyWgBq9ZhI91fb2+sSbH5YGkw3
         jM1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=ly7BLj4YC3g2lZVS3Vlxr13QSzWYQyhd7dX3f4dJCBM=;
        b=wIC1zYyfxL8gEWRhKeVxUCprAIXjIb28OymRA/WRZkuaZhJvfvfXrLmPvPHF5F6wse
         mkPa5S7YktJxhQxhVxsly0KRaRP5GMFGWsr/ZnqFGz+cVop7mFT1T2t+0rvOnPkgM1AL
         Qxw5VehOCUsTdy3L+HLHoVAPviuv6pUmQE8roIZ7uxaDx5WYJLVN/6JYUIWmq3G8VS3h
         Fpcykn7ITfjO0PRV+03CyDDw29b+ZRJFI/nRvVFWRyEcaKPoI5fALvVwL+s9u488fpaE
         WhzmipVlmDMtpVHCuqOGAA+ZXZir88889wc8GmPyaCuVaf2oEMdr8jLf9D1is+HhrKHw
         J8Pw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=QjFoeQZ2;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ly7BLj4YC3g2lZVS3Vlxr13QSzWYQyhd7dX3f4dJCBM=;
        b=p9bb0YDt7DG6AdhQg1RjKWfO960nRZK7kneO9S/TX16bo46ln3Q4pjPRZbUwTxEMPD
         sQ8MZaYwrXECH8xBViDagDrFsFarwlirjfe3Z2r7gXBMlP4jjLORS2IVle86k0A5L8gy
         0YYx46viIsssXwyX8l8rapr9tXiVaSTMPWdxmnkEox5oPs6enA2SVediUtC+LLVdzu6m
         4uFbOvEFZKfRqPF4zKRANxY3rVNSoPiPLgQri/zq2PR2Q1EXNw4FkclP/MancF1abYMx
         wS8j9hnn2GLJAaGeMvychaq6PXKFvxBgnp1T8UHHwoKX5cyF/uZjKEWC01w+UO7YZ+O5
         9CyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ly7BLj4YC3g2lZVS3Vlxr13QSzWYQyhd7dX3f4dJCBM=;
        b=pNUO1n2bQRqU3sE/j7+nUTiMpJTeicTb0DG5pdmyiT8ZAhqh7GuRMldL1Uzdl5nfKe
         IJEUbUnd0eYozKUxB/fYBDJKHtvDuHmttzDu3D+pWhRGLv/uWWt3aJnC9W+uORDR9QZq
         bZQAgMxhLscCMuxFHM21L/cQyID1GCqF8XPJ093q0PVZzq/7bVwStAQaeJa6XM0rZeor
         8ZIdZX1nSIvYbu2YqJAyD7c7vukYXZZaaAmBd8NasqD6uM/pYFIbDB9sOhJvbGiCtcjt
         PYv81DLWtp8vqlqzH5L2r1qA2mxelQB/RtOgorXXY2+4T4SjcYisbnAoshEJlshQMDiy
         VqpQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532JaGv3FwiuPhz6Kdq+5DLniMKieIeBfGf830g+2YnL4ybirUXU
	lEDbbDjrTTWREPadG7ObbPk=
X-Google-Smtp-Source: ABdhPJwOzVYr1QwRklkuxEpZT66j/qCD+KnFVyXWZsp5Rioki+tsO2xAKHhy4IDxO8hBreMElIXaMw==
X-Received: by 2002:a05:6830:1e50:: with SMTP id e16mr120808otj.149.1611850537464;
        Thu, 28 Jan 2021 08:15:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1e4a:: with SMTP id e10ls1452816otj.7.gmail; Thu,
 28 Jan 2021 08:15:37 -0800 (PST)
X-Received: by 2002:a05:6830:1d42:: with SMTP id p2mr135676oth.232.1611850537027;
        Thu, 28 Jan 2021 08:15:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611850537; cv=none;
        d=google.com; s=arc-20160816;
        b=Dce5jmr9aihclCbf6uK72SAUfFtPUCa9kg772j//jBsREZbGm2RwAu2MkXNXz/t+fc
         x14v+Hjc7EuswY649hXu1qznPxejFyaC/bKzEmh48BTgF0itqpUee3G/6cb2imxB5Xc2
         EgLlThVESs5x0A2NC0Ga/n5fy6HJkEGe3JY3KtMMrhlP/yWdPLyMmEG5qMg9XjY9Opa5
         vXUP2XfGpFbF5m6CMNF4jQSGdLdUZ1IyO19s58TX5RIjI1h4fieo7GxY8O1i3hE8goSf
         uIjdlVfA9+G6CPPIQ7H3LE0xV2rFrlM//qTzihrqr5YEW9HN/FxkPbkNo3junLjp+P6/
         bTiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=33EvNBH7DxA32hZ8aNaHP7o7j8gpxQ6kBXpueJALIz4=;
        b=b1pIGOAaHClsoScTQn3VsaEC3/tSYSuuzVy1mOiYpPpXis0vTQILBptRCRK68KKMFP
         XQ1O5NEeOObKwUhbc/eIeFbrqap61njcLc7wRuglyx0CLHbeM9mcwRCM1gXhXJZvOzIq
         KIJ0gdhUmrw+9jph9YD53H5vNJry4nxTkRMV5n1e0bUYM/FIoPalqw5WkzyirJlw2Ol6
         NNDwr8wwAvyaS0iiyuP09H1JlfMp3oc04f+HFSIKIKdKj02kiEZrTjhTCvti+7BVBPXo
         tBgn3UA/u76/lIDFq9k/u+knbogEDR7Zlh1PWhSbmuFGnI2Sj4rTDStHtymEKXATf+7T
         u01Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=QjFoeQZ2;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a188si311105oob.1.2021.01.28.08.15.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Jan 2021 08:15:37 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id E208764DEF
	for <clang-built-linux@googlegroups.com>; Thu, 28 Jan 2021 16:15:35 +0000 (UTC)
Received: by mail-oo1-f45.google.com with SMTP id r199so1555320oor.2
        for <clang-built-linux@googlegroups.com>; Thu, 28 Jan 2021 08:15:35 -0800 (PST)
X-Received: by 2002:a4a:88c9:: with SMTP id q9mr237072ooh.26.1611850530253;
 Thu, 28 Jan 2021 08:15:30 -0800 (PST)
MIME-Version: 1.0
References: <20210128044356.38419-1-ndesaulniers@google.com>
In-Reply-To: <20210128044356.38419-1-ndesaulniers@google.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Thu, 28 Jan 2021 17:15:13 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0MbxMC9iLe0NGR0ttLY7sZDjsrgKvfRZOXVJLjzDNKmA@mail.gmail.com>
Message-ID: <CAK8P3a0MbxMC9iLe0NGR0ttLY7sZDjsrgKvfRZOXVJLjzDNKmA@mail.gmail.com>
Subject: Re: [PATCH] ARM: kprobes: rewrite in UAL
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Russell King <linux@armlinux.org.uk>, Arnd Bergmann <arnd@arndb.de>, 
	Ard Biesheuvel <ardb@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=QjFoeQZ2;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Thu, Jan 28, 2021 at 5:44 AM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> Clang's integrated assembler only accepts UAL syntax, rewrite the
> instructions that were changed by RVCTv2.1.
>
> The document "Assembly language changes after RVCTv2.1" was very
> helpful.
>
> This exposed a bug in Clang's integrated assembler, which hopefully will
> land in clang-12, but is required to test this patch with LLVM_IAS=1.
>
> Link: https://developer.arm.com/documentation/dui0473/c/writing-arm-assembly-language/assembly-language-changes-after-rvctv2-1
> Link: https://github.com/ClangBuiltLinux/linux/issues/1271
> Link: https://reviews.llvm.org/D95586
> Reported-by: Arnd Bergmann <arnd@arndb.de>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  arch/arm/probes/kprobes/test-arm.c | 288 ++++++++++++++---------------
>  1 file changed, 144 insertions(+), 144 deletions(-)

This mostly works, but I see one extra case in some configurations:


arch/arm/probes/kprobes/test-arm.c:453:2: error: invalid instruction,
did you mean: swpb?
        TEST_R( "swpvsb r0, r",1,VAL1,", [sp]")
        ^
arch/arm/probes/kprobes/test-core.h:235:2: note: expanded from macro 'TEST_R'
        TEST_INSTRUCTION(code1 #reg code2)              \
        ^
arch/arm/probes/kprobes/test-core.h:155:17: note: expanded from macro
'TEST_INSTRUCTION'
        "50:    nop                                     \n\t"   \
                                                          ^
<inline asm>:20:5: note: instantiated into assembly here
        1:      swpvsb  r0, r1, [sp]
                ^~~~~~

Plus a lot of extra errors when building with CONFIG_THUMB2_KERNEL,
as that uses tests in arch/arm/probes/kprobes/test-thumb.c.

        Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a0MbxMC9iLe0NGR0ttLY7sZDjsrgKvfRZOXVJLjzDNKmA%40mail.gmail.com.
