Return-Path: <clang-built-linux+bncBCGYFYHOWEFRB4N37TYAKGQED6BPKDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id 84BE613C515
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jan 2020 15:13:06 +0100 (CET)
Received: by mail-qk1-x73e.google.com with SMTP id 143sf10744820qkg.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jan 2020 06:13:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579097585; cv=pass;
        d=google.com; s=arc-20160816;
        b=Nei6Jc+PBceSPKA13wzYTgy+tl2FR2vx96RAv4i4z/l3+u8I+eHVQYd8fr+wZF64Ey
         nUdVIvPagZLE+fFwle5s2hp/iO2twCWuHMjk2gWbJlGvCzqmgmzNv5/mIa+wiRCxBQo5
         YZLvXlPMKLbYh1QX6d0xvCRtwKvB/A2ggh29tP/tCyDxDIEqqp0+aIdxSPD4JNgfLc5S
         K3cQ6yfV2uXgLM+ioVHVdYYL0agSk7TjM4q2uiygGnDFKu9gnIjLQfEPrX8po736WEQf
         LZQJIKgo9Z+FjDDJIX65tPBOAaYoam4NIuuqL0NShdyuYccN24RB02iCNfNmi0SFf3Wa
         8URA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:message-id:date:cc
         :to:from:subject:sender:dkim-signature;
        bh=N9NUiQXHLR9BM4xOnosEgowoJITB+QUi/259E1hEAME=;
        b=QCY7WcPmasYoFXcCc3iVYuhYkJ9PEqLCjhjaTNmxX25n7YF/e7zpveiY7a6DXl2tCM
         uHWohzeGg41wyZY3wybCnwk8X7miQWAYuUONI1n2kBbscAdR0G7pNTJxw+A0v9IiRfWx
         iqTLoy366hHs2YC/5UpVMlPzhv4Ku5M+ib6urjeIqVLpF+piKbd9qsX0xRRbZYeObPf2
         1aiJlS26Q1w2TVRJhtSKjFVLQmObZJDzuGrmw1hLt5P+94II5Vw4Y+WxnwIFLRhfO1v4
         op481oQ3YEA9uj1v0Fg/cghYvM/OJjxbERQLn1fnSF4h53ge73ZSxVx2OLO5AtI46Gq7
         FzNA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=MBnCKeJf;
       spf=pass (google.com: domain of toke@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:date:message-id:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=N9NUiQXHLR9BM4xOnosEgowoJITB+QUi/259E1hEAME=;
        b=N5nogx7KlsPWAC/n4ulEzEs7VIA6AM2U2NAeKceA6C4xik6e3a/pzGxfTi7XNlP4gA
         b2vVuHKhWY2yzcZzR80hTsRBChfFcWEKj/STKbarve2S2/V1cmy1KJma41UQq0I4upyB
         OBV2xdSXlFpEP/RjZmZoxy9/bYY0h1q16bmXdD9AXeo6xyVVUW+/35gcpkeJkJTSj6z/
         vwZsVM4es/A8t5S/50YH2Bgy0cBJod2f1SBS1cecVGC/vXda+4HCA8eYwWE8RgU8VnJW
         73Y/TieRAvURddrxGBEU5UjSFOmQpHbsbTXOgmKPnTUWiKzf3ML2av72q/YZldiZqg7A
         eimg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:date:message-id
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N9NUiQXHLR9BM4xOnosEgowoJITB+QUi/259E1hEAME=;
        b=YDVDI5/Et+YUMHSsn0SVDS1V7nfMj9v0pMzXTbIyLdK4JOKCamEfdWT3mLUohz6MLS
         ttbjqnDh2eTj3OPK0EfXHaH9PIi/dKhNllSP4m2aqPRCGa6ILt+5I6brC30nRNEeCbcz
         k3tEBCls16LaYEL1gNe6p2x/seiYFVfC0dyLv33Gj1e2eDjVz4GqnDl9rZJTxQ429vuM
         TwUlTcWb5Wbx6JRJ/eR+78sFiv+q0SjIJS5sywZvkIeNgvL22i06zn/bISft2BviPGk0
         covQg+78ZJa9cJOrzpj7PVa5eoLeThEu7zA/HypkoGCZsuazycRxMditO4vEP1VwgUkn
         1uJg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUScZapnTdFf1XtsMUC8tRnsBnEojcSbjCeM1ygQHmkch1TvI94
	kSrj6FJzAM0HH+/I3ody3qs=
X-Google-Smtp-Source: APXvYqxV369cr/JG2Aaa2DBprdTrygPpuSuykEdo97JU+SpsNnnG1jbuqBT0xkUUYnHbCGftwt+DNg==
X-Received: by 2002:ac8:3490:: with SMTP id w16mr3713289qtb.56.1579097585430;
        Wed, 15 Jan 2020 06:13:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:4f0:: with SMTP id cl16ls2330461qvb.11.gmail; Wed,
 15 Jan 2020 06:13:05 -0800 (PST)
X-Received: by 2002:ad4:51cc:: with SMTP id p12mr25649634qvq.113.1579097585044;
        Wed, 15 Jan 2020 06:13:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579097585; cv=none;
        d=google.com; s=arc-20160816;
        b=K+gKMRt5faht+N6CxdNFPEYMciy+yARAYZOXlbJwvTNoGkZHF2ovNsTUmJgXpNf8Kj
         kB7ABSMT9m3cfzLXG9odRqb4ioPDCVKwIVUi7gfVQmT7s15PEYp7BZR8waR5A8S4Pkjk
         2V0QkSsNaUzmUq+Wl+1BSqHPEbzJZO01WUiK9N+V7qq438Yf6lfOwO1oQ93jGxfXJTKu
         Myi+ZByjlt/SHoDib7dOhnStS3phYyUyQAqYkZZyAsJ34dyBFvNr9/EhNTiD8gwk3lAE
         apBGEfuQLD4wOYyJ/ubQ/NwhRMFuQYFI5sYuQM5YOeNM62aOq2+IvryLybOeE6raKoGi
         NUHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:cc:to:from:subject:dkim-signature;
        bh=EIZY2VpuDWIT5UYlocFAYfMI39RTKNhPZeRb1l69QAQ=;
        b=tAmZojH1Jo/2uZfNMkyRpl3AFysV3skykaRmaabaX5USxSpVOjXKVhfMRUkro0PQzR
         BAki6RZSQpEB8qIz21k9fjJe0l2YE0O8Y4q3+EwXb2galPovgFqUhM8win7dUp8bGINN
         UVJ4jPG6DGrV4NIZ7NGSsq1mc/77jQ+Jp0Me/DYql4vBx9s8Rh1pVWm3sd5jAbzk9arY
         rQMJzx61dAMiMt0oEJmA1KhZHvjbL3JF0mQGST7Fq/BY844HHWYe5fCOI3K38Gj6Op0t
         T2G3yybDTP9TQYMSJr04IfAuT2w1iBPXuSXui2dO9E6jJ8GozdceZu4cm1EOAEc7IKJa
         pATA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=MBnCKeJf;
       spf=pass (google.com: domain of toke@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id y2si814954qtj.5.2020.01.15.06.13.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Jan 2020 06:13:04 -0800 (PST)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com
 [209.85.208.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-198-GU-9alWqOnmwm1MTq0F1fg-1; Wed, 15 Jan 2020 09:13:03 -0500
Received: by mail-lj1-f199.google.com with SMTP id f19so4189130ljm.0
        for <clang-built-linux@googlegroups.com>; Wed, 15 Jan 2020 06:13:03 -0800 (PST)
X-Received: by 2002:a19:5e16:: with SMTP id s22mr4861221lfb.33.1579097581952;
        Wed, 15 Jan 2020 06:13:01 -0800 (PST)
X-Received: by 2002:a19:5e16:: with SMTP id s22mr4861193lfb.33.1579097581717;
        Wed, 15 Jan 2020 06:13:01 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
        by smtp.gmail.com with ESMTPSA id i17sm9293135ljd.34.2020.01.15.06.12.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2020 06:13:01 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id AA90D1804D8; Wed, 15 Jan 2020 15:12:58 +0100 (CET)
Subject: [PATCH bpf-next v2 09/10] selftests: Remove tools/lib/bpf from
 include path
From: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Alexei Starovoitov <ast@kernel.org>
Cc: Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>,
 Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>,
 Andrii Nakryiko <andriin@fb.com>, Doug Ledford <dledford@redhat.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <jakub.kicinski@netronome.com>,
 Jesper Dangaard Brouer <brouer@redhat.com>,
 John Fastabend <john.fastabend@gmail.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Shuah Khan <shuah@kernel.org>, netdev@vger.kernel.org, bpf@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rdma@vger.kernel.org,
 linux-kselftest@vger.kernel.org, clang-built-linux@googlegroups.com
Date: Wed, 15 Jan 2020 15:12:58 +0100
Message-ID: <157909757860.1192265.1725940708658939712.stgit@toke.dk>
In-Reply-To: <157909756858.1192265.6657542187065456112.stgit@toke.dk>
References: <157909756858.1192265.6657542187065456112.stgit@toke.dk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-MC-Unique: GU-9alWqOnmwm1MTq0F1fg-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=MBnCKeJf;
       spf=pass (google.com: domain of toke@redhat.com designates
 205.139.110.120 as permitted sender) smtp.mailfrom=toke@redhat.com;
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

To make sure no new files are introduced that doesn't include the bpf/
prefix in its #include, remove tools/lib/bpf from the include path
entirely, and use tools/lib instead. To fix the original issue with
bpf_helper_defs.h being stale, change the Makefile rule to regenerate the
file in the lib/bpf dir instead of having a local copy in selftests.

Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
---
 tools/testing/selftests/bpf/.gitignore |    3 ++-
 tools/testing/selftests/bpf/Makefile   |   16 ++++++++--------
 2 files changed, 10 insertions(+), 9 deletions(-)

diff --git a/tools/testing/selftests/bpf/.gitignore b/tools/testing/selftes=
ts/bpf/.gitignore
index 1d14e3ab70be..17dd02651dee 100644
--- a/tools/testing/selftests/bpf/.gitignore
+++ b/tools/testing/selftests/bpf/.gitignore
@@ -33,10 +33,11 @@ libbpf.pc
 libbpf.so.*
 test_hashmap
 test_btf_dump
+test_cgroup_attach
+test_select_reuseport
 xdping
 test_cpp
 *.skel.h
 /no_alu32
 /bpf_gcc
 /tools
-bpf_helper_defs.h
diff --git a/tools/testing/selftests/bpf/Makefile b/tools/testing/selftests=
/bpf/Makefile
index cd98ae875e30..4889cc3ead4b 100644
--- a/tools/testing/selftests/bpf/Makefile
+++ b/tools/testing/selftests/bpf/Makefile
@@ -21,7 +21,7 @@ LLC		?=3D llc
 LLVM_OBJCOPY	?=3D llvm-objcopy
 BPF_GCC		?=3D $(shell command -v bpf-gcc;)
 CFLAGS +=3D -g -Wall -O2 $(GENFLAGS) -I$(CURDIR) -I$(APIDIR) -I$(LIBDIR)  =
\
-	  -I$(BPFDIR) -I$(GENDIR) -I$(TOOLSINCDIR)			\
+	  -I$(GENDIR) -I$(TOOLSINCDIR)			\
 	  -Dbpf_prog_load=3Dbpf_prog_test_load				\
 	  -Dbpf_load_program=3Dbpf_test_load_program
 LDLIBS +=3D -lcap -lelf -lz -lrt -lpthread
@@ -129,7 +129,7 @@ $(OUTPUT)/runqslower: force
 	$(Q)$(MAKE) $(submake_extras) -C $(TOOLSDIR)/bpf/runqslower	      \
 		    OUTPUT=3D$(CURDIR)/tools/
=20
-BPFOBJ :=3D $(OUTPUT)/libbpf.a
+BPFOBJ :=3D $(BPFDIR)/libbpf.a
=20
 $(TEST_GEN_PROGS) $(TEST_GEN_PROGS_EXTENDED): $(OUTPUT)/test_stub.o $(BPFO=
BJ)
=20
@@ -155,17 +155,17 @@ force:
 DEFAULT_BPFTOOL :=3D $(OUTPUT)/tools/sbin/bpftool
 BPFTOOL ?=3D $(DEFAULT_BPFTOOL)
=20
-$(DEFAULT_BPFTOOL): force
+$(DEFAULT_BPFTOOL): force $(BPFOBJ)
 	$(Q)$(MAKE) $(submake_extras)  -C $(BPFTOOLDIR)			      \
 		    prefix=3D DESTDIR=3D$(OUTPUT)/tools/ install
=20
 $(BPFOBJ): force
-	$(Q)$(MAKE) $(submake_extras) -C $(BPFDIR) OUTPUT=3D$(OUTPUT)/
+	$(Q)$(MAKE) $(submake_extras) -C $(BPFDIR) OUTPUT=3D$(BPFDIR)/ $(BPFOBJ)
=20
-BPF_HELPERS :=3D $(OUTPUT)/bpf_helper_defs.h $(wildcard $(BPFDIR)/bpf_*.h)
-$(OUTPUT)/bpf_helper_defs.h: $(BPFOBJ)
+BPF_HELPERS :=3D $(BPFDIR)/bpf_helper_defs.h $(wildcard $(BPFDIR)/bpf_*.h)
+$(BPFDIR)/bpf_helper_defs.h: $(BPFOBJ)
 	$(Q)$(MAKE) $(submake_extras) -C $(BPFDIR)			      \
-		    OUTPUT=3D$(OUTPUT)/ $(OUTPUT)/bpf_helper_defs.h
+		OUTPUT=3D$(BPFDIR)/ $(BPFDIR)/bpf_helper_defs.h
=20
 # Get Clang's default includes on this system, as opposed to those seen by
 # '-target bpf'. This fixes "missing" files on some architectures/distros,
@@ -186,7 +186,7 @@ MENDIAN=3D$(if $(IS_LITTLE_ENDIAN),-mlittle-endian,-mbi=
g-endian)
 CLANG_SYS_INCLUDES =3D $(call get_sys_includes,$(CLANG))
 BPF_CFLAGS =3D -g -D__TARGET_ARCH_$(SRCARCH) $(MENDIAN) 			\
 	     -I$(OUTPUT) -I$(CURDIR) -I$(CURDIR)/include/uapi		\
-	     -I$(APIDIR) -I$(LIBDIR) -I$(BPFDIR) -I$(abspath $(OUTPUT)/../usr/inc=
lude)
+	     -I$(APIDIR) -I$(LIBDIR) -I$(abspath $(OUTPUT)/../usr/include)
=20
 CLANG_CFLAGS =3D $(CLANG_SYS_INCLUDES) \
 	       -Wno-compare-distinct-pointer-types

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/157909757860.1192265.1725940708658939712.stgit%40toke.dk.
