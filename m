Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBCX7WLZAKGQENKFVF4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id E03C9163C2C
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 05:54:35 +0100 (CET)
Received: by mail-oi1-x23c.google.com with SMTP id r6sf1428990oic.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Feb 2020 20:54:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582088075; cv=pass;
        d=google.com; s=arc-20160816;
        b=fcJ03PxTxhlPZF54yBzMNXzZL+tGqiE1/lqiKmWERKjDWFxREOowwRjii03g7NdNh0
         380sS0dji38zDyE9yWU4WlgX8uUrNfmXF2sBgHTuZ1e6KJR02lTLGRBOTeM880SgDwTi
         wIiGaoZ8N3Kos2S1gBJ3JYSTsv8gsCILR8khDe5nb2EqK/q1n9HAG1MjxqkTm5YYBM0Z
         0uqG4ockXvlgsv/wbSwtg2Oo3QhIDzDlbqCbOznnuNi5ORRGsdppMxnl+TZrDYKqocIh
         Ky+HD7oN1hEz9zUuVw05bRQiW7Mh/mPXWbRMHGWLyi4mplwW/xZq57zCyHJ1EcujfBWd
         w/fw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=PK38YbqlNKTuWXJbfCRZQpMxVbee/9npTDk+ZJqDzcY=;
        b=YD/1X4tH5twKV/xCRoGOAiTwhOErDBjakZg0+Pcu16VUGsJ+ekOVHH777u/OSxZ8pO
         CLVtrMm+jF0osInyLebCIHe45SpDjwAlH+8dAvHen43eVkD3zhRHnuOEYBflsQuA3puy
         CkZ8T5nHGZ74ylzI0dB45RDhTlQUynaGeC6E94ZiwV9T46S4iX2bUD2PoF6ieW7X8g1H
         e9rKLIw838KQGvR+k+a5pvRz9Nnlq9rWmPca7XvM+UiYaQ3RDY/63VUFEnHePQ495JBQ
         Gcps289Jo219HFrtdF0jMgO6fv1cciYDobF4BlOCGb4Ehxfw0XrZRUwIB9yjMmKPZ7y3
         i0Mw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RlTQIa8C;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PK38YbqlNKTuWXJbfCRZQpMxVbee/9npTDk+ZJqDzcY=;
        b=evj/cua0CiSIWOtLPkmP4JdCXEUuJuismQspVidKL/SV9exiGW+6BVt3N8F+55VsaD
         KeD1wKnYlWyab/5njtHBb5utfHBPrK3JaZ3WZ14UIXbdHpWcX3xkO+ITm8ii2vvI82y8
         ycgpq533+7i4ceALJlWl6rlikCWbhaJ8j+VRCwU276LUuhMll07vzKZbNXMEOXfrJ+ps
         S+gJej3AXV5PiluafRbq7Xn3E0xByV82RpY89QxSetlpDgKwPdRsBVvrBzXDNKrF3tkG
         oIHAtca5HBmUDv/wwMeyAxi+7uk7RPnNQcXBPsJS9CtIPsDOMbJ358ipCVEx5yFnuAS3
         McxQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PK38YbqlNKTuWXJbfCRZQpMxVbee/9npTDk+ZJqDzcY=;
        b=ckASoZ/YA5maK/5WiEQ8dLJkENB4py6T6q7FeadH08LqvuMpkL+4x8M0YApnvwLger
         6OQkWcBs9zLyIJqtmiZ4+N1p0B9XQyI4XeCIV5y7y2Anjp7BnRKiTp1nWqz/fc7LTNOu
         fXf5Oysn3qXKOb//C3XN3z+U+GDz3Jv6nz4Anj4xEVgE/+vmwIAsILOun9MPu0JstAwk
         zjq5Cbua1FzjpN5jdjwK7Fw38+7QvDgkLv/Ixs81PE+sjTWXkUFnQ/WEtBUKsfkX8Ycj
         8fKQmFI4Wi+DtclIZpmr2Al+pQyKxtj9QsEjcKqvVXoeskLoIn5tannEpH4li6hmKwSY
         whpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PK38YbqlNKTuWXJbfCRZQpMxVbee/9npTDk+ZJqDzcY=;
        b=nipIiXMTmBj9IUNMNNzRZvHk7ZLGsCspshmEGiTWtVTvyRmUTKRaN4ch5LaEU8DcnZ
         9S0NNC7CZStYsuHxE8H8EbtrX6HlVuGUWRgcv2VMTBpfAMkkOOLAKm+o0aXcrOtkjIwD
         tVixYlxebgeT8qjQJWjioeirDvqF2//kI7T5HMNZdDtkGVQXK4keRCcZhBNcsBA4REFs
         EkNFgRYjQvD3ZefSi0aCANjqokpgz7Qvj3Nm59XVfwxub8Ud3TdcSPoFSZk7cj7cQ0MO
         hD2VUEVj/BTW3dw7sEg0VujxfHCvxAafTs2LPfQfJqa9n/KXIUI/RcPRJYDGX5/ZwxjY
         WzVQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXA5n8Y3WftxAsO5JNRTrhrgLyJu4vjLv9salGLSN2p9jAmSNjN
	l75M48SyRsYeP13i7wjplu4=
X-Google-Smtp-Source: APXvYqy3GUX0rIUOz+By5tQpya9Q3qQrIY7cAMtoUM3f4tCbdPUfywkGxT+WvGCQn75Sv2f4E99cGw==
X-Received: by 2002:a05:6808:191:: with SMTP id w17mr3392504oic.29.1582088074822;
        Tue, 18 Feb 2020 20:54:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:4a4:: with SMTP id l4ls262365otd.11.gmail; Tue, 18
 Feb 2020 20:54:34 -0800 (PST)
X-Received: by 2002:a9d:4c06:: with SMTP id l6mr18864387otf.161.1582088074443;
        Tue, 18 Feb 2020 20:54:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582088074; cv=none;
        d=google.com; s=arc-20160816;
        b=Nv6Cn1LIDmfuFSxowDXjfpIDUABgPAiKNVqJojjgQUA2jbtBQ6vG3K1u0HwnGHvcEY
         eXfdC7xxIbQCn6jMYS/j6mn75Vpm0j9zM1WwhyAg1qRwE8LVRZqyOZ60ZK3f7VirThw4
         ntkxg7FvpkIftllInQlbZgkTHTYuGVBOBxEm0ZBxGWHC1T4lfgASqr9G78BQOiNm+0rA
         ytYLJIwc+hyQkdKEvnOJzDJ9TivY6mfUZBqYRuyKQ03PH/EhszkLBknMjJVdv4qdKEzj
         dbXoRzIvisZLxEKEtwTCaf5/endYuWTN+rZqlqgz3NzeJ6pRUzBWv7eY5qOhBA4VEoFQ
         V17Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Dr2Q+aHg/1SGjzpWBsBNv11ATwozDGCBBkaKKg29VLU=;
        b=WGfQfScyCSdYjAYR66Sm7+Ubm6tAxsvSNJJDPgJ1w6p7W7QJLkZGnBNNwnaWUmgRid
         HOpy1QN4lH4btQDsWB9lPynUr2JYJRSrx+zsEfxAeoCZldVBnH++V2DwWxIhJ1Ke/wju
         QOwd0TT5YmhDj051fhcH1VDFF8VlhLBg4HDlkQr0KN/uuTF0G5mF0WzLa2H6JhfU193F
         h1Y2FHPtfomcDC33VpXMUY33BiTv4LZjNwPUv5syHHxEwLUOGJa2DOD4dIeq0GXZAf5u
         T3jWXMO1X9kj4QrRT2wIXFagORmsjHf/VR4uJgj1dicBXrmw4MwIHW6k8doSWeJ+Jy2c
         eeKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RlTQIa8C;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id j15si1198651oii.3.2020.02.18.20.54.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Feb 2020 20:54:34 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Received: by mail-oi1-x243.google.com with SMTP id b18so22608408oie.2
        for <clang-built-linux@googlegroups.com>; Tue, 18 Feb 2020 20:54:34 -0800 (PST)
X-Received: by 2002:aca:5dc3:: with SMTP id r186mr3577268oib.137.1582088074161;
        Tue, 18 Feb 2020 20:54:34 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id c7sm288894otn.81.2020.02.18.20.54.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Feb 2020 20:54:33 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Arnd Bergmann <arnd@arndb.de>,
	Steven Rostedt <rostedt@goodmis.org>,
	Ingo Molnar <mingo@redhat.com>,
	Jason Baron <jbaron@akamai.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Andrew Morton <akpm@linux-foundation.org>
Cc: linux-kernel@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	linux-arch@vger.kernel.org,
	linux-mm@kvack.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH 3/6] tracing: Wrap section comparison in tracer_alloc_buffers with COMPARE_SECTIONS
Date: Tue, 18 Feb 2020 21:54:20 -0700
Message-Id: <20200219045423.54190-4-natechancellor@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200219045423.54190-1-natechancellor@gmail.com>
References: <20200219045423.54190-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=RlTQIa8C;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Clang warns:

../kernel/trace/trace.c:9335:33: warning: array comparison always
evaluates to true [-Wtautological-compare]
        if (__stop___trace_bprintk_fmt != __start___trace_bprintk_fmt)
                                       ^
1 warning generated.

These are not true arrays, they are linker defined symbols, which are
just addresses so there is not a real issue here. Use the
COMPARE_SECTIONS macro to silence this warning by casting the linker
defined symbols to unsigned long, which keeps the logic the same.

Link: https://github.com/ClangBuiltLinux/linux/issues/765
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 kernel/trace/trace.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/trace/trace.c b/kernel/trace/trace.c
index c797a15a1fc7..e1f3b16e457b 100644
--- a/kernel/trace/trace.c
+++ b/kernel/trace/trace.c
@@ -9332,7 +9332,7 @@ __init static int tracer_alloc_buffers(void)
 		goto out_free_buffer_mask;
 
 	/* Only allocate trace_printk buffers if a trace_printk exists */
-	if (__stop___trace_bprintk_fmt != __start___trace_bprintk_fmt)
+	if (COMPARE_SECTIONS(__stop___trace_bprintk_fmt, !=, __start___trace_bprintk_fmt))
 		/* Must be called before global_trace.buffer is allocated */
 		trace_printk_init_buffers();
 
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200219045423.54190-4-natechancellor%40gmail.com.
