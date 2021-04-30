Return-Path: <clang-built-linux+bncBAABBQ4AWKCAMGQEL2FN3CA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AFB5370353
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 May 2021 00:10:12 +0200 (CEST)
Received: by mail-io1-xd3c.google.com with SMTP id z25-20020a05660200d9b02903de90ff885fsf39811812ioe.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Apr 2021 15:10:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619820611; cv=pass;
        d=google.com; s=arc-20160816;
        b=EnyeE+Qd2aD/gP6eyYwTyCJd0GZH8LW6bD2yhIyJY3AihxbmW5/TqXApIvc3SxxMXw
         Ao/DWtnaBrMNJhkXgnQq2IyyiHUjPBaLxij/ib3svMw/sbGtTZP7m6NnTJXvknEGOi8V
         57dkViwSMIJCPYQOQOI7k0sRw38/h8yQ6PcwqcS2Z0Oe+hfbMrAusjjxLbUkr2AiH0sm
         oSXMvKVNyIpHbWa3RF0RYnTza96E0O+28Mb+j6PYAPE646yMEKezl4Ql6U4SSWz53K0Y
         NyHGExtYw0t1hU0TggPtv5ua+21N62QKIOWAeFiJeM5qV1rRbRPhyQn2pY+3SsSI/uuI
         vXFA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:in-reply-to:references:date
         :message-id:from:subject:mime-version:sender:dkim-signature;
        bh=wGsUetpc+l/78HbCV7a37YkwXHTGfXthf0j7wNSvhX4=;
        b=Cz7QTRsxSzxLp3FTIpZ5luGP45zLg/owfPctQ/+MWrkzUMUb40quNZW03cDMJ4vF/A
         JW2SnohOhm0eutIvo8UMmGWXHpzJfKF95ZaOUDfLyMyfPWy1TxI2F4TE+am/TjzUdLCR
         KsgUq6guJZzQrHVPB43cExlfLej2KQ02fsPVYAS3bF6G078euHU/h0d7gnXuq8yJMuig
         flExQR1MOJ/n7qFzY4X6U6MmNu00m5WuHC5xzclxwoWl4dcd4gmkPLEdjsGffpcl7Env
         WnDFekdJV05hKt5iDZ8em4dYDTeLOtQNWRsqcQ8Hu2yCmdVgRPYxxKnV3JQgkrtZZjaM
         nyVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=sU6OOY3p;
       spf=pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:subject:from:message-id:date:references
         :in-reply-to:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wGsUetpc+l/78HbCV7a37YkwXHTGfXthf0j7wNSvhX4=;
        b=Eeg32tfLWc7ni1CcYYhfj1RaQ5IpjbAmwlnNeUzKJ9xZM5Wk3UT9261ZrPLdfWnwYC
         9N+b47ZllqciTZowahds6VWBZw3RtNE6PqwwV78Z+w14cyXFst5ciktCwh5NfcptBVc7
         OhJ8DdyPnhpVNv0nIWLwCbknrZCgFPxWttzTUtwdbw89QwMO068mCzTNHw1sh4gZGkSS
         X5kj27Xbsxll8kwbureYq3NuV1D+yj7E6gcniAYmPgXSlzhy6xYJl5hJawSZz2vAIhv8
         NTVvHxXVCq1918K7dMHmrC5Uwe8V8XrCyZpyO5LzNxhoPZGCGnCdMrQ8Qp2LLS/TMI2U
         Gh5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:subject:from:message-id:date
         :references:in-reply-to:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wGsUetpc+l/78HbCV7a37YkwXHTGfXthf0j7wNSvhX4=;
        b=Z1r80zrsQK19oO3bWllqMhfrcudB6268HEfaOFut4hGzWcnGNSFMUA1Zr1j2+mBI5S
         +77aZ2kCEFvA+aqyedf+ncWjIq1UeSNef375C9J8Jz4mf89N08AETuFWoVBPtTxOi9Yu
         FeodCuhlQAvJFPXp0iB3X7Wndg6iB5BLsnSQIF0OekBO6wjc39GSkH6eskAVidkgC35T
         isnj+A5MnE+XSoOQL3Ka31SxCk4oEDOjSwnEo8CMH6HtCwQ7l3pVG/fayYqu43HXdQVN
         FDw8fkiWmVCuK5D0Bx6T9djrMgrConqT3Eu3nOfKAXNoI9hms2vkgFFNaP7m/jA0UbCY
         +XpQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532C/9VMV4AHhukcIxOGPpsgfDfvdigm2GZwYBJlUMNGFgxZrq0u
	SqxE3VbRF4alyQONlC4T4r4=
X-Google-Smtp-Source: ABdhPJxvXP/R/25qAfljkKxkiurllbrDhY0Fgn2WHG1TAvvviJG5AeFVvddFRymGHbmMFaYCjmZfbQ==
X-Received: by 2002:a05:6638:4a:: with SMTP id a10mr7070362jap.142.1619820611138;
        Fri, 30 Apr 2021 15:10:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1845:: with SMTP id b5ls1695833ilv.0.gmail; Fri, 30
 Apr 2021 15:10:10 -0700 (PDT)
X-Received: by 2002:a92:c26a:: with SMTP id h10mr5818621ild.294.1619820610875;
        Fri, 30 Apr 2021 15:10:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619820610; cv=none;
        d=google.com; s=arc-20160816;
        b=LMy7H5/U39nSzAMjV6asCdWJSZEJXYQqHv6qBR9Z2TCE6TNWeMt9G9JkcCXSG2SpAP
         k0BpNS3EVEqFzm8+1wrCMJdssRes4g+i4AZg5wJnDy2dDde4isCh17vs+1Wkf/JPA3p6
         zsKVxZzn5YOqxrYtkaTt/lE8IgcEAepXCucQ4/nIaEdjusG0PhxKxg0Y/wuddh7h0aPR
         KEIkf5oFKp0hPHi5UGrf5dBLnc8IFs3/CC3fOTQ3ZCWzjUHWscL1AjACm9CdpwpkZ/DP
         j/5aPA10OKybXiO2aOt5nyDav5fTNgJjvwySV+WrV6tb61+J350BAcm+dRuCesdAkxkq
         TY/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:in-reply-to:references:date:message-id:from:subject
         :content-transfer-encoding:mime-version:dkim-signature;
        bh=u1zslmi5C88yu7LjhrXsyqoGvfruvndmI3pFhOVlRKs=;
        b=NjRpsLaEY6GtAsUYmTmN34b9T84f8hV4IkcjabDv4ww9iv1x5r6GFl+pfPBBB+dpSn
         lqvls3UyFOpSu+Mv927TrIQXD6pM8ng3ftV9BzIXv6cAqhpDFse0cWTWAywrG+jdFoxd
         wi28TLM4uUEkxEkPspNHJDqwD1DKm+DkqCvsFVH1deXViCOy34EZ/5pEscyWJrXsH1lZ
         S/eT1/g5QcvnRt51SwIsC6Ou9vW7oST/zvtsew1gQXwRf8fsWDaTA7nIYtL1JT5WxoXk
         v+u8H2LHRhRpd8HRnN40n6YCAvrUUrhip6Etp7pi3VqRybkQtBZKK1gRYqWmjjIVbEHe
         Ty9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=sU6OOY3p;
       spf=pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l25si616977ioh.2.2021.04.30.15.10.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Apr 2021 15:10:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPS id DB80F61477;
	Fri, 30 Apr 2021 22:10:09 +0000 (UTC)
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id C75BD60A3A;
	Fri, 30 Apr 2021 22:10:09 +0000 (UTC)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Subject: Re: [PATCH] vsock/vmci: Remove redundant assignment to err
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <161982060981.21725.11745298291348115356.git-patchwork-notify@kernel.org>
Date: Fri, 30 Apr 2021 22:10:09 +0000
References: <1619774854-121938-1-git-send-email-yang.lee@linux.alibaba.com>
In-Reply-To: <1619774854-121938-1-git-send-email-yang.lee@linux.alibaba.com>
To: Yang Li <yang.lee@linux.alibaba.com>
Cc: davem@davemloft.net, kuba@kernel.org, nathan@kernel.org,
 ndesaulniers@google.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
X-Original-Sender: patchwork-bot+netdevbpf@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=sU6OOY3p;       spf=pass
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

This patch was applied to netdev/net.git (refs/heads/master):

On Fri, 30 Apr 2021 17:27:34 +0800 you wrote:
> Variable 'err' is set to zero but this value is never read as it is
> overwritten with a new value later on, hence it is a redundant
> assignment and can be removed.
> 
> Clean up the following clang-analyzer warning:
> 
> net/vmw_vsock/vmci_transport.c:948:2: warning: Value stored to 'err' is
> never read [clang-analyzer-deadcode.DeadStores]
> 
> [...]

Here is the summary with links:
  - vsock/vmci: Remove redundant assignment to err
    https://git.kernel.org/netdev/net/c/f0a5818b472c

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/161982060981.21725.11745298291348115356.git-patchwork-notify%40kernel.org.
