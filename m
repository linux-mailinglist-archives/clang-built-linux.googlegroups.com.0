Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBOXRSWEQMGQEQC5U5XI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 93EEF3F6BF1
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 00:54:51 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id q23-20020a6562570000b029023cbfb4fd73sf12911904pgv.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 15:54:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629845690; cv=pass;
        d=google.com; s=arc-20160816;
        b=GzkvUo7if6XBtCN1JYAuAhCc0lM25qivQrFVPsxUXA6iwBOmZIUyEXCTXTjbJyH2B1
         10mcjSB1AlHp2qbrA08Oq/rNWE5irhNugc1LJ6ZiUmHwA9CwyrtlwAVrIMy83Z8OG1+j
         OWsc2OTU44n3k6pEgnWdo+r318j9t/sfqA6vtKqOuglgEzU7TigkiAv1iL9T7g1zHB32
         heY3vJneacEXHStMrj7fHYNvMtIoFdd2s/6cFAo6B2ZKPUqufx65VHU5xNbYb1gNNPrS
         XviDWXXAG+C7bTVz5FKLLL+l6AlidJbIuixT/qQXgeMENrzfjZPEIEcqb/EIP9d7UU4Q
         0nlA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=QftT/Uhs8GRqsxsAOxDJRlt8se4LA8jdL5IC7hR3cRc=;
        b=Bgt9qGeUIOYA+KfLCbk1kKh62CuL4BEK4Q+VhjJCdrOtqlrj3NvESF8p81Usc3000N
         SIHfVKq6PLbLrdsyRI9CWzeOfiECEPMCNQBgMlUvwWW4F6iebhfWlRZo6l7zIUObDZ4B
         M6hJl+GqwFBg0/gbfm8SfbJn0NwOjgqT+05iLZA3OWl0Fwt3Z+N0GkJo9/uNB5wa0qGE
         7hS1MyUokN5V/to444g4F9j+hSXuUfqwchoz6G+BAtzPF6JtDZPfY+7dncjsBGawPwXX
         nqn2RFyyukifDiYPuxz0eVj8fZhn3jRLwTlTaXiHdpQ9BfBrnY9F+wwFgVBYorPXmLH/
         UiCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=vIYXerym;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QftT/Uhs8GRqsxsAOxDJRlt8se4LA8jdL5IC7hR3cRc=;
        b=gAHOHiDLX9uQJj1ZDNhHEg/fYrD+KJKPT91UTl+nvYr53DShQI8KQV8g5wfkQJjPxM
         3QVUbmWncZweissfo9mHpTYpk3pTpMqh/GgMH8u5u4E8iJ+8X4KtjXrOLXhbKPemKvHi
         k3wa/a6IfAiS1sjq4B/mw5CST6+qMxBJG71CuzkUXbQGNkS7KUM3kNlMbNDxMzBrgUFU
         NKvnijYBGfVMhqvyoE+1D1zAw/YTXMAC9X8fYffR5dz6KflWwC74qJ+teGGLF7pyoYfU
         N1RAsHPs9vVYH1MHTw2uv/fRyq1fdlWMeAIuKBNUl3CeOnd2u5NOMNuVgf/GQzlPZMhM
         xMJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QftT/Uhs8GRqsxsAOxDJRlt8se4LA8jdL5IC7hR3cRc=;
        b=THaHkAmJHwyrpRoKuKlIQS8pgwJL+IrZPeEq7pl/NCh6DySJOdF32ck99i9k+1U5c7
         N7cmufwRtoeiE+DsNpRtRlPeLawOzRtUyVfL4AfZXJTU8HAUcuk6HRhlwq7h4rXzJp4F
         WZQVfoaWPs0mHZ20Zk8qBDopkcRcaaq5PjnmfvnNBMMHn/icQB6xmwGib1Ii9jl0aKVX
         eUytHGAAobXyxNs+OZWsJ1p9XyBrHaJ95v4Di71KpVVeliDcuTBwDUoD+/KbTfFse0Qg
         ijMg44QcZyX3GUDMpgeIU1T2MkY+3Be77rFkvAdaWq9JO7c39ByhjyJkVbCBmRG3UqwX
         Hn1A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5314ye6nlzSVggYfs/PoLtkZLCk68tpDkLROqKokx2XaaDTjGzzv
	Ytl1toWBNnz7ASQ55TBgHjk=
X-Google-Smtp-Source: ABdhPJwPXxO+obx6GQ9EYWUva6QEeJAX3yu6aom8qq2RmgSpfcXdetI/oipxEAUyjdZmUil3ALM39g==
X-Received: by 2002:a63:211c:: with SMTP id h28mr39149404pgh.83.1629845690305;
        Tue, 24 Aug 2021 15:54:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:1956:: with SMTP id s22ls79911pfk.1.gmail; Tue, 24
 Aug 2021 15:54:49 -0700 (PDT)
X-Received: by 2002:aa7:8685:0:b0:3e1:76d8:922e with SMTP id d5-20020aa78685000000b003e176d8922emr40936020pfo.45.1629845689744;
        Tue, 24 Aug 2021 15:54:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629845689; cv=none;
        d=google.com; s=arc-20160816;
        b=oVSyh47P51qHQEYI94wCSuRL5rkiogJqrhXL1Jdvqn3/Oj1IGhZCsehB+DaPSgoJU9
         MLzEscXuOX9A4L8TT8wldKYVNifc4mmOvJsBfsfqJj8/vIinJF5sGNrtST8O45VkL9Or
         4/Ky4ucicAwMMfWwq99yJiqbsM/vnQ0Oxv9ebk9vEJIHQBjb7b1aSuWtGekTejbb1+d4
         seuwZMtMNNnP/hDrOr89kwVDLHkW9XTAIQa61eg5+lXVZ0UJaBcd/6zdfb8cnkcOwRl3
         g3Mx/vdH4nNY8V4EFUn1Qi/8F1ZFkYa0vggP8Lud3BmvQ2wdujQY1pgoBIe77d3Jqzbp
         Ki+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Y94jD2sJjYx8WfPSZYTT5CdOA0JDNJ9Gnd8n5RoQmns=;
        b=yLMdBdTr2VijW/nYlqcFVUA/tyf7gDtGW7kRQOMg5AooiR9kAqsVLomJpkWPw+eFBv
         JAVL9nIrdzdhkA2AXVUuru6bQwl7+B+Lafc8U1Yh06HNo9qNfT4cSpx5zV8rQ8hQIBnZ
         9/KXtBo8ELA58nHjdOd6BHypmGKRVHwKheOvrlcA0bLHDt9U3wgfibVY757rDv4r571+
         LAObw7srR87IMZKHWtNlnHtr2DqTLg7XDjnvhTYKxog7u/HTvUIWjM7LY7SRVlY9hwgF
         V/egMg+KG0b7Q1KrLXORkY+SyHEE/QsQqxmXQI6FKgep4wox1jURoDAoPjrB9rC/Wuqk
         12CQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=vIYXerym;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r9si56615plo.0.2021.08.24.15.54.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Aug 2021 15:54:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id C9DBF61139;
	Tue, 24 Aug 2021 22:54:46 +0000 (UTC)
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
Subject: [PATCH 2/3] drm/i915/selftests: Always initialize err in igt_dmabuf_import_same_driver_lmem()
Date: Tue, 24 Aug 2021 15:54:26 -0700
Message-Id: <20210824225427.2065517-3-nathan@kernel.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210824225427.2065517-1-nathan@kernel.org>
References: <20210824225427.2065517-1-nathan@kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=vIYXerym;       spf=pass
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

Clang warns:

drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c:127:13: warning:
variable 'err' is used uninitialized whenever 'if' condition is false
[-Wsometimes-uninitialized]
        } else if (PTR_ERR(import) != -EOPNOTSUPP) {
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c:138:9: note:
uninitialized use occurs here
        return err;
               ^~~
drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c:127:9: note: remove
the 'if' if its condition is always true
        } else if (PTR_ERR(import) != -EOPNOTSUPP) {
               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c:95:9: note:
initialize the variable 'err' to silence this warning
        int err;
               ^
                = 0

The test is expected to pass if i915_gem_prime_import() returns
-EOPNOTSUPP so initialize err to zero in this case.

Fixes: cdb35d1ed6d2 ("drm/i915/gem: Migrate to system at dma-buf attach time (v7)")
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c
index 532c7955b300..4a6bb64c3a35 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c
@@ -128,6 +128,8 @@ static int igt_dmabuf_import_same_driver_lmem(void *arg)
 		pr_err("i915_gem_prime_import failed with the wrong err=%ld\n",
 		       PTR_ERR(import));
 		err = PTR_ERR(import);
+	} else {
+		err = 0;
 	}
 
 	dma_buf_put(dmabuf);
-- 
2.33.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210824225427.2065517-3-nathan%40kernel.org.
