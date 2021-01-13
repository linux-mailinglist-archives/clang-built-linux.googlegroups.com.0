Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBR7W7D7QKGQEGHDIXVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 161742F3CB5
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 01:14:01 +0100 (CET)
Received: by mail-pg1-x537.google.com with SMTP id 24sf325364pgt.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 16:14:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610496839; cv=pass;
        d=google.com; s=arc-20160816;
        b=PlDHIO5entLHtAt3yt5Zf3dt8PuQ8TAtSxDX7R6/Loo18vZV07JiziOVeaN8/Js/WF
         jusADYmQ8c+h9fLRJ5IZD5vreuLxJKPA9EAVht9wpJYJE0WDNuLm+5643ZCp5etvudWR
         9+whQEXsf9GZImaLTKGAZAkJZjZQZkSvUorFH7dM6hl4sO3SII9N7KfUFzwWh5JbspBX
         GG9qigAGsIc2uZPYmzSEuCesd4jtwamv01/KqtN5oR0c5qfdzkL71f9PdrFcF7Wiz8RX
         t30BAk94iaCG7Fu6nb1sJ9x0ePxji/ysuYIwo2l65hNGLFq3IlKXwGtWJw4Fnfs4OPO+
         K+Uw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=RDshR6iqsXdxbj3nDrdk5g5T6x7KWl4CNVMCevhr/Co=;
        b=x/bDKkdJDxgV3Ss9JHPzPALZu7KojfKqkT5z+vtF4U9ga8XaRD95VwsBVTdAWT9JAe
         YwzD9ZdKvUBZe9GEyydjXXJY+PhE+5RJA8Zw+IvA6izymVhvHoBZKgwgmXKk7VvnAoRI
         jv1A1FToe5WN5AD7Gov1vdh/qbxUIieXdpEnbUtAEWL1suBke8NGU2UvRgC+uWah9Piz
         F+xPuaOYvPmHLIh6bq+Y53+wpR7cMKdPh6e9WJbivhuIvZBsgdnnpPKWOdstUkVSRWY4
         1tex7JGiBZgjCInREkNxwMtXkMqHHN7xB8yDs7MWUO1hW6r+1TKxvKKj0HycAXJRlDng
         frNg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FyywR9Im;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d2f as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RDshR6iqsXdxbj3nDrdk5g5T6x7KWl4CNVMCevhr/Co=;
        b=jjSBAlAzXCGj29vhGnu9wW2bwIN4CCik8FK0or0fta2IcDP04be3YLyN0RBTbTgJ78
         2TajpWEdzff4wbt91Li2uJuEsGYIrmcdxx9UHQVGrP2HMiVwmEq+fSNyHQWG9OoFEPQ5
         vLAfSr0Hc9J01kTgIR3CI2hdUmW07VH4APNOuv7YEiOG8J3E8W6ZbCLBu1hTfLkg8FPN
         f6/acnEiArnIUrJBm0qbMUe+BELqN3VJ6IQi2naRS9Fg3RpzLQTvXh+uehr/RMw2p8hG
         U6kq8QK6zZOtyBByFtKJXDmZ32YIPI1pr4r34nc4B3pW9vL81itGS7YyPYtP3aUjiqWV
         zNWQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RDshR6iqsXdxbj3nDrdk5g5T6x7KWl4CNVMCevhr/Co=;
        b=bChd1gmDqhwJ7V7zJ+XccpIAlW+1bNp1+mBa8z7bwyUJjby3gvdIMJb1up4zP7hSNa
         aNVhro2WspmmoDKCyhwKIb9iHsgAa+vtp5uZNTTCyfhZwm3Ho0QuT9YjjJoE8fDn0LVi
         VNAK37hJjMgxB7NRsXPyhPhHwcFkoT1TUBf/jowiSWCqSGlfp2vLN0HA5npHmcvaoG/v
         LXVCKp4hTe6uyMiCWxn3TOUovDZCoPN/WgLnCs+LOHw/qyC3KkFHZF6Nb7IWOwuz0+Un
         cm4XERi3ZszYi9++E43NRBgWARzFnuUkrQwGHAnTKUY9D5rMxDOs4eTL9bb30tmPhXd9
         ElmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RDshR6iqsXdxbj3nDrdk5g5T6x7KWl4CNVMCevhr/Co=;
        b=V42D93Fqb+VuohbCCEMZvGXAFtazIZWCA6Lq11rBu/1ZU4lNmyK2+MpagPzQJ+I3x9
         Ph9CRh7farDqyn6slB4nCuH7UGf60xjWSAD08vrsFgrj6QKbpRItzfTNKHpEljNWsLLk
         s9U5zLcxRFBiO2kGRwhxrFhNw/wqp7iTK2WlJw2N7YC4WRYecSnKWYyxlGfBMTxv65hL
         g8MCvSge00YMJF4z7YBHpVF27FEvFqbl6v5ovLwAGdoq5zsSPygadPW8XH9vvV8Leme7
         C7b0Nlo7UR1+Ny6GKwzHRd8GqKhaByOZkXXsIRTSVbZpvg8xQUlzLRBOv558sroWNFZG
         8jfQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533L8bVqEQtVOntvHlb8qz6Bug6UaL83o+grhebW+SSMpC6hrLNw
	uRKC2iC1U+tXwDsZ/GeBlGk=
X-Google-Smtp-Source: ABdhPJwmfqTy3Pzz4MhwFM60MMtXiP3ZI/gd1jg0pJOFWdJ0BN+ILMyCweuXt5BeIIqnCKChGcslsA==
X-Received: by 2002:a63:cf43:: with SMTP id b3mr1522948pgj.387.1610496839789;
        Tue, 12 Jan 2021 16:13:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ac0b:: with SMTP id o11ls97270pjq.3.gmail; Tue, 12
 Jan 2021 16:13:59 -0800 (PST)
X-Received: by 2002:a17:902:f54e:b029:de:19f9:c45f with SMTP id h14-20020a170902f54eb02900de19f9c45fmr1914390plf.48.1610496839153;
        Tue, 12 Jan 2021 16:13:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610496839; cv=none;
        d=google.com; s=arc-20160816;
        b=cdnQEv0eYg/Sf/lNXwvGWp0vZWIwCvUJ9iObTM2Qhg3aN7sauZaLLjrGk38x4kACWK
         d1zr+G9b4gbd5WS7kRb+aqWDec5GSJR8brispA9raGRq0kLIo2fBLrn0WaHD3Zad4Fc+
         WIv9gGXrp6LALPTg0AYMFkq65JYBXnN7i61T6pNxVzQiuLbA6mgl8wX3VOa1ODCqshr9
         TcaWpeA1hSLwZRZT7D+Gssp85bwkfrdJfzhOyzAKEIZ+ZrAUyQimW4HJosX+9zfPW3q6
         NJKVxqOSeBgExSsYcbn12dJnmoDcfue2bqn2cEqBO4W/zsuIOwuV+xKb62GxrM6zQ+S3
         uPuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=JtzmkKAKIsKUQbcgnYgSWKmk6z6gl62X3y6GDOrXpNk=;
        b=KnqIf0aj5+zF8w4e5zXU2dPPxO9vlQdYelpRbwZa86F3U4T7OFnQVQroH4vDFiQfgT
         qVshUYOVq7wIgQSA5EmEpOgOnJHBqw44U4uIHnZR4gwjbsS7+Y913Xt5hrgOe8zaxL0P
         gXIo91obLHzVVYiPhe44ApcdCH3ZYfsvnd9VQ2bfH1Q0EkOEvjZZDukwU3EAIYqe4ZpG
         i1LYtYzUYCZ/eoyxx83fNHFJv/SueXswB65KvuoAZ8VXOHt4ThDHZ+hMvoAdm6QLNmv4
         U3i/Ds0eyJPAWGvTgVZaigYKd8Sv89mMRluD89BwIC8bjHwgUHZ6CY6ringb6lsVI4VN
         AWQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FyywR9Im;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d2f as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2f.google.com (mail-io1-xd2f.google.com. [2607:f8b0:4864:20::d2f])
        by gmr-mx.google.com with ESMTPS id o14si18078pjt.0.2021.01.12.16.13.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jan 2021 16:13:59 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d2f as permitted sender) client-ip=2607:f8b0:4864:20::d2f;
Received: by mail-io1-xd2f.google.com with SMTP id u17so629130iow.1
        for <clang-built-linux@googlegroups.com>; Tue, 12 Jan 2021 16:13:59 -0800 (PST)
X-Received: by 2002:a02:1007:: with SMTP id 7mr1929669jay.73.1610496838645;
        Tue, 12 Jan 2021 16:13:58 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id 8sm280985ill.13.2021.01.12.16.13.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Jan 2021 16:13:57 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH v2] ubsan: Implement __ubsan_handle_alignment_assumption
Date: Tue, 12 Jan 2021 17:12:43 -0700
Message-Id: <20210113001242.1662786-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210112205542.1375847-1-natechancellor@gmail.com>
References: <20210112205542.1375847-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=FyywR9Im;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::d2f as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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
Acked-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

v1 -> v2:

* Use __ffs instead of ffs because due to size of input (unsigned long
  vs int) and we want a zero based index (Nick Desaulniers).

* Pick up Kees's ack.

 lib/ubsan.c | 28 ++++++++++++++++++++++++++++
 lib/ubsan.h |  6 ++++++
 2 files changed, 34 insertions(+)

diff --git a/lib/ubsan.c b/lib/ubsan.c
index 3e3352f3d0da..1432a8645224 100644
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

base-commit: 7c53f6b671f4aba70ff15e1b05148b10d58c2837
-- 
2.30.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210113001242.1662786-1-natechancellor%40gmail.com.
