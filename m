Return-Path: <clang-built-linux+bncBCSJ7B6JQALRB47EU6AAMGQEDRYNUEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D40F2FF746
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 22:30:29 +0100 (CET)
Received: by mail-pf1-x437.google.com with SMTP id 15sf2016266pfu.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 13:30:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611264628; cv=pass;
        d=google.com; s=arc-20160816;
        b=QuGUdfrbUER6nhEhjc/WotczCKbiTXHItulMm2Xib41s4RRW0tnTzmHIpEm523D9Y7
         8MzJ9+nejxAqYHPPkOstlbZbrrupu+EdScz299KRiUytmd85+aDU1IDCYmFJ2l5huO+/
         hAaRhZQO5Ih+6TqMxkbzVR2/MyPJ13gGFG83I8+AZDyYgd3hNVf8dkO+/qknc4i6IMfc
         pZLiYJJkeeRxZChs8J13xst5C6fgTJdvCDlGzz9xRsFMKhcJ1VOdWTUhXovbmw5VJeKP
         J9zTJGjrbGKsIvvNAIqnq2iLho5Ji5jPtj8KFFOBKXE16f3cM9HhGlJtV65XG/zpL/hZ
         Q7Og==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ah0euBd+8pThiWS6kpS3pn3xrbftOlsyz1YwqLJ9t9s=;
        b=vkzfD4hEvbDceW4nkXqoR5MGgAkeEvxfcfg2Ofk/izFe44qKl+pxhDrPN2FWUnGJLp
         LOgsCUIbo37DpVa8KR+4dDkbHNDue34hSlvZPZGRJzeMQ8EZczOyOL1SCt46ZKYl33P4
         YRZ8rvmhjAdce2IeBEbE4DC63B7tklQg+YYgmVatv7Xle+/+8QuV/jtMzfbpD+qS4E2e
         iJUMWhrcAs4e5yTOPC1SFfjH0aLj7ZxiV1ZBuFuQunBwGJuKTH28lMN5qnW36AtA9xFy
         dMWmpvi+nfb1LuwrpQFypQfmG199gCjgTLb/6gpJBkvxQhXKqWVhnqL6jlBo3dsl+VFi
         pt3w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=KKVdyqlU;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ah0euBd+8pThiWS6kpS3pn3xrbftOlsyz1YwqLJ9t9s=;
        b=H+B4VVcvzEhone8PDaAnE7wtk4wWSXphGXkNkEahNviwW7LANdA/svbCkhn9xohwVV
         KXtYAmoX4PtwDgEXCG2VhrD9v8KkQ6sTWNtKfqpm2d9IjtO9CxBpm8vA2+EyY12MUbDC
         gbRQbs3IiSWlEJCSnLRqPjYGvIiFTBTR+cvwra+t+A1rLyKNk81balLGYFFVfPypE25G
         oImLTeHvQT8cgXBNigbzb/TaZFEnv+ZDhWgwxGYgR2KK6ReZthAxMbC1utIM/G73KeUM
         xH2PqsEXb0a50lHvEpiyzeqOEt6LpASUz9x7rO9I1pzoEgZi+mqHL6tEVqXITMt6AWmE
         G1sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ah0euBd+8pThiWS6kpS3pn3xrbftOlsyz1YwqLJ9t9s=;
        b=HPdddYVJzJue2xMFOpJF/sBsaKd2dC5ljWNIw85Atcr1O9hIDP3LmaJJi7fKD6kbq2
         QUdxBCA4Prubmo9ySkwWXkwKkphaJGArXrhzYh1W8TXa3kwbdoqSQHhB7N3wAEqinF/v
         +LBn/6lmh3Vh3H7xz9Sw1qmQi6DDzTSdxFLeaEfPnP+YzfYT0j3ufmwQWRcnrLJysIyl
         8avyNIoa0kX07cjgqqwAYBJdNSTUCnwt2jV3H4n9FvTdnrM6fQ+ltoTXfz/jm1LWBiq4
         BoRZonB+g7FsRISXJUI8TIuS/G4Z4XnWa8l4yxmnQq6EfaKrWRSzB7A0qQ6PHMxXlCke
         4NnA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530uT1sqJeDeelSBt2zeiAJPVYG206zFxhk+XXGUpdXlZY155Ysa
	vBWMwQ9vOOrlBUMJp+dCJ2M=
X-Google-Smtp-Source: ABdhPJw8k3jCTwFHn2FiXfSKDPfi5ZzhljIt7LkOcKb32ntM7JPB757ctNnnAHkiZQsTAVfswlClIw==
X-Received: by 2002:a62:37c7:0:b029:1aa:22ea:537d with SMTP id e190-20020a6237c70000b02901aa22ea537dmr1446607pfa.56.1611264628088;
        Thu, 21 Jan 2021 13:30:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9155:: with SMTP id 21ls1287937pfi.3.gmail; Thu, 21 Jan
 2021 13:30:27 -0800 (PST)
X-Received: by 2002:aa7:9736:0:b029:1b9:c4f5:54d5 with SMTP id k22-20020aa797360000b02901b9c4f554d5mr1295713pfg.47.1611264627439;
        Thu, 21 Jan 2021 13:30:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611264627; cv=none;
        d=google.com; s=arc-20160816;
        b=C4BAaQYPUKLMgu+qGBvw2TarBsdCcDO/m+TvMaJrl3hHEbs/LTWzn0WIRKcv/8qmJV
         O69RldqAxw1EQ7fddqrBYXeRsKi5r1/KPucVcTshbUfLPsneyVgcsxtTQv8YnZ6HX+mG
         0ggJT+Z0T9Pp73Qe4QVEMF2TJMqHNytn9UFTlGExEKuYtwG+Wb2BCgm6WDCLkV72oOQJ
         kgqbRn910sFeX1sW8IuADsO5PiMgbpdSKuDn8NpEr0+B1wcNW1BStgDhNjAAZ/aSBURE
         DDY1MJvHtMxx3ZWB1udwBFvh9Z4ELi1e0kRvPqxrLg5kjmqVVMLf+2cKv22wemA5tHJ2
         VSaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Toc9537JqJ2dLw1H52wuwGCGvMuQYC963u/ZIocjrIE=;
        b=w/rfomgWC7cbPZjTwRZRMIyYrvsJEOuZiGjbmPJ3LOGKBCe5r9jFNSXmfePbqpxPQK
         VtuerKaVWyyXMFYtUaMmOfWIX62slTwr4mehqh+hLwGJH0SX6gSwbkj4vag/zaxVJ15/
         HWTLEe2ukF0Xm/hZfhp/tr4tjHhD7Rp4IXKQ8sOamusQXzKZ1i+qPHUu6+mzD0EbG3NT
         f1QSL3NHvDw6LjIlwkNtOek65qvdp4NnKl08MHsC12lQQgdJsy5mlzgQ9O0xvOc5rzB7
         P3mjsZLTp85H23sEYLhfsRuS5TNuxS8cVbzkLnihrpO30wmMQD4caJbLNRESWw5Z3iSs
         Kj8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=KKVdyqlU;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id n13si453038pfd.1.2021.01.21.13.30.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Jan 2021 13:30:27 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-560-VxeouvR9PLOOa-J3NyN53Q-1; Thu, 21 Jan 2021 16:30:22 -0500
X-MC-Unique: VxeouvR9PLOOa-J3NyN53Q-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0DEBA1800D41;
	Thu, 21 Jan 2021 21:30:21 +0000 (UTC)
Received: from treble.redhat.com (ovpn-116-102.rdu2.redhat.com [10.10.116.102])
	by smtp.corp.redhat.com (Postfix) with ESMTP id CA97019C59;
	Thu, 21 Jan 2021 21:30:15 +0000 (UTC)
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
	Boris Ostrovsky <boris.ostrovsky@oracle.com>,
	Juergen Gross <jgross@suse.com>
Subject: [PATCH v2 14/20] x86/xen/pvh: Annotate indirect branch as safe
Date: Thu, 21 Jan 2021 15:29:30 -0600
Message-Id: <4797c72a258b26e06741c58ccd4a75c42db39c1d.1611263462.git.jpoimboe@redhat.com>
In-Reply-To: <cover.1611263461.git.jpoimboe@redhat.com>
References: <cover.1611263461.git.jpoimboe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=KKVdyqlU;
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

Cc: Boris Ostrovsky <boris.ostrovsky@oracle.com>
Cc: Juergen Gross <jgross@suse.com>
Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
---
 arch/x86/platform/pvh/head.S | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/x86/platform/pvh/head.S b/arch/x86/platform/pvh/head.S
index 43b4d864817e..d2ccadc247e6 100644
--- a/arch/x86/platform/pvh/head.S
+++ b/arch/x86/platform/pvh/head.S
@@ -16,6 +16,7 @@
 #include <asm/boot.h>
 #include <asm/processor-flags.h>
 #include <asm/msr.h>
+#include <asm/nospec-branch.h>
 #include <xen/interface/elfnote.h>
 
 	__HEAD
@@ -105,6 +106,7 @@ SYM_CODE_START_LOCAL(pvh_start_xen)
 	/* startup_64 expects boot_params in %rsi. */
 	mov $_pa(pvh_bootparams), %rsi
 	mov $_pa(startup_64), %rax
+	ANNOTATE_RETPOLINE_SAFE
 	jmp *%rax
 
 #else /* CONFIG_X86_64 */
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/4797c72a258b26e06741c58ccd4a75c42db39c1d.1611263462.git.jpoimboe%40redhat.com.
