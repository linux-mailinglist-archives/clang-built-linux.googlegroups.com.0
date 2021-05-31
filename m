Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBYU72WCQMGQELEMCMDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3e.google.com (mail-vs1-xe3e.google.com [IPv6:2607:f8b0:4864:20::e3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C2CC396930
	for <lists+clang-built-linux@lfdr.de>; Mon, 31 May 2021 23:06:44 +0200 (CEST)
Received: by mail-vs1-xe3e.google.com with SMTP id v27-20020a67c89b0000b02902227f70aa8fsf2193994vsk.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 May 2021 14:06:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622495203; cv=pass;
        d=google.com; s=arc-20160816;
        b=u9vVzuo/VoyPfk2+hTCSix1AMyG+6yhJDdg/Rb6iAK4OrYA5Sx+jPInlYs6EGa0Msm
         HU8P5rQnSwYtR4uc27gWxeBUJgDUF2LCdab0IrR7bC72RLwQZRMIONrEgRaoDpquZ/p/
         5tkj5LPpzJiaj+8jDJgt8iYrYdIwbxICNsc94xYGXKuxpMYq8JbLYPck53EEWsxjc5/n
         XSJiU5/ZE9aMFPpJS79Sm54yu9CrBZVTh9IB2p+UCseWqIoWGHwMT9AG9O96izZ6ParH
         ky8pSCMJuX3tyFSHDZqErrbPy8rq9eDLR0y5hsv9qiLKD9ll8rgnzJtcciarwV3z6gm6
         s/5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=XTD0jyWY7VD0U4WSGruBy8mOYa4T+qu8Lx1o8RgWsmg=;
        b=QK8pwUTO0I2GjzeQLwwwzDijjg78h+bzW+a2MpykmtMAtOw7VnFf+5U8x2uzuGjNYH
         tG1a/BlYoEu8jDVSg1mwCC+t5wKOd1VWO+u3u0cbkwtI0vu543S2rU/LYl0//w2Yiens
         G+LenSk1A35B/k8F9kua1o3PY7NlrckoqbRSTe7sM8YwNbQPa00RRDSRp8TTvLALd1ck
         ZK4cUzbNc1GUuHU6EU7OVlxV7EadtmGwkjWZHpXuK65EAqbt6kUb45X/mJVcQW1UZjJ/
         sU1gqpUKg5FRojfY1647NlHXd1/ETYkOfQ/tD+uDHDn7PNnrg2ebxONPjzCQQl7I5dUO
         58Fw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="h13i/CFK";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XTD0jyWY7VD0U4WSGruBy8mOYa4T+qu8Lx1o8RgWsmg=;
        b=J8yektIn9i7VgOy2AHVs3TQ3L5MZBjeHlQ9D0EKCGUyy7QWXtZs0kry82SKQZnvY6Z
         hvGP4VGDtJdD+RiCipC8uAFS2RGD474+RWvL6HvfU6gsd8KpogAi/xiSkodo/MggtWHR
         TvLKxgI/LMN6CPn0bfvmXkF8cQKTvjzWI2/RoWbBTFxvUWqu7nLt1/CC8acoUDofkHhs
         lutm4VgN05/L4nX+DDelC3cSO7PsgCXOn7x0JuX5A3LFW8gQEt/liux0oqfWxqYJArTd
         vxDWUWx6vsLoL1ivfJ1lBVIvyNhjjY9wRYaFlu2DQo+B40lYECSrzTY7Xgy6d57mRW5V
         Y5Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XTD0jyWY7VD0U4WSGruBy8mOYa4T+qu8Lx1o8RgWsmg=;
        b=gfdAQ+FWlaR46bkqe0gzsk/VAWCJDSRPXtIdoiLdbCc7QrXgqN0tzDs+Bd5Ld1KGM2
         48Lv9mnfBQlN2x0PK5vaDqjBozRTggBvWM4+bDBqwryXLSa/ZF/bs8wCtaSYx2wye7Nn
         3dibse0dW083EfIdqk8ebZImGbsrexrdAMoCCqftd0beLQ1f9ClmtTCX8sfIz/MgkQGO
         kpKVrHbo5xV7DGifwz015bhDjvhA1+eh8lO5BphApGZlQCIrFZvCQpapSNpYvCcUrCCL
         1mn8OI+uihB+AmFlj5VF+gcBiVSuh8cqgQhfAgaTEn85u96xAv5UAnNmn5iVIAyHfji2
         rgbA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530DXmQeJ0g05xOv1/ERUf4zEbuJVpJ69KVSfdrHaw7y5JJF5tEZ
	WfL9bfnpavkn4t8g7eYFAc0=
X-Google-Smtp-Source: ABdhPJyngmsTxLkML8tJzBJM7JMA+U5XG5iZ5jVVFPdhAvhDEjwR3PHH8tUf5kJq+JkLWjLiLFRzHw==
X-Received: by 2002:a67:cf0d:: with SMTP id y13mr3788350vsl.1.1622495203032;
        Mon, 31 May 2021 14:06:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:9847:: with SMTP id a68ls1174360vke.10.gmail; Mon, 31
 May 2021 14:06:42 -0700 (PDT)
X-Received: by 2002:a1f:3a44:: with SMTP id h65mr14680144vka.9.1622495202461;
        Mon, 31 May 2021 14:06:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622495202; cv=none;
        d=google.com; s=arc-20160816;
        b=TSKakv2Aa/bwElMhOY2IvIgENGhjf5/Keh6PgtsqbnUKbGK18sAmbflgti1o1WT0mY
         Y7D9DNTpAylVRtXBOr/TZf+eDS4ZMdvzWIIZy7Upea3RA5qEZYJc+pOzXQUW+huV6PCw
         WjhNU2YY3vNfyLWRfwdoIy8qxkHUEKKPaZM6akCXL/UbCaO0PCfHhaM6DyePqdTy7Tp6
         RBBmS1dJgd2Udjv7AHGgIzr79ZfXqMh2jNgL+7TqK26qH672EoACEHJN6/hq63z+CFDW
         1Z4NljlMFWIAbWU+VrQwAmLFRUqSgMa6EcRmmYVD5oZOs8nXMdpKw6Lao6KA1ndfzsuu
         XfEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=P8Se8V0pufxdQ0YFWmvssBmoljDyV5zUHGbX8m+ahNs=;
        b=y7yBdH6d5UC1f12eYV0k3LsQRdXaJaMxy1nTHHr7pnYc1RgpajE7nqwCRzx4WQR9sj
         uDptqXd1pGc6eEn7Q3uizwuLiDQnXkAIgPbAK5+QGn7JXZ09qQ4jwAAatQGRZMtZ2w6/
         aPiS93ytEl2d8uiUGgcZWf1JanE33djwyMslDTz1iLAQqdhZvTfr8LypWwaGZaE58WVR
         zCeFyWnhRrXcOPgJXbt2ZXzXRhNZLSg5zU/Xchu2bMGJ6R1ogjub+VuERaRuwaOgwxiD
         wPdwUOJMYm4BoEhcd2qeFmCONC67PN9bh5+hwdF2WyySUgX5vxywwPMTOEx6cYR+qVGc
         MEcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="h13i/CFK";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m194si1147684vkh.0.2021.05.31.14.06.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 31 May 2021 14:06:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 74801610C8;
	Mon, 31 May 2021 21:06:40 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>,
	Kees Cook <keescook@chromium.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH v2] MAINTAINERS: Add Clang CFI section
Date: Mon, 31 May 2021 14:06:30 -0700
Message-Id: <20210531210629.864888-1-nathan@kernel.org>
X-Mailer: git-send-email 2.32.0.rc0
In-Reply-To: <20210531205405.67993-1-nathan@kernel.org>
References: <20210531205405.67993-1-nathan@kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="h13i/CFK";       spf=pass
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

Sami is the primary developer and Kees has been chauffeuring the patches
to Linus so ensure they are always kept in the loop about proposed
changes to these files. Add Nick and I as reviewers so we are CC'd as
well.

Fixes: cf68fffb66d6 ("add support for Clang CFI")
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---

v1 -> v2:

* Add "git " in front of the "T:" entry to match the rest of MAINTAINERS

 MAINTAINERS | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 008fcad7ac00..4ddf370572d3 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -4436,6 +4436,18 @@ F:	include/linux/compiler-clang.h
 F:	scripts/clang-tools/
 K:	\b(?i:clang|llvm)\b
 
+CLANG CONTROL FLOW INTEGRITY SUPPORT
+M:	Sami Tolvanen <samitolvanen@google.com>
+M:	Kees Cook <keescook@chromium.org>
+R:	Nathan Chancellor <nathan@kernel.org>
+R:	Nick Desaulniers <ndesaulniers@google.com>
+L:	clang-built-linux@googlegroups.com
+S:	Supported
+B:	https://github.com/ClangBuiltLinux/linux/issues
+T:	git git://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git for-next/clang/features
+F:	include/linux/cfi.h
+F:	kernel/cfi.c
+
 CLEANCACHE API
 M:	Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>
 L:	linux-kernel@vger.kernel.org

base-commit: 24845dcb170e16b3100bd49743687648c71387ae
-- 
2.32.0.rc0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210531210629.864888-1-nathan%40kernel.org.
