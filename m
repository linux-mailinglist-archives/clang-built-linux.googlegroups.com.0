Return-Path: <clang-built-linux+bncBAABBX6YYKEQMGQEWDDPE4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 374E33FEC63
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Sep 2021 12:50:08 +0200 (CEST)
Received: by mail-vk1-xa3d.google.com with SMTP id v133-20020a1f2f8b000000b0028deb2eb88fsf201105vkv.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Sep 2021 03:50:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630579807; cv=pass;
        d=google.com; s=arc-20160816;
        b=s6Qhd28gg18P4A9iDLpY1ZSZxVue0wU9IdP5UQVW2BrvkGJP/mMO6mmBRfFZnNBQJf
         ku36XCxQV6UcCUU05ORokNlCQdkEfvEmy2OhyKAAPHLCr5sBCHGZUiN4IcqF0EYsX8s5
         mJ0ACmkXlNnffMDkDp1GIL3Pfzi2B4Wc36wAZ588BdyLV9PccWpBxc/szkYZpe7UGnVi
         P69tcSpctQODmUCtU3/QbOG4EJVZn0B0qa6OVoqufFwkdLLKQ635iRaLmyEcxruOe0WI
         K6vWyFmY1qAOE7Z4GLMYEZTNj9FLrd/xw5kZgdAG1MdxxFTU6mzTdlUKDHtKnnEf+VgF
         yJfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:in-reply-to:references:date
         :message-id:from:subject:mime-version:sender:dkim-signature;
        bh=lnYgm2ycSYfsd6cw9NUW9xYViYZ3qaWkOwvQ0oZyVFY=;
        b=Va33b42P2SmtHkRvd/rcbo7g+BZ672+h3U7XTWSCKS+N0fJK74DzgIodab0R+0sqmH
         f254g8zYEjRtk+w7eH13Nc3FfWmtEumeljuIFsUqqV8dc9FwDMKjpTy7e37kmjYI43t/
         KAjeP85Mjuvn0a0Js6qLKhZScGpicxfzX8nPQGcrx1QeRAQrz06pDAK8HmZGdf59k1kr
         gA4xcwVJzKpkpF980qFyI9UhtK/3TQFxjvONgwzFPM+ESAN1FqGAfhRqMjnP5x1BDH/L
         CIzthTwM8DkH4AFOpVoNuuuXaSAM/CuIXgnD/Xs0x7rcly1BBqn010+Pf+71RISV7kff
         bhVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=lzEZFBvT;
       spf=pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:subject:from:message-id:date:references
         :in-reply-to:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lnYgm2ycSYfsd6cw9NUW9xYViYZ3qaWkOwvQ0oZyVFY=;
        b=DwTl575rf2IlfM2qrMVKH34gUt2L6IRfqk3W73nPvqqrrHpzdBCikgmXeKKdQM3tR/
         tqlJFznGqRkCJ8Kk1hbetIolSJyCxN/ZQ3C3qHSZsY94zr84rMpfTVZr0wQbiG6ldQi2
         lf4+mg5k8CfDrIf7ysKlIEH+9edKl7WBDtqWSB/ZELKEvyJgZ+XAERfumzsgA0ENAsEM
         8I2CvaFI5+zVKEiQWD+jQV2vRbPl9ve6M9dJ9LdM5HMCYJdMaLPfa9Ap4MlIlcbCB5gI
         PDg0A5xZy1T7nQ2vngyofT1WSHMNhYZPvOGxGUidYTGTrB8bzteLRBA03dEZTnpljjGR
         oD2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:subject:from:message-id:date
         :references:in-reply-to:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lnYgm2ycSYfsd6cw9NUW9xYViYZ3qaWkOwvQ0oZyVFY=;
        b=o46VgRSsPFXOAwRIs1yVw3x6uWie54iLidpEzGOx4VzWuT/brSGr5wSmK7oCsYsjsv
         jk6fd3/6QuG4z64d4cIUbYtyMF/1pHtlIcj4kGB8bv1VbS7Pke9SMNMLvFEhoVjQDnyY
         anzR1LWyLal8L3tbsDcoifxC8ZP1UU0W4SVB/sIbtFSUYPieW6nHxDfWHWskSVpqscbP
         h8Ad2rrzvDEFtQtmYh+OHGy1AlQrEU1eJfxBX5ARtDTRduJ1Yf5IST61LSlEWWstCpI1
         V06wy0hPFVs2RN+N2I4iEwhXEcjRG6jFV1PPlw1qGQkB4iQV6RBXmEPaU3lauuRLKVVf
         rkVg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533CCKyegEnJGLsLMB4OI3/4lS9zUskUNOidvcVqwBPwrP7+ssFo
	cM/a/9I75DbaaDevHcy6DsE=
X-Google-Smtp-Source: ABdhPJwdVFexXlHEKQfmwI00PqPaMSKzObqy+YA3E9M/YpgSYZMQAky11bEGjr1XB9S4o05ceQNrHA==
X-Received: by 2002:a1f:2cd0:: with SMTP id s199mr1136523vks.15.1630579807117;
        Thu, 02 Sep 2021 03:50:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:48a6:: with SMTP id x35ls148602uac.2.gmail; Thu, 02 Sep
 2021 03:50:06 -0700 (PDT)
X-Received: by 2002:ab0:25ce:: with SMTP id y14mr1117192uan.22.1630579806702;
        Thu, 02 Sep 2021 03:50:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630579806; cv=none;
        d=google.com; s=arc-20160816;
        b=irm4Fj8Yv0CL08VW2cSIb+CuunFUsCzW6RHZ790dF4C8OHGfhetPV5gYZ8+4oDYXuB
         A/H8cIDitRNfxEs/pKATC3c672nCajoszLqF1fetCnz43pWY/w/uJsqrRhVRzyU3WaEi
         LHeOHOEdJxt46yXAeEyyHkkGxsFJExAQ90eyOy49tgbLFQMLwEpXtQ8TpmrPQmG+x+72
         lIrP0D0vD9HS3lxXvNhqWCCraodHHZe9s804CAfHHH0BuV5kmI5le7PbsyZaNfw4Eno1
         bFJhQqdNgjFH2gPYjqOC949Z+o/9lCOUdDlUkuwACTSSqfsDc4B91kMXneNLspzqM6zk
         5Ejw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:in-reply-to:references:date:message-id:from:subject
         :content-transfer-encoding:mime-version:dkim-signature;
        bh=Qi9R8TjnEVf5YFGtU9Hyl9tGDizw4ZPcU2QfBojARpo=;
        b=DXu52lkexyHHLeKMHolGBzWPPc54AVjfZoDYbMFNqKwoz9t6DBkx4UrafpkKhmuXDX
         uhL7prCNE47CS1Vw2GeHiQVVS9zrRlfR7dzkEIUyhFFWe/5rxQW/WhlAoj5MmZsdjBTh
         +b2D+Jl+TIbRha6eLwf7NOnycx8ffneE+EW66dUZoxa+W0Y/Z9bpY7+DmWgNqWn7wDJk
         GGdk244m0lx43xS2TQksmJn5jz+K4rMf+kH3WC7LdkN+omBO7IRL7XWiSnzC/fuqoCQj
         q8OKb8ODyLHxY43lyAlc6fO9AktjiLQXW5E9l/mKIl8UiP+Q6mZDhmAZzZPBZ82/ZIbh
         pMtg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=lzEZFBvT;
       spf=pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c5si77103vkg.4.2021.09.02.03.50.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Sep 2021 03:50:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPS id 8A533610CF;
	Thu,  2 Sep 2021 10:50:05 +0000 (UTC)
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 791A260A2F;
	Thu,  2 Sep 2021 10:50:05 +0000 (UTC)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Subject: Re: [PATCH] flow: fix object-size-mismatch warning in
 flowi{4,6}_to_flowi_common()
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <163057980548.19226.5521481584542089933.git-patchwork-notify@kernel.org>
Date: Thu, 02 Sep 2021 10:50:05 +0000
References: <ae340f07-4d7f-9761-de88-d564c4250104@i-love.sakura.ne.jp>
In-Reply-To: <ae340f07-4d7f-9761-de88-d564c4250104@i-love.sakura.ne.jp>
To: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
Cc: davem@davemloft.net, kuba@kernel.org, nathan@kernel.org,
 ndesaulniers@google.com, netdev@vger.kernel.org,
 clang-built-linux@googlegroups.com, hdanton@sina.com
X-Original-Sender: patchwork-bot+netdevbpf@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=lzEZFBvT;       spf=pass
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

On Thu, 2 Sep 2021 14:36:17 +0900 you wrote:
> Commit 3df98d79215ace13 ("lsm,selinux: pass flowi_common instead of flowi
> to the LSM hooks") introduced flowi{4,6}_to_flowi_common() functions which
> cause UBSAN warning when building with LLVM 11.0.1 on Ubuntu 21.04.
> 
>  ================================================================================
>  UBSAN: object-size-mismatch in ./include/net/flow.h:197:33
>  member access within address ffffc9000109fbd8 with insufficient space
>  for an object of type 'struct flowi'
>  CPU: 2 PID: 7410 Comm: systemd-resolve Not tainted 5.14.0 #51
>  Hardware name: VMware, Inc. VMware Virtual Platform/440BX Desktop Reference Platform, BIOS 6.00 02/27/2020
>  Call Trace:
>   dump_stack_lvl+0x103/0x171
>   ubsan_type_mismatch_common+0x1de/0x390
>   __ubsan_handle_type_mismatch_v1+0x41/0x50
>   udp_sendmsg+0xda2/0x1300
>   ? ip_skb_dst_mtu+0x1f0/0x1f0
>   ? sock_rps_record_flow+0xe/0x200
>   ? inet_send_prepare+0x2d/0x90
>   sock_sendmsg+0x49/0x80
>   ____sys_sendmsg+0x269/0x370
>   __sys_sendmsg+0x15e/0x1d0
>   ? syscall_enter_from_user_mode+0xf0/0x1b0
>   do_syscall_64+0x3d/0xb0
>   entry_SYSCALL_64_after_hwframe+0x44/0xae
>  RIP: 0033:0x7f7081a50497
>  Code: 0c 00 f7 d8 64 89 02 48 c7 c0 ff ff ff ff eb b7 0f 1f 00 f3 0f 1e fa 64 8b 04 25 18 00 00 00 85 c0 75 10 b8 2e 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 51 c3 48 83 ec 28 89 54 24 1c 48 89 74 24 10
>  RSP: 002b:00007ffc153870f8 EFLAGS: 00000246 ORIG_RAX: 000000000000002e
>  RAX: ffffffffffffffda RBX: 000000000000000c RCX: 00007f7081a50497
>  RDX: 0000000000000000 RSI: 00007ffc15387140 RDI: 000000000000000c
>  RBP: 00007ffc15387140 R08: 0000563f29a5e4fc R09: 000000000000cd28
>  R10: 0000563f29a68a30 R11: 0000000000000246 R12: 000000000000000c
>  R13: 0000000000000001 R14: 0000563f29a68a30 R15: 0000563f29a5e50c
>  ================================================================================
> 
> [...]

Here is the summary with links:
  - flow: fix object-size-mismatch warning in flowi{4,6}_to_flowi_common()
    https://git.kernel.org/netdev/net/c/b9edbfe1adec

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/163057980548.19226.5521481584542089933.git-patchwork-notify%40kernel.org.
