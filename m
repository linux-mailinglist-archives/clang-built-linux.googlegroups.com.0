Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBWEWWOTAMGQEUAAG4IY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A8976FDDA
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Aug 2023 11:56:41 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id af79cd13be357-76ce6d007ccsf131611585a.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Aug 2023 02:56:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1691143000; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y8EnPY+bfHQtT099I4/26wGBMqdOKMg60TANxMzpS9ORQ9pxUn7cMXUUz4dO1XhaDl
         aGbJv+mOAfP36qLRRGJWWm02gnz2OitdWcR0YRy1LBXanh/3542F1uys0Ew3SUKnsRhF
         brl+1V+H3A6Yd5HU6vn4LOwUKU+9PVSNae8qVP23Cz85vWiDaYiCEvVKacmFjDSbVvSF
         PN3/PgZQ6x3Bl8omEg+BZN8MngP6tI/U1uamTV1IGdevjr2zcAU0LMoPf6DG4d2CL9RU
         D6sZxCjvIG37NzWbIqD89TuXH+5j00gOcJISIQCZsuvEqPbvw69iSBCPj0Y6uh8Ar0xg
         vhvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:in-reply-to:date:from:cc:to:subject:sender
         :dkim-signature;
        bh=yQ8sFpsNwmwxKkgJni0YPqAvyGX02PejhDcUmSKk9AI=;
        fh=M+RCfsu39+TOU/tatfWuYpVYu9gEJhXsVZVrt5KCSJ0=;
        b=f00LUyaj60PN60fmFCdvPUKFABAHGOFRdzjJk1AiQMoN4+hVFb/7+khfD3HBtLePjS
         tg6MH3tA4N/UVbrwTOlVCefCChaKI3n7a07skCZqagM4WXnyK1E2+j9GAuJ3C4nc4WNp
         SS9grD545rGy27SoXmQxavZ0EM4ZiCzjMn8ssAjeF4xG/dt1d3u9cM3tLF3Q59YS3ZUs
         BEd95bxpl1Z08WfiDymYJy+c1EgTZItwzbpWZ/XCO4FWMq4obQPrw4COJBHAuXSpYlY0
         1qrwO5+bmlIx58fNNLWvgt5Yw3Jockmfl4VVfKNJRY0MKMCWeyiPZhozo8eJCzgwYIH2
         n28A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=LM62HwGo;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1691143000; x=1691747800;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:mime-version:message-id
         :in-reply-to:date:from:cc:to:subject:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yQ8sFpsNwmwxKkgJni0YPqAvyGX02PejhDcUmSKk9AI=;
        b=hltQvcA2E8wk//VaJgxPqi/kjp7J4glxIQAVHm9Y1xIGGzD++ZlO107OJYO58I0ug4
         ZxoUyzTEVG5wUGkx7jlHrirRq+grosqqzcKx/oVwSDWOcoTjDXLYjAbfguh/QuQ+gp3h
         u4/+ZqbnPWCtara5mtd0h8FWhDq0YLWlIrJK3ILas5arY4x9qMCPnKOs9Q0nD2Icj5UG
         xQmH6vBPj8DpdyvIUrrPZlljJNWbYqIg/Dl7663ofITmyF4hzLUb+4WPBL0hVl0uvA5B
         D9ITawbnycN6u8CkG2oW0UmnSVP4scORZvb2tT9Twj/r+A9RrorNNiGOjQW+Hz2lGr+o
         iiVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691143000; x=1691747800;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :from:cc:to:subject:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yQ8sFpsNwmwxKkgJni0YPqAvyGX02PejhDcUmSKk9AI=;
        b=lLv1H9XL3bGTwdj8m9CFjDfAKMx/t9huPAqoUiLBdHJM8Ic2Os854hWxMBxA4oSygl
         7PNDoadCM/IACNsyrEsXYA8XDUt/c4+fRMAC86F+ZUnME7bgyqLAFtE4gTsyeKcECyaC
         Hd0ep3stEuNa5eJZh6P6LrYocmt+3toa03JCxnbYpv3/92eex/dCZyIuh31nFQJWjzra
         kY+tX7Dabo2ZxWgGiyXLD/WFl2awmU+7l6L02odW63dC0ZSjXe6Q6zT155wp1Rwe3m9H
         R//q9JDuz6EwIceNnvrRvKHC303McNSMjQUD/HyUtOX46fe02USVeeSKhCRoxfLD9UGu
         H4ag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOJu0YzK+N6i54Ppa16c4I+SObzwWJXDmZWCCgNjgWC4pNu97asAxTAI
	/JYLCc2AQ7X+A6EZDJO2a9A=
X-Google-Smtp-Source: AGHT+IFbh2Qje8kVFa3Frprj5QeJTUk3uepGnYIf/VKQISCvFLu3Bo7RFwI7JBGAwVbzFj8PYzOdiQ==
X-Received: by 2002:a05:6214:451a:b0:63c:d495:47cb with SMTP id oo26-20020a056214451a00b0063cd49547cbmr1159778qvb.22.1691143000513;
        Fri, 04 Aug 2023 02:56:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:e2d3:0:b0:63d:1f5c:79f5 with SMTP id t19-20020a0ce2d3000000b0063d1f5c79f5ls8685192qvl.2.-pod-prod-03-us;
 Fri, 04 Aug 2023 02:56:39 -0700 (PDT)
X-Received: by 2002:a1f:c18e:0:b0:487:192c:ebbe with SMTP id r136-20020a1fc18e000000b00487192cebbemr323610vkf.10.1691142999522;
        Fri, 04 Aug 2023 02:56:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1691142999; cv=none;
        d=google.com; s=arc-20160816;
        b=NYHyig7j8E5G1ogz4FRJc7yXWjT+vTt5PtaDrEHQS+X6BOtuBGfeEjJWSzkqopeM2v
         T3xJUvPralQOCjEAMmQvdgmyaIidp9uBqznB0bpNeIp/FSZAQDdKLtqybsMyh4/6MhTq
         nkccbvw80VBrWC/TJncBU6s/MSNLLBcrQVDxPSPhNaAOk4UQy1mK7nGqPanxYLqSUbUd
         HEMGUDc5BfrOB091wKYqRzARWzvw7cZfTuYQtKRhrk/jOyPSK0XUZogD21FWEuWHKdIq
         Z3Zuf71DKYfRcFAakGOBnxwW3K6aXctYVcs4t4PxHfsZwQ9vAFAy8fX7eS6OrWoWtD58
         KAdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :from:cc:to:subject:dkim-signature;
        bh=1+muAAO4xervR4lFl9f5uQs+L8gdqUCIsZqtYUs1TbM=;
        fh=M+RCfsu39+TOU/tatfWuYpVYu9gEJhXsVZVrt5KCSJ0=;
        b=hJWikyLPKu6mGtW4UZy+lBDpC9nfv7nkc0BD7WtYEmX0JFMXO0OgOStKSx6CjV9f6P
         B7vMoltX0Knae+LMs78FBTLj9OLafG2YZpNKNcVWepHm++S+Q0xuso8vYQp5C4wVSCCM
         ODdVOnA0PSzk2YpLbsCfBzYALJ96oHSJoKe3f4IHQNz01sZvTsW2WXS/3/IPk14DFplf
         3i/QvG0xRfxRP0e/i1PeTdyWPAjdL0M+S78Xcm2c1nvnqegCaXzOdGfB34hKqFuJnLQs
         g/zbO8+3R1kgB2SDq7CGxshz+D/k5DgqC5IWaB+uKCeZacFq74JgvwEJivsdU8bO1KdQ
         EPeg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=LM62HwGo;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by gmr-mx.google.com with ESMTPS id n10-20020a1fbd0a000000b00485e5a835adsi318669vkf.4.2023.08.04.02.56.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Aug 2023 02:56:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id D427E61F74;
	Fri,  4 Aug 2023 09:56:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA77AC433CA;
	Fri,  4 Aug 2023 09:56:37 +0000 (UTC)
Subject: Patch "kprobes/x86: Fix fall-through warnings for Clang" has been added to the 5.10-stable tree
To: bp@alien8.de,clang-built-linux@googlegroups.com,gregkh@linuxfoundation.org,gustavoars@kernel.org,hpa@zytor.com,laijs@linux.alibaba.com,lihuafei1@huawei.com,mhiramat@kernel.org,mingo@redhat.com,namit@vmware.com,natechancellor@gmail.com,ndesaulniers@google.com,peterz@infradead.org,rostedt@goodmis.org,sashal@kernel.org,tglx@linutronix.de,weiyongjun1@huawei.com,x86@kernel.org,xukuohai@huawei.com
Cc: <stable-commits@vger.kernel.org>
From: <gregkh@linuxfoundation.org>
Date: Fri, 04 Aug 2023 11:56:35 +0200
In-Reply-To: <20230705064653.226811-2-lihuafei1@huawei.com>
Message-ID: <2023080434-varying-occupant-8977@gregkh>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-stable: commit
X-Patchwork-Hint: ignore
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=LM62HwGo;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217
 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
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

    kprobes/x86: Fix fall-through warnings for Clang

to the 5.10-stable tree which can be found at:
    http://www.kernel.org/git/?p=3Dlinux/kernel/git/stable/stable-queue.git=
;a=3Dsummary

The filename of the patch is:
     kprobes-x86-fix-fall-through-warnings-for-clang.patch
and it can be found in the queue-5.10 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From stable-owner@vger.kernel.org Wed Jul  5 08:47:50 2023
From: Li Huafei <lihuafei1@huawei.com>
Date: Wed, 5 Jul 2023 14:46:45 +0800
Subject: kprobes/x86: Fix fall-through warnings for Clang
To: <stable@vger.kernel.org>
Cc: <gregkh@linuxfoundation.org>, <mhiramat@kernel.org>, <tglx@linutronix.d=
e>, <mingo@redhat.com>, <bp@alien8.de>, <x86@kernel.org>, <hpa@zytor.com>, =
<sashal@kernel.org>, <peterz@infradead.org>, <linux-kernel@vger.kernel.org>=
, <xukuohai@huawei.com>, <natechancellor@gmail.com>, <ndesaulniers@google.c=
om>, <rostedt@goodmis.org>, <weiyongjun1@huawei.com>, <gustavoars@kernel.or=
g>, <namit@vmware.com>, <laijs@linux.alibaba.com>, <clang-built-linux@googl=
egroups.com>, <lihuafei1@huawei.com>
Message-ID: <20230705064653.226811-2-lihuafei1@huawei.com>

From: "Gustavo A. R. Silva" <gustavoars@kernel.org>

[ Upstream commit e689b300c99ca2dd80d3f662e19499bba27cda09 ]

In preparation to enable -Wimplicit-fallthrough for Clang, fix a warning
by explicitly adding a break statement instead of just letting the code
fall through to the next case.

Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
Link: https://github.com/KSPP/linux/issues/115
Signed-off-by: Li Huafei <lihuafei1@huawei.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 arch/x86/kernel/kprobes/core.c |    1 +
 1 file changed, 1 insertion(+)

--- a/arch/x86/kernel/kprobes/core.c
+++ b/arch/x86/kernel/kprobes/core.c
@@ -880,6 +880,7 @@ static void resume_execution(struct kpro
 			p->ainsn.boostable =3D true;
 			goto no_change;
 		}
+		break;
 	default:
 		break;
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
clang-built-linux/2023080434-varying-occupant-8977%40gregkh.
