Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBTMP7P3AKGQETTI3BFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id D36D81F2425
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Jun 2020 01:20:46 +0200 (CEST)
Received: by mail-vk1-xa3e.google.com with SMTP id d14sf5101537vko.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Jun 2020 16:20:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591658445; cv=pass;
        d=google.com; s=arc-20160816;
        b=JCubcJDs/rMYFlUMOX4gzrrpiqhsCieQ9Phe3igeuf7Q7qIA0Z+r2ANqyScuF9+PfF
         DVFgoWyRf4Z4hXTXslXDNjyBt5UKv9KIsclxh5PKi/O88NfE6XOyAtmanjmXlyUJ37Uv
         gbK3yz3aI4rgTqlyufWhPnPT7YBVm162GAhVG4YiSXoYYEoOprK4At2a3RT5qYF9ulRT
         TBoo+7hscBgZ4+61/105bwsXG39hWU2kOK9hQa5eVp7na5eoEJVQ5klrubGgRB5qyYE+
         f5rBXUhIcnsOqeGz/NR6VbDrD/NyZwBLo5eT0BhkNfQT5qNTz/+Q6v42nw/rA2771DQt
         NVVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=PQKCoPTm1nQN2Qxmb2lZWLv6bJYVTMvlDNDgmpoHH8w=;
        b=eVVC/6qmpAI++tkBpjAfsryE6FO9HiyQFs4MmCc2sqtQzK3/fIHNphoML+vx88K3UY
         TCquWpcoyUYgt2GAJPogQ+tLDZMvTjRRqnJjzb+ySw5z+hiDeS+1QcN4bjzSBOO1/uMF
         O3s7j3R4bEp/Lr4bp0ouK0d5JIUXAlvTbKg7ItJf3FW9ALe6gO+oF9N0ClWyKnGdKQwG
         dk4mDiSyT3fhJW9ZkFFopVmid+7DA5vXv3KkZ75a0mQFoj9NoKuumi+wMOCiZfHetS/w
         s8mwpdh2WfaZjgpZKGMObQ9UarcTtMKDxZVlHzDUs82mUPnuH9bntNtUOjPkZnk9xHAl
         Hf5A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=wQoHjjZi;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PQKCoPTm1nQN2Qxmb2lZWLv6bJYVTMvlDNDgmpoHH8w=;
        b=pmdfhQtxB2QPmHPaqL5iVymp2O77qF+PRoVXyizifaKd1aDAdpgYFGcVTiM3y99I8F
         yBbAX1MQ264D6gUb9kQeYLRh8yChi8mmNrM7g1T0lMdmWXrAqx6LVbMOqt0feC3Sxn11
         E/o24z2djbFqqiQahFWQf2I1/DARVoko9ZXtrGjgJCLe5efJraEPXK+WNJUYCHuFKeGS
         3t+RdZZ9f0Tipl/4U0fspRGT209acQ3RxzLWe5ldb1NXTH9g+dKBPmB9Tz9t1ex0XozC
         nz7FGcdu9Y8dQgO2t2YVaNaeP6eSN0CRRtLtAa548w1Cspo+6cJmaRWEaZUuC44/vxVV
         j15A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PQKCoPTm1nQN2Qxmb2lZWLv6bJYVTMvlDNDgmpoHH8w=;
        b=YnJEVYVMqZ3jDEcEB2c0BWh5UgAQ6UmkibtgNL2P4yiClI6dEZcJ27ATtSUbU8x8tA
         37+uNsy31Vo+1Zr63lHP/qtO9CnpNeDYgwJ9mlo+dXn9EpX5knCY8LakDnsCBT5bTZmr
         5d4BqPQ+170bGAwdGyz+SdUysinstxrSFUPwH49Sc3A4W9g1vd7kNRnpwXFP207cc+Vv
         tyHuaZedERjFBo40ud/m2Vuqs6qhmD6ur/74PXS02QCAJds49VPyK5aSubgYN/98mMm7
         1XXj+8LGNILg0+lJEiV0HwlsJzlUJCD3uAfoUu0B3KBZW6vtzPdVKESsNYKjJnfLvx9d
         g6zQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Li5PDW0Zvr7vceLxlJpOjsDu9ZWWkatM0AIFMwrquNGTsyJ59
	H4rXv1VOuh12Fk1XxoGM8ew=
X-Google-Smtp-Source: ABdhPJwaNQy+GUX6gHsXnS56WzqgNItiHjA8gpmOKLJPQB9sRAceyAFFhVT6oxgmQRdyLOZk/04MIQ==
X-Received: by 2002:ac5:c64d:: with SMTP id j13mr809670vkl.36.1591658445715;
        Mon, 08 Jun 2020 16:20:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:7001:: with SMTP id l1ls1987329vsc.0.gmail; Mon, 08 Jun
 2020 16:20:45 -0700 (PDT)
X-Received: by 2002:a67:2ecc:: with SMTP id u195mr914824vsu.32.1591658445299;
        Mon, 08 Jun 2020 16:20:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591658445; cv=none;
        d=google.com; s=arc-20160816;
        b=y2lxshULkLyAIEy/ezv5uT4Jrbu8JfYcUOszDo64mNaMYBguAqcivgEV/b/Ezc/GWY
         H6mXo+d6WJliPiInOgVlrYo2N/UTYlllKKIDy679kVH3gUrXe7CFepeWxdzRF627dB8G
         x9dEkqVA324u9kn2PHFqYWWQhWm80mMrQFyJAnr4PGlJwBl5INDc78vOzuyqSWIZY6bk
         8pZF0GbOnpoj9Z3rXZ71FSt4cbk2chVXvsnpSi9TbxI5Z/JHMJGKkAfywd5SsoiUczCf
         mc9ZbxOao+tqLRum+QxXLi8/ETnt5iNNZABILGc05a/SeVs/qI1gkqOqg48P1WaTzzw7
         pzhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=vlulF8haCBRq4xRq19eQFeilth61ttv7PowdOH//y4s=;
        b=B4CXYUVgq+NdyUsuhv4ynUZitNxqaK5zzSgoL/ZqUDkGLFV8kFXzhYZlf116xdRXiF
         NCPpFtnrZLVvpdYP/PYHgvNfgq9HX8K/1omjR5wypqTA2CZfMv1lpRw0P9iR5VkUs/fz
         bA+UKCwBOWB6HSfcAGQWdwrMIIResSxm8nM1c4c786CCHyyXNwczRSdrES5DUnNpgeCm
         Xvdail3bN1akNIM0ynWjU6jwSUpjaI8Wn9KJei24QpKiqIPjjR91It72FBWFP88mCN+l
         l7edO0KsDEqW9BEVjuu9BqSHltWkdDvrJeqVBa2tlbPq2DAlpPoLedvOpxAiFj0P64P9
         uYOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=wQoHjjZi;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q20si51380uas.1.2020.06.08.16.20.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Jun 2020 16:20:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9227320872;
	Mon,  8 Jun 2020 23:20:43 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Dmitry Golovin <dima@golovin.in>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 086/175] lib/mpi: Fix 64-bit MIPS build with Clang
Date: Mon,  8 Jun 2020 19:17:19 -0400
Message-Id: <20200608231848.3366970-86-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608231848.3366970-1-sashal@kernel.org>
References: <20200608231848.3366970-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=wQoHjjZi;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
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

From: Nathan Chancellor <natechancellor@gmail.com>

[ Upstream commit 18f1ca46858eac22437819937ae44aa9a8f9f2fa ]

When building 64r6_defconfig with CONFIG_MIPS32_O32 disabled and
CONFIG_CRYPTO_RSA enabled:

lib/mpi/generic_mpih-mul1.c:37:24: error: invalid use of a cast in a
inline asm context requiring an l-value: remove the cast
or build with -fheinous-gnu-extensions
                umul_ppmm(prod_high, prod_low, s1_ptr[j], s2_limb);
                ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
lib/mpi/longlong.h:664:22: note: expanded from macro 'umul_ppmm'
                 : "=d" ((UDItype)(w0))
                         ~~~~~~~~~~^~~
lib/mpi/generic_mpih-mul1.c:37:13: error: invalid use of a cast in a
inline asm context requiring an l-value: remove the cast
or build with -fheinous-gnu-extensions
                umul_ppmm(prod_high, prod_low, s1_ptr[j], s2_limb);
                ~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
lib/mpi/longlong.h:668:22: note: expanded from macro 'umul_ppmm'
                 : "=d" ((UDItype)(w1))
                         ~~~~~~~~~~^~~
2 errors generated.

This special case for umul_ppmm for MIPS64r6 was added in
commit bbc25bee37d2b ("lib/mpi: Fix umul_ppmm() for MIPS64r6"), due to
GCC being inefficient and emitting a __multi3 intrinsic.

There is no such issue with clang; with this patch applied, I can build
this configuration without any problems and there are no link errors
like mentioned in the commit above (which I can still reproduce with
GCC 9.3.0 when that commit is reverted). Only use this definition when
GCC is being used.

This really should have been caught by commit b0c091ae04f67 ("lib/mpi:
Eliminate unused umul_ppmm definitions for MIPS") when I was messing
around in this area but I was not testing 64-bit MIPS at the time.

Link: https://github.com/ClangBuiltLinux/linux/issues/885
Reported-by: Dmitry Golovin <dima@golovin.in>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 lib/mpi/longlong.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/mpi/longlong.h b/lib/mpi/longlong.h
index 891e1c3549c4..afbd99987cf8 100644
--- a/lib/mpi/longlong.h
+++ b/lib/mpi/longlong.h
@@ -653,7 +653,7 @@ do {						\
 	**************  MIPS/64  **************
 	***************************************/
 #if (defined(__mips) && __mips >= 3) && W_TYPE_SIZE == 64
-#if defined(__mips_isa_rev) && __mips_isa_rev >= 6
+#if defined(__mips_isa_rev) && __mips_isa_rev >= 6 && defined(CONFIG_CC_IS_GCC)
 /*
  * GCC ends up emitting a __multi3 intrinsic call for MIPS64r6 with the plain C
  * code below, so we special case MIPS64r6 until the compiler can do better.
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200608231848.3366970-86-sashal%40kernel.org.
