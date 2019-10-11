Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBL4Z77WAKGQETHGBGYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id B4E6ED35CC
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Oct 2019 02:28:31 +0200 (CEST)
Received: by mail-wm1-x33e.google.com with SMTP id s25sf2219976wmh.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Oct 2019 17:28:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570753711; cv=pass;
        d=google.com; s=arc-20160816;
        b=Lpi1dCUIPBo0XecaASU4gMgQ3CvVqaRxzCQYpXJXP7E4LfVPpnpkNyVo2zw5jDQ4m7
         VDd9QInFg/NQSNAGsnBX7RKKtsjyuYw1DF7nA1Ks2/eTn17qE/mU/bV/yKUoZSXrUlXg
         FpbAJjyh4/Ha5MwrXA8axce4d9bK57nQ5YLMm9ZltsGEE0aDMyeCttCKJ5Vn1hePohu8
         x/nsedaMEhy/u9NLhN32RbaoY+JXgXg10FYFBRtdec7dRHO5RA3Q+09Qec4viRwkF9g+
         Basg1zr/XWwbykteg4Yscj/QEgN/+GVVAntOqAzgG3SPzHV1MAjfzVB57vIBtY6pTbAk
         1LOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=Exaho13y3mD4iMmqvOA1r6QE/x5T+dKPaxq2+HhKXvQ=;
        b=l6z6JNQtwG9qVffE+wlT0hEYM6EQ2Lt7vsbFVtx7TGgEgCRd35F5atbvNISQWnds4D
         EyDD/tVuFEkXqUTRex7vna4FgAOJwrvhCz3misZy3FdqWqiRM7hLY93UawJC7ZiScYj7
         5+dOegHKX/mSbm9J6SW1xrxbR3PdZ7dXh45rR/G37j1xpT/8XRj5f4eOQtSfYWduyJo9
         8ZPIjaHNktfuA84aCzs8CKffJrrbcKHzMiw2Ac7WJ73daCm4Jweo9a4qmLTxMnn1qy8j
         hJuKz5WmjxEnyAAyrzq/j/Qg5eOGIBs07cjVBlcFheFEPZoDkOmgGVsq/lNako1z332A
         c/ww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=kTqYPLOm;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Exaho13y3mD4iMmqvOA1r6QE/x5T+dKPaxq2+HhKXvQ=;
        b=g/7GNw+o1nTvo6SnI9aFKX+fyKlUYqFZagge1AXsVW6uIfpRrnJ3WA940c4kjQ3AW+
         7hDwZnYQmh0SPeOjHxIL8Je8Zh014vW8nnIKYdaIkKbweGk01ADANplNZqdkJDSZvJmg
         apRrimcM5O05KhkPG7Y8ToP4w+EaFaMeW0D5z1Eb7GtU0Jt4abg017nTIVuXQCnogLNC
         LAdOARwtKph5NOPMFi6ygvoPiZkf9uvc8oEbL9rh2gpwe3JI4JriRDsp9qlZrFyhDteS
         0SliWzF3nSjLyERZq/xaa0oKAzf39SReXatQKpEvhXIvs9oBaEddAGT1aghxFuwSVfoE
         QmKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Exaho13y3mD4iMmqvOA1r6QE/x5T+dKPaxq2+HhKXvQ=;
        b=LPlQ5t4CqKLFz49axDE09ncrTsp/JPYY42cvZo9oMCfc8HwzXV1igsw88RPtSGTWDF
         UCueVgkbhp2TcP76aIQFcST73NZNg10VOv4aiqtmdPuEaMhCLk2n/SIInoMIp5u/fcvg
         3zUSweRfhBX2TKP/7772shG/Rcb5CFzQzAlxAttweyswIZJv0hV4neNuWOkcjqhENBKz
         Y3qKG+lM0NlcBTbiJzSZ7liQ1VOVjrTFZu4BmLFi7Nl6eP/pORvx/0ItJG1aQQxWGpcD
         yr5PBQNaBptdArm5+05j0AOhxzAT0FgBnHj5vXEah45fxR8I8y6r/ZgscKc5HGbpWyL7
         Sxzw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXkTj0o+X8asKYQYpUE+31PqtuwLXjPcks/cd6nrgBIgLBVqNCT
	AdTymZHO60Vl5MRY5CURv+0=
X-Google-Smtp-Source: APXvYqyoWFRO/Ol8Yd4xImmHRA+3swaIY19OOzg5qhlf9VWZGbE1xHsdf0iamteghZo5NyAMKf340A==
X-Received: by 2002:adf:9bc7:: with SMTP id e7mr11314441wrc.203.1570753711450;
        Thu, 10 Oct 2019 17:28:31 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c5c4:: with SMTP id n4ls2140985wmk.3.canary-gmail; Thu,
 10 Oct 2019 17:28:31 -0700 (PDT)
X-Received: by 2002:a1c:f60d:: with SMTP id w13mr892315wmc.150.1570753711005;
        Thu, 10 Oct 2019 17:28:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570753711; cv=none;
        d=google.com; s=arc-20160816;
        b=Q/c6XzS8E/j/S5R5WL4aLgUVxbnwUhFnEcCHZWdSB0A/BVeaqVKZlxesKa6ws5u627
         NI1/lWAWq0+5V8iTDNRUdyQhIHUMgfboKaT20TNkWcLkr+XYD7c3pVohWry+oMHzy0bN
         KrxQ5PQ+qGTuy0FqssVRqju20Ev0XeDlVyjH/Ff1vfWFNTawaeB2Z9a9ZFq+yc4B2bWG
         eN4iQJ9fxgqGwpf/26kIfYovQgana4Z84WmhGdEHliR/5343uTAHn2Wg5aTheHsyeThQ
         PX0dTziFSQQuIX/aviz74b+UDU2ddxCOVXP9jPalzeUk3rxuUWKQ6DMfc3YjzgPAVV+h
         jyPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=IxUitNmcKfvxEmpW+0pRzzeuEr0YPZuYrEHpJHWrZps=;
        b=yCodYrOP2ZGIvmN29jwrja0WbH/qXMf6IPzCfUWHE3byId/86JMYFokQ7Wdbo/85Dj
         Gu21jUuIk+Z3wXCANsmarD4GOLXC/uv0vCt05naXyfdiiZ3CY1y+Ga6SDVpE+rlqkum2
         xccF8Divaas7fvyI+mv5hR6JyozTmYSEkK1577r+y1Z2Um/ZKkol+JxU8lhjUzwr+bea
         3FAe3ah2QUUd7A7qYpiiWBmJOPT4h2K2ZfhRn+yY4LzJXkmQcgPcLJ8Rx8LOx4cLVilj
         gQh3fymyXOq5LW9kvQaYa0V8+djNDaz/SnJ8GtARKXm6UEus7on8C0d64dmnr0xgRHlO
         i/Lg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=kTqYPLOm;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com. [2a00:1450:4864:20::144])
        by gmr-mx.google.com with ESMTPS id u15si397113wmc.1.2019.10.10.17.28.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 17:28:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::144 as permitted sender) client-ip=2a00:1450:4864:20::144;
Received: by mail-lf1-x144.google.com with SMTP id y127so5737072lfc.0
        for <clang-built-linux@googlegroups.com>; Thu, 10 Oct 2019 17:28:30 -0700 (PDT)
X-Received: by 2002:ac2:42c7:: with SMTP id n7mr4905180lfl.138.1570753710432;
        Thu, 10 Oct 2019 17:28:30 -0700 (PDT)
Received: from localhost.localdomain (88-201-94-178.pool.ukrtel.net. [178.94.201.88])
        by smtp.gmail.com with ESMTPSA id 126sm2367010lfh.45.2019.10.10.17.28.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2019 17:28:29 -0700 (PDT)
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
Subject: [PATCH v5 bpf-next 07/15] samples/bpf: add makefile.target for separate CC target build
Date: Fri, 11 Oct 2019 03:28:00 +0300
Message-Id: <20191011002808.28206-8-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191011002808.28206-1-ivan.khoronzhuk@linaro.org>
References: <20191011002808.28206-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=kTqYPLOm;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191011002808.28206-8-ivan.khoronzhuk%40linaro.org.
