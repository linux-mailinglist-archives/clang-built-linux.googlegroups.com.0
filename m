Return-Path: <clang-built-linux+bncBCH4JVXIWANRBEOWQKDAMGQEEAJQGTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C6F03A1374
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Jun 2021 13:50:43 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id l145-20020a6288970000b02902e9f6a5c2c3sf11551812pfd.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Jun 2021 04:50:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623239442; cv=pass;
        d=google.com; s=arc-20160816;
        b=AzbfzrF0TXpj3EUPsfr95fS/LGhSAyasytsPbB4KuhcUczdkTnndiFJdYNB4QDCbxs
         Y1fBbJi1krz2Z7pxfUkMT+ggmCkH9IrSHL9wzP8f4LlOEKS6RimClWly3K5dl4p7yiiV
         HwiOYqH1yNEu+MUU3n/eIMr+CvaWqR+rRC+QruMUsP4RY7ixQdYfvC7NCdd2pYO2StZm
         HUJAbbeDaKQQA1iAuGu7IAeMz+ATwfZ/61STIi4GDRwI2A8OtXwRGx97ItkPtTIIMWjD
         j7dSDr8aRKjrsf50LjHJ353IIgprvwbSmfRNwn7OqkcraWhqAxe+kAeCtZLFF4+PQ4lX
         2RSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=JPtpF6FyG5siCo7NG0evY86e5s7uEfPIHM9HR/dKe2o=;
        b=DCi2DqRxoFEmkTjHhi04be4Kjc7XqQ84jaU7yYTIc2WiMAr+T+XxkxpTcP/jUAEPcg
         M1HyOByPByjgqPf9PQi09zAw0xkTbFbDk+hJ6++6nEYAGmgC+YThtbMwKG6L2hFpDvxV
         /rAJZgmTVWQszaBoE0uwtO6mOUlO3gnVmzNooi0+v2oZ5upwFR3VBAPAbGd80FWPBCWT
         VHgLEySeVZ0dQfCxQHi4sAdowkwx9ehet2o4AbdlQQSuLWP2Fzbh901442IO5zuwf45/
         1k3S87c1zosiFrtj/454iEgWv3lJOOoUoHzpUGZku/1qiPGLGG3zs1OfIHI3Z2wxTthR
         9ZYw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of chengzhihao1@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=chengzhihao1@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JPtpF6FyG5siCo7NG0evY86e5s7uEfPIHM9HR/dKe2o=;
        b=FtAyy8WUvEz+BXflaH//IYUBVQOV+5nO/j8GovPUoBtFHqoqu1xfgelVfO/TnWyMgG
         DVHTug77qtmAI6rI87JzR7WfXwaPufva2uv7Wlxqc79qGDbBN/r9AdWt+swkYiznNwc+
         Ty5U9iTgPvRPpzc/SCEei+eiRMWDLFb2btfetfqIFCNxFNZVqq5MYdyzpa6PuG7PT9Dw
         HrYed8OmUeeFj41CH6WgW7Ie0O4YGbd0UL0XP7W4/MMyxzU0XihlN6jeeRNaen4S1iP8
         6jXqR2APVkubyDM+7msjn1i6mXGapaW6Rlcbdm2EAv6+x2GPHjo6iDr/ImgtSRR91qez
         D6QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JPtpF6FyG5siCo7NG0evY86e5s7uEfPIHM9HR/dKe2o=;
        b=OW+aNCxcplUv8pASAfTKz65VPSjt39nvc/LdGxzu97ezDgH8oltrLr/MZEEMMnAcwz
         HjNPKjYwtQxzzC87F5SpvIUIeodWqcpz//oQNWVcTDQkOgubcDMeFed6I1sY+QktLfgw
         p+RkSLRmSYYbCG5QZbC0POeLbDA/8o+4NlO08kTk2chG3Y2ZfxBDkApRCRZKF9w9cU1X
         pKPWC0jP3BNpASe8vRocB6RwKgJMTqPXR6b3qf7SpaAZ/ErTV23zbbAtN3tWsM5Hd9a/
         Y/L8/Ry99HZ7o3L3soUWoVrDBWU6z4Tp4OplKZ4CDqceY7bmyBwHlQU75L+OJ1o4TsGF
         5kXg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533wRB/uX5ynrQItP58WyGYQ4ES4QWiAkQEWOlPT4NdSXB7hvwas
	CEdIhTs3EFam7N/cGn2tBvo=
X-Google-Smtp-Source: ABdhPJzJhIMS+2aWMOgIZYKJGjUWJHmLrsw90ebl7R5zm3FMA5lhL26GKh+Qzahd5702wjmMQr7Z2Q==
X-Received: by 2002:a63:da46:: with SMTP id l6mr3519913pgj.436.1623239442083;
        Wed, 09 Jun 2021 04:50:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:e804:: with SMTP id u4ls1329691plg.9.gmail; Wed, 09
 Jun 2021 04:50:41 -0700 (PDT)
X-Received: by 2002:a17:90b:1805:: with SMTP id lw5mr22025697pjb.120.1623239441202;
        Wed, 09 Jun 2021 04:50:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623239441; cv=none;
        d=google.com; s=arc-20160816;
        b=HKsA6oAzd+5V7MiVsrw6/EOMuTsKxbfDkveXHi0T84GXIScXvXQ218oAJEO+lcUm9a
         mkh+gmc6jZ354fQscL3NeFJ3lZ8NMWLegf4YHL/J+hEimcsHZEnGiuRyW1vEspDCv90Z
         rCH9jMx2AAOnZ2CSM4JGZcJTZLWCnecuwkeWVAQPxeHtM7tEAIuFw1pf/96WDGxwaGxb
         JVu42sdz99SXat29Ul6w2WYPT8l1VieAB0Dg7gG/e2XSeSgZCwkzBzsKKP+aAFOyjdA8
         7Qy0yxIVhEO4KU2XPGpFnNRAwaT2i5saGfUbDefC5KMpk4QVXWTOK9+cxr7EqyOZfRwG
         ZWnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=EZJd5aV1qHz1VnKeqNYNo+ncqIAwV2kSUb+HxwKIdNg=;
        b=f7KBFD6fbftBkbhEHtT8ujhSZPpPpPuXtwB9aaLTEyNSfSwYYmSlPTeR7+c7FaILXJ
         P108rJBRkkiPHUtj0UoyyzGGiyRySjj9VMEQA4dvUgHWm2SLEeZDUIbMkNoH362K1K7n
         Wwt1CnbiPQuL1/0Kkiz3EW65WZuZm0Fv4VVLZRgzqfzNKHji7UhQb1x84o3ahAcuCwnP
         H8kdWS44dCFKkzr7//AaaD76QK1l/DO/EiK3hC1CwFrAfPYso3m3PAMnT+OXOA1EAAft
         PJnnnpRUWc/XGeKLcDefFlxa+x0etFI45UsTfDOtqiQhjP8V6aT+cgxc0PemLWFRNhZY
         UvxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of chengzhihao1@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=chengzhihao1@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com. [45.249.212.187])
        by gmr-mx.google.com with ESMTPS id o20si2097536pgv.1.2021.06.09.04.50.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Jun 2021 04:50:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of chengzhihao1@huawei.com designates 45.249.212.187 as permitted sender) client-ip=45.249.212.187;
Received: from dggemv703-chm.china.huawei.com (unknown [172.30.72.53])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4G0QKQ6Y0fzWtQk;
	Wed,  9 Jun 2021 19:45:46 +0800 (CST)
Received: from dggema761-chm.china.huawei.com (10.1.198.203) by
 dggemv703-chm.china.huawei.com (10.3.19.46) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.1.2176.2; Wed, 9 Jun 2021 19:50:39 +0800
Received: from huawei.com (10.175.127.227) by dggema761-chm.china.huawei.com
 (10.1.198.203) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Wed, 9 Jun
 2021 19:50:38 +0800
From: Zhihao Cheng <chengzhihao1@huawei.com>
To: <peterz@infradead.org>, <mingo@redhat.com>, <acme@kernel.org>,
	<jolsa@redhat.com>, <ast@kernel.org>, <daniel@iogearbox.net>,
	<andrii@kernel.org>, <nathan@kernel.org>, <ndesaulniers@google.com>
CC: <linux-perf-users@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<netdev@vger.kernel.org>, <bpf@vger.kernel.org>,
	<clang-built-linux@googlegroups.com>, <chengzhihao1@huawei.com>,
	<yukuai3@huawei.com>
Subject: [PATCH] perf llvm: Fix error return code in llvm__compile_bpf()
Date: Wed, 9 Jun 2021 19:59:45 +0800
Message-ID: <20210609115945.2193194-1-chengzhihao1@huawei.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.127.227]
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 dggema761-chm.china.huawei.com (10.1.198.203)
X-CFilter-Loop: Reflected
X-Original-Sender: chengzhihao1@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of chengzhihao1@huawei.com designates 45.249.212.187 as
 permitted sender) smtp.mailfrom=chengzhihao1@huawei.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=huawei.com
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

Fix to return a negative error code from the error handling
case instead of 0, as done elsewhere in this function.

Fixes: cb76371441d098 ("perf llvm: Allow passing options to llc ...")
Fixes: 5eab5a7ee032ac ("perf llvm: Display eBPF compiling command ...")
Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Zhihao Cheng <chengzhihao1@huawei.com>
---
 tools/perf/util/llvm-utils.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/tools/perf/util/llvm-utils.c b/tools/perf/util/llvm-utils.c
index 3ceaf7ef3301..2de02639fb67 100644
--- a/tools/perf/util/llvm-utils.c
+++ b/tools/perf/util/llvm-utils.c
@@ -504,8 +504,9 @@ int llvm__compile_bpf(const char *path, void **p_obj_buf,
 			goto errout;
 		}
 
-		if (asprintf(&pipe_template, "%s -emit-llvm | %s -march=bpf %s -filetype=obj -o -",
-			      template, llc_path, opts) < 0) {
+		err = asprintf(&pipe_template, "%s -emit-llvm | %s -march=bpf %s -filetype=obj -o -",
+			       template, llc_path, opts);
+		if (err < 0) {
 			pr_err("ERROR:\tnot enough memory to setup command line\n");
 			goto errout;
 		}
@@ -524,7 +525,8 @@ int llvm__compile_bpf(const char *path, void **p_obj_buf,
 
 	pr_debug("llvm compiling command template: %s\n", template);
 
-	if (asprintf(&command_echo, "echo -n \"%s\"", template) < 0)
+	err = asprintf(&command_echo, "echo -n \"%s\"", template);
+	if (err < 0)
 		goto errout;
 
 	err = read_from_pipe(command_echo, (void **) &command_out, NULL);
-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210609115945.2193194-1-chengzhihao1%40huawei.com.
