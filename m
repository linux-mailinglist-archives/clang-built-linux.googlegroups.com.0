Return-Path: <clang-built-linux+bncBDYJPJO25UGBB2H2RP6QKGQEPXINYPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 26E5C2A6DA7
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Nov 2020 20:13:46 +0100 (CET)
Received: by mail-io1-xd38.google.com with SMTP id b4sf2279982ioa.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Nov 2020 11:13:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604517224; cv=pass;
        d=google.com; s=arc-20160816;
        b=QJjugXb4pEJK+XrN+F80AVaGc2JhnH5rqZWQQqgXFVeP+OKlmJrhoHPFct7lH9bArP
         8vCWEv1S27V9cer3n9yDPFJlaBPHfhNpV3u0yGkwd/Uwij2DdC93p6MtZRuKaMX5tkM3
         f5hIYiIQIn4XM+gARJe0noeY9wuziclWLDiLVzJOis7c5Uc8xd+nN47oNMJQEAiB6asv
         tMgVMjesxE6HWNbx6veyM0A3mkf6Fv0OPq1uM4O53u+bXuB/0cjq38p9isr70xaCcUSQ
         aaIfKfN46SAWllo61ABOU2dw/Bb1ywVXx5M2RCVrXjFZZhJkAVe0HUNmNHNskLDwwQVP
         y/rQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=MxzAul0ofMXkfLCPXpzxFFAPgl3MesHHGnHndS+l9sg=;
        b=l784/sn33eoJYhDxPHf9W1p3P7DUOanDcoNFUNV6NwNNDCQzgefh8IG9fwIPGufxNU
         YZgTmeo4xvCHMSjxaWDOH1IHrXl9hEEGt1b58qG6YU0xUUGzNMAlQlvBMYUjJnFFq5Sp
         1urmWKIKKBDyayO2a4TvKHirQLt4U2knesnMKuvBCJApa3sGtOWUvopYMuc9kf4xkXFZ
         jMng8nr65GxRkPeAKlaQEIkcvS4iaKRuCsiMl7akKw9TyDOK19kr8ncrfirWWJRlrdD+
         +BqWyf0TWn3j4u8LpvGn59HdVJvKoW09UvvIrlrTnL0p8sp26heOJN3ok1f/drHTiAOZ
         v1zA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=J8L1VcQL;
       spf=pass (google.com: domain of 3z_2ixwwkapafvwksmdfawjkyggydw.uge@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3Z_2iXwwKAPAfVWkSmdfaWjkYggYdW.Uge@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MxzAul0ofMXkfLCPXpzxFFAPgl3MesHHGnHndS+l9sg=;
        b=lilRtAq7L6Kn2YKuGvt2Jl5/rva9wb66rgXQ3iX4fAucX600c/cEZSMz0u5JBkexLz
         JkDWy3xWKtSvw8mHhjZmgrsK+LQTkSHXREIaZFfq9Y0leVGJ0gsWIL2RpRvszdHFefE7
         KeUDS2Ybn9WRHrVSm/vQAtPFw6c2tKR0qWEmPTo4HDDx7CmAwURq0ZKGqvRU397K9iZx
         r+6xICEGzRw4dQbJZKjZs0F/99PexoETpfig/0zVeybcJXTTD0kqOaM6uqEo26SKskI5
         nDlfZ/6uqFQkMIzMyURrBw9cM8Odxz4S18PJCzVjpZC4g3rkGVubtlxOK3SRz70n0eLS
         7aHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MxzAul0ofMXkfLCPXpzxFFAPgl3MesHHGnHndS+l9sg=;
        b=kCw0DKc/bZYlM68Vbl4ejWrb3DOdoaf4uHluJgXtH+7xeZsVFMY3rMM2XHgBoyi+I9
         1w0I8mGtqN0haDA8M6quVnDTus40Mt30Oqeg/RiGWUJOPwxlQaZmOtH7NJxQ5qv2/gGC
         Duj0dXDvjIc1Wu0f3HbMVdi/WiEM/tE+nohpDKUz0DqGEjuydvQX59yo1l+U88s8fiKH
         cO3M+OTqL8tw6ekAVwd1ylVqvNgLe+EFzQN1KCPmBhvvXJ7jUgWZe/n7zvOpUwhW+zO9
         gb9xBUN53o21PFwNx5U+piI5XZZsmgW7XPHKUN9vc0vGAUMZjf0jCJvzFFKnaIV1lsVH
         XUNw==
X-Gm-Message-State: AOAM533gpZLhWGs1Rdsb8tqvS/26NnfGovWcmf6JMhFmBA0rJsj4xVib
	wKkde5B0qTuz3XjNlRYL9DA=
X-Google-Smtp-Source: ABdhPJxPIx2IrVXpCg8bBbqAnYFePvACDJ36Q6a//XVge1XEpllLNiY3yS8SRhAdvdYJfunSLGGNyg==
X-Received: by 2002:a92:35c7:: with SMTP id c68mr7879349ilf.251.1604517224723;
        Wed, 04 Nov 2020 11:13:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d247:: with SMTP id v7ls669328ilg.0.gmail; Wed, 04 Nov
 2020 11:13:44 -0800 (PST)
X-Received: by 2002:a05:6e02:928:: with SMTP id o8mr19910045ilt.47.1604517224258;
        Wed, 04 Nov 2020 11:13:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604517224; cv=none;
        d=google.com; s=arc-20160816;
        b=Db1rVEmJBO65zJ6lsf7qIsXli/rK8WXuDxuWVZWMF2CLt7r0COtldV/QevnnWxWtcJ
         BXBXOxSYDzyjq0Z37HGYCk4mGN9owVFWkPCzx2FPnW1lR1x7JBeFewqaQitFbp4wqEtm
         uNH1UNFHTRNNA4GfZ87rvmQ6nh6du9u/6FjwTgHeY8CtNj+ebj7HQ91IkzW66L+v6JN7
         B9G97/l3aQrO7kDYm8Wx4EXUYkCHOxYDb+EZ11dh7BuGoscEWHk7FhHLl21DP6kzLeFQ
         LnghVzszhvcRDRwthMkVkCBnWI8DPKcNEfGbcJAqL1hfq/KsZVFOO5GCF66SQ3Y0AHlk
         irSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=uYTChtPoUZn68QnU98ObMvhC9uF9K4phW3blmsNr5ng=;
        b=S5hmtoatCfNBlTy5rlBKxWK1mzgpwTnH2iEOPASeTFSJhkGyoLGUkvbCkikNmvbkA7
         oy5gmqehndc+ib7m60x4nnd8HK/rJ7LtJIYyv6OzSPzL2Tjxn3iVuhrOG6sUgrF51MuA
         pmIGyD4Xav+26qX2pkIlhJpm7S2QfyisoyFnlOeVdfUKQeL/iJPmtLTlo2zkeGuJQib2
         g2kLs6qEMEWYBs8WSso9u1dKByx0Wt2Mz6HnEOCsT92BOVet1jBW9YLfPbkUKgntcE6o
         2YZzCce/5NCqo3SW2b/KUF8eEFAbxGZbLzN04TU8zbWsFeETM8Lifvvo9yQgs1QK7yX0
         MdIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=J8L1VcQL;
       spf=pass (google.com: domain of 3z_2ixwwkapafvwksmdfawjkyggydw.uge@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3Z_2iXwwKAPAfVWkSmdfaWjkYggYdW.Uge@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id s11si238443iot.1.2020.11.04.11.13.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Nov 2020 11:13:44 -0800 (PST)
Received-SPF: pass (google.com: domain of 3z_2ixwwkapafvwksmdfawjkyggydw.uge@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id j10so22300277ybl.19
        for <clang-built-linux@googlegroups.com>; Wed, 04 Nov 2020 11:13:44 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a25:ba4c:: with SMTP id
 z12mr36344394ybj.366.1604517223782; Wed, 04 Nov 2020 11:13:43 -0800 (PST)
Date: Wed,  4 Nov 2020 11:13:34 -0800
Message-Id: <20201104191334.393972-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.29.1.341.ge80a0c044ae-goog
Subject: [PATCH] MAINTAINERS: mark LLVM as maintained rather than supported
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=J8L1VcQL;       spf=pass
 (google.com: domain of 3z_2ixwwkapafvwksmdfawjkyggydw.uge@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3Z_2iXwwKAPAfVWkSmdfaWjkYggYdW.Uge@flex--ndesaulniers.bounces.google.com;
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

Funding secured.

Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 721fa3aa62d0..165f580586aa 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -4274,7 +4274,7 @@ CLANG/LLVM BUILD SUPPORT
 M:	Nathan Chancellor <natechancellor@gmail.com>
 M:	Nick Desaulniers <ndesaulniers@google.com>
 L:	clang-built-linux@googlegroups.com
-S:	Supported
+S:	Maintained
 W:	https://clangbuiltlinux.github.io/
 B:	https://github.com/ClangBuiltLinux/linux/issues
 C:	irc://chat.freenode.net/clangbuiltlinux
-- 
2.29.1.341.ge80a0c044ae-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201104191334.393972-1-ndesaulniers%40google.com.
