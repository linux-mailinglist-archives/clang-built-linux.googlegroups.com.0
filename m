Return-Path: <clang-built-linux+bncBCSJ7B6JQALRB5PEU6AAMGQE43LYXTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 221042FF74A
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 22:30:31 +0100 (CET)
Received: by mail-pg1-x538.google.com with SMTP id l15sf1386998pgr.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 13:30:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611264630; cv=pass;
        d=google.com; s=arc-20160816;
        b=aD6vN/F+AdIKVEVSghgXK0agTxITDs7H+r/VtNfb7+E+NNnF0jlO+8H79U8bZnTruz
         X8fpz1451ZRQg5QoVDmsUejj3kJ11zcsWtETQiCjrmXDvoZgazV8PRCjkjEbu2GcIlvH
         JLppYZtCafWjhGGecITD5YifyfYGynjaEKsV+WEECVQ9ZeSlp/oOh7yL4+L8hwi7z+Dv
         SFJBMnMJbDfBd8dz2Spbheez1hjjNvMDnLRyBHoVM4LifeMYauWqz9OaR4waljfmmYtd
         /7VDwm7V2hwlmWOhdGX6NL0EOxaLNXT8l7U7TzPGZvWAyf5CkN6j86DT38W4FY5cUOIR
         uBiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ULMql92d9MJKaoORk4Eab4Nx+v7pTimnszCLdomvWkE=;
        b=VHb3ZffUdHgTDIYgJaMy1TNQTA0aXiAC7JKh0l9ZTWSWlpzFWXd/JsTZuG0fx4Ueb7
         XBbtC561QPcxekrWchLUrAoNmvoCGnn5riFVNxMe3VOqgav6Y4Qq0bz7MiCAmvXDtK1S
         jZl2JZPlILnNlvpkUEA2nDlvCVoBgU7htIEJX6rKlsXxpTxtp1kEMOhuWY/BhwWvrhvW
         w0tC2uaee2Reb5xU+G+Wk/9y2VfotluW9IFYzz1YQW09lAeW3jg7Y+EFhv6vxHFUcxfp
         /fqaIYavik02x2N1xA+fMA9h/W8T5yETDLyIkLuIqMdaQDfuEhW6ZmquyysOOly9MkIT
         ZHuQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=hLR9nvOu;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ULMql92d9MJKaoORk4Eab4Nx+v7pTimnszCLdomvWkE=;
        b=J5AvFkUQ0kKkkln3sUvdlT7qIksw8jorGBYnp+6gE+zVDC4pl0eQwfyPxIkFh/++6C
         H+etWR3q2w3NwW70zKaUmsW8G3kxzfaMOmIN9y7yypVJbp8P6Em/WA0DnHkRDtTMfMQL
         C6A5A5IQPWy2lEyqOgHmgICQ6DD264OHjL84nUNLa4q1Fybd77FwvEyQQnRNW+nQ6J9R
         UDrOpQkLZ3shhlxmWmqHaKnmSJBHIyi42jpqUfs4G+OFyjEk9CxzZhxRVbpgNzjhtb7u
         1Hfy3ufkzJAGn9iYMxFEBwZ/WUkX1G6yykXlWcdzZNBqdA6GQSRk7YQgIuvdn3yOyeZL
         nzuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ULMql92d9MJKaoORk4Eab4Nx+v7pTimnszCLdomvWkE=;
        b=hxz/Ndp+kIgBkkRZbd5YTGNHV53ctdmMPJkUqB3r4B8Sc1oCCsctCnK+VgY2WrJN1t
         Z/AkM5sHkl/CXyEK0o+j3o/n5eHt3vEo3ojXNZ8k9u3lmO8kfnzti86O1SGpJYM97ywW
         RyYC7UwHPP4y43Oh2oVZY4O+bvhEan8ZV+qt++gYnJkynvccGKNlh5NbJNn0B8yf1+qY
         pAmU13QpxkrtKb7W6RY3It4SowBF2jgcrlvmGTl2k4QR/W4KVh61wZXWginxem/gy4Q4
         ZVBNat4xwFDT9wX2UyTZ4lwI3NBSj2al8SaH8o6Vbvq1McIuvubC+r8/kr5dv1Dk4hCz
         kQIQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5329sWBLhtTk1UnUCq//0sKmyCU/ak7Q4F5IohoWHtSPXceDbtuf
	BHBdGSw/vre27NexziIS2pk=
X-Google-Smtp-Source: ABdhPJxY4ypAwp4zltFgWTkJ3qOq/F882O4QhLRM68CVoPcxvtOwf7Nnvf/up1mUyghhsWpqDoA9aA==
X-Received: by 2002:a65:520d:: with SMTP id o13mr1286111pgp.57.1611264629727;
        Thu, 21 Jan 2021 13:30:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c586:: with SMTP id l6ls1926143pjt.3.canary-gmail;
 Thu, 21 Jan 2021 13:30:29 -0800 (PST)
X-Received: by 2002:a17:902:7847:b029:df:d889:252c with SMTP id e7-20020a1709027847b02900dfd889252cmr1353500pln.76.1611264628924;
        Thu, 21 Jan 2021 13:30:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611264628; cv=none;
        d=google.com; s=arc-20160816;
        b=GCc9W5BEc2/vy4vIiyQRs9tw7ls8G6d6PL171/JTdOgvgso8GmmzwJ3OYUrVnH2exC
         BiS0atMz1q6TzY9lXyOTy4qfR9tM5vM97ntMPLYWHEBb+N/ciKfsisWabYLeHEZPfwQ9
         8FT7UvajoqzAtIRTtA1RMLcD78j9xJyd0b8RfAjRp3NHhHl6XuD0j501Nsk+Z/DhLBUI
         Vtk1wP9R/7xGVhqPwR1C5W9ANnd9I8om2F703H9JpYz/13fUfB4Twu1cbyemE8zfI+zC
         YSYtiy8Lql6QBL0CHSX3yW1t9n6UKzyi9Ll1ayEawviYmtM2Rd8W8dgyllnU+Timq/Ab
         2NEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=UWVlmQnnLAZPay8Iz+zWMT6CoT4fmpbJ6j9gtoJeVF8=;
        b=qIyHRRWkQgumCh5WksXc8T4Mac3grfq/CTimquPA1ZtXEb+3RsGaiYiF6/JN86MnHs
         sF2Xs7dLDXu4XLWygpLkOiqKpkRmelcJB7NK2qm+DKLAsnKrhBD5rM7ceWp2GiRgIDnM
         JUCDt/RGHNwwWsTRZlYNo1L0958iH91enhxybtGxIeLw7jmBk8zCRtDHj65M0UPiOFbx
         tN0prYzUxAPQQHKUzZESurKsXVaKHyb8oPq4HxvK3eX3/WYS49QLDpeey6tX9IbtXvw0
         wD86Xj7tiFghB7KndZTolilOcMlAY6MBghN4AYkeLsZlvgOeoMC/vyudPFhZ7t7ffCLK
         t6LQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=hLR9nvOu;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id jz6si490383pjb.1.2021.01.21.13.30.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Jan 2021 13:30:28 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-33-4_JPhvGCO7yypZu3gWCRZg-1; Thu, 21 Jan 2021 16:30:24 -0500
X-MC-Unique: 4_JPhvGCO7yypZu3gWCRZg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2F3F61842140;
	Thu, 21 Jan 2021 21:30:22 +0000 (UTC)
Received: from treble.redhat.com (ovpn-116-102.rdu2.redhat.com [10.10.116.102])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 30ED119C59;
	Thu, 21 Jan 2021 21:30:21 +0000 (UTC)
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
Subject: [PATCH v2 15/20] x86/ftrace: Support objtool vmlinux.o validation in ftrace_64.S
Date: Thu, 21 Jan 2021 15:29:31 -0600
Message-Id: <14f48e623f61dbdcd84cf27a56ed8ccae73199ef.1611263462.git.jpoimboe@redhat.com>
In-Reply-To: <cover.1611263461.git.jpoimboe@redhat.com>
References: <cover.1611263461.git.jpoimboe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=hLR9nvOu;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
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

With objtool vmlinux.o validation of return_to_handler(), now that
objtool has visibility inside the retpoline, jumping from EMPTY state to
a proper function state results in a stack state mismatch.

return_to_handler() is actually quite normal despite the underlying
magic.  Just annotate it as a normal function.

Acked-by: Steven Rostedt (VMware) <rostedt@goodmis.org>
Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
---
 arch/x86/kernel/ftrace_64.S | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/x86/kernel/ftrace_64.S b/arch/x86/kernel/ftrace_64.S
index 1bf568d901b1..7c273846c687 100644
--- a/arch/x86/kernel/ftrace_64.S
+++ b/arch/x86/kernel/ftrace_64.S
@@ -334,8 +334,7 @@ SYM_FUNC_START(ftrace_graph_caller)
 	retq
 SYM_FUNC_END(ftrace_graph_caller)
 
-SYM_CODE_START(return_to_handler)
-	UNWIND_HINT_EMPTY
+SYM_FUNC_START(return_to_handler)
 	subq  $24, %rsp
 
 	/* Save the return values */
@@ -350,5 +349,5 @@ SYM_CODE_START(return_to_handler)
 	movq (%rsp), %rax
 	addq $24, %rsp
 	JMP_NOSPEC rdi
-SYM_CODE_END(return_to_handler)
+SYM_FUNC_END(return_to_handler)
 #endif
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/14f48e623f61dbdcd84cf27a56ed8ccae73199ef.1611263462.git.jpoimboe%40redhat.com.
