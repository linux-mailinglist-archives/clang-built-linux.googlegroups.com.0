Return-Path: <clang-built-linux+bncBCGYFYHOWEFRB3PQQ3YQKGQETKIZNJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B6A4140AD9
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jan 2020 14:36:47 +0100 (CET)
Received: by mail-pj1-x1038.google.com with SMTP id c2sf4033906pjr.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jan 2020 05:36:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579268206; cv=pass;
        d=google.com; s=arc-20160816;
        b=l2wraPQ89P7AAte+snT5NxA68ZmhfcPyjY/iYErgjxA3aBsorYLRmXMvI2B9ZSUv2m
         I3u2jL3FlWZBIpXqDFSOOocDigd13HzZgMBySQsNqgsdVxGoSXpBTfF6vwCZkUl0UOTY
         CEbbf4+bocA4f6FsBst2q39K+E6YAaiF9dcdybegPSfKOwdG2dO1Ztuqf9dGIxQ99Qrw
         WOpTDk4w4l+vr3FI/nvmS30ufqOT3YpI2MkA3VbTrwuWu/lhPzTgcyHd1IQmNJDY0kNQ
         z3d2epOT/1S0DvpFJHellMhADPxR1OHCcXmo0pWYgHkrUoHkPZ/0xWbHLLJCu65d6yYl
         Pffw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:message-id:date:cc
         :to:from:subject:sender:dkim-signature;
        bh=HyFeH+SJw+cfoYKnNSgZhSdhB4vFPEU5iSk9jyX6124=;
        b=KlXSfiIIy0jpDg592HnoRsn2sf+re6MnW7UTC+2k/GIefGjdnuzUdF/IXVBgiMoZWN
         0/ybWaFgd9YSspsYLntek3Ez9HMO7SFfCjHPX7AL5C/S8JGtZhtq/4pQ2ytuSeE5Ry4i
         6rvy4ax2dJevuZom6IFc4Z8cNk/PrGUZCL/5h7y6hyaEHtxTOC/Pk1qd04V4FD6Y2LCc
         TTcPuFEyCfjPd0tl8Zqdf+6eyPloN0naDDmd23Xak9I2eRDHW3Egce3AdbDb2t80m830
         E/2FV+PYBv7HMQthq4Yub6W7tycB9COwGunb8cfShkEwl3eoJpAxHwmomS+nVlqehr2k
         KOoA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=fY+hi96F;
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:date:message-id:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HyFeH+SJw+cfoYKnNSgZhSdhB4vFPEU5iSk9jyX6124=;
        b=A+nyUvPlCE9Zjg1scO2KdniiNxJPAcJVfsVUGVWV/4wfEAwZlEA7rJDB+4UV+ShJ++
         JTOPk/hIl1Tvs831vSH+QRMr8mLeh8nJ9/O9/IuqByyfo/TGJNzl4hktUmrCWRGyLwQn
         QUemg6KSAinaknoyBH+QAJkQRWg57lPq/qkD4NPk7pZWDoXXaJCS3aisJSslGbE/I7NR
         zN3TmrvAGZmyPK4vN7E4zmtAlNhW29Puwgc0Q7uTW2fPL6PW/qIDBlBEHbYadFAdaFuE
         CSrUCIuE7ed3m+Cu5FG3eoC1lCcWK6UwRghtyJ1aKfSwPb+utGGLtT0Ck5+qs+GwOaUq
         AatQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:date:message-id
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HyFeH+SJw+cfoYKnNSgZhSdhB4vFPEU5iSk9jyX6124=;
        b=k/6WdV3FUumub5QB9Vpb2qBDSY/rPRlCgU9x29yllQOlGSR2Nv3U0LyeNfSJgtXlK6
         hAbiDdENcnCgO+lnlHkJQ6qVX17MQ2j4Cffp/OQlPPNKhOxj8cFxZWS/WzOLkyMpiiE1
         hay47rWnxvM0tAgB5uRT2t4xN0uSkFrrZ3NyD9tB+LKbyK3yVujTR/z/ynwl37Sv8de5
         My/YN2EWAELzCt2pXB15GELZTjlIpxIoQiHHqHTP8hF6bbzUZYoA0KvY/IaFO6G1934x
         xD400qfLYx0fmNM5VvIYxwnyLb0V83FecowmzuOkSc45JWPPgK9b7tUDZPa8e6As2VOS
         TOOA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUd0wo4YoKxIp+z2yzVL2rNnNPC7/C6FI3ozhOD6M7cacPSiWeq
	InzKdODFpSHOgtMgSyIua30=
X-Google-Smtp-Source: APXvYqyepo85vGaLY2+giuBaBh0KXtEi77X1YPQME4OYo7kXXbh3SXy5eyHUyitgjM4FAdu7kxgpzg==
X-Received: by 2002:a17:902:b604:: with SMTP id b4mr9882546pls.340.1579268206068;
        Fri, 17 Jan 2020 05:36:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:cf4a:: with SMTP id b10ls7171117pgj.0.gmail; Fri, 17 Jan
 2020 05:36:45 -0800 (PST)
X-Received: by 2002:a63:d62:: with SMTP id 34mr47158045pgn.268.1579268205557;
        Fri, 17 Jan 2020 05:36:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579268205; cv=none;
        d=google.com; s=arc-20160816;
        b=xCB61lwFPdKoJXAs4voIfJyEHWAB8IVfVlPUVsJ+g7uU62UebPNtvpkevSYYLcl4cF
         yENYk9f48JxaRR+qPo6QhGSsauMbRP2T5vvUMc1EvRXdxDFMM/4aBRwBuHhACGsEaQrY
         54f/QQuyJluI0eNMcIyxGmMECkngwD0T7tqyQxN39DeezkP/9893hH+xGizU9s/uMWu8
         ZxRfzAkVvjHYzErtpMEoZBTnF6LNnRuAD7coRcZ2Lw72EfQMd+upHNbeyo2ljEhcBXu8
         UOpIUzj4X36kLfgT3+8F6M3Lb4pnmUHDp64fe+nJ7tpupb4KcyXwsR+/wOhRriqL2ZRt
         CpYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:cc:to:from:subject:dkim-signature;
        bh=/gqLusg5S0L68icKhhrprGKbIIJTHi20GSt5kfZbTE4=;
        b=iA9LRdPOL6NMP6H9LqYEmBDQXFEQ7H/muGspJH/A9dHPR+QA8jJjJ6nwXph+5q94a5
         +ivBS8qYRU6ciZ5grEcpTZmDscdtXV4YhGPLAh+ZgsJvVV1nBil6dSk+zV/2IGrC/+i4
         QlMEtDQA3gvXVOOcY1TkG2L/PhuZzSl972dMq4DxRyzHtwev9Ji65fbqFmXk9NrK9jll
         ttPuTnqYcKLdApEKhnLD7QtkY1AwvYrTnTMfFf/ZVM3mlSDnWnq7PpLN3CNT34PpBd26
         q5Y/1s8+FtWXFlsTCpMV2sWnISDJ2Ea/SBvRn9X6SX3fa8AxHJqicDRh2HKbcPG217gO
         EjCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=fY+hi96F;
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id s12si212217pjo.0.2020.01.17.05.36.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Jan 2020 05:36:45 -0800 (PST)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com
 [209.85.167.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-191-zF_qFyyRNSycoZrde9ob-g-1; Fri, 17 Jan 2020 08:36:43 -0500
Received: by mail-lf1-f72.google.com with SMTP id y4so4375968lfg.1
        for <clang-built-linux@googlegroups.com>; Fri, 17 Jan 2020 05:36:42 -0800 (PST)
X-Received: by 2002:a2e:7a07:: with SMTP id v7mr5832262ljc.271.1579268201644;
        Fri, 17 Jan 2020 05:36:41 -0800 (PST)
X-Received: by 2002:a2e:7a07:: with SMTP id v7mr5832239ljc.271.1579268201264;
        Fri, 17 Jan 2020 05:36:41 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
        by smtp.gmail.com with ESMTPSA id s1sm12420064ljc.3.2020.01.17.05.36.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jan 2020 05:36:40 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 3EFB41804D8; Fri, 17 Jan 2020 14:36:39 +0100 (CET)
Subject: [PATCH bpf-next v4 02/10] tools/bpf/runqslower: Fix override option
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
Date: Fri, 17 Jan 2020 14:36:39 +0100
Message-ID: <157926819920.1555735.13051810516683828343.stgit@toke.dk>
In-Reply-To: <157926819690.1555735.10756593211671752826.stgit@toke.dk>
References: <157926819690.1555735.10756593211671752826.stgit@toke.dk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-MC-Unique: zF_qFyyRNSycoZrde9ob-g-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=fY+hi96F;
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
 tools/bpf/runqslower/Makefile |   18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/tools/bpf/runqslower/Makefile b/tools/bpf/runqslower/Makefile
index cff2fbcd29a8..b62fc9646c39 100644
--- a/tools/bpf/runqslower/Makefile
+++ b/tools/bpf/runqslower/Makefile
@@ -10,13 +10,9 @@ CFLAGS :=3D -g -Wall
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
-endif
+VMLINUX_BTF_PATHS :=3D /sys/kernel/btf/vmlinux /boot/vmlinux-$(KERNEL_REL)
+VMLINUX_BTF_PATH :=3D $(abspath $(or $(VMLINUX_BTF),$(firstword \
+	$(wildcard $(VMLINUX_BTF_PATHS)))))
=20
 abs_out :=3D $(abspath $(OUTPUT))
 ifeq ($(V),1)
@@ -67,9 +63,13 @@ $(OUTPUT):
 	$(call msg,MKDIR,$@)
 	$(Q)mkdir -p $(OUTPUT)
=20
-$(OUTPUT)/vmlinux.h: $(VMLINUX_BTF) | $(OUTPUT) $(BPFTOOL)
+$(OUTPUT)/vmlinux.h: $(VMLINUX_BTF_PATH) | $(OUTPUT) $(BPFTOOL)
 	$(call msg,GEN,$@)
-	$(Q)$(BPFTOOL) btf dump file $(VMLINUX_BTF) format c > $@
+	@if [ ! -e "$(VMLINUX_BTF_PATH)" ] ; then \
+		echo "Couldn't find kernel BTF; set VMLINUX_BTF to specify its location.=
"; \
+		exit 1;\
+	fi
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
clang-built-linux/157926819920.1555735.13051810516683828343.stgit%40toke.dk=
.
