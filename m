Return-Path: <clang-built-linux+bncBAABB36C633QKGQE2CN274Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id CAA49211F4C
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Jul 2020 10:57:19 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id f25sf5217505ljo.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Jul 2020 01:57:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593680239; cv=pass;
        d=google.com; s=arc-20160816;
        b=jXkxNKq8h+WC0OprguErHyXC8mJ+2UHqpEhIkwtTjZ2wo14shWwloXJXwUxLBNww8O
         XvtNC7aeuRXQIhKjLkiW2yXG8xG/Re48qJpiE6tFJe+8CwM5bAHgyTje8cUv8yeivmXj
         hFJ8m1IdSHCLneiqwtkccSjfnaqckgJR4EC8nvBh9qpu+cS9p7l0gkgsiDdA+aVQEOvT
         bA1GxghNWomdJqAQKfQ9xYwDwPj2dyPfcslOSkHUb26Bnq4eLaJWDrnNDxart6UlzoF3
         kbUHVvdMbh5jsz6KIqJbM0nDFjeHYxQrUfyAjiddu08smz0TqXS8XnRipHfyVVLGKlSQ
         G+GQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=/SRIeV4lohOwkHyOTBxi5ZQaxpeQldfoeO232Y/dYPY=;
        b=d8p5D9D6EySX+AU6KjXmrYe9pFEqbRtyzcZmW0c+kM7j5CCkESRhG3KC+itYQbfvru
         nAzjsD4FR9NO17ZRJQAalF4B82oB3ywwL1i3MyP+qMO6Ia6NppRwWKsgTbar/m/TuP+B
         QR0psgOps/DXKRJcL+zjZ9zm81ElhTHcir/adYBN4Als31Vhc/CPoKDDbZdWUc2igHlq
         FGmI56XnQMPOq0u+Iea8w4Crp/flUKqQAPlEt9MSiSbgDPLqkXfXO+5OiyzuEvtK+uYG
         pYAeU8fA8wVm4uqsLAGPChRcmjhmVlJ/jLF97aFiVvvvFv+e18eFEkzX+cVyAEQou88i
         EWYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kdrag0n.dev header.s=fm1 header.b=MEUQxuCJ;
       dkim=pass header.i=@messagingengine.com header.s=fm3 header.b=uIwJGEKl;
       spf=pass (google.com: domain of danny@kdrag0n.dev designates 64.147.123.26 as permitted sender) smtp.mailfrom=danny@kdrag0n.dev;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=kdrag0n.dev
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=/SRIeV4lohOwkHyOTBxi5ZQaxpeQldfoeO232Y/dYPY=;
        b=iZ5TFxEF//kHA4Ar3U4rzn5YzkOwgFT6ie9DUUF1Z5exbqra92hZaqZWp/jAjJzN2a
         hoCLCAG2IzRBfx8NLW6vX3PsdVkVCjDIm1Yjw+TVZOPl0Yp9BDCGV/G8/zOD7AyIDp0h
         gi8sN5fyyQGx0HHV3Bj0iAxnhye0UtVe9DxFDkb11AGuRF9QZh51VZYSy6u6b0KjiLKz
         C0Szhyt+wjTzHYQhNsoCFukOqb+yb3Ev8PfzQm0iWbVLHfIfqQW8/UkNfmjL2zEtytWR
         sWdAMlluUf05sODj2zgTtAeHy03efGC/SiyUH/AxexyYyeSc8BTxR3DowQS9YS36FM3v
         /uXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/SRIeV4lohOwkHyOTBxi5ZQaxpeQldfoeO232Y/dYPY=;
        b=Mpxun/iYJ3bLJl2bJu0DLJP0HO5ZGE4AQfRV31LHQUhzlCBf6A2zf+nIlhdQsrlhnV
         TxReGcP6V0QPf98/4+ESY4zuUUKqbiXX/5IHbbhEcsUnbtM904qXpE7BCoNxhbrc+TWx
         EO10e/yno927Y6+GyQBDF6M42xyge4mZ73PHnn7VSozl9IKNeZfUrVLKl4KzIKcC05zZ
         YTq8qP50aFIQVmOaiFFvNeqVp8ViRfaavAaWpM+msyrgny7CjQU07V6eb1CkIjiSyrPH
         eUMlibp0Hx5fg7zaMTNgL1Ep4xhFQzswEg/aKIgdIiCRvxQLzy+8y0r5x37+3a+SwmA4
         TZbA==
X-Gm-Message-State: AOAM530voi5lUW+n3TvFCH55le3mNY5nwBUSPaI03fwFqEgpu7t/pWzO
	D6tQpl6n4DJmt0AlrS9nO7I=
X-Google-Smtp-Source: ABdhPJw1QCWHUg8J/+FnEfUvpCXW3pOoarIdANLL+KzugkIIcQymaeHlRDreCJDMieMZtx/fVmd09g==
X-Received: by 2002:a05:651c:39a:: with SMTP id e26mr7547102ljp.72.1593680239164;
        Thu, 02 Jul 2020 01:57:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:be95:: with SMTP id o143ls1948311lff.0.gmail; Thu, 02
 Jul 2020 01:57:18 -0700 (PDT)
X-Received: by 2002:ac2:52ac:: with SMTP id r12mr17613160lfm.175.1593680238775;
        Thu, 02 Jul 2020 01:57:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593680238; cv=none;
        d=google.com; s=arc-20160816;
        b=I8KwOZZTBUU4D7jjAQZGTDAj6RPycnOfW9PD50mWAm1uw7yiZ54sb/PejfRQqAnOhq
         zWpCw/9nMTKabXdOc78OBzA12NTjjyH9ckKUnZRdx36EVr8Cf4eAwedTQWJiwVNYmpB4
         LjrCtcmD7A4ZTA/H3afT0AqefTpR8yLWYTTwhIXXZYjSudPaCHKUwmdxYbVLwtXu87xg
         BE5RGtIYHdz6KLj8WqquoK7WMoq98fuNqzfmbals8hTu7q960FxQS2gxDO3llpgKjKn4
         aXAB0f7VIIsDYal+tiw5+JukUI+AagJdGdtsPtCWratQkkjQi/lECPVI2orGY+ZF4Qn0
         PLFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:dkim-signature;
        bh=s7+5045RDL/6bm3EmBYWa1nF0teYes17mVjN68BsV4s=;
        b=XA7EUxGS8EkGm4nU+UUYnsufOs2enzki1cbRI+CqsuTdGGLplvuJMAiXSQLCI+OiH9
         FnLJ0I1V6mmb008XBxJfcMoNFlK8zZVkNd8sEb3e43ZYSF4y9iJT8/tqX20o+HwCxrn+
         SXd3EfcGU2nH5hmpf8Ryuf6ya7IEiyoBw7xLHzT/rQGDsiyxdsC/iA/SFJyx5K76snI0
         F3nY91GwNIPXsAQyz3QYqXKa6X9Ae+7tdOQwPPJ0IOkiU6oSp+/MffYJf81Vu69/Zmr1
         3M9wvNG2SHs6Eo2EEZ7+C5ffR+uB/aHgCZ/sxYep797PMM9D9m9bgA3ZVxWk5HGcodGy
         GwiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kdrag0n.dev header.s=fm1 header.b=MEUQxuCJ;
       dkim=pass header.i=@messagingengine.com header.s=fm3 header.b=uIwJGEKl;
       spf=pass (google.com: domain of danny@kdrag0n.dev designates 64.147.123.26 as permitted sender) smtp.mailfrom=danny@kdrag0n.dev;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=kdrag0n.dev
Received: from wnew1-smtp.messagingengine.com (wnew1-smtp.messagingengine.com. [64.147.123.26])
        by gmr-mx.google.com with ESMTPS id k10si396384lji.2.2020.07.02.01.57.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Jul 2020 01:57:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of danny@kdrag0n.dev designates 64.147.123.26 as permitted sender) client-ip=64.147.123.26;
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailnew.west.internal (Postfix) with ESMTP id 38122A00;
	Thu,  2 Jul 2020 04:57:15 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute1.internal (MEProxy); Thu, 02 Jul 2020 04:57:15 -0400
X-ME-Sender: <xms:aqH9XvJgSq0_pjEr9zmnGVQ2yFBbyLAW7divZolljUhUTT26hDl-JQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduiedrtdeggddtgecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgggfestdekredtredttdenucfhrhhomhepffgrnhhnhicunfhi
    nhcuoegurghnnhihsehkughrrghgtdhnrdguvghvqeenucggtffrrghtthgvrhhnpedtvd
    etffeukeefuefffeeufedvtddvieegvefffeejfefhtdevjeetfefhgfehheenucffohhm
    rghinhepghhithhhuhgsrdgtohhmpdhlphgsgidruggrthgrnecukfhppedugeelrddvge
    ekrdefkedruddunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhf
    rhhomhepuggrnhhnhieskhgurhgrghdtnhdruggvvh
X-ME-Proxy: <xmx:aqH9XjLP0h57_1VRP570Kx4CnKB0JVK0ngAGTPwGHljHkEj2uOpvLA>
    <xmx:aqH9Xnt8YdtZJRT3uT8bXqtWKQ44obxNb5j5OYfInqNKGoCJXRH5xA>
    <xmx:aqH9Xobun66ZchYsENWT79A71NqQsrIInjKBwoos_CqiqyeE0lP2Wg>
    <xmx:aqH9Xu6JNg460E4TCYLAZpdaLKmUc3aN2xWaOajU6nNI-q7yLRneUeAPjwQ>
Received: from pinwheel.localdomain (vsrv_sea01.kdrag0n.dev [149.248.38.11])
	by mail.messagingengine.com (Postfix) with ESMTPA id CB7AC306005C;
	Thu,  2 Jul 2020 04:57:12 -0400 (EDT)
From: "'Danny Lin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Kees Cook <keescook@chromium.org>,
	Fangrui Song <maskray@google.com>,
	linux-arch@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Danny Lin <danny@kdrag0n.dev>,
	stable@vger.kernel.org
Subject: [PATCH] vmlinux.lds.h: Coalesce transient LLVM dead code elimination sections
Date: Thu,  2 Jul 2020 01:54:00 -0700
Message-Id: <20200702085400.2643527-1-danny@kdrag0n.dev>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: danny@kdrag0n.dev
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kdrag0n.dev header.s=fm1 header.b=MEUQxuCJ;       dkim=pass
 header.i=@messagingengine.com header.s=fm3 header.b=uIwJGEKl;       spf=pass
 (google.com: domain of danny@kdrag0n.dev designates 64.147.123.26 as
 permitted sender) smtp.mailfrom=danny@kdrag0n.dev;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=kdrag0n.dev
X-Original-From: Danny Lin <danny@kdrag0n.dev>
Reply-To: Danny Lin <danny@kdrag0n.dev>
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

A recent LLVM 11 commit [1] made LLD stop implicitly coalescing some
temporary LLVM sections, namely .{data,bss}..compoundliteral.XXX:

  [30] .data..compoundli PROGBITS         ffffffff9ac9a000  19e9a000
       000000000000cea0  0000000000000000  WA       0     0     32
  [31] .rela.data..compo RELA             0000000000000000  40965440
       0000000000001d88  0000000000000018   I      2238    30     8
  [32] .data..compoundli PROGBITS         ffffffff9aca6ea0  19ea6ea0
       00000000000033c0  0000000000000000  WA       0     0     32
  [33] .rela.data..compo RELA             0000000000000000  409671c8
       0000000000000948  0000000000000018   I      2238    32     8
  [...]
  [2213] .bss..compoundlit NOBITS           ffffffffa3000000  1d85c000
       00000000000000a0  0000000000000000  WA       0     0     32
  [2214] .bss..compoundlit NOBITS           ffffffffa30000a0  1d85c000
       0000000000000040  0000000000000000  WA       0     0     32
  [...]

While these extra sections don't typically cause any breakage, they do
inflate the vmlinux size due to the overhead of storing metadata for
thousands of extra sections.

It's also worth noting that for some reason, some downstream Android
kernels can't boot at all if these sections aren't coalesced.

This issue isn't limited to any specific architecture; it affects arm64
and x86 if CONFIG_LD_DEAD_CODE_DATA_ELIMINATION is forced on.

Example on x86 allyesconfig:
    Before: 2241 sections, 1170972 KiB
    After:    56 sections, 1171169 KiB

[1] https://github.com/llvm/llvm-project/commit/9e33c096476ab5e02ab1c8442cc3cb4e32e29f17

Link: https://github.com/ClangBuiltLinux/linux/issues/958
Cc: stable@vger.kernel.org # v4.4+
Suggested-by: Fangrui Song <maskray@google.com>
Signed-off-by: Danny Lin <danny@kdrag0n.dev>
---
 include/asm-generic/vmlinux.lds.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index db600ef218d7..18968cba87c7 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -94,10 +94,10 @@
  */
 #ifdef CONFIG_LD_DEAD_CODE_DATA_ELIMINATION
 #define TEXT_MAIN .text .text.[0-9a-zA-Z_]*
-#define DATA_MAIN .data .data.[0-9a-zA-Z_]* .data..LPBX*
+#define DATA_MAIN .data .data.[0-9a-zA-Z_]* .data..LPBX* .data..compoundliteral*
 #define SDATA_MAIN .sdata .sdata.[0-9a-zA-Z_]*
 #define RODATA_MAIN .rodata .rodata.[0-9a-zA-Z_]*
-#define BSS_MAIN .bss .bss.[0-9a-zA-Z_]*
+#define BSS_MAIN .bss .bss.[0-9a-zA-Z_]* .bss..compoundliteral*
 #define SBSS_MAIN .sbss .sbss.[0-9a-zA-Z_]*
 #else
 #define TEXT_MAIN .text
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200702085400.2643527-1-danny%40kdrag0n.dev.
