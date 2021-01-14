Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBRF4QKAAMGQEKCG46JY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id 23BAA2F6B44
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 20:40:53 +0100 (CET)
Received: by mail-qt1-x83f.google.com with SMTP id p20sf5343520qtq.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 11:40:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610653252; cv=pass;
        d=google.com; s=arc-20160816;
        b=QquqnztKEYudlgI45s1kQZ/pwTNDrOYYLKjyV13MuSiLcxiodXwS/o4FoLdkWT32tg
         Y+dGBRVBhJrDoNYFIKEgQjMXys7KchFe0cH8pKSu/4J8JzV8516BXzuHd3GrV3C4kjFY
         I5nrnrXQo1ZYllaEvXhcSUPMHnizvQ9hkVVjvqJFFD61mXMWoS1/Dqeatx8gcV4Y9uWa
         BCgb4p+V8hLKXM5w4jaF8G1p+zGTq+b6F8ohg9a+7MR/V5UmjbZKrbI6E/KqNU2etaur
         bNTUoQTfb3qW9njAFyw4VFWFcc7/raaJatPSmF3YE1IzQcmJat1z2RUuALuAEmYVFNE1
         SRKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=W1Xu63zsAhDghE67W7pY9Zy2l7+C1f05h+K52G7drGY=;
        b=vBydBFECcZOztdATeWuEQdLxbs5D/ldm/ictNSt8Szlew9Hpi13PJPnjda79UtV+ix
         2BaaLun4rZphXO6EJuFdYZRZvZyzy1N0kdSNezAcru2zwUAIxRhkHctRDwQX5tOyKjqd
         Bk7lc2OQjTMEFFXlci6XgCg79X4eNbqy7lGlHAojHB0w9NRm3nTcf4yXPODjae69O8w7
         WHlwrJQGagjHYt35IFOcj06kbutf+Fn74HHvtbl3XZpKNEiFzO/xs9B00ymoJBEDAQNK
         gDY3QwY4HoGpuNxwQ3tuRoqiBC1tatrSPva4N+K+R+Pusk/1jI3UDB0DaHOZtoVfAmg7
         2LXg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=cZzO64gz;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W1Xu63zsAhDghE67W7pY9Zy2l7+C1f05h+K52G7drGY=;
        b=rhxgs3Tbx4M/3CpPXhZZKVS+wHmLh1Trtyi3pDs4xUVPgnzIB0kWuaLMyqwczKaBTd
         l7Zt9YasZkO3xmUQRzH2ATriATGcMWVmR118gfJXtqUSpMNaw4/9Vhc1qiVz3b7cVBNX
         IRLd6JsXaj2LhzxrXDB4wZDcNBdyQkPUfj4zxuSeBqLSTx9TDvgBycuYuT5pfYwNAEPu
         Kl42fQsuTkFyEgkXrprOu90nNpBx1GgAAUh14PA/Qmmr6IZ72j5Ekesicnp9D8S1COqQ
         PxzCubRKN1XYqSJ2bPWZsYs23YIqELNbfHpmjGrVaKKvnDjFS7OArrNHvvEzpFvIX0da
         bL4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W1Xu63zsAhDghE67W7pY9Zy2l7+C1f05h+K52G7drGY=;
        b=NTBanX/f6JXFhpf5GCZL9KtwKKLqaJQX4QWn4Mm5AszBHkFt82gEoXUunTzLUTad+5
         /NSwJ3Zx/N1qNxuB1eQEtXqY5m226rVzqKMWxJmD7ayPb29nD0UQGNRLm+EhIGbtipNQ
         5PBHAdaOTa1tjeAwCcJnyV27G38LOh57q8ib2uMKIDLvvN0TzwgZy09Ld35x3LJopZhL
         z0tLDT7qZiiF8teJy5kqiKzUvrgZmZaOQjpe4PxoqwLWt6FOPVd5vWZwPVfcdESdC1j0
         gW2uZluOZzOYo29h2QC3FB4t9cECiuw0p74PSCOqlGQ+pbV9i0+dTwAQCy/KU2/gA6gT
         T4wg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531puBWVPmyDawcnCWeSA+nwALsVqjdHI2ly1ZoJGUKfRcugYjVf
	DtclsymiGkDupI8XkZwCQMw=
X-Google-Smtp-Source: ABdhPJwKkGR/TkvpkiNnjb7zVhjDYyzeyKy1L5Pk86zSINwgpa81nlOTRLbI6WrTH096HLCCTprBgQ==
X-Received: by 2002:a05:6214:1485:: with SMTP id bn5mr8658627qvb.17.1610653252243;
        Thu, 14 Jan 2021 11:40:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:e6eb:: with SMTP id m11ls966037qvn.3.gmail; Thu, 14 Jan
 2021 11:40:51 -0800 (PST)
X-Received: by 2002:a05:6214:302:: with SMTP id i2mr8531392qvu.14.1610653251937;
        Thu, 14 Jan 2021 11:40:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610653251; cv=none;
        d=google.com; s=arc-20160816;
        b=FLNIX6n/OjUyCoXUWANI1b0sljux1dXgLXZ9GX/8qtaaV5Twpu7ZY63GPLz3l3O9I6
         kdii4KvBOSS1Ucs+CSgHCYD5B6g5DUWXJFccXjZuy/6fKUH3gfSD29pc0S+/x1AtIyeg
         +NQheXCc84FNvxqmYWH/LG6yN133f9PtUSMnCMk8rjZ3Pj9YzY8AXH81bFNdqdvOXmwT
         dAAm9Q8IzdZwH+5yo/dNcv4/zZOAdnyUziKp898zDrhfVbimyZBOTBBxHZl8mB4WcgDV
         CFr56Bu4tiC91dTHAT2tDk15IDTzVwF4X2zGGb4qZvXNekMlj58dt4cYsdSm7/2ZTHQQ
         fyKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=VYkZwLEakyQWNsUUGSlTGkNMjxvpcQvs0BRzsoFBHrM=;
        b=J8Xd4vQiOZ48uDK16aa6SyqqatqMz+2gJ9HzrnKboHTCgbehfPTc9Wx8algPmFPa9n
         8mgfw/ItOS5uXIe+RQNCtIJK4aAllEVFWcStTmZaBwf7wwD4RYXjjGyoyx+Cq1kpT3GC
         5WyhSZYOF7IiwxWBbnB+5s51Yg6CC0/PSg73S5J8p3otF2Qyyz1zjTF8bJwewQ2bGAos
         FTGeqkHg9J7ZLvIB978L0jOqKbkKQrJXmo2DBi/9rlNijqKiMcUVnHv4WTrJjTHGQMj2
         eLY6Sv4dVSpRFbf+hb93f7v8G5ltsE/B23hS1dID0Qt05QYduDqSS9H1eyOZulvu8I7E
         IW4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=cZzO64gz;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id h123si324224qkf.6.2021.01.14.11.40.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Jan 2021 11:40:51 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-260-p2AMX6uSNhaUR7PoLwGjpA-1; Thu, 14 Jan 2021 14:40:44 -0500
X-MC-Unique: p2AMX6uSNhaUR7PoLwGjpA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1289A806661;
	Thu, 14 Jan 2021 19:40:43 +0000 (UTC)
Received: from treble.redhat.com (ovpn-120-156.rdu2.redhat.com [10.10.120.156])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 6F9861001E73;
	Thu, 14 Jan 2021 19:40:37 +0000 (UTC)
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
	Steven Rostedt <rostedt@goodmis.org>
Subject: [PATCH 06/21] x86/ftrace: Add UNWIND_HINT_FUNC annotation for ftrace_stub
Date: Thu, 14 Jan 2021 13:40:02 -0600
Message-Id: <8c06a9137fb88d62d0af7d9d358317919ba8a001.1610652862.git.jpoimboe@redhat.com>
In-Reply-To: <cover.1610652862.git.jpoimboe@redhat.com>
References: <cover.1610652862.git.jpoimboe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=cZzO64gz;
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

Prevent an unreachable objtool warning after the sibling call detection
gets improved.  ftrace_stub() is basically a function, annotate it as
such.

Cc: Steven Rostedt <rostedt@goodmis.org>
Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
---
 arch/x86/kernel/ftrace_64.S | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/x86/kernel/ftrace_64.S b/arch/x86/kernel/ftrace_64.S
index 0d54099c2a3a..58d125ed9d1a 100644
--- a/arch/x86/kernel/ftrace_64.S
+++ b/arch/x86/kernel/ftrace_64.S
@@ -184,6 +184,7 @@ SYM_INNER_LABEL(ftrace_graph_call, SYM_L_GLOBAL)
  * It is also used to copy the retq for trampolines.
  */
 SYM_INNER_LABEL_ALIGN(ftrace_stub, SYM_L_WEAK)
+	UNWIND_HINT_FUNC
 	retq
 SYM_FUNC_END(ftrace_epilogue)
 
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/8c06a9137fb88d62d0af7d9d358317919ba8a001.1610652862.git.jpoimboe%40redhat.com.
