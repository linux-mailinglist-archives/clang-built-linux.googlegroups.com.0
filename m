Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBB7GBV6DQMGQEIM6L6FA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 148593C459D
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Jul 2021 08:28:14 +0200 (CEST)
Received: by mail-il1-x13c.google.com with SMTP id h11-20020a056e021b8bb029020d99b97ad3sf196613ili.4
        for <lists+clang-built-linux@lfdr.de>; Sun, 11 Jul 2021 23:28:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626071292; cv=pass;
        d=google.com; s=arc-20160816;
        b=CcraC1dUpagQJdyt3Q5uZhOhiS86cSjnX9vGWXqxeYStagOeZwrN7aLYn2QFMg87Xb
         klsrGwmqzYAMtKowsmiS770IssEqtkVXRhKwWgnli1IsN0bP+RiWkzVQrlA99r3HeqEj
         ntdhFBTEKDCST+CpOSDBQB/+6ARZ5WyeIJBIbTz+Lf1HxzPmINw60Dky4rp4ekRdFJPp
         1V6XXhANcqZ6daTp+rBMvaOTIs9xGpb7gr8njF3CX0EFM7xpJNTWZMCq6/9hLBy6vNDf
         fQ1heX3z7wb2Tqgduqwf7E9hUkQQ9ytlXh47/9LG0+qXBX82HMSUTfYNHN1jkGccEGaN
         fNUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=OYNCsNRYekXGotkb5hQhzCVrqO+w42R4FMyGx4Ki6rA=;
        b=xyK4w94tJLBqnML7UAudd43U4uRG9LsLeOIArY/X61I15x0A/+GZBiTYtOw1f4rTNH
         G0g5qaxjLS0gzU+tVC0bXWjrAzK+yEmGnsCW5eEiZIS+G0GfPVZ94kJIOcBcA4bDnYXM
         ijUN2WEn3/a11gMI4+HRSt77KGzwUh2PTQV5awfeNAbvPru+GHoMysx+9RVwSqsSIo19
         Rh8ZgXVGdpwgOJKHfkztM2S8FVvXDAaXNOdW07yLHP66l3fIcRcA7n2RpLVSrMEVrsJm
         K1BObFbPby9vdkkrv38T2JdL0ejWkbNH9rJmbCA8cS0RlDUHIjFf8ZblA4ExJUKq2guN
         IHJw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=gk7XjbfW;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OYNCsNRYekXGotkb5hQhzCVrqO+w42R4FMyGx4Ki6rA=;
        b=jljnptLynKQexBQxm/fbPNbbuo30o4fPoiug8WLM4smm7GM5FDKa4SwIHAKXYUzlJ1
         RyjaCMO9zTbZtYKDt+Lgq/5avB83mslxe31lSazKvG36t42pstEXlMG/69IFgG7scqT2
         eLkgzlN/hp0tTPsZMo37pL7LpeTeNlwzyKWcQKzmermO+eI37p/jAsk8hG8PhKN7iNgH
         +F/0XFHyjaTa6pkvA/JE2Og6szEmKg5ttHvBAkSPzzuh/UdCfYm2fDN9OxEajFcz0voE
         u+VVu3TROkqZpOPHJqd8SX9aU0vBvSAMfsL9bhwdATpnoYnE6VLznoqBx5hJ4AvgMbaE
         51+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OYNCsNRYekXGotkb5hQhzCVrqO+w42R4FMyGx4Ki6rA=;
        b=ed0QEtt1RfA87frTHrIvh2sjwayC5Ox4lmk8DPd0p9zLesQhdBqENM6Ez6XNdJTEZN
         d6vhg8nHpC8UnS8F5IuSACPYXTy0Glgke+AE3kWhzgqK2L3IzPTXKnvtpMXhQ6R8JX1J
         ETuY7WeJJMRrWL9iWj7zSg0Z42MExvVVEcVAUqcqOd9AvnLP2Ut0JFDfL6DZtpkf3WJC
         fzTOjSnw1LloB+kg1rlFTF5DXeyOapf9HxyUbl/vZqwZ5GT1DxKJLlraZkZhfYS9IEl/
         fu4o/BVc1W6xEX2W/2XqnH3zBsam2hAR0SmeumV465trXMmMz76YFIzHG0GUeqlLE2z/
         /ObA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533b8DaBtGhJA+10QKDLI+Me39NtIIIy1fshxG7eOTNGwKhppLYG
	XZGOvIr3zT0A2XzMuxA3aAQ=
X-Google-Smtp-Source: ABdhPJzAZf34UmEqQpwMrX10VbhWNFseCX8ptAGaw6TwB9t7bYlUleweIZxH/tCz8Fmbxqw18dt0lg==
X-Received: by 2002:a02:a98d:: with SMTP id q13mr36350483jam.124.1626071292581;
        Sun, 11 Jul 2021 23:28:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1c83:: with SMTP id w3ls3344496ill.9.gmail; Sun, 11
 Jul 2021 23:28:12 -0700 (PDT)
X-Received: by 2002:a92:ad03:: with SMTP id w3mr33971530ilh.225.1626071292302;
        Sun, 11 Jul 2021 23:28:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626071292; cv=none;
        d=google.com; s=arc-20160816;
        b=wifLJr7Bm0GlScaay6Mt0PwPzKlVCCsPN32x/PE8zxDyiSRe+c72102ir2UWkaPCBr
         x3Wo60ACj5JT6HMU0KRrBiAqkhZsg+3KVB3GPyW1typtz88KFr1rSsai1ayfkfHJAyyi
         sIfDSww6fEpKUD1HFKt5WuY0Hd9v8dFO2up7QFUNEJgPkQGwBv/9w7OmVFOKVew5fNFi
         ySUBsATxEkVYQ2sT/Q5X+W7jMCPM/+Hg2q8LgSmQaPEbvg8z332iIIV4xK+gReYrGhef
         SFiwRk9cYxnRFtFBQCMSywjvWrxAbVrr+4GnDohPaZMrQQjDpBgkwBK2gWO8wGa0O26/
         5KYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=1xikOwpC/4xXbihQo2DcCTtXIMAL6NmXCva4Bmnt3II=;
        b=mVYw/v4SZ7m3aoLSlwkwsVqHP+38xnBwCJhY4g48uNZP3B0TbUmNuBMlxOzSqwVozR
         0qtUrGupWbYxakzdDm44gFOy2Y8fmxzHipuVPuigHESa7AWWT5xsHbhbybLXUTkWqhoF
         RmTU0H1ePYsa47327WLbeP1OWsGrhw2+R3op+YEfGRoyEUsCzo6GqCVrJjYvenR8eVI3
         nCcJ/AFHA4yp5QP508SJBsPTBD3oIXTrZ2kzngePHdRA50RWsiwNDASjG21NNOuVXeh9
         mDlO4zp6hqlJSbKCaRujLOq/l6l1cFblZTwOmDDGErqGbiFXzkTX4mbf/VT+UYmDbeL7
         QXOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=gk7XjbfW;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g14si1185347ilf.4.2021.07.11.23.28.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Jul 2021 23:28:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2BDF660234;
	Mon, 12 Jul 2021 06:28:11 +0000 (UTC)
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
Subject: [PATCH 5.4 343/348] perf llvm: Return -ENOMEM when asprintf() fails
Date: Mon, 12 Jul 2021 08:12:07 +0200
Message-Id: <20210712060749.608981013@linuxfoundation.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210712060659.886176320@linuxfoundation.org>
References: <20210712060659.886176320@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=gk7XjbfW;       spf=pass
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
index 8b14e4a7f1dc..e7c7e3232fc5 100644
--- a/tools/perf/util/llvm-utils.c
+++ b/tools/perf/util/llvm-utils.c
@@ -502,6 +502,7 @@ int llvm__compile_bpf(const char *path, void **p_obj_buf,
 			goto errout;
 		}
 
+		err = -ENOMEM;
 		if (asprintf(&pipe_template, "%s -emit-llvm | %s -march=bpf %s -filetype=obj -o -",
 			      template, llc_path, opts) < 0) {
 			pr_err("ERROR:\tnot enough memory to setup command line\n");
@@ -522,6 +523,7 @@ int llvm__compile_bpf(const char *path, void **p_obj_buf,
 
 	pr_debug("llvm compiling command template: %s\n", template);
 
+	err = -ENOMEM;
 	if (asprintf(&command_echo, "echo -n \"%s\"", template) < 0)
 		goto errout;
 
-- 
2.30.2



-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210712060749.608981013%40linuxfoundation.org.
