Return-Path: <clang-built-linux+bncBDYJPJO25UGBBMX77D7QKGQER7SHWGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 586A32F3CBC
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 01:32:51 +0100 (CET)
Received: by mail-qk1-x737.google.com with SMTP id s66sf110415qkh.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 16:32:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610497970; cv=pass;
        d=google.com; s=arc-20160816;
        b=yCuTmX327WWQubRkXEdlIeqoxNbeWMX0DYAaXII6jO1vspUmtWDdyCv9tU1WF5omC0
         oaFLNg1Iwq3ziFfuWvZobm+3YS+4iRXO4CKkWLLdc81QAsx+CzB32/WjoP0D90mYPYV1
         jWXGl4a1sZJopegT+OeOTK1xh9m+0N7BJvfmnkJns4IR6oB66fTUhPhIFc0yrKGo4+vs
         DEoZCGdpsbVqTxRJmgZwhJAarca6Pqo7ESrs7WCBLTS5uF+BdTTOIJtrf5CaPux7A/jK
         bNgzGOhTWNysfKvsD8BZbWg3Jkp8OsU9/m2s5j7AIbzlmhKk5CsIPq9gHM/EaFInLGM/
         wI5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=Ll+PYuk9P6Y6zLT2E+l1x/0TzXEg0FS41sz0Xl2QkQQ=;
        b=VwxOzwZmUNpF8xC3OUBbCBJYilxVqaWembMRTw0r3fLGz11zyGL1Uj/CmttOKra145
         3C3Unn7ur7hrkXEkODtN4hKlGt9FwkHuCI6Yvdn21tOKlKFsEBHNDgYK7CmgMPM0y58W
         30HzpahyL2KvHT/VcgtsLvJ5VCI3aUlJTA+/t4ACj+45t1em/GfoCifD6qJ8XQXE8a0m
         eJ69aTGwRePZu9GX4Qdqby1GedctervdHra0O4MJ4gBiBf7+NFAe/5W9/XaprW0S74Oo
         Mn+cKhx2jpUeqvYsirIlxyYPufHqAWqRKiXpGjIKd7Ovai6nqMX8qCWG79y/GjJBIOQt
         0Wog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HZ1OdG3A;
       spf=pass (google.com: domain of 3st_-xwwkadazpqemgxzuqdesaasxq.oay@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::1049 as permitted sender) smtp.mailfrom=3sT_-XwwKADAZPQeMgXZUQdeSaaSXQ.OaY@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Ll+PYuk9P6Y6zLT2E+l1x/0TzXEg0FS41sz0Xl2QkQQ=;
        b=eColS5IjS1v/g2pGdifDwmF/jQpUmkwGQHely7TW1FRmUmJhlvutg0ycFHyxYnR/6m
         NW+xFLMNPslYRQ9YlofpuR0KjUAt9zDCBjzw80htaz/6DVR6pZW6lljkymXHC+ECQHI1
         Ldz3dEdyJ6JxCVLzCceozrPxn2nuTC69XFl2qjWpWT2eyoO9P18vcQ27ImgeGjzIkDPO
         dsaLVclT+2R5VrOjy9ljKOAdv6txKqoAnTRvHuwd27SGxFCJ9oTQ895nBv2UJ+nYnrik
         OWyL0P9ZjzE1+t8Sas82BsC6alIR5QLtOMnZXBvWEVC2XJurZQd89iqQmJnOudsGRf2P
         gVdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ll+PYuk9P6Y6zLT2E+l1x/0TzXEg0FS41sz0Xl2QkQQ=;
        b=WFa/9aLarIk6b6Q8judea7V43o0062R33dfYmc5u5IXdeiBxT9pYJ6IcabVXEmMAos
         M+FWK9+s5sa0MRMFpPzeuTsbDo6MWpoyMwzkbPi/4gLHYq+/iBxzAwjSEi7DyWykAoGo
         B4wfLoZOLb188DnqxLpr8aEtAUdXPDpxhLVcBBe2V+pfOfviJLnVJfVd+pUrPjjhSin3
         gL2DIycaUeZczO1hZ2nLFNr4WuraTsy6MVwGuqWFYuTvIOQyFaKNtDnzMEDFOU4AdUab
         65oy1Nl87Qb7AAvClVMV49D7Jf8ujlw3JN9kGLhthaf3FbCn3OR3MywryRqFpPEgpN3b
         Targ==
X-Gm-Message-State: AOAM532zER/3EY7uLir81akJ2l6U08F8VWzSlcdED4o/nkG85LDhLv9t
	nMu7Vvsr73ynzNhjwyyNqnE=
X-Google-Smtp-Source: ABdhPJxHTZr7m09f5mqCqG40N0EMgn8BXPFOk9owpQv6LisxWuVncGqFf9w4oGyBtklgst+E6hmCNA==
X-Received: by 2002:a37:6790:: with SMTP id b138mr2219171qkc.465.1610497970475;
        Tue, 12 Jan 2021 16:32:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:242:: with SMTP id q2ls274349qkn.9.gmail; Tue, 12
 Jan 2021 16:32:50 -0800 (PST)
X-Received: by 2002:a37:e108:: with SMTP id c8mr2359872qkm.305.1610497970025;
        Tue, 12 Jan 2021 16:32:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610497970; cv=none;
        d=google.com; s=arc-20160816;
        b=BEFAmDk0MCC7nysqMaoWGSkWdGWLpgZJWF6MaGJrkyNKH14xq8KXDqISUC36CYTT7L
         F0Pabe47z8Tf3rOnAkq0sbVtEnkwcxyxdTepceIr7G1QjAEVTZgNTHGnQeF0SWR4HSa+
         PG4yEkH7KHNZKbxTnQtqHH+fCG+Vk8Ys19UUj+Cg6IwlkC9EYAILf7pyBd6w4NtyMki7
         5yTEzQXNyjf87rACrzSfmgzkC7NAxLkFoaUjrhOyD8HhKYzce85V+XkQ4kBOs+NKbFsK
         fzLS2tXZK7gaXcND/uZftFb1FlS6VkcEg08AM+lwwM1qXcQesHABRFQuvYeY7eXN6tds
         d5eA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=dP6j6wcQj1tq0vOLcWGfFHo7iRnRUUl3C2I4O7J7Ozg=;
        b=pZomfjo6D7G96HEY/03muPNLojMChTePRDXvOBbvREm7e0hzTjnRn+mLFbjtcR3e9F
         gCnUOpmKYwgZzoou/TVU+Gg58ZmGT1x5c5Zfbx/jESoIp6dr04Psv8PfOw1gwVuKr3L5
         cfcczKYo6f7taB2MdIDvXbqtbCWxRu+V4ChJnCBwst9rsGK3KJQvlL8NGWcx0E5mtQSi
         lFaQYUQNjntalPXCE51xz9n0BEySptWQoLSa7JUPElqYH4pEH94TpQ7xMYZBJVtxVVPM
         dciH0qaJuKxoOOwVs0pfuWVWdjwHgFyEf6GfI2zyshthRE+bVvYwc0CophAQ9yty6OEc
         Su2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HZ1OdG3A;
       spf=pass (google.com: domain of 3st_-xwwkadazpqemgxzuqdesaasxq.oay@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::1049 as permitted sender) smtp.mailfrom=3sT_-XwwKADAZPQeMgXZUQdeSaaSXQ.OaY@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1049.google.com (mail-pj1-x1049.google.com. [2607:f8b0:4864:20::1049])
        by gmr-mx.google.com with ESMTPS id z94si48819qtc.0.2021.01.12.16.32.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jan 2021 16:32:50 -0800 (PST)
Received-SPF: pass (google.com: domain of 3st_-xwwkadazpqemgxzuqdesaasxq.oay@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::1049 as permitted sender) client-ip=2607:f8b0:4864:20::1049;
Received: by mail-pj1-x1049.google.com with SMTP id c21so62818pjr.8
        for <clang-built-linux@googlegroups.com>; Tue, 12 Jan 2021 16:32:49 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a17:90a:ce0c:: with SMTP id
 f12mr301315pju.89.1610497969060; Tue, 12 Jan 2021 16:32:49 -0800 (PST)
Date: Tue, 12 Jan 2021 16:32:33 -0800
In-Reply-To: <20210113003235.716547-1-ndesaulniers@google.com>
Message-Id: <20210113003235.716547-2-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210113003235.716547-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.30.0.284.gd98b1dd5eaa7-goog
Subject: [PATCH v4 1/3] Remove $(cc-option,-gdwarf-4) dependency from CONFIG_DEBUG_INFO_DWARF4
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org, 
	linux-arch@vger.kernel.org, Jakub Jelinek <jakub@redhat.com>, 
	Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=HZ1OdG3A;       spf=pass
 (google.com: domain of 3st_-xwwkadazpqemgxzuqdesaasxq.oay@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::1049 as permitted sender) smtp.mailfrom=3sT_-XwwKADAZPQeMgXZUQdeSaaSXQ.OaY@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

From: Masahiro Yamada <masahiroy@kernel.org>

The -gdwarf-4 flag is supported by GCC 4.5+, and also by Clang.

You can see it at https://godbolt.org/z/6ed1oW

  For gcc 4.5.3 pane,    line 37:    .value 0x4
  For clang 10.0.1 pane, line 117:   .short 4

Given Documentation/process/changes.rst stating GCC 4.9 is the minimal
version, this cc-option is unneeded.

Note
----

CONFIG_DEBUG_INFO_DWARF4 controls the DWARF version only for C files.

As you can see in the top Makefile, -gdwarf-4 is only passed to CFLAGS.

  ifdef CONFIG_DEBUG_INFO_DWARF4
  DEBUG_CFLAGS    += -gdwarf-4
  endif

This flag is used when compiling *.c files.

On the other hand, the assembler is always given -gdwarf-2.

  KBUILD_AFLAGS   += -Wa,-gdwarf-2

Hence, the debug info that comes from *.S files is always DWARF v2.
This is simply because GAS supported only -gdwarf-2 for a long time.

Recently, GAS gained the support for --dwarf-[3|4|5] options. [1]
And, also we have Clang integrated assembler. So, the debug info
for *.S files might be improved if we want.

In my understanding, the current code is intentional, not a bug.

[1] https://sourceware.org/git/?p=binutils-gdb.git;a=commit;h=31bf18645d98b4d3d7357353be840e320649a67d

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
---
 lib/Kconfig.debug | 1 -
 1 file changed, 1 deletion(-)

diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
index 78361f0abe3a..dd7d8d35b2a5 100644
--- a/lib/Kconfig.debug
+++ b/lib/Kconfig.debug
@@ -258,7 +258,6 @@ config DEBUG_INFO_SPLIT
 
 config DEBUG_INFO_DWARF4
 	bool "Generate dwarf4 debuginfo"
-	depends on $(cc-option,-gdwarf-4)
 	help
 	  Generate dwarf4 debug info. This requires recent versions
 	  of gcc and gdb. It makes the debug information larger.
-- 
2.30.0.284.gd98b1dd5eaa7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210113003235.716547-2-ndesaulniers%40google.com.
