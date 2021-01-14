Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBO54QKAAMGQEFNQJWPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E042F6B42
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 20:40:44 +0100 (CET)
Received: by mail-oi1-x239.google.com with SMTP id e4sf2861892oii.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 11:40:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610653243; cv=pass;
        d=google.com; s=arc-20160816;
        b=rK1tVYZ2yYnMdawaF9qdRP1uJR2TUDng05WJ7dL7hal2IQcSiM2wqiK+QK8D8xdC3h
         HJnMHXYuGbdebUikMId/cN2OEuH1sSmfX2zvJkAqMQYN9GqKuC+0ZWE6YYW9rDLw/Kir
         0DnefM5EVWup8Ni+upORESU+exO+D+CAdGSmDdPga9ZTjh2QPiDdO0g5vFnwfudITobX
         79Rtwx8Cdr7Cj/qYqTuxNBJzM+r3+rmMwvI9gARWHY+vSjbdjt4uMtxyeg/KxQctr4jk
         iMKpOVs28+2R3whooxeuVKYGhXvkQ4yut+lceAIXVMXiLAVOqJ/X2uO+Jxcc9BJw9ZP9
         H9kA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=NOJtxy/vuOWlW0cjsrHyEXI5x18FR2IoWGh8ZKuVZVY=;
        b=KrgLQ2NEUMtmZrvq8huGioL5qXkjw/kk0+nmEfSGCjLWnep4NdBol8DgyaJi30rS+0
         nLbQPa00+VZ9c5Eb3G3wGYsczUV4QeuTVgLTQ1X3iaMfOmV8I8a6kBpidWwRS5eIbGGg
         U7jZ+sCKiOUNYMwXju6DiKTd7QU7gQy0tkx3p7Qjn4hhnAN6lb1k+SJ3VoH8own4ltsf
         DgfCseXa8N53xEvcBWR3NA023HsvdqCzsVYefhNDlWqzWDAICIi3Sh1g1caAxo2Fh6Tl
         J/PL5dBQrKBwq11ewzjV+sdBsCP/i8+tn4RwDgvFEi4ST0Jbf/7Qz93hkCuchb79NnS5
         tnyQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=hGWoNWQw;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NOJtxy/vuOWlW0cjsrHyEXI5x18FR2IoWGh8ZKuVZVY=;
        b=GVEya3EFYgKBsgYwKXDtVc66ghEvnuI4yufbgU/L6ImjKpfmlJIgsx55vu+mgAu3el
         xlTmyS3n8ywYz9zcJFNi8URcgU3PXnCkWJOYrTeZd2LuqCVR/AIXrEnJo0A41RpsvA3i
         mHcI/iTkYKdU1H0P5/5C5Pp2NGJpoV0R2Vf+60R/SWn9y3kAMg6490/g9Eb6xEjEY/v6
         sofZHHB+h0NCJfQv7aRk8ZA54Jj66N1X4cMriQIHew1gJexvvKi5EgClLr2iMbLZ7l29
         OkFxOuiqX1OZfARx58Oro1ziqO7NNJZa1m1e1f5n/kyG1DGTZzwr2VdNQqxZoWRmUP9Y
         UG7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NOJtxy/vuOWlW0cjsrHyEXI5x18FR2IoWGh8ZKuVZVY=;
        b=FB+rmYnTRkfcGujYm83mH5+p4JANZIli0tKZ9jzZ55JQYZ6IPsPGMupwt4rClBG96V
         cGRBEyRxxda8f9Zki9yPkGwU1oEW425RcarpDpZZLs481ZuJegfH57gf2V/hk3SwCHMG
         wANT76PRx9TKhrS1Rz5bVqVATsdUeVAvdUBChtXwEvrRmDyTrtT5ndYya6TFTmN8ZePc
         bcGNXRlSxyD6SZ/jmhnwpwua0mwkMspZ71hnnwgkIt+HECYgK+s1JrCNT4Y+3FfhY1FE
         je48jo/C0oF7NGmlYfIYwt1bthswA88mG6CT4+1mJgYr0ivjWMMhU788P4lx3teK39z8
         5Mug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53201qF41fZnEoz1EeAZh5+9dL42LZXxI2o4UjKBqxhIvnC5iAP7
	GdmjAi8G/YdMfJzeU21N1r0=
X-Google-Smtp-Source: ABdhPJzhIup25/V8zqg+3sg68CZJm/TuQN2xB6dXXzZLu4nuzWLpet/bsUZrJKeY4vEiCIH0qFN8TQ==
X-Received: by 2002:aca:ef46:: with SMTP id n67mr3453547oih.103.1610653243468;
        Thu, 14 Jan 2021 11:40:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:24b0:: with SMTP id v16ls1636594ots.10.gmail; Thu,
 14 Jan 2021 11:40:43 -0800 (PST)
X-Received: by 2002:a05:6830:1482:: with SMTP id s2mr5759895otq.296.1610653243044;
        Thu, 14 Jan 2021 11:40:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610653243; cv=none;
        d=google.com; s=arc-20160816;
        b=V5RF8FSguzB6HY0TYptrfK2pfjx0DUrZnJqT9MxhpcWBJ5Co2t8eVVa6lOFcERBDbR
         7mas08qaupqT4doRteuBHsO0amLYC9fvLfU3cuMw9cjgSJNuh8Gtl/nAsWylePHjX+yd
         DD345EiahaKDk3XxN6kYpywjdikJeWADg96OuRu4WUCUHseL9hqvLrFTPc9rnxd8Wuq7
         WPPcdAs2VkDewG6pidV1dngCg7TIpe62w6Iu39VajTzr0WGIGnaylTNd0Gx/Sy607Woh
         78pt6bUta5TwTdbAguRZ4uAGhNKAFjYFQgSq/j2ucD+QTDEu8IPTBBgVz9v4QwcmGzjI
         sUkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=lBDeXWQUPZjMhLISIL6oFj3KEKWrwKhZsqAUV1rIDpM=;
        b=TPZFlyIC1d8ybsSYU+aNGrQ6W8bHYyAlPtx6PFU0xEB7Ly1yjtKSVadoNb7GM1TYwK
         mDTjJfF8ooM0pyYnD5Xg4zMVFbBX5JAkQF1VEqw9zn+Jvr2O6Qkc6pLc22Xx8e8NajvA
         ffbyrelZ90zw2AJOJdPptEEtye0/945DNaDw7PDlx5svJ8O+r0ySj3N6dv8uJIvo5av1
         I/KPLOrydudxCO/KxYNAP+KqjHM938EeiNw5c1Pv8fPPNnJ9gmxCJFhJcwAtiEwzl7PS
         krvYKhvbDmY8CC2VZmMoKtHxiO1zkjnnQB7nTtdYLLfJaEcss33hXyUM72B+mM8CVGQP
         ezjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=hGWoNWQw;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id f20si414123oig.2.2021.01.14.11.40.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Jan 2021 11:40:42 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-306-Gna9NfDIPuCt_iglvM2qjQ-1; Thu, 14 Jan 2021 14:40:38 -0500
X-MC-Unique: Gna9NfDIPuCt_iglvM2qjQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4187B190B2A7;
	Thu, 14 Jan 2021 19:40:37 +0000 (UTC)
Received: from treble.redhat.com (ovpn-120-156.rdu2.redhat.com [10.10.120.156])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 03AE61001E73;
	Thu, 14 Jan 2021 19:40:35 +0000 (UTC)
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
Subject: [PATCH 05/21] objtool: Support retpoline jump detection for vmlinux.o
Date: Thu, 14 Jan 2021 13:40:01 -0600
Message-Id: <c20f4a7239f3b26b3f2f7735e6674adefcb46e7f.1610652862.git.jpoimboe@redhat.com>
In-Reply-To: <cover.1610652862.git.jpoimboe@redhat.com>
References: <cover.1610652862.git.jpoimboe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=hGWoNWQw;
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

Objtool converts direct retpoline jumps to type INSN_JUMP_DYNAMIC, since
that's what they are semantically.

That conversion doesn't work in vmlinux.o validation because the
indirect thunk function is present in the object, so the intra-object
jump check succeeds before the retpoline jump check gets a chance.

Rearrange the checks: check for a retpoline jump before checking for an
intra-object jump.

Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
---
 tools/objtool/check.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/tools/objtool/check.c b/tools/objtool/check.c
index 12d48db41626..b1327789d049 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -785,10 +785,6 @@ static int add_jump_destinations(struct objtool_file *file)
 		} else if (reloc->sym->type == STT_SECTION) {
 			dest_sec = reloc->sym->sec;
 			dest_off = arch_dest_reloc_offset(reloc->addend);
-		} else if (reloc->sym->sec->idx) {
-			dest_sec = reloc->sym->sec;
-			dest_off = reloc->sym->sym.st_value +
-				   arch_dest_reloc_offset(reloc->addend);
 		} else if (!strncmp(reloc->sym->name, "__x86_indirect_thunk_", 21) ||
 			   !strncmp(reloc->sym->name, "__x86_retpoline_", 16)) {
 			/*
@@ -802,6 +798,10 @@ static int add_jump_destinations(struct objtool_file *file)
 
 			insn->retpoline_safe = true;
 			continue;
+		} else if (reloc->sym->sec->idx) {
+			dest_sec = reloc->sym->sec;
+			dest_off = reloc->sym->sym.st_value +
+				   arch_dest_reloc_offset(reloc->addend);
 		} else {
 			/* external sibling call */
 			insn->call_dest = reloc->sym;
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/c20f4a7239f3b26b3f2f7735e6674adefcb46e7f.1610652862.git.jpoimboe%40redhat.com.
