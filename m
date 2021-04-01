Return-Path: <clang-built-linux+bncBC2ORX645YPRBI5QTGBQMGQE2DJACJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 934833523AE
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Apr 2021 01:32:52 +0200 (CEST)
Received: by mail-qv1-xf3d.google.com with SMTP id fb10sf4290823qvb.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Apr 2021 16:32:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617319971; cv=pass;
        d=google.com; s=arc-20160816;
        b=g4aNOUIC8q8tYeZXwvXBy5G3RrKgg2LYc5Udf+73g+/UhnzbhZnxJ6AXEGz6lemefj
         /JPEygg9kpImpSIXCvdPJ5GKpaWDYiMqVyDVna6r0rjRflAin19P2CMRZpkBR5RsTEE4
         FlKjM4Oc+bjKEAD4hqVLJ4/Ct2ruaInYmtUS/jDSIv5MnAusqOZnADTYnFpt5dHfRviu
         iQhg15l7540W9KQjuHh52HFgvtnONuDQeGjFjFF71ROVsgp5OEuridQT4s9h4KPBEJnD
         TxeA3t+DInOvO+GHNr0krAi0L/tHP7CGV75NjKHwnfQcAZA5/ySkY9wbVPOmyH9nfa1r
         yvrw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=ehXHegqYKrkbZFXpSLjzcR21y7HkT4foxp7svxcSEAQ=;
        b=U70t2WwLErEGilcnrTWhoMAEkjWl2c+Jz0wHXh8N49gYfX0qbDFQ0IJ3hBQlzRXdtT
         DtYSIqx8oHz6CCjLm6QnisAY92U9gbR3HnUexJSi/jIsF0hzNk96DYQSnvSXRm2cjEBj
         OB+BRBcHfCtkq+A9GKGAq2jHBRHXdF0XzeQc2nvbZ6Rajrjn7zFqc0pDQheULV90RgTF
         hRyr4679fBWbh/Osg7CLP5H7XopNq3lHjhHCMTfil5dxWZdTVA314zPxnglPr/uwZ7Oz
         eeuwS/zBbsfULHgtdTjovBUvheVW76AdvLZoIKffCcMBC8vfQTSl6Dy2M8NKAcEGEiyU
         sUGA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Y6zfeKMJ;
       spf=pass (google.com: domain of 3ilhmyawkahultfbmheotgxgzhhzex.vhf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3IlhmYAwKAHUlTfbmheoTgXgZhhZeX.Vhf@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ehXHegqYKrkbZFXpSLjzcR21y7HkT4foxp7svxcSEAQ=;
        b=LkDmYaE++kZz96fo81UgRMd1M0u0hvuLOkMIe/9/sPbkCnRlRbZ5WbIBEW79zlsE+T
         ixub7mdJ8eudc0bNOpUbDO4CPc3TpRngQwfmKaKKv2fKc7zGGx5gAr9EZz58oEMqxCj9
         SsiFR2fqymNVLpDHwsYLViw0AKlHfmiduW1RIutJ6bkMORiLWbZFjThxXbPnkxaQ9TXM
         tMHFFRvgUaKlpGJVLkKJNvI/GE1L+8YFtCB9vnra/Pu1UjtpljyAk84rYGBtslVa8ffP
         NNls55uuVaU6fVGjg2B1wf5vjCwKA/PHIIeZX659ZXDwW8/au4lGCzuNCBX1hwiqUvx4
         ZUPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ehXHegqYKrkbZFXpSLjzcR21y7HkT4foxp7svxcSEAQ=;
        b=rdNt7LyeEiCRVM1iCdcj9rZSr7cU5uhTFag47zvf8bPhPTHkRrXtYoCTDKTym8NtZ1
         +mxvmXXfzOgBkze6iP7wn9fkvAyg5pf+x0am7ot8p06KorokF2r1n3pAEbDCLJZ/4k1x
         yp/GxWJKXtD1BPdwD8q/MyK/jqF5W8JAOQlaaswUbl8IpYJ0fcxWqCyRjH8nln6Ypcpa
         nxPQzB0dKn4zcKdft+IIGBCDYY7xIGPYDmalii1Wpw/xJw/dRjoCMZtav4YdLsz3RV6o
         REmaCcXJjsJQr3oNtWB2q2nrXjT61+UXnNK1t2Cvqigf2WWn9BW0rJ7C44HitXcCzkkH
         CGFw==
X-Gm-Message-State: AOAM531hQNZWXArqwGzyTt+6pEwABmOl5J29194Z+VHtHvJrnUhfhXYY
	4dWHvpJ3V3ZvQarUcVBoUNk=
X-Google-Smtp-Source: ABdhPJzvBHJxZwhMvSm2pzD3S6Rs6fC5mZHZEWNsEKQxGdeu9LPOGQGRGxWGiLyYB3maPtS3Ymc4rw==
X-Received: by 2002:a05:620a:13db:: with SMTP id g27mr11068259qkl.367.1617319971742;
        Thu, 01 Apr 2021 16:32:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:c207:: with SMTP id i7ls4120947qkm.9.gmail; Thu, 01 Apr
 2021 16:32:51 -0700 (PDT)
X-Received: by 2002:a37:9dc9:: with SMTP id g192mr10523948qke.258.1617319971304;
        Thu, 01 Apr 2021 16:32:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617319971; cv=none;
        d=google.com; s=arc-20160816;
        b=gLYzgZk+tdfqYPI5gy8kvaDyE+cMmpS+KhjS1K5VWtQHc/f+t1JtRL6krfRVX8gVn4
         Zrpske+7rJm9NOXiBu4F8eENkQA8jq71olLYUTBxS2FQD7YOcopASllTqFLfyPaQHtJD
         Uj46AFwoZflE8C0YqV9kPazbZwernoIUg59sgrPUk/SfAC2qB+nyDn4mXm2JteSdw7Xo
         7LEkniuoYyTK2ogO5OSr6/wJo5FWYPejh4RAn1BE+oHgN+OmmVtFpTjnFc4ki25ZELIx
         8Liituz6qWQ/HE+jd4oCzeWJhOtf8+9dSbnaq7aOUnzNpjep+KR593b8SqLp2L0QiAjm
         +l3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=UnGCKexXdTyI7Eiqrpiu9/A3gEqTseA/WgHOqsa1uKs=;
        b=cb/jAOcKZOLDRa0hxJkV8s34i6TSXPyKj9Am3eow73t7DzUR9TKEWN34J93zddF3JP
         adYXWyT3gMUqcbaLqcai9rp/JcXyEzmAWDnLRMgsf4/eCvYcWoHnKjP4KsweJjhme/9Q
         kYxl3BYSXuO5WL38pm8azfQvPoJUwqJzv4JOBPDIfOHXLoRXzc/qLl7jAw/BjpbJr1pm
         S/qoRqZdRuclfMFpQqQT1kFQgiPJrjcNN+5Rx4OnF1VymWDVe4tqlgRqXMZ20TxI7Dg/
         fTP0eyyVkO4rdMHpw4UllqvrH3V7zSetXnE9DPLISaPYEaodSjMKxq3b3ECyM1tUn3Yx
         XIfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Y6zfeKMJ;
       spf=pass (google.com: domain of 3ilhmyawkahultfbmheotgxgzhhzex.vhf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3IlhmYAwKAHUlTfbmheoTgXgZhhZeX.Vhf@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id k1si1110952qtg.2.2021.04.01.16.32.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Apr 2021 16:32:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ilhmyawkahultfbmheotgxgzhhzex.vhf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id x197so4235154pfc.18
        for <clang-built-linux@googlegroups.com>; Thu, 01 Apr 2021 16:32:51 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:4cd1:da86:e91b:70b4])
 (user=samitolvanen job=sendgmr) by 2002:a62:e805:0:b029:1f8:16ba:4518 with
 SMTP id c5-20020a62e8050000b02901f816ba4518mr9437095pfi.37.1617319970406;
 Thu, 01 Apr 2021 16:32:50 -0700 (PDT)
Date: Thu,  1 Apr 2021 16:32:13 -0700
In-Reply-To: <20210401233216.2540591-1-samitolvanen@google.com>
Message-Id: <20210401233216.2540591-16-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210401233216.2540591-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.0.208.g409f899ff0-goog
Subject: [PATCH v5 15/18] arm64: add __nocfi to __apply_alternatives
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
 header.i=@google.com header.s=20161025 header.b=Y6zfeKMJ;       spf=pass
 (google.com: domain of 3ilhmyawkahultfbmheotgxgzhhzex.vhf@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3IlhmYAwKAHUlTfbmheoTgXgZhhZeX.Vhf@flex--samitolvanen.bounces.google.com;
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
2.31.0.208.g409f899ff0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210401233216.2540591-16-samitolvanen%40google.com.
