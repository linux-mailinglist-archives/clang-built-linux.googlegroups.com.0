Return-Path: <clang-built-linux+bncBCSJ7B6JQALRB7XEU6AAMGQEVQZIGSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id B486E2FF74D
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 22:30:39 +0100 (CET)
Received: by mail-pg1-x53c.google.com with SMTP id l22sf2033244pgc.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 13:30:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611264638; cv=pass;
        d=google.com; s=arc-20160816;
        b=z6rlpS+N8RX8E75EloO/jHD56LAKHM702uUYdGUhjD5t6kN9Vst3r0MIHa/2zA2DsT
         frnFbF5uKOwAj//RKPr3Ilr8Mc3Qz3Fmxk/ntq89GCNmQDc0DUnxa4nvWglI08K8faNf
         AYXIfgZM9aWTUo3FFejelc1aURkjw1u8qgC+xUX3UeaB3sp4uxS/YC3wmdDhr7Ms7cPy
         3MggThBULYQ+2qy4V1iE9hOtMFndXBn118ftG2ZQEN/6Hh/8UFnIEjUHLOt+xoqODHtC
         icE6FDNKz0fxZbVvdGg8h2yaio/GGh1PATpFgLT/awMXaA5MMhEnpzSkC/f1jMVFSRB9
         ELzA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Z0ciR1/fmWo3yhPzF84tHjiXYuBXIWgvAy57z/kHKTw=;
        b=RImqOLofwBz+Z5lP9d+Svn8Y6MfoF5SHeTTulwFb5ZFilBMS42kUXZoGJYSSSA3glG
         7m2tV9Z1coqtJWL/tyCzex0395fZmPAaiIfBEjXCobkscRq6CLKGL3rVsrkRBULo4nx7
         6gpsBex0RZxiW9eUuJ0Q3NSL9QU7nb745R4j1LMVjzimknYBanPdI4qvjpSI2yusDn4N
         o/lgGMOJtkA6Up5fO4e3bctVHSybZAoXImLTYUKz3wrRvSPVWkck1HeYna7f1KdomVHq
         PSxDJ88OCQbYNdhVkGdmlHv4DRu+7OzG7u1x14RIuhyaL0a5n0q6qhrujBL92BwVwbd4
         X3XA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=cOZpwCRi;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z0ciR1/fmWo3yhPzF84tHjiXYuBXIWgvAy57z/kHKTw=;
        b=RLQKRyJ30cwqLXKlYhe5A//I6ylLYXQkqBPb3RuwYAzqL7MhkEMM4Kfhbho/Nk1NwE
         aTmO2miCLbAqMyDY6hQV5wOFF5weBRIic8eSKNb5AZLE2Y7MOl0E1uChrxFYZb2M6HaN
         8fSlpWRvr4bMZaygTv5R3Yd/MTTHgKmpDQJ/qnGmzQPWf9QRDkbhlrWVWTEqdzu73jhs
         ObBdOjZgJbiUjGtoSYrtk/tpSge3JQwicO5XkJfv2naxWh/BIUR8WweBxjRHgUeoSjV8
         +o1+/GjFt5DbS/8x/R/FTxUGCcp2qwj4gGdr+8/ObR4B95QLPnDzvLJQlRaEcIa8fpns
         1vfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z0ciR1/fmWo3yhPzF84tHjiXYuBXIWgvAy57z/kHKTw=;
        b=jXVhT/fmXT9YsblPcxEXPmBM4nXdXkPCHJD1G+1PRJwhy1+kBzQxXEE7jkMX4HSo18
         +e6LFTIwrgKitkx7vhh56tV3SVmI23F1KnODkOkRpipmYTFhNVybzHCh2N5+o9dafGqM
         XaWVoRUuWOjCnJSjEWqudBGwhbMufUiBCE9RMsVr/yBFbYt1gWYnHP9aBUgQ8qHneGuL
         LoAjLux5LXuGDHkfSWprcQNsxEr1E2JKa7mn1kZVSyEpcu5B4gDRkT4uwGlc0+6xf9wM
         hQq5uTAxYP58JrHDpLgQwyS17jVgwNpBc52IfTwAF4XHDFYWAd+O6ipjsuFk96+TAX1n
         tujw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530pMLTkGfzJXlJHvuw0l/VOdJbCt6g6ACx47J++ih2qSt1Sp7lu
	EIiwCzOvmmxOZtahTRzw0GE=
X-Google-Smtp-Source: ABdhPJyUY8crrSvQa6K0GMe4rixr8dDlVF1OUAOET0eQN/3DF0wTV7aaSOukLSHwfa98uwb78cS6sQ==
X-Received: by 2002:a65:5ac1:: with SMTP id d1mr1229823pgt.447.1611264638482;
        Thu, 21 Jan 2021 13:30:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ab83:: with SMTP id f3ls1662652plr.9.gmail; Thu, 21
 Jan 2021 13:30:38 -0800 (PST)
X-Received: by 2002:a17:90a:9a89:: with SMTP id e9mr1540006pjp.2.1611264637871;
        Thu, 21 Jan 2021 13:30:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611264637; cv=none;
        d=google.com; s=arc-20160816;
        b=B2tfRVlwjf+uO0kRsvkqrwx341z24MJfiBYcOp+DNWSz9Ld2sWkSPqkMI19/Qqyvjl
         LnSn7bWWUffrD9yKbonJ/gnoOle/4mk3ZPR482fiFZfjXZDOABH/w5UF+VS9uwwFOH3c
         NKGNupqA/ECYtirCPQHRaBX7Nc1OQ5LjNHJiUjQ5zWUiwRwZQsdsuD3HJ7Axthq1Y+jv
         vLs5LGNyemmxluJiqKBJfjTOeHZ6rcHvMb96j3hYSbn/YjK/Q8ADKz/DFVKba6K+uFh9
         FRdpzfRyFILPmcgt7uNhwVl34Ay82v4fMmyWodSlxTbUPpWlrtlnuVRFp1L1i7rGCGJE
         HAYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=nxxPW6BnOIrpcbzWpQ7Onlpd7BmUQEP8ofOjcHP9Oz0=;
        b=f1OmaFbCmTmc3xuX0WCLXza/oFV1Hb6maIbTp2eARDqSWwatE9KiiSjG5+X+AWWLGG
         aRmnpwQR/Y6qwRk8PmfC8OrIoT+LA3sEWeUU/Bygpfult+42InbcTBcHfjLe4oCERjxd
         g822QI51ptgXarap4Tk+xX+Gq1hsHLSXzGp4x6TbCFZg/yb2J+eN8qXfdmIcnYNBDOQq
         hFvfPnWb653MVaUUFLNLGUUoBMZkHKhjRDmOjbgZXKE6AyUsd23X70FMAz8svtZbNXX7
         +VIZjX7MVKvXOeIuHM/DaE+yomcbyFPNUVP+YyVd1eukfhnLdWLG98aXa1xtjovo5U5p
         XoAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=cOZpwCRi;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id d13si356517pgm.5.2021.01.21.13.30.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Jan 2021 13:30:37 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-534-1t7ZQYarP-a7Kd8U80L1dg-1; Thu, 21 Jan 2021 16:30:33 -0500
X-MC-Unique: 1t7ZQYarP-a7Kd8U80L1dg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 596121842140;
	Thu, 21 Jan 2021 21:30:31 +0000 (UTC)
Received: from treble.redhat.com (ovpn-116-102.rdu2.redhat.com [10.10.116.102])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 3D35E19C59;
	Thu, 21 Jan 2021 21:30:27 +0000 (UTC)
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: x86@kernel.org
Cc: linux-kernel@vger.kernel.org,
	Peter Zijlstra <peterz@infradead.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	Miroslav Benes <mbenes@suse.cz>,
	"Rafael J. Wysocki" <rjw@rjwysocki.net>,
	Pavel Machek <pavel@ucw.cz>
Subject: [PATCH v2 18/20] x86/power: Annotate indirect branches as safe
Date: Thu, 21 Jan 2021 15:29:34 -0600
Message-Id: <ba7a141c98f2c09c255b19bf78ee4a5f45d4ecb6.1611263462.git.jpoimboe@redhat.com>
In-Reply-To: <cover.1611263461.git.jpoimboe@redhat.com>
References: <cover.1611263461.git.jpoimboe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=cOZpwCRi;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

These indirect jumps are harmless; annotate them to make objtool's
retpoline validation happy.

Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Cc: Pavel Machek <pavel@ucw.cz>
Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
---
 arch/x86/power/hibernate_asm_64.S | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/x86/power/hibernate_asm_64.S b/arch/x86/power/hibernate_asm_64.S
index 7918b8415f13..715509d94fa3 100644
--- a/arch/x86/power/hibernate_asm_64.S
+++ b/arch/x86/power/hibernate_asm_64.S
@@ -21,6 +21,7 @@
 #include <asm/asm-offsets.h>
 #include <asm/processor-flags.h>
 #include <asm/frame.h>
+#include <asm/nospec-branch.h>
 
 SYM_FUNC_START(swsusp_arch_suspend)
 	movq	$saved_context, %rax
@@ -66,6 +67,7 @@ SYM_CODE_START(restore_image)
 
 	/* jump to relocated restore code */
 	movq	relocated_restore_code(%rip), %rcx
+	ANNOTATE_RETPOLINE_SAFE
 	jmpq	*%rcx
 SYM_CODE_END(restore_image)
 
@@ -97,6 +99,7 @@ SYM_CODE_START(core_restore_code)
 
 .Ldone:
 	/* jump to the restore_registers address from the image header */
+	ANNOTATE_RETPOLINE_SAFE
 	jmpq	*%r8
 SYM_CODE_END(core_restore_code)
 
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/ba7a141c98f2c09c255b19bf78ee4a5f45d4ecb6.1611263462.git.jpoimboe%40redhat.com.
