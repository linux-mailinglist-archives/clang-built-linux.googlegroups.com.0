Return-Path: <clang-built-linux+bncBCCZHPMXYQEBBEXX2H7QKGQEYQD76NI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id C44FD2EAD8F
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 Jan 2021 15:45:38 +0100 (CET)
Received: by mail-wm1-x337.google.com with SMTP id r1sf1339136wmn.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Jan 2021 06:45:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609857938; cv=pass;
        d=google.com; s=arc-20160816;
        b=OVbP3493lflBob7ShmTQyJVYxClFb0UASUYDfr5EZi4bn+vXdiJzDO+l3tu52xqhk0
         Rv9bi0FIL8IreNTMJgsDEq16JCS+SXgXvWn4xpPGPG6lkycSaYkQbacr2tXY1oSDcuBY
         oNexlfsSV0O0JjI/VCYFKR4weYVP8OnpVyGYpTa5rXbQ3Qn6t3N/pLbMpsR4XJeZTkK5
         cQgsnhmM8ME24A+R4w/LiWgqbPT2wz4DxUK4jUm0GWxyfnFuqGGqq3lcUOzQT3tVOmf4
         uPoL96V1+qq/fgKng1F35hSlraGnpskbhbiRr3ej1Bw/rWVfLxSTgLs+RiPpmfAKcUxA
         qV4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:sender:dkim-signature;
        bh=nBAjqMlfWIoLPvd7AhR3Kaf+vuGQZZMDZt0N9BAY3ZE=;
        b=JsTpGPEibom9BIAMeTFcVBCseFsFOPYBw2zAjSIII8IMXgyqX9wipVziaBw1Shpeaa
         XQwCxzaGetj+wzE+V06jdHXbc11LjQwvNdFwDwI6vcO7CkIRl0duporQ9GwweYENdaW6
         BdQnjstBrLxGvL6jRLDANlwhs9YLc7DxWeW/uS4egM1+sP3j6kQOsdVvNVwyrPW5+MQh
         GOl88TDbIjkKmGsC/JIiithsvCCWeGVkuPHQk5ZHdvMceVhOw6BjKiUbHBcgiNCWFTep
         E0Oj8TXYMFoM+3szipAigrqr3abYS/n3FEnHTAVQqmfvsV3ptuS39zruoxCDKKuIpPoU
         oy8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mess.org header.s=2020 header.b="XHOybA/r";
       spf=pass (google.com: domain of sean@mess.org designates 2a02:8011:d000:212::1 as permitted sender) smtp.mailfrom=sean@mess.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nBAjqMlfWIoLPvd7AhR3Kaf+vuGQZZMDZt0N9BAY3ZE=;
        b=iAbbrNbsVnNBbuc6CiqJWb2/yIaBF1H2Xmi2g0bEaDI2LWe9ksn9dQSGOM/H0/jngo
         S9r1OTQBq/E5sHPCqbBiDdXbIWD52QE6wnGwzQK71QMfYNSvZp8yvVlUYdq9LgddqsKo
         Wugb05r6bwHPKBMr7VSrMrIsgbS1SqsI0DZNEzs9oHVCQnMbX8xwwnUR28GwP2IH83Ff
         mE3qvF8UFQsKGqxa1Ez+Db03/PrbIYsCWMBx+5KQYwZphPIBXNoXphJxFn2d4IJsgXCT
         s3EK16250XuXtB2mlRsS4/UqCCiY2iq0ahCPwy0sMaTnx6wrZrNc1bBlp0Cl5yuDEDv4
         hIrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nBAjqMlfWIoLPvd7AhR3Kaf+vuGQZZMDZt0N9BAY3ZE=;
        b=I7dRW7JvMinL6VJZ+7gPXC/8JzR3u/s06mgD+CHGdH5WPpnV9dgp5breQ9EMHPBed3
         TcvvkUK1ZDVhnxUYCBM4kg495VZcYZXtv033Aam/f2mrwwRPVwjXPQyXyYBm1UoDNlbc
         tuJveqfZIm0hKQnXySAQu5MYcBbVbogTYvoBPV/0OsQaXwY/uEjHpYBrACgLPTQ/IUDX
         nSvcjSwCWj0tc8DHjwb9unLrCYzFp4mBhz6oMXz05zPWPpSFqfM46JKcMSyPCUy8xgwH
         TQ2CcihPam3aLzA+lH39+DhtZ7ndXl+cd8FeZ2/j1hsY6uHykdJFeDdE1broCXUj5fzT
         Up4g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5302J9qBbP0T4k5aVtB0/0OsgzpLsJssc+buCLnOAK6UY2Nu7TfM
	Lr885y/UUPTLpxrUjiOLZsE=
X-Google-Smtp-Source: ABdhPJylGX6hHa1WzdcJKuQl6O9r6BQ0ngGKVPa+t2vTobVuq6aX3MDmDJRXFvwoi4iDmxuwhbdAjA==
X-Received: by 2002:a5d:40ce:: with SMTP id b14mr83578210wrq.350.1609857938594;
        Tue, 05 Jan 2021 06:45:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:1fc7:: with SMTP id f190ls1466394wmf.1.gmail; Tue, 05
 Jan 2021 06:45:37 -0800 (PST)
X-Received: by 2002:a7b:c198:: with SMTP id y24mr3854263wmi.151.1609857937831;
        Tue, 05 Jan 2021 06:45:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609857937; cv=none;
        d=google.com; s=arc-20160816;
        b=SCjrjf82yj6ByD5WxdiBkPypV+bTd7QPTBEozKkr1OtWaXPHPZJ+9u0AnOrXOzbx6H
         PAtXceHXH/bhtFi7LD5+S9GOC0rlzUvBaFGrlm0KdKdr6b/+wAHpbLmmcmmEf1NTNkWL
         r1PaK2/1FCpugzE/2GzGkcmfIzLDUCMNJLrBNjprOmSn0caSFrtt/hSK1p13C2Xx+/P/
         Rc4KqbM1SdGL9c9YdX8T2s/fL8dg6Hrkr+WUHOE0lXxflvn84oeEwtyhXPQ7IBKLloUk
         hQhxagrC6Sy++XxC6T7jyz2ke0IGb0An+y8XNyTTXIoOY/BMZ8stm68jZ9YRLnw05Gyb
         7nKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:dkim-signature;
        bh=2dUP4t+tg+XFgcxHkxTmAAVojig+Tu4Yn/X8zDkmUf0=;
        b=m9f9pJE2qK2JJk1ZY8exegcMUEd830W2dzkBEhPRvqWLs0oQ5illpQlWlN0VHdJ/Nb
         UlQAZyi/8pFrwu29GKpxIxVVt0OyPUetAFAs0ckc1o8y8x1PI+mGzCObWD73eO7bXjKg
         t3NRNQ0MKNjFJFh/ec2yCrtlwqnDhM6wbc+7h525aAA8xkWKVdfKAlPDPSh/fuZ4YtyO
         rPqhNeKCyJLDQWt3njg953V7ItKWoLLUBKs3yka5xMexugNRUZt12xp5FVbq6kwaSPto
         JdonHt4nAjuneLUEg4ogEm8q9mo4oUNI7OH5NO6wLUUHuFUifhZL5YFIKVQhJSbOoy9R
         qmTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mess.org header.s=2020 header.b="XHOybA/r";
       spf=pass (google.com: domain of sean@mess.org designates 2a02:8011:d000:212::1 as permitted sender) smtp.mailfrom=sean@mess.org
Received: from gofer.mess.org (gofer.mess.org. [2a02:8011:d000:212::1])
        by gmr-mx.google.com with ESMTPS id d17si147275wma.4.2021.01.05.06.45.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Jan 2021 06:45:37 -0800 (PST)
Received-SPF: pass (google.com: domain of sean@mess.org designates 2a02:8011:d000:212::1 as permitted sender) client-ip=2a02:8011:d000:212::1;
Received: by gofer.mess.org (Postfix, from userid 1000)
	id 01ED6C63A5; Tue,  5 Jan 2021 14:45:34 +0000 (GMT)
From: Sean Young <sean@mess.org>
To: Yonghong Song <yhs@fb.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Andrii Nakryiko <andrii@kernel.org>,
	Martin KaFai Lau <kafai@fb.com>,
	Song Liu <songliubraving@fb.com>,
	John Fastabend <john.fastabend@gmail.com>,
	KP Singh <kpsingh@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Quentin Monnet <quentin@isovalent.com>,
	=?UTF-8?q?Toke=20H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>,
	linux-doc@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH v3 3/4] bpftool: add support for ints larger than 128 bits
Date: Tue,  5 Jan 2021 14:45:33 +0000
Message-Id: <67ffe6998af5cf88bdda6eaa1e6b085db1e093ed.1609855479.git.sean@mess.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1609855479.git.sean@mess.org>
References: <cover.1609855479.git.sean@mess.org>
MIME-Version: 1.0
X-Original-Sender: sean@mess.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mess.org header.s=2020 header.b="XHOybA/r";       spf=pass
 (google.com: domain of sean@mess.org designates 2a02:8011:d000:212::1 as
 permitted sender) smtp.mailfrom=sean@mess.org
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

clang supports arbitrary length ints using the _ExtInt extension. This
can be useful to hold very large values, e.g. 256 bit or 512 bit types.

This requires the _ExtInt extension enabled in clang, which is under
review.

Link: https://clang.llvm.org/docs/LanguageExtensions.html#extended-integer-types
Link: https://reviews.llvm.org/D93103

Signed-off-by: Sean Young <sean@mess.org>
---
 tools/bpf/bpftool/btf_dumper.c | 40 ++++++++++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/tools/bpf/bpftool/btf_dumper.c b/tools/bpf/bpftool/btf_dumper.c
index 0e9310727281..8b5318ec5c26 100644
--- a/tools/bpf/bpftool/btf_dumper.c
+++ b/tools/bpf/bpftool/btf_dumper.c
@@ -271,6 +271,41 @@ static void btf_int128_print(json_writer_t *jw, const void *data,
 	}
 }
 
+static void btf_bigint_print(json_writer_t *jw, const void *data, int nr_bits,
+			     bool is_plain_text)
+{
+	char buf[nr_bits / 4 + 1];
+	int last_u64 = nr_bits / 64 - 1;
+	bool seen_nonzero = false;
+	int i;
+
+	for (i = 0; i <= last_u64; i++) {
+#ifdef __BIG_ENDIAN_BITFIELD
+		__u64 v = ((__u64 *)data)[i];
+#else
+		__u64 v = ((__u64 *)data)[last_u64 - i];
+#endif
+
+		if (!seen_nonzero) {
+			if (!v && i != last_u64)
+				continue;
+
+			snprintf(buf, sizeof(buf), "%llx", v);
+
+			seen_nonzero = true;
+		} else {
+			size_t off = strlen(buf);
+
+			snprintf(buf + off, sizeof(buf) - off, "%016llx", v);
+		}
+	}
+
+	if (is_plain_text)
+		jsonw_printf(jw, "0x%s", buf);
+	else
+		jsonw_printf(jw, "\"0x%s\"", buf);
+}
+
 static void btf_int128_shift(__u64 *print_num, __u16 left_shift_bits,
 			     __u16 right_shift_bits)
 {
@@ -373,6 +408,11 @@ static int btf_dumper_int(const struct btf_type *t, __u8 bit_offset,
 		return 0;
 	}
 
+	if (nr_bits > 128) {
+		btf_bigint_print(jw, data, nr_bits, is_plain_text);
+		return 0;
+	}
+
 	if (nr_bits == 128) {
 		btf_int128_print(jw, data, is_plain_text);
 		return 0;
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/67ffe6998af5cf88bdda6eaa1e6b085db1e093ed.1609855479.git.sean%40mess.org.
