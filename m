Return-Path: <clang-built-linux+bncBCGYFYHOWEFRBC6HQHYQKGQEKZZMNPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E89E813DB5F
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 14:22:20 +0100 (CET)
Received: by mail-il1-x137.google.com with SMTP id j21sf16096578ilf.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 05:22:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579180940; cv=pass;
        d=google.com; s=arc-20160816;
        b=MCEeCQ3yM/SDn+4Lx5WAYFp12ofzFKOzZXQzJs4JuuMBCeSl2TJ52B/emI4NimZJ6q
         BHHFTf7EHM3rtLwAvc7U4OdBxRIf4EH0u8xZGgVuqGQWAZOSHhGJhr1FXSKCZkQV6wwr
         XIjD5NHlwPe1+SHjsUG3WzsIpev8nCmvEor0R/eZLdetNmLuyK3fvZVbD1ckglqNamQI
         GcQez3pZmzatetyN+5zuF93NeSi3bQpqV9g+AMka856QwqOkfw0twHjcQzCWMlQbz8oO
         gaowj93k7wdb//X2tgioV4QKC35Eqi+TioKrSqnnUhqWZzSYmfZKNiGup1uzT/tdE9xE
         QGJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:message-id:date:cc
         :to:from:subject:sender:dkim-signature;
        bh=5FfT8eWgWMYgUfILuR1XctD/+B9jBi9Ng2eZEaH4eys=;
        b=hLs1OJhhua5tTo9x1F+cm2iobjtiwpeZB3LWLE9jygWSJtPz5S+ZinSHayrdF9Rrvv
         mWC+oMLRxzLPZH3VRCTdwJDZb4grAtZclYUWeaZ0BaVPCysywDjLMO+OwPVCcZt7713S
         dWKKSuNlKM+QXN/PTy7B6TQk9UTWyidQZKYYwOYZRguiBeUjpzRlGsdKiHcn8LPLkRgO
         t1B11ih+67A8gtDsBjwEPCFPHXZHwhEJsYTpSTnNe62uqV7G/LJdwcD/9jmPNHnYvPQF
         jA7YQwAvIpU46vGb+XEpgarRV8GfSZnK2e9DtL/fHFueWLmtRMaJa44bdhESMa+rjxCi
         Qqag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="KZd/cC7w";
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:date:message-id:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5FfT8eWgWMYgUfILuR1XctD/+B9jBi9Ng2eZEaH4eys=;
        b=a1nwx6PPp/X6OIcgypvq28f8/yWOmd3oIwSKj8LFXVHKM63xKbGlCLpVN7Thuulqcv
         FgedWViskZTnU2FsNMb/VyfSQE1N38/5mtpM6fRQ0mvDU7JieLxk4+POSvPIqaFjNQay
         bgZA+Y/i6T0JV7eyir1g9RJdVGMlWU0K/bJJKYS5IrDX10ia2xScnCRdcdKh++/t7Uar
         yO+m2gD2RlfoNYAdZgZCBfvcnSkOYliFnD7oKQRO2lVroZgqpPnzLChjlzZ042tc/qox
         QwW6Xf3mgEKPzYheeT66/3RZDXmbhpEIwnuTbTGEk3EvfUvUCRiIvzCbWyPRetFuVA12
         xkww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:date:message-id
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5FfT8eWgWMYgUfILuR1XctD/+B9jBi9Ng2eZEaH4eys=;
        b=PEEQ4OpsVE8rfyt8U+6a6U4Ah3G+acD2bBH1pgOlgpHtMuXZmRzQg+dVOBe0a7hREU
         KXfpfvVvTjTlXMXxdl4BIolZyf/v7ZzIGsaxFCDyBMgZPcm+85V93XNCHlKlC0DoaaN5
         jVaJ8/nSR0k3QZm4rWyMoq3E1UvIYhIEDTyHkgWahXbWnsgQZoB3JLjm09bcMH1HqvDd
         si5t8iwXft7sSdpP4c+y0UXjpvmchYRsGVl4EwslR6/oW415dT2RHgYRRE3tmrWU+sTi
         4YAO9peZKYzdbGiLXjFQ02gdZkzM2Ex7munrz5KfiipGbo+kT0jdLFgqD2EH5YX0oPAR
         JOog==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV/QiZuweGDcsUyL6HQbMUv8M6J9pTPG0Ha8WFYLIy6UOnVGlG6
	9znMbJy1wwylSh7AEnrLaWw=
X-Google-Smtp-Source: APXvYqyrHVsrNA0Hkn0H3EzKlTKfe8YoqYN3nutU1lV0Ha8lNff6HifVam08NpCZ5qNsnxokFkY3nA==
X-Received: by 2002:a02:c78f:: with SMTP id n15mr28830522jao.100.1579180939640;
        Thu, 16 Jan 2020 05:22:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:8626:: with SMTP id e35ls1843271jai.6.gmail; Thu, 16 Jan
 2020 05:22:19 -0800 (PST)
X-Received: by 2002:a02:c988:: with SMTP id b8mr28528313jap.122.1579180939300;
        Thu, 16 Jan 2020 05:22:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579180939; cv=none;
        d=google.com; s=arc-20160816;
        b=DucRHSgLyb0TZhfiQMYJ7zA5gvyeuJXULt7AQ+kceOuFFND2Ntgv7td4Uv0M8aABDJ
         8hAtWAVlgjxkY2W/LH6VcEccNEpYyY6ktmaKGxtfpq+Tx2OvG5ZiZ/V4axsU0HoVnqeS
         yHpjNeVh7J0Bsw6CTBUDDuo6gXBXhFxjo6tTWqf4QKeziPKKAGaSmB9WJvRGXFnnmjCk
         qZKNcRPV1/pd4rDMmY+nmDmS1AWIOZkysRfnu0M7oKllX9SNSpGQLvQeaY1xKpf9HLDh
         n2s9HZhGssZmGZkiMT7Wb0Qg149k+0ffuCIxBO3wugn731lFB1VwRuoNsuOXWxuWIVAu
         YXSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:cc:to:from:subject:dkim-signature;
        bh=aMDh7O7NMpcCqszT926uoAcPCoAYSxWTtF/RaI2rGro=;
        b=p+QH81G9jWBjBRAqGsrC1tEpc0YHkuNuwjPjeRRMBbfBPZxpiT2aytZV3fDByoMnD1
         4+9YnWgKajGcv2evXdhTX3q3aMX0ORl/z9RDKQl8D3kYyfUSAtc+tv/g4Y3yjv43PBdb
         a4kgvRlkN0X5j/6h5Te3iL70s4FtKiGriO7YQ/GN23k+I+6tr9VmMICwZMrYP4vItrey
         NRlcq8zVmV5Wc8Ww5BQx/8hWAberLILVAbInXW+6G3zJZXTD2ZhxNmFqFOxJhbBLqbXA
         NItAas+JAR+9xZs5kUrS5na45p2qQFjoncf4WnabTq8p5+vfb1QUr2B65tMytyRHtg1Q
         yQRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="KZd/cC7w";
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id b16si639542ion.0.2020.01.16.05.22.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 05:22:19 -0800 (PST)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com
 [209.85.208.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-59-fV9o6zg8OaGsUP7I-NSgEA-1; Thu, 16 Jan 2020 08:22:17 -0500
Received: by mail-lj1-f197.google.com with SMTP id u9so5149827ljg.12
        for <clang-built-linux@googlegroups.com>; Thu, 16 Jan 2020 05:22:17 -0800 (PST)
X-Received: by 2002:a2e:2c16:: with SMTP id s22mr2305744ljs.248.1579180936041;
        Thu, 16 Jan 2020 05:22:16 -0800 (PST)
X-Received: by 2002:a2e:2c16:: with SMTP id s22mr2305732ljs.248.1579180935891;
        Thu, 16 Jan 2020 05:22:15 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
        by smtp.gmail.com with ESMTPSA id n3sm10612990lfk.61.2020.01.16.05.22.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jan 2020 05:22:15 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 03CC51804D8; Thu, 16 Jan 2020 14:22:14 +0100 (CET)
Subject: [PATCH bpf-next v3 02/11] tools/bpf/runqslower: Fix override option
 for VMLINUX_BTF
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
Date: Thu, 16 Jan 2020 14:22:13 +0100
Message-ID: <157918093389.1357254.10041649215380772130.stgit@toke.dk>
In-Reply-To: <157918093154.1357254.7616059374996162336.stgit@toke.dk>
References: <157918093154.1357254.7616059374996162336.stgit@toke.dk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-MC-Unique: fV9o6zg8OaGsUP7I-NSgEA-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="KZd/cC7w";
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

The runqslower tool refuses to build without a file to read vmlinux BTF
from. The build fails with an error message to override the location by
setting the VMLINUX_BTF variable if autodetection fails. However, the
Makefile doesn't actually work with that override - the error message is
still emitted.

Fix this by including the value of VMLINUX_BTF in the expansion, and only
emitting the error message if the *result* is empty. Also permit running
'make clean' even though no VMLINUX_BTF is set.

Fixes: 9c01546d26d2 ("tools/bpf: Add runqslower tool to tools/bpf")
Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
---
 tools/bpf/runqslower/Makefile |   18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/tools/bpf/runqslower/Makefile b/tools/bpf/runqslower/Makefile
index cff2fbcd29a8..89fb7cd30f1a 100644
--- a/tools/bpf/runqslower/Makefile
+++ b/tools/bpf/runqslower/Makefile
@@ -10,12 +10,14 @@ CFLAGS :=3D -g -Wall
=20
 # Try to detect best kernel BTF source
 KERNEL_REL :=3D $(shell uname -r)
-ifneq ("$(wildcard /sys/kernel/btf/vmlinux)","")
-VMLINUX_BTF :=3D /sys/kernel/btf/vmlinux
-else ifneq ("$(wildcard /boot/vmlinux-$(KERNEL_REL))","")
-VMLINUX_BTF :=3D /boot/vmlinux-$(KERNEL_REL)
-else
-$(error "Can't detect kernel BTF, use VMLINUX_BTF to specify it explicitly=
")
+VMLINUX_BTF_PATHS :=3D $(VMLINUX_BTF) /sys/kernel/btf/vmlinux /boot/vmlinu=
x-$(KERNEL_REL)
+VMLINUX_BTF_PATH :=3D $(firstword $(wildcard $(VMLINUX_BTF_PATHS)))
+
+ifeq ("$(VMLINUX_BTF_PATH)","")
+ifneq ($(MAKECMDGOALS),clean)
+$(error Could not find kernel BTF file (tried: $(VMLINUX_BTF_PATHS)). \
+	Try setting $$VMLINUX_BTF)
+endif
 endif
=20
 abs_out :=3D $(abspath $(OUTPUT))
@@ -67,9 +69,9 @@ $(OUTPUT):
 	$(call msg,MKDIR,$@)
 	$(Q)mkdir -p $(OUTPUT)
=20
-$(OUTPUT)/vmlinux.h: $(VMLINUX_BTF) | $(OUTPUT) $(BPFTOOL)
+$(OUTPUT)/vmlinux.h: $(VMLINUX_BTF_PATH) | $(OUTPUT) $(BPFTOOL)
 	$(call msg,GEN,$@)
-	$(Q)$(BPFTOOL) btf dump file $(VMLINUX_BTF) format c > $@
+	$(Q)$(BPFTOOL) btf dump file $(VMLINUX_BTF_PATH) format c > $@
=20
 $(OUTPUT)/libbpf.a: | $(OUTPUT)
 	$(Q)$(MAKE) $(submake_extras) -C $(LIBBPF_SRC)			       \

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/157918093389.1357254.10041649215380772130.stgit%40toke.dk=
.
