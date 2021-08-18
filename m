Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBXNL6KEAMGQEUUHBYZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F42F3EF9C5
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 07:08:46 +0200 (CEST)
Received: by mail-ot1-x339.google.com with SMTP id 30-20020a9d0da10000b02904cd320591a0sf438605ots.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 22:08:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629263325; cv=pass;
        d=google.com; s=arc-20160816;
        b=gJfqaGURja+3EEhFIQmJAopWNmojgA/2mDrKF0/M+u44fVShn6zlbtw4AixGqVSMxa
         EGvwuBFfLtD9euihzeG+XYJdwm0IF00FIYkqXZn9ewZts4IECukAERpDbY58ADcEQoEq
         ZMLimJjoB8Sqxxvq93sC667pA7Vkjz0dZvCX/WBzPZVozPGGjKXQkurUOTp6u/3gr5hm
         /yjJru80hBB7D/oNSNnAp9Fm5rC7qarpcOuSOa8Hg1OX539J315vj1yFCnapcZk0qf49
         g3yk2rPYz5shzuRHiP4dPtFueUC/SbSsGBziqA/Ga2QcWcSm1f4n4o9UWPBSgaaSvdFE
         QVkw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=hoJbuTy1XhGFZynNeiSCySPzvNZVvMJt1pGyOzx0qbs=;
        b=B/P9BiTNLKZjsDCm/jP34O7lAqYrONN+6xMmsBP0k7YlIXRONSqwuVSLe922ly/+ZM
         pZSLoPNryXRx7rNKLgoWPnnVgTqISe+4diyOVhVHlR0mvVF/JFWg1hDopwqojJiDLJxV
         KKxsfRmXahDTkJ8hXezUPCR3Eqdqovd/TuMMjP0kDPBUC1QpHhSHyNB1BTNzlMsyW/V8
         m5AjrodGTh3FJzvBU3Mm0GKhQN+FCbb04Otz9FH6d0WfpPs31ukKTYNteZn97nEEoyGQ
         TPzliSU083MnSQI9RF7yZ+QPYVkkvWxerbof1JgwEQc1qdBg3FKEUT5pRb+vH1qm4WmG
         c+HA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=g4c93iNe;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hoJbuTy1XhGFZynNeiSCySPzvNZVvMJt1pGyOzx0qbs=;
        b=ptAYeXNEUoQ6jerKzxqQ502cvExkebIqKeKLVHhaOAgiXwHxHGnQxyCU6gRl3TlHny
         mSRNdT9z0Ww5ao21PgHus8pBGDeX6KZEZCtvRkGY1WqeS2d2xhuJiFIHyFSpm33srlX8
         CeUUViURAfip9WIHYhTmqRwxh/qXA5NzZcISYDF3USASkwvW6EuAL3VgG3u+s4sXYENQ
         7q1LnUn1w/W8/zSrAPYK3nbNRDmyaqlzA9BrsJcBuzFS3axN11vN+Uk6HbR2BmXbVP+B
         459iZL13n1fVIlvfDeHeWWBa3mnKTAbhkjdF5YXqrDrYbpZDGtm+lDB5oPw/18qbJ+fy
         w4lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hoJbuTy1XhGFZynNeiSCySPzvNZVvMJt1pGyOzx0qbs=;
        b=rLkjxyg6FYYmDOFCG++uZaD8GKRRlSiMJhXvetrgsKHiVR5eLiRZcIoslDHOiyu5s2
         bH+9C2L//HPipuRkbkYTAHvBGgZKTlGzsB/YJSgYgRSREkR3daugMYuiOAl9xqj7+Pnc
         CfqMBErMcKGp4+XRwgJ1QgnqQDGTh84esCkPiqpMUOlJJCt72YrNCv1ZNmOQx/GfuhJz
         LgfVCqoCYqzrN6LcPfyAWXpOFW5e3odu4tcxdnNejBExoGNO57824ki+/kgps32Pbgn+
         o/bL9sTmi3PcTv9WzOpES4TIaalPfYYI7z18KM15XxEmoBAMZVxtt4oXfAxsx94x7E1z
         +Oag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531sKkTE9eLw2AlTb8xHN4PkPCptFJ9OjfPcwb0QYm2NfcDWjZVQ
	VNoDsMQiQjha+HTLp9osicg=
X-Google-Smtp-Source: ABdhPJwk6HijMVpkCq/YFte7arLyKQi0721OLJuSU4XfLmMVL0L0kKULcAdylvamXNuA8lRM8igFjg==
X-Received: by 2002:a05:6808:492:: with SMTP id z18mr5432063oid.101.1629263325631;
        Tue, 17 Aug 2021 22:08:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:15a6:: with SMTP id t38ls319831oiw.0.gmail; Tue, 17
 Aug 2021 22:08:45 -0700 (PDT)
X-Received: by 2002:a05:6808:2116:: with SMTP id r22mr5642166oiw.128.1629263325246;
        Tue, 17 Aug 2021 22:08:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629263325; cv=none;
        d=google.com; s=arc-20160816;
        b=cJHJq4mFe2jj+KPbUC8IQ+Csd1zGb3p/JXXQ4cgm0t0v467FGKs8GOjX+Pta9wLLZW
         i85y1NUohJNvNiStibOPN4mRznIdnOMT0oACWOe4KMtuYTKHdOtyGzeTXaat4TS7LgUW
         mL7fUnab+eQod6vQu3jYV79IgRBzOJdvlh/8BzGQG0IYPhWty7HD9TQxUG3zTuNFMyUX
         JzSQiGfcEe+IZWrsF4y4uLxjjOX2KSxd1BY4IoR8o9VArY1EfAtKj1nef9e1VKMwwxKd
         b6ssYzqs9E2sdKTfhMXuL5hmPgkpdlUtQeT5HAbJ8pqBLH0mw0jiB+4eOnGj8d+20XQE
         L6aQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=ibfYg9pbryt9B5bM+TpRAt9ju/X9d6W3Gs+jxd+YtkU=;
        b=AL5PaBXINYZW35j65e9T4bxG+3jwhjU5rpc6G3CIClOfQwpCREUoU2bqVjGHWaBtDT
         1TGcQMcb2rpu5FMWCwq1Cu94CysIjdDTORjVGHEKq+D6rhNvCpxcKj0cxUqZvFMhfn4W
         b6kuwbMcLVmPOdfFy4wmkAvMnerF3rjrWiC3wgMuuZYH2Bprr3ZjAPZvUT0VATzUn43V
         jFuqZeM2nb83Gzy5Uubeg6GGyFjxlmVzQSMqQ6u19sv8QJxFnkEtftpT+QZf0zTT3WL0
         7+GC1yW2FoTJ6mlcRq4jZID4Cp3zIRwvL1T9HssBrV85CO5c+IDI3csD2BhVJ+rDnTmK
         M5hQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=g4c93iNe;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com. [2607:f8b0:4864:20::632])
        by gmr-mx.google.com with ESMTPS id q18si267435otm.3.2021.08.17.22.08.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 22:08:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::632 as permitted sender) client-ip=2607:f8b0:4864:20::632;
Received: by mail-pl1-x632.google.com with SMTP id u1so1094932plr.1
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 22:08:45 -0700 (PDT)
X-Received: by 2002:a17:90b:360a:: with SMTP id ml10mr7312861pjb.134.1629263324660;
        Tue, 17 Aug 2021 22:08:44 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id q21sm3578775pjg.55.2021.08.17.22.08.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 22:08:43 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Miguel Ojeda <ojeda@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Daniel Micay <danielmicay@gmail.com>,
	Christoph Lameter <cl@linux.com>,
	Pekka Enberg <penberg@kernel.org>,
	David Rientjes <rientjes@google.com>,
	Joonsoo Kim <iamjoonsoo.kim@lge.com>,
	Vlastimil Babka <vbabka@suse.cz>,
	Dennis Zhou <dennis@kernel.org>,
	Tejun Heo <tj@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	clang-built-linux@googlegroups.com,
	linux-mm@kvack.org,
	linux-kbuild@vger.kernel.org,
	linux-hardening@vger.kernel.org
Subject: [PATCH 0/5] Add __alloc_size() for better bounds checking
Date: Tue, 17 Aug 2021 22:08:36 -0700
Message-Id: <20210818050841.2226600-1-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1503; h=from:subject; bh=M1Tok+LfKYfKMg3IsfepbLLdtBAUXEFJ6hNboUgrVcQ=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHJXX4iubi2i9iuFz+LsiKuwROx1EI+5yY5ZbGOgo sK/JE9+JAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyV1wAKCRCJcvTf3G3AJpXhD/ 4z085X3Ll8rZJC6uVrygExuVDtlwKRRcu1+fsHdRvTBsNePyBe6eM7MdWyzSU6pRDGSwoPBBggFZ0F jYxajPqmHe9N5J8ZRMoRF/c+TcctzqSJjvaMxRrULJzBvM00RDUmapmE7i7gGeB8nsgMopdiuNpIFk eSzlfd5/V66zAWa2+vZ2gDFgHjWQIMrU4U7QeajbQOfbxYmzeN7nT5T7UTAtszzl4Dz29khVmFSxQK 8O8+mgv+S3HnLHpsm/X9189a9gx9FrY5CmmojA1NLFshWiMFwt0HqBWax2L0RA+QCj5YBTy5blQUve +qaLIvFS/G43o2Hr2KaK2BeROLFr9c/ridogvWg/BGM7Ohlervc/vSS9vGnrd1EAyNZ8VovR76HmA0 YceN0FYjjjrn0C2IaX1315H6wz71VTBRZMfQ3UUrzGFDzPLpqRd1jXKw0sXKQxAOJAqNIhOrdYse2U Z1DmuGpFHPFq7IWT12lvVMbY6on1GJy72xVVct1ZgUQpLTolS2BmWvpDFgTATpXlRSiiylxlEGY8dT AJEBIUkvRLFhe/ThymPuUkqCLfnMVsiTlbo3grvPI74w2D0zbBpsQXXry5IOI/9wBDD98Dczq0qdDd pwOrFTKxLBfnL6zBGq7mCyUtLzJzOTgVR+wyP4t3kuzVj/KqpTV0/LACImUQ==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=g4c93iNe;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::632
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

Hi,

GCC and Clang both use the "alloc_size" attribute to assist with bounds
checking around the use of allocation functions. Add the attribute,
adjust the Makefile to silence needless warnings, and add the hints to
the allocators where possible. These changes have been in use for a
while now in GrapheneOS.

To build without warnings, this series needs a couple small fixes for
allmodconfig, which I sent separately:
https://lore.kernel.org/lkml/20210818044540.1601664-1-keescook@chromium.org/
https://lore.kernel.org/lkml/20210818044252.1533634-1-keescook@chromium.org/
https://lore.kernel.org/lkml/20210818043912.1466447-1-keescook@chromium.org/

I figure I can take this via my "overflow" series, or it could go via
-mm?

-Kees

Kees Cook (5):
  Compiler Attributes: Add __alloc_size() for better bounds checking
  slab: Add __alloc_size attributes for better bounds checking
  mm/page_alloc: Add __alloc_size attributes for better bounds checking
  percpu: Add __alloc_size attributes for better bounds checking
  mm/vmalloc: Add __alloc_size attributes for better bounds checking

 Makefile                            |  6 +++-
 include/linux/compiler_attributes.h |  6 ++++
 include/linux/gfp.h                 |  4 +--
 include/linux/percpu.h              |  6 ++--
 include/linux/slab.h                | 50 ++++++++++++++++++-----------
 include/linux/vmalloc.h             | 22 ++++++-------
 6 files changed, 58 insertions(+), 36 deletions(-)

-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818050841.2226600-1-keescook%40chromium.org.
