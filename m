Return-Path: <clang-built-linux+bncBCN674663MOBBUU26OCAMGQEYHV73CI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5969A37F344
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 May 2021 08:55:16 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id g14-20020a926b0e0000b02901bb2deb9d71sf5147722ilc.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 23:55:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620888915; cv=pass;
        d=google.com; s=arc-20160816;
        b=LTkNyTku7DOcrqYkDbYzU9HRj33GnT/MNEiDw1Kp/4mk1zKjixc+ekTfl/32nuFOW9
         W5HHwR+o3furYiJ4Re4akXs9T6XE0RB9cZG8d9v43qCBw0QHdJrKMrHYJHMU3hpO2euK
         blGlHVNw9YYyo8PFm3t+nLYZMXE0u1NdagSlRZqBPrk/y+qLUvu1xFJumRa/yyW2h+Gb
         3dpJhDc9YRg17HY1eNqBo4SuXRLa5A3d7YBpQ2zBpFfDLNX5w45LoAWeXSA4Nl4y7NsD
         FdUBeDtoNUEDA0bMUHgLjgtl6Y95v6TFBUyz/k+S+CXhX7eXBi5GhulxoxfawPPaad9s
         DJGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=ZMOZ/z6kN8Pv8Y1W6w6in3NyTSaQZbvE/XyxeGHktug=;
        b=Y7mRXcDUQsodXoNYRTdZazTR2f7v9HmFMpyBcRP3PzJfnWKOUVbjO/Am6Q0Cd6LNzx
         nx9cjf+w7jZz0f3A72lxU0+6TP8Tk4BKTx6AGabVAShOgMSGVNX3TPVMo3hs6YA1dYRX
         EFaBVX4z2UtSfAf/cj/3i6VWfMEEOkgNdfRSyofdrlMUGV4l8xsJx+Ab0Us01F3LU+Iw
         NgwQ7tJrKuAfY1qOuhRfxXbAiTOTlCQWWpm5Xzb22Xt7svjhv4tx6OwDaDJmKFu/X8DI
         3ZDXVyA+nJjrcFCxd+948D/7y9682clOamQ87xevUAOGCGRCAHeNc27MJ158bpXa8Rkr
         0DuA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rHkz0lJ+;
       spf=pass (google.com: domain of 3uc2cyakkagotqcuizbqvowwotm.kwu@flex--liumartin.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3Uc2cYAkKAGoTQcUIZbQVOWWOTM.KWU@flex--liumartin.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ZMOZ/z6kN8Pv8Y1W6w6in3NyTSaQZbvE/XyxeGHktug=;
        b=WurohiR53f4zbqJt46QTZGnQKOIByRLAhKr8RlpJ0fTzDBmOuclbw58cRuhlQTl1KV
         wRjXo6eYMhdz1roT/99XAgnK/dwu+qXUgZM0Vl8Z8nIxXduCTFpUf6zXwV7lvi1CNyVY
         vaN4BGyY43XLX+V9pj5gUyQxIzHkJXRY53QGOHVOHuh2QhZuanfqGA8ojnfbq6J4b6Ez
         F3QnDobI6G4OKyfY4zkzpuoa3yM/dRPGhqWTJSgxO6AtRWnIFfaZL9CXZnXckTUWTK1T
         tgY9bt74wxjuuuJ5Wu+I4xF/olvzH8E0SLIwZNRxHgwRQFeNs7/Uua9VBxBZn9Psqy05
         9dtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZMOZ/z6kN8Pv8Y1W6w6in3NyTSaQZbvE/XyxeGHktug=;
        b=pDwB7PtkHrdQuDQ0voL0OkoHym1uAunpDKcFJ0qWuVO4B4OnEm7qIqMqTjZrroHxUr
         82zXTfCwUgGyEwd3TD4887m275xP/GTpRPiiwTdFjea+sKnzHYp2j0IzLYmHzV99nzx2
         4+QKLszlkMzNGLoT9DAMtALhypr3Ga+EMn72MOIlCE2vgkuvqMgSovKgzVMQxQUmpPXe
         +l4bf8daMKJrT2dC5XX3Bdt+EGbCUnmdVYkSfSprO1x6mHrUWkOan+p6IgcW81AXnICE
         RnCnrBSbLRcfbCtNN2jKZfafcZPGD5Eccg1Q5T6gBevTRtV5rAU+4FGi/c8h7aadkZ73
         kP1Q==
X-Gm-Message-State: AOAM531ruAyqNowOp4zTP94F72dcvm/2eLZTyj9E9JXJchOCAtlkC94G
	EHr0MdeM6ytESVmI6KTbYMs=
X-Google-Smtp-Source: ABdhPJw4y7u93DlZyeHzAMnbxWzjfsHKuhdm/G+lhOkp206pQg2BoX9jiuU1j3BU+R0T5o2ii/vY/Q==
X-Received: by 2002:a5e:8a42:: with SMTP id o2mr28825647iom.144.1620888914986;
        Wed, 12 May 2021 23:55:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:c885:: with SMTP id m5ls854573jao.8.gmail; Wed, 12 May
 2021 23:55:14 -0700 (PDT)
X-Received: by 2002:a02:b057:: with SMTP id q23mr14564956jah.25.1620888914460;
        Wed, 12 May 2021 23:55:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620888914; cv=none;
        d=google.com; s=arc-20160816;
        b=EbqRpQArSwfa/OSZd9pVqOBCDVS11DeJ/gGkCy7cbpKJ4uODdEzZXRwuI21IbX/TQH
         qz4hxD2J9BJIWKdfvDTOLAGcF6kIflDqX4GKcnM18nJvoOdtXlD4GVtTgQq4qnX0n+H6
         1X64odNmCCs3uMRz/Th5oio1YJBAGV+trXbFlzUTe5NtaKSAaRFD5k8h3LB2Df93g8Ke
         rQFpSFk0obp8wXuCwfD3LZbtJ4aYtF5AOkjbGXBm1vou0f+Fqnfiy6mOy547v2H+rjjr
         j4LrMBIIEhLMKXfyLziYOBepl6jz/uhL3fZaD/5bGKD6H7ncyysc2n4EU3+bExpJROes
         2lNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:from:subject:mime-version
         :message-id:date:dkim-signature;
        bh=Bz3JxoEii4Fx6S2XL+V4iDTq2CHrqR+zl6djxVQifMg=;
        b=G3qqdeTPV4uuc0D41ySiCtOm40yOIr3oeSa/D4cbFc7Im7jsvAWw7/4pOe/YA1/htY
         AsdJ0LJf46qFQ7L89Ukmx9P9Es+KSmPA+2rEirX3FPZWhw93KH8D2bRAu81l4Q8ApYAT
         o/OTir8Z+c6rwLVL1/LE8plc1S6dQ4tU+jxMFntyUsUM8JzJJOXLUNaEv/sbsMHDBL3K
         vxoqJDDUnRLEvR0xKjAoZVmZtuu8LNMOcX5gl+R8ixwzld15/04UiMX3MUdx2bL7+st8
         6Yj/hzLyWZqk7snOIEH43vJj6w+SkVJoqsCYMoG5HPhgfoYC6+Xhig/GVKYyw2jn39uy
         pT5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rHkz0lJ+;
       spf=pass (google.com: domain of 3uc2cyakkagotqcuizbqvowwotm.kwu@flex--liumartin.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3Uc2cYAkKAGoTQcUIZbQVOWWOTM.KWU@flex--liumartin.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id j1si191908ilq.0.2021.05.12.23.55.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 May 2021 23:55:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3uc2cyakkagotqcuizbqvowwotm.kwu@flex--liumartin.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id a24-20020a05620a1038b02902fa6ba180ffso7191326qkk.0
        for <clang-built-linux@googlegroups.com>; Wed, 12 May 2021 23:55:14 -0700 (PDT)
X-Received: from liumartin.ntc.corp.google.com ([2401:fa00:fc:202:7e5:c43a:7562:b75d])
 (user=liumartin job=sendgmr) by 2002:a0c:e14b:: with SMTP id
 c11mr5553032qvl.56.1620888913863; Wed, 12 May 2021 23:55:13 -0700 (PDT)
Date: Thu, 13 May 2021 14:54:57 +0800
Message-Id: <20210513065458.941403-1-liumartin@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.31.1.607.g51e8a6a459-goog
Subject: [PATCH] kthread: Fix kthread_mod_delayed_work vs kthread_cancel_delayed_work_sync
 race
From: "'Martin Liu' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Petr Mladek <pmladek@suse.com>, Andrew Morton <akpm@linux-foundation.org>, Tejun Heo <tj@kernel.org>
Cc: minchan@google.com, www@google.com, davidchao@google.com, 
	jenhaochen@google.com, Martin Liu <liumartin@google.com>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: liumartin@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rHkz0lJ+;       spf=pass
 (google.com: domain of 3uc2cyakkagotqcuizbqvowwotm.kwu@flex--liumartin.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3Uc2cYAkKAGoTQcUIZbQVOWWOTM.KWU@flex--liumartin.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Martin Liu <liumartin@google.com>
Reply-To: Martin Liu <liumartin@google.com>
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

We encountered a system hang issue while doing the tests. The callstack
is as following

	schedule+0x80/0x100
	schedule_timeout+0x48/0x138
	wait_for_common+0xa4/0x134
	wait_for_completion+0x1c/0x2c
	kthread_flush_work+0x114/0x1cc
	kthread_cancel_work_sync.llvm.16514401384283632983+0xe8/0x144
	kthread_cancel_delayed_work_sync+0x18/0x2c
	xxxx_pm_notify+0xb0/0xd8
	blocking_notifier_call_chain_robust+0x80/0x194
	pm_notifier_call_chain_robust+0x28/0x4c
	suspend_prepare+0x40/0x260
	enter_state+0x80/0x3f4
	pm_suspend+0x60/0xdc
	state_store+0x108/0x144
	kobj_attr_store+0x38/0x88
	sysfs_kf_write+0x64/0xc0
	kernfs_fop_write_iter+0x108/0x1d0
	vfs_write+0x2f4/0x368
	ksys_write+0x7c/0xec

When we started investigating, we found race between
kthread_mod_delayed_work vs kthread_cancel_delayed_work_sync. The race's
result could be simply reproduced as a kthread_mod_delayed_work with
a following kthread_flush_work call.

Thing is we release kthread_mod_delayed_work kspin_lock in
__kthread_cancel_work so it opens a race window for
kthread_cancel_delayed_work_sync to change the canceling count used to
prevent dwork from being requeued before calling kthread_flush_work.
However, we don't check the canceling count after returning from
__kthread_cancel_work and then insert the dwork to the worker. It
results the following kthread_flush_work inserts flush work to dwork's
tail which is at worker's dealyed_work_list. Therefore, flush work will
never get moved to the worker's work_list to be executed. Finally,
kthread_cancel_delayed_work_sync will NOT be able to get completed and
wait forever. The code sequence diagram is as following

Thread A                Thread B
kthread_mod_delayed_work
  spin_lock
   __kthread_cancel_work
    canceling =3D 1
    spin_unlock
                        kthread_cancel_delayed_work_sync
                          spin_lock
                            kthread_cancel_work
                          canceling =3D 2
                          spin_unlock
    del_timer_sync
    spin_lock
    canceling =3D 1 // canceling count gets update in ThreadB before
  queue_delayed_work // dwork is put into the woker=E2=80=99s dealyed_work_=
list
                        without checking the canceling count
 spin_unlock
                          kthread_flush_work
                            spin_lock
                            Insert flush work // at the tail of the
			                         dwork which is at
						 the worker=E2=80=99s
						 dealyed_work_list
                            spin_unlock
                            wait_for_completion // Thread B stuck here as
			                           flush work will never
						   get executed

The canceling count could change in __kthread_cancel_work as the spinlock
get released and regained in between, let's check the count again before
we queue the delayed work to avoid the race.

Fixes: 37be45d49dec2 ("kthread: allow to cancel kthread work")
Tested-by: David Chao <davidchao@google.com>
Signed-off-by: Martin Liu <liumartin@google.com>
---
 kernel/kthread.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/kernel/kthread.c b/kernel/kthread.c
index fe3f2a40d61e..064eae335c1f 100644
--- a/kernel/kthread.c
+++ b/kernel/kthread.c
@@ -1181,6 +1181,19 @@ bool kthread_mod_delayed_work(struct kthread_worker =
*worker,
 		goto out;
=20
 	ret =3D __kthread_cancel_work(work, true, &flags);
+
+	/*
+	 * Canceling could run in parallel from kthread_cancel_delayed_work_sync
+	 * and change work's canceling count as the spinlock is released and rega=
in
+	 * in __kthread_cancel_work so we need to check the count again. Otherwis=
e,
+	 * we might incorrectly queue the dwork and further cause
+	 * cancel_delayed_work_sync thread waiting for flush dwork endlessly.
+	 */
+	if (work->canceling) {
+		ret =3D false;
+		goto out;
+	}
+
 fast_queue:
 	__kthread_queue_delayed_work(worker, dwork, delay);
 out:
--=20
2.31.1.607.g51e8a6a459-goog

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210513065458.941403-1-liumartin%40google.com.
