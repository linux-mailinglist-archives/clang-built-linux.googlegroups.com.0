Return-Path: <clang-built-linux+bncBDSIRFEA54GRBWGSSWAAMGQERB3WLRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 69FB02F9D3F
	for <lists+clang-built-linux@lfdr.de>; Mon, 18 Jan 2021 11:56:25 +0100 (CET)
Received: by mail-wr1-x437.google.com with SMTP id i4sf8119716wrm.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 Jan 2021 02:56:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610967385; cv=pass;
        d=google.com; s=arc-20160816;
        b=q1FZ/FGG3PyLqXbP9zSYa1FSUPYc3ANvQItKBiNOk2J3VnxyxQLKXDhset1tweYBgp
         dT3f9E7maP4/Pj4i+ZspiCDgpkBmHU6bHLmGOm1RW2mNTl/LQF2CZ170daqrvEj7sVy4
         EVjzFq951Buuej0eTw4cY+GL4rv1qdgKbEeQOHhM1VWNsuHGsSQyWX982C43x1FcVVGm
         J1cWWxupTgckU1XdZTvwGuahbI6i3MQTapdCpV/5fXIpHNDI+ycCjsVOrH9huQ02Eolm
         AHYpDc2uTctd47CVLprtFYQK2cyqIWJ6UG5t6Rth0I7ISgzd5TgAdF02t4jcQ9xbcjZj
         daHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=njydxw47fV/lYW5CFCw6CAoW1tc8Pn3sDJKMB5EIZB0=;
        b=BNzgXYbg+x2msK8cXptOb/vG8c/RH2kXZck5NhnOLwrbQC1MfNoicCzxMzhc/OlqCq
         n9i8ihLfZ/zaUtXM3pnbCuwFqsPhrmdFP1aVYxCJtFKzbsIfj1atOP4xkH+pC3YGKKWl
         IOymimahpFdDvO1CFNzWy1nabDT3mE88UALNsYf6Mhxmv5ZvEjMG8MPmBZIuePbxQkG2
         uT62glj6zEyyGzuG4HY+EHOtIb7UOcjaKt5lynJI6IyRM0XLayBELl45nGd4UIdlJ8CZ
         H4ZpRq59YdlP/LrC+QfqhYrn62DPG8BQfnkXld1ROHN4fMo+29eZ9TBStQU0qztoGCKo
         sd7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.ratiu@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=njydxw47fV/lYW5CFCw6CAoW1tc8Pn3sDJKMB5EIZB0=;
        b=EyzqaOXR3Jq7Q523WE4/Dw44pFTMXpdVReS78/3i9yNbrmGehZqynVcSWnZcPqZP5J
         MP7Ai0Fg1OtMlaVeql0hL74mvYNVepF3xSISyhAoHpMQKPHImXSs+xR7ZaaAVgqu4Kiv
         paPe2/XEc9usi783+XyU7AUjmZ/Fo9ecXOPk5Zuf2WAVDBcx8hiK8kkwpApuM4pn2Us1
         Lq4JoeZRNvU0UOCOWJDLPH+q1RHN/VFkN96DxbkX14BTWbLeN6pBziW41GIbvBVO2RNX
         rhPZpivZemYUa4vZ1pQ9GlRejVGJ+hbCgavjKJWQxt25MA7I5qCkHJ7/Wwmohsh+H28q
         H6kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=njydxw47fV/lYW5CFCw6CAoW1tc8Pn3sDJKMB5EIZB0=;
        b=ITQU7uT0nm1N5NdJf9FMm9nIhTPxyvG35aH2xdfAkTmWETN63dPQP8bjVIyiWOmC4g
         MIrC1037meOyYgT4ownkUEcnWUBieaSJTDxMqcGV66KAzMY5TiZaUr6UfN++t5JNBdAW
         Oj7foDNHNelnBzBkx/HBNJFOP2KEagD8yXHpCio/jUofu8e7Mo+UYkV5btktDxNP4whp
         rgLCyv0udmVXb2i1jNHBCYlPbRYH64S58FtK70Np2DVE3dvrhVuQuwOrVS7STAX6/ALV
         REnrS7uMKajkvGN+CiMtFvmO7zICuKug0BdcWXMq3JsjzJoUQ+q0ZDW0yyV1BY5FW2YB
         KjQQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5324cGVB3i0qhyHNeZWTEcImwcR6tdptbGg1u5PnlTeh4dh8CZZg
	A9QSN7lA4QZR6KElXtH8R6o=
X-Google-Smtp-Source: ABdhPJzRkpqZUOQiZ4yFDYz9ZWEQVLxKeX2NOSHntEilslX6bc58UITKSBBn4lN/NK6HTgcwxhuWOA==
X-Received: by 2002:a05:600c:258:: with SMTP id 24mr1624132wmj.161.1610967385241;
        Mon, 18 Jan 2021 02:56:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c191:: with SMTP id y17ls1996277wmi.3.canary-gmail; Mon,
 18 Jan 2021 02:56:24 -0800 (PST)
X-Received: by 2002:a1c:6208:: with SMTP id w8mr18308784wmb.24.1610967384279;
        Mon, 18 Jan 2021 02:56:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610967384; cv=none;
        d=google.com; s=arc-20160816;
        b=N3/gJgtQ87q2ri5D6XyJEEhEHdEOkQoFBLbFajFNSMY4hwTbsehkz1MatpHcJWam7C
         NQlvAtr2wLOe81yGJej3bpq2Gk0sw8Xe68tCvi45DTBfhgCUHUSOsqL38MiItPnrG3ZR
         Z1HQUezcYzEsW/sGxjJoANYLTZ6wGsjIkq/OSso4C3Nxn9T37/UJBTE6QNxciE3+zyY4
         ev8qAWMoviUOZVlmUJ7WzGQN3C2cvMB12p7VpI9tcoNCqm0R3l2S33UdSeem9Y67R05g
         ZPKJn+2TuKUIXd3QMj6mPCK/zblzHdmP687mvOA8Get6i4Pyj8KaGfMN/D4cfEWu7HMA
         uemQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=ySNRd3xVY5kYwbzxL0n7HS6GF5u7vxrZS1XbHwL2OyQ=;
        b=nZZHYlu5ckupgDe5ro9iUVvddo8Ys2ES55NMXTzh8nd26NicwZLFM6H4AHP5YHopwT
         bCBzCj5hd9Wu1yJ7q2gOyn+uzo8zaa4LgO9lJBLnOYOi+0GK37YPpiwoKO1zA2Tz0rwl
         kWZFZMCyQIsIdBpjrsT0Q3cE6toRj+/JZxRIiARkYuCu5x3TbSkQ9jhRTLpQdvfo2CdB
         geMZ91mpRXnfFOjeet8ObIgYuTU936nEKlHRqghBzxkN/vek3rM49RQqEHdreYEv3G6V
         qozF59wJ7NCmQrWs5Lxygrp3T0zj08bUgcLlNwAs05bRbnf64eRpDmwj1WZWx/3mwiHq
         eYgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.ratiu@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [46.235.227.227])
        by gmr-mx.google.com with ESMTPS id j133si361098wma.2.2021.01.18.02.56.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 18 Jan 2021 02:56:24 -0800 (PST)
Received-SPF: pass (google.com: domain of adrian.ratiu@collabora.com designates 46.235.227.227 as permitted sender) client-ip=46.235.227.227;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aratiu)
	with ESMTPSA id 441E91F44C39
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: linux-arm-kernel@lists.infradead.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Russell King <linux@armlinux.org.uk>,
	Ard Biesheuvel <ardb@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	kernel@collabora.com,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH v3 RESEND 0/2] xor-neon: Remove GCC warn & pragmas
Date: Mon, 18 Jan 2021 12:55:55 +0200
Message-Id: <20210118105557.186614-1-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.30.0
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

This is a resend of v3 of the patch series started at
id:20201106051436.2384842-1-adrian.ratiu@collabora.com

This series does not address the Clang -ftree-vectorize not
working bug which is a known pre-existing issued documented
at [1] [2] [3]. Clang vectorization needs to be investigated
in more deepth and fixed separately. The purpouse of this is
to only fix some low-hanging-fruit GCC related isues.

Tested on next-20210118 using GCC 10.2.0 and Clang 10.0.1.

[1] https://bugs.llvm.org/show_bug.cgi?id=40976
[2] https://github.com/ClangBuiltLinux/linux/issues/503
[3] https://github.com/ClangBuiltLinux/linux/issues/496

Kind regards,
Adrian

Adrian Ratiu (1):
  arm: lib: xor-neon: move pragma options to makefile

Nathan Chancellor (1):
  arm: lib: xor-neon: remove unnecessary GCC < 4.6 warning

 arch/arm/lib/Makefile   |  2 +-
 arch/arm/lib/xor-neon.c | 17 -----------------
 2 files changed, 1 insertion(+), 18 deletions(-)

-- 
2.30.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210118105557.186614-1-adrian.ratiu%40collabora.com.
