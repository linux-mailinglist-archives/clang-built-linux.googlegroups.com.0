Return-Path: <clang-built-linux+bncBCGYFYHOWEFRB5WOS3YQKGQEFQ53UVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2390F142BE2
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jan 2020 14:13:28 +0100 (CET)
Received: by mail-pg1-x53d.google.com with SMTP id t12sf19234591pgs.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jan 2020 05:13:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579526006; cv=pass;
        d=google.com; s=arc-20160816;
        b=DNu9LLVpO6qlUPaCNNfylEHwlCQYPeXJH7Qvs6L3e/46qN1W4/shbKVRmI848vJ3Um
         /x05O2nvp8aZPG3wglQIBJXqmas4TbU40gCye9ZbN/nGitZSFYXx6KOHvKfKD5AB1t+O
         XnKAOpA2gbz08irIuh6Jvd37y3SsAUE711V4Mv0HL2Dao1b+WX5fJcdalLqjrOq6/P8I
         8NykgdkIBx/WxEXKSTluIJR/vU13Vc1QgvlQgNCzFkbiFGQN6YRAgkAThS03O3wWJ2/W
         g/CMURpsfOWEKxfB8HkNQYzGusr+JNAtvRDtkm4IJCseRsQC8M/67yGyBTI9vmcvR2wA
         KahQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:message-id:date:cc
         :to:from:subject:sender:dkim-signature;
        bh=v3b/VVYMTJ/xJvc9YlVmt6yJycwCHCu94oN6susLKDE=;
        b=P1TeeeLAXPCSvYgs2hUAD7YDEmAvPMkfh5dedWr9WSc8ytgWR3rHCu13oyh0yaqiAY
         MmHuhr7nKTcyC2DOntBJYEvlHMg4FX6Fhs1or/wSgSkIqQf4cdrVR4rBvThxSRiBrN0V
         8XRDGvJ5vEAuxpvaK+R82tVes8PNqb5hW/nLFJdn9IzTMGTEp0CB7gzsG9prva5o+x78
         p7WmmKZMFbfCNWdHUTs5i1WXv0IPC6Ah/oh74L2JcrlY2XQII8ZqcOncKNy1INzmR2Tf
         h/pIaW2nzSmGUwYK0B1bewgko6LyNevp51+P69ytnYhOpNfvHuNA/W1J0Lmo+U77PGvx
         AilA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ID7CThks;
       spf=pass (google.com: domain of toke@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:date:message-id:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=v3b/VVYMTJ/xJvc9YlVmt6yJycwCHCu94oN6susLKDE=;
        b=diT9clb3J8GemPVksGQ77CfoIAuxkvDJTCSvgsvCFTfQfBfRz3VaLaYHga+A9RGBpj
         7l9t7Ehe5o/GBgGQcYCAdVPm/Bw2mPlNrTIOMg/o3ww6vYeh674VMaKZK7VfkyFu40yh
         hAYwHNZ291EO89XGDiCjx5GAsBZ5L8XMOBW3vjY0Vy1AIk7tE3qY4YhrGoR8hWR4d6mS
         y3dJKcLZ5deX0CwFRXz/s1p8s7qmo7aeC5dhlpkv7NR3C8uhLOgwFNfy95NrGajMOEYg
         +eqSCHqg5V+WwYIFl7bKmh4OFlDQhVOC70dttIrk5fB1i5hVy8QCy9yAeWM9bNR/I2N7
         Ilnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:date:message-id
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=v3b/VVYMTJ/xJvc9YlVmt6yJycwCHCu94oN6susLKDE=;
        b=gj98CRzm0WmzEQ6VcB/nFTfEESCZhb8RGLJ/J3IRTLL1PGdhaHwl0bKxvbLSOqXlyG
         tv7f9flJHD9nAYwRGCbjsT1KXe61ZZJlN07JVNV1pRpYF4wEu67NpB+piXZLv4zWqgD+
         hRU3r2npCs5sjw+RlTJ2iWMssoIwsPDPmcbb+QeNtVY4TFVVXgsLuQUAxq34jc6qOnji
         00+wpMxCg2Gy9vHZkxJcCoLBv7GToiTaxblGeXmD8CxC8Q9nEki853WrO4fIOF8balsh
         79dNG0nU1JdXATs/1V3lyASei55Tt0vKXJ6Iz3tiVieFKN2tpNJHltRDiIvGNvnqL3wI
         OCBA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUp8lqWRElBRvhXkT0Y6ir3iZCaamPnhJsU2MmGE70KZLyLQqRR
	xBLo42JWQIKNlS673/7yXUQ=
X-Google-Smtp-Source: APXvYqxCLXM0gsnzvdBYL+YvGSHZX3BDnje4enYuef+UGFfut8ecCjB9LpExizv1bTL5l6G+5f/TKw==
X-Received: by 2002:a63:5fca:: with SMTP id t193mr1296561pgb.28.1579526006360;
        Mon, 20 Jan 2020 05:13:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:28f:: with SMTP id az15ls6214145pjb.3.gmail; Mon, 20
 Jan 2020 05:13:26 -0800 (PST)
X-Received: by 2002:a17:90a:d0c5:: with SMTP id y5mr23104016pjw.126.1579526006004;
        Mon, 20 Jan 2020 05:13:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579526006; cv=none;
        d=google.com; s=arc-20160816;
        b=y1YP+sa2lDVO2rNFBZ1NQtCcznQVh8iR2jt/JXmEtONSuCgQEhJP/HL+qr/f7xWr8B
         42+1COpHSP+iIdOT4CGKBrLqc0TB+Xu5oj+MAElC7rg+dHLZTmWBmt4o2TDVxuoozDBe
         Kei0aqEPZPS7wlLaXdO6hNzb+LPlHGl7zvfvXLRJYWBJVPFPv7CaqmJwWi9w0vNLu1y2
         1gXJRRsiOPd81dHvlxaCyhpAvC1ExjNg7ZtZHEqp/KAp2I77zAFGRe6EuPCdJUR7yNV8
         X83sNHl5yxjGIEZ9WRLDUMes3nHl3FI2bYkbdAOFjnR6wOYizkhnbL87dqSwk7RjruRY
         bdNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:cc:to:from:subject:dkim-signature;
        bh=4EdnlNUgAjTCA4bhyeYfmGXT6iSJ+6+eZXPVDTp2w+I=;
        b=ZZY04qmYVrfPJ1Sa1zWEOJ7n61D1GXsZd8FW4qkZCx3pwk/r3zbanEUSKr+xhCAJlC
         GZJmcvHSiatX1qyzB+nhm23HlasaD0oIyBFm0jWWnXp0egD75M/jLcYy2Fo7eDW3Llfi
         c64Gl7yDyvqxx02cBn8fkvA4WtKZkLXOvWHmv9Gtc6ccgG0aF+aEXBpaH/AN8mbx8Cvt
         mizEmxQXxF3op1POvty1l9/5Ws4fJW3CyS93qQO/7KWbJK6F2BIiVE112QnWlBP7VZVL
         pdY2Bml3pzJksL90MVtW6dkAoEkCTgKiN9gbvoYw4QpSQhOGSm3OQ0WgMICM/Cabdv70
         9kqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ID7CThks;
       spf=pass (google.com: domain of toke@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id f8si312346plr.2.2020.01.20.05.13.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Jan 2020 05:13:25 -0800 (PST)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-204-EoubHswbMxyTjLUAPKbJjQ-1; Mon, 20 Jan 2020 08:13:23 -0500
Received: by mail-ed1-f70.google.com with SMTP id g11so21788487edu.10
        for <clang-built-linux@googlegroups.com>; Mon, 20 Jan 2020 05:13:23 -0800 (PST)
X-Received: by 2002:a50:b905:: with SMTP id m5mr17096530ede.154.1579525999477;
        Mon, 20 Jan 2020 05:13:19 -0800 (PST)
X-Received: by 2002:a05:651c:8f:: with SMTP id 15mr13842833ljq.109.1579525998002;
        Mon, 20 Jan 2020 05:13:18 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([85.204.121.218])
        by smtp.gmail.com with ESMTPSA id z3sm16867876ljh.83.2020.01.20.05.13.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jan 2020 05:13:16 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 709ED1804D6; Mon, 20 Jan 2020 14:06:51 +0100 (CET)
Subject: [PATCH bpf-next v5 10/11] runsqslower: Support user-specified libbpf
 include and object paths
From: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Alexei Starovoitov <ast@kernel.org>
Cc: Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>,
 Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>,
 Andrii Nakryiko <andriin@fb.com>, Doug Ledford <dledford@redhat.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Jesper Dangaard Brouer <brouer@redhat.com>,
 John Fastabend <john.fastabend@gmail.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Shuah Khan <shuah@kernel.org>, netdev@vger.kernel.org, bpf@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rdma@vger.kernel.org,
 linux-kselftest@vger.kernel.org, clang-built-linux@googlegroups.com
Date: Mon, 20 Jan 2020 14:06:51 +0100
Message-ID: <157952561135.1683545.5660339645093141381.stgit@toke.dk>
In-Reply-To: <157952560001.1683545.16757917515390545122.stgit@toke.dk>
References: <157952560001.1683545.16757917515390545122.stgit@toke.dk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-MC-Unique: EoubHswbMxyTjLUAPKbJjQ-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=ID7CThks;
       spf=pass (google.com: domain of toke@redhat.com designates
 205.139.110.61 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

From: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>

This adds support for specifying the libbpf include and object paths as
arguments to the runqslower Makefile, to support reusing the libbpf version
built as part of the selftests.

Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
---
 tools/bpf/runqslower/Makefile |   12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/tools/bpf/runqslower/Makefile b/tools/bpf/runqslower/Makefile
index b90044caf270..faf5418609ea 100644
--- a/tools/bpf/runqslower/Makefile
+++ b/tools/bpf/runqslower/Makefile
@@ -6,7 +6,9 @@ LLVM_STRIP :=3D llvm-strip
 DEFAULT_BPFTOOL :=3D $(OUTPUT)/sbin/bpftool
 BPFTOOL ?=3D $(DEFAULT_BPFTOOL)
 LIBBPF_SRC :=3D $(abspath ../../lib/bpf)
-INCLUDES :=3D -I$(OUTPUT) -I$(abspath ../../lib)
+BPFOBJ :=3D $(OUTPUT)/libbpf.a
+BPF_INCLUDE :=3D $(OUTPUT)
+INCLUDES :=3D -I$(BPF_INCLUDE) -I$(OUTPUT) -I$(abspath ../../lib)
 CFLAGS :=3D -g -Wall
=20
 # Try to detect best kernel BTF source
@@ -37,7 +39,7 @@ clean:
 	$(call msg,CLEAN)
 	$(Q)rm -rf $(OUTPUT) runqslower
=20
-$(OUTPUT)/runqslower: $(OUTPUT)/runqslower.o $(OUTPUT)/libbpf.a
+$(OUTPUT)/runqslower: $(OUTPUT)/runqslower.o $(BPFOBJ)
 	$(call msg,BINARY,$@)
 	$(Q)$(CC) $(CFLAGS) -lelf -lz $^ -o $@
=20
@@ -50,7 +52,7 @@ $(OUTPUT)/%.skel.h: $(OUTPUT)/%.bpf.o | $(BPFTOOL)
 	$(call msg,GEN-SKEL,$@)
 	$(Q)$(BPFTOOL) gen skeleton $< > $@
=20
-$(OUTPUT)/%.bpf.o: %.bpf.c $(OUTPUT)/libbpf.a | $(OUTPUT)
+$(OUTPUT)/%.bpf.o: %.bpf.c $(BPFOBJ) | $(OUTPUT)
 	$(call msg,BPF,$@)
 	$(Q)$(CLANG) -g -O2 -target bpf $(INCLUDES)			      \
 		 -c $(filter %.c,$^) -o $@ &&				      \
@@ -73,9 +75,9 @@ $(OUTPUT)/vmlinux.h: $(VMLINUX_BTF_PATH) | $(OUTPUT) $(BP=
FTOOL)
 	fi
 	$(Q)$(BPFTOOL) btf dump file $(VMLINUX_BTF_PATH) format c > $@
=20
-$(OUTPUT)/libbpf.a: | $(OUTPUT)
+$(BPFOBJ): | $(OUTPUT)
 	$(Q)$(MAKE) $(submake_extras) -C $(LIBBPF_SRC)			       \
-		    OUTPUT=3D$(abs_out)/ $(abs_out)/libbpf.a
+		    OUTPUT=3D$(abspath $(dir $@))/ $(abspath $@)
=20
 $(DEFAULT_BPFTOOL):
 	$(Q)$(MAKE) $(submake_extras) -C ../bpftool			      \

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/157952561135.1683545.5660339645093141381.stgit%40toke.dk.
