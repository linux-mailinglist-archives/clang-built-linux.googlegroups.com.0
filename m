Return-Path: <clang-built-linux+bncBCGYFYHOWEFRB2OLS3YQKGQEW7VDKDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id D5598142B81
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jan 2020 14:06:50 +0100 (CET)
Received: by mail-vk1-xa3d.google.com with SMTP id x74sf12954295vke.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jan 2020 05:06:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579525609; cv=pass;
        d=google.com; s=arc-20160816;
        b=y4fovfCMUFpGTCYz/aEP0MDOLr78wd96n2zzw5nYzjAjYZJ7F/BgGWXPDhkUXyanM9
         cpA5KIjtXKV1WGP2oQqQF4enUnlgJJRVg9WHp+i7ZPJcjh2MDKd7Y0r9Z/lZsydKqP/p
         +qN587QcU8wRz513+m/Nil78SKQX1Qp8N9qcS8L3dH9MuqZkSRptxih1aul3odNDm4Dw
         zxriNC8N7t/mD1cuF9GaHc7DrgvWQ7JaMw+lrCNaodMp+txDNhihjTemJIDE6Od9xc2X
         VwgGI0z4bJ50l/Fm3RcvB6RJcXw4Af7rLqMnO3Rh36uYbKpXI1sswruDWO1euImQW4Da
         cytQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:message-id:date:cc
         :to:from:subject:sender:dkim-signature;
        bh=UBrbXpMot7BFfEcd5dmIsH9coPU3/VeN9UguMAhZScQ=;
        b=QTA8xvSG2Lyq5+RB5HuLDbkIa8KifC3vsDWFtRf4Z6yAhVO6AyUccZgACy0ScL7NTX
         5fqvYfM5APNgiwLVBwotVlVhUOy3QfkJbZdwnW22GnXFR6syd/hycz2M7GJTBFYfD2uO
         LsMOq6ObnORm9wCf4R0OvDDFB73mrvwh2nWMbR+jYjzOfDnPq2r3mTzpr8SYev5ayIVy
         B5/1VRf83CIhWd8Bqi7gB84Q/hPZTqW1gdwP77mIjSzeKS413OvMSM9pfYACAL3gUHk0
         DBPuZtp2kdPNC2v/FifaWyS/L2DRTWi5Q8OtAi1hnCbYcHRXdnUW5n1HnGjCLS0QrHld
         aRCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=EOI8es3o;
       spf=pass (google.com: domain of toke@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:date:message-id:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UBrbXpMot7BFfEcd5dmIsH9coPU3/VeN9UguMAhZScQ=;
        b=owsA4MRB4G01jhIAx6z+YGPOR7q+sHvpES2EzZWVipbgh4+dTuYmUeHE+13O7Zljen
         p9wbn2AHJi40loeol6ufJtVsaDcsir3nw7t7l3V6jYfJXIEfLRflrgrBNHx1lekfHml0
         VSGQJy6Vz1p82rHMlkgmHGgaLluSQmeV5cX2HniCXIqOV56LnKOv0yfBeL5sBNAMFqKX
         5+wxLEVx9l9M6WU/rLfoyijHK05Rd4MvIy7y64TMuPPnHU6rA85VCpJ+kj3ymsBHiDge
         Ms/8Oh4JhlqwTgCMtWE41SOF1y/lqTXiKEW0VY787xkhzuqwcToX2dI2zY1zvY91Tp5E
         VVLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:date:message-id
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UBrbXpMot7BFfEcd5dmIsH9coPU3/VeN9UguMAhZScQ=;
        b=LSlAyPlE1U4TeIquolJHL9xQzuRYjhuI2m+NwuxOd9mH1J3m1sd35hoND3H7RQKbhV
         Z3VnyEhQ3n0tYSeMjC/xrcVjMoKrNNojslcdnRmFjWQf+1NWQPIsVkVwxyPISANKg5Hh
         Yri7OdYAG6zvmqEJovDx9Rg59aMxuiiMy/HV2oN/1fNIYtVPI9E+gnGoFOO9MJK63mo/
         BXUGVF5kxNHC7FiWsgghhGV8Ov73a0YA7SAvDTOnGRFlL4dr5/Ar5brzJwexSQQkLYsB
         7jJxZeppR8Vdg3wKRPCBIEDreQE5X7gaDzXANg9G3ZyBZ+dDAUDRy0vlm4wTcBAqeTcC
         WA4g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW9HLpOPRem7waeyPAbH6FUN95HDQW78Jgtnw5hjzLoEINXEK7d
	O9sz/FOgOyOkfb6Zj6fo2bo=
X-Google-Smtp-Source: APXvYqzLJnV3naWZnUOXfCX+Y3jt+50MWln4rOFFAcZ718WEzsAw7fIFP/PoZs7TCUUQ3b24SCLVvQ==
X-Received: by 2002:a05:6102:143:: with SMTP id a3mr12511579vsr.151.1579525609566;
        Mon, 20 Jan 2020 05:06:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:b41:: with SMTP id 62ls2836141vsl.9.gmail; Mon, 20 Jan
 2020 05:06:49 -0800 (PST)
X-Received: by 2002:a67:7795:: with SMTP id s143mr12869500vsc.227.1579525609083;
        Mon, 20 Jan 2020 05:06:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579525609; cv=none;
        d=google.com; s=arc-20160816;
        b=mheggmHTR78JL1Ft4V9X+tvdat3MSUcEn2ySihgJsHaffxqUxXfmD+nOevwF4Je61G
         KGv6FDYCrWE9+72wp4ogwJwQrKOyqIu90EG40A1hNWL/wbkMCnH02vNtx5bFOOK8btja
         zwJUx2QvTbcFEkdIxoB4kByXXkPX9615MHG0CuHboGVxKs6Ws//eHgzlDglJPq+KwfeS
         hH1ya9pyqMB1F6BUv5i1m4Jk8Hfb3kEIYE0KQvraDuUUfkPc3IBz6zjaGe7cADyodXaC
         X7qkcNg69hnoPeslQHbZK/s4lB425mRRWp5ma82beuAO/6rb0GjEeEp2GAtMNfjaCVel
         048Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:cc:to:from:subject:dkim-signature;
        bh=7IAXBDFkgfYZb6jYbPCIfSxSrRJljsDfL8EJ2SI6Ugw=;
        b=LJRf4iDXJEQWi0dpRSVAi3DRkkqz3OPCuc3VdSkvicagk00IJJHtMULjahG/OyqfnB
         LaTzrJNEns3NzQHwwnm1ebOnbiaZxO0ZzHv/gWdxVRXjPLTljcE0z/wLZNtKwGygaHWB
         DyaTvTEFKLLcPeRRq1iyniFN2OSpecgOmCbyCITYiRxBRsx1gWD3ZAA8FVSSoSbnaX85
         K1Van7vzGpMIOBCnogznAQ6u+5rUtu4x2UQZPFarlUujFxeuKGhcLjGDWMPnOozT7tlC
         X6dhiPLT2YnmEvwTNNzbAnw7gP1Pyps74Zy5ckUI39NqTltuZ9XNY8wWoZDj/s79IQAh
         bA7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=EOI8es3o;
       spf=pass (google.com: domain of toke@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id t16si736811vsn.0.2020.01.20.05.06.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Jan 2020 05:06:49 -0800 (PST)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Received: from mail-lf1-f70.google.com (mail-lf1-f70.google.com
 [209.85.167.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-416-sY-MGE1MPs2NalMVF_iSRA-1; Mon, 20 Jan 2020 08:06:47 -0500
Received: by mail-lf1-f70.google.com with SMTP id j193so934632lfj.9
        for <clang-built-linux@googlegroups.com>; Mon, 20 Jan 2020 05:06:46 -0800 (PST)
X-Received: by 2002:ac2:5e2e:: with SMTP id o14mr7404725lfg.198.1579525605661;
        Mon, 20 Jan 2020 05:06:45 -0800 (PST)
X-Received: by 2002:ac2:5e2e:: with SMTP id o14mr7404688lfg.198.1579525605362;
        Mon, 20 Jan 2020 05:06:45 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([85.204.121.218])
        by smtp.gmail.com with ESMTPSA id b22sm20503583lji.99.2020.01.20.05.06.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jan 2020 05:06:44 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 89C7B1804D7; Mon, 20 Jan 2020 14:06:43 +0100 (CET)
Subject: [PATCH bpf-next v5 03/11] selftests: Pass VMLINUX_BTF to runqslower
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
Date: Mon, 20 Jan 2020 14:06:43 +0100
Message-ID: <157952560344.1683545.2723631988771664417.stgit@toke.dk>
In-Reply-To: <157952560001.1683545.16757917515390545122.stgit@toke.dk>
References: <157952560001.1683545.16757917515390545122.stgit@toke.dk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-MC-Unique: sY-MGE1MPs2NalMVF_iSRA-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=EOI8es3o;
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

Add a VMLINUX_BTF variable with the locally-built path when calling the
runqslower Makefile from selftests. This makes sure a simple 'make'
invocation in the selftests dir works even when there is no BTF information
for the running kernel. Do a wildcard expansion and include the same paths
for BTF for the running kernel as in the runqslower Makefile, to make it
possible to build selftests without having a vmlinux in the local tree.

Also fix the make invocation to use $(OUTPUT)/tools as the destination
directory instead of $(CURDIR)/tools.

Fixes: 3a0d3092a4ed ("selftests/bpf: Build runqslower from selftests")
Acked-by: Andrii Nakryiko <andriin@fb.com>
Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
---
 tools/testing/selftests/bpf/Makefile |    8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/tools/testing/selftests/bpf/Makefile b/tools/testing/selftests=
/bpf/Makefile
index 246d09ffb296..8240282aef7f 100644
--- a/tools/testing/selftests/bpf/Makefile
+++ b/tools/testing/selftests/bpf/Makefile
@@ -124,10 +124,14 @@ $(OUTPUT)/test_stub.o: test_stub.c
 	$(call msg,CC,,$@)
 	$(CC) -c $(CFLAGS) -o $@ $<
=20
+VMLINUX_BTF_PATHS :=3D $(abspath ../../../../vmlinux)			\
+			       /sys/kernel/btf/vmlinux			\
+			       /boot/vmlinux-$(shell uname -r)
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
clang-built-linux/157952560344.1683545.2723631988771664417.stgit%40toke.dk.
