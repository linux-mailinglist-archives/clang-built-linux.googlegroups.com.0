Return-Path: <clang-built-linux+bncBCGYFYHOWEFRB4PQQ3YQKGQE4K2OPPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 61601140ADA
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jan 2020 14:36:50 +0100 (CET)
Received: by mail-ot1-x338.google.com with SMTP id 73sf13360470otj.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jan 2020 05:36:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579268209; cv=pass;
        d=google.com; s=arc-20160816;
        b=WJPk/HMz7N7JK1m7jTEWU5p/nd8uz/+Vs6bBGnlS243LkBRwLa21G9GsLdv7Wxg2EP
         1mgAj5fXZV+bNA8nAasRckNgtA2H4J4oBg+xH8yrFkxe+Nr/DFLnoi8BuPcfeLtaTPjp
         m4Ovb0xoMXh0HnhMjhZjffZ8bL9P5adpAu7ecTBMMEZNHY+BOJ0ZxTcjHWHUGkBoJVK1
         ZmgPua/sgJbURgKJ6JF5sf2emlv+eMpaQeHGQvGeWt28CsP+UJHOXKEgTCf5giWHNjl7
         Xga4QiSsmOOvxNsehsGQareQjC0ZIhJj/Y6koQkh6JXS9WoyJwF03u4f4Z7mpkcvCHhz
         0oRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:message-id:date:cc
         :to:from:subject:sender:dkim-signature;
        bh=KN2EC0q0rKRSS2DMgPCnzddDmjgKX8srLfPw74LioZA=;
        b=a9fvaY3jjLsg5P5eILoYWEv2zRTbzO/wQTNLIGRax5x0hMcgfl7ipAdVovH543iR88
         pYxXNAlUW8f7NGVKxecHOn1guhRIThPDw0LdLJfIycXlHoiCrjJHHOGXcjpThvyhnBRi
         fFNaHuA2FV06cP3uE7A4wu0to5Ty35WYGA+mpHzTmKnFCpyDXvu1IeunQBeWCfFf3g5u
         jyljgBrwj6kKAoqcFvqBpbbjUL5c+DCjhL0rYLCteYZZEPIZE7LJJmloVMTaVUA/vUbn
         xx6pRtIQ/UWyVRvRHgpTRmsoyrhOXxpmFwwpOn55c+Y0aH+UcR7uWd0U7PtK7AVwvpj6
         eI6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=BZ4MCcfo;
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:date:message-id:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KN2EC0q0rKRSS2DMgPCnzddDmjgKX8srLfPw74LioZA=;
        b=mlGNKWE0/+23KTZXk5IEJAOnFS/QtpM9r4PL8UwCr4cDf1MJ/tvD0AFzwQW5hS/IfK
         N9a8ueDisUZIK8eOywXaV4BrF73OtLK5XYSpwj0osqrHZFEL54BQ4oSl0Yg92k8qm8L3
         ffnL/5jT+umb1S1gFe5d/qQRWNyPImwp8vvC8lpcF5dzwAEHP04K8klDqX0jGmD4vBs6
         hkBoIjNB+vBGDGXFB/z9mfmdYc/MUgMNoX2d2jtbyaPksV024LmEVUvHp/2jD4nDyumB
         cbg+iwt0+axgiREK0R1UkuLSzwJPPEM+JmtlUHWvVp8rDgsfwmpK+oeuXfZg7g7W6SVl
         puOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:date:message-id
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KN2EC0q0rKRSS2DMgPCnzddDmjgKX8srLfPw74LioZA=;
        b=p9Sb7m+QsULna2n0ZW8tm9QMnVqxhD8j8azo0EmAdgYLrLilvf3DCh+Lps0lwa7AZz
         l7aZpLcV4trVmHQqr8VDxpVsDJdlpe1e90CfseQoKeHbpW84QsqthAL2rbAxWUSgCvbO
         nWec1wEVnPnKm01tjlv5YXgSRB4Aro7m7lBp9QO38kyPHZVjlVwEt8HUzqUG2LSBtheV
         Wh4Al32weIbRW7gSQWO+ANziFqg2zP+jxrtU+miUqrDqbDrqReOko5ieJmflvmS23njE
         2LLIgUuoqXRcOKn5bmmhk1kaJWjIiQl3IQJMZcdmw2RJDMoqouF/SRR31jDzTCuTRnMU
         sXLQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVp0PKu37MtsCg+NLY2/b92aRd8KIOCZgjlABkbzUNEluh+6EWr
	CpuMrf3bVK2vAv9HxhxiD8Q=
X-Google-Smtp-Source: APXvYqyVOkDAJieZYlP1h5+A4ln+k8B0xyzq1HiFnuaqopV1LYGp/Zbdj9OkPOQOoY/LJgyBMelVpA==
X-Received: by 2002:a9d:1d02:: with SMTP id m2mr5767483otm.45.1579268209224;
        Fri, 17 Jan 2020 05:36:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:4a4:: with SMTP id l4ls4662346otd.11.gmail; Fri, 17
 Jan 2020 05:36:48 -0800 (PST)
X-Received: by 2002:a05:6830:1116:: with SMTP id w22mr6116489otq.63.1579268208840;
        Fri, 17 Jan 2020 05:36:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579268208; cv=none;
        d=google.com; s=arc-20160816;
        b=y2kXgZapKByPZvMUleyT6YaZVO25lTcpzuZ8o4wxpSCizRYqX22T6pn66dsznimJKq
         lbNW1c4hr5ttjFFXqiobjr0rPXmGOMJJForgm9KiA8CSsuI6BpCdyF3YoVlD7bD6rId0
         1eOBLCwki9oA72ZJ50rxmhc0wcFPMmSh7UrkTkiPjDMhEWAQogDV/1aXqQE3g8Z4cjZR
         DdHCnnlnlK9dkEJWOHhWCRoV2tydjTQSBpDEbrIsaEUPi/59z75ffvqrlC0d4n1KVnZY
         gK58xxWJawKeDL7WBrcJqGe7+un6iw+f2XEFOefyH5DSymKP2ZHANeTiiGLa0X49K7xc
         tzmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:cc:to:from:subject:dkim-signature;
        bh=0XTpbUjXU+SXnG2vuLE1ccD3Fj1zqy8r9shhnPhn6Rw=;
        b=rW6V/EI4RNPnZxhdzEugy6P/NzV4X33g0H+/RhCKeaWEGzpYVApcyVBnfDt8F7vP1B
         mldAFQD1QlOq5BmRGCJUl7Y8e+WZhd0l//d5bf+2+Cu3mkpZmY5ErNsCXBDzf+gBbwn0
         85VbAZKdSSbDwTgmfNFyr14zfs9T93c5kquUwPgMAxzIENRzT/IQUdToh7E3GNYKbGvc
         xfzxQ2ktKzBY1aYJo3iXjMKmMBRMbK6LNsiJVaJhPVqDF0VWDRpYPA9GTYdBp9dHXnpS
         vOFCA6NYkfBKy63V+ynfaAntw4aQcfSInHbaDG/iVXliUlqTz4cuAjt+tRj346GWTIRk
         spIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=BZ4MCcfo;
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id w63si1138219oif.2.2020.01.17.05.36.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Jan 2020 05:36:48 -0800 (PST)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com
 [209.85.208.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-269-N5JbXjCJPq65hItr4VGYug-1; Fri, 17 Jan 2020 08:36:44 -0500
Received: by mail-lj1-f197.google.com with SMTP id 126so6183988ljj.10
        for <clang-built-linux@googlegroups.com>; Fri, 17 Jan 2020 05:36:44 -0800 (PST)
X-Received: by 2002:a2e:9cca:: with SMTP id g10mr5571382ljj.258.1579268203336;
        Fri, 17 Jan 2020 05:36:43 -0800 (PST)
X-Received: by 2002:a2e:9cca:: with SMTP id g10mr5571378ljj.258.1579268203185;
        Fri, 17 Jan 2020 05:36:43 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
        by smtp.gmail.com with ESMTPSA id s9sm14366440ljh.90.2020.01.17.05.36.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jan 2020 05:36:41 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 4D2A91804D7; Fri, 17 Jan 2020 14:36:40 +0100 (CET)
Subject: [PATCH bpf-next v4 03/10] selftests: Pass VMLINUX_BTF to runqslower
 Makefile
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
Date: Fri, 17 Jan 2020 14:36:40 +0100
Message-ID: <157926820025.1555735.5663814379544078154.stgit@toke.dk>
In-Reply-To: <157926819690.1555735.10756593211671752826.stgit@toke.dk>
References: <157926819690.1555735.10756593211671752826.stgit@toke.dk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-MC-Unique: N5JbXjCJPq65hItr4VGYug-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=BZ4MCcfo;
       spf=pass (google.com: domain of toke@redhat.com designates
 207.211.31.81 as permitted sender) smtp.mailfrom=toke@redhat.com;
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

Add a VMLINUX_BTF variable with the locally-built path when calling the
runqslower Makefile from selftests. This makes sure a simple 'make'
invocation in the selftests dir works even when there is no BTF information
for the running kernel. Do a wildcard expansion and include the same paths
for BTF for the running kernel as in the runqslower Makefile, to make it
possible to build selftests without having a vmlinux in the local tree.

Also fix the make invocation to use $(OUTPUT)/tools as the destination
directory instead of $(CURDIR)/tools.

Fixes: 3a0d3092a4ed ("selftests/bpf: Build runqslower from selftests")
Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
---
 tools/testing/selftests/bpf/Makefile |    8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/tools/testing/selftests/bpf/Makefile b/tools/testing/selftests=
/bpf/Makefile
index 246d09ffb296..dcc8dbb1510b 100644
--- a/tools/testing/selftests/bpf/Makefile
+++ b/tools/testing/selftests/bpf/Makefile
@@ -124,10 +124,14 @@ $(OUTPUT)/test_stub.o: test_stub.c
 	$(call msg,CC,,$@)
 	$(CC) -c $(CFLAGS) -o $@ $<
=20
+VMLINUX_BTF_PATHS :=3D $(abspath ../../../../vmlinux)			\
+			/sys/kernel/btf/vmlinux			\
+			/boot/vmlinux-$(shell uname -r)
+VMLINUX_BTF:=3D $(firstword $(wildcard $(VMLINUX_BTF_PATHS)))
 .PHONY: $(OUTPUT)/runqslower
 $(OUTPUT)/runqslower: force
-	$(Q)$(MAKE) $(submake_extras) -C $(TOOLSDIR)/bpf/runqslower	      \
-		    OUTPUT=3D$(CURDIR)/tools/
+	$(Q)$(MAKE) $(submake_extras) -C $(TOOLSDIR)/bpf/runqslower	\
+		    OUTPUT=3D$(OUTPUT)/tools/ VMLINUX_BTF=3D$(VMLINUX_BTF)
=20
 BPFOBJ :=3D $(OUTPUT)/libbpf.a
=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/157926820025.1555735.5663814379544078154.stgit%40toke.dk.
