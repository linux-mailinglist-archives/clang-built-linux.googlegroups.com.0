Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBB2EWWOTAMGQE7POWBWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id CA33476FDDF
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Aug 2023 11:56:57 +0200 (CEST)
Received: by mail-qt1-x838.google.com with SMTP id d75a77b69052e-40c10c73650sf25200511cf.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Aug 2023 02:56:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1691143017; cv=pass;
        d=google.com; s=arc-20160816;
        b=QFBbwdYOc7vpUfNXhsOz8iYI6AbgCtXtWDRvSIMUMKa3m2MOtDg3FHorb8iApaoBcO
         D+XWwMNgPbGyxAsp8/XkuyrpgtFA91dahOFamIT3BTHW26hoR1/MhvunCjg98n8YTwFv
         /t2LTY6U1Fbhif/YlJGFNEG4ZPMEy8z2+F1P+P/uNestV4GNUVCPwvXjgfRFwedN/NTE
         pSCujlIrPsSDl/HV4z18MGLcRtJPtIHpXOPJABtx1KikTLNHTGXxNNaAhrV9RxLb+jer
         SarakexaTKy0U5ee7FnbErQMk2S+Hb9IlpVjnP1inY9OoZs1ByqvCKRbjv5x+h3WzsIO
         kyyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:in-reply-to:date:from:cc:to:subject:sender
         :dkim-signature;
        bh=Tj43oDj/ATR7VNwSVkGk8S7kUl5PBx7G5ZZIrJGjX+4=;
        fh=b0LDSu41bDnEgVxm0TKVksxYlAOZnu+1juOMaZDuxX8=;
        b=mo3HddYG2geIhocs6IEemt/dGbLks8riYOdCIVkGJbX7IP09fkm0nJlDJPxakrOmvT
         nWzm7TeVyDQvkKoddyGsII5LWfjkuTtgT/kbhZxrJ8W4TsFRe+O9efJ4fIOPeAjBHjtG
         yBEHLsH7tjlxL7ht2DZinbbmJ2wDxUIawR+M7HthktaBPXLV6oJKSr6SU3MQqokDco91
         s8QRceEkA6+U4NDOM/glF1sv8VMNtWdSdToGY4/XH8d5fG3iLg2sS21SwPkq7ASSwN4E
         JXzn1zJwxepMmhrnU7w/88+U79glF05HjnXR3NbMF+N/7hBLaH/DGA0Gxg16eZZENsOc
         JGbw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=l8m+2P7A;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1691143017; x=1691747817;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:mime-version:message-id
         :in-reply-to:date:from:cc:to:subject:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tj43oDj/ATR7VNwSVkGk8S7kUl5PBx7G5ZZIrJGjX+4=;
        b=B1NZp4mrHzk2knorjwGVSnNSjzhukrIiZLOojtTjIMcUyLhQrj+rfPZi5QYebx2Es2
         5VtfzkH9VwxEwqo/DK4F6sm3nLZEvWcGqE7mPMRSo5AdfpI9dNT8RoEP3SA47neTNGuR
         GUiJWhYsNzFN2p/s1aEvkzFv0eVgDUCD9WnTZIbTVkIsAxiKm5Y31Uiyo9sVe24bF/e/
         4uuyPRidomhs0BFvsuPteDOPnPbkHN89hah/PJNzy1iOs19Hdr2V84a7aVVv5uCwjj6M
         Za+r7zYrINLqYYFqSPDL84weEePyU+ceXzE2KoJar2OpMWAMR9puFX+jfmj16fNQNBhW
         IaCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691143017; x=1691747817;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :from:cc:to:subject:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Tj43oDj/ATR7VNwSVkGk8S7kUl5PBx7G5ZZIrJGjX+4=;
        b=QctUZTkduputZbrqGSS05ADckswRMQbg4LVJAjBMloFHnchVz5h27NzU2R17h+tA1X
         Nn/gsySsLwA1yIPfxKlhFEmx+BbbGgnJsD/X+d+w6gyboe0YKh3y3lLgptC0v/DKCvDx
         LbbzraBq7e2zsmQ+MsDjppR9m3gVeAuuEg7NioCv8WaDvOCxRscmJRLbFhUBCkrIAWON
         LO3C6DbbLVcRpO4aP1qloWtt6sbKfMFbV0GOfP5du9OBPsKYJ91zzlkK1lrtjfsFmUjB
         oj6Nl9Uus3R0005R/lNTBKSpWwcHooVlouixcsnAcSrhpdUSO+5fadm7bm+3MRJ8PlQS
         pPAw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOJu0YwLVIahcXlNiiu9xd3db+VivIHsweRZ86+12/6CPzUXSlT7FC8T
	dWRzinURPSYmFVp6izGkuL8=
X-Google-Smtp-Source: AGHT+IEt1acbMyH7bwTSmmV9QI7nsH4NryzdcOYVYImks/PDUP/+hX07nqhNgqTAUX+FyebObo3Uqg==
X-Received: by 2002:a05:622a:14cf:b0:40f:d98e:ccd2 with SMTP id u15-20020a05622a14cf00b0040fd98eccd2mr1769240qtx.38.1691143016718;
        Fri, 04 Aug 2023 02:56:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:622a:2c04:b0:3ff:302c:4437 with SMTP id
 kk4-20020a05622a2c0400b003ff302c4437ls5078993qtb.2.-pod-prod-01-us; Fri, 04
 Aug 2023 02:56:56 -0700 (PDT)
X-Received: by 2002:ac8:7dc8:0:b0:40f:da8b:b975 with SMTP id c8-20020ac87dc8000000b0040fda8bb975mr1505193qte.37.1691143016134;
        Fri, 04 Aug 2023 02:56:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1691143016; cv=none;
        d=google.com; s=arc-20160816;
        b=0astOXNx7VFnt+UurIQN5E0/lZh+82lCKZ8kkvEEwfq25tobb2xp86EPlPuNGZG3D/
         CKCjox46DdZakNTDQkV1L55IGRnDWo5EHE5eiWF7q1WhSBqjcLvdAN1maI2uj6wE1sJw
         Jj8AAaRAUPOhV+p7+7N+3eTe+0CLuGApe13cCrYsMPt32UIRkoch9lI8MxToLmpjCwLz
         EB6u5Li3TYNRiB2N1zwQ19gHaTmXgcGyKJmkaKuBc7pJ1aZtxjYqX/KpkW+nH8NVOpeI
         ql2CPXJ/WyrCsTxQ0p9P8XJyBB1MRpcQX7D4wPBCA/s0Jm6qsCwQ3L/zuk572ze5rpep
         S7PA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :from:cc:to:subject:dkim-signature;
        bh=uRB9WBVuqWELICj47xvdImas19QgbOJqDnI3T2WhVqU=;
        fh=b0LDSu41bDnEgVxm0TKVksxYlAOZnu+1juOMaZDuxX8=;
        b=bjcKXgLU76F+cVxmXgdTeEGRPiAXYP5+amKj+EPNYC2c6hR7QIZJ89HhgHjxqyrwdA
         rAdywwTh9oWr3F9RXuYWBuLL20KFQDaPGPpdmiDOyxfrzK+KPse9VcuxVtGb9PYcnVZr
         MTu+Njl1lXZG+DjA+93qaMCFGqcPVIpJoN7k4QktUlvkE6WVXxW9FKkRu9N+t5MtHC9y
         4o3/uybZiqaLA/Nsp5rrHmj0JHXnt97l3uwzCzdDB3FTeW0HrJa3Z6NKXFAVwOCpssgq
         r0p7WxAYvFFM7NKcHMC8kcF1AdkWy3qo/ojdywxYaOvlKQnIxJiqaQJ38fEdw0lU6iQo
         L4PQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=l8m+2P7A;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by gmr-mx.google.com with ESMTPS id gc3-20020a05622a59c300b0040fd9cedc86si335241qtb.5.2023.08.04.02.56.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Aug 2023 02:56:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id B3BE861F61;
	Fri,  4 Aug 2023 09:56:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C19F4C433C7;
	Fri,  4 Aug 2023 09:56:54 +0000 (UTC)
Subject: Patch "x86/kprobes: Move 'inline' to the beginning of the kprobe_is_ss() declaration" has been added to the 5.10-stable tree
To: bp@alien8.de,clang-built-linux@googlegroups.com,gregkh@linuxfoundation.org,gustavoars@kernel.org,hpa@zytor.com,hulkci@huawei.com,laijs@linux.alibaba.com,lihuafei1@huawei.com,mhiramat@kernel.org,mingo@kernel.org,mingo@redhat.com,namit@vmware.com,natechancellor@gmail.com,ndesaulniers@google.com,peterz@infradead.org,rostedt@goodmis.org,sashal@kernel.org,tglx@linutronix.de,weiyongjun1@huawei.com,x86@kernel.org,xukuohai@huawei.com
Cc: <stable-commits@vger.kernel.org>
From: <gregkh@linuxfoundation.org>
Date: Fri, 04 Aug 2023 11:56:41 +0200
In-Reply-To: <20230705064653.226811-8-lihuafei1@huawei.com>
Message-ID: <2023080441-playing-scanner-29a0@gregkh>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-stable: commit
X-Patchwork-Hint: ignore
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=l8m+2P7A;       spf=pass
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

    x86/kprobes: Move 'inline' to the beginning of the kprobe_is_ss() decla=
ration

to the 5.10-stable tree which can be found at:
    http://www.kernel.org/git/?p=3Dlinux/kernel/git/stable/stable-queue.git=
;a=3Dsummary

The filename of the patch is:
     x86-kprobes-move-inline-to-the-beginning-of-the-kprobe_is_ss-declarati=
on.patch
and it can be found in the queue-5.10 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From stable-owner@vger.kernel.org Wed Jul  5 08:47:51 2023
From: Li Huafei <lihuafei1@huawei.com>
Date: Wed, 5 Jul 2023 14:46:51 +0800
Subject: x86/kprobes: Move 'inline' to the beginning of the kprobe_is_ss() =
declaration
To: <stable@vger.kernel.org>
Cc: <gregkh@linuxfoundation.org>, <mhiramat@kernel.org>, <tglx@linutronix.d=
e>, <mingo@redhat.com>, <bp@alien8.de>, <x86@kernel.org>, <hpa@zytor.com>, =
<sashal@kernel.org>, <peterz@infradead.org>, <linux-kernel@vger.kernel.org>=
, <xukuohai@huawei.com>, <natechancellor@gmail.com>, <ndesaulniers@google.c=
om>, <rostedt@goodmis.org>, <weiyongjun1@huawei.com>, <gustavoars@kernel.or=
g>, <namit@vmware.com>, <laijs@linux.alibaba.com>, <clang-built-linux@googl=
egroups.com>, <lihuafei1@huawei.com>
Message-ID: <20230705064653.226811-8-lihuafei1@huawei.com>

From: Wei Yongjun <weiyongjun1@huawei.com>

[ Upstream commit 2304d14db6595bea5292bece06c4c625b12d8f89 ]

Address this GCC warning:

  arch/x86/kernel/kprobes/core.c:940:1:
   warning: 'inline' is not at beginning of declaration [-Wold-style-declar=
ation]
    940 | static int nokprobe_inline kprobe_is_ss(struct kprobe_ctlblk *kcb=
)
        | ^~~~~~

[ mingo: Tidied up the changelog. ]

Fixes: 6256e668b7af: ("x86/kprobes: Use int3 instead of debug trap for sing=
le-step")
Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
Signed-off-by: Ingo Molnar <mingo@kernel.org>
Acked-by: Masami Hiramatsu <mhiramat@kernel.org>
Link: https://lore.kernel.org/r/20210324144502.1154883-1-weiyongjun1@huawei=
.com
Signed-off-by: Li Huafei <lihuafei1@huawei.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 arch/x86/kernel/kprobes/core.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- a/arch/x86/kernel/kprobes/core.c
+++ b/arch/x86/kernel/kprobes/core.c
@@ -944,7 +944,7 @@ static int reenter_kprobe(struct kprobe
 }
 NOKPROBE_SYMBOL(reenter_kprobe);
=20
-static int nokprobe_inline kprobe_is_ss(struct kprobe_ctlblk *kcb)
+static nokprobe_inline int kprobe_is_ss(struct kprobe_ctlblk *kcb)
 {
 	return (kcb->kprobe_status =3D=3D KPROBE_HIT_SS ||
 		kcb->kprobe_status =3D=3D KPROBE_REENTER);


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
clang-built-linux/2023080441-playing-scanner-29a0%40gregkh.
