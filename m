Return-Path: <clang-built-linux+bncBAABBU5WVWAAMGQEJC32GUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 93CB03010A1
	for <lists+clang-built-linux@lfdr.de>; Sat, 23 Jan 2021 00:10:12 +0100 (CET)
Received: by mail-oi1-x23a.google.com with SMTP id g76sf2912510oib.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 15:10:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611357011; cv=pass;
        d=google.com; s=arc-20160816;
        b=SrMeRAmRFWPHmjjtxttnb9pExXtP+rEmmebenYsiaijSxAei5H89WFgwWnmzaOnS/E
         ZMwtztF4WMd+n1JBguKp0AEHgFlGnED/fyof23sMsC9KbGAONh94XbF2tU+uz7Y7nEcT
         hH3L4Dm5jWYGPC2EwA8fqZ3h4yV+Osy9FF0Mgc+cVObcTXL573F18QQfU+tHDuGb68ii
         C+EcO7rAxrnQuJkuLZkjZi76FAVwjWE9X4jqn3pKvwRI55NEVOV3ol+Mbs20QA9ofLCO
         uTpr5KqnA6r+g5vVapPBFq0dIT3Pa3VwEoM40w8n2PFIfK/Hdgd0cVzm/0LGk0D+Gfnt
         dE2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:in-reply-to:references:date
         :message-id:from:subject:mime-version:sender:dkim-signature;
        bh=uEkcAoOxqnffHPVtgPWJ5rQgYN3VwIjvYe90EeAGKFc=;
        b=gJyuRxAj41brN6XEB10BDRmmoWfipddtFHP6DmL1iPfIJIHyJAvafeI2kEU1kr4um+
         myeWTtVLCPx9atRaRdjFBHQPCzT6eCDq4a2WXpOO4RTbrfAPR3smsieoFz+VVanVLvke
         gyfPrZXW43Phq4BDuuYm0Nyfn/hkHO9MKhI0Lvp13nOojN/iQkou4Ar6tfLdDHNUud/s
         50mhL1Ox1lZLhHL2JLjse9RPLJCv62GvPKFdvYpkzKtphMlpxQMQoEm7pdKGXyAZKZTf
         8wlI8qwUHHePs9Wmbjs57gy+aRIYVZgGLsajvTRkzC062dF1QEzoDx6R4oBYky/NwoZc
         ochg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=HhzwLyN7;
       spf=pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:subject:from:message-id:date:references
         :in-reply-to:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uEkcAoOxqnffHPVtgPWJ5rQgYN3VwIjvYe90EeAGKFc=;
        b=ZsWmHfA1QHOJh6/SLDWKaYWXYIRd9y9UHN1cWXTpl+aLqnE8PFUSYLn1vAGykTJRIR
         cjTDXBsxfQcvk7Q/F7DXdzD7uSuxsXpJoscbMowpMOkcLOTixB8bn9xhnhClbdqwnxqZ
         lZzAm1/mYNKdxH3FVXraTL6TUp8+JWEiRYyArhSnN5BzcAcAz8RGnRMYDuUD8V3pmXPi
         +70bH/apchrcROCyq0Da/dBe8wdGtZmVOSo0lwE4cgT39rB03aD2EFr+UWokOKawcCi+
         NK6CXSqIj8RWUTLR6DYPNRHXTau+qFzeLX3yAwyAgS2VlwZkwytYQRjTjccyVG0QTyKq
         3vaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:subject:from:message-id:date
         :references:in-reply-to:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uEkcAoOxqnffHPVtgPWJ5rQgYN3VwIjvYe90EeAGKFc=;
        b=O6djEk/0ad0PPXXUkKa0mLiq2MQ5fbyeLLYqWCVAEx5l9XHzSRo7ig59CdwFgWWk4R
         Pe6avBCsHPgX3rEcM2z5ICmruxI4yI7CUlACicXzBDukqaRRVUdN6EUeI/7IKlK3h/03
         kccA9XTtzxhzAiFEPVnCdovixwnJKfwn05AukH0f8PGc0/ehvgVh9RZZ8b/O4P2pbZ8m
         RhwcFrY8XhKBit1bbwP62uUWPrybX6qIvdBTIy3/bPquTvL1Gs+Se4qvV6tBArs7gSnI
         wyOxQLyYIiqHvZLdGDjlzT6o8EmrXxxIFyJVm+1izG1123/xe7s+h7p9UQp4kqUO4kUz
         R3Bg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Iws2etRZfcvA1p7UvbLP50g/XY7w5o1Bptsu4bxODYmZSu8JY
	QmnDErH4KiKCBZ7DdriNR9I=
X-Google-Smtp-Source: ABdhPJyZz4f+7YywMaf/S9QqCNP0z8vZXUWZP/c2sUdJzrsud4vMaUX8xefGfU+f5q43xdmlq5Phww==
X-Received: by 2002:a9d:17cb:: with SMTP id j69mr5103597otj.6.1611357011122;
        Fri, 22 Jan 2021 15:10:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:18f1:: with SMTP id d17ls1249606otf.6.gmail; Fri,
 22 Jan 2021 15:10:10 -0800 (PST)
X-Received: by 2002:a9d:2663:: with SMTP id a90mr4952740otb.218.1611357010778;
        Fri, 22 Jan 2021 15:10:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611357010; cv=none;
        d=google.com; s=arc-20160816;
        b=AUrATXGUKPRX/3DdTdZhTD3/jP2LkNsbh/Tuaq2Gu0O37fBMFZw77C3aGZFYRA/9G4
         Ds81rVPMRQGh9FUAmtAPFWpzMtqPNdIFg2UDQCAMwTXEoZsrve6GIWMTbKSGMFkYlN0N
         IO9pJJzZ9iIXWgrvE/6VZirhgLteeJbjVtM4E83dIzp+ihG0hTynwPaN1gXSees+LAEz
         Fc3yu6YiWlWC93Iinh5DxeB9nvYcA4Y2/3b+RmaYKQ1LFkN9fV4JyCwJX5M6JssLRTxs
         HZBVEGmlxCOrJ40BFvBzImyU7CIwJXYrQDQNtfPdbqDUTNPrXzuFq+CrD/rHSIptUDJZ
         7FBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:in-reply-to:references:date:message-id:from:subject
         :content-transfer-encoding:mime-version:dkim-signature;
        bh=M9bT0owIOkT/1P+QyyN8i5LW+uOpL3ohxHM1sfodlyw=;
        b=Rf77BdiOyurafEXq3oH4WFHkwfGXM/CCmavZUKmyh2EoujNBovUFi22a8G05cmHtMF
         e6JY3b8jw4ycdLw9Fj16/CPCe6v4GpGxXrQdTs7HRcZlfxEBWtdYEOzCBXuGvGG5EKFq
         h1y+ninLY293kMnLcj91OShdtDNsrRXeEAlQeyR2229oNCMi+9IAZmeat1LjN529isi/
         RbYzwiVxfDs5L6ZAzHGj83NW25SR3B40ZaukwLlWyRXOvUv43+/8hqFLPh7CXSNWOJK/
         JX3B18bDBB0GMWYXEMOVM7ct/54rd3D9XM+GAMLmSPCP1I439bg6HDgghplSXL22bBoX
         zjBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=HhzwLyN7;
       spf=pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i2si994302otk.1.2021.01.22.15.10.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Jan 2021 15:10:10 -0800 (PST)
Received-SPF: pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPS id B0F4B23B52;
	Fri, 22 Jan 2021 23:10:09 +0000 (UTC)
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 9FC32652D9;
	Fri, 22 Jan 2021 23:10:09 +0000 (UTC)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Subject: Re: [PATCH bpf-next v4] samples/bpf: Update build procedure for manually
 compiling LLVM and Clang
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <161135700964.32582.5741971594319443447.git-patchwork-notify@kernel.org>
Date: Fri, 22 Jan 2021 23:10:09 +0000
References: <1611279584-26047-1-git-send-email-yangtiezhu@loongson.cn>
In-Reply-To: <1611279584-26047-1-git-send-email-yangtiezhu@loongson.cn>
To: Tiezhu Yang <yangtiezhu@loongson.cn>
Cc: ast@kernel.org, daniel@iogearbox.net, andrii@kernel.org, kafai@fb.com,
 songliubraving@fb.com, yhs@fb.com, john.fastabend@gmail.com,
 kpsingh@kernel.org, natechancellor@gmail.com, ndesaulniers@google.com,
 netdev@vger.kernel.org, bpf@vger.kernel.org,
 clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
 lixuefeng@loongson.cn, maskray@google.com
X-Original-Sender: patchwork-bot+netdevbpf@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=HhzwLyN7;       spf=pass
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

On Fri, 22 Jan 2021 09:39:44 +0800 you wrote:
> The current LLVM and Clang build procedure in samples/bpf/README.rst is
> out of date. See below that the links are not accessible any more.
> 
> $ git clone http://llvm.org/git/llvm.git
> Cloning into 'llvm'...
> fatal: unable to access 'http://llvm.org/git/llvm.git/': Maximum (20) redirects followed
> $ git clone --depth 1 http://llvm.org/git/clang.git
> Cloning into 'clang'...
> fatal: unable to access 'http://llvm.org/git/clang.git/': Maximum (20) redirects followed
> 
> [...]

Here is the summary with links:
  - [bpf-next,v4] samples/bpf: Update build procedure for manually compiling LLVM and Clang
    https://git.kernel.org/bpf/bpf-next/c/628add78b07a

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/161135700964.32582.5741971594319443447.git-patchwork-notify%40kernel.org.
