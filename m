Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBR4R5OEAMGQERKDNJKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CB483EDE89
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 22:21:29 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id gc3-20020a17090b3103b0290178c33479a3sf6745253pjb.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 13:21:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629145288; cv=pass;
        d=google.com; s=arc-20160816;
        b=Pgs/OyGuxDufyzP/RnR77j9lB3HQEa8jUHU2tyzEGB0d1OZaQsmtRydpwF4oI0ZT0H
         4lndVhrPn2yyphDQxon8y/gL0Uvn52cnScUVIRo4F68dUbIakP33f8UKh+tKBUCNo+O2
         KKkl5FB5waIQRkcUrRa/DZ7EHNk57uH55S3C1H1TX8vOmQcpk7OD7080kA+u7bHpLNmd
         cxOxYgx5wbCwu0S+IIDvpjfbWAa9TDRRI1gfwBFzMF9+B8rjhWcup2toRnhA3D1diOwN
         nafC2+H8NJ7O5LhSpiIgiO3OOztVfCmmwI3UxHe+RzCynl55qf+X0ESV0Ng1buZ84P1G
         +SyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=kx9GjGLcLTpv9TPwZJoBbP9VfxBu0igekarXMzYa+jM=;
        b=CBeBPK2XotbHWbkWqSplyMWILuqRriBlYhZHgu7nnCet7mi7QUTiRv4DBf9ijkwJHI
         e5nE3vrcpIyKBocyWEUcMj3Fkhj+2O3NN8Bb9KE461H2pfoOKqWz3OY9O4ISlDBt3sKA
         PugYvqnjMvCEgMM2qtU8b+ewuY72xd5Osa6821jhpohPdN0yoeCs/4mFngrWnlzqpEJ2
         6hUqSPXJBKIyJzS0rH4N0VQU4QKNezV+EmnefehLNJh0aRSR9Q3pUWzrK45oCcB8TVjs
         57z3I/GJwl8NI4TT8eiM1Bp8G6nHl03zLc+/rSjrGn7nxlJJDdVNquuNOPDmNApmGG19
         IafQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=oNpRW+iM;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kx9GjGLcLTpv9TPwZJoBbP9VfxBu0igekarXMzYa+jM=;
        b=k9f3qs0Rvnr/1rD53xUZ+WYUy7zX7UH+gume+X3V/8j1bUBV3mir4KG7VDLyTxqf0i
         1GPEKku0UHVpbzixSEsHlaaiIDf5/op5ts+A77YNrOGHWE58PjD5lAOjyj0szMAGXObY
         pX+4tXZ1qDZTa9XL+h7CrPs2/4O5FghYTo9afLa58i5eEXND6v8auU4TyAXMCEPO8+yB
         zdN8D819YXYWuz+Kv0pLqjD5hvqm0WdBKgmGc9Gf4TP0T4JLTR/UEBklRfRW2Nm7iZn+
         HoSyaz52yrrE61aP9xBBp1ZyRwJUilbt6CKs+sOAvkFtqk0KX0EN2VGf9wB3go0jDnt8
         MDkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kx9GjGLcLTpv9TPwZJoBbP9VfxBu0igekarXMzYa+jM=;
        b=ukaXYefeQsdC2QA4gdkcT7RoNm0MTiQ3V2zXcy8+/5dRXyXUNhPdEOOM3x663P0YZz
         Og7BY17nYJRgJ/cjWWe78Gq+ym/i+6fAURZ2WWgfy4u+z6O5kqEHL9f+yugILDvDw/X5
         fbPLZUrP8LUQmlQ9bmqV/Ak9msiHzkoRJ4lGyjdWdYZVC61x3X5svFBCHAwNZlDZbyYt
         gZ74hWTpt/AnyXpGXuhQDWRnn4w57BZI3QbfXgTOvB6+k7RdBov2VqOVj+ZnK3FqLKwn
         UPNAKrbwt3g++Tm9/MRQDADn3MvNbRdajURuipB9TMyNQtURZ2Q4UDw/i5CSXr5EEz7J
         SQzg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531T/3nKdnz4AXf/uDBtV940vmP7XtuxwpJmIaDH80YgxIgyRu0Q
	q7Njb/AxDmeytNUlU0EYs8U=
X-Google-Smtp-Source: ABdhPJx2Abty/D07mP13z7hAcXQ6H5/iKFLEbvckCrZTPtTukHPhkMVHgtRnxGjlgoarJEqQkbuieQ==
X-Received: by 2002:a65:63c2:: with SMTP id n2mr564355pgv.292.1629145288048;
        Mon, 16 Aug 2021 13:21:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:91d6:: with SMTP id z22ls22632pfa.5.gmail; Mon, 16 Aug
 2021 13:21:27 -0700 (PDT)
X-Received: by 2002:a65:610c:: with SMTP id z12mr529510pgu.453.1629145287496;
        Mon, 16 Aug 2021 13:21:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629145287; cv=none;
        d=google.com; s=arc-20160816;
        b=qEsrKZR4Chih2OUdAO6obtEyri+tp22OxMQjr0bbrSjTcl8jV7uIErjJUngoTv16sN
         0LcmVEbotVFJT/bZHVKVawZSykoApiMknOLxlu4cShT4DkmEBAdnXYK9AhULvl2Mln5L
         cGqphFMtxhJy9RnwvEUanHXmm4As8uCGBy2zxA5kK80tJiau+D6Nt4Y7+Emd2fZd0pAL
         DJNN4N5kfOmruHWVqr2N0VKNWUGmj92qGBkaheBGXGO24hUbqy7EmtaRCxvM1YmOSkyh
         Rk5aRSFONuj2M9tnxLcQZGdtGvlBjj4sBmrl+h3ZNLcEKqmowVJd1oaa/kf+qeZWs7cR
         IkuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=INuVOG9ZRfyFfJpnCN7hSUJCXgBoQrYFMppL1+2eCW8=;
        b=IqKukKkP6JLMLWUQzHngnVT807WLmjfafCiW2sAe3Th83lU34wkYyFlewGKhKS4D2y
         JOemvgQ66Jva12Cepd76bn8/Co6bXOcjw5sVM3py7AIgQ6r/wXJlPLpCm0tPWmdiD/Rv
         OtnJtJzgxI7whn7N/B2Kwkk3KOqB16bgPGnPQJVGYQk7huGQJ2KSAw+8BMiBYBihFg8L
         gHX6TCMBwztEhzNaB15LGNpWUJCEvNFAzIVbje0Qa37oCO3X2ElB5DzPR+ZwU7OP5Uy2
         Io+zY+8rxsrGQlEbjbwvF7YadVAgxNwnkZbHp+6c3pSGUfA7QSCyczhLcThVFSmeLvdS
         7W3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=oNpRW+iM;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r9si9559plo.0.2021.08.16.13.21.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Aug 2021 13:21:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0C33A60F35;
	Mon, 16 Aug 2021 20:21:25 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Masahiro Yamada <masahiroy@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH 3/3] kbuild: Shuffle blank line to improve comment meaning
Date: Mon, 16 Aug 2021 13:20:56 -0700
Message-Id: <20210816202056.4586-3-nathan@kernel.org>
X-Mailer: git-send-email 2.33.0.rc2
In-Reply-To: <20210816202056.4586-1-nathan@kernel.org>
References: <20210816202056.4586-1-nathan@kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=oNpRW+iM;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
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

-Wunused-but-set-variable and -Wunused-const-variable are both disabled
for the same reason but there is a blank line between them and no blank
line between -Wno-unused-const-variable and the block.

Shuffle the new line so that it is clear that the comment applied to
both flags and the next block is separate from them.

Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 07b76274396e..7d5007cdfa5c 100644
--- a/Makefile
+++ b/Makefile
@@ -794,8 +794,8 @@ endif
 # These warnings generated too much noise in a regular build.
 # Use make W=1 to enable them (see scripts/Makefile.extrawarn)
 KBUILD_CFLAGS += $(call cc-disable-warning, unused-but-set-variable)
-
 KBUILD_CFLAGS += $(call cc-disable-warning, unused-const-variable)
+
 ifdef CONFIG_FRAME_POINTER
 KBUILD_CFLAGS	+= -fno-omit-frame-pointer -fno-optimize-sibling-calls
 else
-- 
2.33.0.rc2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210816202056.4586-3-nathan%40kernel.org.
