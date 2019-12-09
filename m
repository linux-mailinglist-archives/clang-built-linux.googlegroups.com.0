Return-Path: <clang-built-linux+bncBDYJPJO25UGBB7MVXPXQKGQE3NVCIUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id B599F117952
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Dec 2019 23:30:22 +0100 (CET)
Received: by mail-qt1-x83f.google.com with SMTP id m8sf528801qta.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Dec 2019 14:30:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575930621; cv=pass;
        d=google.com; s=arc-20160816;
        b=LJ5exsGtN+zVHYaMvRJ78TdZSp2fJ9Bx1hKIK60Qp6DlXh92QU9SDXVmr7MPtlmI0T
         1PTSvpIIR7wP9+nLBRLS4oJHy/gaxquPGxPZhQpU+wYllhPFbCqWxHw08HzmS5UFpNw/
         HslX7T4S9vFA3gZ0Cs2aD4SCha16/VgZlGLlIRjefJuvLITxRoWMHzIJb56ndRBsWHwo
         A5+JV0gjps4u8uVViGl49eu89DdDFPyCQbBSuYgKB6S02drdF9pb6+B6byE2Oe4dnw/9
         KiIkYlrRzLxoeZQw+6YjNbbk6/9F9JTC2jfcMzYGDWsNCbjre/evKvPk2PSuccKcLPUa
         Txcg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=6rEnnUF1FWVU+cpWEOEwEBNmsZZlhLSguq6TigPTdCg=;
        b=B6REwHiHdvomOcGEtaBRJ+QVriWabGT/2bRuvfo0a0hcEIjuWOTjuHYiXqwRB6wa7r
         BlhzreQbCJHa5usdtR+HJyzGdHSa8vhTgiilIG2Y2GR06lH/+IK/p0HBcAcZ6JJWQq2N
         zx154EvS3/bka0811VXTNqCa/0+YvuOsdlbjunFVugHziC98b9VnVUMcJ3JyDlJdyYgr
         LCZPrpeeXs5hBCoV3UQgw4oDYEes6Vn7w8kEEVqONlXchc4EQuelJuHKr/6cvnP9k+Cq
         pKQRWnr53mXbrcYGr3D3+E+cAiAHOSyGaQhaoeaIDsWSpDZ4mH0ZUg7OcDOkj3oND3xF
         tL+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gm9HwVK6;
       spf=pass (google.com: domain of 3_mruxqwkaemsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3_MruXQwKAEMsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=6rEnnUF1FWVU+cpWEOEwEBNmsZZlhLSguq6TigPTdCg=;
        b=oYolXJHz7O1fpsmtGHWQ6xNMqqFAEO1Ils5CbwBpWNpZC9cDWfRHY2mYeO9bN1FIhF
         9NZJnNItjFuhNR2wCRyhnVTZuf8HUac+ZCHri1TC8B0jC67a+wYMyc+z6Tdo8ZRsThLg
         pDhVVyC4AAKhnt/MLldgQF2bAp2Y5MyVFqCEcPlfECaaHZc2FrhUtb8QSEGpV/V+EZ1W
         7Jv7p/KPkXwJ9RVL1JNXDa1W92LMvY8Taup7Yf+3Sq2nsWExiUbp6V0zTXVAuGsP45xn
         TLfusVvI4ZYy8OzuXTU7n3EsecZw3eKQ7IDAf5N+drgSkWHOcPyHmDEMP7mOrDYeFQi2
         OjpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6rEnnUF1FWVU+cpWEOEwEBNmsZZlhLSguq6TigPTdCg=;
        b=ORUxYuqgvqKyfQRvKIo4NkthAE1IjCK9+wazuYYSQUjNdMLkURMBxAe+Gi6AHWaSiN
         O4Azbkt+seRjnsZGW59w6X8KtU5ssN+L/ARfCcThzaNH2cf8VE1pTKErZDFdIcCei6AY
         AIv6ySPPy1lqZjAfEPy8K0YX4DDIvvJFyO2Ndnj/kEZO03g442Gi4DZWBsnUpsWrUVGx
         L7gbcJTH04D5zqgCwRL3pbwKuRozOKgH42eRgH6qJHELX0JUfG9BN5WLh1qOrnjJxJxk
         EiRx0cdudBbBxVggwy9u5FAGzNTyAo+jhXv1tER30AYIckhQzGAd12IG3Eg761cJEHtM
         G2GQ==
X-Gm-Message-State: APjAAAV7Lue+mpNt3ORCwsxCwm8HCJ0WOiJfF36wBQI0/VbH5NftuSTG
	pkLHq2Ya9RFUIdTK75SO3P8=
X-Google-Smtp-Source: APXvYqynPxPYvY9IHa/Dv85nv6Iuc9ShtFAoRJzD4jS0ZEC9U278HPzQxMgzdUK5tCuEuJzAEoR7Rw==
X-Received: by 2002:a37:9fc9:: with SMTP id i192mr28943930qke.364.1575930621738;
        Mon, 09 Dec 2019 14:30:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:764f:: with SMTP id i15ls4395265qtr.5.gmail; Mon, 09 Dec
 2019 14:30:21 -0800 (PST)
X-Received: by 2002:aed:3c12:: with SMTP id t18mr2309859qte.140.1575930621445;
        Mon, 09 Dec 2019 14:30:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575930621; cv=none;
        d=google.com; s=arc-20160816;
        b=EvQmaTzjLER7y0ADItkSriurKvJwTLKAmfUpJXV43YBTPOyWaDeki8EL0HYutSUpz4
         wbFJbmR2nmypo+8HX9AoeG7W7hyTh899YsOAviwiOB2/9bipq6NwkiFtxr7BMx7KY96o
         n4aASoHf34LAtV2fTdme9rZcxPQ+H2alwIv5yMfxq4YgL7PjdU7oSunFCwIs/uiaWcSp
         H9XuUKhvvrATQayrV/TlL0Dpgx6F9D6s9R1lyk5vbsrjI8f9ktZscEbaiH1bW0ngYuFp
         fgElHApQMPyIByluc3GTyIWiFj74mf6DAPE+Azxpy7gVMbqyzRRNNG1xZyX5b6xrhtJD
         G6BA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=t/1UStflpkba+9ZUNaSHKODK6B51M8rcDxieTuoYA4M=;
        b=NcBs5eJARIZryJ4A1DBGOGqbEddNGmIdrBNyH0f3KsO/LVs0A3G2LMljmPcxyzJxxf
         7abhuWdb6i5yGFXra9eldv7wyImDNTgrClZCYR80wER3tggcSG/KZUvuKXJ6wLy3uP4T
         0fe/mkTfQt7ZQ66CgnhL7CQFh/GA7iQywZOSPe3+MIpWWxrjNEbMisK3NtBAQfAY1ZTK
         /bbXRB2y+LFbIuEFcE+jA2wkEt3hbQvBuhs+xPJUAiy0OBlIf3H3JWxnzByAOKyxeewC
         tQdlAUT96g2PonKr7h4c+75e4Yt6AYmfFZqShZTJtuxYf9+tnKfJBq5G8SBeTo/wR5Bt
         vIEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gm9HwVK6;
       spf=pass (google.com: domain of 3_mruxqwkaemsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3_MruXQwKAEMsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id b11si50779qtq.4.2019.12.09.14.30.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Dec 2019 14:30:21 -0800 (PST)
Received-SPF: pass (google.com: domain of 3_mruxqwkaemsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id i8so233761pgs.3
        for <clang-built-linux@googlegroups.com>; Mon, 09 Dec 2019 14:30:21 -0800 (PST)
X-Received: by 2002:a63:4f5c:: with SMTP id p28mr20715986pgl.409.1575930620462;
 Mon, 09 Dec 2019 14:30:20 -0800 (PST)
Date: Mon,  9 Dec 2019 14:29:54 -0800
Message-Id: <20191209222956.239798-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.24.0.393.g34dc348eaf-goog
Subject: [PATCH 0/2] Hexagon fixes
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: bcain@codeaurora.org
Cc: Nick Desaulniers <ndesaulniers@google.com>, lee.jones@linaro.org, 
	andriy.shevchenko@linux.intel.com, ztuowen@gmail.com, 
	mika.westerberg@linux.intel.com, mcgrof@kernel.org, 
	gregkh@linuxfoundation.org, alexios.zavras@intel.com, allison@lohutok.net, 
	will@kernel.org, rfontana@redhat.com, tglx@linutronix.de, 
	peterz@infradead.org, boqun.feng@gmail.com, mingo@redhat.com, 
	akpm@linux-foundation.org, geert@linux-m68k.org, 
	linux-hexagon@vger.kernel.org, clang-built-linux@googlegroups.com, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=gm9HwVK6;       spf=pass
 (google.com: domain of 3_mruxqwkaemsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3_MruXQwKAEMsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com;
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

Fixes 2 warnings when trying to build hexagon with Clang:
$ ARCH=hexagon CROSS_COMPILE=hexagon-linux-gnu- make -j71 \
  CC=clang AS=clang LD=ld.lld AR=llvm-ar

Fixes -Winline-asm and -Wimplicit-function-definition.

Nick Desaulniers (2):
  hexagon: define ioremap_uc
  hexagon: parenthesize registers in asm predicates

 arch/hexagon/include/asm/atomic.h   |  8 ++++----
 arch/hexagon/include/asm/bitops.h   |  8 ++++----
 arch/hexagon/include/asm/cmpxchg.h  |  2 +-
 arch/hexagon/include/asm/futex.h    |  6 +++---
 arch/hexagon/include/asm/io.h       |  1 +
 arch/hexagon/include/asm/spinlock.h | 20 ++++++++++----------
 arch/hexagon/kernel/vm_entry.S      |  2 +-
 7 files changed, 24 insertions(+), 23 deletions(-)

-- 
2.24.0.393.g34dc348eaf-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191209222956.239798-1-ndesaulniers%40google.com.
