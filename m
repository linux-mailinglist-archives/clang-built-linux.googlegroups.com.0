Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBCE55D3QKGQEJOEMITQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 331E920CFDF
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 17:53:45 +0200 (CEST)
Received: by mail-oi1-x23e.google.com with SMTP id b188sf3729840oia.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 08:53:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593446024; cv=pass;
        d=google.com; s=arc-20160816;
        b=exe42V5MbKaHw1lrTrlmpShjeUiOVrCuYHWCwdzHM/ri5QCsqpUZuXAyqSKCegtqMm
         6vGeECto7952osSEuyHf0l+AP2Dsc1jmk7vabBs+mRho+3zt2fkbP6JUNlcoGWU2Foz8
         BTcqB2ZVUpbYn46Q1tJwY+MyFJEad0sdr3Jrf5qT7C4kWwb9yvEVDD/Of9FFzO4bHb5i
         FqxOvUzZNrH+NAI70KvLs5cuNlHSuB6k+25COVz9QGvN2VHt+RYodl56uUuu6nNuvmqp
         EwEsKJMOqH9BqSIPYjSwIeuA3y4Hjmpokbu/Zk1mfN5WcZPx2PIugCkH0UMQhkOdlfn1
         +/Ig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=bLApYPbSp5ilRdumy+8CmPn28Jn9iSoc6dBjfA3oz9Y=;
        b=qlehyNIkPQpKrIfW7PaEuqpvLFXJqbabx3ygcIUjC623Lo6CVN577OIKtM5FOq0XPu
         snYfELWZMHoSe+pYOqCmdT2QJM4wxo+1AYQPUskOysiid9GqxWxaBL41XAtJEhj62NDn
         yZruUbvd3ZjUFZwAYpBCudW0U1T03gXVcr8n0XapadIlCHKRdQvmzPPrwzCYsPlDyi9o
         uPwHr/45vA4tAHpx0F07GnesJOLneSK36HOZd8nBoyB4fHmR7O9sj0EXBvlT58qFxgCi
         +F2SNAtbM8MrtHsXfGMsm5Uj6fXWSz4FZ5e8EYEucE0VbljIv8N+dpWQrbfMgDTU/O6I
         Nwsg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1ExlE0IO;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bLApYPbSp5ilRdumy+8CmPn28Jn9iSoc6dBjfA3oz9Y=;
        b=j1RcrYQAiYp17xKKj2v63RWhYyx1+U0a5/e61cdekeEZ/Sq3o5oAZtnJbxKVGbw10J
         HSACDlGQhM2OB0eJnnO/Khd2WJ7wx4iGRSNBtAnmTH1oEcaltFhL2uSJF6Z/LbBHzkeQ
         GrTq8GF+OcJtepF4haI2sKZtOHlr8m1/I5TwCA+3k85MQnrDDbFcYtJfhQH7CRtWbekR
         x6ZVKmyc9mTWf7ydPtLf73+CWXMCdlFn0vIRYWE+koLEEvu7xMwcShgcaH7zKO/ihP/V
         1NJOdkd8qQpFKhTyBBQesJycdQKqvs2OMYa0VNYLh9lykYj3FhSaRWRNxlrZQwX2WOAl
         UFBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bLApYPbSp5ilRdumy+8CmPn28Jn9iSoc6dBjfA3oz9Y=;
        b=AsoMVBbohDwPLM4t6eKYP00tx3F5+ftBJVx+f/YX+ggEUBbnZ6LDQ9HU90LQ/rMUUE
         WANJp3jMbXeyh34/e8EO6XqBGMHPm1WyNnsautNIw7aoQvpDIKaUcstITVT/TUWqmcX7
         wq33kInUFgMbyvwwTySwoBAUt+vRa+cBi+n/9jKE+rC7mMR7xiI4FKwdtxw4kpW9H3+q
         jLOKN3w3PUzGPomrR7v0xZGae25TaUZHamsEqG5FMZY2C2K3hMHLeoPtMh6jeOZgL4np
         suVLpA+GEzuhLvdzSunSoEyGbPUMozCVSwAwVTSQSyJGLruSi7mVd3aqISQL0R5P66l9
         R2fw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533NOpo3OIIgb70VxmC51RV2rtjU+qWLrEr/IufuQdKFMOiDRIN3
	wEahpHn5zx8DDpSWgdIdbfA=
X-Google-Smtp-Source: ABdhPJyxiwZJHZlSaEuC+jgpuqQJPjP9b5DIQBq/05ZOo1kF6j4sKKmH/GTB+p5yF0P5975ZXxWXVw==
X-Received: by 2002:aca:3254:: with SMTP id y81mr11432202oiy.152.1593446024157;
        Mon, 29 Jun 2020 08:53:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:19a8:: with SMTP id k37ls3619324otk.10.gmail; Mon, 29
 Jun 2020 08:53:43 -0700 (PDT)
X-Received: by 2002:a05:6830:1be2:: with SMTP id k2mr10240283otb.199.1593446023852;
        Mon, 29 Jun 2020 08:53:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593446023; cv=none;
        d=google.com; s=arc-20160816;
        b=RFyg2TqUuFXn5YtWxYfUPegvgBB/svWdaK9/yfJLxFTXY/LgEMZv3Cfhynn0f8/aQ8
         RK9pm2Pg5GnYL9p7S2KC3eQ/iILT+dDw5U97auDmkuJEhvrIFZ8/9y5n4KfFVj7rFo5O
         m/m8yY4qJ12FiR06HpuN4lROVwAllxrgtGmzdZ8Oz0BlC2i2Xqr+3DmVak+8qmPjxL3n
         I5jzajUt9mJ9Hh6wsIJtDNFNi+MQYsFXKvWFoX+yIVPsvnFkjvlJwrQwxqLZKX2LZhTJ
         V/LTjZBRgZctZlKOggHziEBlwfOxZQmJV9ZZTwdIQ5wGoeNcr4vIVWGOClrcHqkI6EuZ
         Vn2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=eVCTdLmGjQhSPfqsHZF/AoVUsO0Flypwsxzziar35Ec=;
        b=KxSyasSreNyqKW5eFvmltQiJ16W+r8fFWHMUOr3bFt3MuwV+Gh4ZSiUi36iYO1KuB6
         B1BOXfCb+H2vgNoIhTGHEIz6ljbpAltQvXtWJlCBRwoJhw7E/CNbJgARzor/xwufj5Fi
         QXhqkhmhUUBcs/LI38NulVV3m99hX58teylN7O7x5ThgTjYhD4ZjfGfmP1iVskYeeyyJ
         JuRNIGbdI8MuQb/XskoCAb5XWeoEDIgXUiKbgcbAoR6T20ucYRnoe5MKYJU2lYjBoOi+
         gL4EFcAY+8r/P49XUcqNJSuDpcPVe00u6lom3bQ83t++Yxu7xy+GVVqqn+deSq+xwWoP
         C0JA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1ExlE0IO;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m23si20067ooe.0.2020.06.29.08.53.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jun 2020 08:53:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 143F5254C9;
	Mon, 29 Jun 2020 15:53:41 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	clang-built-linux@googlegroups.com,
	David Teigland <teigland@redhat.com>,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH 4.4 029/135] dlm: remove BUG() before panic()
Date: Mon, 29 Jun 2020 11:51:23 -0400
Message-Id: <20200629155309.2495516-30-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200629155309.2495516-1-sashal@kernel.org>
References: <20200629155309.2495516-1-sashal@kernel.org>
MIME-Version: 1.0
X-KernelTest-Patch: http://kernel.org/pub/linux/kernel/v4.x/stable-review/patch-4.4.229-rc1.gz
X-KernelTest-Tree: git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git
X-KernelTest-Branch: linux-4.4.y
X-KernelTest-Patches: git://git.kernel.org/pub/scm/linux/kernel/git/stable/stable-queue.git
X-KernelTest-Version: 4.4.229-rc1
X-KernelTest-Deadline: 2020-07-01T15:53+00:00
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=1ExlE0IO;       spf=pass
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

From: Arnd Bergmann <arnd@arndb.de>

[ Upstream commit fe204591cc9480347af7d2d6029b24a62e449486 ]

Building a kernel with clang sometimes fails with an objtool error in dlm:

fs/dlm/lock.o: warning: objtool: revert_lock_pc()+0xbd: can't find jump dest instruction at .text+0xd7fc

The problem is that BUG() never returns and the compiler knows
that anything after it is unreachable, however the panic still
emits some code that does not get fully eliminated.

Having both BUG() and panic() is really pointless as the BUG()
kills the current process and the subsequent panic() never hits.
In most cases, we probably don't really want either and should
replace the DLM_ASSERT() statements with WARN_ON(), as has
been done for some of them.

Remove the BUG() here so the user at least sees the panic message
and we can reliably build randconfig kernels.

Fixes: e7fd41792fc0 ("[DLM] The core of the DLM for GFS2/CLVM")
Cc: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: clang-built-linux@googlegroups.com
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: David Teigland <teigland@redhat.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/dlm/dlm_internal.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/fs/dlm/dlm_internal.h b/fs/dlm/dlm_internal.h
index 5eff6ea3e27f1..63e856d90ed05 100644
--- a/fs/dlm/dlm_internal.h
+++ b/fs/dlm/dlm_internal.h
@@ -92,7 +92,6 @@ do { \
                __LINE__, __FILE__, #x, jiffies); \
     {do} \
     printk("\n"); \
-    BUG(); \
     panic("DLM:  Record message above and reboot.\n"); \
   } \
 }
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200629155309.2495516-30-sashal%40kernel.org.
