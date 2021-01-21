Return-Path: <clang-built-linux+bncBCSJ7B6JQALRB6HEU6AAMGQE2EXOI7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 00FDC2FF74B
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 22:30:33 +0100 (CET)
Received: by mail-vk1-xa3d.google.com with SMTP id h15sf467565vka.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 13:30:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611264632; cv=pass;
        d=google.com; s=arc-20160816;
        b=fFCRMxVVYFer5TVLtLxgv8heOdhChu9BF5JaWs5n0BJp4kNKwjMVMQUyz018HW2jXD
         QfezOHH7pntjuJ3Y5ZdXSI8KzRA7bbhyJ1PqTqBhPUnU+Vx8hfO3JS70T+mqIaFxxeaU
         Bnm0UP9viSCPyfJIfDXAsbim8rKVVHj4RNQCgO74WQ4bWeBs89frUVtPIPHKIs58ajg7
         jMByjXWT5A1UJYi52RjOHuAZ+h9T5PLeM4OrJGgYVewJtrLRXr2XHfuY738/bo8Z2UCh
         +hLuBvdW1LKMt9jc4BhIZsV7N7+AAThFZlXih0dCp7UrPC+0xkepCIG5j0gaBsoWraXX
         BKVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=lYj8N+kAVZ8xF16MJIJTWZKhuahv6Je8Oa9q7FTkiFg=;
        b=xxOPvENtVXZ79MulbFKIJIqccZKDMFyxIa7pC6R2e9P0JWNagupQpQQuKQq8J0oChb
         zhPCdRspyf1FAnzrxeL6pGB52vt61Lh0EL0ue2N8UiN36mltAlajPTojySNgh4m8+1kB
         eD4yWUZ9pTH4FfRQneTRbPcMKb03i/xbqkHNySP+F620PgUbXhUK3hQbLlwqJCuABFnX
         +AYLDnOvm3eEJs9VIWKfl4aIaefX64OUVahWAd3F3MthX4RHJFGp4HKIbtn/VtOxTHtc
         lpITnC1I+6nkuIfx9LH5vQsgvi0Y3VG51gP10qAzEJvlX9stui0+cq4+KZESr43uQPu1
         LN1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Xx3BFeMW;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lYj8N+kAVZ8xF16MJIJTWZKhuahv6Je8Oa9q7FTkiFg=;
        b=A3HhgA6nmvdadNNipX1Zbz0E6OLjg0iRL9ojE28BrQ40p/ImVCtMuEub7fTlXOHJi3
         iHXZ3aODgrIm0q2TTA56jHmhGEPlzLq4H1ooyVWm6sxJ+fNY1rIF2fjyNuKY9d/mpgVl
         hVxcliTNwA7D6jkVrQxQ8UK+O8Ky25Sis0xhI66BiOfwkS5h0Wu32m1f8wxcP8d8tnhp
         HD5yA1goSS2z4z+XR/0BvF2S2oxLldZapAOylG/3XN1whAru+X7Jt6VqVp/fSbC8KbGf
         DWrteTmWFeYRN2PCD+l1vD+UzWVvSCK9yHbwJydu5cKywDMw1B9fXb6pSqNKq0i9JTDE
         VoPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lYj8N+kAVZ8xF16MJIJTWZKhuahv6Je8Oa9q7FTkiFg=;
        b=UxUcl1Y22hSOrFo6KuTCgQU+SeRiPB9MBrXnPKXa6X9TdVs5ZHGjdf0cIT/OSF05U4
         q8JJr2WLTdiuHh0g4ORUrbQfCrZ2tVpFIUB72BsiQ2+Cm114zt/0GwhfHMu7Wo1UfOni
         rBPWUnovdxPa9q1RsZFnz6UxzfoBR/Vzr4ujt5eZZ4P4kEee+pPrXWSgubaxtClCAAEf
         l6PtESsibRT6pGDBiuqfkeUTAM1EBTRWDnLxMePZzAi+3cJQ9jOcfTex3P/6Jswk6li1
         dbBK2kBrc2u2NkCd4J1JYNwiKwoeah8mKJGvOVPKEUGJrC6nJLxl8WHW7Il5/2xowCvU
         Zeww==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531B3MKCs5xNDtTApbspX+VYoLKExYWamZKNZai6nYLlhFz4BJ9+
	b4iz48vPiYMkBFzfxa141WM=
X-Google-Smtp-Source: ABdhPJz30t6PVKejLYCwzNeVDRnDnwmhwQoxTOCDXCU0Y/cCkTsxk8N2Du7+MAno9W+oIve82u9uWQ==
X-Received: by 2002:ab0:59af:: with SMTP id g44mr106047uad.37.1611264632088;
        Thu, 21 Jan 2021 13:30:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:22d4:: with SMTP id a20ls511643vsh.10.gmail; Thu,
 21 Jan 2021 13:30:31 -0800 (PST)
X-Received: by 2002:a67:e014:: with SMTP id c20mr329897vsl.54.1611264631748;
        Thu, 21 Jan 2021 13:30:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611264631; cv=none;
        d=google.com; s=arc-20160816;
        b=kbAbpwIr0OFgavB/QZQo+iT5KXweJFMlndn/+9b8KNdrbHKOYLumHemDk63qyrp3JQ
         +7f9f4MNlgTNqetivBYUh5EW8THcKi8cQzgYkxpzcOOs+vJvpiCUxN/++LDo/QoO6fls
         9XSdPGzM7yEHNNa7NP2H7Z8uwIP7biXsuanG99F/nLgxFq6Kk3ZbFi1lGghr6gzWW2/i
         5+Jbip0HHkq0HmGFdW+LIqLlMF3PdVCzkcC2P5sQSbSQvoKVgLhsw9eXjuYfvRA0LNH6
         mdgBbp2zRturkLSLOo21C+8AKXqUg2N4iAtuOSCqxQ7mdCZ8HBIEzR+wvFtLT/9Lh9/S
         TbCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=D7CrSrOKxoZf0exSw6ZB8a6Lw/zfFP6GUxqSTlmyjCY=;
        b=G9TofTdUKHRUNpIdgae4AhTn52N7yby412VlkRfSXEtn9NbLOC0/IAL+b8fG26ARtO
         lx5s3gqW6ujXCXd19ksj+9A3mp0QcPJLx3xcuYiVR2oPiZz50GZJxs0401H/t3meeJsM
         nwpe5VqFUbTBuJINiYN2+3IZ1TrfxOoloARQZMMaMDmTpUIFlbF0RDHzIdRp2zqjEuxy
         M3M0YwWBsLe96hNofW+O8El7TmOvK7gEuVMx/ICBFdb8y5vRLIZGeBDcYcoMVav88vZX
         dzOD9YM5c1ouzLHyWxEckSyX+peWpE7jSr9WJjKrUKzQYWanRVrSJv9F7ZsRrN5ARW5n
         DkJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Xx3BFeMW;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id q11si836269ual.1.2021.01.21.13.30.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Jan 2021 13:30:31 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-272-NS7xuD3KNB-v6O606p_0Pw-1; Thu, 21 Jan 2021 16:30:27 -0500
X-MC-Unique: NS7xuD3KNB-v6O606p_0Pw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B13C8107ACE6;
	Thu, 21 Jan 2021 21:30:25 +0000 (UTC)
Received: from treble.redhat.com (ovpn-116-102.rdu2.redhat.com [10.10.116.102])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 5375E19C59;
	Thu, 21 Jan 2021 21:30:23 +0000 (UTC)
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
	Len Brown <len.brown@intel.com>,
	Pavel Machek <pavel@ucw.cz>
Subject: [PATCH v2 16/20] x86/acpi: Annotate indirect branch as safe
Date: Thu, 21 Jan 2021 15:29:32 -0600
Message-Id: <a7288e7043265d95c1a5d64f9fd751ead4854bdc.1611263462.git.jpoimboe@redhat.com>
In-Reply-To: <cover.1611263461.git.jpoimboe@redhat.com>
References: <cover.1611263461.git.jpoimboe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Xx3BFeMW;
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

This indirect jump is harmless; annotate it to keep objtool's retpoline
validation happy.

Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Cc: Len Brown <len.brown@intel.com>
Cc: Pavel Machek <pavel@ucw.cz>
Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
---
 arch/x86/kernel/acpi/wakeup_64.S | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/x86/kernel/acpi/wakeup_64.S b/arch/x86/kernel/acpi/wakeup_64.S
index 5d3a0b8fd379..9c9c66662ada 100644
--- a/arch/x86/kernel/acpi/wakeup_64.S
+++ b/arch/x86/kernel/acpi/wakeup_64.S
@@ -7,6 +7,7 @@
 #include <asm/msr.h>
 #include <asm/asm-offsets.h>
 #include <asm/frame.h>
+#include <asm/nospec-branch.h>
 
 # Copyright 2003 Pavel Machek <pavel@suse.cz
 
@@ -39,6 +40,7 @@ SYM_FUNC_START(wakeup_long64)
 	movq	saved_rbp, %rbp
 
 	movq	saved_rip, %rax
+	ANNOTATE_RETPOLINE_SAFE
 	jmp	*%rax
 SYM_FUNC_END(wakeup_long64)
 
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a7288e7043265d95c1a5d64f9fd751ead4854bdc.1611263462.git.jpoimboe%40redhat.com.
