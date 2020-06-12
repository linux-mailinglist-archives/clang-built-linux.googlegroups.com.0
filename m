Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBQMURT3QKGQE2I6KR6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 177781F7338
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jun 2020 06:53:23 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id w5sf6199256pfb.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Jun 2020 21:53:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591937601; cv=pass;
        d=google.com; s=arc-20160816;
        b=e8Mf25LDaql+KEv0OeSPD7Wkh4/rp8Jl9Kedx3xlRFEPbGwkrcB3DergPtXB9Tys3y
         427yz6aMq3+dVAXRsNYPqKC/c8IEz3aYU0tRmsFEHBy+ADYD0P4B0orEPBKXW5Exnm5o
         kqYrUJSYFnekHPrJ7JI9v1ClJ3r0d1KxLGOHXP4g5suORfCRbo99ennjJnch1zgRRWlz
         /x+I49obNPgRUUcJY9XMJm9FFlOjzLvV31caEG3uyRw2JJ/iOsjhaP+i4oznInOy/Y8y
         RW9ZY2YqpYaidyTyABaPUFBYYW8zWf3azs8KaTs0Z72Lvl+JjSsFxTnvJREOLbMo1jak
         wPeA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=/okwlA2zqEfpnF690143XnVZU+Cou43/u399URb9WwQ=;
        b=BUvb3d7bRKb340aSFgefHU+FDrtGEs7jpCBlcp+8gq3EjZ+EdfNsKI1PheRnPFTIPI
         mhBpbGJLNg7oj+7OIoTg1tySg61hiL5FbEi7jmBIHsQ2pzOrdSMs8Pm9Y5IIyaV9EU2r
         DkliiKPvGHnRo9zQ86VOfZbzxFBYnuVhvLbHrxfeH0GUGmNQ4PHMgHWjcnR1tx3xMkAS
         vux4DQo3IFu5RO23FAaDk7EoJHCLCRgDJDYN1x73e3NZ5xs3SU19nfEc6d2HOKznPLbR
         bmUTnhaX2lf0lM+BiHL/8X5GssaSZHJdIMW4WTIcQ2+U17SQWqEZmVa5gbJp414SOfjo
         Xj3w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JcsAjc7w;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/okwlA2zqEfpnF690143XnVZU+Cou43/u399URb9WwQ=;
        b=mnYDVRZgQC+F7z10daQpg7OXCn+mR28/Fkuf+y5cicJRcCvhd6vc4ZI+ayo0jpTvji
         1GExYwim2rCBSFAV2qb3tJOc1K3ZnEjXbQ00Ni7sr9T3Vqj6VMMnPXPflSCD2aouSCnr
         QnH0PRFjjfX1dt7SuO61+1jcNsxEIHNkIcOKSNAQ56/AwTfng0bCrhLpDOgUxKyjHA2c
         swxaq7t3l6SbJCmNki779dpJsea18FBBXkdfjSaWxY7Ea1gV4isrRFsS74fDK/Unk4cl
         WIMl+AfkJLnsDjMzHsqgKwvNKcUn1Le4kHNOIVqZrn6sFzT9yDxEx91x1iNisPhACTWU
         RRAA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/okwlA2zqEfpnF690143XnVZU+Cou43/u399URb9WwQ=;
        b=VAW6dV9J73J5L9osy5STdKRWzb7tL5SS/yfEVrjB61w8Lx5ccoSW9BTREjOOKgNDw4
         qtN0tWVCCMkxIEcsd9J3ZCzHzbTqMQMgKbegWBhTPgzKSuGLF7D7wLnTxrRvkuToxH1f
         f2lYYuEM9ilLCxzobH9GJv8HpyC6T+04EG3HvaooTGHMStVTxTuqhdAGKV5g26K7y14l
         oi1oc5N9tYr8T6HggU22S6KobTERfPtwRK7TAJoUh+UytI3LOZjMQbzppemRCMR8wib9
         Ao+AYnBRdG68uHJLQ+I2wKIC0U748AG4YrBzh/iI9vuvgxlSPBYdQLmd686sxxLt9uN1
         usUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/okwlA2zqEfpnF690143XnVZU+Cou43/u399URb9WwQ=;
        b=Ozc3Ipgs5Ictth+ujz374BXx+GM7eAjXGzaVb8kRl5cNwCKbxIoBQsfkTj8HZIf+2M
         N4r3T1QVR1NZi1ATmjkjnjzunDA74OjnTHX0+XItI0o8vhIMBrQSBseAE6/v5+NcQ1iX
         Nl3BEBIUVsw0qZj+ILRJIMgO6sP2pcMtYm2W+W/6wj4cZQcTBaSdGc1kkcOPeCdTJC0c
         QwPV5jiV21DzqXapFIZYykb8syYYFNelNq8RTPOWc7vRQBr8ZIiuDMSfGjzKTcZqK95e
         QOX8xWe67COjsZhy8xEXmhWYmKTyoB7ZgLdbmojqKCntbgiO1F+B3ARg90oUYxBlZ65b
         2DFA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ZskSKH7H4AFzLH5IE72WN0RhzFYvnc1z8P/bdRGkzLLsYosKG
	qflFRNUKVNW5ogfwJm2YCuc=
X-Google-Smtp-Source: ABdhPJxON3h4LRhFWrOGEtBLyYM9HY8cWebda+R3KLiH65KEYupqHkUu+VZFIaCM3PY/HjP3mmNmgA==
X-Received: by 2002:a17:90a:3b09:: with SMTP id d9mr11963655pjc.225.1591937601569;
        Thu, 11 Jun 2020 21:53:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bd05:: with SMTP id p5ls1621495pls.1.gmail; Thu, 11
 Jun 2020 21:53:21 -0700 (PDT)
X-Received: by 2002:a17:90a:1ad0:: with SMTP id p74mr12104687pjp.117.1591937601170;
        Thu, 11 Jun 2020 21:53:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591937601; cv=none;
        d=google.com; s=arc-20160816;
        b=C7zC6kEz0Li+6SRZRaVyFiL3AA3/jyncwMOyS1jrFs468XRchmUojajLaK4S/ArwC4
         CeS+mezJe3sISV+Sotj5jA7+HOpu4Bpvdx2tsYavjWQI6+lZh0jw1tfAbz3aHJ2t5bjf
         rtxN8ODjjPmZbB1j8aBXydjOv1AWM36j5vx9lkBfNJ+eF3SvnAVR4s38hr5rWJarTnvF
         frsqQQ4SjrBKEcJHbAb42GfH3PN6orwrcN1VQWLnUAfN4BTRKGfHqULNDjaB/ohmRP4a
         gybHWKLHbh+fa2WqXPjaS2prG7qfO0/JLDNaylx9rQ27nWYw//SvU6fslw4NpAfVTOFq
         5zqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=zCSuxwEDtuJ9zf1mhrD1sDdbW3HCFiaQTMtlkEwhjQg=;
        b=zDQT4utZr29l3MrA7MWoq9mHncfxzcjnx2KbLb+V8ThLyeWAFKYZKnulCOUNsu2u8L
         3ITVmaTjJdSWFuRZK0K2aItNsYSBHsz53UQIlvnOIsB6NLhvoz53e2iecPH1jW05SROc
         y4F0t13ecjFqDGmGSmI8nLeem18t1sjG+yBdikF40/MTGTc43NOQhVc6H7vqFk3qWhsz
         MNw+oZIeI9H+IdBTamwk4m/V3mc4ITNI52mT2L1AKQBtvk08Yzl8J2xI7bhuiRAReFcT
         fRjEyW4hXH2LRmBWBtOQLj8cFYOKgxftQxFEeafomSb9WaswgbAu/fK5WqoTKVby+F4n
         7g8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JcsAjc7w;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id a22si827245pjv.3.2020.06.11.21.53.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Jun 2020 21:53:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id t16so3258443plo.7
        for <clang-built-linux@googlegroups.com>; Thu, 11 Jun 2020 21:53:21 -0700 (PDT)
X-Received: by 2002:a17:90a:f0d4:: with SMTP id fa20mr11226260pjb.160.1591937600684;
        Thu, 11 Jun 2020 21:53:20 -0700 (PDT)
Received: from Ryzen-9-3900X.localdomain ([89.46.114.134])
        by smtp.gmail.com with ESMTPSA id w206sm4735757pfc.28.2020.06.11.21.53.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jun 2020 21:53:20 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>,
	Len Brown <lenb@kernel.org>
Cc: linux-acpi@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Kees Cook <keescook@chromium.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	yuu ichii <byahu140@heisei.be>
Subject: [PATCH] ACPI: sysfs: Fix pm_profile_attr type
Date: Thu, 11 Jun 2020 21:51:50 -0700
Message-Id: <20200612045149.1837-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=JcsAjc7w;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Content-Type: text/plain; charset="UTF-8"
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

When running a kernel with Clang's Control Flow Integrity implemented,
there is a violation that happens when accessing
/sys/firmware/acpi/pm_profile:

$ cat /sys/firmware/acpi/pm_profile
0

$ dmesg
...
[   17.352564] ------------[ cut here ]------------
[   17.352568] CFI failure (target: acpi_show_profile+0x0/0x8):
[   17.352572] WARNING: CPU: 3 PID: 497 at kernel/cfi.c:29 __cfi_check_fail+0x33/0x40
[   17.352573] Modules linked in:
[   17.352575] CPU: 3 PID: 497 Comm: cat Tainted: G        W         5.7.0-microsoft-standard+ #1
[   17.352576] RIP: 0010:__cfi_check_fail+0x33/0x40
[   17.352577] Code: 48 c7 c7 50 b3 85 84 48 c7 c6 50 0a 4e 84 e8 a4 d8 60 00 85 c0 75 02 5b c3 48 c7 c7 dc 5e 49 84 48 89 de 31 c0 e8 7d 06 eb ff <0f> 0b 5b c3 00 00 cc cc 00 00 cc cc 00 85 f6 74 25 41 b9 ea ff ff
[   17.352577] RSP: 0018:ffffaa6dc3c53d30 EFLAGS: 00010246
[   17.352578] RAX: 331267e0c06cee00 RBX: ffffffff83d85890 RCX: ffffffff8483a6f8
[   17.352579] RDX: ffff9cceabbb37c0 RSI: 0000000000000082 RDI: ffffffff84bb9e1c
[   17.352579] RBP: ffffffff845b2bc8 R08: 0000000000000001 R09: ffff9cceabbba200
[   17.352579] R10: 000000000000019d R11: 0000000000000000 R12: ffff9cc947766f00
[   17.352580] R13: ffffffff83d6bd50 R14: ffff9ccc6fa80000 R15: ffffffff845bd328
[   17.352582] FS:  00007fdbc8d13580(0000) GS:ffff9cce91ac0000(0000) knlGS:0000000000000000
[   17.352582] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   17.352583] CR2: 00007fdbc858e000 CR3: 00000005174d0000 CR4: 0000000000340ea0
[   17.352584] Call Trace:
[   17.352586]  ? rev_id_show+0x8/0x8
[   17.352587]  ? __cfi_check+0x45bac/0x4b640
[   17.352589]  ? kobj_attr_show+0x73/0x80
[   17.352590]  ? sysfs_kf_seq_show+0xc1/0x140
[   17.352592]  ? ext4_seq_options_show.cfi_jt+0x8/0x8
[   17.352593]  ? seq_read+0x180/0x600
[   17.352595]  ? sysfs_create_file_ns.cfi_jt+0x10/0x10
[   17.352596]  ? tlbflush_read_file+0x8/0x8
[   17.352597]  ? __vfs_read+0x6b/0x220
[   17.352598]  ? handle_mm_fault+0xa23/0x11b0
[   17.352599]  ? vfs_read+0xa2/0x130
[   17.352599]  ? ksys_read+0x6a/0xd0
[   17.352601]  ? __do_sys_getpgrp+0x8/0x8
[   17.352602]  ? do_syscall_64+0x72/0x120
[   17.352603]  ? entry_SYSCALL_64_after_hwframe+0x44/0xa9
[   17.352604] ---[ end trace 7b1fa81dc897e419 ]---

When /sys/firmware/acpi/pm_profile is read, sysfs_kf_seq_show is called,
which in turn calls kobj_attr_show, which gets the ->show callback
member by calling container_of on attr (casting it to struct
kobj_attribute) then calls it.

There is a CFI violation because pm_profile_attr is of type
struct device_attribute but kobj_attr_show calls ->show expecting it
to be from struct kobj_attribute. CFI checking ensures that function
pointer types match when doing indirect calls. Fix pm_profile_attr to
be defined in terms of kobj_attribute so there is no violation or
mismatch.

Fixes: 362b646062b2 ("ACPI: Export FADT pm_profile integer value to userspace")
Link: https://github.com/ClangBuiltLinux/linux/issues/1051
Reported-by: yuu ichii <byahu140@heisei.be>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/acpi/sysfs.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/acpi/sysfs.c b/drivers/acpi/sysfs.c
index 3a89909b50a6..76c668c05fa0 100644
--- a/drivers/acpi/sysfs.c
+++ b/drivers/acpi/sysfs.c
@@ -938,13 +938,13 @@ static void __exit interrupt_stats_exit(void)
 }
 
 static ssize_t
-acpi_show_profile(struct device *dev, struct device_attribute *attr,
+acpi_show_profile(struct kobject *kobj, struct kobj_attribute *attr,
 		  char *buf)
 {
 	return sprintf(buf, "%d\n", acpi_gbl_FADT.preferred_profile);
 }
 
-static const struct device_attribute pm_profile_attr =
+static const struct kobj_attribute pm_profile_attr =
 	__ATTR(pm_profile, S_IRUGO, acpi_show_profile, NULL);
 
 static ssize_t hotplug_enabled_show(struct kobject *kobj,

base-commit: b791d1bdf9212d944d749a5c7ff6febdba241771
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200612045149.1837-1-natechancellor%40gmail.com.
