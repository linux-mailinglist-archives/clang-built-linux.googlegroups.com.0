Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBXEZ7D7QKGQEDXLBAPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 52B862F3BA5
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 21:55:58 +0100 (CET)
Received: by mail-pg1-x540.google.com with SMTP id 24sf36774pgt.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 12:55:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610484957; cv=pass;
        d=google.com; s=arc-20160816;
        b=NOMZJbw95ZQzPyr5CmWW4cko/DoOsgiiuTGt60YI7SO5dzx4kfKfUZdl/7rvYHxMGx
         xd/02YhwMt4QsKlZ1dGBfVqhjB/v5K+3nr78y7DEepNphPm69k7GKFKZpC4H4uJZwUGL
         Y4iOXzKFjJBDDUg6hhqsnHstVMiZiJhRgNURDGxC/JlFGFp1dPZFf7NFNeyBtzRlqTt+
         KvtFllO1VtIDPkUfXAkcqGfaQsbVjRGv76CYcWHYrpFrXzZt7hJCiAl2Ajqqy3rxt1qu
         KqziaLITSdJgXHQyFlvsSmcTfco7d+VpYaiihBm/QAvlzUV+2NciDuGerrd0iEEbI/78
         cVlQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=QlkuMjTp9qJ8zIn+EWdmDN0e0pshcaIwTpgrQ920hg8=;
        b=LxeKVrL8eLrPJFjuQHiQ9No20GyEOhGYmqxggX0QWBtSVD2ILhNTnNqezlMku2dRmH
         Mp3qV5kUZhl7p4Etu9f4DE0/5hodN1rdypDQHxcfHIt0fbC6hlCSURCoxFjCoQjxIvUJ
         Q9w8GbYAOaB42FK7SwAtldY7Vl2PgJ9cf4NKFFDchrxzf1KpUoVwuFGHc4HFd2SqR/H0
         edO87jIavocMscEMiKtpwyNZqgwOCwgPNm8kd7MfwiIro4puOfdztiMvq0nX1L92d22G
         +CGKDDmdQOB8I8d7TFXBm8Zq2kD6RjXWdeiBvg0g4uHtV4+wXCiS8lDXawPIZuK3V8Nz
         Uv8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="OR6/VYaz";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d30 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QlkuMjTp9qJ8zIn+EWdmDN0e0pshcaIwTpgrQ920hg8=;
        b=ldninLnJxAJ5EbfnQJ07Ozztmfx1uyGaOVINqbzQm2YPXSc0RjRM27I+g7ZI14Ziwn
         uJ4WJKbUf+1derC/6TWAXY34yPeadXCNtw2TKHg43oOzAzCxtLP580DzAnkmoKNKmcVN
         ZGKsgp0u+312H0mKS1YDm62/OKmxDrQpEYw48FtG9URpIrw8//fwiF8KjQIbolGK3o3d
         dSWWBMAw1s4QAA0ggrWzkQiqxq/9EaKvGaoT9a44yAvjLYdplN8DX8XK++9EuYHphof3
         CcPQ2G/KydeT48ILYeTH1E9AeqrtqZNW5F6O1fqIeH9XhC8qQXqJ3DR1t3HtEo/48U8s
         2LQA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QlkuMjTp9qJ8zIn+EWdmDN0e0pshcaIwTpgrQ920hg8=;
        b=sTAVZXi3PpVVhWdvjBUpMKsQKZx0spZlPUWfOJM/pOGbSYEyHst0pulT9mqUL7/FnZ
         nr1NYj7yvyWd54DgXDcimaqF7Ejcl3zQgrgbbTtbvuh56dE48x4aBIEY/4+vea2Bonji
         E6EchmuX4JzxWYC/HurxiIS2OSFGMcfgZ0g4mDlRZRqga2XQSeTDs/dShGab3Mky3RBU
         NGqstCe4TORbs3ThnnWgEeJm75iTBDvVlt5Dzy6tjcxBZCKeJ+tPdgtlijhokvlxHJBu
         CjySrNQn1o64voc/VcVPRhCxhQE7d9960+U5Qfi75VcEbi08aDBbpxvl0pE8KBlz11Ei
         lYFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QlkuMjTp9qJ8zIn+EWdmDN0e0pshcaIwTpgrQ920hg8=;
        b=DMUkT7dZLEh/3sMEdeMZULS66y6JeICRSLGJtDoqXL2qj0pdZfuZz61k7cWeSA7hbm
         ZU9jssBNzOGzHuo2bgvS19iL6wPQ8OgwiVntVLllbz+cTTnSCXQuOLi4ZNM7PaouTlPM
         +pz6iTXU7GC2/SrjeYvqV3K6I2FhvqC9DunQ2H3wza0eYHHzXGZBZ/cX+deHIlmrYPN7
         +Q4/Y87Ky3A1F6UuAu/7/2gTH9iW4gO/DTX22WqAYDuWDYHS6dkekmEfQsZUD49Ptc2S
         TqidEkz2pbMl+B+OYhgzYs4XGO+F3er4/D2RjoVUoRAfDZ/elVVEM7qApI50mnwjWUhN
         N+Mg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530LLXJoCouq8YfyNxZKWj6V80EOsT0BQ3H129Oy65IRTT87eP1D
	qy6pQjSonUbmuWN1EKvxKb8=
X-Google-Smtp-Source: ABdhPJzHlG+1m/Tu/yIXCfhlOdJI5Mbh4u8ILd1XN3PmgsxOm1DzgjVGhlDubFxaxY6in4OLw+cqvQ==
X-Received: by 2002:a17:902:bf44:b029:da:d0ee:cef with SMTP id u4-20020a170902bf44b02900dad0ee0cefmr1029570pls.12.1610484957058;
        Tue, 12 Jan 2021 12:55:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:7310:: with SMTP id o16ls1639458pgc.4.gmail; Tue, 12 Jan
 2021 12:55:56 -0800 (PST)
X-Received: by 2002:a65:68c9:: with SMTP id k9mr921306pgt.328.1610484956402;
        Tue, 12 Jan 2021 12:55:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610484956; cv=none;
        d=google.com; s=arc-20160816;
        b=UQ2tLyAjbXnZIKf1XtV9cmvmsLPHTABCALvzc85fGRFqd7OV19j53nE8czT1hi9ZgS
         7DOf7v2mgvJ5F3//0OAx+sXVewESm+oAMVDjJO4kq2RLeT9g7iHvGkE7ogpmV42OPoQM
         D+/6hQ+yvELXfPOs/LX9YaxV5jyt3zjnCc5cF1phRDbRPv2beA/FqZ/0eRDw2sT9I465
         cL60IdV0PQ9CnzCkbqs5IB0jY6bphmNSbdI0kx202bKN7NurTOuKduEcSxrRKFH74E9S
         8HBC1iIzwY4nGzWcGmGcrdJMQWZZfv5qyc1nyZ9P7IxFz5TT2LyIU9tuNyMHe77J+YxL
         bHJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=5xQAjZcdO2TrQnB+fHDjBj7ZI3sRYW3buKazkY/+leg=;
        b=lGVUsSY1huZi8iuGIKN3P+0RRfwLrSqoV55vZot8AczC63FFPHMoYsWk+bvmgBdmlt
         nKVkPBruyhzV0MiXwGlMSsaZLLqcKkbo5cocWth3aGWcusa4xaxCFuZ7vryxG85dDAr/
         AmuAIy9De4JP6wtqzfE6N6kLSMOVO13bkp4N6h13B+dW6zFx1Ff49Rw7kxAh9NkUXKkq
         96TY8w6Fv3KPazHeZ/BHuXH7KgwN+VJGXTp3RlU0VdA+SXVZPShsv2yTfPVr4tAPvDTT
         7s0ipENTfe710EvYM3WvjTn52q+0Dw8Z5Gw1T6x8GLsueD6dsILTgl7QCE3Bt1Q69oTJ
         471Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="OR6/VYaz";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d30 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd30.google.com (mail-io1-xd30.google.com. [2607:f8b0:4864:20::d30])
        by gmr-mx.google.com with ESMTPS id c2si351234pls.4.2021.01.12.12.55.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jan 2021 12:55:56 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d30 as permitted sender) client-ip=2607:f8b0:4864:20::d30;
Received: by mail-io1-xd30.google.com with SMTP id p187so7070376iod.4
        for <clang-built-linux@googlegroups.com>; Tue, 12 Jan 2021 12:55:56 -0800 (PST)
X-Received: by 2002:a6b:7a0c:: with SMTP id h12mr745554iom.162.1610484955698;
        Tue, 12 Jan 2021 12:55:55 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id 17sm3193856ilt.15.2021.01.12.12.55.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Jan 2021 12:55:54 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Kees Cook <keescook@chromium.org>,
	Andrew Morton <akpm@linux-foundation.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] ubsan: Implement __ubsan_handle_alignment_assumption
Date: Tue, 12 Jan 2021 13:55:42 -0700
Message-Id: <20210112205542.1375847-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="OR6/VYaz";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::d30 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

When building ARCH=mips 32r2el_defconfig with CONFIG_UBSAN_ALIGNMENT:

ld.lld: error: undefined symbol: __ubsan_handle_alignment_assumption
>>> referenced by slab.h:557 (include/linux/slab.h:557)
>>>               main.o:(do_initcalls) in archive init/built-in.a
>>> referenced by slab.h:448 (include/linux/slab.h:448)
>>>               do_mounts_rd.o:(rd_load_image) in archive init/built-in.a
>>> referenced by slab.h:448 (include/linux/slab.h:448)
>>>               do_mounts_rd.o:(identify_ramdisk_image) in archive init/built-in.a
>>> referenced 1579 more times

Implement this for the kernel based on LLVM's
handleAlignmentAssumptionImpl because the kernel is not linked against
the compiler runtime.

Link: https://github.com/ClangBuiltLinux/linux/issues/1245
Link: https://github.com/llvm/llvm-project/blob/llvmorg-11.0.1/compiler-rt/lib/ubsan/ubsan_handlers.cpp#L151-L190
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 lib/ubsan.c | 28 ++++++++++++++++++++++++++++
 lib/ubsan.h |  6 ++++++
 2 files changed, 34 insertions(+)

diff --git a/lib/ubsan.c b/lib/ubsan.c
index 3e3352f3d0da..a1e6cc9993f8 100644
--- a/lib/ubsan.c
+++ b/lib/ubsan.c
@@ -427,3 +427,31 @@ void __ubsan_handle_load_invalid_value(void *_data, void *val)
 	ubsan_epilogue();
 }
 EXPORT_SYMBOL(__ubsan_handle_load_invalid_value);
+
+void __ubsan_handle_alignment_assumption(void *_data, unsigned long ptr,
+					 unsigned long align,
+					 unsigned long offset)
+{
+	struct alignment_assumption_data *data = _data;
+	unsigned long real_ptr;
+
+	if (suppress_report(&data->location))
+		return;
+
+	ubsan_prologue(&data->location, "alignment-assumption");
+
+	if (offset)
+		pr_err("assumption of %lu byte alignment (with offset of %lu byte) for pointer of type %s failed",
+		       align, offset, data->type->type_name);
+	else
+		pr_err("assumption of %lu byte alignment for pointer of type %s failed",
+		       align, data->type->type_name);
+
+	real_ptr = ptr - offset;
+	pr_err("%saddress is %lu aligned, misalignment offset is %lu bytes",
+	       offset ? "offset " : "", BIT(ffs(real_ptr)),
+	       real_ptr & (align - 1));
+
+	ubsan_epilogue();
+}
+EXPORT_SYMBOL(__ubsan_handle_alignment_assumption);
diff --git a/lib/ubsan.h b/lib/ubsan.h
index 7b56c09473a9..9a0b71c5ff9f 100644
--- a/lib/ubsan.h
+++ b/lib/ubsan.h
@@ -78,6 +78,12 @@ struct invalid_value_data {
 	struct type_descriptor *type;
 };
 
+struct alignment_assumption_data {
+	struct source_location location;
+	struct source_location assumption_location;
+	struct type_descriptor *type;
+};
+
 #if defined(CONFIG_ARCH_SUPPORTS_INT128)
 typedef __int128 s_max;
 typedef unsigned __int128 u_max;

base-commit: 7c53f6b671f4aba70ff15e1b05148b10d58c2837
-- 
2.30.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210112205542.1375847-1-natechancellor%40gmail.com.
