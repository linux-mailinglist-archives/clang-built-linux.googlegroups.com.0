Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBTMVZOCAMGQEI7FTZBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 12E373740FD
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 May 2021 18:41:51 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id a4-20020a056a000c84b029025d788a548fsf1795247pfv.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 May 2021 09:41:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620232909; cv=pass;
        d=google.com; s=arc-20160816;
        b=prupg8TiH0Z/BZhwPmZL2jcAAgac5Ywucva8Fbun4mkesUW6RtDuENCmEoO/se/5Lc
         mEWyDlnbn9APcvse8zfQ8hZ+Pe1LuDKkegkf7Z8MwHh99y5c/69nK76aL/K+QZ9xI7QH
         bncRBlObO4FpVVcZDltWIBnygfd2mFyaMacpiQShoKT+sy+nR4YGW5nv1yTSa9ClcJjG
         sYk5ArdVWRDF4zQXblEI3Sc1UZeIFiAuvBJfqWktCxvIzlzfk4KOgx9eZDVfn52BHBKg
         5EM2SllNQpctCc5FEKEJwl6C8Yq+0JcWG47O74Ap/hPHvYvYCpT39/TfWmUkQUIgWM1i
         cHXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=TxXPPk8q9i5ueTrOHLqT8LIQmwxh9W+112QAoJq5qbo=;
        b=sO75foX24+qiF+sayTOqFkfw4uhW+SQhCv0uH9Dfl4QcjY6h0uSjquHixbq7u/Zc4y
         Oo61p+tjp7vY8n5iJUEa1CuEq+AIeouFkjFqPwxFgQruAuxQHCE6Y0zrYckBtqFoxoPT
         5f7xCB79WXz9fV7pMF/klK3xWFfz0D/PY/Ml8ThoZUEzROvTBmBYT1UjukI8VRoO0B6x
         o3e0i5v/fwFjMXq/ZL/923ihPISOCZcgYQXHjpLKuGmUMkSrrnKW27ksYd/u5Knw61aB
         FFvCYhaghnPnFJqwh00bg1lqKTPc9Ei1AU1WLqUSwK1efi8Jdh44wEs8xQESgobKbPbO
         fobQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=XsP032MO;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TxXPPk8q9i5ueTrOHLqT8LIQmwxh9W+112QAoJq5qbo=;
        b=L+o9mvk0xc1e/ewIQGUek1ztFxWFXnbG0Z7UsQ8DHryF9YExLyqU8c2xaK/8RpEvxn
         5aw53iEPRD0++2K8mKb14X/xNP569wP+ODcH4w7tkqhnUs33jlLq0V9TIn9vCfE604MM
         vnU+HufMNZ8NtfYVWLT6TU/aecqOLJWermDX0YivVXi0julcoU10f2RzO0uuFMN9TVfY
         oLGdJxL5ZAnRG+fsEpbNK0N42C7zOrg7gp9kpdKU2/ACVWXTwHUT5BZ0Q9GzTrPAwd4c
         RypvlBptVQJJkkcI/iferJTYwmaHSlP45RAlfk60p6QIf1yA0DUaqS6Bba27gEsG7zP/
         Ak3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TxXPPk8q9i5ueTrOHLqT8LIQmwxh9W+112QAoJq5qbo=;
        b=cMnwqgB4mwoDanm5vzuGo7sqy9oRM4mLXBh6GqbTR51zhU0eookgRWHUBAk0/OnUIa
         WkM+k7y/hbsX2ReCjcKLCpnOH9xidAGlPg4PI0iigtcvB/oRh5rb2izZuyH/jdkjhLQQ
         LWB0eCmh/8UBCBt6cgvXQf57Z+h3XHk5mLP1XioVku1/OSZ2DIeGt8QOnRwoYVZ24FKI
         adEXw8RS5qgE6mkih37WgI7jxdVB5U+/1uvs/oA7WLiR6EaZlepPajcW9rI5xQx7qZl9
         PBllniL4OGMm7bCacaCJbu0uysSqQFetCzsnekHdq25MUJBMpPOe41ZovWvoI4Tw6vL4
         dndg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533rCd4fw6BiJI1851sOolPl14zZWCdtAMcfbQ7PgI2g/kS0dt6w
	C+2Tc0JYVU4Kynl/2ojbcPM=
X-Google-Smtp-Source: ABdhPJyJuwIB4LBuR8rAKLmFqHGSOtaRkt1lfyjTLyiu/vjTOI1LV9Bq4JByN8MgjsNl8q1zzFEDng==
X-Received: by 2002:a17:90b:786:: with SMTP id l6mr12810965pjz.182.1620232909758;
        Wed, 05 May 2021 09:41:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bb88:: with SMTP id m8ls4148306pls.3.gmail; Wed, 05
 May 2021 09:41:49 -0700 (PDT)
X-Received: by 2002:a17:90a:7185:: with SMTP id i5mr12449739pjk.92.1620232909191;
        Wed, 05 May 2021 09:41:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620232909; cv=none;
        d=google.com; s=arc-20160816;
        b=K4HQ5EdiHr2O+89pLN2HowuE/8y3u0CsoGScxHt5KMCaxFbP01LBGQzGvvDp6+WSAb
         rbAvS8g9YfYTPeHIkqYCHVoxtsyWeKIgT8H8o4Zq/pci8htq0zu+iMs0PC1JT1dIJWpj
         yDQfcZJwHDMjOoopurNZOFwWJg5IKjSuzc/bNDzTO8Te+3aotRJfVFgBp7XQzRqdCc/L
         AUruHQtsqNA3c5waOlUcfaZkRGos6EhARtHW7OkLiQJ/sARISUFuZqcWvbDl1qXu43Hd
         vQ7qGZPfQDawBAxxjmg+lWHAqgR/tLYb31sL67exjSDknUZbG59KiJTfrFJh4vQ1iiaP
         hnzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=M5GQ+h2+DlXOV3zEFFcOQesmJRDZC8wCph6xEvWcGz4=;
        b=i5vpvsJWLpS9XuvJm9oI9yRMlRv320J3w2Bu6lmzWUALF82xoA9BUxGGHO7ag7dfBX
         TV0vXwdhC9AmPyMEraBe6o6rbUf27pPS9yBUpwbBsaiD/jzkwtLH1FvGc1Vb7gt8RlVn
         LT2dx619vmfQyj/JVJk4Cw3aERIkKohcv/3P246piY332svl88m0cU2wMYJFfu7PXoUG
         CIyM3dGEycIWUCGWlaG2IkFW3fJnimhiTSW4VVuFK8zIbuJy8Qc93xM0uNdrFySI2CqW
         5rIH5TywCOgMRof5yC2TbVJVT2qN/nemHlCjCNTFtMn1MaPj9eSEM6O68VroDmLXpHAv
         g6Ow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=XsP032MO;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o13si479914plg.5.2021.05.05.09.41.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 May 2021 09:41:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id EBCFC613ED;
	Wed,  5 May 2021 16:41:47 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Yonghong Song <yhs@fb.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Andrii Nakryiko <andrii@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-kselftest@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 13/22] selftests: Set CC to clang in lib.mk if LLVM is set
Date: Wed,  5 May 2021 12:41:20 -0400
Message-Id: <20210505164129.3464277-13-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210505164129.3464277-1-sashal@kernel.org>
References: <20210505164129.3464277-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=XsP032MO;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Yonghong Song <yhs@fb.com>

[ Upstream commit 26e6dd1072763cd5696b75994c03982dde952ad9 ]

selftests/bpf/Makefile includes lib.mk. With the following command
  make -j60 LLVM=1 LLVM_IAS=1  <=== compile kernel
  make -j60 -C tools/testing/selftests/bpf LLVM=1 LLVM_IAS=1 V=1
some files are still compiled with gcc. This patch
fixed lib.mk issue which sets CC to gcc in all cases.

Signed-off-by: Yonghong Song <yhs@fb.com>
Signed-off-by: Alexei Starovoitov <ast@kernel.org>
Acked-by: Andrii Nakryiko <andrii@kernel.org>
Link: https://lore.kernel.org/bpf/20210413153413.3027426-1-yhs@fb.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 tools/testing/selftests/lib.mk | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/tools/testing/selftests/lib.mk b/tools/testing/selftests/lib.mk
index 50a93f5f13d6..d8fa6c72b7ca 100644
--- a/tools/testing/selftests/lib.mk
+++ b/tools/testing/selftests/lib.mk
@@ -1,6 +1,10 @@
 # This mimics the top-level Makefile. We do it explicitly here so that this
 # Makefile can operate with or without the kbuild infrastructure.
+ifneq ($(LLVM),)
+CC := clang
+else
 CC := $(CROSS_COMPILE)gcc
+endif
 
 define RUN_TESTS
 	@for TEST in $(TEST_PROGS); do \
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210505164129.3464277-13-sashal%40kernel.org.
