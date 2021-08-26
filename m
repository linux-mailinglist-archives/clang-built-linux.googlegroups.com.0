Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBAOCTSEQMGQEG2DC2BA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id 835913F81DB
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 07:05:06 +0200 (CEST)
Received: by mail-qk1-x73e.google.com with SMTP id 21-20020a370815000000b003d5a81a4d12sf1087602qki.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 22:05:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629954305; cv=pass;
        d=google.com; s=arc-20160816;
        b=P91UKUbM+kyzoNAKZDbUgvBpnZqrIwRXA8NC+BgDY94UH3oZmnOhDxGNaWx4S5oYI8
         mZ36Vw7DFEJzP2/XAFUBifkmV7SwZSe2N89GIFoktKj3zKTJaaSe2ehkgjbSGQr4bNaQ
         rGUQ/WdvE6sNoJlW/sH6mGJhyvq+S5q+aFzsk7iVtqfXxnLkcgyyX1Cp9pHGgcJgMZ2j
         /DByTw2OTRqjYi1qXU6rHx2Mq1291Q7YwOno+StDbfU3HDtxJeIlWJVYpGPj2hXDd1G1
         poMvugjvxcT4wWy8HIrgWo6q3E4tUQPTbcE9bp812uxLq4Zlv+XREAb6DXn7XgnhFW0x
         L/pA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=quMBo03cVcppui15uK34aZMXIV3IZ5dYWAQuN8AtpBM=;
        b=efohxBUlGBPrctCx6vCWFaSfqhBRYluariLKr/DMqVCUT63OqI2CSbKL4zHJ5Fm793
         CU7jTEc8rYiouiULiC70hY8Gdq6DW19sonbZ0+4xcPzt8zZlluJfn0HPhRy5K+1I2XQ7
         z5/LrEZ1LxdI/9PsFVu+gMZ4nzs2lC8q/ZBJ12OPoqgvp/Nbx+XJrjivx3R2N++IIId/
         ryISpL246en29tTOMVaYeqr3RBJOTKPRwjdX8Kg9/Db3HQMJEc7A1UWNcFlqsVNpo7JH
         MSj5LrsqrAqPaoGfqxZNuP7PxnTsujpAlYV2vyhpcvQ07XpBi7Zgmr8GOFIIxpCbuWwx
         UZRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=VuCkHMB1;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=quMBo03cVcppui15uK34aZMXIV3IZ5dYWAQuN8AtpBM=;
        b=lR4djYnRsqMPFTIFQ2SIJreVsBAMfJUFxNLPgDrAA6hxxhsQ6B04S9jjfEw+PG6kb+
         lWmF9UQzZsQFptAEz1otivjhbKk46bddbJC16SwhieYUn1fs6H8JTd9rclBSs+uPUUCV
         LH84CCHyPYWJBOlpf+m7X1tZGbEUwH2hJNa7rtdzKeMySDYlJuCRK4TKv4lJrU+lcHzS
         MNVaYzBmWByQNjH3VseWm2WNMmGD/ISJZ5KaQ20dThl5nvg+9ahJT5s4lffXVgnE4nmG
         ENH4ybsI6QbqJl5t/VDTvKQdyc+Uxs6j04pScnoip8/FZPi0xsm5KGSD17mCWFJkWx1P
         VutA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=quMBo03cVcppui15uK34aZMXIV3IZ5dYWAQuN8AtpBM=;
        b=I2Y/Qw25eNPzWtHXZkWbFhzIJP7ChH2knkFccb4rRajrgDqNa3kKlrm/hnjfCC5ODD
         4c1NIHLQWWfXpFxw+ff/VAQaH73dcPtooAEJGwQZ9XOyeF2NXSepBiYVglrnuiNZW3Ef
         sfAOyM3zpoCuHwKWpzblubz58zuhW+61bnNiFjqdZaf/i+2MpDDWodJtUxW2LFYD134G
         3kwvAdXj6wNEu2c8b0bdw/24rAJkyFTWzqGLkeSZ3cOMK96r4jwvs64DktwuZpRFvOsJ
         wUCCkqfiW7dX0v+fIWhJfn5aZMwxRG3MY0i9a68F6tphQICFeUyQaCdEGNwtpmcgOMsI
         WoXg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ceNa/htsRZNsDgjl67EcC/ZPJ+HAj5GQXPqxnAcRf0n2/urtZ
	cSRCbH79670OrNxhc/m+MnU=
X-Google-Smtp-Source: ABdhPJwBV2OVm3gn7K0fROrh/Heo/C92D8qALvlMjuX8LUU4Ndpon/H1/TAaKm+TST6LUeNTRR7urA==
X-Received: by 2002:ac8:7f06:: with SMTP id f6mr1683893qtk.262.1629954305632;
        Wed, 25 Aug 2021 22:05:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:7047:: with SMTP id y7ls1849276qtm.4.gmail; Wed, 25 Aug
 2021 22:05:05 -0700 (PDT)
X-Received: by 2002:ac8:794e:: with SMTP id r14mr1600088qtt.333.1629954305221;
        Wed, 25 Aug 2021 22:05:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629954305; cv=none;
        d=google.com; s=arc-20160816;
        b=jA+FCOvLaSXsWDujOyL81BctNW2fLEiN6ght7IK9+fMbeFcRgjozZD058qEowvJRAb
         Z5HPVz3gQe9n7PaEPHw+v5t4prGbC5M7Nwsptvi901hg8dUzjS/Pt2sTCL/mRglx/gqW
         FtssI3Ls+ngzBp/6jOa2UIRp73c7deIs4IXVGYgYTsnhe8QhKS4pEfJKQFwgFsQfN7l4
         U64LNwTn/CyI5HyWArPq2i4UFE4/YshFObIQ64rp2Ue2xbkukjhu0oeUMtCf2X8FVnCC
         rlh3UPUvLGRWFSwtNHdpuJewTwdrjE9FG/ES3stmIdNCBruw5U8/YhhCWH+2QtY0UdGG
         nTnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=wUGiyr3xsPMSx8OhiS6MBjOzSMfwTo6qvLGkcomqylk=;
        b=E5htmvGNi4ZVise6PXdywMBsHBAY599vFSBd/JkbnM9Os599yLXVIMr0LiWbSBFpCt
         4FCWEps8gjtLemc0LDAPZJHXMXZjob8x7+C3iMjjXFfDzrvICTnu8mvs6lO4/cmEOwgW
         1D9pxqNvY7Mm0REmPjYZvTmQJfy5251ybeFhxNlUHvO3GcpbIvkzNFYEtPCI8qzZbnj3
         HH06mEthxq/g221m9TxnSZv0haM6BkHD4m0HOV03qTneqtLQuXq8wRbbMBZSWYBsRwZv
         5bz1H3BjxAUuX9nFG9s6CVcwgQroVyi2OoZCuumfXpVpESSYW8hXLxOWCRtfptUCLQlK
         UzLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=VuCkHMB1;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com. [2607:f8b0:4864:20::102e])
        by gmr-mx.google.com with ESMTPS id m8si154375qtn.5.2021.08.25.22.05.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Aug 2021 22:05:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102e as permitted sender) client-ip=2607:f8b0:4864:20::102e;
Received: by mail-pj1-x102e.google.com with SMTP id 28-20020a17090a031cb0290178dcd8a4d1so5290435pje.0
        for <clang-built-linux@googlegroups.com>; Wed, 25 Aug 2021 22:05:05 -0700 (PDT)
X-Received: by 2002:a17:902:c406:b0:12d:d0ff:4be with SMTP id k6-20020a170902c40600b0012dd0ff04bemr1932183plk.24.1629954304465;
        Wed, 25 Aug 2021 22:05:04 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id q9sm845318pfs.40.2021.08.25.22.05.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Aug 2021 22:05:03 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>,
	linux-kbuild@vger.kernel.org,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Keith Packard <keithp@keithp.com>,
	Dan Williams <dan.j.williams@intel.com>,
	Daniel Vetter <daniel.vetter@ffwll.ch>,
	clang-built-linux@googlegroups.com,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 5/5] Makefile: Enable -Wzero-length-bounds
Date: Wed, 25 Aug 2021 22:04:58 -0700
Message-Id: <20210826050458.1540622-6-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210826050458.1540622-1-keescook@chromium.org>
References: <20210826050458.1540622-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=996; h=from:subject; bh=/SN5+6T3ztIGtswjzUhGWY/cmKXtgVAB5r1vX4FHhD8=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhJyD54PEFBk7l4lz+prByvaAJlFG/Y2kCmVwrumJm JhcDUiyJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYScg+QAKCRCJcvTf3G3AJsC+D/ 49jN/M53yldVraoYc8MXwX+Sk0xVJLw9Qx17Lnyh9r2OXIiB2JEcb93t1wS1OG16kMz8j/GBydQ+8t yIoXHSl8ZlclCCmSIWbUx4Mu253gXAui7dX128Y8CVlfbwqYJ5PyQL3nD8vk0yGXDji83kxE/dnHMU lzqNnMfnVFuKcZsyr9Z0NS9srdSXCB58id7DCCMvWwt74oK1+AgsAoZPEQSXT7x0sprmRw5J2Hc4Fg zKoLkK45i59aCgM2HM54A6v3IAs4bNjFEjJa5r+DpOTsGoi+8DtjNaGkbDIuDyq3sS+HnD7wqtKmSX rjczu/Nqle/MLQxSAph5jo/++DPU/A/ErXjAVcsj1rwJsecCmPHahvOOXkGGv+hepMnLvsgGRteZVp JcS8n23cR/Ho92OmB0kwH+/OEQZKZvvBL2uU//nLIkQYtDPkLC0xxUKNUefJCLbIw/4Hc5OzXfuDMB 603YyvtZg4HOMYIxgo7zLishMKI82OUdqZz88YhSLjz9peg+zryh9o9GBxiDg7+u1LgW+DkjcOeldv GSqhSiLqDG51d3OqPJ0MbEIJZxi97MQDw1muzzZMpLHRo/ohkZ985/qVH6xfSzaHputWj5zGC3X8mL j7O8Hs7TGRrWTI6yhMIMv4EfJ74b04ki//kwBq2+YYc8INF6bGgdW1dHGQsQ==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=VuCkHMB1;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102e
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

With all known internal zero-length accesses fixed, it is possible to
enable -Wzero-length-bounds globally. Since this is included by default
in -Warray-bounds, we just need to stop disabling it.

Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 Makefile | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Makefile b/Makefile
index 8e7e73a642e2..8e732e875e78 100644
--- a/Makefile
+++ b/Makefile
@@ -994,7 +994,6 @@ KBUILD_CFLAGS += -Wno-pointer-sign
 KBUILD_CFLAGS += $(call cc-disable-warning, stringop-truncation)
 
 # We'll want to enable this eventually, but it's not going away for 5.7 at least
-KBUILD_CFLAGS += $(call cc-disable-warning, zero-length-bounds)
 KBUILD_CFLAGS += $(call cc-disable-warning, stringop-overflow)
 
 # Another good warning that we'll want to enable eventually
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210826050458.1540622-6-keescook%40chromium.org.
