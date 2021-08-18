Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBKUB6OEAMGQEIYEWT5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id ED84C3EFECC
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 10:11:23 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id h3-20020a170902f54300b0012e31e334c0sf546427plf.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 01:11:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629274282; cv=pass;
        d=google.com; s=arc-20160816;
        b=JOmIq7z/8bN2apEEgtSX39/lhfAIMt0ckkCNcs0gCb+QsNoFDyn7fOn+/yoGbIjPI8
         SxEnX4LlXzdlA4k0Jw4EFmXC0kc1tCQcZ9N3gExwg2MoPvewFqUlkYz2pcFkER3r6B7u
         GJMRatKiMa4aLgxMx63iAY8S6PtEo4kupnOD5bS8mB0qQyBRiOsnZfZ3CycohR9Jga9i
         fvn+s7iaJFkQYxtb7T4jHF0/o0awC4KXZwm2C2HdGqWfIaE/LohBiISOQTnfez5vP4dj
         owIXAQcghAkfsKkaMBctlhq4qiNqdCkRv29Dk2OrnHJs5Qk0A/sYhyAhiq/Dy/tnKRcj
         NCEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=RPUnqzNtIQHUsULWKrG/C7IOFGl/9fx74vETzk6RZkA=;
        b=fvR5zedxp1WvvwKXfyAJbAwX6R2OCrvuK0IPlOrSkr9wsUJ4kpH9e5YXBu3c1ASEAN
         ICWesi/6L8E2XzVszQTWDlZM8Q/Tvbxt7tmJHMNtJgN6a54kVeqXI0AQN6x9zBYVYe0t
         phqcYKZuJJT6BNhUsOkayY/UZFgXIrkKwhsxFP8kvSQ3CAMQ/UUFHmt9cJqHqOYNqEBA
         1yRXP3oVvyU4C3AubLG2/jpNxebKK1uYS9a9UrKpGeqnHIxC92tLIERf+3xPb7P3WVQU
         YV5Dr/wNttMP4Mojyxo1E3XnfxKeCIBmau3ULIK4/Ck9r/gBLxZ6F9XJoYB6Ngdh74d0
         Vvcw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=a9BG+RcP;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RPUnqzNtIQHUsULWKrG/C7IOFGl/9fx74vETzk6RZkA=;
        b=FVNcm/BIbLSEDXie6cvKysxNE/cSI6Fbi1sH+XhoXKcpGBI5sMnRXsg/f5IPBsfjhl
         NF5g3Km+Sg4v5woT9dy8YQWdwdu9iXC8uhr0AwH6lUYYGTpfdluZw2kDmLhicdy1ZcJT
         3eu78BBkXxh4ncHoftFhv86kRV/cVMz2JgJGWOWlHFgdMlDb8TIwzTTfWURQJhztwGZS
         j9YUzyMzq/3vCgOgRrTCpxnGeJK4+vbiyIK2KSK/dHFM6FFbnTJsxrETJmd2kR1J+/LR
         Q9qRg9KgxvxNs0iRnGCFW1JgOphbp1LH9Vqm1VbV6hTu3rcTq3P09Btpu3ufXgpRYqsY
         hzDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RPUnqzNtIQHUsULWKrG/C7IOFGl/9fx74vETzk6RZkA=;
        b=PzPSKclqNCJTKWjvwz8/hmgkUsJBuATB5/sfPtSUv5fDDJSkwuM4OGgnXcmHDqsAR1
         AFW024TccGAqrGzCFyUOHuDt+JAsSyB1hX6NMhWPpTZE5Sfgp+7ixVMLZ7fyWctwdwiX
         ytbRGvHnlH1MBalJcpBuQfspW9QFqIe0wAsCYpJaIXivuSKCETj8tU7I2oS23MZkXeOv
         EqMNs63jFesqljhldVUUJpKPW3D0RLmLtabTU9p/O09y7wvQ/mPOPEeBFkIXyAeJ7kxg
         OjTV4PIMAFA/qxHVqNixo2i8UcULMVYa9rqtxoFELu17RAkluJq+k6HI9zTchcNdzsg5
         am2Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530q+KuR4RqKtf5SG4Aew9V8N7Wtfp4MSblJ1fp2167lGQNrZEID
	jsqzF3aVKJ4T0XFzmW5ZQm4=
X-Google-Smtp-Source: ABdhPJwgHX4sN/R4tyZ2muKSd2ddfetq7ggQqT7qyBUrohCJcUfb2t4OmKN3JWI2ghRvAHkrNhMJ5w==
X-Received: by 2002:a17:902:aa86:b029:116:3e3a:2051 with SMTP id d6-20020a170902aa86b02901163e3a2051mr6414777plr.38.1629274282674;
        Wed, 18 Aug 2021 01:11:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:848e:: with SMTP id c14ls830233plo.1.gmail; Wed, 18
 Aug 2021 01:11:22 -0700 (PDT)
X-Received: by 2002:a17:90a:116:: with SMTP id b22mr7875160pjb.97.1629274282165;
        Wed, 18 Aug 2021 01:11:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629274282; cv=none;
        d=google.com; s=arc-20160816;
        b=R+FLdpbYeAuKx4IKyDnnhZ2kgEC3WBAljVmG0FsU8GILGgNLQy7+8A9cTlCswVUuKo
         mESd+gYUb0WUxZG4jj770VZT+vy+uuZeiAeH7qmqjeBoDmur/AMXVAeKg4mjl3zRoqtz
         iTHUhW7jyzMD/jL/qQsg3c+utvyHRMqE8PZfHih7Q4HSUsmor+O2blW8kfKk2w5e7vlN
         X3afdAWf8ATGfB+Me0Q9e9avvK93tQKDV9ZjndjuFYPDvTYQYelV6wcoJEvQXKA7IKRN
         9DRiXeKGLGQiJivWUtY4nZXLHwakvqZP2cyicFLxIKlQLjj9R0nhVc190ZiuIv/3a3uS
         3fmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=pvc8FYTWoOHIm8j1TKo43QLNqnXNJipb45HEg4CLwMg=;
        b=jSCvtAwv1lRhkMJmwNttCNACFQXFF7c5+qTcji9npYx3WCnSG5LMVi7iWToTnIRuTm
         lILEF6Kj9QiP15HEvfovHrqEFKP/3vzWw3QvApvelt7RIa8+RC8+DVIslVLcjd8UQF2M
         tKYcxmp9LNI+4cOAt5+foDXuBBYUH80xtnBQny6Qj5N6TlC/djQeXQC3qx9PDfgDFVS6
         l1eLrf0N0dCOPFBgunz38wNPBCwRtAaUB1jND9/eZ9g2e+11A4nUcL3+sOjx/ndWG+ZH
         3hOuUYuH9D9U/EtWiHerwyNWP/iRPMzXVp7UsI15RvDnqo7iytBAvRko7quyGzNq+YcG
         b24A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=a9BG+RcP;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com. [2607:f8b0:4864:20::52c])
        by gmr-mx.google.com with ESMTPS id i123si311584pfb.1.2021.08.18.01.11.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Aug 2021 01:11:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52c as permitted sender) client-ip=2607:f8b0:4864:20::52c;
Received: by mail-pg1-x52c.google.com with SMTP id k24so1451798pgh.8
        for <clang-built-linux@googlegroups.com>; Wed, 18 Aug 2021 01:11:22 -0700 (PDT)
X-Received: by 2002:a65:63c1:: with SMTP id n1mr7776085pgv.398.1629274282004;
        Wed, 18 Aug 2021 01:11:22 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id g202sm5103235pfb.125.2021.08.18.01.11.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 01:11:21 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>,
	linux-kbuild@vger.kernel.org,
	"Gustavo A . R . Silva" <gustavoars@kernel.org>,
	clang-built-linux@googlegroups.com,
	linux-hardening@vger.kernel.org
Subject: [PATCH 4/5] Makefile: Enable -Warray-bounds
Date: Wed, 18 Aug 2021 01:11:17 -0700
Message-Id: <20210818081118.1667663-5-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818081118.1667663-1-keescook@chromium.org>
References: <20210818081118.1667663-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1092; h=from:subject; bh=rvvfb+lJ3OE28Z6jfKAAwAF5uvGem1fIeunf1UcWOFo=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHMCl+H7K3EfJm5a4Yz7JgDu5Hns280iVsxefcQ+8 DYYrBKuJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRzApQAKCRCJcvTf3G3AJsN6D/ 9zxdMqHYgAcTr5lbwMyEwEdDgo20EoKNXKWVbKTAvpHy+dG169wey8IaNWUCxoSwa3Eqia7BoaEryJ BakrEhNUmZicL6u6EX4+DcWFD26hf7OxycxvLgFeJA0+NgmWkAf+i8MSJ5Iwb8IK2rrncEAReXJDb1 XwlXCdUDD3MvZWQ5VEj/3Frw6587IkEIr6C8ADtnCHgmYYggQp4j0WTKdecXJQPbs7GiGVkS+nerB0 PwS0T/az6WYgedUMB+mS0V44sJRJDIDH2YWfVYodJFBNaSMAskgL1yFhxpOSKuD7uEpC77u/HW+WGH fpVemidphbzkgRRvYa2+7Of8TgOpQ5jWqYP7O3/1NytzggrD/z/7rNkP1x3onxH38vyGQRCOe4vgTG x9zXY78qC+S3q+XKJFsLI73dt4S98CTt16J2Te3rTbqgAF9FFrYjSOu+VGZkiGI1NPi1r+2aI1nFRa Y7ufBViMvuPBg26pVnixZUEDqCb+vElybbYeztsLSYqHoFOAm5w2btNqSHaa1rFRSUSe6qcvV/6+4l 37nyhOnWIlry/IVhBhmS713HAeSMTSdRijKkm1bRaZjHQbsA5U6dE2AKMOnOGcbsVZC9s9pnrrXcmT TOzJ9XwF/LeewP7YJMg3pwwtLOB8vCYQdW2nIrJC8HaGZTL7C5qEmJP4Fpcw==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=a9BG+RcP;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52c
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

With the recent fixes for flexible arrays and expanded FORTIFY_SOURCE
coverage, it is now possible to enable -Warray-bounds. Since both
GCC and Clang include -Warray-bounds in -Wall, we just need to stop
disabling it.

Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org
Co-developed-by: Gustavo A. R. Silva <gustavoars@kernel.org>
Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 Makefile | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Makefile b/Makefile
index a4aca01a4835..af22b83cede7 100644
--- a/Makefile
+++ b/Makefile
@@ -1072,7 +1072,6 @@ KBUILD_CFLAGS += $(call cc-disable-warning, stringop-truncation)
 
 # We'll want to enable this eventually, but it's not going away for 5.7 at least
 KBUILD_CFLAGS += $(call cc-disable-warning, zero-length-bounds)
-KBUILD_CFLAGS += -Wno-array-bounds
 KBUILD_CFLAGS += $(call cc-disable-warning, stringop-overflow)
 
 # Another good warning that we'll want to enable eventually
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818081118.1667663-5-keescook%40chromium.org.
