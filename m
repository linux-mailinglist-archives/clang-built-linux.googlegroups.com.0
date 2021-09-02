Return-Path: <clang-built-linux+bncBCAP7WGUVIKBBXOFYGEQMGQE3L6X77Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 032133FE8C8
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Sep 2021 07:36:31 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id h36-20020a6353240000b0290233de51954bsf564738pgb.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 01 Sep 2021 22:36:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630560989; cv=pass;
        d=google.com; s=arc-20160816;
        b=SrBa2W2gCzi7DZ8zBAUJ2h5o6J20PzWpnvSkXEVGN8M7rJSGJIqUrGwHY4yN4d3fyK
         7/FoQE7nAHoLkupC97LazrsiszA5gdrMyimg4gPtGcZgKitgqYd3MmUBcbVa+1hBxrge
         rkf3ieiTRy8LWdwsYQIY1W43PQs/kyW1hoIlIW3/oi6Kbjaj0ErraqMjGH0fiZ18fAp5
         jMiplJHOqqbOarV8U4Xnu0sgNU7iAu2t+kvM7ipanwmJTJaBYv/TyFhrEWpwhT3oebhE
         J0ZsViaeSvbEktVJU9KXijRY+ZBNFrFwUYGvuVa764V0eDDGF6/92Cs8XWHWXRPrcTxK
         wahA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :user-agent:date:message-id:subject:from:cc:to:sender:dkim-signature;
        bh=Sljen4UHulzTXozEtnqk5WvSsj5FXWhlJvFoU15XCJU=;
        b=eD2ceuzY7tyem0dEYYOdKR1b/QC71cth6oiDpLL2zaziLaFZpYy2TgeKMvHIq+tYwK
         xbqzv0LqyVQ5KZ8xW9t5BA/B/21LoFSmUMA78tQVThnms27JY4hq5t/7kSRmpEbJj9RG
         noJdesWRjvQVqRDxTbkaIsWU9icXw6/su4BBOUjuaCGnLBvGBIyoBm5MAJ/P+hEu7vgU
         pkWwLhiDGpF0kLIo9SZuTA9v9YyHG9cFtatmGgVWVDe6Pv+cGsyvU/Et0H94SMREBm3G
         8qOwXdYcTx8OKsb6rVYA3si1hRk93ZBr7C9AlM0TEC4jz6OxtSRk6qB9y2dHCPjQttuW
         xEzA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of penguin-kernel@i-love.sakura.ne.jp designates 202.181.97.72 as permitted sender) smtp.mailfrom=penguin-kernel@i-love.sakura.ne.jp
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Sljen4UHulzTXozEtnqk5WvSsj5FXWhlJvFoU15XCJU=;
        b=mC0jiCE3jWIPfAC9GTkG7D8lJE6eRZ8uWgX7uWGHTZqUt2II/INL+RRVvFelK8Leiv
         JfXEN0AkhYsmKf9FArrEasOb/x90/WJ3+RhE60a4cwZbWdY9hePV6z5ovux4eJWP6S9r
         Sz2SEsgWrEeVUMoO85+xTibOk/XykCFr5pjjNAuon7A4WtLhCrRAiXEni5lrT69yFL84
         647SIA1MIEi6eDhd7g+jpOJMbWhE3cww+a3B4WbLlJZVEqFM5oAP3opZqxt3LbSF3qEp
         2UU3uKjEJVSHt4wH4hqJ9i/oLXRw7sGP9pZZbYtypkxT0ticoXbNaXTbLCnGGLmpFb5w
         MRLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:from:subject:message-id:date
         :user-agent:mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Sljen4UHulzTXozEtnqk5WvSsj5FXWhlJvFoU15XCJU=;
        b=PgThJCgEMYeSQim+PcmuROqFYC1txwrnNybX4w7tRLpgaB9W/ZNtLqQ/9OJS/q0Ir2
         SGz0FQ8oR0y75MIN9dwbk/NfMdHZJvwzCPFFkT3qkatzdkn3bGRk9MFQJCokguLx5zZf
         P5FI1iq1kL4UoTH0O0e3N73lNfG05hVijkzBLi0b4zLcfMc+KLr1UvBdLAFse0AEaKT9
         P3HylfYGsTtscDA62oQ6dY5dLwLspcFxUWio2FxamNMJpnYbqVlD8C7CrLfMD/dmB4DO
         WdM30BiXtCxmsiGfJNnFdkY91fz8JRaK1RTb5LE/8O1RE+EgoLQsUul/BB/M4SQFMnFf
         iCbg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ip6UQvGlivp7VaW4Kb65VhRfx2s2bC9MUnqthxmXmPw2q/iSz
	Al6kre+HApIPudEVXC5MG9U=
X-Google-Smtp-Source: ABdhPJyjt4vOX841CuwRUPTbUDMf7MpaPkg3WBP3+hzDRMCOaENGASWO+/7Jaih6wItF6GtdGqmzAA==
X-Received: by 2002:a63:1266:: with SMTP id 38mr1472385pgs.219.1630560989325;
        Wed, 01 Sep 2021 22:36:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:1891:: with SMTP id x17ls458445pfh.9.gmail; Wed, 01
 Sep 2021 22:36:28 -0700 (PDT)
X-Received: by 2002:a63:5947:: with SMTP id j7mr1504834pgm.193.1630560988597;
        Wed, 01 Sep 2021 22:36:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630560988; cv=none;
        d=google.com; s=arc-20160816;
        b=x8tfrO1jHqjxkWApLiG8KFZz87O5zJOe1FSNDyqCum05/VOL2x46q1SYVxJ7uxbrre
         CihS3Nu6R2HeF1oprPrJngnHtydi0SLik25dtbk9y8U3ePJ07wqB1R0hIneHJM7gdWF3
         K2U3qs2DOg2wYyQ9UBvKLllJOgdxspSRBnvZIUzwNCQ9xG7oZ+af8EcuwXdYQ4sjfFVf
         UpcRb2HS1gfJ66HVVp83u8kREsWCL9/zVhdyNA0fwGrBDTvEHJzbzB0Q8jUcRWP1e6qJ
         TTfg4kj2WHmw675ktKh9Ov26ZsdD7Euqsa9bytq9uQVbMkqT0hXvHVpiojzuT1NMJoyn
         LnXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version:user-agent
         :date:message-id:subject:from:cc:to;
        bh=gI2ZU76s4yMYQWHzJ+xG83yxHaQfXpS9G/P5X2h6lxI=;
        b=wvCmyy9Yl4WdSvl9epijAzSWNcBa9yUK6uEGtE5fJUtbRSWSUvK+DXrOYO2hJE6uOh
         fLPpYOwN36nYDBu/BjHJNuBKu7KWUEZraUtzwC3eNvjYSeuzlVgfI9M9zOXbgR9Rtcmk
         HlQI7qh5OlNSez6edOxFEcnkdXmoGaVS6itREPKkUw69TYKj5T2EpvO7i1xNJrUOoYF5
         aZHFBQhSCLkfjmLNb/uSq92Og1DSG4lRwDuLXUSHDn01mFq7xyOjfbhhjX2TKPHxIjp6
         LyXVeh2oTCPb4R2j7JBT9pWPKO3KarXubEj85F/FXe795BvVwTmGRqijU+7z4L36GXMK
         IKLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of penguin-kernel@i-love.sakura.ne.jp designates 202.181.97.72 as permitted sender) smtp.mailfrom=penguin-kernel@i-love.sakura.ne.jp
Received: from www262.sakura.ne.jp (www262.sakura.ne.jp. [202.181.97.72])
        by gmr-mx.google.com with ESMTPS id r7si63715pjp.0.2021.09.01.22.36.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Sep 2021 22:36:28 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of penguin-kernel@i-love.sakura.ne.jp designates 202.181.97.72 as permitted sender) client-ip=202.181.97.72;
Received: from fsav411.sakura.ne.jp (fsav411.sakura.ne.jp [133.242.250.110])
	by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 1825aJ7e058157;
	Thu, 2 Sep 2021 14:36:19 +0900 (JST)
	(envelope-from penguin-kernel@i-love.sakura.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav411.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav411.sakura.ne.jp);
 Thu, 02 Sep 2021 14:36:19 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/fsav411.sakura.ne.jp)
Received: from [192.168.1.9] (M106072142033.v4.enabler.ne.jp [106.72.142.33])
	(authenticated bits=0)
	by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id 1825aJJ0058154
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NO);
	Thu, 2 Sep 2021 14:36:19 +0900 (JST)
	(envelope-from penguin-kernel@i-love.sakura.ne.jp)
To: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Cc: Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>, netdev@vger.kernel.org,
        clang-built-linux@googlegroups.com, Hillf Danton <hdanton@sina.com>
From: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
Subject: [PATCH] flow: fix object-size-mismatch warning in
 flowi{4,6}_to_flowi_common()
Message-ID: <ae340f07-4d7f-9761-de88-d564c4250104@i-love.sakura.ne.jp>
Date: Thu, 2 Sep 2021 14:36:17 +0900
User-Agent: Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: penguin-kernel@i-love.sakura.ne.jp
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of penguin-kernel@i-love.sakura.ne.jp
 designates 202.181.97.72 as permitted sender) smtp.mailfrom=penguin-kernel@i-love.sakura.ne.jp
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

Commit 3df98d79215ace13 ("lsm,selinux: pass flowi_common instead of flowi
to the LSM hooks") introduced flowi{4,6}_to_flowi_common() functions which
cause UBSAN warning when building with LLVM 11.0.1 on Ubuntu 21.04.

 ================================================================================
 UBSAN: object-size-mismatch in ./include/net/flow.h:197:33
 member access within address ffffc9000109fbd8 with insufficient space
 for an object of type 'struct flowi'
 CPU: 2 PID: 7410 Comm: systemd-resolve Not tainted 5.14.0 #51
 Hardware name: VMware, Inc. VMware Virtual Platform/440BX Desktop Reference Platform, BIOS 6.00 02/27/2020
 Call Trace:
  dump_stack_lvl+0x103/0x171
  ubsan_type_mismatch_common+0x1de/0x390
  __ubsan_handle_type_mismatch_v1+0x41/0x50
  udp_sendmsg+0xda2/0x1300
  ? ip_skb_dst_mtu+0x1f0/0x1f0
  ? sock_rps_record_flow+0xe/0x200
  ? inet_send_prepare+0x2d/0x90
  sock_sendmsg+0x49/0x80
  ____sys_sendmsg+0x269/0x370
  __sys_sendmsg+0x15e/0x1d0
  ? syscall_enter_from_user_mode+0xf0/0x1b0
  do_syscall_64+0x3d/0xb0
  entry_SYSCALL_64_after_hwframe+0x44/0xae
 RIP: 0033:0x7f7081a50497
 Code: 0c 00 f7 d8 64 89 02 48 c7 c0 ff ff ff ff eb b7 0f 1f 00 f3 0f 1e fa 64 8b 04 25 18 00 00 00 85 c0 75 10 b8 2e 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 51 c3 48 83 ec 28 89 54 24 1c 48 89 74 24 10
 RSP: 002b:00007ffc153870f8 EFLAGS: 00000246 ORIG_RAX: 000000000000002e
 RAX: ffffffffffffffda RBX: 000000000000000c RCX: 00007f7081a50497
 RDX: 0000000000000000 RSI: 00007ffc15387140 RDI: 000000000000000c
 RBP: 00007ffc15387140 R08: 0000563f29a5e4fc R09: 000000000000cd28
 R10: 0000563f29a68a30 R11: 0000000000000246 R12: 000000000000000c
 R13: 0000000000000001 R14: 0000563f29a68a30 R15: 0000563f29a5e50c
 ================================================================================

I don't think we need to call flowi{4,6}_to_flowi() from these functions
because the first member of "struct flowi4" and "struct flowi6" is

  struct flowi_common __fl_common;

while the first member of "struct flowi" is

  union {
    struct flowi_common __fl_common;
    struct flowi4       ip4;
    struct flowi6       ip6;
    struct flowidn      dn;
  } u;

which should point to the same address without access to "struct flowi".

Signed-off-by: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
---
 include/net/flow.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/net/flow.h b/include/net/flow.h
index 6f5e70240071..58beb16a49b8 100644
--- a/include/net/flow.h
+++ b/include/net/flow.h
@@ -194,7 +194,7 @@ static inline struct flowi *flowi4_to_flowi(struct flowi4 *fl4)
 
 static inline struct flowi_common *flowi4_to_flowi_common(struct flowi4 *fl4)
 {
-	return &(flowi4_to_flowi(fl4)->u.__fl_common);
+	return &(fl4->__fl_common);
 }
 
 static inline struct flowi *flowi6_to_flowi(struct flowi6 *fl6)
@@ -204,7 +204,7 @@ static inline struct flowi *flowi6_to_flowi(struct flowi6 *fl6)
 
 static inline struct flowi_common *flowi6_to_flowi_common(struct flowi6 *fl6)
 {
-	return &(flowi6_to_flowi(fl6)->u.__fl_common);
+	return &(fl6->__fl_common);
 }
 
 static inline struct flowi *flowidn_to_flowi(struct flowidn *fldn)
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/ae340f07-4d7f-9761-de88-d564c4250104%40i-love.sakura.ne.jp.
