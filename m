Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBSVF6L2AKGQEFLMZXBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E7DB1AFCF8
	for <lists+clang-built-linux@lfdr.de>; Sun, 19 Apr 2020 20:04:59 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id b10sf2582595oif.6
        for <lists+clang-built-linux@lfdr.de>; Sun, 19 Apr 2020 11:04:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587319498; cv=pass;
        d=google.com; s=arc-20160816;
        b=qRQZAm0uZm2z5OSux5YuLAeViEUgdTif2O1Yyqr5HXivn/HNmqUOzIFSx4e6XmsS6w
         OJgeBTjN8fnm+id5KFdrvMtkm6NnYOKm8HtfOMKLTy4jlPaJr7G+KfgrQcC8WyLX/cEz
         muG2MHfnSLcWVAJPEB7zvItPBxmXVyVqHX7U6G1TWnmUaP42z55jIjlfbEMWkAMoMAxg
         AA3hWA3zznmWsSkW/t5rHGGqsk0ZF9x8/5audXiy3zElIw1NS8pmgfb4EJZISHW1Eti4
         NnAgT6Ioq74u1COydxeYA5qY9UAOABgu1I8J6pMKtdc3rULXDkowK4fduBgtHzHqQPay
         ejmw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=015ZemhNDAKpZmlA0m4fKmkQ0Mvgk3HEIm+usoBGyeg=;
        b=fzodnYPeE3v536CevOVlhSm66YbV5r8W+YqgtTz8z1d985i+15E5Sw906ovf+WulM3
         1G4M1dUXlyZMdVmzICmASNpNB1fEknFqZkdy2rO/GluoCJFaJsCutawLR8n7jL/MJgMs
         TlfJOygpJUHNiynGoOYEgx0Z5o4NokkSV0K18fFRm61+4toJ1GsGHSIk5I79/UJDKN/y
         Rq0DDJyTxCgE+CP4pRe9+VrnkAWRVpflmVEbzmglkk3OfU2VOm8yLzHe56FGS3fvSV5n
         E8lDQPkv89cSHFLzPf4/ao4msDCLnGGb1J0RXUD5TqT3RGJTrnUKXYv61cZ5yz5BZorY
         hckA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SEzYahmb;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=015ZemhNDAKpZmlA0m4fKmkQ0Mvgk3HEIm+usoBGyeg=;
        b=c4dkbsLhTk2a4C+DKb3UJ0sGvj7fcdkbVMy66z7hnj3jYjdJjdMTqx0R6sDuyq0HR6
         rNqADNW0guKl9UaElrTUSob0HRd0dVDPxNo29S9GnMFgVJ5i/LlJtAhbLnDULhinXnxl
         7e8QGZnzMZa/CIgoI4Yvdh2iIeUHgaKXcwxgouoGR/WHpEd4Og+H63HD45xNumsT3k9s
         TdgjM825Urmr6o2TaehI5Z+OVHNP0dg40UTcgyGftWLY9KESB5RMG9blIU3pg1I94QAe
         +D2KTlbZbaERBKzc3IsXMMLyFkG6U+IIspHZ9TU/507gJfN6flDzImS0ylpqF0L298GP
         Xl1w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=015ZemhNDAKpZmlA0m4fKmkQ0Mvgk3HEIm+usoBGyeg=;
        b=Uz3tMzsrL9nLkFERdhnDKJG7z/+aTX1c1Y/JQIs15lA5cLh0v7nOGCxG+q6gnykn0O
         Z2rAyBs4Xm6Hl7xDUQKPY7IEwj+ksqCFjlXl5fwukVKgpYHs6yqCFMBtgnKKq/cs+Vi0
         znOLy9jIOOw+OilambnZNHg8f8dFuJ5W4eC7Mo6z904BIErCzZwD1vFe5wUFXOXINyRM
         qrs+bCXQIgn3w4QM5P7rWyniZMmfa5B27s0ccmhpmKPGe7FI3gR7peAxL86T2As+hvg/
         R+KAQGPp3P4NCgVEjXW9DzI7BpfqvMKlVQEDugjiEQ9Iey62phNdXXlarCc255bYxXtw
         ekQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=015ZemhNDAKpZmlA0m4fKmkQ0Mvgk3HEIm+usoBGyeg=;
        b=XoOB2KevIe39IspZUL0EUlsDEliPMEQnzsrhuRUiVy56rStqcc+Pg9tcbsc0Y8NRJp
         DtabSRBwbX6x3js/jY64L+Hc5p+0234gE/IcPbFqpiXVoh+CEkUCyPB+ukNUbvf8VAyK
         EVBM6guSydfSiBr8aJ5vNO1RbgjHaOPxDRfgAK3C3nIHeP6LpB3Q5/XisN+/ve0hmM3O
         nXchgxw7ZaQNnvFDiuUZZowfZU0YnHJbRg+ZqYbe8Lgkw9hTCQ+b6LttzbnHoMo4evEI
         5faAHuh+LRpyMl/mViY4MLHu/cT3Hiiwtx+tNowZxoLRrPHbMtN6kmTW8ylhvxOjg0T8
         kkcA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pub42s4YiDTilx3dxM70yDvNn8GlTEJsgOWjzeWbHp5bP0FeDM6U
	PCnG875JIgUPPkZscVOu+Qo=
X-Google-Smtp-Source: APiQypIz8BD+J5U/45TSKvgE5+dMgjPfL8gsh8Bax0H+lm9t09vHRDriT5tc0SsWAACUSZdWxAelBA==
X-Received: by 2002:aca:4046:: with SMTP id n67mr8449790oia.156.1587319498285;
        Sun, 19 Apr 2020 11:04:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1117:: with SMTP id w23ls146891otq.5.gmail; Sun, 19
 Apr 2020 11:04:58 -0700 (PDT)
X-Received: by 2002:a9d:6142:: with SMTP id c2mr7139090otk.92.1587319497959;
        Sun, 19 Apr 2020 11:04:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587319497; cv=none;
        d=google.com; s=arc-20160816;
        b=lDdf43qqyiZisWn2ogwjrO6pC3ETZ0jiZbg6AsOeQNNbCsvihXKr8k9e6n3Rc6VJhY
         jH2+oZZClZDurwHZeovktJWNFwY1SulbQWu6XZ256MSOLn6+cBJJ+DNmptSsnwj5lc4X
         zV0XPKdwKfGmggQpXio1F769GZCthZSuAW+gu2uQaEiade6ME9Xa8Gz8NyCEcVO2Y+vs
         NF+hALAM9aXtaIKKGYU+6mZhB465GoPF29QtQrPbPV4Pzau/EMIN08zhqy2PsxUHXiUo
         Z7jFMjS6VIp9JNYwGUdMM6ZkVaAWobV9o8irJVlC8YKcjTzvsqy4eE1sfch0Y/blkKSG
         X5wQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=noeMRyfCXiVNDac4SbXL/yZSIwLo263SYX8F156uBM8=;
        b=SPHwLnzumgbjaSgCzxFGC2uVYaSuUBkn26hWZ3CYgGlPZQiVzo3iFSMb+GsD1RVYsI
         TdcF17pbqQZJJGC7dEpM8T0aKvrtfXKgyb6wj18u6Yx0Pf+BCTTeuc//Po/CHtP8ix9+
         EvkOOFYTyicJ4bnJGAGGkWpDs7yKvCRfvISyz80OfEkLQgWBheoRYp+SPJwnZVTuPSM+
         MEqeRrGZ1unR6yHUCu1P86BLqRnrQOPpJ0sjLYCK8bIu0SwY8kO1PgPqukyK1rBVHUyK
         QxdKXFRUcgG/xikeKyB8VugO/h6OlGly9pV9XEhxa6qT14vn11RG9ZYckZ2PJoQl+Oie
         GOnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SEzYahmb;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id o6si938293otk.5.2020.04.19.11.04.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 11:04:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Received: by mail-oi1-x242.google.com with SMTP id 8so6851905oiy.6
        for <clang-built-linux@googlegroups.com>; Sun, 19 Apr 2020 11:04:57 -0700 (PDT)
X-Received: by 2002:aca:d6c1:: with SMTP id n184mr8245343oig.126.1587319497584;
        Sun, 19 Apr 2020 11:04:57 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id t10sm3720075oou.38.2020.04.19.11.04.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Apr 2020 11:04:57 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-kbuild@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH 1/2] kbuild: add CONFIG_LD_IS_LLD
Date: Sun, 19 Apr 2020 11:04:44 -0700
Message-Id: <20200419180445.26722-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=SEzYahmb;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

From: Sami Tolvanen <samitolvanen@google.com>

Similarly to the CC_IS_CLANG config, add LD_IS_LLD to avoid GNU ld
specific logic such as ld-version or ld-ifversion and gain the
ability to select potential features that depend on the linker at
configuration time such as LTO.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
[nc: Reword commit message]
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

Sami, please scream if you are unhappy with how I worded this commit.

 init/Kconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/init/Kconfig b/init/Kconfig
index 9e22ee8fbd75..c15ee42b8272 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -23,6 +23,9 @@ config LD_VERSION
 config CC_IS_CLANG
 	def_bool $(success,$(CC) --version | head -n 1 | grep -q clang)
 
+config LD_IS_LLD
+	def_bool $(success,$(LD) -v | head -n 1 | grep -q LLD)
+
 config CLANG_VERSION
 	int
 	default $(shell,$(srctree)/scripts/clang-version.sh $(CC))

base-commit: 50cc09c18985eacbbd666acfd7be2391394733f5
-- 
2.26.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200419180445.26722-1-natechancellor%40gmail.com.
