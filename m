Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBX4WWOTAMGQEQGA77XQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C07C76FDDC
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Aug 2023 11:56:50 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id 41be03b00d2f7-53f6e19f814sf1199260a12.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Aug 2023 02:56:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1691143008; cv=pass;
        d=google.com; s=arc-20160816;
        b=F8zYnRD5gj/k/QFtMwz4IkKfQtF00GxBY5E1ye1wKtTvgq3MzW6RF+HSMUqYIRgL8K
         nAUKihEbOEyuVWbg/SpDwNk9aek5U8P/QSsmmmx+WdLFwsESvBHWIGgFOU3pLxdAwpMK
         PztARIfdXVVw7ZfK/IhwFDJ2xGi7RigLZbwItzccJC21vGdg11oxngp0hlO0wvWPQ365
         2dAH+4KPB1e/D7N832urPn6MBEdPOKVbU+s9eh4WpShsBZZDCS4KMyGaLcBqxCSu4e7C
         e924uoNQo8qidIm9a5Xb0j4tkO1oeTjVMB2QzW+azQxDh6P9G7zqkkGwhrwhBwoDUxs4
         8CQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:in-reply-to:date:from:cc:to:subject:sender
         :dkim-signature;
        bh=rvNwkuBDiKxx0znDW03F0IDSW5gNZA8n9kpBogBgJyo=;
        fh=AwI/0LGNJr8Q9UzzdeumOX3Xj/rp1OkHXvjjmIkANLM=;
        b=dbHTROQ3gvJ1d0fBclclUPujCqZ7oAvma4a5nMT1XTcx+rzQnicICogRCc7+2NAnr7
         YyAhhR1E2VtPFTy5H3IlLZUS5+Kr4BU6kO6WML+E3k7e6jwJdkYFYSgxLhgato4CCja+
         OZnaK2LIy0vKjORZ0LCed0/26quGjke+QlWSlxNNDHb8alEpX0QM9caLByflZ8PLSg12
         twtv98qSgaYA44336y0eumpq3ZHVXDwARaq9SmJ6jma/v+4V3Vg17Zo6vhrmpSZNK55Q
         yns3wpuUMUGVyoOo5bMJgr5EDPqWvSVzLVxmZBrzs+pZU5GG7wTxdJoVXMIQ1h4+upeZ
         FA5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=vx84Qb9h;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1691143008; x=1691747808;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:mime-version:message-id
         :in-reply-to:date:from:cc:to:subject:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rvNwkuBDiKxx0znDW03F0IDSW5gNZA8n9kpBogBgJyo=;
        b=OWI7TbA5zrUobKRJASEd0xW+cFXRJu3XAiV2c7qR9wxjep545URMZ2qV0OzmQvVTNN
         5c92eEs51Q0OrNikOuXtz1cB4mN1HBd5uFb2bON+CwsoV+IGY8/aTKo1MmMediqSj2ze
         utwqyd7lJ113ics624BABoRDDpR+YJvqjFtqbraYNiX6Dd0h2LQW5g51Pzx0kFAYqwHw
         vXK858/NNsrf44QiKWe128o5ZdItNTHzRpncdLdIBph+UnrdRlQR81Awh2Nuwar65RE9
         6F/ZEy2/K6c2mGy7kg0775SfDAnwYFOksqV9TyrKRKdkJxoSvaCwBeVizKdNdnluYbc7
         2D6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691143008; x=1691747808;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :from:cc:to:subject:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rvNwkuBDiKxx0znDW03F0IDSW5gNZA8n9kpBogBgJyo=;
        b=KLGBlj5s9BwmBnlRa+reb3wSDiAWzQS+SxmfdS8esJqNpO5hxE2Khihm/jkfUelukO
         tw+ye1u0dRYNhcORn4HBQ3d7PwiepfNK4vmTMHjsorgoKD4Tm22XtiCwjPMbW2zssuAR
         VGGGX7xKuPGVemZRawHU9faPqBAy/6s7H2HvYE4sSz2gxNIBVbM9sLWs6U9eM5PSyBP5
         MvlpbHNtwZ8swLWHD5D6QrN58sjryZ7Femv71h6yQ10RAtyGhs0jj1YhHRrtiOtMI24h
         aM/cp97+i5whlbXUE/E5N/B6eXAKow32CmStNXcVFaHxRVAS0huRcJoKoijI8zpbB24X
         Hy2A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOJu0Yw8FNUi172L/mDYKcC1yWJiovHW3ZtpDWNXbS80Mm+vWPkbuYyX
	4RWZMRGV9m6bh3uF4CJjqTE=
X-Google-Smtp-Source: AGHT+IFbrwJAVfy+Kyw2PE/ZldsdOL7uNfBB7esY5PiVfMZvEXANyY9+A9ljeANXshUIjTnDpKbYAg==
X-Received: by 2002:a05:6a21:2704:b0:134:d4d3:f0a8 with SMTP id rm4-20020a056a21270400b00134d4d3f0a8mr926250pzb.3.1691143007960;
        Fri, 04 Aug 2023 02:56:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:17d6:0:b0:686:c079:96d9 with SMTP id 205-20020a6217d6000000b00686c07996d9ls5352388pfx.0.-pod-prod-05-us;
 Fri, 04 Aug 2023 02:56:46 -0700 (PDT)
X-Received: by 2002:a05:6a21:1f17:b0:132:a85f:b2e7 with SMTP id ry23-20020a056a211f1700b00132a85fb2e7mr938773pzb.53.1691143006358;
        Fri, 04 Aug 2023 02:56:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1691143006; cv=none;
        d=google.com; s=arc-20160816;
        b=wOGA9mlqSzEUDBaJHNJYhiN5+7oTCCWgboOAGJOX8+tamU7CpQ2aQhG3MYOfcTB4u7
         TvpweDCPqIYiGzNAZzEQWE3rzBw3cw5p5e5zb2Nweb3LY/OjAJcExKXqKk+WAuXxHv/f
         ZvPfIQcBYAOGT+V4uNAGluESQiJRAZ6R2BZOzpjUYmfOSj77FsmctJ2ELtAW9Js56QHm
         yo/vYyDJX/nmnR1Sfwquu1OMgyTMPVR+lwE0dZCE7TuVpC9AY/Wpxiil0Lx/WELwWjgm
         gJEVZVQv/R4rFy21iYgPSkPU5HVSTTFMdEOKwVJvz7We/DzSJrP6J1ybQO6A6MGGwsg8
         vgFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :from:cc:to:subject:dkim-signature;
        bh=VplCfGz44jzElOn9Me8eZogThEM0y04is3/CwnlRztk=;
        fh=AwI/0LGNJr8Q9UzzdeumOX3Xj/rp1OkHXvjjmIkANLM=;
        b=BmKEUDNmzwJy4Ubg3UYgd35NcXJ46FLkDnL4LmttxTC5tsoK8lpYLg6ZRaIXSHP7pi
         cJM33NppAjntFauYwqvqbjc/frGl1qKc2kDJ8BnzROqLTxUz3/CVe4XQXznqJIaAzs3v
         2eJs/2kGlwUMbrb6yMI6cMqO45WISM2e41owXIVTePvUn6YsEUKOBmPfVLbPRqM/jP2Q
         4OFRcXB4MNKFXVrEffKm8PUB5pIaeGHiOu4aEOM/NHCJfBzMmMTQuHCJS9C835a7c8e0
         Yc24z3z5JYLqvqz1J0wKcUlt5qfsKwV8OuKDwjiewvgg1urGuJmycGBbhau9kwQg+I8w
         gNIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=vx84Qb9h;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by gmr-mx.google.com with ESMTPS id ct9-20020a056a000f8900b00681597da9d7si111758pfb.0.2023.08.04.02.56.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Aug 2023 02:56:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id C588C61F83;
	Fri,  4 Aug 2023 09:56:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A13A5C433C8;
	Fri,  4 Aug 2023 09:56:44 +0000 (UTC)
Subject: Patch "x86/kprobes: Fix JNG/JNLE emulation" has been added to the 5.10-stable tree
To: bp@alien8.de,clang-built-linux@googlegroups.com,gregkh@linuxfoundation.org,gustavoars@kernel.org,hpa@zytor.com,laijs@linux.alibaba.com,lihuafei1@huawei.com,mhiramat@kernel.org,mingo@kernel.org,mingo@redhat.com,namit@vmware.com,natechancellor@gmail.com,ndesaulniers@google.com,peterz@infradead.org,rostedt@goodmis.org,sashal@kernel.org,tglx@linutronix.de,weiyongjun1@huawei.com,x86@kernel.org,xukuohai@huawei.com
Cc: <stable-commits@vger.kernel.org>
From: <gregkh@linuxfoundation.org>
Date: Fri, 04 Aug 2023 11:56:37 +0200
In-Reply-To: <20230705064653.226811-10-lihuafei1@huawei.com>
Message-ID: <2023080437-bonelike-disorder-86ed@gregkh>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-stable: commit
X-Patchwork-Hint: ignore
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=vx84Qb9h;       spf=pass
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

    x86/kprobes: Fix JNG/JNLE emulation

to the 5.10-stable tree which can be found at:
    http://www.kernel.org/git/?p=3Dlinux/kernel/git/stable/stable-queue.git=
;a=3Dsummary

The filename of the patch is:
     x86-kprobes-fix-jng-jnle-emulation.patch
and it can be found in the queue-5.10 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From stable-owner@vger.kernel.org Wed Jul  5 08:48:02 2023
From: Li Huafei <lihuafei1@huawei.com>
Date: Wed, 5 Jul 2023 14:46:53 +0800
Subject: x86/kprobes: Fix JNG/JNLE emulation
To: <stable@vger.kernel.org>
Cc: <gregkh@linuxfoundation.org>, <mhiramat@kernel.org>, <tglx@linutronix.d=
e>, <mingo@redhat.com>, <bp@alien8.de>, <x86@kernel.org>, <hpa@zytor.com>, =
<sashal@kernel.org>, <peterz@infradead.org>, <linux-kernel@vger.kernel.org>=
, <xukuohai@huawei.com>, <natechancellor@gmail.com>, <ndesaulniers@google.c=
om>, <rostedt@goodmis.org>, <weiyongjun1@huawei.com>, <gustavoars@kernel.or=
g>, <namit@vmware.com>, <laijs@linux.alibaba.com>, <clang-built-linux@googl=
egroups.com>, <lihuafei1@huawei.com>
Message-ID: <20230705064653.226811-10-lihuafei1@huawei.com>

From: Nadav Amit <namit@vmware.com>

[ Upstream commit 8924779df820c53875abaeb10c648e9cb75b46d4 ]

When kprobes emulates JNG/JNLE instructions on x86 it uses the wrong
condition. For JNG (opcode: 0F 8E), according to Intel SDM, the jump is
performed if (ZF =3D=3D 1 or SF !=3D OF). However the kernel emulation
currently uses 'and' instead of 'or'.

As a result, setting a kprobe on JNG/JNLE might cause the kernel to
behave incorrectly whenever the kprobe is hit.

Fix by changing the 'and' to 'or'.

Fixes: 6256e668b7af ("x86/kprobes: Use int3 instead of debug trap for singl=
e-step")
Signed-off-by: Nadav Amit <namit@vmware.com>
Signed-off-by: Ingo Molnar <mingo@kernel.org>
Cc: stable@vger.kernel.org
Link: https://lore.kernel.org/r/20220813225943.143767-1-namit@vmware.com
Signed-off-by: Li Huafei <lihuafei1@huawei.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 arch/x86/kernel/kprobes/core.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- a/arch/x86/kernel/kprobes/core.c
+++ b/arch/x86/kernel/kprobes/core.c
@@ -505,7 +505,7 @@ static void kprobe_emulate_jcc(struct kp
 		match =3D ((regs->flags & X86_EFLAGS_SF) >> X86_EFLAGS_SF_BIT) ^
 			((regs->flags & X86_EFLAGS_OF) >> X86_EFLAGS_OF_BIT);
 		if (p->ainsn.jcc.type >=3D 0xe)
-			match =3D match && (regs->flags & X86_EFLAGS_ZF);
+			match =3D match || (regs->flags & X86_EFLAGS_ZF);
 	}
 	__kprobe_emulate_jmp(p, regs, (match && !invert) || (!match && invert));
 }


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
clang-built-linux/2023080437-bonelike-disorder-86ed%40gregkh.
