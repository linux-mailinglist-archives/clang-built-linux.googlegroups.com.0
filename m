Return-Path: <clang-built-linux+bncBAABBSFJ46AAMGQEW2AHUDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A1E230CF28
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Feb 2021 23:40:09 +0100 (CET)
Received: by mail-oo1-xc3e.google.com with SMTP id p13sf10894220oos.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Feb 2021 14:40:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612305608; cv=pass;
        d=google.com; s=arc-20160816;
        b=JVDZa2656dofJRUh3t4OL+mPmzEVnv63nNr1fpHAijTEtq1drxunyzovy67BZloY/1
         tz/gIXfwWW1ZxsizpcbtKX1QC69B5whuTLdXHkNafAekJ//DAD+/U2mG/Oac/FPq4QXY
         cxpFKoJIcm+lzSVvycHpjcWTxbotQ2+PfSIr1+rGjEeCG1cR+qRf7zwCk6qRGzsqffHM
         HLY/p6hyiAnKXoBcX2bcqjGzTNPRzex6OtPSB/CjJkS6Rqj1twYlW6FgUKXlQ+Gcehsi
         dwjUriO61uOp/eAj5s+OoPcYz1CkCr9DQ4o4gHiPE8W97Pjl0q3/VNfDEeysZbFNCjIC
         pHfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:in-reply-to:references:date
         :message-id:from:subject:mime-version:sender:dkim-signature;
        bh=J72eZ5o+EWAhXnMki6UjuteTXWHCHF5qv1Nko6Vu048=;
        b=RH4T7qUmQe5fQmxZWfiiKdWXznRFRHq25EjGt9qnh6XCmAx9+NLRpjjWoI/dyjnAcw
         Dn9qkaEjXQ+ARKXl+xaC1kAR327K1aghnwOeA7fHg6WRMS0Bl/KD7Dh9LAzLi31RPEUf
         9hNF4VxLzxAZT4N/ySab6JGlc2KyBFu7NuiKnQnmrOjXtPIF+K4ezouaYB36rNoRg+hE
         ME9UVlxHmwNxl3MqJAcP3lWVqLLkHPJ6Y/PGPUU0IAiq32i1rQ5xdrPYUKtgDC1GCIVz
         snS/y5wAtEHG0g4vFWnDEWJaBwkNWmCrx8q7RcSnnYAydLVxnGKMrChwDWfQZTlRjXlr
         w9Aw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=DZ+HnyW7;
       spf=pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:subject:from:message-id:date:references
         :in-reply-to:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=J72eZ5o+EWAhXnMki6UjuteTXWHCHF5qv1Nko6Vu048=;
        b=Efh96Hxe/sNoa6RQEPhAZK5t1H8hDbgAWM9PRRs0fDHPGJOfwgsZucauIXHfJd8a12
         TrV3321CIUf2TbiZ+F4fz9xHk2Lc2q8/7uSTdaG/8dlCWw2Z4FGf+JelUS1BlP5dkou5
         7dv9NXzjyE5H+BeIvcXyi5s5BL8qIHgNuSbfOIlTCrcgLxTb0wI0TCLfpCmwe2VtWQxZ
         eRJADw7JvWM5RYFcDoOKaN78zBwTrnXp+R07UzrM9s0A4cqopx+5/YSRUjg/WJleU6gZ
         EMakBTfBBI9OOkCQ5R0GmfF8vlu8hjlXHJ1HrIVdBQ+q+lhS3dtq3k9ySIuoJFdFSw0X
         nzQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:subject:from:message-id:date
         :references:in-reply-to:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=J72eZ5o+EWAhXnMki6UjuteTXWHCHF5qv1Nko6Vu048=;
        b=OgT9opgUH0CLXx9qIWUWfAE5ia0RVN3d7aEmb2QKmNfiEqvyohKv36wgRU2CrqHG03
         8YJxUizWzJAkW5Ut0rzoKxVj8YPpMBgAWuMpWSq3VbC9zAbiSo60kvzYH8jsIVDdHTBf
         NrIetCEQwwm7Ulg4XAv0cfpTbPR9icYw0nCzLZrFrniArTnFA7S07x3xzFXWdmAE6zPZ
         3NZ4qgEHpPepiUh/wRlxBcIOYrG2eBg5a3JNbzpZuq89UPxQiT1l1KaqARLlct50rcr0
         LCovoFUoTShCzGsBTkyJtgZBE6ONNaDZZ3lEg36PEhd8pvm2BTDZOXqJmYDTcOa3Mz2C
         RzDA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530HUayM7RWBhAJ84GCzF6Uf0GlFohjwdX+ahH69tvzXg8qqTXzO
	MXLCMqjSk+YEsSqd2lwwmLY=
X-Google-Smtp-Source: ABdhPJzp0h6G2R25g4DdQsxjfzmz5r0hT1sFU3LV4XNk0WM/VWK8eYB2fwXwIAC1qQN3mhIofkDxvw==
X-Received: by 2002:aca:aac6:: with SMTP id t189mr55861oie.86.1612305608196;
        Tue, 02 Feb 2021 14:40:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:1105:: with SMTP id 5ls61154oir.7.gmail; Tue, 02 Feb
 2021 14:40:07 -0800 (PST)
X-Received: by 2002:aca:cdc9:: with SMTP id d192mr45045oig.176.1612305607876;
        Tue, 02 Feb 2021 14:40:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612305607; cv=none;
        d=google.com; s=arc-20160816;
        b=HvzwEYVeUH3izfgHPGZ+vqkzv8LB7dvXoXT6n1PT/JaH/C+s8YNFEoMsRdVSPqZYZ0
         frkJTK3NaB/PorXpQUUky3lw4hSxB7BiACmVOaVfpTyicDBZipdvprd+ZYJm02/YGdAe
         z6RjIaswz6VCvSuBA/JoxiV1kHdaNl/6+cD5UQjAWHUJCGpWDUMjL4mpCAGeBwJuOctk
         rBkU1rBudamqc50Iu+VMdWW/frDTPvB5A7UYAQOfIyezUHRS0tmaI8Vsdtb61KonNu+G
         eDIKxJqICZLi16IKA1x98R+D8LSoauNza8kTJi2a5BYBbNP221f9Qvb7CE2BeoH/J+8A
         klZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:in-reply-to:references:date:message-id:from:subject
         :content-transfer-encoding:mime-version:dkim-signature;
        bh=Hu3agPR5XvOz/H2mG1g+9T5WPBGA0AiOA+LLiNJb0O4=;
        b=B5Ly9huebwo6Is4oswo0l7DlIsD94lLch5Trs7aF8crMsZYHO7JJTMkKiEAYGzGGsS
         ekuyBVwb5jMqbqnwnPHSoWoKMxe9r8Z7ISaMq8qHMiyDxqBv7N1kH4VhfUmY+NnqtCYv
         aSXjPBHoszDTiPMIQgktXmgZw6xnbntpHfKu0QU0cEN3CWq/rwSaJ4eRP6vHNIKW9u3z
         Hk9WcSpAii99QkTsSKSxV+LrqIXxdLTUKeaK8Ho7eLBnaHGCCqSrumklFr4Pe5S3RCxL
         7ZqUEA6M7cqUbLaD+FCCbYd/DJAiSzEKgyylXyMQfe8tg+wVbN5Z4UgQ4PG+rp8iaP8H
         BRUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=DZ+HnyW7;
       spf=pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m26si5505otk.1.2021.02.02.14.40.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Feb 2021 14:40:07 -0800 (PST)
Received-SPF: pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPS id F376164F77;
	Tue,  2 Feb 2021 22:40:06 +0000 (UTC)
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id DEFA5609D7;
	Tue,  2 Feb 2021 22:40:06 +0000 (UTC)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Subject: Re: [PATCH bpf-next] samples/bpf: Add include dir for MIPS Loongson64 to
 fix build errors
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <161230560690.17917.396207762953039292.git-patchwork-notify@kernel.org>
Date: Tue, 02 Feb 2021 22:40:06 +0000
References: <1611669925-25315-1-git-send-email-yangtiezhu@loongson.cn>
In-Reply-To: <1611669925-25315-1-git-send-email-yangtiezhu@loongson.cn>
To: Tiezhu Yang <yangtiezhu@loongson.cn>
Cc: ast@kernel.org, daniel@iogearbox.net, andrii@kernel.org, kafai@fb.com,
 songliubraving@fb.com, yhs@fb.com, john.fastabend@gmail.com,
 kpsingh@kernel.org, natechancellor@gmail.com, ndesaulniers@google.com,
 netdev@vger.kernel.org, bpf@vger.kernel.org,
 clang-built-linux@googlegroups.com, linux-mips@vger.kernel.org,
 linux-kernel@vger.kernel.org, lixuefeng@loongson.cn
X-Original-Sender: patchwork-bot+netdevbpf@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=DZ+HnyW7;       spf=pass
 (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

Hello:

This patch was applied to bpf/bpf-next.git (refs/heads/master):

On Tue, 26 Jan 2021 22:05:25 +0800 you wrote:
> There exists many build errors when make M=samples/bpf on the Loongson
> platform, this issue is MIPS related, x86 compiles just fine.
> 
> Here are some errors:
> 
>   CLANG-bpf  samples/bpf/sockex2_kern.o
> In file included from samples/bpf/sockex2_kern.c:2:
> In file included from ./include/uapi/linux/in.h:24:
> In file included from ./include/linux/socket.h:8:
> In file included from ./include/linux/uio.h:8:
> In file included from ./include/linux/kernel.h:11:
> In file included from ./include/linux/bitops.h:32:
> In file included from ./arch/mips/include/asm/bitops.h:19:
> In file included from ./arch/mips/include/asm/barrier.h:11:
> ./arch/mips/include/asm/addrspace.h:13:10: fatal error: 'spaces.h' file not found
>          ^~~~~~~~~~
> 1 error generated.
> 
> [...]

Here is the summary with links:
  - [bpf-next] samples/bpf: Add include dir for MIPS Loongson64 to fix build errors
    https://git.kernel.org/bpf/bpf-next/c/058107abafc7

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/161230560690.17917.396207762953039292.git-patchwork-notify%40kernel.org.
