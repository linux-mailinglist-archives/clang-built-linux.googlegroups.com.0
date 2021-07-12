Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBYWMV6DQMGQER2VHNXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 04C983C45B1
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Jul 2021 08:51:16 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id y35-20020a0cb8a30000b0290270c2da88e8sf13689864qvf.13
        for <lists+clang-built-linux@lfdr.de>; Sun, 11 Jul 2021 23:51:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626072674; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vz3ezGgll4rulYvUcRj74TNZuSHsjTDuMbcIvRUfxQCQbNRCRACr0DNG0faW+l1A+o
         DGINFKA43KSnlvxkIDYajakd5ocLMQYU1vjJ7Jlc5aExdTkEdkHKP+dHhRjycWxO7pHz
         iY6Rtu0rLwGSZhFdQZQnHUffUpyQlowUnpDsoE6XwKUbIQ0U03klI9Jpe8KbKJxhQI2Z
         71zdROUo6zny+c3tXAgxEHwqDeBflB3olbxFACbMdk2s2jrixYvgEQH/Vx4p99RWwukr
         6+cpGfuuUaLyevXE4+uEwWKb53MnP1Bew7iwe95f/udy5wOFRf4vN0fSN4YDooJ66she
         CqoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=l04fv90COrduMoWY0SbOyKHXS+NTlvu9IkzqEPOh02A=;
        b=kOupO+eXtSlQ7LfmaVAVfJs4AhDBBS4dI1TfhqtwhrJ3Z1wM1KqVwJyqsqekvF1c37
         K/HyACHAjkyPcPvB2nwS6VwpxtKmX1xHrwbe3TC1HlQatKEDV7TOb4wy8b3K8xtUkZ8G
         nWJS7aTeniEYp+lHsEvEerHOfcno7sjjt0I0EkQkzsC97N5ecozDhAu7FkR17dkU8nVO
         1OABHFb+ofpBL/qp52jKvsYMev8QTvCCZkTSCtWLVWBA5PrSrS1JLQj+Uafaj3U6ScdR
         WAWZCrIOE/fxQbLYSUdOPWRk1j4VPVKn44qKfP3EtrKm0X93lDkPNN2fA3BP3PZ/9Mxy
         c/Jg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=rNTe76sa;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=l04fv90COrduMoWY0SbOyKHXS+NTlvu9IkzqEPOh02A=;
        b=f6AeEeVCftCPEI9pomzPOrCrXuSjN0a/4h8LC7LP69zAlrsPKsZi7FQLUSjV2PrFgt
         eTpMYOHl8gmcU8SIqTvDpKA+JF1yOb1WYpb5ETQV1kUg30pqWuTsnyXyRxpMsNlyETn8
         36dhZxnfIh/EzpUjUUQ/smCsFKXqwyR4c8e3zj/Uwf/DUP0xBTtF5jqwWZcFlMqoW9qe
         G/sdml2idwki5nSB8zOpfEAQyjyXvmqqVpWKSpvFTrlLUim2FTtsV2mgdq8p2gui311F
         BAeHrKnpC5PnFWLUAu9ui0jgCbqZhnBGeFvRgiiRS9zqbSet5RfwbewbHE/+XSE6S9MM
         uKXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l04fv90COrduMoWY0SbOyKHXS+NTlvu9IkzqEPOh02A=;
        b=oZc0Vn9o7Wt4AGA/iPdXWIFVZ+NA9TegN2EIiaAe3+cCEIN2LSGFDSasWXl7J94w06
         PBFF9njQE9DX7AkyqjCjbhFp6kShd7ldPYXCc+M43ZMVQ/JOwbodyR6HVdBfDaTBkw2Q
         AtRYxuKaOH9B6p1xlFy976QjDso7D/YpNj8qNxM0ncOnF+zn3vVcDAUIrl6Giu1C+Yfq
         a5csw6dXMgFUgeyf385Rovr3x4fvE2c2UFA9LsRe2FG1z6pfN/9QYfstEEbUJONFegRE
         SScoUZTRZL6To9MZNc293c6xV35TGUL2v9ZL89rMe3NjYISWsAwuN2Awq5tr4XsDykqu
         LBfw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532yXK1JTD4Xltmu4TMuZayj6yKuRFKSqOz/cduZu12JOxLdXHVA
	NfdBO+Pn5ZLec8sEfF5JVgQ=
X-Google-Smtp-Source: ABdhPJyb9z7rHEvwnqEbTRtARBujm82RRrf/tUCkb1K+cnn0bXeLZMo/DEOuHOL19ywOw1NiH7pn2A==
X-Received: by 2002:a05:620a:3186:: with SMTP id bi6mr10044613qkb.472.1626072674748;
        Sun, 11 Jul 2021 23:51:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:b89:: with SMTP id k9ls7320370qkh.1.gmail; Sun, 11
 Jul 2021 23:51:14 -0700 (PDT)
X-Received: by 2002:a05:620a:21cd:: with SMTP id h13mr694059qka.375.1626072674247;
        Sun, 11 Jul 2021 23:51:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626072674; cv=none;
        d=google.com; s=arc-20160816;
        b=qJ/2f3UopmdStl/O69fJQcekuxjBOIATHewn6C/NztU5cZMeoQB+vCPXkqMOMe/LGj
         WlkSCaZpm0LKIxSEfVhBuwvuc/ax8qHU9M+E3mvrbfjYrcJFkvMkS1T+AXz8G458z4Of
         RerdH6BTZSxUJlG3B37nIHTAOs88MAVS6+WsJto+NbO6gdKX+3Bsv11iexw+BYtGRbBD
         c2qoqsE7/QWKV5b3uF7l2xNyd7m8hCcTQqr0uawGA5/WgZ1D37O4kOoOeU8LTnltovk5
         leM45zundJtThcfOKqCp+tNfTRWzMW/cNGUaiMIIuvOeKAuWNmGtCABwRKDo4mSCEZTe
         CNfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=MlSaVpgL57P88D+FFKRhbi0ba24VEDZzEG4wCEQuuF0=;
        b=kxYcK0KFQr65HMH2s1UIYK3UYdwSskKSauK8ZuTJcKayitqwsDkYsUcX2Tc60+QVnP
         Yfu7baJySikYQ2t1LPF6erE1DbPdbZ8/uCOMhNUkwc1bjuNO9wAxTPdgogBwnKrm+FbA
         nLxq5lNYcd3fPkAokZKra+xNiVL/JGgXIVMMKuEJNPmJtF90UfY6DO6MK1c1TzAs1+Cr
         FkVceWwV4Hr42kGo1DvmGVO7onP4zipgtMtIt+dMk87VCt7GfCFf7d4ynhBd8VUKLOqK
         QhQkhN/DBmJtKjy7Ox/KX5WkysgWsaprAD7Jla9ORhvZjND4MhqxbOgTqNfRtcTb8emx
         rfuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=rNTe76sa;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q9si1386186qkm.7.2021.07.11.23.51.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Jul 2021 23:51:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id BA7DE610A6;
	Mon, 12 Jul 2021 06:51:12 +0000 (UTC)
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
Subject: [PATCH 5.10 577/593] perf llvm: Return -ENOMEM when asprintf() fails
Date: Mon, 12 Jul 2021 08:12:17 +0200
Message-Id: <20210712060958.568339304@linuxfoundation.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210712060843.180606720@linuxfoundation.org>
References: <20210712060843.180606720@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=rNTe76sa;       spf=pass
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
index dbdffb6673fe..0bf6b4d4c90a 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210712060958.568339304%40linuxfoundation.org.
