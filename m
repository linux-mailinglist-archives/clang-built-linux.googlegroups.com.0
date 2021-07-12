Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBUPMV6DQMGQEZHZMXHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 52F793C45EC
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Jul 2021 09:59:15 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id z13-20020a170903408db0290129a6155d3csf5754545plc.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Jul 2021 00:59:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626076753; cv=pass;
        d=google.com; s=arc-20160816;
        b=T/fX+Zep/feUzhMkagLHEz7qN+8+1+YgSFywoT+ccrfc0Lh/N3kDG5NvENwKwPbpO/
         Rk00Hy5uQuG4Lt0D9GQFF5pyXPlc6ufCVOra1EnzxmFGX7Ydc4qIqppcNPWqRwKDanYb
         aZkv60pe58rRfTSlCRud21+ZxLbFFU32aTbm8NpIgjDVWPVV27GQaDoRhl8eJVhHSfHa
         BtN5iFSv3aKbo8DwUsOn1B1Yqt0Q1iS2YgijA9mmo+sgo438ACMEdrJVyYIJvmXSXNhA
         9rJcghVJ5G+PGyLBZOBkUl2NFEenU16JHQBCPER4VrK7hqI+YmfWhwiQszNe/3oy/sDh
         UXtw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=RfmwKgOEv43iCZ9a1T5d/0GSIz1c9XR3+owgD2d/Fzs=;
        b=rIRKVpwYGxPBUTzixQu8v1GuU3eT4mqhhThQhWftBQHjGXSSFl7yMbSLR8oxYhPRZe
         twHnjvUzt7IIhAs8VKhW5QVmfQUq9ffMfODodmDG6isOEtqHfAKPCIgs3tfgmISDlswX
         1KtYwpTavLGQi3VKaDgzmJLdN62mQMzS/Es/qRNG54ShNtmsIhSprmlGHZ5HMGSagDSB
         EXZ+8V3C3Lh35/tLJuzfww/jHB75KSCQ6+4MUaj+stwO4VKETqSTpUHkKfamXYU9sWQd
         3j6jaNoeKYg/z3mMLT4wePQo+Sgka50K7xBPmvVEWZI1VvpIlV1Lm7XQfZIN7l7/XF+H
         CJhw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=WpkjFewZ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RfmwKgOEv43iCZ9a1T5d/0GSIz1c9XR3+owgD2d/Fzs=;
        b=FAUEglpYlTHre/cOSkT1Q9/tsmwdoxp7gXKAvwFsaGXBbXYY8WgvJOuojkXTZvl5PL
         TQhFX89XYQZ+GYwJJxCOM+lRIwmcW3ls/DTIytxYxOUnW3hgYTB7jOLB9rLwv/bYikQE
         2YRG1Ek9yK+SCLv3715ReWZjUYmy4SDntmV+S3jVxpD7L05HkbzEWKGqLIyF3N4GE9zl
         oQBKK6LbgHh2j4FI3kVRrP/YqE5rNubrXLjmsmSqIMGVaVTo8thKcvqfGZYXUGcCyInp
         7NsaVCtqnOkzdgnJGPo8xrxBu+DLoDo/WYFyjccxXGoeCEtrMvifsupf3nRq07RtHbOu
         GOkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RfmwKgOEv43iCZ9a1T5d/0GSIz1c9XR3+owgD2d/Fzs=;
        b=QzLHENaAWsmCFILMC6fkH4GS+WqHuM9dtxesaUHpOJ1if+xfGLPMrsjvGFjBmgHRiY
         7D2M3JuzHkegOhWL7PgEORSv/Fk6iew4zPYYEERo2W46EJgczPgZS6Vvt5/nbQwTexkh
         meSawsAx8IJ5yFlecZcRaFKyX2FFM6iILFGuNQ6IF3TyqAWkg4XwPH7lc2MjMAWNQirt
         2kKrtM07n3PORHgi2SXyyc7Lu0gcASRXFjqPXqmmxN2sA5QQkQw1jnLzwqACM/KeFL2l
         KKEhdiFR4el7eotzXHbYKIATbjVJxR2BIFh13ljhZtEzL7Vxy/HHNQfohGuaSvVf+IGa
         c66A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531h5LKRLPKLjOYvqWpY+x87JxO+Vibz76A94MoEvZ92dISYYBWs
	U3IdAWAX2i2a0DiaIT7Z/gQ=
X-Google-Smtp-Source: ABdhPJyFceiqZAlhtoR7OQ1KheD+ryXo7X5xc5oj9Ej+a6pekJ4EjBMmy4weBTI7DySuJYQpHR2R0g==
X-Received: by 2002:a17:90a:3807:: with SMTP id w7mr32213756pjb.115.1626076753415;
        Mon, 12 Jul 2021 00:59:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:6f24:: with SMTP id d33ls2221010pjk.0.gmail; Mon, 12
 Jul 2021 00:59:13 -0700 (PDT)
X-Received: by 2002:a17:90a:c387:: with SMTP id h7mr2106503pjt.131.1626076752887;
        Mon, 12 Jul 2021 00:59:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626076752; cv=none;
        d=google.com; s=arc-20160816;
        b=DUXW61sGdp2byNREcYoam1t7JBH22SSzEiwYLoyQ8mKGDofaM9mZOzsOR8zgdaJWLd
         mWPi3ge9eJiAsCUjYdTkqx6CUqeyVdJKROwO1zgI7qRyRyt5m1WJPMBQYlCyHlPiJ43u
         4fKguRo+YSRxnYczJVkshTu65UQqt67H9ArD5hmNY8r0+1y1Mf4dT3aXR4H3M5PbbZC1
         SrBHuzgEFo3x8K9ck5p+Spx9kPIWLoWsjTxs0BnBPTKNFAsjgDxc/78kJRLIMp5AblXS
         wawGmEnZ5tarlOyMEr0p3opKaJBUGC6m8dnxLFsJbJroQoMj42U1Je9iuuKipkehdSFC
         EppQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=XnDaJGE/S/PfV6XlQaBvkCwP8KtsODYS9UnyiOtcr0s=;
        b=oIkT5D5yYJcI8IcDOjq4jQ3iPgiffJcDKKQ8YoO+RHCNk7JlsCkOveL2DweJ79tjJV
         ibhgDQEY7WRWG9SDvGH/KN18T4UQzKGLVQDd5i7+JQpC5s8xNDo9X6QrnEwmKJmxcTJt
         lWkBiZWJwqmVJ80MaGiN//ATNdGQpK3zsEXCqcZ2SqSaovbm/+Y+lj0XMXdUGaoGjT0l
         39e7Qr7CDhenqMRhY6EyK3VSsBdV6Z7CGNKCGaSOmjFECTTgiUtVRp7Kj6xPgXb8swyp
         Z57/RUqHjiN/V8QPAF+h7+xotL8HYOf2eAzYzQS1NcqK1fkXcn3nX6oSUiOtxP4tIRyL
         4Png==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=WpkjFewZ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g7si2413942pju.0.2021.07.12.00.59.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Jul 2021 00:59:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2A2BF619AB;
	Mon, 12 Jul 2021 07:59:12 +0000 (UTC)
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	stable@vger.kernel.org,
	Hulk Robot <hulkci@huawei.com>,
	Zhihao Cheng <chengzhihao1@huawei.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Andrii Nakryiko <andrii@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Ingo Molnar <mingo@redhat.com>,
	Jiri Olsa <jolsa@redhat.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Yu Kuai <yukuai3@huawei.com>,
	clang-built-linux@googlegroups.com,
	Arnaldo Carvalho de Melo <acme@redhat.com>,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH 5.13 778/800] perf llvm: Return -ENOMEM when asprintf() fails
Date: Mon, 12 Jul 2021 08:13:21 +0200
Message-Id: <20210712061049.620641355@linuxfoundation.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210712060912.995381202@linuxfoundation.org>
References: <20210712060912.995381202@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=WpkjFewZ;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

From: Arnaldo Carvalho de Melo <acme@redhat.com>

[ Upstream commit c435c166dcf526ac827bc964d82cc0d5e7a1fd0b ]

Zhihao sent a patch but it made llvm__compile_bpf() return what
asprintf() returns on error, which is just -1, but since this function
returns -errno, fix it by returning -ENOMEM for this case instead.

Fixes: cb76371441d098 ("perf llvm: Allow passing options to llc ...")
Fixes: 5eab5a7ee032ac ("perf llvm: Display eBPF compiling command ...")
Reported-by: Hulk Robot <hulkci@huawei.com>
Reported-by: Zhihao Cheng <chengzhihao1@huawei.com>
Cc: Alexei Starovoitov <ast@kernel.org>
Cc: Andrii Nakryiko <andrii@kernel.org>
Cc: Daniel Borkmann <daniel@iogearbox.net>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Nathan Chancellor <nathan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Yu Kuai <yukuai3@huawei.com>
Cc: clang-built-linux@googlegroups.com
Link: http://lore.kernel.org/lkml/20210609115945.2193194-1-chengzhihao1@huawei.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 tools/perf/util/llvm-utils.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/tools/perf/util/llvm-utils.c b/tools/perf/util/llvm-utils.c
index 3ceaf7ef3301..cbd9b268f168 100644
--- a/tools/perf/util/llvm-utils.c
+++ b/tools/perf/util/llvm-utils.c
@@ -504,6 +504,7 @@ int llvm__compile_bpf(const char *path, void **p_obj_buf,
 			goto errout;
 		}
 
+		err = -ENOMEM;
 		if (asprintf(&pipe_template, "%s -emit-llvm | %s -march=bpf %s -filetype=obj -o -",
 			      template, llc_path, opts) < 0) {
 			pr_err("ERROR:\tnot enough memory to setup command line\n");
@@ -524,6 +525,7 @@ int llvm__compile_bpf(const char *path, void **p_obj_buf,
 
 	pr_debug("llvm compiling command template: %s\n", template);
 
+	err = -ENOMEM;
 	if (asprintf(&command_echo, "echo -n \"%s\"", template) < 0)
 		goto errout;
 
-- 
2.30.2



-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210712061049.620641355%40linuxfoundation.org.
