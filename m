Return-Path: <clang-built-linux+bncBDXK5DEU7QPBBOUUXGBAMGQEHCEDHBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x540.google.com (mail-ed1-x540.google.com [IPv6:2a00:1450:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD8E33A727
	for <lists+clang-built-linux@lfdr.de>; Sun, 14 Mar 2021 18:39:06 +0100 (CET)
Received: by mail-ed1-x540.google.com with SMTP id i6sf14790980edq.12
        for <lists+clang-built-linux@lfdr.de>; Sun, 14 Mar 2021 10:39:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615743546; cv=pass;
        d=google.com; s=arc-20160816;
        b=RG0lFt3wI6yG+rnZAfmmZJNDUjhdR5KpcfBKdtvtD2H/14j9nT4u4bK+7xWtF3GSUx
         QibfOkJhVW0ij/1M2y1BKBqf2crZZDRATx0wqqdiguH+hN3WQJos6PjvTenIC0eeShzB
         uB9FnvAzznVQq8cM5NjoU7oSYpDouuNQs6rt+nJB4YKAH6MZZxX+kZ6naBREhqpvCN/i
         /UpbpUFqoFs8YBrEYa5/pp1HRxXPpmz0OoK3Gv0SPkZW4xBZrfO218mgOCbKZPP63m5k
         7agze9kBcmOM6K3Pi45z1j46ZtsYFxh8zKOHHm9vs1xDfC9bMaeaP/lvIJLvtyq/mOY/
         gDlQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=5IjLxsNoiTXJ9tzCNwdb8+vLVyAx4KL37kn7erHZ3yc=;
        b=OOL5o5XMgUblAFN+DZpU5BSrQGLrQWnh3UnS2CMGr69tCJrwQgnJyo+uekYJrx5xhi
         UM2FKLCz9ROdgeN5ThDEF9bFNj3y59MdkExkaysWhiwY8rSUED/Y5AuXKVlJ//ThPjQP
         hKhOW3ImoRzg1C/S9PokHqHm9uT8yG8aQtua5kuxr+6d2sHDB7Sz99c9lA1p0GBwYQWB
         u54ytvoxvQ4+TpUILs4IY0YL1BdU6JS2ts2J8s39O0QKN8binYhHPuZsOwACeAzPd5DT
         Npn97AyWxvTqMxd4ZziSI/Glq2KpxPrAv9MSZ8OUuOzwoQy3ERgDyhTcBHvdywMPMs20
         VcQw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="iVXLmI/6";
       spf=pass (google.com: domain of pctammela@gmail.com designates 2a00:1450:4864:20::42d as permitted sender) smtp.mailfrom=pctammela@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5IjLxsNoiTXJ9tzCNwdb8+vLVyAx4KL37kn7erHZ3yc=;
        b=H5pBzkcjTQgg54msJXY14DhuVBgdmHLGudAfTz7V8IFiGJ00loXyY/+t199HRKmJ0q
         YTYsA8sK0iyDJm873Wg/fjAK8TNzzxci5LNgxbGwsl/wc62splX3ElyfLx7/LDgVfH5S
         2QZhx0oC6DTELcLxDSsAlK/LSHzZGleo77S0u6qlVoqtZ2i+AkCBvm50zjelNIKRwSDw
         Lzo7jlFk5gXgtMX2G5U18wt7MPhrlNMB4OsTJLYm5k90V63tLdo70YDhd9tIc5C3Jnjv
         N9gvtbAnrxa/6xuR1lpDMyCecGAH3kVZQccWe3AHka80k4NNtkh53CZZhh/2k6Z2XsXw
         igbw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5IjLxsNoiTXJ9tzCNwdb8+vLVyAx4KL37kn7erHZ3yc=;
        b=Uw2ifG9rQew6qW3S3ixI/3OR7uHWcSUxRhlnuBTw5PBr3FxjWTf7twy0A22T4OOEqN
         jwOm7hZkBstWQ+nZmSB//KYyBQQG6ZQlRM9fqjS3ddPxyT1zYRONxHvTPclefITVjJUm
         fk0SsZ7Jc+fdHz5WIayhcWuYdM+vVDrnKMuYvkrsgnKm97IDUqSkENsQsmAvXrpGlDNe
         /AaBdUA+1VvtbnjQ0YU8WhQTbRi6+L1HBWg6ovvkwzzeC9eZaPS+avUcyxnU9wayHash
         PPBkKBvxD0VcatcvVFz0ThD/kB+LIpN4Deo7elQIE9612kHs0Pvppq80z+4SLNYdOB8F
         XwZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5IjLxsNoiTXJ9tzCNwdb8+vLVyAx4KL37kn7erHZ3yc=;
        b=PupP8NazrTcdT5VwBIe9/khEzNx6JJinReXpF1wmKMUwReQ2ilxfasuQ2FzMLRC78b
         5WlODvbxcHB4AH6V9ZiixCtZtlBoTbwsKoyjKqjhrNc56bnsftjYZOTdCn7T8QBtywSG
         Yb3cgFaoJGgaj/HcR58I2hkjaM/hSjCTvIX+561reP/8felGMNJu8Ejs66FtFyeknDb9
         0UHMbOvTbkJ7klCSsiE8MQ7OLqkN1NSS8j6MRfLZ187BxyeAS8wePYlmlhkm5EnbWFxV
         BciSM9u8KdvbMfVQg/olS6ARwR9fv+4naQUgzBwWk853UtDSz07G/Ia3aWYLVkjvqpfc
         FaGw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533/1C5GgVudxx4hSM3on6he5Py/n33LvUuuQhoH8nQGReIsyXHb
	Mt9QCsxCQeqrRwX5FH0L0i0=
X-Google-Smtp-Source: ABdhPJzJG7k3ifrZu8EcXHhGgMYjq03YSTh2luhUW6cl/rsrhMmcln+SRrhinddFBVOVSjKbkcUXFQ==
X-Received: by 2002:a17:906:3496:: with SMTP id g22mr20085163ejb.143.1615743546315;
        Sun, 14 Mar 2021 10:39:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:50cd:: with SMTP id h13ls10836365edb.3.gmail; Sun,
 14 Mar 2021 10:39:05 -0700 (PDT)
X-Received: by 2002:a05:6402:1d33:: with SMTP id dh19mr25517188edb.362.1615743545468;
        Sun, 14 Mar 2021 10:39:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615743545; cv=none;
        d=google.com; s=arc-20160816;
        b=rBGovC6g33HmkZAtFVL/QxlJEQ5INfMLC76yZQBmH3L7p5t9Sc55/0p6u43VruQFM0
         mkUNT1MWLOgsotVgbC1CcDzFDj0rc6M3eCvbfdsWx1MQ5MfKQILqQpmK+orqbN0uvvS1
         nOSVUnFA8mc/c/TvOPSAAimerP2Unjj1iqq/GbjsxWQx3UOgCF08qhIHoSXC/ZNJMSFf
         ETugB5ly9B9K43i9hyIOzfuYbN5Vjnvq9FRyW/PsLzsqsdccazjn6u2IdAkcMAk5EL1q
         sKCwilQQnfuK9ehmlbj9zBwA6zn2b50z7UfopH7gumzCjn9Oe46Ejp+s31bBmkk9mF1c
         B8tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=hNWBwhuI0AHRidi+s+MGosFzATRCjrsmhXasCqbT4Qs=;
        b=U4BY8hzN43s8dQDcVBHjq4LX4bMfwJdasNE4RaSIKvpygMeYiI+bBeA+8HrB1Frpn3
         +DlmKcWPVuyxXnQc5+Gz6mOo0dPXFLFyQRGZC1pHTmmpi8UQhc+T19758ddPAYdburrq
         BYhqNnJm1QTFnV9Ulfs2rE/Ld69M3yOKY94i54HHhXTnHWl/Np71ynTyMflNz0RXTdqn
         nCetHIbabL0rXc3r1BYyKW9nadbcSBq55yxW/1TklqO0md9R1SMdMoTafw2mdFpFYhge
         +H+L+hl9R8i5NuXKrMl+9ljgArKJa+uqLgmiS93ToEgTZj/O3fnvQRWR0MWqvZpDbFKp
         +PQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="iVXLmI/6";
       spf=pass (google.com: domain of pctammela@gmail.com designates 2a00:1450:4864:20::42d as permitted sender) smtp.mailfrom=pctammela@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com. [2a00:1450:4864:20::42d])
        by gmr-mx.google.com with ESMTPS id sd27si379335ejb.1.2021.03.14.10.39.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 14 Mar 2021 10:39:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of pctammela@gmail.com designates 2a00:1450:4864:20::42d as permitted sender) client-ip=2a00:1450:4864:20::42d;
Received: by mail-wr1-x42d.google.com with SMTP id k8so4534358wrc.3
        for <clang-built-linux@googlegroups.com>; Sun, 14 Mar 2021 10:39:05 -0700 (PDT)
X-Received: by 2002:adf:9f54:: with SMTP id f20mr23912737wrg.362.1615743545258;
        Sun, 14 Mar 2021 10:39:05 -0700 (PDT)
Received: from localhost.localdomain (228-193-142-46.pool.kielnet.net. [46.142.193.228])
        by smtp.gmail.com with ESMTPSA id u63sm9935158wmg.24.2021.03.14.10.39.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Mar 2021 10:39:04 -0700 (PDT)
From: Pedro Tammela <pctammela@gmail.com>
To: 
Cc: Pedro Tammela <pctammela@gmail.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Andrii Nakryiko <andrii@kernel.org>,
	Martin KaFai Lau <kafai@fb.com>,
	Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>,
	John Fastabend <john.fastabend@gmail.com>,
	KP Singh <kpsingh@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] libbpf: avoid inline hint definition from 'linux/stddef.h'
Date: Sun, 14 Mar 2021 18:38:38 +0100
Message-Id: <20210314173839.457768-1-pctammela@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: pctammela@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="iVXLmI/6";       spf=pass
 (google.com: domain of pctammela@gmail.com designates 2a00:1450:4864:20::42d
 as permitted sender) smtp.mailfrom=pctammela@gmail.com;       dmarc=pass
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

Linux headers might pull 'linux/stddef.h' which defines
'__always_inline' as the following:

   #ifndef __always_inline
   #define __always_inline __inline__
   #endif

This becomes an issue if the program picks up the 'linux/stddef.h'
definition as the macro now just hints inline to clang.

This change now enforces the proper definition for BPF programs
regardless of the include order.

Signed-off-by: Pedro Tammela <pctammela@gmail.com>
---
 tools/lib/bpf/bpf_helpers.h | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/tools/lib/bpf/bpf_helpers.h b/tools/lib/bpf/bpf_helpers.h
index ae6c975e0b87..5fa483c0b508 100644
--- a/tools/lib/bpf/bpf_helpers.h
+++ b/tools/lib/bpf/bpf_helpers.h
@@ -29,9 +29,12 @@
  */
 #define SEC(NAME) __attribute__((section(NAME), used))
 
-#ifndef __always_inline
+/*
+ * Avoid 'linux/stddef.h' definition of '__always_inline'.
+ */
+#undef __always_inline
 #define __always_inline inline __attribute__((always_inline))
-#endif
+
 #ifndef __noinline
 #define __noinline __attribute__((noinline))
 #endif
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210314173839.457768-1-pctammela%40gmail.com.
