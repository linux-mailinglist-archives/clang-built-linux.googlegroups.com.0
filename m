Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBB6NY22DQMGQE6NUDUQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AC793CDD64
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Jul 2021 17:38:35 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id v16-20020a170902e8d0b0290124e63feb68sf3673664plg.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Jul 2021 08:38:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626709114; cv=pass;
        d=google.com; s=arc-20160816;
        b=YlcQwBMtzHeAz7dWo9Yzum9xcDkJ8usaXUegJQP8QuN15HPxRNrLziYkJPhQicCC5d
         GnOoGirw7whByxI/uxtx2PXSl7da8VJ6VtFLkvKkeqATu6sQ+QuwiP/Ms1y9jfFA0HNO
         aaXt5YxgGGQWuu+DFqhS/JKwLi4cobWZuBZ2uU5CPI36dT0l578Q0dJ/hF3DltG84BqF
         9h2nkSjtAtr0SfN0aWfQ8bhr98PaVh1USOvImsFACkhk8V/nH67au8WIDjObZwCoz7Z5
         V3O79YLjhWpdKPznJOjusiWbCI/aQEuuVj+Z2DVXNIIVhmc2/VsTkVxtXb0blHHeHqDI
         1y5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=EX175X2fAwSgXp3IMxWUVz9dTBUf7QU39quU5j00ddE=;
        b=lQUUMGV68T3G0lug7zUy9NUZA3rVGILD16CEBc9NOGEHhe3ZzGmtdEdEHV3btJLeyM
         Og9gWg5qwDSQpiNtfL5vxPwN0JCi+qusIGIG67mSp2RzpkODG7ECL0E9Gm0rZNtasKwg
         uHQ+BSztM+8mc4lVRN5tABWTjs26Bc94mihKnovxvzvTevtvffHDS3OzcQyLRpX9bSmL
         Lh5ABUOsySvkgsBzJXUnJhkqQC1LQjnOnzB8Z+oZaCSbyyTjwzzVCz3pDn0SLVHNgA74
         WmoPYjyivbYwzdXOn187WMveJhdmHwPzTzXDu7m4sYGiAMy4Y7jE6U1wq0LFrf/HJRMj
         ymfg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=m6sRcV0h;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EX175X2fAwSgXp3IMxWUVz9dTBUf7QU39quU5j00ddE=;
        b=G0kEaPFkgKpeYZg5s19RAArs0u1XcPY/yNEbLK1xsutIZ57P1DrtiutHWk3pOvV7ZP
         a0R1mJgQrkFmfC9XA/J3aYhTm5sPB91WlHJNV7CxuTTZA46IrtajNve/E2DyHrHJChUO
         75v9f21b7tYOOWaLweE5qhJNwxSNMp8ToSCD4rNdLfxaWxPGD4wMnK5TzyKKNL0o6xZg
         r/PWV8rZjH0/FQ3RV4o0343ptIlipp+T2fHfdywL7YwXwShRw3XuWhtNKm9p8CZUm6Nz
         KlXA8jpwXjMq2f2lMPbI+ryLCmu9qeyZVlnnSIMu515sP0loJN4oXGznq6sj1a+4Miz5
         BQyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EX175X2fAwSgXp3IMxWUVz9dTBUf7QU39quU5j00ddE=;
        b=e47WcOvnKpCvfbdwL6j23LsmWv3diQmgCYQKXllqZkPTDRa2lffZPG8H7Sz1SSIbi4
         lZSAHKyWZ4d4uM/aIXEg+kn10+S8xtFXh6slFTkrhgNr73gGE0CTuNIBexnXyc/IJqbp
         uENg9OwtOolu1hcLGliQQOOkWREQpneFglZiu1ymPQFYAw76R6GbpiHzrjzVKuDcozHa
         iJTS7PaK3ZLtUXhifUJYg/z2/ub3pu8NIFtQtBptWeNFufnz7uaCDQOv0IAWa6UEfcJJ
         pBCj7WoBvhEAVWPhp0Je15C/5SjsK3djTHXR48nyicbOK9Y7gDp7XcMFTlOGa+9LGRbZ
         Ljyg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532/K8O3UxTNUvOdbpDRrmoB3fmtwlGAoQNNcFyGaBH1pfZfL23f
	QG4BLd1D7WOk8G9YKgBHLhI=
X-Google-Smtp-Source: ABdhPJx6kp/vgbxmpxpIfV2WvLasx0P2Lt6kbRBr2zAdbKPnS5FnrlWnkLFjvsZjczKuaFxS4rATjg==
X-Received: by 2002:a63:e303:: with SMTP id f3mr26423110pgh.182.1626709113893;
        Mon, 19 Jul 2021 08:38:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:26f2:: with SMTP id p50ls8987786pfw.2.gmail; Mon,
 19 Jul 2021 08:38:33 -0700 (PDT)
X-Received: by 2002:aa7:9ae4:0:b029:32e:b1:78e8 with SMTP id y4-20020aa79ae40000b029032e00b178e8mr26618384pfp.46.1626709113386;
        Mon, 19 Jul 2021 08:38:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626709113; cv=none;
        d=google.com; s=arc-20160816;
        b=K9zeXp81Hqwkeu6rf3t265lKVfzrOtS7yUlM8wsvveMDfDyRHsbaPYOxUbIv0Nh33F
         HfIhyRw+/dHBh/yrA2GdDGtQ9Ljkvy3S193pgGQci68Cp2lkl8cOM5VtfFcQOrny76Y/
         urkrmzHBjsbbtYzvQH4tftauRohfYJiRzPJAvG8pCcnEP2YKGJl2YJbHLmeyNJx/bs0j
         iiohgrqm9yucBogE0viVpg9sgVFIT6qir+Abe7GEr+a6OuDkOJF752gOq719PC2ZgzcE
         /Gtu81QiXNIrb8AtOCh/qN3nciP4a2EMYgIXmfzXfq62WyOZHg+3IfsXx9E8NcoE9M6i
         ++oQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=5tJwDzpNMT2TAsZ7Jihyz9Qu8YR1CFa+dDTjKAOrJi8=;
        b=vSdkTG16cEoH5Liw2IEDKCtyFVKfZsWCYELz0WmFzoV+kuOjUqe4gIOFhK6MJMfqfP
         Iu0skLGu4z2njBoyBCQQYB+JLuK4pJNp/AjcY95Eaf2//EQ6Oq5XUtldsOBNX1pupn1z
         /Y0rKApWEnXeGU28m8fOxmWfVAllqoSRylbaDWTFpt2yF+YROhbQbX+6KrsZfx0eELGH
         CIY+pyCRQayGwXBXk3lH7CHptWFTqzcrKKlBoVPouh2xbLQ4k0+6F3D9GWUVomq5wjC6
         PfD1aty6UagSwGWU9tMz9DwpLjqmTXz0bvQmlDkdUown5CgW5aNoUbluqvAezmrpFO0X
         8hgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=m6sRcV0h;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t15si1103218plr.0.2021.07.19.08.38.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Jul 2021 08:38:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id A74EE611CE;
	Mon, 19 Jul 2021 15:38:32 +0000 (UTC)
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
Subject: [PATCH 4.19 224/421] perf llvm: Return -ENOMEM when asprintf() fails
Date: Mon, 19 Jul 2021 16:50:35 +0200
Message-Id: <20210719144954.099761899@linuxfoundation.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210719144946.310399455@linuxfoundation.org>
References: <20210719144946.310399455@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=m6sRcV0h;       spf=pass
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
 tools/perf/util/llvm-utils.c |    2 ++
 1 file changed, 2 insertions(+)

--- a/tools/perf/util/llvm-utils.c
+++ b/tools/perf/util/llvm-utils.c
@@ -500,6 +500,7 @@ int llvm__compile_bpf(const char *path,
 			goto errout;
 		}
 
+		err = -ENOMEM;
 		if (asprintf(&pipe_template, "%s -emit-llvm | %s -march=bpf %s -filetype=obj -o -",
 			      template, llc_path, opts) < 0) {
 			pr_err("ERROR:\tnot enough memory to setup command line\n");
@@ -520,6 +521,7 @@ int llvm__compile_bpf(const char *path,
 
 	pr_debug("llvm compiling command template: %s\n", template);
 
+	err = -ENOMEM;
 	if (asprintf(&command_echo, "echo -n \"%s\"", template) < 0)
 		goto errout;
 


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210719144954.099761899%40linuxfoundation.org.
