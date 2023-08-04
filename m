Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBB3UWWOTAMGQEYFJKFYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id E6A7E76FDE2
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Aug 2023 11:57:03 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id d75a77b69052e-40fe2ac4356sf999101cf.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Aug 2023 02:57:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1691143023; cv=pass;
        d=google.com; s=arc-20160816;
        b=umpiqVXa7zZMsQ0vXzP1FTLHeW5P8nzViJbfE4wAhhGSt8jtpg6CpXf2E4MfwKTu7c
         LccSduKdqzrLViPPO+dqSOEUpHN5wy1oWyY+wTOMzezietFz96Qt7vIo4Ih4C751n3SZ
         bhqg30jB3JQqdAQRtElLlJw53U6B3Vj3VWc8zSnpnn2/oeIHIQenuktRNBeOfvo3fi6H
         +M6hzh+p8jgVoGAZM2tWH4ibBUnxADwf9ttLtfoJhKrnQ61FDZAnsDZx4dMbAal+sSUG
         CPNG4jX3Amd1Bvx90K35CSJeWsiyWkiKkKup2ezVFHT1wrvxjMbPsk1SmyRG+h6amcJt
         RP/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:in-reply-to:date:from:cc:to:subject:sender
         :dkim-signature;
        bh=3BFhocTJZGpkk/eI5SO2pmKKA+1wqix4EZxmc8aTMVo=;
        fh=CrTTH8lxvHdtSH/vJ4pGCgZaX2vh9cRgVaiZ1xqsSXg=;
        b=NZZW+4sF/zMKpK8CZD4rtUrLNgW8pyrP+v5Sl4D+vfUVhj1SjoCUH2eNa9+7fC8LFI
         6CvvM9GO5bF9ntzuU/SnmDSsF9I9Jd2QCULA48e6qG34+3r2ULfbYTO9OvMdOthTS4oA
         Mio5ti2GS/5MNUFsUe+OaUB4vVfu61vLvRk39WAUMflN74Fi488x4jj+PIpYooc9Lkg7
         a3Dh0s1vjU6HOwZ0RcRdwzBl9aheCAaCYwsAuSJgxTbX4mjyP4R8f+d65pl55ShVSnLV
         KNpvE7h9VcWbMEzlUX/mPOsfvehnleGrSw300bUQ4ZEQpSMeU07UWw9dyul70khyHHo9
         xVlg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=iLxj3iHY;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1691143023; x=1691747823;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:mime-version:message-id
         :in-reply-to:date:from:cc:to:subject:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3BFhocTJZGpkk/eI5SO2pmKKA+1wqix4EZxmc8aTMVo=;
        b=mqDd5bq1fQHobEKT41UyXGD3oOzK/XZFzKwmDiphwId/TIEuE04MDDoxj/ZqtFHo3e
         QAdth0vGGNIFH5WoMO57JAyL2kfkpUXrAaZEwRouuoBiErt/BCAhuFfiIbaKqVVX/Qdl
         TkIR6SJyoiafcVrjZyob8mn5WW52ZwPn77VVPZ8BXeDt7EWk0XBqPQAqJVUgAK/qq6jH
         Ed6NVM/O12PB8ooIr58KPDwjlambOkYRTyTLXQSjEQpEExOwrR/jDjETEcvPJNbA58nx
         2S+4JHB6roIEErzwbfuPSFnDSRuK6zCwZcRf9bK0GliPoBYvz6IaoXzrfJSb7U1TCPof
         D4Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691143023; x=1691747823;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :from:cc:to:subject:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3BFhocTJZGpkk/eI5SO2pmKKA+1wqix4EZxmc8aTMVo=;
        b=ALzmyvjnNws6SPJTMCgIY+lqn+1x6cojFPO2OU/b3pC0DmdTGl4mju3EqV3m4JzAdA
         hbxESzeQwa20sTP6jfM68E5xiV+UYQFAqkOFDaJbOy4JoS3qGLoOG8ul8CppnrTk538h
         h4cDyWxh9WQ+frRZMX/86iPCwPTMPTFn3HNCYkv/f2ctemOCTFFfgu7peXGknP+oXAxW
         6mC1zMLMfb8nLbgN9XaT9Kt0ywe9I9TArV5k0Sl8/gwJ3wzDIqESwgUon0RgVd+ROiZT
         8yCsghexqFr4+N0u4qenUPp+BK4imMrJrCIg5TAfMDbQdYCxIuc+wdVZ2L1bGq+lvBGb
         oJBA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOJu0YzoxhAdPyDwg7rpLJODsEMC/zNKDk4tom7qHFmjpzyQXTmHB0cG
	tljR/Yb6Ak6BG7ZP0n3T4eI=
X-Google-Smtp-Source: AGHT+IGon1jJXlm8KtmRYoPQ3ohlJazLCdnFvlMyFLlWE3PkqX/n4JOa9jlzU2VI9KLV8XLc1wjuhw==
X-Received: by 2002:ac8:574b:0:b0:403:96e3:4745 with SMTP id 11-20020ac8574b000000b0040396e34745mr201630qtx.20.1691143022693;
        Fri, 04 Aug 2023 02:57:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6902:102f:b0:c4e:39f4:a2a2 with SMTP id
 x15-20020a056902102f00b00c4e39f4a2a2ls2012594ybt.1.-pod-prod-05-us; Fri, 04
 Aug 2023 02:57:02 -0700 (PDT)
X-Received: by 2002:a81:7383:0:b0:570:126:feaf with SMTP id o125-20020a817383000000b005700126feafmr1119855ywc.19.1691143021833;
        Fri, 04 Aug 2023 02:57:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1691143021; cv=none;
        d=google.com; s=arc-20160816;
        b=idoXKcMpcl2R23Y+MhBFPRMpyK/0R2F26L6XrSN/ud38/Fw8SfpdD0Pq/y6fXMyRd7
         p5f3v2ILnIreHk1J3IUmOZrrkEJVnW9SDAtSvjIxU0qTQ1Diq1iY6cv0HM6a3vSHzsxt
         qBETb4vTeEtDVOTKyPwVZ797amDhFLAaqOa3NXcr2LjokPGSJfqoJNMlCYHyFQn5dmgg
         dMo1XvYvIEoD1L12Pr2rZr2iQzWDgb8Bspn0SpDVV0mkyPe3TG8As76GzbKeDFeinlji
         G6UuG5nT6F7EeBSqWFfA5TC1bpogSh1CgMcDb3u1XRxkAmvF8SumDWDlYJztmboV/52x
         13fQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :from:cc:to:subject:dkim-signature;
        bh=pOS7/Q2kayrMwdDJpMNcZHn8wCiGEp7c7Elv09vsRok=;
        fh=CrTTH8lxvHdtSH/vJ4pGCgZaX2vh9cRgVaiZ1xqsSXg=;
        b=gaZ6gkKKPF5/4BuLQTC7s9n60Fl/Kiy4KQYzouUMjvz4JbisV5m0hkjnORlFphI6I5
         6sebu5kftWV+HxCJ2tBLmRhjR6pQAtsN4q81Sda/1BOZTZD9w7tPk2XTaA+FflZcmHCX
         JYsn1F8RuQXOHd71WHdGaZGXtvIY2vFaXrZBIodrBBztGiOwcx3gMt6A+Z9PhGyZ91+S
         TwfF0gbZUTJ2S5ct32u5J6grbwHyEJGXCMUQxvK6h7Ag4oDMci9SD4XIIPj5QKzfOyl2
         NMpKWeMEPbAgdShxbh7Yf5OX5zV8VnuquB9wcj/pyT13iIhZUrKFf5Ic43JbNWgR4c9T
         xjFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=iLxj3iHY;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by gmr-mx.google.com with ESMTPS id fl16-20020a05690c339000b00586a5c739fesi191996ywb.4.2023.08.04.02.57.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Aug 2023 02:57:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 7352B61F85;
	Fri,  4 Aug 2023 09:57:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 799F7C433C7;
	Fri,  4 Aug 2023 09:57:00 +0000 (UTC)
Subject: Patch "x86/kprobes: Update kcb status flag after singlestepping" has been added to the 5.10-stable tree
To: bp@alien8.de,clang-built-linux@googlegroups.com,deso@posteo.net,gregkh@linuxfoundation.org,gustavoars@kernel.org,hpa@zytor.com,laijs@linux.alibaba.com,lihuafei1@huawei.com,mhiramat@kernel.org,mingo@kernel.org,mingo@redhat.com,namit@vmware.com,natechancellor@gmail.com,ndesaulniers@google.com,peterz@infradead.org,rostedt@goodmis.org,sashal@kernel.org,tglx@linutronix.de,weiyongjun1@huawei.com,x86@kernel.org,xukuohai@huawei.com
Cc: <stable-commits@vger.kernel.org>
From: <gregkh@linuxfoundation.org>
Date: Fri, 04 Aug 2023 11:56:44 +0200
In-Reply-To: <20230705064653.226811-9-lihuafei1@huawei.com>
Message-ID: <2023080443-limelight-evergreen-b12d@gregkh>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-stable: commit
X-Patchwork-Hint: ignore
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=iLxj3iHY;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates
 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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


This is a note to let you know that I've just added the patch titled

    x86/kprobes: Update kcb status flag after singlestepping

to the 5.10-stable tree which can be found at:
    http://www.kernel.org/git/?p=3Dlinux/kernel/git/stable/stable-queue.git=
;a=3Dsummary

The filename of the patch is:
     x86-kprobes-update-kcb-status-flag-after-singlestepping.patch
and it can be found in the queue-5.10 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From stable-owner@vger.kernel.org Wed Jul  5 08:48:04 2023
From: Li Huafei <lihuafei1@huawei.com>
Date: Wed, 5 Jul 2023 14:46:52 +0800
Subject: x86/kprobes: Update kcb status flag after singlestepping
To: <stable@vger.kernel.org>
Cc: <gregkh@linuxfoundation.org>, <mhiramat@kernel.org>, <tglx@linutronix.d=
e>, <mingo@redhat.com>, <bp@alien8.de>, <x86@kernel.org>, <hpa@zytor.com>, =
<sashal@kernel.org>, <peterz@infradead.org>, <linux-kernel@vger.kernel.org>=
, <xukuohai@huawei.com>, <natechancellor@gmail.com>, <ndesaulniers@google.c=
om>, <rostedt@goodmis.org>, <weiyongjun1@huawei.com>, <gustavoars@kernel.or=
g>, <namit@vmware.com>, <laijs@linux.alibaba.com>, <clang-built-linux@googl=
egroups.com>, <lihuafei1@huawei.com>
Message-ID: <20230705064653.226811-9-lihuafei1@huawei.com>

From: "Masami Hiramatsu (Google)" <mhiramat@kernel.org>

[ Upstream commit dec8784c9088b131a1523f582c2194cfc8107dc0 ]

Fix kprobes to update kcb (kprobes control block) status flag to
KPROBE_HIT_SSDONE even if the kp->post_handler is not set.

This bug may cause a kernel panic if another INT3 user runs right
after kprobes because kprobe_int3_handler() misunderstands the
INT3 is kprobe's single stepping INT3.

Fixes: 6256e668b7af ("x86/kprobes: Use int3 instead of debug trap for singl=
e-step")
Reported-by: Daniel M=C3=BCller <deso@posteo.net>
Signed-off-by: Masami Hiramatsu (Google) <mhiramat@kernel.org>
Signed-off-by: Ingo Molnar <mingo@kernel.org>
Tested-by: Daniel M=C3=BCller <deso@posteo.net>
Cc: stable@vger.kernel.org
Link: https://lore.kernel.org/all/20220727210136.jjgc3lpqeq42yr3m@muellerd-=
fedora-PC2BDTX9
Link: https://lore.kernel.org/r/165942025658.342061.12452378391879093249.st=
git@devnote2
Signed-off-by: Li Huafei <lihuafei1@huawei.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 arch/x86/kernel/kprobes/core.c |   18 +++++++++++-------
 1 file changed, 11 insertions(+), 7 deletions(-)

--- a/arch/x86/kernel/kprobes/core.c
+++ b/arch/x86/kernel/kprobes/core.c
@@ -826,16 +826,20 @@ NOKPROBE_SYMBOL(arch_prepare_kretprobe);
 static void kprobe_post_process(struct kprobe *cur, struct pt_regs *regs,
 			       struct kprobe_ctlblk *kcb)
 {
-	if ((kcb->kprobe_status !=3D KPROBE_REENTER) && cur->post_handler) {
-		kcb->kprobe_status =3D KPROBE_HIT_SSDONE;
-		cur->post_handler(cur, regs, 0);
-	}
-
 	/* Restore back the original saved kprobes variables and continue. */
-	if (kcb->kprobe_status =3D=3D KPROBE_REENTER)
+	if (kcb->kprobe_status =3D=3D KPROBE_REENTER) {
+		/* This will restore both kcb and current_kprobe */
 		restore_previous_kprobe(kcb);
-	else
+	} else {
+		/*
+		 * Always update the kcb status because
+		 * reset_curent_kprobe() doesn't update kcb.
+		 */
+		kcb->kprobe_status =3D KPROBE_HIT_SSDONE;
+		if (cur->post_handler)
+			cur->post_handler(cur, regs, 0);
 		reset_current_kprobe();
+	}
 }
 NOKPROBE_SYMBOL(kprobe_post_process);
=20


Patches currently in stable-queue which might be from stable-owner@vger.ker=
nel.org are

queue-5.10/x86-kprobes-update-kcb-status-flag-after-singlestepping.patch
queue-5.10/x86-kprobes-fix-to-identify-indirect-jmp-and-others-using-range-=
case.patch
queue-5.10/x86-kprobes-fix-jng-jnle-emulation.patch
queue-5.10/x86-kprobes-retrieve-correct-opcode-for-group-instruction.patch
queue-5.10/x86-kprobes-use-int3-instead-of-debug-trap-for-single-step.patch
queue-5.10/x86-kprobes-do-not-decode-opcode-in-resume_execution.patch
queue-5.10/x86-kprobes-identify-far-indirect-jmp-correctly.patch
queue-5.10/kprobes-x86-fix-fall-through-warnings-for-clang.patch
queue-5.10/x86-kprobes-move-inline-to-the-beginning-of-the-kprobe_is_ss-dec=
laration.patch

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/2023080443-limelight-evergreen-b12d%40gregkh.
