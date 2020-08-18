Return-Path: <clang-built-linux+bncBDYM7YMH7QKBBRMB6D4QKGQEMM776CA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B649248B75
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 18:24:38 +0200 (CEST)
Received: by mail-wm1-x33f.google.com with SMTP id q15sf7589849wmj.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 09:24:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597767878; cv=pass;
        d=google.com; s=arc-20160816;
        b=wWwtDnYP8e5JkJJ4AuyraDv5N0kFMMwsgGHYWdUqxB0kapwI+2jPE1IsAbxqCUg7+1
         85Y7sw5dqbQwOxHrAw0wsbf05kpqsNeQLXt6HuwSMmPVOtuKxoIKlx4xMZleXkxUf+NE
         TVpKMhHVUPgwjOu1LI17pPxvXHaUizFedll6JuAgrgFEOZR/aS18+Fmd/www+t0jg7z+
         Au24ZqMaAtVzu9xRfQbH9rxG2Kusat9IqKe41xvDFzRtRDDWcahyPD8kWJ3R1B/dArXG
         cEnqsW6ka0GyS8KGPapUBj47SsbZvlIvPq43Cn+qLWiPSSw8QBkTF53KC6fzm2Cw9YQS
         meeA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=DNp3moNqLJs3g+gEAGSvBQT7QAcKZKBptaVVUS37vIg=;
        b=oRhVPPQ02bNSrwEBZWnEylQuSteOTCQoGJOKX4XAP8dH9ijxdfXUIhYJKqn9N7CdNc
         coQHnbLJllvveagziQaSBixWl6eAnOwXBtCYoaGjzdcKQn1ztQM7vft32PxMrWN2AHES
         QPbdbBMxxeq9wRylhjCQ7/h2tOCqkIWjkRP1yiYB8XXFS9bNRb/TjSiUNlRmk/ox5Rwz
         tw6apamC7027oBVJfFk9HutVQ3C5brBYO8c5Fn1mgaw02U9ng6kcj8T5av2IGZ3LWDhl
         oqJU+EEMQ54EXtbKner0nZK82Ogejzn2Wpwib5v/GE5zn6GlLHl6zaRw3iqIawsu0pKM
         LJVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rvCRVCdZ;
       spf=pass (google.com: domain of alex.dewar90@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=alex.dewar90@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DNp3moNqLJs3g+gEAGSvBQT7QAcKZKBptaVVUS37vIg=;
        b=EAScgihqoK/OtiT8dX1b1gTV90G06J6X5NiYM6m+ZbISpx9oPtHz3DTAF2csYhoT9V
         8rro7cHTtEGssYwV/ubxyOq+DSA0tVdeDxfpTH3f78eTAsH9bKt50knW2OUL/dohsbNr
         x1uF+pZTnWEMMPeWUTgxNEnozPl/9FaWz8wgZH2QnvVUNQrYEX1NQEXjD8A5As5n8MI8
         ytYKHxjo0Bf+l1jNeBkEG/xxJcJKjaEr6wclUicARTcCPa9fHSqlLEtqMKv5OG9ZzePK
         JSCTENdrJjaet/0ZCD9tRfLrToY4xHZdpVCng+mYbX4CM6hqjTWUHbVO/cP5uOy34InR
         STgQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DNp3moNqLJs3g+gEAGSvBQT7QAcKZKBptaVVUS37vIg=;
        b=WLK4w06R/mRGoTffgduASLZFY9PX+pvP0t15TnI9a3MuRb0Jy248hulqnfyokeO04h
         sy7UzOl9cwXJV6Hf1tMRGBd7I7tnlabcQRNURVgCCh4D/jkik6AI804EM2VHGLK1391h
         dgTJ+/1W+KRLGS+pfh0kYGoIO+0klR6NBIraRLnw3HSZJDnwqfjiTqQLcoOfq+aVryh7
         2irpDevR45Infyv3mur86npIow/5qS0nMl3Q8gI4IrgiQyrx65G5Nv3NpdHmhyBFT+Tn
         14s9UoRM2UYImil+cLqtTRU4MVF3VQOFemUFLK56okx8LCpQj1+DDY+dE2ZlsFqFJpOr
         Sllg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DNp3moNqLJs3g+gEAGSvBQT7QAcKZKBptaVVUS37vIg=;
        b=j+xVGSdniM2bsb/flWH2Tm//5Tg+4PKRR+egxQIh00QR9DZJ7K/Pl0jQM5sKtqJIB6
         hhPGohgVSfGEGawyZDaPlRjP/YQrtf8jpKT7YWlqjUi9n7jBDl8IGOrHbUGkekS49qRC
         aecUaP6T117byGafEVzWMhiZo1YiVQN1DiNmnfPUtiQy9rRa+Cxf0itckmY60ezXcNsU
         fD0jj8u/WqeLCF54hn0MP/GFDsG0Z+9rw0ul47dljBSM6u9jIZZCf0VJLtHMRNnPiwPq
         BVkNlnAxCt6mQmd11HajyMYbyb+t3W7/pwwP1eAup/HxrLTnPk+lPdKtBOSJBmfwVGqX
         hIhg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530M06UfvxSR/IVhZsmDZV+N7tD/fVTSX9yPoV/VL/XJLw5EmFAT
	YUqa8wXjJNzf+ysvyDvoWzI=
X-Google-Smtp-Source: ABdhPJyUYwfxdiNvUlK7vRhWCZrrty6qYmaCoLMpz96UDSF+1/Cr9rVtu79UphxX79MR0bhW/QKzkA==
X-Received: by 2002:adf:92a1:: with SMTP id 30mr22673245wrn.56.1597767878092;
        Tue, 18 Aug 2020 09:24:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:a587:: with SMTP id o129ls299495wme.2.canary-gmail; Tue,
 18 Aug 2020 09:24:37 -0700 (PDT)
X-Received: by 2002:a1c:b4c1:: with SMTP id d184mr733420wmf.26.1597767877306;
        Tue, 18 Aug 2020 09:24:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597767877; cv=none;
        d=google.com; s=arc-20160816;
        b=Ac/5PQ3EqwWgm7gsL0CnSxJCTZtUqhoFYq/hUJE1kQ5zBPiL/I5PXk5UDY3P/OQM38
         8YpYXnIJ3XD/2uSz9Y7dpaMcrjFQkIrNX+GDCVSXjQJDmwMxG5pcWf/eQlOC8aQ/1ZH0
         8ln/LB9yVUm3uEcT3v5mhAjQQOIuTQrRjbgd/VQwDRFjge4rsL3HAhucNAGJGLOYJXaL
         qCKaT9NFLRkG1o7f7VKFCrdIb/Waz5HtboO+rqAVQYXD1PRL+uMOiP+XVcEe+d5N4/ru
         Gsk6QaFyiFYdF9mduJPiO9xXkKJvEOIpBi2spNa2FQ0gFyvgoQCL4KYfNuv1u2YWV95N
         cWvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=x//7OgPSCG9lQ7k2EMJFqXlRtNQgNDXH0lL4Hpq6NU8=;
        b=ny2SBX9nH/grlneQIZJyS8gErQyLpztN5R67E3nzBtRhiTOgA5/uLUQXcbOZ4zMAZ6
         6q7HDaDiB6tBRQWaM3a9CEdGCk9YKKyJtVB0LS40H1VJ9YXOxAHDvXGUDVPaiqS7DnzN
         O+uwF36kFvSGzvs1KrWD01rLKAy2jrdMJ7VgNBZxND6XBwOdC5p7MIDLTxnYbtNhSgkm
         117bzfNGaJs0mF+D6b2lzZ7Y4+5Nxt4mPyBiIRC24+O1b6RISG6ZUZDAXVWzqDenEiD5
         wNgj96M68HVc7f8FETK0y1keQB5tQuR7TYEKZIfT8Zc2fCs2/ZTkHWElavkPEUU40d6U
         9DKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rvCRVCdZ;
       spf=pass (google.com: domain of alex.dewar90@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=alex.dewar90@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id f23si75465wml.3.2020.08.18.09.24.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Aug 2020 09:24:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of alex.dewar90@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id c80so16779134wme.0
        for <clang-built-linux@googlegroups.com>; Tue, 18 Aug 2020 09:24:37 -0700 (PDT)
X-Received: by 2002:a05:600c:25cc:: with SMTP id 12mr673172wml.120.1597767876999;
        Tue, 18 Aug 2020 09:24:36 -0700 (PDT)
Received: from localhost.localdomain (cpc83661-brig20-2-0-cust443.3-3.cable.virginm.net. [82.28.105.188])
        by smtp.gmail.com with ESMTPSA id m1sm520580wmc.28.2020.08.18.09.24.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Aug 2020 09:24:36 -0700 (PDT)
From: Alex Dewar <alex.dewar90@gmail.com>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Cc: Alex Dewar <alex.dewar90@gmail.com>
Subject: [PATCH] clang-format: Fix: Maximum line length is now 100
Date: Tue, 18 Aug 2020 17:24:31 +0100
Message-Id: <20200818162431.696423-1-alex.dewar90@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-Original-Sender: alex.dewar90@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=rvCRVCdZ;       spf=pass
 (google.com: domain of alex.dewar90@gmail.com designates 2a00:1450:4864:20::343
 as permitted sender) smtp.mailfrom=alex.dewar90@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Since commit bdc48fa11e46 ("checkpatch/coding-style: deprecate 80-column
warning") the kernel style is now for lines to be a maximum of 100 rather
than 80 columns. Update .clang-format accordingly.

Signed-off-by: Alex Dewar <alex.dewar90@gmail.com>
---
 .clang-format | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/.clang-format b/.clang-format
index a0a96088c74f..2b314a14a658 100644
--- a/.clang-format
+++ b/.clang-format
@@ -52,7 +52,7 @@ BreakConstructorInitializersBeforeComma: false
 #BreakConstructorInitializers: BeforeComma # Unknown to clang-format-4.0
 BreakAfterJavaFieldAnnotations: false
 BreakStringLiterals: false
-ColumnLimit: 80
+ColumnLimit: 100
 CommentPragmas: '^ IWYU pragma:'
 #CompactNamespaces: false # Unknown to clang-format-4.0
 ConstructorInitializerAllOnOneLineOrOnePerLine: false
-- 
2.28.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200818162431.696423-1-alex.dewar90%40gmail.com.
