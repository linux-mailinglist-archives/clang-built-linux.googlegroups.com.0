Return-Path: <clang-built-linux+bncBD4PP5X5UEBRB5MHXP6QKGQEMJIW7NY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F2E32B2295
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 18:35:50 +0100 (CET)
Received: by mail-wr1-x439.google.com with SMTP id h29sf4104766wrb.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 09:35:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605288950; cv=pass;
        d=google.com; s=arc-20160816;
        b=AxAW2CNrZQTFJ9/qKtJoCFc//ctUMsyMChQPP71YnjxX/sQjW8w1w9nPrVufc3jVHy
         lefySu9mr04/R6gviQoERnPD4mOfO06K9dAIhpokqqQbYXa6aPtR+vcptjhX5kS6dpVi
         ey4TjMn6bC83IsWhUBDMrG8/hq9tRJPYp9lLlpqb9y9MJgS7R7g5rRLsT5O+ceRT/KfU
         09tI0a0VQXypA0b11Uh6lSKicy5UkCFUKeZO22rAh1ACH3i8t33ko8x+R6bF/a5XCTf6
         axz3hEzQgoDHoy1eEApUhGj2Q6hINjmhDvQbh5ozr74nEEgyt7GQAZIjpkgEk+HZ/kSe
         pCCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=o7GV1vfcdJK7xWujrR9rZ4ky0pMd6q6GS618dalG0i4=;
        b=s3+fi8LfvJKSoaPrfqNBE0wGc4HFPklL592tjFSI6P+7YHDAxFVhmoPQO+n4gEWiWq
         L6G9rUsg7ExnhaqDsi/eq5PQm+DQNRRKh6KXh4MHOkSqEwr9hFRfpAi+JyG0g1WPMGmS
         2s2uw71OwnqWSdwbi3PhsxqwGI9aMBYe/BQiUOVb3sZqkQVP7tqJviGRoqvunzm8a23e
         dwCu42yNM2tSWthOKtxc4qt9Db/PrXFn3AOri+yZaIgW0nVLUMY1iuQ2l2hoPd56/NXD
         cy+/z64KBnKVf4gcuGQ/+rwH04rtAVKza7NU/aI7pzaKKWqttv9k5kCqoV2kBWJmfG9n
         x50Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.ratiu@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o7GV1vfcdJK7xWujrR9rZ4ky0pMd6q6GS618dalG0i4=;
        b=Siq1YpHbVDiQXQcuhwn+eR23qhxbnCpdLEN6y6n/BQ7VXGSP7fbXO897K5iU79QD6W
         XaYecpRFtT932VapuBLsQF+C0439p0R41uJTb57lpYFJzmnbQ6Yz7EMpFp3iUk+UTyOP
         CCVZKtDbEaT4aDPPyT/Gdq3QzhAm3UJsN2RjDIsX4bQx7rZjTlBxhUb9wI2b0yfggGux
         JJXf0Yx5LrxiCBxjK4SZhgC+G2fSGnfhymZXYsskYe6IZ5hec5c4ilzECqSJetm+Nvpq
         kX/ePvn7uczhHDamESsIrkhCAiQXW2wLjVurI+yHc/4b7lGtqPTDZmPzV2zta8/g4OI6
         A0eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=o7GV1vfcdJK7xWujrR9rZ4ky0pMd6q6GS618dalG0i4=;
        b=CfpOhUUNg/XUxyjFbZZAxV4Y0lWSUdepGPLPWl3KODVQtRzAYELP/t82dtO4GVm2wX
         4w6vkYbs7aKu+FWHxovq3k2gYcSuFhmIYkmLnox3QiSy2yi/84SJZNfFCs/x1ASixiXA
         DRM0i5kZlve3hRoXgqING+wBboJFHsGHO4GpH/7RflJXOjOIMYCgVM8Dwv7MlrCMfQNQ
         IVznPZGrwYvpz6n4ws5JtLgR7W+xKtUkxcLFk4ZtTHS87Jrs434Yx9CbdYBIDR7Oi8Ts
         h0zprCRtQEATfox+y5WFg/Rmnz6ze1h30skMNAesuC/5b54Kpe6gKg2XX2EI5L64zkrG
         YEHQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533YmoFgtjBy3/vSQMFaQOp3Lu/VdVfCMLdJrmzJXJJGT2R9PZmT
	RPD6oUEqL1cB6rUzRln9XMI=
X-Google-Smtp-Source: ABdhPJx5vVYGsL6hs7pY7qrJm5k3rL/n7GNZXkmXk63nUq3yqvloUK3n84rUNkX2g6FI9swdRUSh/w==
X-Received: by 2002:adf:eb08:: with SMTP id s8mr5138764wrn.12.1605288950011;
        Fri, 13 Nov 2020 09:35:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:e5c2:: with SMTP id a2ls6452533wrn.3.gmail; Fri, 13 Nov
 2020 09:35:49 -0800 (PST)
X-Received: by 2002:a5d:6050:: with SMTP id j16mr5188987wrt.158.1605288949116;
        Fri, 13 Nov 2020 09:35:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605288949; cv=none;
        d=google.com; s=arc-20160816;
        b=X7NoAdSPd99YuYTPPi3UHCmmIrCqELpNzDTVz5OlzW9F1QknyCrdfAZTZO3Rsz+Ghk
         23Rh+MUPfMqX6eFc+wHtFFxnSfzUXLjmwHo6Ga31QDgDuSOrbc1FSYUtXLU0jLU/apxL
         DR9MLKmJOqQ2mzVE4+d+M+nKQNeG8LY89Uiovb9JLbz0918g/ubBUTAjUNY3VIvparNQ
         dcG4CAcneWLIVpfoyOGBD8uBbEYOVUCpTH8OqZ1gaPfDbCPrihldSvb6p3TsMNSmdcnh
         lYk9wlLpXV7lwZNPt57pnqDV9Gi6WKmaK6j83hRdEocpLS3O4vT85A2XIbAIn9Ikr4Qr
         ms+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=rl1KJRyNxuPIOdwHqyxOWsZkBfy3NRAVbpxiWUn8C+M=;
        b=oecARgOym2Z4mDKpDYcZrylvXDDsj+O5incqxVzPxBNjUYP0hucJ1/T0IIZ3fg0orD
         xRU6GvLC3g4cLF+A/ZPDRXdQd5syjgoStoB8zDABWetLRBK/DAYPSGg0LCCcHcHtqhO5
         dewUKIY0UHRb+bXRaUQIrU+EXyDnZpCjRIcy/3IN4Y/wtNVSbgT6CBxne7umInUv9AHu
         pcGMUAArvMTi87QJSlFB5ZvlAHDRwv3jo/RTvXMjAtpCPUWYVUX+xpTsSgKzDe5cNdV6
         2iNGfZAZYnpq3UjyiwnBsvRsWJ8gvPFNwo4TKCbs/8fYOx8001q6GBn9magHg3IjCMq5
         FCnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.ratiu@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [46.235.227.227])
        by gmr-mx.google.com with ESMTPS id m5si339423wmc.0.2020.11.13.09.35.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 13 Nov 2020 09:35:49 -0800 (PST)
Received-SPF: pass (google.com: domain of adrian.ratiu@collabora.com designates 46.235.227.227 as permitted sender) client-ip=46.235.227.227;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aratiu)
	with ESMTPSA id 3D8FD1F46B62
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: linux-arm-kernel@lists.infradead.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Russell King <linux@armlinux.org.uk>,
	Ard Biesheuvel <ardb@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	kernel@collabora.com,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH v3 0/2] xor-neon: Remove GCC warn & pragmas
Date: Fri, 13 Nov 2020 19:37:21 +0200
Message-Id: <20201113173723.2078845-1-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Original-Sender: adrian.ratiu@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of adrian.ratiu@collabora.com designates 46.235.227.227
 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
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

Dear all,

This is v3 of the patch series started at
id:20201106051436.2384842-1-adrian.ratiu@collabora.com

This series does not address the Clang -ftree-vectorize not
working bug which is a known pre-existing issued documented
at [1] [2] [3]. Clang vectorization needs to be investigated
in more deepth and fixed separately. The purpouse of this is
to only fix some low-hanging-fruit GCC related isues.

Tested on next-20201112 using GCC 10.2.0 and Clang 10.0.1.

[1] https://bugs.llvm.org/show_bug.cgi?id=40976
[2] https://github.com/ClangBuiltLinux/linux/issues/503
[3] https://github.com/ClangBuiltLinux/linux/issues/496

Kind regards,
Adrian

Chnages in v3:
  - Reworded first commit (Ard)
  - Added tags by Nick and Nathan

Changes in v2:
  - Dropped the patch which disabled Clang vectorization (Nick)
  - Added new patch to move pragmas to makefile cmdline options
  (Arvid and Ard)

Adrian Ratiu (1):
  arm: lib: xor-neon: move pragma options to makefile

Nathan Chancellor (1):
  arm: lib: xor-neon: remove unnecessary GCC < 4.6 warning

 arch/arm/lib/Makefile   |  2 +-
 arch/arm/lib/xor-neon.c | 17 -----------------
 2 files changed, 1 insertion(+), 18 deletions(-)

-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201113173723.2078845-1-adrian.ratiu%40collabora.com.
