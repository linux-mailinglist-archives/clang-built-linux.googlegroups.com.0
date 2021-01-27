Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBLO2Y6AAMGQE2WLNW3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 937EA306737
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 Jan 2021 23:46:06 +0100 (CET)
Received: by mail-pl1-x63d.google.com with SMTP id y10sf1949031pll.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 Jan 2021 14:46:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611787565; cv=pass;
        d=google.com; s=arc-20160816;
        b=gDnMEaVnT4QHwlIvFgIEFu2SiIG36uv3ZNr1XPZE328wR6X0kE2NZktQvAcZd4MRqO
         Nup+qWmafZYR2x86fYE3vjFtNB8MAIJwh7JJ/fvnHTBkX02FPD02suHDyg6DE6ePG8Qd
         VAW/UDThfjB9TGaKKpQqRVEybMpEpRCV1qfOl+hHe6PGRiJiTLLPjvTbAHiNbSElf0vw
         SE7Xunvb1uV60MwuxCejotOJkmE1xlU609sGvGSe0AuxcxnOYUuHFaYT0YFGIk8Tx8/P
         BmyncfcvZcRqWEoottFvFRp52xZ1Mj7qXhsnuZAPWRKBmeu5ZMgYPdAbntfkN9PVimrc
         XU/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=uXiIrTgk9yCxua3qgsQl2fLc3H54Ae2Ue+Wy1KKOP4w=;
        b=eg/sX2KiGyhvkwYTc6LGEa/n7F/7/GsXRct7nPR4rw/vSdA3p5+LuDW11MebmjxCK2
         OHqVBWuFeSPg0G9bAsy3mPr9C91Sgxzbe+0ICyyAO+2MUwvuNOGkYy7EYHY+kbi0lxb8
         tHtr7HdCL2JEYf2vCWL9bpxsc1N/eqWW8IX2x2OoEDpwxnSJzJYNx7PGJKqxn6wBw43y
         TKIOru2RahYPFbf1h8zOWlTiyjE63U4uO6MjGZuhZUomlSeOsS/zq9e5kbGC9iUkol/6
         2gO9C1tZIlke9bT+6R+T8NmKItEqlM2ReoRfs7URZD8mYBmBM58oREaqkwrAvZTk3rGo
         rSmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=JOQIW5BS;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uXiIrTgk9yCxua3qgsQl2fLc3H54Ae2Ue+Wy1KKOP4w=;
        b=MEikwWLvJvaPjpOBw0GGdFvXBicnQlhuDTj02vQRNrPcQDdK1OiwpUGzEQDZh5jApk
         TVGkOi3HVjiJlCausgXQkTQQPy5ZC9Zc5H8Flx66f/Sx2LxLmC6DZD19edLGQ8hrqxVF
         2JXVIIfxjgvmrlmU+1W/ohBwqjxOIlkvmq+y2QC7VXx6PDW2yv7gaxBf2EgYqpZVcwZZ
         B42cjUpAEkrmz6ljyZkNMexbYj14MPGsSLxFMs3DbnpQnXfZSChklUSJYSwXtcU+g3dc
         CnHtvyQDckeDsrU2Xg26wkY4t4skB/CuY++20/XT6rR/PUp97gF+T9EqbOPNmmSyeWym
         rDsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uXiIrTgk9yCxua3qgsQl2fLc3H54Ae2Ue+Wy1KKOP4w=;
        b=pgD9oKbPqttMWEoKBPErklQSNxlrh9BC6vqWE/T/kAVL0bW1MNu5pEpiY1wjr200xi
         dRPK7PfNkZNtlVNI1vWsruAjNMe4TkN1siv0bEZNCMsTFuQf4Y55h/Fsy2c/7ZC8nN5b
         khh4696L2dhynf4Da5U3CV8/tcBcjllIjnwGVsAZ6aNK0EfbXKdoKl24NVDwKbc8ELJ9
         g99JKzxYmTlS4JblYt64+uLZ5YUse4gnbE86H+LzIZPqlIIDiDf2mL2muGC3iOlQEm2h
         ty5X9HF+PWYmOs8//MhcsabU70yWsGWOPReGdcCPAupLqpZDdZjYtJ3IeTUoXOX0Qau0
         kKkw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530JkupgDSVNFzrmLXRv7Y3bA5A9Fr/D22YGwieKZU4aTmX9Kdk0
	z42DhosxT+EjtwSS6bXvu+I=
X-Google-Smtp-Source: ABdhPJz/wh87TuwNG+XotQPrj7mJPEskVEyKAqZgmY80/tHotCmycikuIvOFI9kLgGpBoBqQLn7epA==
X-Received: by 2002:a63:4b0f:: with SMTP id y15mr13749403pga.398.1611787565279;
        Wed, 27 Jan 2021 14:46:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:4b8f:: with SMTP id lr15ls1778558pjb.3.gmail; Wed,
 27 Jan 2021 14:46:04 -0800 (PST)
X-Received: by 2002:a17:90a:4494:: with SMTP id t20mr8104467pjg.155.1611787564577;
        Wed, 27 Jan 2021 14:46:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611787564; cv=none;
        d=google.com; s=arc-20160816;
        b=ANAkEfN2kqYS7mBY2CJ9VUT696YBWqtrJCIVSIA4bdWVh95oDUByfEkaZ/0Y1fLaDX
         Gx7jyhrPeR5YmY6zkJ7tn7vhOtDJjCDpGuKxCCyRSO/evCAjgN0QV0ZkKuVpbbTplIhx
         YTgO/fnZfqc3oRZrvEcSYNWCbfTOPa14rLV4SVnCi/8+k5/UioiqkhXR66R2OAvlHkWc
         1w/7FBImFPDDyuachfqOg1tpIgp+4QGouuPOR+T5TZTdwf0AOrKqv5JwkvFtpKlLO3Tg
         FiR80ocKIAvnDm0/awSUCmdS2ALruwDfIu9ugksZePwRk9WHLwSlDq1JPOWZSTz52Rvl
         6tkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=7RK0lQHQj2t22IR+D7n4rVWmuLDotTEHFOG6E1KdJ9M=;
        b=aZmlsQQSUIJoQ36SlOJl27YIeYSSC3ROXLYQbV7cr3g8uKF1gLfiYoUyqRxUc7zGOD
         1EJvVqrSbGUb7xRh+eq/iKMQ33tbDqf6TFEnjHgOU713x2v91kM1ks5dbt2cWw0cTYs1
         ZHHtz9rhfnoMsIX8nGGgWtKylW4eKa6mcMnMAoskQ+s5sdAvZ49G+h9EjCx58GKjny8D
         NpBWHagAvLHVcH3dORq4z6JleeFZcL4X4zjA8Q/5BhqJ+EEQJ0JE3/g8W/jmZ/csqo1s
         mTJt7isnwtZrn/tV40Iw2K7C5pp1CR39briJNzswto4Fr4xAlkrE1+lREQu4bd/fKh4I
         3AUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=JOQIW5BS;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j11si235251pgm.4.2021.01.27.14.46.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Jan 2021 14:46:04 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id CE60B64DD7;
	Wed, 27 Jan 2021 22:46:03 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH v3] ubsan: Implement __ubsan_handle_alignment_assumption
Date: Wed, 27 Jan 2021 15:44:52 -0700
Message-Id: <20210127224451.2587372-1-nathan@kernel.org>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210113001242.1662786-1-natechancellor@gmail.com>
References: <20210113001242.1662786-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=JOQIW5BS;       spf=pass
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
Acked-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---

v2 -> v3:

* Add prototype right above definition to avoid introducing a warning
  with W=1.

v1 -> v2:

* Use __ffs instead of ffs because due to size of input (unsigned long
  vs int) and we want a zero based index (Nick Desaulniers).

* Pick up Kees's ack.

 lib/ubsan.c | 31 +++++++++++++++++++++++++++++++
 lib/ubsan.h |  6 ++++++
 2 files changed, 37 insertions(+)

diff --git a/lib/ubsan.c b/lib/ubsan.c
index 3e3352f3d0da..bec38c64d6a6 100644
--- a/lib/ubsan.c
+++ b/lib/ubsan.c
@@ -427,3 +427,34 @@ void __ubsan_handle_load_invalid_value(void *_data, void *val)
 	ubsan_epilogue();
 }
 EXPORT_SYMBOL(__ubsan_handle_load_invalid_value);
+
+void __ubsan_handle_alignment_assumption(void *_data, unsigned long ptr,
+					 unsigned long align,
+					 unsigned long offset);
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
+	       offset ? "offset " : "", BIT(real_ptr ? __ffs(real_ptr) : 0),
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

base-commit: 6ee1d745b7c9fd573fba142a2efdad76a9f1cb04
-- 
2.30.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210127224451.2587372-1-nathan%40kernel.org.
