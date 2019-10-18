Return-Path: <clang-built-linux+bncBAABB5MBU7WQKGQE5Z4JUEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id B7EE9DC654
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 15:41:09 +0200 (CEST)
Received: by mail-wm1-x337.google.com with SMTP id 190sf2769677wme.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 06:41:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571406069; cv=pass;
        d=google.com; s=arc-20160816;
        b=fx1iLOEbDPa5VJMmlLLp/A7ca/4rhrS3tLYe/cX4PlKEEmhhIdXZxELzpolSq6j7uh
         p9VEjMYJQ7cHVJi4Au7m3XN/COtALxQWCLATOTB9IF+jv6LWF9183xOZlEVyhJYc4Jyr
         6ZXNtvp7b8sIT9sLMfkeO7F3OuJNdNh2ziIQXwIIoQ2f0x4Mp9GaBCWcntJiAZsObxPV
         UJa4PHKj95Yv1IoZo6S+913amCbH8wvYFudGNVGA1PJBxp9Za687oxghxsGj4q+LfeSC
         NI/6AEq460V+/wi79dcG/+mhDPil5rxBiMGOVTyfte4BArAUfYHkDL7X5oLY4ukfn4Zn
         P5YQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=jkwRRAeaf1vUiKS1V9FLxpu7/Q23t2bgwJl/eZCMlEo=;
        b=Y3gR2rx8IBWNqFlLoFvClohrrYJC+k2PedLeC8NKISn5q5MbtH+Nd1WxlAgxbqr7qV
         nDGwRfHYgSOMZMlzwFjSx082xOD0owSJ657MIuHD797SP8TpjN1w5nqCGWHhGXvJH0og
         h5qBYOy2RjQsN36v0HgcnVHWKdxgfIaMAQT2caP+TnuvWc5oBlexU1ol7ViyMoS/1Li/
         LKdY7N8hv5lmHrNI7MUUDiv3OVZ+VW03BExTZoRs90eFOpHGH3kDrUZqcakBQiHQzbFD
         pb8G6sWZ5tFGZqey7xN5WBsrPBrme8CD7tw4OoOazECbkiiKxunhhvp1zX3PqFoz2/cR
         maUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@shipmail.org header.s=mail header.b=FpmV4qqT;
       spf=pass (google.com: domain of thomas_os@shipmail.org designates 213.80.101.71 as permitted sender) smtp.mailfrom=thomas_os@shipmail.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jkwRRAeaf1vUiKS1V9FLxpu7/Q23t2bgwJl/eZCMlEo=;
        b=Aav7lWqLB/UjMb5JLbHBUNgpHf8tGD84HTwQHk8SdrOwRLEoaslHMupvX1iFm7PKg/
         XWHuyRIcjZA2NaC38kFOfi4n9KCzI3oKYuntK/mBO4YORc3VppSrS9mEMgBRpPBmu8Fb
         QZevCKFsID1Rt4YJpwRGiy/8N6E1HV7LhISovqeMN9zQjNu83Veb5pwYWlMBn7+t8sdC
         TM6n+j41r4AlxNMaFG7jopm3QAHkLsNwvO+thPZ8rdew3qoMoZN8N7VSAvgzg+fzit0i
         LOfdoy6KoxUF+GEe/pjXtb6L0v4y/zOyZGjhxH7ZTkou/nQBxcaJYKkVppLX8D6bj6m9
         iK0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jkwRRAeaf1vUiKS1V9FLxpu7/Q23t2bgwJl/eZCMlEo=;
        b=DhUiDmYEBuSk/6LUIEplRB+Ux58EZ+yMuwGC+wpg6f/pU6MLDwJMCbqe2qvWWojZn5
         nqvqKRfRBWQnIq6Y8vLFhNb7N7TELXyqg1w1kpqXNbZpSRDlv/g80jSNOuOxmJJBpnw8
         eVQaRQZXXsk/2pJvRrPWviS0pCXJmdUxE2/r2ov3JPK8RHlf+vleorIsLvW08kFzB80p
         x99bJ3T8xpPnGtuu2lJdzO3FPngyPTH9Dxjq39srzdOxSuahZB8M7Mr9BUu/Yzmm4Pa7
         NOFtPH9Nf0xqf8mlqiudrEl/OMEMMxTvGyBg/idPD/z8bQpv556HnV0HRm+ti+YoWKjc
         0BaQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWyygvrYGu46T4PR+hSROmby3IfmfYrufSkxu9pAsiP1UArDs6X
	gAY72OHT2r5phqIG8O1DBCI=
X-Google-Smtp-Source: APXvYqzgYQiweRWWnR+mCKAWRUppSuhiL/AZO5taDJsdCBoXZfscgI70eS37+dL5M55MvAJoRa4NsQ==
X-Received: by 2002:a5d:6447:: with SMTP id d7mr118425wrw.247.1571406069373;
        Fri, 18 Oct 2019 06:41:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:690e:: with SMTP id t14ls2726387wru.2.gmail; Fri, 18 Oct
 2019 06:41:08 -0700 (PDT)
X-Received: by 2002:adf:fa47:: with SMTP id y7mr7978528wrr.93.1571406068920;
        Fri, 18 Oct 2019 06:41:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571406068; cv=none;
        d=google.com; s=arc-20160816;
        b=gwLt6UJBzFsg+54RNlyqgeXQHkeEHJhFvWZAb8VE7iKXdXni/OBAlDz2vIKjov82F3
         X8BvDBg8f8KJUW0Wa4zztPTA6J3xyAEQxeYQ8M5aLM/NghJmMOnhghfPO3d/iYwAQlNH
         +fhzBhsP/3eGE2tTFWnmvi4mvst2yAr1a4JNL1V+/BBpl7dvoEl3mtIZrv0jO32uGUg4
         FqjF+1q+Rfqzy0riSotilJWjEo1U4/LMAOJPhk2TAA1Z0jC5BzjiTnSVdEQYeOSvC9Cw
         m0LukX9QEt5cjOimyC4ITr62gBEJzg2OTbYqHKJfMfWEoEk+mxlfexF6wn+8QCQDdgRO
         ol+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=qoAO7vdPdecF7heUaS/okkHAu8MQOoWJS3S4ECaRGu8=;
        b=pF+ICbrHRtvW6BW1BmlOSH8IEDdnqa9B5Ce+p2mEI5m3YfmhtpOrT5LRdtHtxoRQIj
         0ecxgRnPLDDVprQWj+9NmowiyNBRFW5Xoq/OY3jtxWN/PnoG+N+1/TS/AtIYOghE4Et8
         Q+u18hsi6RyqBT3eSCOq7rOz5eaYUtnqF2HVqYnACzRbxiDeIEU7bh3++CJ9eeujh1DL
         ygQRyLufmdZFFn8rPoTK51tEIdcLpFff2aG3v/18tYH5ay0KIdGI/l3vPZXweRNYtAYb
         tHkAgK3ItAjyHWy5/jvyt80iaVv+0pUi28syyqeSDKqwvm1LuMKQxZ4ZBUo/2dQAuPyp
         3CNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@shipmail.org header.s=mail header.b=FpmV4qqT;
       spf=pass (google.com: domain of thomas_os@shipmail.org designates 213.80.101.71 as permitted sender) smtp.mailfrom=thomas_os@shipmail.org
Received: from ste-pvt-msa2.bahnhof.se (ste-pvt-msa2.bahnhof.se. [213.80.101.71])
        by gmr-mx.google.com with ESMTPS id s65si245048wme.2.2019.10.18.06.41.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Oct 2019 06:41:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of thomas_os@shipmail.org designates 213.80.101.71 as permitted sender) client-ip=213.80.101.71;
Received: from localhost (localhost [127.0.0.1])
	by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTP id 751663F4AF;
	Fri, 18 Oct 2019 15:41:07 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.099
X-Spam-Level: 
X-Spam-Status: No, score=-2.099 tagged_above=-999 required=6.31
	tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
	DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, URIBL_BLOCKED=0.001]
	autolearn=ham autolearn_force=no
Received: from ste-pvt-msa2.bahnhof.se ([127.0.0.1])
	by localhost (ste-ftg-msa2.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id buQpfwo97A_c; Fri, 18 Oct 2019 15:41:05 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se [155.4.205.35])
	(Authenticated sender: mb878879)
	by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTPA id 494433F867;
	Fri, 18 Oct 2019 15:41:04 +0200 (CEST)
Received: from localhost.localdomain.localdomain (h-205-35.A357.priv.bahnhof.se [155.4.205.35])
	by mail1.shipmail.org (Postfix) with ESMTPSA id E2BEB360741;
	Fri, 18 Oct 2019 15:41:03 +0200 (CEST)
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m=20=28VMware=29?= <thomas_os@shipmail.org>
To: linux-kernel@vger.kernel.org
Cc: Thomas Hellstrom <thellstrom@vmware.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	clang-built-linux@googlegroups.com,
	"H. Peter Anvin" <hpa@zytor.com>,
	Ingo Molnar <mingo@redhat.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	x86-ml <x86@kernel.org>,
	Borislav Petkov <bp@suse.de>
Subject: [PATCH 1/2] x86/cpu/vmware: Use the full form of INL in VMWARE_HYPERCALL
Date: Fri, 18 Oct 2019 15:40:51 +0200
Message-Id: <20191018134052.3023-2-thomas_os@shipmail.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191018134052.3023-1-thomas_os@shipmail.org>
References: <20191018134052.3023-1-thomas_os@shipmail.org>
MIME-Version: 1.0
X-Original-Sender: thomas_os@shipmail.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass (test
 mode) header.i=@shipmail.org header.s=mail header.b=FpmV4qqT;       spf=pass
 (google.com: domain of thomas_os@shipmail.org designates 213.80.101.71 as
 permitted sender) smtp.mailfrom=thomas_os@shipmail.org
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

From: Thomas Hellstrom <thellstrom@vmware.com>

LLVM's assembler doesn't accept the short form INL instruction:

  inl (%%dx)

but instead insists on the output register to be explicitly specified.

This was previously fixed for the VMWARE_PORT macro. Fix it also for
the VMWARE_HYPERCALL macro.

Fixes: b4dd4f6e3648 ("Add a header file for hypercall definitions")
Suggested-by: Sami Tolvanen <samitolvanen@google.com>
Signed-off-by: Thomas Hellstrom <thellstrom@vmware.com>
Cc: clang-built-linux@googlegroups.com
Cc: "H. Peter Anvin" <hpa@zytor.com>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: x86-ml <x86@kernel.org>
Cc: Borislav Petkov <bp@suse.de>
---
 arch/x86/include/asm/vmware.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/x86/include/asm/vmware.h b/arch/x86/include/asm/vmware.h
index e00c9e875933..f5fbe3778aef 100644
--- a/arch/x86/include/asm/vmware.h
+++ b/arch/x86/include/asm/vmware.h
@@ -29,7 +29,8 @@
 
 /* The low bandwidth call. The low word of edx is presumed clear. */
 #define VMWARE_HYPERCALL						\
-	ALTERNATIVE_2("movw $" VMWARE_HYPERVISOR_PORT ", %%dx; inl (%%dx)", \
+	ALTERNATIVE_2("movw $" VMWARE_HYPERVISOR_PORT			\
+		      ", %%dx; inl (%%dx), %%eax",			\
 		      "vmcall", X86_FEATURE_VMCALL,			\
 		      "vmmcall", X86_FEATURE_VMW_VMMCALL)
 
-- 
2.21.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191018134052.3023-2-thomas_os%40shipmail.org.
