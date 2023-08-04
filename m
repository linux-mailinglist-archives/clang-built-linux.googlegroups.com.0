Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBZMWWOTAMGQEAZBMIKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CC6876FDDE
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Aug 2023 11:56:55 +0200 (CEST)
Received: by mail-qt1-x840.google.com with SMTP id d75a77b69052e-40fda6544dcsf784411cf.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Aug 2023 02:56:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1691143014; cv=pass;
        d=google.com; s=arc-20160816;
        b=yQmlCbPCuLBkPsjYdKgkO0NJtAgqxxh0p+frpHCAeAoEYKNCjaNM2F04/9LwiovO/f
         Xxy8xYRGSKT2wpwKZNzbPrYUFJ2mczGNejTV5dEtgrLvoW4lej0YBtWuRq1kXTluR8AJ
         O5DudnevzoUfggrsIBS9hFqd+ezA7zNIXuVKRcgs30l3Hk5b9DwrGFp5YPjpfYHQ59Xw
         buIcemuZ5oEDQZ/aSV7BvujMAQbtZYyGkrrl3FpUgaPg8V8/uGtu9iXqI60ZYXFsF550
         Wc5Uh58GyGKo9dPCGYw5uGfcDeCO7+Rh3Z53SCIPUysCNR6ppa8nS6TqE8PyJgLRi5iy
         ar6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:in-reply-to:date:from:cc:to:subject:sender
         :dkim-signature;
        bh=2bJlh9R45TVwi13ej4S4z1NhRg/k5/idk6Jtr8K+JVs=;
        fh=M+RCfsu39+TOU/tatfWuYpVYu9gEJhXsVZVrt5KCSJ0=;
        b=P4DxmAm4VYvFCRe/9Z7AEz0tYRICSY6BaE72HOsWCSrSBo77QUKw0o4zP/rRcz3eRf
         wSCgyiRFDyBZBhL7atOpy/wV7QgiP8vbqVbA75kALGVhvMXsbhSF1zjee9f/dkHlnP+L
         udxA80n6t0j7Gm+ZTs4DHieLzdx+em3tIJsRpfc3r4+sudme7gWSI8zRbTtYxw0nGNZ8
         AU297J+zzGKbp5iwObX4dB2mPkLQHBrQhghjTHbSGJ+yi6eq9f9azUDx1boRGerxgSru
         OXiNZB2QNFMpHm593N/6ah+wH3G0zdCLHTV5ubKIiZW+ycdvqMwdkEzN8RdzGhMfXZa3
         myKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=DfETWgTT;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1691143014; x=1691747814;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:mime-version:message-id
         :in-reply-to:date:from:cc:to:subject:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2bJlh9R45TVwi13ej4S4z1NhRg/k5/idk6Jtr8K+JVs=;
        b=V2QQCGagjGg3cdtVsMFz3Sdgs1W5hlK+fY68rTXOtqfYMb0Yq47VFA5PvTZbCC6o7W
         kVi26In7LYpMNeIRpD9guMBFqxrQ+H0a5PsQ1ZIpslXMbk+iNjkk9T5pUY6xsImGUE+T
         K6zUh42CM8F/SjJ1ttvdsA3mcf61Kfg6zr7DtX68f42dI0GZEFYEgIY2q1nKrKDiwDId
         6IcG3+FXPgbfsc1YbGLLZb8nCheX03zfTqooNWn+68rxuEtHEoP6jcdZQkhi2vB1ABD2
         tg/cNYBrbTUYUg674xBsgqvNccVdRLJZB6iFKpFCaE4+U9/FgGEZIkIfsqjlXMumsJzl
         wFow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691143014; x=1691747814;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :from:cc:to:subject:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2bJlh9R45TVwi13ej4S4z1NhRg/k5/idk6Jtr8K+JVs=;
        b=GWNqUHAXt51yEgSN5WZvSpbIJpqtJ8/xjtwQEbHn75FuqFlmTU/tKBkPU4wdY1kh3r
         hd/nH4eQiVPfnXDofd7DilZVu9Pje1EcfH3FC09qC3gamNKHVZ8DJSc4wUiHwaOEP/4h
         NRTMM3gFyCS2gq5fwet9gIqwYp1yPM1ttZJXbEYVWDG3tuGY1SycTtXshCoqxoQ94fA1
         D4iZGOvI39dT5I84cbQzj6mUeW0jSOMhxL0bp+vnlZB1PSuYwlbADYqNAV9uU0Lb93Gg
         N4D7BnrAgdk/2I6wCghwr8cHVrNtxB3j7k2Z2JFSqty5FwG3RGpbbdKa+ivfavvxuQ5N
         XwPg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOJu0Yy+8dLbT6DO7KCmNoLx0pFTDhXTOYd1oVW+OStFUXZCMpVNugv+
	3bHL5JHSRZTxWM0/EwrWqvw=
X-Google-Smtp-Source: AGHT+IEhfdjgA8cg9e7vrQU+P4EbLsuqJLrVkSPh/oXH1Gv3N/y3HGYGS0ZbjPJ1rZMOD8ZOb/Qxvw==
X-Received: by 2002:ac8:7d4a:0:b0:403:b3ab:393e with SMTP id h10-20020ac87d4a000000b00403b3ab393emr199647qtb.18.1691143014047;
        Fri, 04 Aug 2023 02:56:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:8ec6:0:b0:635:a666:7535 with SMTP id y6-20020a0c8ec6000000b00635a6667535ls247578qvb.2.-pod-prod-00-us;
 Fri, 04 Aug 2023 02:56:53 -0700 (PDT)
X-Received: by 2002:a1f:384c:0:b0:486:3c28:68de with SMTP id f73-20020a1f384c000000b004863c2868demr408539vka.7.1691143013155;
        Fri, 04 Aug 2023 02:56:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1691143013; cv=none;
        d=google.com; s=arc-20160816;
        b=mi6xj4mPuZ6mxUUkzYN4md6Yi52gD3fE5ZIr999c3WXGjX+eQPsxWSlGcEvaqIU58m
         03zaInbhAvbFMct2bpdeDBeLDjuH508fHqZi9PN8elX6R5fg4oBW2o7WVCqVLejC4KhS
         85QfnY98m3Em1rNpBAb4A4MT5LiC9c+gMvfa/DZxPMFpqZ4JrwjUx4na0yRK+XHM4Iu6
         jEsMXGEL9KGki8/0Mgn0yojbw/szPGipncSGsyXKGcCZKOaA5JPOEBGW4opTg27mG6Jz
         dmoXlZZ6+yvy+PVVHJ7IbnFgUsr6vnXW8DgJ3pPK27IzIM/TPOdWcdFxGLy5/3jp6xsF
         BLbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :from:cc:to:subject:dkim-signature;
        bh=i1INfb5YbZsyeAs+9vuKX3tztyYqJRdXHZDfpOllxd4=;
        fh=M+RCfsu39+TOU/tatfWuYpVYu9gEJhXsVZVrt5KCSJ0=;
        b=lf822xAP7N/2LrWSNuZprnV8hqZhIp3pSIqeZhCXkdElTF6x3dZ32vFEEjlSD0pul9
         DgVkWCcY2r3x1QTVu64iKjOGb1tb1G+Ej6NX1DFeE81PYlatrCpHgwkjzBmZS+OaSJPg
         81s0aQiQt5j/6xs+e8fAEd2z/7roT5yhQtlhJmfxLdePI6MGfUWtTICGA6cJlIkI2/q4
         4aTed8TsEEInfxR1nVqB4LRye4RLDwrhSekAVQ4C27mOoyAAhs3KU5Oq741nfbNACyoS
         QpjmPMcLdo44XMBpUce/bSGX/hsDTRY3ldSrliaH2muaib/yDOjNsZt1wBxRoDb13UGo
         e8DQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=DfETWgTT;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by gmr-mx.google.com with ESMTPS id az25-20020a0561220d1900b00487167fae68si153168vkb.2.2023.08.04.02.56.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Aug 2023 02:56:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id B27CC61F74;
	Fri,  4 Aug 2023 09:56:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BEA94C433C7;
	Fri,  4 Aug 2023 09:56:51 +0000 (UTC)
Subject: Patch "x86/kprobes: Identify far indirect JMP correctly" has been added to the 5.10-stable tree
To: bp@alien8.de,clang-built-linux@googlegroups.com,gregkh@linuxfoundation.org,gustavoars@kernel.org,hpa@zytor.com,laijs@linux.alibaba.com,lihuafei1@huawei.com,mhiramat@kernel.org,mingo@redhat.com,namit@vmware.com,natechancellor@gmail.com,ndesaulniers@google.com,peterz@infradead.org,rostedt@goodmis.org,sashal@kernel.org,tglx@linutronix.de,weiyongjun1@huawei.com,x86@kernel.org,xukuohai@huawei.com
Cc: <stable-commits@vger.kernel.org>
From: <gregkh@linuxfoundation.org>
Date: Fri, 04 Aug 2023 11:56:40 +0200
In-Reply-To: <20230705064653.226811-5-lihuafei1@huawei.com>
Message-ID: <2023080439-manned-dislike-90ae@gregkh>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-stable: commit
X-Patchwork-Hint: ignore
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=DfETWgTT;       spf=pass
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

    x86/kprobes: Identify far indirect JMP correctly

to the 5.10-stable tree which can be found at:
    http://www.kernel.org/git/?p=3Dlinux/kernel/git/stable/stable-queue.git=
;a=3Dsummary

The filename of the patch is:
     x86-kprobes-identify-far-indirect-jmp-correctly.patch
and it can be found in the queue-5.10 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From stable-owner@vger.kernel.org Wed Jul  5 08:47:51 2023
From: Li Huafei <lihuafei1@huawei.com>
Date: Wed, 5 Jul 2023 14:46:48 +0800
Subject: x86/kprobes: Identify far indirect JMP correctly
To: <stable@vger.kernel.org>
Cc: <gregkh@linuxfoundation.org>, <mhiramat@kernel.org>, <tglx@linutronix.d=
e>, <mingo@redhat.com>, <bp@alien8.de>, <x86@kernel.org>, <hpa@zytor.com>, =
<sashal@kernel.org>, <peterz@infradead.org>, <linux-kernel@vger.kernel.org>=
, <xukuohai@huawei.com>, <natechancellor@gmail.com>, <ndesaulniers@google.c=
om>, <rostedt@goodmis.org>, <weiyongjun1@huawei.com>, <gustavoars@kernel.or=
g>, <namit@vmware.com>, <laijs@linux.alibaba.com>, <clang-built-linux@googl=
egroups.com>, <lihuafei1@huawei.com>
Message-ID: <20230705064653.226811-5-lihuafei1@huawei.com>

From: Masami Hiramatsu <mhiramat@kernel.org>

[ Upstream commit a194acd316f93f3435a64de3b37dca2b5a77b338 ]

Since Grp5 far indirect JMP is FF "mod 101 r/m", it should be
(modrm & 0x38) =3D=3D 0x28, and near indirect JMP is also 0x38 =3D=3D 0x20.
So we can mask modrm with 0x30 and check 0x20.
This is actually what the original code does, it also doesn't care
the last bit. So the result code is same.

Thus, I think this is just a cosmetic cleanup.

Signed-off-by: Masami Hiramatsu <mhiramat@kernel.org>
Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
Link: https://lkml.kernel.org/r/161469873475.49483.13257083019966335137.stg=
it@devnote2
Signed-off-by: Li Huafei <lihuafei1@huawei.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 arch/x86/kernel/kprobes/core.c |    3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

--- a/arch/x86/kernel/kprobes/core.c
+++ b/arch/x86/kernel/kprobes/core.c
@@ -478,8 +478,7 @@ static void set_resume_flags(struct kpro
 			p->ainsn.is_call =3D 1;
 			p->ainsn.is_abs_ip =3D 1;
 			break;
-		} else if (((opcode & 0x31) =3D=3D 0x20) ||
-			   ((opcode & 0x31) =3D=3D 0x21)) {
+		} else if ((opcode & 0x30) =3D=3D 0x20) {
 			/*
 			 * jmp near and far, absolute indirect
 			 * ip is correct.


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
clang-built-linux/2023080439-manned-dislike-90ae%40gregkh.
