Return-Path: <clang-built-linux+bncBDSIZNM7U4BRB6WT7XVQKGQELKIGXXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id B0268B38AE
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 12:54:50 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id q10sf2620485wro.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 03:54:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568631290; cv=pass;
        d=google.com; s=arc-20160816;
        b=eiWsJ/4OaHIR77l0u3MeL5r2Gk4ywJLM/xwCWJBSnaSVrhCN+aPysrkG2lJ08ABOAl
         yV0Q7rAECXJQ6ylMyKLk63ThhXG+ekPEu7C0lLkk/NlrFTv2Q3vqTF8WqiLkQSJizXHP
         6isGy6HPbn8xe/oQPUU6TFM/m2Po1c1GaFgooUFggzXO3+HcsyPVUfHDHpGfeZg9of4L
         HDOjA12jBDYnRZArAczLk86MFUd79/Uy7gyEYKzaNZobaqb4/VKEj/fwKEqFxpRgluFU
         49F1aOsI7HMyP6CSvDVwbsnNZITaFUaBd5lR9G0zoMFBJhpnVaTldSs5rWB4SW2ewMkf
         6Aeg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=GWxSeZ0hBuvRe+DUEL9IyvAv2oxtY3HRf60QoWl01HQ=;
        b=Sl68sqGnfUqk16eRuZLQundM627FXmGuL+J6ySotTrXfELUg7ehJjBoUcrWt4jfHFn
         S+qmyQ0VGT5mg8YopwdRx0THzzKPsZzn4NuPxuiJAa8V7UCA7x6BPXFVkvyCifheoEyO
         1Lvf9CQ/XSNKP/9h6oYI3LkXMeFMNgublm6ahDu3hFLGNTROgc0c/Icb02krXMsvGJmj
         6AKx/iT1Qxp886Qn3+CyH6yJmNyWsay6IgO8AFQrMZwNojud84adKvI/om9VfFQyp2yw
         +05TCwpsWt5YrSLtLZ/pbN+1OJmw9sH578Kek6iNZwlCfvLdd+S1Lkt8nTGTazIYHuMn
         QWnw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Tp5OvP8r;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GWxSeZ0hBuvRe+DUEL9IyvAv2oxtY3HRf60QoWl01HQ=;
        b=KlKRzH2edG7rOHvlQZ6kc0HuTXab6WuVwbUR+xJxtoeZuJVRQwsCwlQAbkehg8oflO
         sWtCiuou/wjFROZKRFj8i4099bQwe4t9zP0DzY7hRfVaGKb41Ly92M1wDHaV91kiVnj+
         6c7BxmVoOUDvUDprqAZ5zpm/qnnroxvWbK62gvm36fctEt+QHjXJQ7cRlP2tCiFTwLcE
         nsaJnmasFzygOOVGBnX7sGfyj3N5AeA6lW0jgQ4rprPgqwSlrdwOPwf55hztA1TYPjZD
         2DT4eGc4c+oJ1mapXusKHp6X8D8rp4/Oye41unCVshQ1BhpnMRiHG8QUi6W7RU7taJ9I
         86hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GWxSeZ0hBuvRe+DUEL9IyvAv2oxtY3HRf60QoWl01HQ=;
        b=S69G9gcafrdasLFFLUYSXMWwMS8c5ACo077GrNCIYRbsrGsMNaEHKrXCl1xjVV5ibx
         o17EGNMD8A3fQkkDi7kfznmhA9oLs3ETvPQ+qyFsHCxgYymVBVGZZgeHAVXOBFKpCn5r
         NG6+Hpuv/xXuTiWL1sp0WgHJSaLLWPKiSaBxU0iyD38QvLvp5d+urU6eefwXzM0rVEOX
         p/t+STbqmJWgt9WUNi7+MCWpuKTcPIEZ3sWC0CHT88LQ9qgsLquKt976OT8jAe1Hgon4
         VL4j+KDARNET4vGnuvth6xY7Klx4KmyNyOHvDytsf+tuA8H1XhMl1a2eTkWzNWDTYpjD
         J6sQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVmw+qm2Bdx4ftnYBNJlPmNxWBJy3hOq9ulJoUV1fDef/JCuYEi
	jAIK01mXeQitShTvRwN0zcc=
X-Google-Smtp-Source: APXvYqyGENHqnm8AiJLoEwrxy0Y3W5qLEP7m7t6EQlwmhEAW8q9vwCCXB/PJ3jj7dKnyhibbbMFbrw==
X-Received: by 2002:a7b:c319:: with SMTP id k25mr14185187wmj.48.1568631290441;
        Mon, 16 Sep 2019 03:54:50 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:1a96:: with SMTP id a144ls4866640wma.3.gmail; Mon, 16
 Sep 2019 03:54:50 -0700 (PDT)
X-Received: by 2002:a1c:cbcc:: with SMTP id b195mr14656254wmg.80.1568631290043;
        Mon, 16 Sep 2019 03:54:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568631290; cv=none;
        d=google.com; s=arc-20160816;
        b=QUbr/vwN4XCFXE6HHeEMeybo5r/Mb0MARfrfZBvxGuR1t7DKxcxswXNIboW0Dh+dKk
         uIcOxw91WiPidGb+Mmnz4R32ktpH6Y891beCanA4v0CwHtlKrK7XCpCen1X4E/eaaPB2
         bO3XppOtWRf4B2eDnYACqi3eYACAoJDu3rR0vsiocwgb1kbWQ7zbVbRPRTRy3uQ6bsFd
         PbXG4XHA1juisg1X3uedmfCXJiRLm7N8rszq4usT+LWbrbS1VB/gsCovGkp3nwHDHp6r
         RD/oOlAn3R2fEGyxJlYeaWmp6ibep9XpEctQVURTaOTBAbeyjrhCF+AbG9sTeVf6M5G+
         rs/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=qALJbnp9FTLPJAoGDKJIaiGyevgs6xsdVhuDmgFkzac=;
        b=RutIywd/datTs+PjUYPfnuUJLqdPW4g/eZbgVAauZJndQXknwKDJ8uS/jaSX03Z9F5
         f9pDcF8rbNx6X4QNDg4nEK4pelJytm5BCEAGMkalqA7UakpCmbZL3YeL1aKkoVu6yomS
         D2FZAVuJbWVkmAsAV3jQHX03rWBIuc8Fz/1OSHa2PXyveTo92qijDsMdMiAiioVIyzV5
         EHM380RNxIK8Cbiil0/K5LjVSBSxeAmUw4q1Er4/QBGWB8GyVgveJ1vF6aSCvpw3cPku
         CquHPTQqcXYDsyVi9q6hzUZkIvpz+svhBnkNXUI+Q6aG4AWAoNEIpXFSjOkCCJqqf8wk
         OvLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Tp5OvP8r;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com. [2a00:1450:4864:20::143])
        by gmr-mx.google.com with ESMTPS id j9si555783wmh.1.2019.09.16.03.54.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Sep 2019 03:54:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::143 as permitted sender) client-ip=2a00:1450:4864:20::143;
Received: by mail-lf1-x143.google.com with SMTP id r22so15775233lfm.1
        for <clang-built-linux@googlegroups.com>; Mon, 16 Sep 2019 03:54:49 -0700 (PDT)
X-Received: by 2002:ac2:5451:: with SMTP id d17mr37030113lfn.77.1568631289427;
        Mon, 16 Sep 2019 03:54:49 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id v1sm8987737lfq.89.2019.09.16.03.54.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Sep 2019 03:54:48 -0700 (PDT)
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
	sergei.shtylyov@cogentembedded.com,
	Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Subject: [PATCH v3 bpf-next 07/14] samples: bpf: add makefile.target for separate CC target build
Date: Mon, 16 Sep 2019 13:54:26 +0300
Message-Id: <20190916105433.11404-8-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190916105433.11404-1-ivan.khoronzhuk@linaro.org>
References: <20190916105433.11404-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=Tp5OvP8r;       spf=pass
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

The makefile.target is added only and will be used in
sample/bpf/Makefile later in order to switch cross-compiling on CC
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
index 000000000000..fb6de63f7d2f
--- /dev/null
+++ b/samples/bpf/Makefile.target
@@ -0,0 +1,75 @@
+# SPDX-License-Identifier: GPL-2.0
+# ==========================================================================
+# Building binaries on the host system
+# Binaries are not used during the compilation of the kernel, and intendent
+# to be build for target board, target board can be host ofc. Added to build
+# binaries to run not on host system.
+#
+# Sample syntax (see Documentation/kbuild/makefiles.rst for reference)
+# tprogs-y := xsk_example
+# Will compile xdpsock_example.c and create an executable named xsk_example
+#
+# tprogs-y    := xdpsock
+# xdpsock-objs := xdpsock_1.o xdpsock_2.o
+# Will compile xdpsock_1.c and xdpsock_2.c, and then link the executable
+# xdpsock, based on xdpsock_1.o and xdpsock_2.o
+#
+# Inherited from scripts/Makefile.host
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190916105433.11404-8-ivan.khoronzhuk%40linaro.org.
