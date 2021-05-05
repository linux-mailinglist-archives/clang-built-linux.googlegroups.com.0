Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBT6HZOCAMGQEQ6NPRFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id EC5A23747F8
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 May 2021 20:28:32 +0200 (CEST)
Received: by mail-qv1-xf3b.google.com with SMTP id f20-20020a0caa940000b02901c5058e5813sf2292152qvb.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 May 2021 11:28:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620239312; cv=pass;
        d=google.com; s=arc-20160816;
        b=nrCQQIxzS/9M59dszGjo4IwlOfg5xCl3a+iv4iEKugQQqb36SBwNHZ2QgELdmn0xbY
         ubCGMBSxDxZLcGZ9NhMuh3FWP3m04ETQkoGTlSwPA8bF8eD0SttwLcQ3eFLK9zTlxr9e
         FbXehAppzMlx3fQE3T9m6k0WC9853J9FScyQ7cUWCbFgAU2IIjGTpUxY8bukLc9AJuTi
         lpUsM18Q2aT9j8QJ/ok/121PnPGAulNp53F4Zi8JEUdO/+noYPW19sg+/XJxTMlCFzaB
         853xxNr7RYwCs/oNQzzkLd+zVN6KUY8fK1n8HiX/EJvLsJgd1eE9QQmAzM5hhm9ZgDhX
         2vXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=JwLU1Way3Gg9xFZl21Ej9oL+9h6KhemmVnvRAA+XSyg=;
        b=EX5ycnev/sjBgS6CVyAzwC3u+kz+OeRxB0Dj9EvhwUgl+01w0yRmvWAbJUAHlx+wtn
         DaM08xqKIqJa+RaDTWrsZ5YzoH58aHPuT5jHNDXIOUZFAOI3LrKc2hUQPoJTWD3RToNh
         zvNpGfdw7dT03auMkLRCvdP5qqqmgxEcjPMjEUgqy/jVD/nHV/wRD/XM1ALlkF7OINE4
         lj7rR7XGu0x1Ehq+0d1Ap1TvfnKRjK6e/aiwOYWBzsq+bL5V++70jmOrFW6ZRPlhPbWs
         ZY7TX2GNqpjlxUkMfpWBPP0tIj0IUNgq2vc1G8K7k6j5Rl8fyMWHdrbdTFmmh3hff9lG
         EYdQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=bBkxESGs;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JwLU1Way3Gg9xFZl21Ej9oL+9h6KhemmVnvRAA+XSyg=;
        b=LYifJm+lj8yYNms7Hg/92uYRZPcoH1rr4UzR3u0T0tVeYG/SRdltnmVswN192O9KOx
         Ds1cd8XDZAwMaLkd4yvvUIWxvl4T3nLZlUQ6IslBNQ1iCSkfBwS7GjrVUSH2IdsHQxhz
         7cX9aZU/KEgvP/+Lwc3egxzE0savPDJmGpJ3qjtpLKdwmXsCBj+sdYZGfM316U2dh7uG
         LFB8UuZn+U0s2N2JLcQ1et6s45mnLPsRUyhkuCTXOFZ2ReU2AUcqdIc1SppFoNlktBTS
         4JOg8SSOmpzMiuf1QmceGiKp4GwWa/Ulq3o7s8ixoASWI2SXrB5azA/Cb/8vqMKPLsVp
         9agw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JwLU1Way3Gg9xFZl21Ej9oL+9h6KhemmVnvRAA+XSyg=;
        b=LwcNsOQqypOPxVsYRXy6mJzNLjL0FD1aXXhBAO7FNxjnemxCAjHQXjYYg8c4f7sD4f
         G2UdDuY0enO+3qJ3i2LLGelouV/hdeyJjndXN8zcgmrphur0rWztOa0lqTm9DvKIkLbo
         glzNk3bEMLUOSLlzRhap6ycOWRnA2vWWjHtmnbNk/sTaUwqGayzNpJW4hgwgf66Ob8tL
         bhVjOnv8di8cUkVUw5e/mKZzI8MXh94WMDUQRokiHy4C/JrZb9zbU1paxLKekRwHPioh
         rNXcQx2R9WJXnk6Auf9MdtyuZ9cYhEIYA+ePxl9lWIbZnB1D0Sa4g2McCgq9eGS0LFrn
         /0aA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53065JYI6I7BNBcEn89UoRJn2XY4G8gt/0B6+dsJczrL3VMRljhS
	4a3h58OwXMkcY3pemwF5UwU=
X-Google-Smtp-Source: ABdhPJwSZM9Iz4OnHEliPNp6vjBgo/eo4hzTqtIy30UDW17hW3pF+dWMQQ8RgaxceQxOCG8Mw0nYrQ==
X-Received: by 2002:a37:b987:: with SMTP id j129mr111721qkf.174.1620239311952;
        Wed, 05 May 2021 11:28:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:4d44:: with SMTP id m4ls15309qvm.1.gmail; Wed, 05 May
 2021 11:28:31 -0700 (PDT)
X-Received: by 2002:a0c:a045:: with SMTP id b63mr111221qva.19.1620239311489;
        Wed, 05 May 2021 11:28:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620239311; cv=none;
        d=google.com; s=arc-20160816;
        b=d9iiysSV1FlDZyB/Fk7CATiUdg5n9zRfammdNf74Neav1uryDJW/IJ0ZNC7N8kc8h6
         RcApKLejiylwRy4URyNUHwmMvdmhGcryZL3HqmsRLEcJi0ID8otJEUR6zDW4EO1nFRD8
         KKPGKDvtzGtBw4CfJIQnR2d7AwecpfBuuu737eS+ObmJLbCup6T1xkVG59MeTPsbEIRu
         k9CloM4/WPNk+vtxcDQium52xWQfPNE5XYAAne7WAhKm4cStkerwLrxa3wtkhy01s/F7
         q1YtYIai4k3Zs5VBTN2Hn0/Armjzv+rgPnBtyaell3PTZdaryE2BpkNBRNXqJzgFi7Pk
         jlrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=HYRC9AEplNubzsGi3AozGQveRMj50knfV0ivU2zqYuM=;
        b=onWdwFJXxWUCxmZ50Ko8cGm8Pfmk9oVqKaQ+9yOCU51r4EE5+o0wT6X/TqbfBmHmIM
         6Tf5kamTREoj9W9IkXhmXEDPq5vVQvjElqrN5ZF/jae3CrAmQI2yUVJf9ZBQv1InSCLL
         psN/qmgAmiUa4Vz06lFE6YyuuG3ESwjegwsDMjgfA7e6pyzxch0/xqS7G4g5sV9KdGbS
         EuoT6/koLDQA4qLemzilL68OzNarUZG+ym/UJj9VYoiF0OecZ91wcZtKfhILtXcOAOgr
         ZHs16VGynZRopoo5NXPYRBBHQoSEabUwJ6LrNVyIM11LbI1hJsljIJ7n22Za9zojWHSA
         JYZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=bBkxESGs;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 142si15778qko.4.2021.05.05.11.28.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 May 2021 11:28:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8B7DF6101B;
	Wed,  5 May 2021 18:28:28 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Guenter Roeck <linux@roeck-us.net>,
	Nick Desaulniers <ndesaulniers@google.com>,
	dri-devel@lists.freedesktop.org,
	linux-fbdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>,
	kernel test robot <lkp@intel.com>
Subject: [PATCH] fbmem: Correct position of '__maybe_unused' in proc_fb_seq_ops
Date: Wed,  5 May 2021 11:28:08 -0700
Message-Id: <20210505182808.3855516-1-nathan@kernel.org>
X-Mailer: git-send-email 2.31.1.362.g311531c9de
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=bBkxESGs;       spf=pass
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

 drivers/video/fbdev/core/fbmem.c:736:21: warning: attribute
 declaration must precede definition [-Wignored-attributes]
 static const struct __maybe_unused seq_operations proc_fb_seq_ops = {
                     ^
 ./include/linux/compiler_attributes.h:273:56: note: expanded from macro
 '__maybe_unused'
 #define __maybe_unused                  __attribute__((__unused__))
                                                        ^
 ./include/linux/seq_file.h:31:8: note: previous definition is here
 struct seq_operations {
        ^
 1 warning generated.

The attribute should not split the type 'struct seq_operations'. Move it
before the struct keyword so that it works properly and there is no more
warning.

Fixes: b9d79e4ca4ff ("fbmem: Mark proc_fb_seq_ops as __maybe_unused")
Link: https://github.com/ClangBuiltLinux/linux/issues/1371
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 drivers/video/fbdev/core/fbmem.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/video/fbdev/core/fbmem.c b/drivers/video/fbdev/core/fbmem.c
index 52c606c0f8a2..84c484f37b4a 100644
--- a/drivers/video/fbdev/core/fbmem.c
+++ b/drivers/video/fbdev/core/fbmem.c
@@ -733,7 +733,7 @@ static int fb_seq_show(struct seq_file *m, void *v)
 	return 0;
 }
 
-static const struct __maybe_unused seq_operations proc_fb_seq_ops = {
+static const __maybe_unused struct seq_operations proc_fb_seq_ops = {
 	.start	= fb_seq_start,
 	.next	= fb_seq_next,
 	.stop	= fb_seq_stop,

base-commit: b9d79e4ca4ff23543d6b33c736ba07c1f0a9dcb1
-- 
2.31.1.362.g311531c9de

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210505182808.3855516-1-nathan%40kernel.org.
