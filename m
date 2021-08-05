Return-Path: <clang-built-linux+bncBDRPZAGFRAFBBEXKV6EAMGQEGIZHLRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 76BDC3E16EA
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Aug 2021 16:26:27 +0200 (CEST)
Received: by mail-lf1-x140.google.com with SMTP id u19-20020a0565121293b02903bb9654c2bfsf2668336lfs.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Aug 2021 07:26:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628173587; cv=pass;
        d=google.com; s=arc-20160816;
        b=AcatsgWlZ6z2ainb5ikkCdsuNxYJhJ+wNT9pssdBV1n9rZizzBJQjJgieJDJuKDZyy
         cyLXMfEAQ/WhkQkWodGGFA1rGUZz8G737uO19KKs91O/7bS4cpYglSaJYEah1OuUisZR
         xEQJuJg7IJmKuwS5qmOIE+WOvaraukJGrsN0qlGkMVCoLg23b6gY/31+IhpCXTtAjSU2
         PSekwt7Pc3v91Kh8rXqRFuoRcHAzCkh8/789WlcHSWcHyRn2nHLxyfN3hh+wt6nE+u3p
         A3dl2oR3UGylB8JRszIWqRZ+Gc5TdsuuixDWQVc+q2G8gHnjvqxglixZXKvFpkU22eki
         4zvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:to:subject
         :sender:dkim-signature:dkim-signature;
        bh=jgwk79RvuFxSE40i3po5uOyaeW3qi6aX3Mrm/9M27S0=;
        b=AXUVMno6AIybJcnYuLiSsdMh58qHCz/PnB4aTOQsJqKY+MEjDlLRlhm64NyD60r58I
         rtoI68H57S7SnNTYJSfgM+vJES9xYp9/PLhaN/cu7cRXuFaMNBQm+oGBNEKFpk6pcCXc
         nu67E8zDQnZm/weoTL/BKp1ucpnSj8ofjTEu2tNGAh7oOacsxeey2IMdcRmNeC4Q6sV9
         hY2YZ6sOYUwQaU3YwNnE6JO4lffp0KGPMlIktZThuxJ7efn2NuXkXIHLnkSAxPdC4+Th
         qmtqT2EwXO4ta2yjmwnWK5N+gbfut6lFDlHxYOuLhxkoEwMhp7jhYRZccIZiNX0ygG+7
         ERGA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JlQOWwRb;
       spf=pass (google.com: domain of paskripkin@gmail.com designates 2a00:1450:4864:20::22f as permitted sender) smtp.mailfrom=paskripkin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jgwk79RvuFxSE40i3po5uOyaeW3qi6aX3Mrm/9M27S0=;
        b=LZawZcvQNvuO/fvQt8Kd/mznnmKTZG9cNOz41TfGzrudKRQc9cCtbhxi9YZ/t7Porr
         5aVi4ZLpXPFIixZqwJxTdXrlJUdh1dO2WadyTJLgOYmMnugJ9M8uMYUJ2m/1KhNtUbpE
         oox9PGPjWzfWI/HOUQrgLeXtdhxQgVhyGGi6B3rJcMeYHxLGZukICHsdAcyTAuAHrsWD
         fUXgaEQFYVzOCj6VHoWNRgsUaKtA9nrkzlCKiWj58EB4ILn4SuplcGCIyH5U17zBAkME
         FsvB2+yANLI7P/KaW+dno+k5MitVQ90tbmxITmmbSeuKgtRjujuBLUVN/OYB9eINps7m
         LrEQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jgwk79RvuFxSE40i3po5uOyaeW3qi6aX3Mrm/9M27S0=;
        b=ZxcWbCES1IuFs0aeJMzMiD2LQwCdkAWQJapurEsqxSppkYjJV1fR4U4FNoOzzYhHln
         yyYR9YsR7OpgSsV7AYKdrtPx4Odd5dtdna1aRt9vsGT6U2O78tWRuZd6klpgWxoh2hOy
         Q0aoCDbFTIov+tXz5xAixOID4bIYgKuOyLqJD40Gaf7Aa3GLIUs0wawtnslwm2FpVGiq
         7v/9Zu+AMm2LCycOdY0BvXgiRrLuAuag/rIVHxWW6uG8fzuif+8E0EQ1VA+lmqGpKRHm
         AVWIAznksV+m92Gnx82om6N6DOou1I+9U56ac3P7iDZzUEc7UTBQQyVI8692R42lar+8
         pypw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jgwk79RvuFxSE40i3po5uOyaeW3qi6aX3Mrm/9M27S0=;
        b=NFhmBSfCnxBi0p8So+OC2zJzcL5iaMlmgO5rckWElDBri0LWst0tG2O12xg5FOj45/
         Q3jz/fNKyZ3J0/FN3wHz6pLwf8wB25CGYsDCsAOXW7A/OYXKKRHoWhTWDNjy/jhUjg4q
         FZOjw6vf6OcqttEIqrUWPxPhadlRCDfOBrjmVQWKXnTFJjopw+fV8sCyJR91OL4fi966
         h7Or3oelSz2lSiKbT1U71UIKHsqGZYpv/4DRRhZvl1u+fOYitS7ECpIYl+ms3xW0iYbX
         fZqh95iMi3f7PEkN/Ej+oWZZSbTYmrTUm/WdvpQpcGLKYUj+LiW/8H9aynUYQa9If7sD
         ISWg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531E1fcVBjygu+Pz3N7XgLG8LIpdG/RTfXNm3afPnU65is2kk1fc
	l0A+PXds3T7HmyO/7bz7HuY=
X-Google-Smtp-Source: ABdhPJxqnwVQ7Mw4dtZWJeE8CyB3wG1zyz5/x4RxgqLX1HxWalzikftapB7wJJsxGDfIB9uQGbcBPQ==
X-Received: by 2002:a2e:a911:: with SMTP id j17mr3328271ljq.341.1628173587077;
        Thu, 05 Aug 2021 07:26:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5395:: with SMTP id g21ls4440871lfh.1.gmail; Thu, 05 Aug
 2021 07:26:26 -0700 (PDT)
X-Received: by 2002:a05:6512:3d04:: with SMTP id d4mr3846134lfv.578.1628173586012;
        Thu, 05 Aug 2021 07:26:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628173586; cv=none;
        d=google.com; s=arc-20160816;
        b=HWXqwQnTh7SfGaVPpivn4t9g2jf4AiOFPhZY2vH3otGuMUgR/08i60SfDCDEmW1FfR
         bOKzD/lbPINkDs7VeXs1mgUnySPDDG5O8Ij0OUt/yvvv/uYXH/KyHB0UBSIeIDSnFiy4
         6xmSJO86MYXeQHfJVDWcCQ4Z/BOr4u4ZTBe+k3a7D8TpacmP9IlBrHg0RKT4Mkx5ElS+
         Hapil4SCLfsl3J2ZzYx58KrhyfqXCMCSEhx1fn0OHf6abszfgokzf9Pz6uJ58kbUpf2T
         LGtaH9ygfomtgZJpnSM1xE6ZEy2AxAdvkt3zhM19J9Ds+CkQR6+qnjTneOucBXG0qJuD
         Vl6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:to:subject:dkim-signature;
        bh=RKcFjiwMXc5BYKQz1bcpOMX6jWXaoe4r5Jt/CAUiijU=;
        b=DM8mHTUqnHNSJeBMjG2W3OqPyYfgAvteP3HwQEBEeKHfZhhtYe6qGrJoH+bLDPhuGt
         YUPh+2YRnS8YXG0TLU4MJZkuiD5+ApKdCbp6V4lXHi48KY0HrMFfoNKh0OB044bJJDfb
         C9dBzzi9nPTKYBhSKtQ71W7LgkADxDnq1tQKwMuMRQ3Bm7OEiNmrpChPqVdNWlFkDHx8
         dFXKRFJerO07WIzsl+Db8KnIDbqTTmXBpUI2Mcffr3LPDD9jUubgX/3gVOW8SmBPHyMw
         LUfLUQd+FqOQA8JuX20euUduYK+AbAI4zk4DHi0yZKrUAb/euIUPWysbuHt7Gjf1/2Dr
         z3rw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JlQOWwRb;
       spf=pass (google.com: domain of paskripkin@gmail.com designates 2a00:1450:4864:20::22f as permitted sender) smtp.mailfrom=paskripkin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com. [2a00:1450:4864:20::22f])
        by gmr-mx.google.com with ESMTPS id j26si380229lfh.0.2021.08.05.07.26.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Aug 2021 07:26:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of paskripkin@gmail.com designates 2a00:1450:4864:20::22f as permitted sender) client-ip=2a00:1450:4864:20::22f;
Received: by mail-lj1-x22f.google.com with SMTP id a7so7321898ljq.11;
        Thu, 05 Aug 2021 07:26:26 -0700 (PDT)
X-Received: by 2002:a2e:7c19:: with SMTP id x25mr3464048ljc.169.1628173585723;
        Thu, 05 Aug 2021 07:26:25 -0700 (PDT)
Received: from [192.168.1.11] ([94.103.226.235])
        by smtp.gmail.com with ESMTPSA id q7sm531780lfm.27.2021.08.05.07.26.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Aug 2021 07:26:24 -0700 (PDT)
Subject: Re: [syzbot] INFO: task hung in ext4_fill_super
To: syzbot <syzbot+c9ff4822a62eee994ea3@syzkaller.appspotmail.com>,
 adilger.kernel@dilger.ca, clang-built-linux@googlegroups.com,
 linux-ext4@vger.kernel.org, linux-kernel@vger.kernel.org, nathan@kernel.org,
 ndesaulniers@google.com, syzkaller-bugs@googlegroups.com, tytso@mit.edu
References: <0000000000004c80e405c4df1a2d@google.com>
From: Pavel Skripkin <paskripkin@gmail.com>
Message-ID: <1e291320-3ad3-aa21-77c6-c71da9d32fdb@gmail.com>
Date: Thu, 5 Aug 2021 17:26:22 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <0000000000004c80e405c4df1a2d@google.com>
Content-Type: multipart/mixed;
 boundary="------------675893B3B0BF5C1099A6646E"
Content-Language: en-US
X-Original-Sender: paskripkin@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=JlQOWwRb;       spf=pass
 (google.com: domain of paskripkin@gmail.com designates 2a00:1450:4864:20::22f
 as permitted sender) smtp.mailfrom=paskripkin@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

This is a multi-part message in MIME format.
--------------675893B3B0BF5C1099A6646E
Content-Type: text/plain; charset="UTF-8"; format=flowed

On 6/16/21 12:56 PM, syzbot wrote:
> Hello,
> 
> syzbot found the following issue on:
> 
> HEAD commit:    f21b807c Merge tag 'drm-fixes-2021-06-11' of git://anongit..
> git tree:       upstream
> console output: https://syzkaller.appspot.com/x/log.txt?x=165fca57d00000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=30f476588412c065
> dashboard link: https://syzkaller.appspot.com/bug?extid=c9ff4822a62eee994ea3
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=17d19ce0300000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=108d7988300000
> 
> Bisection is inconclusive: the issue happens on the oldest tested release.
> 
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1646b8d0300000
> final oops:     https://syzkaller.appspot.com/x/report.txt?x=1546b8d0300000
> console output: https://syzkaller.appspot.com/x/log.txt?x=1146b8d0300000
> 
> IMPORTANT: if you fix the issue, please add the following tag to the commit:
> Reported-by: syzbot+c9ff4822a62eee994ea3@syzkaller.appspotmail.com
> 
> INFO: task syz-executor768:8567 blocked for more than 143 seconds.
>        Not tainted 5.13.0-rc5-syzkaller #0
> "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
> task:syz-executor768 state:D stack:27544 pid: 8567 ppid:  8423 flags:0x00004004
> Call Trace:
>   context_switch kernel/sched/core.c:4339 [inline]
>   __schedule+0x916/0x23e0 kernel/sched/core.c:5147
>   schedule+0xcf/0x270 kernel/sched/core.c:5226
>   schedule_timeout+0x1db/0x250 kernel/time/timer.c:1868
>   do_wait_for_common kernel/sched/completion.c:85 [inline]
>   __wait_for_common kernel/sched/completion.c:106 [inline]
>   wait_for_common kernel/sched/completion.c:117 [inline]
>   wait_for_completion+0x168/0x270 kernel/sched/completion.c:138
>   kthread_stop+0x17a/0x720 kernel/kthread.c:642
>   ext4_fill_super+0x87ac/0xdfa0 fs/ext4/super.c:5190
>   mount_bdev+0x34d/0x410 fs/super.c:1368
>   legacy_get_tree+0x105/0x220 fs/fs_context.c:592
>   vfs_get_tree+0x89/0x2f0 fs/super.c:1498
>   do_new_mount fs/namespace.c:2905 [inline]
>   path_mount+0x132a/0x1fa0 fs/namespace.c:3235
>   do_mount fs/namespace.c:3248 [inline]
>   __do_sys_mount fs/namespace.c:3456 [inline]
>   __se_sys_mount fs/namespace.c:3433 [inline]
>   __x64_sys_mount+0x27f/0x300 fs/namespace.c:3433
>   do_syscall_64+0x3a/0xb0 arch/x86/entry/common.c:47
>   entry_SYSCALL_64_after_hwframe+0x44/0xae
> RIP: 0033:0x445b2a
> RSP: 002b:00007ffc5efbf598 EFLAGS: 00000202 ORIG_RAX: 00000000000000a5
> RAX: ffffffffffffffda RBX: 00007ffc5efbf5f0 RCX: 0000000000445b2a
> RDX: 0000000020000000 RSI: 00000000200000c0 RDI: 00007ffc5efbf5b0
> RBP: 00007ffc5efbf5b0 R08: 00007ffc5efbf5f0 R09: 0000000000000000
> R10: 0000000000000000 R11: 0000000000000202 R12: 00000000200003f8
> R13: 0000000000000003 R14: 0000000000000004 R15: 0000000000000005
> 

#syz test
git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master


With regards,
Pavel Skripkin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1e291320-3ad3-aa21-77c6-c71da9d32fdb%40gmail.com.

--------------675893B3B0BF5C1099A6646E
Content-Type: text/x-patch; charset=UTF-8;
 name="0001-ext4-avoid-huge-mmp-update-interval-value.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="0001-ext4-avoid-huge-mmp-update-interval-value.patch"

From 9eb3e2f727e1c33ec39c28694a1528b9cc4a32eb Mon Sep 17 00:00:00 2001
From: Pavel Skripkin <paskripkin@gmail.com>
Date: Thu, 5 Aug 2021 17:23:40 +0300
Subject: [PATCH] ext4: avoid huge mmp update interval value

/* .. */

Signed-off-by: Pavel Skripkin <paskripkin@gmail.com>
---
 fs/ext4/mmp.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/fs/ext4/mmp.c b/fs/ext4/mmp.c
index bc364c119af6..2f632344d38c 100644
--- a/fs/ext4/mmp.c
+++ b/fs/ext4/mmp.c
@@ -7,6 +7,9 @@
 
 #include "ext4.h"
 
+#define EXT4_KMMP_MAX_INTERVAL		100
+#define EXT4_KMMP_MIN_INTERVAL		5
+
 /* Checksumming functions */
 static __le32 ext4_mmp_csum(struct super_block *sb, struct mmp_struct *mmp)
 {
@@ -140,6 +143,11 @@ static int kmmpd(void *data)
 	unsigned long diff;
 	int retval;
 
+	/* We should avoid unreasonale huge update interval, since it can cause
+	 * task hung bug on umount or on error handling path in ext4_fill_super()
+	 */
+	mmp_update_interval = clamp(mmp_update_interval, EXT4_KMMP_MIN_INTERVAL, EXT4_KMMP_MAX_INTERVAL);
+
 	mmp_block = le64_to_cpu(es->s_mmp_block);
 	mmp = (struct mmp_struct *)(bh->b_data);
 	mmp->mmp_time = cpu_to_le64(ktime_get_real_seconds());
@@ -156,6 +164,9 @@ static int kmmpd(void *data)
 	memcpy(mmp->mmp_nodename, init_utsname()->nodename,
 	       sizeof(mmp->mmp_nodename));
 
+	ext4_msg(sb, KERN_INFO, "Started kmmp thread with update interval = %u\n",
+		 mmp_update_interval);
+
 	while (!kthread_should_stop() && !sb_rdonly(sb)) {
 		if (!ext4_has_feature_mmp(sb)) {
 			ext4_warning(sb, "kmmpd being stopped since MMP feature"
-- 
2.32.0


--------------675893B3B0BF5C1099A6646E--
