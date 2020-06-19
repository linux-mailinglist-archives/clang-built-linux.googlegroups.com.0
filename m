Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBQ7MWL3QKGQE3UXRAUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 5159F20090E
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jun 2020 14:57:40 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id o65sf3414188lff.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jun 2020 05:57:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592571460; cv=pass;
        d=google.com; s=arc-20160816;
        b=OZGVOD1Y/06mgmevEgj1wbLFAfh+HLeFjg108gppGspG44M5OpkymfhYXJBupUhdR/
         zXI83ffg9vXNX/IA5pcR3hY3iXdeQnZ+TkbEDTEcPxQpkqBEvGWCckGU8NiARWg4dczd
         ZKZmr+OAcIZhjMeB5HWrkFtK9GVTllX9lGYRySqT/6xRR7S+R7rh+Sd/VayH06L0N4XJ
         FyU2D+7YmZ8f54+VNDuQPUMEe5RXkdT4v0/xfU2s1El3R2QUoJ9ZNJNGw0TfomgAY7Mb
         4x9/EfAq6LpuIyG+kUIBt62RF9XuJG8xDhl5UWwu3iZM0LRYz/JA+cvyEYrk0oi4zi/1
         Vc6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=ZZzfYrIvsQe+0cGoIgykdjL6hwunlnuIoAkHdsoGLNg=;
        b=lqIcKtFLY9SKj1FiRka2H3dEg6ENMj5Pgf3S29a203PnqhgJGE3T9RUe7k7n+wMKmr
         TruZqedqenM5Co/LWeQY8p51QU7fSQmhBwX8rwvSn+a233amiSEVO40FAV5aqh+f+Ieu
         tpaCOARrQessgI6qNDf4xEpKlGUDBIc2gUTDfGVzzXkTneSE03d9bu9ET9Oyp1Sap1U1
         XUnnUqG6EISCaeZSaDZwHDToTuvu5yF7Hwtu22HuB59i4EUpIqARNU0eLqJ6lR7ckMLg
         Ku9MyQ4uIDMyA3hUS/dMCsrAuRXV/zAG+nvJYQ/NbiOxBZkCsXOMBrNMH5ngpmvViOVY
         JKUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mCQEDB2I;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZZzfYrIvsQe+0cGoIgykdjL6hwunlnuIoAkHdsoGLNg=;
        b=DuhJwSzxRMdz35+WhJDfRWQO4a9yoKNdYC8VGIa5+FTtegpmp7SyHF4oqjU+s6NgQp
         RBcXKSQJVBi+Mj9MFVTaON8LkorS4BrDuvjEqsuNPI2HO7LcQMguNZ10V1DZvBVuLpS4
         pFoX37alYyKeP3I/h8PlB1pmOhEXLZK/hAscIUAPOiPq8LaB5UQF5IP2QJyb+y8VntzS
         4S2w+AMei5IKt2gTyuFJo7k+JviAKVi7K39LRHgcd1LAmJyG4l+rUJPNm6vvt0x/C9Lp
         I5rTJ8FHPL0yHN7CUojLLa4whoJsTU9qhgKbbr0HR4DR14vqmQrXrLbGfCH/ztwG046T
         xJ2w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZZzfYrIvsQe+0cGoIgykdjL6hwunlnuIoAkHdsoGLNg=;
        b=IJL4seBBnwy2tSdgMitGeGJXMrldN3BdlHyMNCunbAFz5+BCd5PICSzE5D/UXJhBvI
         wB/ffvJTMxKDQ5SFLGyop7E2JLunu68mV1j+AJsf0M9h+DPTeOlGc85CqLRl0kC329FX
         Vm7mV3EJuTvIYKbAeaG0N8IFg5mqBhiB7BFHnbtUiY1VHQvs7S9773QWbi5j16/+Nf6e
         C98fa9DdONU3BkxAVbgzQ1kn33zGD/w7iSAwDCQ9rXrZuUDqqHL3gY9IFgcaxqPm8Lhv
         JaPr5f5ebgySq4dbTQehZzlHdO2dOrxQ0Tx//kbvfJJ33Xqd7BynQ67IA7apFZmn9n7A
         Gu3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZZzfYrIvsQe+0cGoIgykdjL6hwunlnuIoAkHdsoGLNg=;
        b=qnNVqk22H7fHKeCplmVS2jVuytHj8tWdPIfax9TjeL6ECM7arV9EhkGLDzR1iuUuQ1
         +Yj+i6wvfxM7eWtstoUJ8i3E0Q60evwQSSaJUPkFn+ew8wTshNW0/HH0AK3LYpG88hGH
         M/MsFOPrANFr6NWNRTFW4p04Xy4I7udNbAZNdpadE3BSxuIDW9s1Nc4o8DR68sRKkWRL
         fvLT1aFuJ6Ynak5QD8xPb3R+66JXIlM4k4KMs8/olE4HBpGUegCX8FB1NmVnxjQJD0Z+
         i4L0Oe+U1ajJoOmaJX4BOUEs01QLTtvBIJcmdvWqg1hyoAdcZL2oSQoUJMaJEgLloJC5
         cIjg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Rxy4aVcr3qrWfqEemd0tnSdlDsfg9JrVlROg+JlHXwqiVVLdj
	Oa1jEZPCVJtTUGxbfqFe3U4=
X-Google-Smtp-Source: ABdhPJziFE0/CQPSWNCznj+T7BdNJunH5Oza1z41ebbww9HslSgxyy9jWxfL/IFyqjucsI30IP5LGQ==
X-Received: by 2002:a05:6512:3082:: with SMTP id z2mr1947379lfd.32.1592571459900;
        Fri, 19 Jun 2020 05:57:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:30c:: with SMTP id a12ls1960858ljp.9.gmail; Fri, 19
 Jun 2020 05:57:39 -0700 (PDT)
X-Received: by 2002:a05:651c:288:: with SMTP id b8mr1831085ljo.337.1592571459168;
        Fri, 19 Jun 2020 05:57:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592571459; cv=none;
        d=google.com; s=arc-20160816;
        b=SG6UotTEYGdiNpdHVSGhs2qhnsvFDe/kEqb83PKzg4r98w7miQo1OkjhW3xAbVc6TA
         ISdrSR16khiPz1UtW2ENjAYY5FHQ5O8P5yuvLTUCEJC62JAiP1tSZOKbBoNQB/9hEyw9
         Y1qy0vtepN+WYrrh/6opLvLHowivZ75Yf02pMusv/cyX+e+VBWCpdQPfAT5/RT+Bv6jn
         H5vD2FCGg3MCjFc6EYbjVLwpOdAvaLG5VPda1DR6fcN8YMYJBGmDpoF5NLsqLW7zRJ3V
         PEv9GVbxA7pwIs3+fdJ+GoZMmKLFj0rmuBswlOTpBD0yqG3zQmMJCBzFHkYEPF8JdvoT
         11uQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=RwAV9yH6vfR+prDFBL6WEfKTnzoBXbYA0ML8+0Kfwxo=;
        b=rnybwaOsnY7vT7UDId+h/SQbJuYf8dQv2KHWHtiDcOTZNRujDSHDRXnROIkz/BMOTF
         z0Il7sna1M0h8+yj88t1RYxEXZd824K20yYFiFEyh4ESyf5dbP8OX3TARuruLxlh7+xW
         UD5ziE1MVqwRyK8CQyTh7JRdoyvbWaMWLqJAhBoHtWtFxGYYkXHV47gq1DKiUczrwS5y
         MR6b7O8F8vXHJbGZ7QDti9si6JFwubcCNm4H5vgSROiBf7pwZ1rN6ROZ6mNps6gEbPMm
         BALSbRu6C3qyvbYqGpNdjX5kyElmDGbC/HR9Bj0Ug2q/3z+U0Fu0bAniQuv3aJyv9wYE
         EXww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mCQEDB2I;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id x20si421725ljh.1.2020.06.19.05.57.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Jun 2020 05:57:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id g18so527863wrm.2
        for <clang-built-linux@googlegroups.com>; Fri, 19 Jun 2020 05:57:39 -0700 (PDT)
X-Received: by 2002:adf:e4cc:: with SMTP id v12mr3798409wrm.183.1592571458728;
        Fri, 19 Jun 2020 05:57:38 -0700 (PDT)
Received: from localhost.localdomain ([46.114.105.49])
        by smtp.gmail.com with ESMTPSA id 63sm8008328wra.86.2020.06.19.05.57.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jun 2020 05:57:38 -0700 (PDT)
From: Sedat Dilek <sedat.dilek@gmail.com>
To: "Paul E. McKenney" <paulmck@kernel.org>,
	Ingo Molnar <mingo@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Marco Elver <elver@google.com>,
	Will Deacon <will@kernel.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Cc: Sedat Dilek <sedat.dilek@gmail.com>
Subject: [PATCH] kcsan: Improve small stylistic detail in compiler-clang.h
Date: Fri, 19 Jun 2020 14:57:21 +0200
Message-Id: <20200619125721.15946-1-sedat.dilek@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=mCQEDB2I;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::443
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Commit 5cbaefe9743bf14c9d3106db0cc19f8cb0a3ca22
("kcsan: Improve various small stylistic details")

...forgot to improve a stylistic detail that was already done at
another place in compiler-clang.h file.

Fixes: 5cbaefe9743b ("kcsan: Improve various small stylistic details")
Signed-off-by: Sedat Dilek <sedat.dilek@gmail.com>
---
 include/linux/compiler-clang.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
index ee37256ec8bd..c47141b185fe 100644
--- a/include/linux/compiler-clang.h
+++ b/include/linux/compiler-clang.h
@@ -25,7 +25,7 @@
 #endif
 
 #if __has_feature(thread_sanitizer)
-/* emulate gcc's __SANITIZE_THREAD__ flag */
+/* Emulate GCC's __SANITIZE_THREAD__ flag */
 #define __SANITIZE_THREAD__
 #define __no_sanitize_thread \
 		__attribute__((no_sanitize("thread")))
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200619125721.15946-1-sedat.dilek%40gmail.com.
