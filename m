Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBN666GEAMGQEPMRTAOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 7962C3EF80C
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 04:23:52 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id b9-20020a170902d50900b0012db04e2bf0sf354646plg.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 19:23:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629253431; cv=pass;
        d=google.com; s=arc-20160816;
        b=xt0TI+osXh0T7cTJFjZhro0IQgBQjHO73CmCeND4ZdO6Hya4NVIi/yf11tfWnPccGj
         YUvqeTAPZVeSkuX9X7xIFfxbk1RPwRDXBAErSX6SMMjo9U9T2D64YxBwhywxdDDPt9Wy
         8RrCbBiaPeJj9NiAExAzk0/14S1XoSsqTqQdr5jTLP3C384//jP/yHhEWhmmIjeygYve
         CNDh2EpPW8YCdpZOjOrDwDHFL4sMf+tp2f7lk3ueLzeIKF2WZuy+ZHizxD2eKxNKij+p
         iES2ZDqMefJWaeFZ7Ye8YHwX2huPPJ9XsiA0CA9vDrLPJkBBkMb5Wuo11hMF0TLQvSvX
         rM0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=nMuEeAkjEQp4/Bj5yKN6z+AY7vYvuph5iwRS64A5f+k=;
        b=uq7DGs6P8Vkp2PyGbZ0+387lXz2rd72HF2ODba3/ch/nPdpYQH+Vp5DpGeFcCOH8xf
         P8iXyAV5a4GFn6H5c00dCyAPq7lPBegRxEKM1gJiyIrCb5v6kEk3Cj09F2Amovg4mcLO
         MvG7HOsShrCDR0IVOFIC2jZBexL2j2Os127+kk1uJDTYsGbw5jHVO1D1eTM9AdctNi8u
         DvNnErSqDv+ffm8QgONnqONHIjjruP5HKSCEYOhrWiU9yncHebYkOk42j/vXf+fYHQre
         j9IQchMpL7lsfxbeN0gSQ7ZjlfDbZcGBx8h+FSwy00gqzgRAGhY551vzJ2PPdNhr9bPj
         xCaA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=tfCJtlcS;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nMuEeAkjEQp4/Bj5yKN6z+AY7vYvuph5iwRS64A5f+k=;
        b=XhYPDHYBmcUBGyRzyHAaV0GnrxmhN1YsQkgtaFjtV/AvhbQHjwxsLSg+yWedwrtNjC
         2t5mpHgk3G1zPMpqCnxGitXzFH3Y6XOERro4JRyCTzJC+hbq09QSsnwud0jmCF05Ba6b
         IRr0/uaWnrkoK3a8+54Cgh9FFdNyw/u+uKPPhIDh7fceIZcFCfEt3jkyoGYQMamou82q
         FSixziYlE7bMrynCH5EMtlHopues3Gi8o+bMq/t+T3x/xpisysK+R0dmUDBkRyzpZBER
         GfOizZzKZXkT1NSm9iG7q9H4njqzVEGSqRR7G3Y9kW0dp9/zk8XKverGbVX0nWPgdzsY
         XK2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nMuEeAkjEQp4/Bj5yKN6z+AY7vYvuph5iwRS64A5f+k=;
        b=Dpl64r9LF/KQPcQ4qxZQGm7PY80Yge4IzmCKxx5VeimVtbJkBrz1R48amYSjlSg/ZF
         75r5Fix8JRmsZK9JikNCitE4NCk3Dq+PSqgjvqIshu96al+T+NyCeEgy4ROsQIeb/BTC
         MKff+iBYhfszeEzygkVBhUhTgm4loI23lYr5bAek/TJJ7XuOuarmkPTeKkRLGVwhGGND
         tUaCry94dOHRJwmWx7PGAxFn0uINEZ6lwqG2pUfFxcu9vawZH28Yj/TL0xj0jngQgI8r
         EM4bWurCJVOnqPgMzHTKywAKyYqltNQN9yXiedwwiP9UetG+LUBZqp3pmLI9o/prmloe
         LYyg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5335G4Q2gZe5KoZd3o2JbSPZOKFfBboiO8Catml4DFtdD0rhsa9E
	2rn56LAt5hYKVARS/E39wjw=
X-Google-Smtp-Source: ABdhPJwfwTUxuAZpXn/xFUgY52dlqEef6TX/c1R0G++KWLARW8pAH3mKsQ8DzYZ0HTyj9fj/6lurZg==
X-Received: by 2002:a17:903:2290:b029:12d:3e55:5ca6 with SMTP id b16-20020a1709032290b029012d3e555ca6mr5250538plh.62.1629253431139;
        Tue, 17 Aug 2021 19:23:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:2345:: with SMTP id c5ls382389plh.8.gmail; Tue, 17
 Aug 2021 19:23:50 -0700 (PDT)
X-Received: by 2002:a17:90a:b303:: with SMTP id d3mr6801540pjr.199.1629253430582;
        Tue, 17 Aug 2021 19:23:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629253430; cv=none;
        d=google.com; s=arc-20160816;
        b=SyAtjc/cwX1C50tF5sCRhl9Ax8M+yLSHxLN/9HDxuTAM+ZElOPEPHXUG0YyrgJQ4E+
         kTREuPPp7qaXQAE/4VxSDO+nkHGwuRlULzfheClsU+iNsrTZvepwUspt+Wfrd4tFeboh
         jAE1rom9SprbyP9dbz6oZOHzW/CoVmnj2CDLlTIlyYpDzjarmZWLZeUwPJR8vwEmyxre
         PMMgnJkpZD9c4G9uZEqbicV1CNOn/PSw7U7ELw51WyTLlzSq5VV1XleNsbxEVBVzJI3c
         7351CYdYw7C3FKNIjv0uFnUvVlHIf2Sv9AQ0iPLyvTb511iytl9zuj7HGSJF48807og9
         YYAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=ntwrVWe+fgt/0En/wSbEuvCoJwSo/q4tdEgJE+KvOQ8=;
        b=f9DlvtLnFYoQeiTG7BlSsGeIQvPo3F84ASqo1uCjPXgaGY0PSdaLvrHak3Y/g1F1NS
         0NgDq7Lg3YsSSGLC2UDJjZwZ5yR5CU9jsQJTHqh6EQwNANv3MeRMB/SEUDGxYyyyrRUe
         kE/uNAWSMBh5rimjpfP7FMyWHLeIhcnOhU43O3mG1ji+M/XptVVFO+mswQ1HtGcVJuXb
         iMLWGxjhqnAaZYbMUd8BFbidJWGDKymS7vLRN8RUGsJ+0QO4z5rbB77dcFMOleZM01km
         v1rpxyaHVLGI8ecSPbNVAIVzCjG/acxp8rwyHxlbhXIg2lpayNYq+gbsfE/3eRUAZOYg
         bR9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=tfCJtlcS;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id nu6si154591pjb.3.2021.08.17.19.23.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Aug 2021 19:23:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id E4BEC6103A;
	Wed, 18 Aug 2021 02:23:48 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Kees Cook <keescook@chromium.org>
Cc: linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH] MAINTAINERS: Update ClangBuiltLinux IRC chat
Date: Tue, 17 Aug 2021 19:23:39 -0700
Message-Id: <20210818022339.3863058-1-nathan@kernel.org>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=tfCJtlcS;       spf=pass
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

Everyone has moved from Freenode to Libera so updated the channel entry
for MAINTAINERS.

Link: https://github.com/ClangBuiltLinux/linux/issues/1402
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index fd25e4ecf0b9..b68f04755b2e 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -4498,7 +4498,7 @@ L:	clang-built-linux@googlegroups.com
 S:	Supported
 W:	https://clangbuiltlinux.github.io/
 B:	https://github.com/ClangBuiltLinux/linux/issues
-C:	irc://chat.freenode.net/clangbuiltlinux
+C:	irc://irc.libera.chat/clangbuiltlinux
 F:	Documentation/kbuild/llvm.rst
 F:	include/linux/compiler-clang.h
 F:	scripts/clang-tools/

base-commit: 7c60610d476766e128cc4284bb6349732cbd6606
-- 
2.33.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818022339.3863058-1-nathan%40kernel.org.
