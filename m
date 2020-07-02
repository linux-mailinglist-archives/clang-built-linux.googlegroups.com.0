Return-Path: <clang-built-linux+bncBAABBWG27H3QKGQE6CWRNAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 95D72213007
	for <lists+clang-built-linux@lfdr.de>; Fri,  3 Jul 2020 01:27:21 +0200 (CEST)
Received: by mail-il1-x137.google.com with SMTP id l11sf20662978ilc.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Jul 2020 16:27:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593732440; cv=pass;
        d=google.com; s=arc-20160816;
        b=R5jtcQ9QT20NQIR8rVIQrP4q0EASL+wwXdueqC6niAiRPkHeMFbeA1qTwfxwnIINnj
         AsxWp9Y2ZoKxuPbAuOkMEQrFLbN2gVH+rgPlCjAr2/2xpAcDGt/nvnzKmvo0KMdlmxxy
         69x/iKFG5+5LsCx7jG0+dJtoYOxcy7bXo/DLMRWISD7/2DttPLgOBT6Vp3WO9ra9Gif8
         hYl2pxNq9SN6uo7A+PzLLlsRyGGdpSlBNGJKm5JUd7xdDU4VMXjs3TasahDN8kHZhTIx
         Z6HmFUuJwgCFT3kRAciBG2orh/XhjMkX7s+VjqtwLIfIzkfXqOmiCe3EPumzPcLAwfVt
         km1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=Dl6Wcep6iI1aW5WSSaX8djIvQ7I6bSIWokJS7ygD9Zo=;
        b=BkVod+LYNiPUk49S5ygZwImnl3E/4DoiLYPwSDtZyPSVZmTq5Snz2c57Ebzitxy6ga
         oS0MO4MyTnWIpgwv3UxwngBp3RuVh/PyGh+HrRzcPe/tpSmw1P99pDbE+Muk5gu5Eec3
         8S0TVSHb6KHExDzHag8jJ7JTnfyeHGXaLja6Rkg4H0nokVbTefL4CGoohpsyT1NsG1xb
         F4YaX9Z3ndnkVExMZkL6UsEJ3Dm2t4FKZz95ctZZbAwXnawCm5gF1dutALtJMNTPiEC0
         vv0e40hL/UOmn3Uo1UxX2Kjs5rpLLW45MKPutfswy3Z+TyW60BKu7ckasNA+bawBKTlu
         wKfA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kdrag0n.dev header.s=fm1 header.b=dNCDR6kg;
       dkim=pass header.i=@messagingengine.com header.s=fm3 header.b=E06uoqPv;
       spf=pass (google.com: domain of danny@kdrag0n.dev designates 66.111.4.229 as permitted sender) smtp.mailfrom=danny@kdrag0n.dev;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=kdrag0n.dev
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Dl6Wcep6iI1aW5WSSaX8djIvQ7I6bSIWokJS7ygD9Zo=;
        b=dj69xH5E9FnQI2rs23/i7ws8heNWx4/r81hsQau3VRzyYR53xYOm2UWEwJ2p0kQbsW
         kDCjhbCc+j7Q7Y1mUokqbnAR0Ez7Lq+ZLaEAxYTuUxMKfFR/4ztD2oD6Ss7/xBSasUhq
         4hsWNPxb2MdZ3YjIiI3CdgPh111j82vmWHMjnDKp43Cr2B8aDDerHg33j8Qoy1mrmyrM
         1AvQZhfyspQTEhngBVBFC72T/CsSku5/ExAHv9j7g0gRyrbIJum9pcqoyN4MdivE8M+3
         NwquvE0TEwguASDrwzCf/uEJQn9Qo9yzuJXNJiZ5xI+vMVseUsqZ7moLOqPpEdKbo6Lx
         3T/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Dl6Wcep6iI1aW5WSSaX8djIvQ7I6bSIWokJS7ygD9Zo=;
        b=RqInTM+L3KMQy02RH+tMsdAj7xj0TQZrW41ACoqhcSLt0OCB+HTYwt1DEcCL0bfQML
         T+sQkWCI3Xf2jNyWm/Wk0ZqUF5BwVIetPRkuisSlgA27VJVWridaHul9dElhBYldH6+A
         g5WFgu2+oRZMuCyddHdurTDaNBIA2C5S4yo495LN4+0otHW5b+OUnwOA3a7i1f1zwnH9
         tJS3ndSY91T6EH/4hnpbCbq7Mg7VXIuUf5m/8Tl11nnD4JttZoZr/t4obQtyNCKVkzRS
         sIwZpg8oKL1juvJeQm4eQpw0/Vn1/bHq8ydtvfWVGr19cqqWtQrXCMPbvmP7c6wadRb8
         gAyw==
X-Gm-Message-State: AOAM533HWPZQU0llXkFE8dfC74Kn4nj0gTHpVS+kmyJPR3y4gDBtCnvD
	oKUJZPgdmIFcXEUrtnJIg14=
X-Google-Smtp-Source: ABdhPJzavp20QVvlwoT5MCwD5BwotybTOoKpSOUvhh7yrtkaq4jUmBeAKgdXcJ0gB8hyNfFZ5T8Obg==
X-Received: by 2002:a92:bb55:: with SMTP id w82mr15383814ili.146.1593732440592;
        Thu, 02 Jul 2020 16:27:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:1584:: with SMTP id e4ls1550613iow.0.gmail; Thu, 02
 Jul 2020 16:27:19 -0700 (PDT)
X-Received: by 2002:a6b:1449:: with SMTP id 70mr9741562iou.153.1593732439251;
        Thu, 02 Jul 2020 16:27:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593732439; cv=none;
        d=google.com; s=arc-20160816;
        b=oYl4QN9aWgiQfHZRxjrgEjaylVfp3XfFWAwe8rDJPC+Xio/IszwRUDj8UQ5D53li4K
         Ndp/J+69m32gFs5Y7fxYbPoF64YDxav7I1XDw3w5f+kEqf5wTQ0yL1//zwXWYe2ZxjWC
         WmAhY1mRUnXhntNYzJIsfi7KXhfwT3IaJi/NUJ0ApdqyvedxmqDff0IhGhgY8o8VMop1
         upEdXMj6Xdtm21oGVNfJXa5+vCQh9BW1QWJYfdLn5yi/ef6JlM0JSzvjsWmr1PFqCSKM
         JLl/oL3SHfnoCK2Eo8MUHmYmEsDbjKpJ40hP5tvqJlhhMyZF/GfLXAkIAdbQ7z/UDSQK
         /iUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-signature;
        bh=e7+7Th1m9BXZPGB/OmZlUELLweXezZABXtnEK2WW7Ys=;
        b=CFp9lDKchvux1A9UIKtjsC1GdwZHSsHrxLfMAZb4q9hzBdsihNQD/bvnGqvDBiQWMx
         suruqAKqCH4bZr+hd1pHWdzcYsBOssxD5/+0Z8bORf16QqDtRqgXMLjEFkcbKRg6owV2
         CmpY4p40hYCGGkGzQOZkZ6F8/VnuWznmGf5XxPL2xGmuX6O4t0thT+aHxi/UbpSuKpKw
         RZQlC5po62t0N+9gHcH36bGeFnSarmu9g3tumUyMbqe8GxJl20vb5h5j+aT0MJP3oOvL
         pbd9ow/G6sPqr5zTKV2r8+6RhEkDz70TSJPGTi5mK8n44zFvODYVPc9U8bBLJTfWqJ5U
         3dEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kdrag0n.dev header.s=fm1 header.b=dNCDR6kg;
       dkim=pass header.i=@messagingengine.com header.s=fm3 header.b=E06uoqPv;
       spf=pass (google.com: domain of danny@kdrag0n.dev designates 66.111.4.229 as permitted sender) smtp.mailfrom=danny@kdrag0n.dev;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=kdrag0n.dev
Received: from new3-smtp.messagingengine.com (new3-smtp.messagingengine.com. [66.111.4.229])
        by gmr-mx.google.com with ESMTPS id t7si189722ilh.2.2020.07.02.16.27.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Jul 2020 16:27:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of danny@kdrag0n.dev designates 66.111.4.229 as permitted sender) client-ip=66.111.4.229;
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailnew.nyi.internal (Postfix) with ESMTP id 7BB1A58038B;
	Thu,  2 Jul 2020 19:27:18 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute1.internal (MEProxy); Thu, 02 Jul 2020 19:27:18 -0400
X-ME-Sender: <xms:VW3-XhUwNoCh7-UgD6Sbje0eplrd3gRO5mvHxJ0BcsK88MFvDbNigQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduiedrtdehgddvtdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepffgrnhhnhicu
    nfhinhcuoegurghnnhihsehkughrrghgtdhnrdguvghvqeenucggtffrrghtthgvrhhnpe
    ffvdfgjeekleetleekkeegvdetvdejgfelkeevtdffffefhfefvddvtdffieegjeenucff
    ohhmrghinhepghhithhhuhgsrdgtohhmpdhlphgsgidruggrthgrnecukfhppeejfedrvd
    dvhedrgedrudefkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
    fhhrohhmpegurghnnhihsehkughrrghgtdhnrdguvghv
X-ME-Proxy: <xmx:VW3-XhlzlxfgqeJyrBhe6M6wqjtR5wx-lNWT11WYYN6Q8ijDmJfDGA>
    <xmx:VW3-XtbPUN3EUr0Dti1m_2HetNM1yPb_QZ387ZbbavZmLQdic-aBkA>
    <xmx:VW3-XkUuTkjbzViTrlUmmDJll3fs_-n8b5qqpaaa8cKPwGz7wSHIpA>
    <xmx:Vm3-XpX1F6a7TEQqKJXIjRcoscaln2Epa91xc0AsE1qf3YbiOvRMmA>
Received: from pinwheel.hsd1.wa.comcast.net (c-73-225-4-138.hsd1.wa.comcast.net [73.225.4.138])
	by mail.messagingengine.com (Postfix) with ESMTPA id 87861306006C;
	Thu,  2 Jul 2020 19:27:16 -0400 (EDT)
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
Subject: [PATCH v2] vmlinux.lds.h: Coalesce transient LLVM dead code elimination sections
Date: Thu,  2 Jul 2020 16:27:13 -0700
Message-Id: <20200702232713.123893-1-danny@kdrag0n.dev>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <7304fdf3-23d7-442b-b870-e88ae6f37004@localhost>
References: <7304fdf3-23d7-442b-b870-e88ae6f37004@localhost>
MIME-Version: 1.0
X-Original-Sender: danny@kdrag0n.dev
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kdrag0n.dev header.s=fm1 header.b=dNCDR6kg;       dkim=pass
 header.i=@messagingengine.com header.s=fm3 header.b=E06uoqPv;       spf=pass
 (google.com: domain of danny@kdrag0n.dev designates 66.111.4.229 as permitted
 sender) smtp.mailfrom=danny@kdrag0n.dev;       dmarc=pass (p=REJECT sp=REJECT
 dis=NONE) header.from=kdrag0n.dev
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

.{data,bss}..L<symbol name> sections are also created in some cases.
While there aren't any in this example, they should also be coalesced to
be safe in case some config or future LLVM change makes it start
creating more of those sections in the future. For example, enabling
global merging causes ..L_MergedGlobals sections to be created, but it's
likely that other changes will result in such sections as well.

While these extra sections don't typically cause any breakage, they do
inflate the vmlinux size due to the overhead of storing metadata for
thousands of extra sections.

It's also worth noting that for some reason, some downstream Android
kernels can't boot at all if these sections aren't coalesced.

This issue isn't limited to any specific architecture; it affects arm64
and x86 if CONFIG_LD_DEAD_CODE_DATA_ELIMINATION is forced on.

Example on x86 allyesconfig:
    Before: 2241 sections, 1171169 KiB
    After:    56 sections, 1170972 KiB

[1] https://github.com/llvm/llvm-project/commit/9e33c096476ab5e02ab1c8442cc3cb4e32e29f17

Link: https://github.com/ClangBuiltLinux/linux/issues/958
Cc: stable@vger.kernel.org # v4.4+
Suggested-by: Fangrui Song <maskray@google.com>
Signed-off-by: Danny Lin <danny@kdrag0n.dev>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
---
v2:
  - Fixed swapped example sizes
  - Added .{data,bss}..L* sections, since it looks like they're emitted
    in some cases even when LTO is disabled

 include/asm-generic/vmlinux.lds.h | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index db600ef218d7..737ecf782229 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -94,10 +94,11 @@
  */
 #ifdef CONFIG_LD_DEAD_CODE_DATA_ELIMINATION
 #define TEXT_MAIN .text .text.[0-9a-zA-Z_]*
-#define DATA_MAIN .data .data.[0-9a-zA-Z_]* .data..LPBX*
+#define DATA_MAIN .data .data.[0-9a-zA-Z_]* .data..LPBX* \
+		  .data..compoundliteral* .data..L*
 #define SDATA_MAIN .sdata .sdata.[0-9a-zA-Z_]*
 #define RODATA_MAIN .rodata .rodata.[0-9a-zA-Z_]*
-#define BSS_MAIN .bss .bss.[0-9a-zA-Z_]*
+#define BSS_MAIN .bss .bss.[0-9a-zA-Z_]* .bss..compoundliteral* .bss..L*
 #define SBSS_MAIN .sbss .sbss.[0-9a-zA-Z_]*
 #else
 #define TEXT_MAIN .text
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200702232713.123893-1-danny%40kdrag0n.dev.
