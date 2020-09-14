Return-Path: <clang-built-linux+bncBD6K324WS4FBBKWQ735AKGQEKIEXGVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x640.google.com (mail-ej1-x640.google.com [IPv6:2a00:1450:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 40887269328
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 19:28:11 +0200 (CEST)
Received: by mail-ej1-x640.google.com with SMTP id m24sf105260ejx.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 10:28:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600104491; cv=pass;
        d=google.com; s=arc-20160816;
        b=m7FEUcexpZm0RnpyBnSiANuO+zEVT/AoDovhlJLoWMISHOU3XR82ieT+If4KtYrUaf
         /qOu1q5qdtvaZAGrXjt822jmHXgOD5ghDUrCjXUcSRq1ZKKt/e9S9CxfV7WOCQNZuC/Q
         wLEGPLysJBEpaCNCstkLt77XC6aDsC7N49Esk9jo6/W9qbbO0EEqPJ5VZZjcHcifxlZO
         852oJyTZKfuw1DsJE01+ROdOW873QrmInKCeBRJXCXZvsF4jWpRO5YU0Ap4kqIpiJdcb
         5zqEHupTdfIjaCheZsvxMtB/TROj2YWAz/km/klT+YJwRHCTdLzAbxmCNv8EPAlBeLrX
         sPFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=9ojAUZjsAWA7/mh4jim+qVRm7gapOaiFGztr4tgFPV4=;
        b=XdQlQLXRYWvR5J7J/zWDkjV7yhrkeDj9uNS1jvWmJ0A4JGR5tUa2GH6EudaVhbGrvn
         oImvC7CcV2M4uApwB6w1FFLWTBx8qhllqhiBUnz8mrz2Dw4iqf1pmwY6xgnrhEuif1Vj
         dZ9dY9F/GPPruh5aojfKzMZZp+T73ksRAvp3vO/6nzzgdloJ3GxXGz+q4SGsoNb/ttxL
         8K+J3DK5howb3SVS8FdcADxthQn/+0S7M1Y9Bquw5J6MVppZTsRhS+RlN8XdKLYcpzv2
         Cll6j+r6uGZwBUSAHNIw49CCmIvxTw/8A3rlKLgH/3qJ7S/+KOZmobs23LvoSct3dSsB
         xTTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QYAJeh3Q;
       spf=pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=georgepope@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9ojAUZjsAWA7/mh4jim+qVRm7gapOaiFGztr4tgFPV4=;
        b=Ms+nGVdCDtORNYepHGo1+2+IjB7vqLtYCuYdSFi6rnQJfenUoO9z2tzYXSAazu0eO3
         4Sw/9viOHTvLiLDlKgegAyAcjrzIa/+w6zGQAF1ZTCtoW3L11dFqr/OAXOsQpPdKxTCl
         Pzjc+KL8jnh0hNrO6lXa81RpaCuShHhTsDANwT7kvyJISaRCP117E9tQGGrRPK/5S5Y4
         el3M5elSebQwOF1NVGvaCegpFbehkaxvMYDNU4YAUb7xs512YZZMPSkNCkhjyha+ikwU
         UErb+TdEiY2b2HfJ61SSEchNfyeHOFvMOPHzhGY9K32sdV0FaLD/OqPW91bWP5rWiJhz
         Rhkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9ojAUZjsAWA7/mh4jim+qVRm7gapOaiFGztr4tgFPV4=;
        b=lvF3jlWh3Ja4qiFNaVvE73aKhm2rc7An/6rgZGVBBJABwUUpuM62/aEmyqRbnHQ8QK
         WBti7Q3MiymF8/f7bDLcolNB9Vw45y/eIeL2cw+pdwG8BDJEk90xIrvbiOs9AqKyWV54
         5+cjZI1Or1SMv1WFjUyPr20MOi0ZzzN/lSZWpgvuCwlwLN8yog5zZTzAG0zYk7/zDfux
         KEGMOGTSCLHixAbcMkhxNPuhYvmNw7eRlmJLmsJDYjMW6X7w8ze16+1coersUWPDKSxj
         o/Gdi8W8ToPiuZnMUvChbQWTqcwZvqfYprHmO2ZC+B2kV0CjcJynaqZA7RmD6OToNqaK
         sEFA==
X-Gm-Message-State: AOAM530e++Ke2+KLW9gJpBqmXcGqtru1SI+qvaMDF9SxkJghqxQK8C0P
	8ANSbe5TmxDHgZ28m6GtYsw=
X-Google-Smtp-Source: ABdhPJyGpH2iV22RSe3/XYKV00sh+RW91b7NFuvohMiKB2q0vM5d8v5eC2lgpJokR9/GbzdlL6FeUg==
X-Received: by 2002:a17:906:bc98:: with SMTP id lv24mr16379455ejb.411.1600104490984;
        Mon, 14 Sep 2020 10:28:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:71da:: with SMTP id i26ls4951356ejk.6.gmail; Mon, 14
 Sep 2020 10:28:10 -0700 (PDT)
X-Received: by 2002:a17:906:6007:: with SMTP id o7mr16601429ejj.550.1600104490040;
        Mon, 14 Sep 2020 10:28:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600104490; cv=none;
        d=google.com; s=arc-20160816;
        b=yIl2TPxGfbiPxII6lJHrC7yS/y/NStTfiOpaMZBudzN1eF11RZfxh+Q7fiv8Yfh3Dr
         ec6hrji+3N5EqwafMb4wbus/n8nk3rprQzeCsfo6OR/pJjssdJDAzGRCfKE4rsdunaPN
         tbX4hk8Taed29Wj2imStmLyhijLufMrdJBigAd4feVLwWNxAc0E8/15IRXemu97j5l8l
         OFoEijJ2LGiiBedls/ekwLyWDP5XT5Jgwq281cVDVr0Iq+21h7a0KkAiBWqPdaCPbjAE
         GaOZFa+bOosdORLSHm+jE4q2tayt7qoKq20KKHZiIPG1E2yqwauVziCOqmYgsepJ7cqm
         vhEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=f1Yic7ZFZnWbBrZg7HASMUx7n5dssR2OZo/o20looTY=;
        b=07rYvOKwWkIedCCcvrWKnvWaeSuS7jntGDjAfxwxfXhy6H7lmoef1B3Zw1qzsykuOU
         1SLG0DVnrts+jywdw90CQAcb82d+5Pv0YZ6fSCfy+2/ubXksTd5finL4yXXW284BuOdk
         7OHXpaLMe5ria3t4jwPsvp1fK9uea7bpVM7NW+WNLEE4OxiXTV4IwQbnPOPBD9KSs+Mn
         dce7XFXJHgnQVdHpxykTJUhCSmFTu7gy5qxI3g9N+p5qpui5NYS+sggKm5QhYIu1TwOR
         hJhCSIxoZZaQMgvmN5OYB2AiOJrtaXbYUFbFmNeDTq6QFG3FugkXA672KPg5g/xZM9OB
         Oo4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QYAJeh3Q;
       spf=pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=georgepope@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id dk15si320474edb.2.2020.09.14.10.28.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2020 10:28:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id z9so866849wmk.1
        for <clang-built-linux@googlegroups.com>; Mon, 14 Sep 2020 10:28:10 -0700 (PDT)
X-Received: by 2002:a7b:c3da:: with SMTP id t26mr422196wmj.23.1600104489670;
        Mon, 14 Sep 2020 10:28:09 -0700 (PDT)
Received: from localhost (49.222.77.34.bc.googleusercontent.com. [34.77.222.49])
        by smtp.gmail.com with ESMTPSA id u126sm23949690wmu.9.2020.09.14.10.28.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2020 10:28:08 -0700 (PDT)
From: "'George-Aurelian Popescu' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: maz@kernel.org,
	catalin.marinas@arm.com,
	will@kernel.org,
	masahiroy@kernel.org,
	michal.lkml@markovi.net
Cc: linux-arm-kernel@lists.infradead.org,
	kvmarm@lists.cs.columbia.edu,
	linux-kernel@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	james.morse@arm.com,
	julien.thierry.kdev@gmail.com,
	suzuki.poulose@arm.com,
	natechancellor@gmail.com,
	ndesaulniers@google.com,
	dbrazdil@google.com,
	broonie@kernel.org,
	maskray@google.com,
	ascull@google.com,
	keescook@chromium.org,
	akpm@linux-foundation.org,
	dvyukov@google.com,
	elver@google.com,
	tglx@linutronix.de,
	arnd@arndb.de,
	George Popescu <georgepope@google.com>
Subject: [PATCH 04/14] KVM: arm64: Add support for buffer usage
Date: Mon, 14 Sep 2020 17:27:40 +0000
Message-Id: <20200914172750.852684-5-georgepope@google.com>
X-Mailer: git-send-email 2.28.0.618.gf4bc123cb7-goog
In-Reply-To: <20200914172750.852684-1-georgepope@google.com>
References: <20200914172750.852684-1-georgepope@google.com>
MIME-Version: 1.0
X-Original-Sender: georgepope@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=QYAJeh3Q;       spf=pass
 (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::342
 as permitted sender) smtp.mailfrom=georgepope@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: George-Aurelian Popescu <georgepope@google.com>
Reply-To: George-Aurelian Popescu <georgepope@google.com>
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

From: George Popescu <georgepope@google.com>

Use init_kvm_debug_buffer macro to init a pointer to the kvm_debug_buffer
and a pointer to the write_index. It is needed a hyp/nVHE version and a
kernel version because there are required different functions to extract
the per_cpu data.

Iterate through the buffer using the for_each_kvm_debug_buffer_slot. The
parameters are the buffer's name, the buffer's type, a pointer of
the type of the buffer, which is used to iterate through it,
an (unsigned long *) to compute the write index and an
unsigned long iterator.

Get the buffer's next empty slot using the kvm_debug_buffer_next_slot function,
the required parameters are a pointer to the buffer start, a pointer to
the writing index, the stored type size and the allocated size of the
buffer. This function has a meaning only inside hyp/nVHE, because it
shouldn't be possible to write inside the buffer from the kernel.

Signed-off-by: George Popescu <georgepope@google.com>
---
 arch/arm64/include/asm/kvm_debug_buffer.h | 31 +++++++++++++++++++++--
 1 file changed, 29 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_debug_buffer.h b/arch/arm64/include/asm/kvm_debug_buffer.h
index 30c9b0b1a7bf..e451c11a77a7 100644
--- a/arch/arm64/include/asm/kvm_debug_buffer.h
+++ b/arch/arm64/include/asm/kvm_debug_buffer.h
@@ -17,10 +17,37 @@
 	DECLARE_PER_CPU(type_name, buff_name)[(size)];                  \
 	DECLARE_PER_CPU(unsigned long, buff_name##_wr_ind)
 
+static inline void *kvm_debug_buffer_next_slot(void *buff, unsigned long *buff_ind,
+			unsigned int struct_size, unsigned long buff_size)
+{
+	void *res = NULL;
+
+	if (*buff_ind < buff_size) {
+		res = buff + (*buff_ind * struct_size);
+		*buff_ind = *buff_ind + 1;
+	}
+	return res;
+}
+
+#define init_kvm_debug_buffer(buff_name, buff_type, buff_pointer, write_ind)		\
+	do {										\
+		buff = (buff_type *) __hyp_this_cpu_ptr(buff_name);			\
+		buff_ind = (unsigned long *) __hyp_this_cpu_ptr(buff_name##_wr_ind);	\
+	} while (0)
+
 #else
 
-#define DECLARE_KVM_DEBUG_BUFFER(type_name, buff_name, size)            \
-	DECLARE_PER_CPU(type_name, kvm_nvhe_sym(buff_name))[(size)];    \
+#define init_kvm_debug_buffer(buff_name, buff_type, buff_pointer, write_ind)		\
+	do {										\
+		buff_pointer = (buff_type *) this_cpu_ptr_nvhe(buff_name);		\
+		write_ind = (unsigned long *) this_cpu_ptr_nvhe(buff_name##_wr_ind);	\
+	} while (0)
+
+#define for_each_kvm_debug_buffer_slot(slot, write_ind, it)				\
+	for ((it) = 0; (it) < *(write_ind); ++(it), ++(slot))
+
+#define DECLARE_KVM_DEBUG_BUFFER(type_name, buff_name, size)				\
+	DECLARE_PER_CPU(type_name, kvm_nvhe_sym(buff_name))[(size)];			\
 	DECLARE_PER_CPU(unsigned long, kvm_nvhe_sym(buff_name##_wr_ind))
 #endif //__KVM_NVHE_HYPERVISOR__
 
-- 
2.28.0.618.gf4bc123cb7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200914172750.852684-5-georgepope%40google.com.
