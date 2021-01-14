Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBXN4QKAAMGQEQK6GJJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C39D2F6B4A
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 20:41:18 +0100 (CET)
Received: by mail-pf1-x43c.google.com with SMTP id 15sf3993066pfu.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 11:41:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610653277; cv=pass;
        d=google.com; s=arc-20160816;
        b=rvn/I5U6BGgdWs9LSNZkQNZfsjVgS7UgtAS1//w9FZ6TkvRlgFbJAEv1KSRCpoxuIy
         5xIvCjRt2R/JYH6VxN/+Iiusi0U9NC2JD5ZMwS6wi6j942rTJmrkOYcD21ncIWVp+zcc
         m5gQ3zE3NTdwrHQEHaDjTGCaWRpdGKWusDAAiGaeycD36UkiTP3uACI/6z7+RdbUtAvd
         /Fr9xTA8HCodZrCsSUkPEWjZe5WM+IHHap7YhZfnkg5AI3t3tlwK318w3AKsefQUAyEI
         FwNwWk4JG7fRkf65eXnanqJcq++QVRfe68cLFfv40VZMRpadF7ykPyD2MiDtNSFvFLCk
         8XEA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Fr8HCCfiTMqiANgNqzv87ZryiA7tDqaS/vw9ndZ6idk=;
        b=kUU40fHq1xKFmyKu5iur9bqTPpIpq6aYK8dbe4fSqffMvmzCI+hF1o/nfyD1xfUxUm
         IVWy2xJC4PoglMdwp9+6X3Xa/syCZXpMq6L5sQMbDvK/AVDN1tkxHI+olz1YYWGLEk3U
         HveswFspsgoOtUfuVyVScfYfjEWT53tuE/UcyMJYa3wCNBf5EJzbxqhzhCq1yF/DGUhM
         wSMbkvvFRXW25weSZUcI60OVmTI7Oo4ZXzWAIfF90QFzHmUcZR+ZVo6OI3yVovd3d/At
         hwF3XMevFIOXxR1j4rs13050uWdyWcrx4raWz9Fa1LRC8MmNND6kJ5ogloqKAbJrko3a
         JzQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Hi2k1eO8;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Fr8HCCfiTMqiANgNqzv87ZryiA7tDqaS/vw9ndZ6idk=;
        b=Vl2kxySUmMcg613xfYmiviczCeBgZALEoa2SL18lfV0XB/qt51Q/g7qNf3iMp/Fv3u
         Ekem2v+nxHga/X1USBTdF5quu+rM/gw7x9v/n1OHHmB55eezp8u1zchYTbRQOeeLtVSa
         0ikhJh/+eMaVGoTVxBJXmxNokuLzpjbpNU7eWowmtwtewZpGLO3HISX1WZqpjjrnfpNM
         DKUeDWyQDRbV3h4kYIAbc8WVoGaWyLGgkFy1tfKyxlCQDL+PHdOGwX5qt87NgXU7rfBE
         /83x1l72GOuLrmoOIxdWrCtuadBfh8eS9khtvY0CWYHKhsPeiuikJBaWFY/0LVGFUrY+
         OHjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Fr8HCCfiTMqiANgNqzv87ZryiA7tDqaS/vw9ndZ6idk=;
        b=YnTO21cESXzz+w1hIKFmKZFfB2VvQ1376ZXuq2aLsbEXRofHHcitpL7OfM/O48IhBX
         V33w0AXgTxybEw06hVGu6EACdvH+uBXQn+DaaUKBuv4fBKYBEMtHV8cWd3aD1NnDjsBE
         W4R2pHnwFQuzN8qe3WMdo2GxUD70kStlA+bA0La/p7n+cU7YBotTRcEpg/ALHAhBTAli
         pNb+eFvKo0iL5YwDbCC2sEeFZi/3CUb79oZH8PsAbDIVE48fuhz28ZlpSFgzBpHYBuaH
         YyDZ3rh0mNnOMpZE1eQ1TxOGnSvI5lYX9PQ+ncjJaWr4xl+8c9aTPiQNhWs1olKcndpf
         lJcA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531kAP0FgJY2omzvWUIXNeTLYIJ+E6NVu9kW6/aU7FtenDC07N2z
	UBiQ8nyRbsVkH2bCA8dU31o=
X-Google-Smtp-Source: ABdhPJz5+Cve63YPexjaXgm+upoQnM6wBngQCfS6Bs8NjeDhtL1d3HuiXgm4GRZHPF73CM0WXWRQfQ==
X-Received: by 2002:a63:d446:: with SMTP id i6mr9124683pgj.446.1610653277297;
        Thu, 14 Jan 2021 11:41:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:d692:: with SMTP id v18ls3165630ply.5.gmail; Thu, 14
 Jan 2021 11:41:16 -0800 (PST)
X-Received: by 2002:a17:90a:13c8:: with SMTP id s8mr6647741pjf.6.1610653276699;
        Thu, 14 Jan 2021 11:41:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610653276; cv=none;
        d=google.com; s=arc-20160816;
        b=l37Z9cVNJQVssmv/wAzpFFKDHTvRq1YvCBG3wl9XMYWg4wryHzxEMFF9ZPSz08ZWSF
         x1Q5JAFxlWYfmM5W3d6wBAG95rHrN3BM79xcDT8SBho9ezrJb8CLzpaB0nlunnc9qXkp
         d/8koKIvtqYaru+ba6SnoQRt/tLmcPZNe1/0/z9Uq7by39oj6Xhq3FG2/bWxeXcBrojK
         UbwPIz+KRnySvR9Wqq2189nbKx/23ZNe9WI+y5QlqroD2ZuzVMWXTgHM6EvSRDfDUY2W
         +YeAIzYnZur4MK/e5qfJVAW96rBeCgricsJJ5ac+mmK/6rFsyH+e+/fqwFOYb0l6pKA3
         Eo1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=7v+AgLok7W1rAPFBh37lkGQemrjFQX7RYhoYeASbhJY=;
        b=0VWhGCKmptS3ncHFS3Ur+AWIxQtjy7rp8zxq3gWtxD59KzPQGVBo3sikmtSR9TXnAe
         MFJd8fHip/rL7ajK7/6MqCHaxdlm/rQUOHB3kLpioxhKeavI2sNfPU4RvrzRyvaN3QKF
         Da+CPKDKK+oQcK+D5tmEz8cagYit0NJlqLUPwQugkTRrjA7efp6HFAFT2quExnHvYYhA
         jOVyenYIp0fYPnfN0q7Y9q+z9DEyIAq7jECBf+yLb6ihitjlLXssqVZ0GPOolGgKh8Da
         rbDvfxSSI65OcGJmzXLBNeiFSpnkzqkjnoflV3rhERCYni9UkWk9ggyWcG08f+BEE3jP
         YK7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Hi2k1eO8;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id 13si434341pgf.0.2021.01.14.11.41.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Jan 2021 11:41:16 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-32-S3QL8Gg9P8O7BckfOg4e5A-1; Thu, 14 Jan 2021 14:41:12 -0500
X-MC-Unique: S3QL8Gg9P8O7BckfOg4e5A-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 72A8A190B2A2;
	Thu, 14 Jan 2021 19:41:10 +0000 (UTC)
Received: from treble.redhat.com (ovpn-120-156.rdu2.redhat.com [10.10.120.156])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 23F5B10023B3;
	Thu, 14 Jan 2021 19:41:06 +0000 (UTC)
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: x86@kernel.org
Cc: linux-kernel@vger.kernel.org,
	Peter Zijlstra <peterz@infradead.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	Miroslav Benes <mbenes@suse.cz>
Subject: [PATCH 10/21] objtool: Add xen_start_kernel() to noreturn list
Date: Thu, 14 Jan 2021 13:40:06 -0600
Message-Id: <a2df2ed5b5ea0116f4d9ec33f7d74d221a288543.1610652862.git.jpoimboe@redhat.com>
In-Reply-To: <cover.1610652862.git.jpoimboe@redhat.com>
References: <cover.1610652862.git.jpoimboe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Hi2k1eO8;
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

xen_start_kernel() doesn't return.  Annotate it as such so objtool can
follow the code flow.

Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
---
 tools/objtool/check.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/tools/objtool/check.c b/tools/objtool/check.c
index 6636f4fd694a..a430eaacd7aa 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -161,6 +161,7 @@ static bool __dead_end_function(struct objtool_file *file, struct symbol *func,
 		"machine_real_restart",
 		"rewind_stack_do_exit",
 		"kunit_try_catch_throw",
+		"xen_start_kernel",
 	};
 
 	if (!func)
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a2df2ed5b5ea0116f4d9ec33f7d74d221a288543.1610652862.git.jpoimboe%40redhat.com.
