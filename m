Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBDUM7HWAKGQE47VFMSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FAE1D19BE
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Oct 2019 22:41:50 +0200 (CEST)
Received: by mail-wm1-x33a.google.com with SMTP id g67sf1119519wmg.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Oct 2019 13:41:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570653710; cv=pass;
        d=google.com; s=arc-20160816;
        b=WH2ptgdjJzFt63+kg3oRia002FajjIVEs0HBv3ZcXKtxFc2J9JQC3q0PwcXj2Vd59Y
         jrORtPog4GiitNi52bgJ8luJHOgbqywmzdKJs8r6Stbj/DgUBrQMekIxxN8gXi+fncEm
         BsbmHlUrY31XBidmPR4cAe69Yzy64N+YePyeiXwsKF75OV6LBWPBWajMr4Uhub2JsJHA
         eRQTEY0AVPlDYBuMD+l1J6JAoaNn3NJdl8LZtw6KzcuKkLe65jP2H37cLHYX+JviP1eL
         //J+oAYTlGQz9yfwTcoPGewUajkwkR2jNyLfHCkFY3bO0gQoX4jTf4STV0agiSOu66l1
         +Dvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=FFW3pxUYDCxq6dvv1iPlW46yzNKrbjHnNV88eGc9f9I=;
        b=aVuB9LfO70kmfLOPswXfp8KTyq35cvLa77y0qplEKIrc7NVF9uc9isdPwGnQVwhL8d
         bD3MBZyxqaibkd2UU0wrw6V42TDZ5pcUXNYy7Blz2SD25ESHDZU/T4mPAhPTchtFfK4H
         /CX+pfw6R8n20k47H4YSQb3D2z+ieBGV55olAOuT+UqTNo14gsoFgDS3ajtk93564U1k
         LJmOfZy31B2Y26wvdFlTghjJjyEuc2OfonPTUOR69LLblhknhY/E4I69z+tgZdWV/6nH
         rR10c9h5037KbhcDeisWM9/lkQJ1ITpHXzQJJXfHW51h+z7kYE2bny+zewFoUx+wrg3h
         R9ag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=XxRSaB97;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FFW3pxUYDCxq6dvv1iPlW46yzNKrbjHnNV88eGc9f9I=;
        b=obeE+JJkNCfbfFQWTCOK8WQH/FagJ9ofRXxiNa8N0gHnl2YBJ8rQi/hRGwphMBWThd
         vjRRjLa7IBBgbBRXjXGIgPcCkAk0SwU4ZiwgY7Xxs2+9C8ADX+va9Avqv/LkiEem5xPg
         oHCcJHbvUaYJyIVLuZI6xF4UIkHTbOX3GB1fa1fpUXtjxnzvWM86LRPeZ/t4ALl91PW/
         oI6XqkhHIJaQ05ubwHXYMYde81D0kYt+7wkhPlC0hw14eGO+L6w0lkOLVa60bInYRXrs
         ez//oDcOtSb/K+pbhWME3sJftV61u1hGOad56SqZI1pIPkYMJfEqHbg8ylIiPqvuUXAJ
         MAXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FFW3pxUYDCxq6dvv1iPlW46yzNKrbjHnNV88eGc9f9I=;
        b=s9wRh+kQdQFkN7+pSz1LLYht9HxCtjX4iRgoEieZY2Zrfw6AH2lwow2BCPr3ZWeov6
         NxrvCSZjO+Ouxz+lHZ4X68Hmpdi+SKGeqAEaEKdGSWsxDMKXI8mjnO+f0N+xgZrTYfTz
         53KYCla+LOAEZ4ACo4C0MgfBbo6doj0BwYqM5/V2+PgcnmnW+hybTnsaUxd7MDrTmRtM
         5sS2XaKUVAcePYTigg0IDISOYPy0LEohCBuTxfgvaXkxBW+lLIU74APU3Yo7mwLJbd01
         jH+KtVsXVhqyZ1Uzym6qXaVDEBic62rQ9mCLdZtf+5Ft61KhIlApecipuZ/h5Kg4UShO
         P7zw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWA7ejd6m+5RCaVkpkNS/tmefwiadQuYxM4PBpx5uKTHLYJo0AX
	BdtNDw3KB5X8fpdQ41VR4qo=
X-Google-Smtp-Source: APXvYqzqPBGRxI9uUzlv2xmDt4ZnCpzuIAglL2Px+VP2FxMk/BpZegYTxhIN+RmfUThUhnxE3ZhRTA==
X-Received: by 2002:adf:df0e:: with SMTP id y14mr4810493wrl.312.1570653710329;
        Wed, 09 Oct 2019 13:41:50 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:dccc:: with SMTP id x12ls586389wrm.3.gmail; Wed, 09 Oct
 2019 13:41:49 -0700 (PDT)
X-Received: by 2002:a05:6000:44:: with SMTP id k4mr4830095wrx.121.1570653709884;
        Wed, 09 Oct 2019 13:41:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570653709; cv=none;
        d=google.com; s=arc-20160816;
        b=lAVjbxfidzJFBvZlOn++NDO00RukRVP/gDtznawBupQ2SqRPcw9yoxog4ZZCMKR/sU
         DFb+VbVEN3K7S3Zx22X0j3JW+anKp+X3chePnu1N5LnHNRA51wJy8WYN74XbRnl5pgH7
         2IpRWS6d1vudi69pYaSMTne4bDrZEleCcoOw6CIjGOSblFiynQyE8ikfPrQbDll/Snmd
         U5/m16iCo7HWP1infBVliH3t2DvznEUReIftUqANlKZSRbgCHOOHZvu5F/UOX8XH3kw0
         BWQjSrdy6xPm/qzXxVjVhoxXASKfTqRUxEGBQ1KSxu6n1huiukZm1GeMc1B2UMsVTEf+
         ckQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=IxUitNmcKfvxEmpW+0pRzzeuEr0YPZuYrEHpJHWrZps=;
        b=rp0wGsBiwav+sPxhWrmdLP4gaewV90mYRUwq2QaQNTNH0KiJ457lKTpIVzOVds6ypA
         r2L7jC7R4pX8wdqf7fB8PcDvkhl9q241WRnBvmhCjH17G0zA6vlRSCWdS6Gv7uo9xyu+
         1zJCTCHvvaM5eVruFJWelfxqPayQmE1K+utYadk2OrgkF0AiRxHQwYB3z3kJnmZfhpXD
         SeJ/b5hHEr+WhXE8eNaZu7gImiWYsnYOKzvmOz+HDH21ARu3M6yJ0lPkCdoFQV022vl3
         bfYChuIS2lKY3VI4oF1CEC1meNoQKeyAU3XGPTSvUa7f+RtmDVKayDto8H/WmPSZfGLG
         C+rw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=XxRSaB97;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com. [2a00:1450:4864:20::143])
        by gmr-mx.google.com with ESMTPS id f11si165319wrp.3.2019.10.09.13.41.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2019 13:41:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::143 as permitted sender) client-ip=2a00:1450:4864:20::143;
Received: by mail-lf1-x143.google.com with SMTP id r2so2662013lfn.8
        for <clang-built-linux@googlegroups.com>; Wed, 09 Oct 2019 13:41:49 -0700 (PDT)
X-Received: by 2002:a19:4352:: with SMTP id m18mr3247695lfj.27.1570653709288;
        Wed, 09 Oct 2019 13:41:49 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id h3sm730871ljf.12.2019.10.09.13.41.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2019 13:41:48 -0700 (PDT)
From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
To: ast@kernel.org,
	daniel@iogearbox.net,
	yhs@fb.com,
	davem@davemloft.net,
	jakub.kicinski@netronome.com,
	hawk@kernel.org,
	john.fastabend@gmail.com
Cc: linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	ilias.apalodimas@linaro.org,
	sergei.shtylyov@cogentembedded.com,
	Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Subject: [PATCH v4 bpf-next 07/15] samples/bpf: add makefile.target for separate CC target build
Date: Wed,  9 Oct 2019 23:41:26 +0300
Message-Id: <20191009204134.26960-8-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191009204134.26960-1-ivan.khoronzhuk@linaro.org>
References: <20191009204134.26960-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=XxRSaB97;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Content-Type: text/plain; charset="UTF-8"
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

The Makefile.target is added only and will be used in
sample/bpf/Makefile later in order to switch cross-compiling to CC
from HOSTCC environment.

The HOSTCC is supposed to build binaries and tools running on the host
afterwards, in order to simplify build or so, like "fixdep" or else.
In case of cross compiling "fixdep" is executed on host when the rest
samples should run on target arch. In order to build binaries for
target arch with CC and tools running on host with HOSTCC, lets add
Makefile.target for simplicity, having definition and routines similar
to ones, used in script/Makefile.host. This allows later add
cross-compilation to samples/bpf with minimum changes.

The tprog stands for target programs built with CC.

Makefile.target contains only stuff needed for samples/bpf, potentially
can be reused later and now needed only for unblocking tricky
samples/bpf cross compilation.

Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 samples/bpf/Makefile.target | 75 +++++++++++++++++++++++++++++++++++++
 1 file changed, 75 insertions(+)
 create mode 100644 samples/bpf/Makefile.target

diff --git a/samples/bpf/Makefile.target b/samples/bpf/Makefile.target
new file mode 100644
index 000000000000..7621f55e2947
--- /dev/null
+++ b/samples/bpf/Makefile.target
@@ -0,0 +1,75 @@
+# SPDX-License-Identifier: GPL-2.0
+# ==========================================================================
+# Building binaries on the host system
+# Binaries are not used during the compilation of the kernel, and intended
+# to be build for target board, target board can be host of course. Added to
+# build binaries to run not on host system.
+#
+# Sample syntax
+# tprogs-y := xsk_example
+# Will compile xsk_example.c and create an executable named xsk_example
+#
+# tprogs-y    := xdpsock
+# xdpsock-objs := xdpsock_1.o xdpsock_2.o
+# Will compile xdpsock_1.c and xdpsock_2.c, and then link the executable
+# xdpsock, based on xdpsock_1.o and xdpsock_2.o
+#
+# Derived from scripts/Makefile.host
+#
+__tprogs := $(sort $(tprogs-y))
+
+# C code
+# Executables compiled from a single .c file
+tprog-csingle	:= $(foreach m,$(__tprogs), \
+			$(if $($(m)-objs),,$(m)))
+
+# C executables linked based on several .o files
+tprog-cmulti	:= $(foreach m,$(__tprogs),\
+			$(if $($(m)-objs),$(m)))
+
+# Object (.o) files compiled from .c files
+tprog-cobjs	:= $(sort $(foreach m,$(__tprogs),$($(m)-objs)))
+
+tprog-csingle	:= $(addprefix $(obj)/,$(tprog-csingle))
+tprog-cmulti	:= $(addprefix $(obj)/,$(tprog-cmulti))
+tprog-cobjs	:= $(addprefix $(obj)/,$(tprog-cobjs))
+
+#####
+# Handle options to gcc. Support building with separate output directory
+
+_tprogc_flags   = $(TPROGS_CFLAGS) \
+                 $(TPROGCFLAGS_$(basetarget).o)
+
+# $(objtree)/$(obj) for including generated headers from checkin source files
+ifeq ($(KBUILD_EXTMOD),)
+ifdef building_out_of_srctree
+_tprogc_flags   += -I $(objtree)/$(obj)
+endif
+endif
+
+tprogc_flags    = -Wp,-MD,$(depfile) $(_tprogc_flags)
+
+# Create executable from a single .c file
+# tprog-csingle -> Executable
+quiet_cmd_tprog-csingle 	= CC  $@
+      cmd_tprog-csingle	= $(CC) $(tprogc_flags) $(TPROGS_LDFLAGS) -o $@ $< \
+		$(TPROGS_LDLIBS) $(TPROGLDLIBS_$(@F))
+$(tprog-csingle): $(obj)/%: $(src)/%.c FORCE
+	$(call if_changed_dep,tprog-csingle)
+
+# Link an executable based on list of .o files, all plain c
+# tprog-cmulti -> executable
+quiet_cmd_tprog-cmulti	= LD  $@
+      cmd_tprog-cmulti	= $(CC) $(tprogc_flags) $(TPROGS_LDFLAGS) -o $@ \
+			  $(addprefix $(obj)/,$($(@F)-objs)) \
+			  $(TPROGS_LDLIBS) $(TPROGLDLIBS_$(@F))
+$(tprog-cmulti): $(tprog-cobjs) FORCE
+	$(call if_changed,tprog-cmulti)
+$(call multi_depend, $(tprog-cmulti), , -objs)
+
+# Create .o file from a single .c file
+# tprog-cobjs -> .o
+quiet_cmd_tprog-cobjs	= CC  $@
+      cmd_tprog-cobjs	= $(CC) $(tprogc_flags) -c -o $@ $<
+$(tprog-cobjs): $(obj)/%.o: $(src)/%.c FORCE
+	$(call if_changed_dep,tprog-cobjs)
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191009204134.26960-8-ivan.khoronzhuk%40linaro.org.
