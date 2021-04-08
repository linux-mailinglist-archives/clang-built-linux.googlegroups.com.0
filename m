Return-Path: <clang-built-linux+bncBC2ORX645YPRB64WXWBQMGQETVL2IXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id 03A05358C51
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Apr 2021 20:29:16 +0200 (CEST)
Received: by mail-qk1-x73f.google.com with SMTP id y9sf1833790qki.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Apr 2021 11:29:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617906555; cv=pass;
        d=google.com; s=arc-20160816;
        b=GmzpPVzDxZLR2J1BxHOJ4EvbISKGfgB6dzkOB11Wm7vp5HqupYYZZyX/C32d/1A0OO
         hq94TrHugFX/Re+PsoXTNRMe7kAwpgAPhN5aTIMNjn55T3kiTlomvCEV2kweRhwWk3V1
         3GmLo7GZbCFgVAC0xpo6VCjHJbTApb+V5bFW+/fCklYD3CefQAd4l0Vgpx5+JQZfxPNt
         GvIisUY/quDPa7/icHNZpefMxbIL/+nbUj0uvEvZsBtZhCvHo6GvysAGctrBxoRBWH/O
         x1P7w4m/k/AOdJUrk6ZB5masbmWWzk2CFUJU1bKM+LLDMZe8ys6XKhX0C1on2PjNExC4
         Pn+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=m8zBFD+g2AO+7QzxJfFTDmjHSN7p9Tn28bowtIaOkPI=;
        b=sBla8Ho9LLdja4jws7tu8ZL8TXgKYRlC4UqhYBFt0GQhYNz0eDVC1o3GhN4dDPKt0v
         TfzYEDcP71z7da8LnH8TR6CgFu/dCk89gKU0kNrgtLnMeaFFh/oVEiUjv+sAEl2zONbo
         rPu5AA4kk2vCz+N2nPt49Qbg85sJLOHKdU08KBzzbt+vqrGS1caFy/+1MruG7mFzXPX4
         pvUY93NpLqdt2HhPqqt5cwzn6kQYM1f7DJLAjt7xdC/FvWeO0fY5LGHaiCs6nmbNkgv4
         XM+qP3QQjObPBR47ldmI+ncAFUWbYiYSAzmVgVCVaJbzSZN0RFcEsZtUMFqvHfT7COzY
         y/Wg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=X+q7fW6i;
       spf=pass (google.com: domain of 3ektvyawkancl3fbmheo3g7g9hh9e7.5hf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3ektvYAwKANcL3FBMHEO3G7G9HH9E7.5HF@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m8zBFD+g2AO+7QzxJfFTDmjHSN7p9Tn28bowtIaOkPI=;
        b=QW94+KIEQDx7LWUaQOHT/hTeuD0+W0wd5TE8rQnE596Esi38xMpGrOvCXZneygnpuC
         eQsUdG52hC0VmY5fRwNLL+650Drp6qNatqgNIaRDhj9ttictkEK1ZvDvbBZOmsOIP3t6
         Lhjo8prYCIGBMHsfGS+KleWo/RtPjBu+4VjgBNgYatWHqpQzf6rfkaZFsRgsnjwesyo9
         64eGbVAmKQIg5J64mvemr0h6l3WXeARwW8mAHxETF2E1ekKE772K8m9DHWWuvj73rAJ2
         JqC+vIYTbpCXO6cutCI88+8wDO5FboClIlweDa7erFle3dStODFdJwxYeZ0CnIzBaRu+
         iAKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m8zBFD+g2AO+7QzxJfFTDmjHSN7p9Tn28bowtIaOkPI=;
        b=m1BqDfXeLbMHJG4ByU3imBt03kO2awaIQapAxaB7tm+bfVNhj/R/NEcws+7YB8EtHz
         Psv6JdR4FANOdQf8rvzkL31j12nBSKH/fsLqja+4IF0yuGD/j8NhKC5Qap+lTbi15tBk
         VEORKbW8VGHEZ98cvXvvLKrezdCWZ60lRrI9BId0UVopBUCrWUOffT+6IQQIdyMfzDpi
         Vqo4ED4rOIvdkFD50ZEomsKAkB75nJi9yswhwpBqNw6Gxe+HQW8lLz9Yiv2NenxzPs8X
         E5pnvHg8LObQRl8VIu0rgb9fU1yBoMjcfSRHak9sjPh5f3Vi1rQ73vShjN9CGOwnd2Ac
         X8dQ==
X-Gm-Message-State: AOAM530LZLcGP1YNA5+b5hxw4R8wonAfgDPOsPGhGFpj4znzN8KGxLuX
	LAzY73WplJ3TTT9MwvlZMhw=
X-Google-Smtp-Source: ABdhPJxCrncPTenxU4gvKnXNWiEqyYS8Ru/PBWa0p9sYo7Tmy966cTZI632njY4WOyIka7nc0kMzmg==
X-Received: by 2002:ac8:7f52:: with SMTP id g18mr9026640qtk.250.1617906555131;
        Thu, 08 Apr 2021 11:29:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:622a:4c6:: with SMTP id q6ls2600402qtx.6.gmail; Thu, 08
 Apr 2021 11:29:14 -0700 (PDT)
X-Received: by 2002:ac8:44d0:: with SMTP id b16mr8723939qto.217.1617906554651;
        Thu, 08 Apr 2021 11:29:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617906554; cv=none;
        d=google.com; s=arc-20160816;
        b=AD17zLmQSeEztWMk3eBOIm2B9jZLIkIz87AIadkJfWB2b+LztPFHEtI8Aytu1dkvUq
         2vVdyOkTh30LNpidz7F9u/P1KApRlsHtWNMenLnHk5vgKoQSy7mPB5gp13iBRBlpl53Q
         b5M3ia3bWeLvS2kPoEQijjD7zjisVTwhxJzWgk30UO0OmN/2Iwmk4e2us4veZipUHdTF
         MKSyPmFlWUjUXWllJM3KU05+whjsLHjSimctukSV3x4w5Vel7YrH5gGzlRYJBhSIRKXD
         PeZkK01JwYTGrVMtzBnsh0Xl1CMzkqEjuLKo5W15L12vDHB36Jq6l/z606R0AKzJsZuQ
         fSAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=vPR3ETOAeMW95pC8NAj24CpgqHEbd4yevcfxmcZ1/jA=;
        b=m2Dp5b8ApnWg76IgCKl6EFr2ksBl9OsGJldH5pan83mMCJCaMkTjldZjQzLtc/xP1S
         mXXFoooQEnGjclbCSGpV5eo2LTaaDsipixPy1x5waesXe3J/W+vBESWo5N1jH/bWLxDq
         Iew/neOr/KorLqGXMT9b6mHdrMaQOXTlNCGx3sOp+t3gX4SHtih1TqAciIwJj86TQFlv
         yDXeY/yOfctZGyIQR6pPPtpaPEhMXIHC82gwwMnJIC0U8F5fxjK1citEIA6H0G6CBQpN
         p5NM4tSjlj2W9ucXl1zJJHWRb2vxGNjJPs2v0eYnL1URm+yzRBE/mL8+34JXcDVvwBAi
         WmZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=X+q7fW6i;
       spf=pass (google.com: domain of 3ektvyawkancl3fbmheo3g7g9hh9e7.5hf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3ektvYAwKANcL3FBMHEO3G7G9HH9E7.5HF@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id w22si31826qtt.0.2021.04.08.11.29.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Apr 2021 11:29:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ektvyawkancl3fbmheo3g7g9hh9e7.5hf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id n67so2873594ybf.11
        for <clang-built-linux@googlegroups.com>; Thu, 08 Apr 2021 11:29:14 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:3560:8505:40a2:e021])
 (user=samitolvanen job=sendgmr) by 2002:a25:b90c:: with SMTP id
 x12mr13955922ybj.12.1617906554210; Thu, 08 Apr 2021 11:29:14 -0700 (PDT)
Date: Thu,  8 Apr 2021 11:28:40 -0700
In-Reply-To: <20210408182843.1754385-1-samitolvanen@google.com>
Message-Id: <20210408182843.1754385-16-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210408182843.1754385-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.1.295.g9ea45b61b8-goog
Subject: [PATCH v6 15/18] arm64: add __nocfi to __apply_alternatives
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, Jessica Yu <jeyu@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Tejun Heo <tj@kernel.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Christoph Hellwig <hch@infradead.org>, Peter Zijlstra <peterz@infradead.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, Mark Rutland <mark.rutland@arm.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, bpf@vger.kernel.org, 
	linux-hardening@vger.kernel.org, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=X+q7fW6i;       spf=pass
 (google.com: domain of 3ektvyawkancl3fbmheo3g7g9hh9e7.5hf@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3ektvYAwKANcL3FBMHEO3G7G9HH9E7.5HF@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

__apply_alternatives makes indirect calls to functions whose address
is taken in assembly code using the alternative_cb macro. With
non-canonical CFI, the compiler won't replace these function
references with the jump table addresses, which trips CFI. Disable CFI
checking in the function to work around the issue.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Tested-by: Nathan Chancellor <nathan@kernel.org>
---
 arch/arm64/kernel/alternative.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kernel/alternative.c b/arch/arm64/kernel/alternative.c
index 1184c44ea2c7..abc84636af07 100644
--- a/arch/arm64/kernel/alternative.c
+++ b/arch/arm64/kernel/alternative.c
@@ -133,8 +133,8 @@ static void clean_dcache_range_nopatch(u64 start, u64 end)
 	} while (cur += d_size, cur < end);
 }
 
-static void __apply_alternatives(void *alt_region,  bool is_module,
-				 unsigned long *feature_mask)
+static void __nocfi __apply_alternatives(void *alt_region,  bool is_module,
+					 unsigned long *feature_mask)
 {
 	struct alt_instr *alt;
 	struct alt_region *region = alt_region;
-- 
2.31.1.295.g9ea45b61b8-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210408182843.1754385-16-samitolvanen%40google.com.
