Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBQHZQGAAMGQEUS6NBAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 715722F6746
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 18:17:53 +0100 (CET)
Received: by mail-pf1-x43d.google.com with SMTP id 15sf3761117pfu.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 09:17:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610644672; cv=pass;
        d=google.com; s=arc-20160816;
        b=R/v+SHyCglH03UOG+OyOc2Li6vU03rnH0gyDjaIenAwoi3LONvDXYmxN1a1iby0+8W
         oGCmcTDMJ1lXONwVXjVm+y8hqyHCfcAanLnJv77K/otjQaxD3KIv+dQOW1C0jNBc6jyh
         kRYQFgBTwIc57r/hstvdHWG2PHrLE8AfFDBhLhKA54oaHj62DbXFULx+BKETCk5Lw67K
         Zhm1N+zyM8ZUwbD+F7pMiFdvin+W7igh0pbHBiqNWgjmeMtBHNyKEMzaQitIUFEJFBj3
         Sp93Zeo7xAJ2msz2+UAA5Anw5Q0BnnTjj52y4byeUP2Cr3CNiJjad4mu7FamUUS6Fj3U
         lclw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=dzf+v1btblLiTSQH0HAjfo7616dVOKuqUlHpVn04Gqg=;
        b=vPAuMLIFai4aNnRDWZBptgF+UtHVWb0HGaxV+SsLxvSJbs1PhkmpGcy/TbW/i7enL9
         uRt8qfKgJzeVbWlqWywIp3zDm07hXxxJXxR1CsYjef9/kDArjhGMooZeiiZk8XcMTh1g
         K4JOzrp1B3xKRW9CXIEgThpUQD/cA906S+DYW+NX2hwe25qhMNsuk3fzpMCmeg/ZZdSr
         XA1iDARdCLxqpvuN1fRqcKHMMsaG4Bk7EXylqB42SjfkrBw6aevHqIrSge2IjJz/HQd6
         wNeZ5P7fGupt1g4gt14FsR6/Vh9QXr9oRa9j8UhrvXDqFdSu7L2s57pVgIqeD63S+Yf8
         wYoQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sH1F492G;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f35 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dzf+v1btblLiTSQH0HAjfo7616dVOKuqUlHpVn04Gqg=;
        b=Do5ZV23SOozoD9A2rpg1FoHskbYnKKeklNusjgCRvSVdDGesAkM2cytRHxoqG9M02I
         wcKUsPYEAV/S511YxvYvoLZj+3OfMCe9Whyb3RKvQV1NObSRPUMEfLU5JvzqxuHybk/j
         TH4ASZSQl1bFhEh2C1PkYq3b9735s87SbaKMRqjgN4odI4SIktw4KN/lAHKGLjaxcRiC
         82K65529O9OwzF1JD90bXToDS6EF4NoJxlGIQSSWpCOV6SFuqAV0qwGm7WWBIf1SSOlO
         o27eNyiNelcPmFAGMNg25sblAhBYKB4EjjJ43/kWlt44MCPHIi+tEMvIwoYWc32GRdiu
         GzHA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dzf+v1btblLiTSQH0HAjfo7616dVOKuqUlHpVn04Gqg=;
        b=MPWQ/XQChhc2Vz0bYX5MujS7qMyZ7trW/5SSwLAtBlHYkEdDBObnj0zg0MMCWmpDtU
         aQrR9lKe8PKpm6zyugIa/0ZI/fdON9M7GZY7Bm97/u+H2LF+9172BbeX7IsmMhj0SKRQ
         6xo5GYxK3iuLkMzaphkp0ZU/0r9Z2vV0D7Fq8uF16/hIQs05aWM9ToroQ293kx/yrlUh
         qPE5CmDcc9mAkSpeSosOk2H7vgtfW9ORDWYlsc1hbMSxGRr0UIRiSpUUjltTItq+XQrA
         rt+CxCgwQbsexfLflnz45yCrKlqCRi7e5FhygnOWdA5YW0LrytW+jdNpvz33sTiIPW98
         ss6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dzf+v1btblLiTSQH0HAjfo7616dVOKuqUlHpVn04Gqg=;
        b=MrDCrDKkRvaYuItMJtrQvzmE3dNx8rCNAb6GZ94BFHLIhy0ofFlWjqxo1oxViEW+rg
         BHQpvnt6kv2xPoY7J6CqinPI37F2NT4/svFBIp282F2PTMYG5XXsRwChG05yaN7B+mqM
         f9zauxcZil3ALPZke67tyNQApCcVI5VtI5PhfvL00A4sve5ISGRkSCbcjJccpOdeShSL
         EG5n1TB5HZ0qDp5w3RFvAx/EPBLoc0ZkJIGNLVw1MCejccf9z2GVNbcICpI3VySwos4Y
         hJEu1QsIm10EcsWblDdWRDVr+8zNyhtGYkrvVdApca1vHkKVDVnbf7qMNUM/jiSugm88
         7u/g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532KSlyI6cSx+6UFwm/4li7rj2EI9257QA5ViXeui9qNaFUk9IXx
	2eKcudrWugT3KlQOHVgkPuk=
X-Google-Smtp-Source: ABdhPJymFpXLKKRO4vp8K8QyM4pe7vzJveAnjt+aMwcAos/7OJAUQHIbxUL83y7pI2ameZRJiO/zwg==
X-Received: by 2002:a62:14d3:0:b029:19e:88c0:8c67 with SMTP id 202-20020a6214d30000b029019e88c08c67mr8196886pfu.69.1610644672226;
        Thu, 14 Jan 2021 09:17:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ea89:: with SMTP id x9ls3023266plb.2.gmail; Thu, 14
 Jan 2021 09:17:51 -0800 (PST)
X-Received: by 2002:a17:902:7c04:b029:dc:99f2:eea4 with SMTP id x4-20020a1709027c04b02900dc99f2eea4mr8562711pll.43.1610644671588;
        Thu, 14 Jan 2021 09:17:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610644671; cv=none;
        d=google.com; s=arc-20160816;
        b=hqjjPTY9YJXpO7icnSsj0WlFl0wurfQnphcGiWp51u3ng5SfE0E7IETV4lr8O9UWwV
         41Y0xsiRNogjSdjAWg/YXSIEC8l24E12jL6LoxIyGX6pp/ZejUEt66ip3ekaalPugQax
         bHcyFsSor0Nfi9PJecmEH0lASpqy4wt/Uqrgkuc/VcWS/v6hH0NAX048MHdktl6cUBCf
         hm4DGflFWErP8w4QOVyA0CDH91S0MZU3OI0d8QU2aza6XNakWQRjtv5KrCtQU1g+GOwp
         gmm6huzZw+XbQuoLL2tkVGltRNhXKaxHSSZkN6JucRcKVO++HByG0vjNeQggzQO3I77r
         76/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=rLcBppnM0ZASYq/J9hvFFWbJph0iUmsiQatVdfz+NG0=;
        b=zSbqWCMQmOUfnxXSRjjIAyvysnbEyJkAfu+78VT077sN+lxjPZsmy1X7dexQ0OBaGG
         3dvhJz+990skyyk23TAdsiieaGHDmZezJQ5IDt3PFsFtbn/RYYBmnlNM6z78/A3zGJhU
         e8IXSbAkNkwenyLyEUNU5iYFf5atsmYw/DIZAAKg/SAzzpYIGjBUNDPk8SeTJ4LLqQaD
         ATNteGwhhYiKVioFjbIsscvElPF6d+aDb/JqHSFBZBES7pyKgaCK7zPq33QAmtFcH/uL
         FUzWR1rxsEq8ztSOxiyo4GzHieyjBqDZMKC64zLepCWCK2SM5Q7LsU1BQfhlRBnofavf
         KimQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sH1F492G;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f35 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qv1-xf35.google.com (mail-qv1-xf35.google.com. [2607:f8b0:4864:20::f35])
        by gmr-mx.google.com with ESMTPS id b19si375404pgh.3.2021.01.14.09.17.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jan 2021 09:17:51 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f35 as permitted sender) client-ip=2607:f8b0:4864:20::f35;
Received: by mail-qv1-xf35.google.com with SMTP id h13so2649640qvo.1
        for <clang-built-linux@googlegroups.com>; Thu, 14 Jan 2021 09:17:51 -0800 (PST)
X-Received: by 2002:a0c:9e5a:: with SMTP id z26mr8232837qve.2.1610644671008;
        Thu, 14 Jan 2021 09:17:51 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id r15sm3332289qke.55.2021.01.14.09.17.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Jan 2021 09:17:50 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH v2] MAINTAINERS: Add compiler-clang.h to the Clang/LLVM section
Date: Thu, 14 Jan 2021 10:16:30 -0700
Message-Id: <20210114171629.592007-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210114004059.2129921-1-natechancellor@gmail.com>
References: <20210114004059.2129921-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=sH1F492G;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::f35 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

The K: entry should ensure that Nick and I always get CC'd on patches
that touch thid file but it is better to be explicit rather than
implicit.

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

v1 -> v2:

* Omit scripts/clang-version.sh as Masahiro has proposed unifying
  {clang,gcc}-version.sh into one cc-version.sh:

  https://lore.kernel.org/r/20210114042420.229524-1-masahiroy@kernel.org/

 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index cc1e6a5ee6e6..8036a7860836 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -4313,6 +4313,7 @@ W:	https://clangbuiltlinux.github.io/
 B:	https://github.com/ClangBuiltLinux/linux/issues
 C:	irc://chat.freenode.net/clangbuiltlinux
 F:	Documentation/kbuild/llvm.rst
+F:	include/linux/compiler-clang.h
 F:	scripts/clang-tools/
 F:	scripts/lld-version.sh
 K:	\b(?i:clang|llvm)\b

base-commit: 7c53f6b671f4aba70ff15e1b05148b10d58c2837
-- 
2.30.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210114171629.592007-1-natechancellor%40gmail.com.
