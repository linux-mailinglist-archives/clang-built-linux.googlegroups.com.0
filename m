Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6GPZOEAMGQEDJFSAIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 407F13E84DC
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Aug 2021 22:56:26 +0200 (CEST)
Received: by mail-oo1-xc3c.google.com with SMTP id s4-20020a4aa5440000b0290286d772ab33sf54611oom.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Aug 2021 13:56:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628628985; cv=pass;
        d=google.com; s=arc-20160816;
        b=sSuwMlra226Pf43laK3cowKaYfEelSCkjuoMyzr//jATR6UMvU6X5nhR2h/4Y4tMyn
         7tGicXXdulNMo7O4jEOZwejY4K4CYJH+I55prgqLaSFy9uuus8U5pETvd8mdEzs8rIkM
         /paflOjA9XhKDerLwKhZjqsI8FVLmbN6EMJvY58Yca+l4vgy8JYHXT8/V2ZKR6VnKmQl
         qW5vgEl5CtxSFsnay195xp5vQJ5x0lcpDYCpn+BNEqtuLVVSdO/SJFfnw5n9EiqWlH+U
         uJ4IfFT6wyDLsjaK5ZorLwhyOYlxwoA02hwvM8DDZyyhyOXLXoADAFMXjmS9TznjoRh+
         iInQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=sGMq9AACG7I5utUJLuCXSAOa1DdNww5+q6VJBRHuSq4=;
        b=zoYEksuxUj08sP2fZ3Yn70l7b/TT1DGT0isEMBNngdl5evo0bWc4tmvbKT4z8siYW+
         cApJ3DPq6iUc5pxH+BlCLVWToG7AcZFQLFESvCRoBjY0UZ9eJH5CFseJAERatwIQuitU
         aRQqslkdpwUikvKXsdtagLwuaOGxftjGLN1QICYHYzccG50RvWkaLy7c8bzQtSX2EL+Q
         7PO1t2NPV9BQVoHFDi+Che63W2uBEha0aOP8JVI6mGX8n1F5SE1ZnJ1n3cwwrvVsVnVw
         xjfkk9JnDPKe+uIOqb3fZFqrWV5KcFw9Bacs8g5yDhZw7vZsSOHZ3f9NxtH3SscUpnuc
         lM2A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LvzCirHk;
       spf=pass (google.com: domain of 39ocsyqwkab8i89n5pgid9mnbjjbg9.7jh@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=39OcSYQwKAB8I89N5PGID9MNBJJBG9.7JH@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=sGMq9AACG7I5utUJLuCXSAOa1DdNww5+q6VJBRHuSq4=;
        b=bBkpF5iWOVhG9xxveKZEbToA8Hdl8Xghr//j8mkLZMzZwnS9P6799+QkBWss8LVqp1
         ghs/GNwoI4W7cH2CPr1TKkoS1aR8ziRfSCgRp3cXpPiOqMzCKOvtqDGVxJi6c3tZmeyK
         5Ix5kqsNSrvVgoXMPZekKqkdCr928N+BEQr0bIm2Epg6AL+vEiLiT9uABj1aiQX1v8tk
         rXe5DMpH5plDmFTP35Wx5pbth7Oi4H5hI8/CTex7O7o23rl9R0/kuLxdDlMyRE5dOVY8
         xKiLYQM6pMu/ArDHXWZ+7FPc+HqOQW0lkgznj+Oz4SFQOl9jGR2QNVmIlV3x+CfyisMu
         DWvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sGMq9AACG7I5utUJLuCXSAOa1DdNww5+q6VJBRHuSq4=;
        b=rybfGS+elIyDhBBa6a9DsZ5HosCE3WoQX1Tdg7yGjR47fKwAn/M0UB30EjfCTex1cf
         WKHVApsCCWTuvjdF1OUHrfk2w98FarbzKrsAWGUz89RpJEJXXdfmzIpLJGO6ScABmtqz
         Gy7PvJoZb4sJKxkNaOucEbwUlu20IJJWj4lo7GHjViYim0QIKnx5w6HFpoEOH9zIYNdj
         UIoxSvoYps22dfuVrh112VpBNX8NObnm+FuA75SiW1odQBmG9NyVktReKTzQXYAMaqz1
         1HyixC+ndDMADBeJIbcWT5KhlcikQpV42Hx5j90eh1Xz0gxr6uKk06Fc/1lHZynPFMoO
         Ki2Q==
X-Gm-Message-State: AOAM532kOZOzez36yMHieLksBvAaed6vT5E2Ft572qzgTh1S6DZXppWm
	knBijg3CFQOCv533adMCw9M=
X-Google-Smtp-Source: ABdhPJzXAm+WJ8Frmn6DWRpW7cwSQKCO7w9BPkNOdquu4cl9sqvYtrOM0NRBOZqjk6NyPwPG7BfWIw==
X-Received: by 2002:a05:6808:1301:: with SMTP id y1mr4996066oiv.156.1628628984786;
        Tue, 10 Aug 2021 13:56:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:2a05:: with SMTP id y5ls4658006otu.2.gmail; Tue, 10
 Aug 2021 13:56:24 -0700 (PDT)
X-Received: by 2002:a05:6830:2702:: with SMTP id j2mr21027232otu.175.1628628984356;
        Tue, 10 Aug 2021 13:56:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628628984; cv=none;
        d=google.com; s=arc-20160816;
        b=Y3g8H7T3yUkEksK9t571zbDyekD3bfnNa4LeKpZRnSLbecQecjgzI/mQ8khMt7hpfz
         BXpwI752omjnA+rMPnE7pZhtfqG/+nsCbMKrlOLLqPLGXZLtMQlb/pzJYH13e995XcaX
         2zn4KDNDpzd6EGxkw2SNJJSPxkANkq/bzaY6BleJHARc3ygwYvE2F2Av+tbkfoDHdEwA
         a6zHaLVlZaOdnaWMZ7H2f8tlOOv16NRb+A5+tjXkaCA6VzTvDcvk6Nrrz1ZQX3TkvLht
         RQslvS2sVJeU1WnC4VzaKB4xJfuPVw5pF9av2y0mups0eon125n5B6DiafqhDMvV9ynn
         mCbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=JgzvWF4aPcZQw92AZWKQngRnopIXZApLRoonBBa4I1M=;
        b=z2PZGQoR83WdBgsIFW3TjcuGygHgTwfOCw/uAoXtjKK6/Nth5txN96cOW+zGx43gMz
         SweAcCyoW8YwlktCWKK+STiDWGHqaxGmcWqCjEKQ9RZTQ+Fwcb1jlB7xrqvVyDMihD2n
         X+13JYOCPOOmmqRN1egwMj6Mnvs2E7dq5JYCUYb5bvGTenAMzVFCvRA5zSSCnY9Rrqfx
         SrKEwLhJF3HvORZqu/6JwD8IKgBV4sl6PUF5rlrEFdfigz67KMh+56m8Xl74NpBbP+ob
         Jl4ulI/xNx3+J950/OENqG2IcLonUn1TR+tuq1HP8rm4iLDHM75zMjPbqxXzOUGhS6ZZ
         6X/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LvzCirHk;
       spf=pass (google.com: domain of 39ocsyqwkab8i89n5pgid9mnbjjbg9.7jh@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=39OcSYQwKAB8I89N5PGID9MNBJJBG9.7JH@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id o7si897981oik.2.2021.08.10.13.56.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Aug 2021 13:56:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of 39ocsyqwkab8i89n5pgid9mnbjjbg9.7jh@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id a72-20020ae9e84b0000b02903d1f6aa7886so9801811qkg.21
        for <clang-built-linux@googlegroups.com>; Tue, 10 Aug 2021 13:56:24 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f3a2:624c:cdb9:1ee9])
 (user=ndesaulniers job=sendgmr) by 2002:ad4:4e50:: with SMTP id
 eb16mr17380946qvb.14.1628628980850; Tue, 10 Aug 2021 13:56:20 -0700 (PDT)
Date: Tue, 10 Aug 2021 13:56:10 -0700
Message-Id: <20210810205611.4013424-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.32.0.605.g8dce9f2422-goog
Subject: [PATCH] MAINTAINERS: add Nick to Kbuild reviewers
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Nathan Chancellor <nathan@kernel.org>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=LvzCirHk;       spf=pass
 (google.com: domain of 39ocsyqwkab8i89n5pgid9mnbjjbg9.7jh@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=39OcSYQwKAB8I89N5PGID9MNBJJBG9.7JH@flex--ndesaulniers.bounces.google.com;
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

Kees' post inspired me to get more involved. I still have a long way to
go in terms of mastery of GNU make, but at the least I can help with
more code review. It's also helpful for me to pick up on what's missing
from the LLVM ecosystem.

Link: https://security.googleblog.com/2021/08/linux-kernel-security-done-right.html
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index efac6221afe1..9768e4a19662 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -10091,6 +10091,7 @@ F:	fs/autofs/
 KERNEL BUILD + files below scripts/ (unless maintained elsewhere)
 M:	Masahiro Yamada <masahiroy@kernel.org>
 M:	Michal Marek <michal.lkml@markovi.net>
+R:	Nick Desaulniers <ndesaulniers@google.com>
 L:	linux-kbuild@vger.kernel.org
 S:	Maintained
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git
-- 
2.32.0.605.g8dce9f2422-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210810205611.4013424-1-ndesaulniers%40google.com.
