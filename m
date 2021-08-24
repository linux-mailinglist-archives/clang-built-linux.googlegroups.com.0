Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBNXRSWEQMGQEM73IUMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 19A523F6BF0
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 00:54:48 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id k11-20020a6568cb0000b029023d00ca7bbcsf12966285pgt.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 15:54:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629845686; cv=pass;
        d=google.com; s=arc-20160816;
        b=w+DwjQJOjZR5ubIWH7M++ecjeENv+VNR44ltBthx7KljYXZyUksqo2sKkXRN5/MbR5
         8kQUfiNCtrHEOdZdWjTTzGgzgCgyRx6ijFfU7/EH1GEJaA/odxe2HBelFzmRgMYHF2SJ
         vVfmmuWjlvHaccP/9h0XyV/qtYMgWep8DDahEYneZWR1xlrkXWUuAz8476D/PGqk2+8I
         wzRSVdhLpqpbDHlX8zIq1qj9gm3fk/+tqTPc3YunLIsjqAWc+qNe+/kzQzTKnEFW/vAs
         et2bbJI+/rcEmC8N5c2eaqocz1pr2JBWtmiuaNgcrGoxEvsTfmBnVV7B6DLlAMAs6qOf
         mhvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=yPWUiOmNk2KdFp7ba40pnRng0kLpaKaR7gwvC3/jR/8=;
        b=0Ju1YnJJvpYRTg11a6pikB+Rc4+RPQ4qCIcB1zQ8bBrQwdzlB6bnG4LHRdmRZOhKvS
         Wzprk+6AbT4BAauzhtJWbyhjZ8HH2AEJbwIZ5qc3/SCBFQxj90OmW0pesCs2rQCTgNkj
         miMC30LFdkkzSdmJ8BlsX9TPywyzUgh11fD9ztsZV0JB/rIUVOknAox71m2a3AMO8LpF
         ogjUwFsrK85ZsYjaR90aU97zN72Fc85PaVWv5/I+eJ+uNz/G/kdyQL3IU8Ix5I43DQ0C
         U/HUaEQjExPoV+KmyLTKspnh+OpXGvL//r4HMNDMUHCQrdpl46HIRiNiqGRdToKK5tv2
         v+JQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=G2reUi7c;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yPWUiOmNk2KdFp7ba40pnRng0kLpaKaR7gwvC3/jR/8=;
        b=hskmq0WP6L22fx8JoDaq7hreb6dLt82RsKXzrBZryUCrlyxCeJWC+eyL3389tFneuu
         c1tHGA0PAy0RcvqEz436vRp0GoH1PCaf93KXOsf2GHX+6L95MAh0cnR7hRb5ROpI6LWe
         k+At6Y7eWUnYKNCUHzeFM5yJ8uLTYhVSNyv1eYxZ1rFDCB+BiyAr/S6uA6BDGi8vBajS
         eM8+WqBAQX8LODYWBeHUQRnylVdHODZFv7WA/4DtG1JKxCzZjFeRpkEFrFZ04HMP/+C1
         Oo1RuH5WwwzUOm+MJ9dc9V1bNj0afQXQyruWcszTofZAC5m41mZV5rgJRT1loAbUgocz
         yU+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yPWUiOmNk2KdFp7ba40pnRng0kLpaKaR7gwvC3/jR/8=;
        b=SBQRk7d/EuIUtR6KFwvxcm526CO7XkgreuqeAsecRKYA6HDAW31kCxVKhHtKu4xTAz
         9GnYcfIMndy9K0JK5DumyN5OAXSQkyJywXJa+lMPzUdR4yP+2jRDkA8qdH6QXVW9Hyz6
         zTV1ifxJ+zzc3kA+AAd9jMe0QHoJBuGB4xbP4F0J8S5enECUu03vob+giyR/uNsFysxd
         K3wUTI4LN3uM/ZGnadUlefczcjN7TwErr1Z5fpaOSw+TXG9o7JaBi2WXRc3AOi3nYL5P
         g6z8W3B0ukEVr2oCr9mzCVS0wlVJI6ncHsuiSzXYtkDYozCscxqgiCrGa+gqZTrrFnxm
         qrfw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532osBX/LEmTjZrhBYMzi052mJXwHD8jZwMUfjo6nytVBXA2kiPH
	ZeIcxqssd63opc/wBZA1JY0=
X-Google-Smtp-Source: ABdhPJzBLsggI7Pg+0clC+WT7MomuhuII6nLOUIysnMpcs7IELKFBPQlqH19W98zqa9vDr/wGv73cg==
X-Received: by 2002:a63:155d:: with SMTP id 29mr26274563pgv.118.1629845686556;
        Tue, 24 Aug 2021 15:54:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:2345:: with SMTP id c5ls111764plh.8.gmail; Tue, 24
 Aug 2021 15:54:46 -0700 (PDT)
X-Received: by 2002:a17:902:bf49:b0:136:7033:8963 with SMTP id u9-20020a170902bf4900b0013670338963mr4428001pls.75.1629845685987;
        Tue, 24 Aug 2021 15:54:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629845685; cv=none;
        d=google.com; s=arc-20160816;
        b=kJNyTxHQ7C15iDtver4ANafrm4PjfnEpTIFssLvmP5YI33hVTNlqGKWIhUwx3a8nUw
         sysf7OZQvsu69ZZezGqjvK0P1VL/Xeiq7/UsIzXBlHArtfBY5aZDKbv2tUsQBxgC8+tt
         4EFy49e53QmobXJakcVfwbTadcCuNut9j/6jYepBK8dMWY/Ny0nn8Lej8eOwxKByRRIu
         WXv0El5bGTGPof22qEPNTRdlAmzzoYqUy+rbL0s0gEgwthv56gNjX9YAUpU05LGnkL6O
         ucYbGf5QHzPxe4uENtXHLouE1877fSRfcptbqanFxzjsigWMeNmpNVPgYVDJYwmhG2xw
         m8hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=cYSyZe6FOm8/g+MYyZrFY3qdXNWSltfZqcwf+VSxT+E=;
        b=eOznhqM2b+mh22ql++Aoe6NAVUOchyLYygHMNOzDZuYVI/c8d77jw6bq1Yz2DnXTpZ
         oFXwL9Xq/l80AJLJ+DcH4yqRxZAI5tw9PTefLmH6c4h//qE3r3ipKG1xTR2+4X61Ku9x
         TU+UFRQG9Oy1C376Hh8BKBQQb9AD2N3uqUbzYQ5r9R6QW7OqCOgYTsoTPlY8k+cnhZKC
         lrFkPssz27+p9Qj9WXQauQDOWAAcglWjW4nZsO9Kj7+zjHYUT4hKPvFnO0BVRtQgAGRc
         JTapasPbQym/b7ru95lr9JscNT11pjhyCF/HgxbPfrskhRD9BOVc4ahHGzS3qwbkAmgI
         j8vA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=G2reUi7c;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i123si81057pfb.1.2021.08.24.15.54.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Aug 2021 15:54:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1A9836128A;
	Tue, 24 Aug 2021 22:54:42 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Jani Nikula <jani.nikula@linux.intel.com>,
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Jason Ekstrand <jason@jlekstrand.net>,
	=?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
	Matthew Auld <matthew.auld@intel.com>,
	"Michael J. Ruhl" <michael.j.ruhl@intel.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	llvm@lists.linux.dev,
	Nathan Chancellor <nathan@kernel.org>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: [PATCH 1/3] drm/i915/selftests: Do not use import_obj uninitialized
Date: Tue, 24 Aug 2021 15:54:25 -0700
Message-Id: <20210824225427.2065517-2-nathan@kernel.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210824225427.2065517-1-nathan@kernel.org>
References: <20210824225427.2065517-1-nathan@kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=G2reUi7c;       spf=pass
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

Clang warns a couple of times:

drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c:63:6: warning:
variable 'import_obj' is used uninitialized whenever 'if' condition is
true [-Wsometimes-uninitialized]
        if (import != &obj->base) {
            ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c:80:22: note:
uninitialized use occurs here
        i915_gem_object_put(import_obj);
                            ^~~~~~~~~~
drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c:63:2: note: remove
the 'if' if its condition is always false
        if (import != &obj->base) {
        ^~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c:38:46: note:
initialize the variable 'import_obj' to silence this warning
        struct drm_i915_gem_object *obj, *import_obj;
                                                    ^
                                                     = NULL

Shuffle the import_obj initialization above these if statements so that
it is not used uninitialized.

Fixes: d7b2cb380b3a ("drm/i915/gem: Correct the locking and pin pattern for dma-buf (v8)")
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c
index ffae7df5e4d7..532c7955b300 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c
@@ -59,13 +59,13 @@ static int igt_dmabuf_import_self(void *arg)
 		err = PTR_ERR(import);
 		goto out_dmabuf;
 	}
+	import_obj = to_intel_bo(import);
 
 	if (import != &obj->base) {
 		pr_err("i915_gem_prime_import created a new object!\n");
 		err = -EINVAL;
 		goto out_import;
 	}
-	import_obj = to_intel_bo(import);
 
 	i915_gem_object_lock(import_obj, NULL);
 	err = __i915_gem_object_get_pages(import_obj);
@@ -176,6 +176,7 @@ static int igt_dmabuf_import_same_driver(struct drm_i915_private *i915,
 		err = PTR_ERR(import);
 		goto out_dmabuf;
 	}
+	import_obj = to_intel_bo(import);
 
 	if (import == &obj->base) {
 		pr_err("i915_gem_prime_import reused gem object!\n");
@@ -183,8 +184,6 @@ static int igt_dmabuf_import_same_driver(struct drm_i915_private *i915,
 		goto out_import;
 	}
 
-	import_obj = to_intel_bo(import);
-
 	i915_gem_object_lock(import_obj, NULL);
 	err = __i915_gem_object_get_pages(import_obj);
 	if (err) {
-- 
2.33.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210824225427.2065517-2-nathan%40kernel.org.
