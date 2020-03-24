Return-Path: <clang-built-linux+bncBAABBBHQ5DZQKGQEHUARPQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa38.google.com (mail-vk1-xa38.google.com [IPv6:2607:f8b0:4864:20::a38])
	by mail.lfdr.de (Postfix) with ESMTPS id 7821B1916A1
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 17:40:37 +0100 (CET)
Received: by mail-vk1-xa38.google.com with SMTP id s4sf6693697vkk.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 09:40:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585068036; cv=pass;
        d=google.com; s=arc-20160816;
        b=k4GQhUai81BxOF1tFWN9UkdI4AExxbhRA06Ee1KpAmWwImFtKZfnSrBYcuWU7R2FO0
         Wjswa6tIjfic75kq4bOu9ZR7honUt7Gjk2gWFQ5EShNP808FRPu4DDToO3xRlcAMF6Od
         38fdyrFZSL43YpXtH4Q73gn9BZXaIikTNsPBvxPaHy1gBJOeCsJU8r7qDjPKBfZwwLTD
         t7ZCKkwN6hVIO1O1VmZqiQasYdFLtFHx//MpdtoD6XIq40H09G3yREAw+rQszFrY/Fhw
         /p1nQjGPScSaEziR7n5ul3wMMvU+++0bGjYxokxfF2Br78oQD+lU3hXNs4aIbrgfrwyS
         v7HA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :dkim-filter:mime-version:sender:dkim-signature;
        bh=1J7r4ixCfJLW1LWIwfvxLanDA4LqDHI3bEDmc9ozY6c=;
        b=qeniawAAAY/9y9XBsku7oLUYQiRk5s5lxn94R0IkFcwaChR7P0+ECY6AC5dHlekISY
         1JbS4VXvTnhfFzeVWB+tJv77QgmHVyCBZ7qXgH8sNCUENdBE1Srwy7kTIQ2mM8/HlZbc
         6jjpA0oYgBU0NzAtzHiDKatuarMKQxdMGbQjtlxIrzKuXcjAUp353IiavmtAE8j53MGw
         Wp8Jxm4A6/g/W6LftdOgBgFooJuNbOE1OW498AvnluDHP+FcGHka5QEdzUtDHQ78Fgj1
         4p0Nupgu3ufrdN0e3jzaQG+Z3xbLDW2SMnQKpAmneL5ihE6d5x8n1uSssnIE+i3MEQha
         E1Hg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=OFracP2A;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1J7r4ixCfJLW1LWIwfvxLanDA4LqDHI3bEDmc9ozY6c=;
        b=tKfGuAe/p9whxKRVkZRyoSc0BA5zk+nJJOAvxNznZtubwdadXZI6giPL9du3Z4v3Kv
         gWI3+WAB+kq9gA1qZzRBuzP1ScV0AMP2hvwDfaZSpZ7B97WHWyH4MgQiywTjeNmLUAnE
         G/GY0rpR+vwslq1eHA8uFXjvjBNE5qxIDwoV2xiGFs2fDmbXd8h74Ob6uHGBbNjW7t0z
         6sC9gB18/x8Vb5QyzH2JSxGEGgRG+x12wAwj55W4f8xiiLCpA+1B0vGXmr4D1YrRVH1T
         n3xYyDR9G4xro57o4lo8MYb7WkGlVLFqai68YK07S4Napq5kn4HqVNsUGkoR/1/h+x+P
         v37Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1J7r4ixCfJLW1LWIwfvxLanDA4LqDHI3bEDmc9ozY6c=;
        b=IcTnAukcQgiPErLt/dkx5a6ijsOsgCj25Vg7tav28WvTfIIDRsKkSjCM34DsujDqij
         eQL1vw31WagnGQwtHPpQAzIXp3kSurEMAOFM/cp58XuCQlRfH94YQLk/Y/AZOOfrLcx1
         lOZrl1z496fEhrepxcGs8D8taL/v/xMrUtVK/shC5nPAHQ4VcHhdgW4bzK7l7ZvHhD9J
         lBFr0pzaLI/no/PVK66n/eUBCoeiPW+h6a1gzQfPBfBM9mebFfOm2Jqr8U1Ap40ntf6L
         QfjOq2MNac3GSymJgf4SHh6zv5C72BJ2hYGAisEqu8cFq/T6XPbyrA3qOCXJwcpRZDAa
         +V3w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3Cvt0n6dzF0jKJ4qx+iEDovLY8wY2XOw0sKruDiMtaDdDy25cp
	PaB8+iDSKBIkiRaH4Dk/ABM=
X-Google-Smtp-Source: ADFU+vuLG+AZXrs8kcQtz53c7qm3XMt0/EqUm/zt9p5yg3RZWTQ7ns8DwWrC6FZ9WfNkq+/nB+Y2iQ==
X-Received: by 2002:a9f:3b08:: with SMTP id i8mr18779495uah.68.1585068036445;
        Tue, 24 Mar 2020 09:40:36 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:ae95:: with SMTP id x143ls989256vke.3.gmail; Tue, 24 Mar
 2020 09:40:36 -0700 (PDT)
X-Received: by 2002:ac5:cd83:: with SMTP id i3mr1034164vka.58.1585068036040;
        Tue, 24 Mar 2020 09:40:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585068036; cv=none;
        d=google.com; s=arc-20160816;
        b=mYU50fwlNU38+hx7oPjCyG7Qb++2H0p2amkQNJIINwWExKLavDwHYy7g2nJ/B2HPyN
         pbrKyOxpPLrlxmHzWTvL+X3rom1kJ9PHONCwJmUQFVIyOcpk8vRsoqGPs1Wo3bLRZHr2
         9bXEASW2lK1FHXiK2i4lb0P7KSzMwgBAStESWJ/7gwx72Pzgtfe9Tc5CwiJKYdB0QU0E
         WzTlPbuRT3wBnJn9FCZ6kMMV9+R0l2FjH1guh4KNsA+GuJndJ6gw1BV+HYxlXa7Bnwfq
         duqCo9wVJTQqxBCwrA4WQ9/2fmvsEpgNhk757+vcCwziWasbNMImns6u3WG7DgwoMJ1t
         40yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=famtRWyjSfbAbF0DizSZCf3n5XKV3RZa5LsuHJNtpdI=;
        b=cjqvdbB6sipOOpRIrLk9mugyrlFm86WjCL77yzSzn0vhvZUSYALNmYHym+qVyrqGF5
         rAOq9qEQAv22T6HVBO4Iv57XxFuFEzO/UU80nTrnA3S2AZA8sc3dER0eIBXtXCcES1q+
         vHb+LPb8vKM/rHxsXxYonZMGcaW3bcAUHHKjmdK8+crT0DFh+L8BHY+Sp7YJ0babWHcV
         c7eelgy4XHeVCxxIi9JA5ibgDpWhYK3lZ2w5LnA1Xn8wD162KYClSGkGSnAYCqUuQIBF
         I/6HC23krAaXoK/ZEy/c5lyPMjmAwN4DlBHAF5GRvlNdVkPDEZclhDbumBx2+f64yUDA
         UN5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=OFracP2A;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-12.nifty.com (conuserg-12.nifty.com. [210.131.2.79])
        by gmr-mx.google.com with ESMTPS id h6si776077vko.4.2020.03.24.09.40.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Mar 2020 09:40:36 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) client-ip=210.131.2.79;
Received: from grover.flets-west.jp (softbank126093102113.bbtec.net [126.93.102.113]) (authenticated)
	by conuserg-12.nifty.com with ESMTP id 02OGeCI1005472;
	Wed, 25 Mar 2020 01:40:12 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com 02OGeCI1005472
X-Nifty-SrcIP: [126.93.102.113]
From: Masahiro Yamada <masahiroy@kernel.org>
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        linux-mips@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, Masahiro Yamada <masahiroy@kernel.org>,
        Alexander Lobakin <alobakin@dlink.ru>,
        Paul Burton <paulburton@kernel.org>,
        clang-built-linux@googlegroups.com
Subject: [PATCH] MIPS: mark some functions as weak to avoid conflict with Octeon ones
Date: Wed, 25 Mar 2020 01:40:05 +0900
Message-Id: <20200324164005.8259-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=OFracP2A;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

MIPS provides multiple definitions for the following functions:

  fw_init_cmdline
  __delay
  __udelay
  __ndelay
  memmove
  __rmemcpy
  memcpy
  __copy_user

The generic ones are defined in lib-y objects, which are overridden by
the Octeon ones when CONFIG_CAVIUM_OCTEON_SOC is enabled.

The use of EXPORT_SYMBOL in static libraries potentially causes a
problem for the llvm linker [1]. So, I want to forcibly link lib-y
objects to vmlinux when CONFIG_MODULES=y.

As a groundwork, we must fix multiple definitions that have been
hidden by lib-y.

In this case, the generic implementations in arch/mips/lib/ are
weaker than the ones in arch/mips/cavium-octen/, so annotating __weak
is a straight-forward solution.

I also removed EXPORT_SYMBOL from the Octeon files to avoid the
'exported twice' warnings from modpost.

[1]: https://github.com/ClangBuiltLinux/linux/issues/515

Reported-by: kbuild test robot <lkp@intel.com>
Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 arch/mips/cavium-octeon/csrc-octeon.c   | 4 ----
 arch/mips/cavium-octeon/octeon-memcpy.S | 3 ---
 arch/mips/fw/lib/cmdline.c              | 2 +-
 arch/mips/lib/delay.c                   | 6 +++---
 arch/mips/lib/memcpy.S                  | 5 +++++
 5 files changed, 9 insertions(+), 11 deletions(-)

diff --git a/arch/mips/cavium-octeon/csrc-octeon.c b/arch/mips/cavium-octeon/csrc-octeon.c
index 124817609ce0..fdc28fb5eda4 100644
--- a/arch/mips/cavium-octeon/csrc-octeon.c
+++ b/arch/mips/cavium-octeon/csrc-octeon.c
@@ -153,7 +153,6 @@ void __udelay(unsigned long us)
 	while (end > cur)
 		cur = read_c0_cvmcount();
 }
-EXPORT_SYMBOL(__udelay);
 
 void __ndelay(unsigned long ns)
 {
@@ -167,7 +166,6 @@ void __ndelay(unsigned long ns)
 	while (end > cur)
 		cur = read_c0_cvmcount();
 }
-EXPORT_SYMBOL(__ndelay);
 
 void __delay(unsigned long loops)
 {
@@ -179,8 +177,6 @@ void __delay(unsigned long loops)
 	while (end > cur)
 		cur = read_c0_cvmcount();
 }
-EXPORT_SYMBOL(__delay);
-
 
 /**
  * octeon_io_clk_delay - wait for a given number of io clock cycles to pass.
diff --git a/arch/mips/cavium-octeon/octeon-memcpy.S b/arch/mips/cavium-octeon/octeon-memcpy.S
index 0a7c9834b81c..3eb8d1a72d7f 100644
--- a/arch/mips/cavium-octeon/octeon-memcpy.S
+++ b/arch/mips/cavium-octeon/octeon-memcpy.S
@@ -147,11 +147,9 @@
  */
 	.align	5
 LEAF(memcpy)					/* a0=dst a1=src a2=len */
-EXPORT_SYMBOL(memcpy)
 	move	v0, dst				/* return value */
 __memcpy:
 FEXPORT(__copy_user)
-EXPORT_SYMBOL(__copy_user)
 	/*
 	 * Note: dst & src may be unaligned, len may be 0
 	 * Temps
@@ -438,7 +436,6 @@ s_exc:
 
 	.align	5
 LEAF(memmove)
-EXPORT_SYMBOL(memmove)
 	ADD	t0, a0, a2
 	ADD	t1, a1, a2
 	sltu	t0, a1, t0			# dst + len <= src -> memcpy
diff --git a/arch/mips/fw/lib/cmdline.c b/arch/mips/fw/lib/cmdline.c
index 6ecda64ad184..e1f9a0c23005 100644
--- a/arch/mips/fw/lib/cmdline.c
+++ b/arch/mips/fw/lib/cmdline.c
@@ -16,7 +16,7 @@ int fw_argc;
 int *_fw_argv;
 int *_fw_envp;
 
-void __init fw_init_cmdline(void)
+void __init __weak fw_init_cmdline(void)
 {
 	int i;
 
diff --git a/arch/mips/lib/delay.c b/arch/mips/lib/delay.c
index 68c495ed71e3..ba0ae7da5ced 100644
--- a/arch/mips/lib/delay.c
+++ b/arch/mips/lib/delay.c
@@ -24,7 +24,7 @@
 #define GCC_DADDI_IMM_ASM() "r"
 #endif
 
-void __delay(unsigned long loops)
+void __weak __delay(unsigned long loops)
 {
 	__asm__ __volatile__ (
 	"	.set	noreorder				\n"
@@ -48,7 +48,7 @@ EXPORT_SYMBOL(__delay);
  * a constant)
  */
 
-void __udelay(unsigned long us)
+void __weak __udelay(unsigned long us)
 {
 	unsigned int lpj = raw_current_cpu_data.udelay_val;
 
@@ -56,7 +56,7 @@ void __udelay(unsigned long us)
 }
 EXPORT_SYMBOL(__udelay);
 
-void __ndelay(unsigned long ns)
+void __weak __ndelay(unsigned long ns)
 {
 	unsigned int lpj = raw_current_cpu_data.udelay_val;
 
diff --git a/arch/mips/lib/memcpy.S b/arch/mips/lib/memcpy.S
index f7994d936505..f2f58326b927 100644
--- a/arch/mips/lib/memcpy.S
+++ b/arch/mips/lib/memcpy.S
@@ -598,6 +598,9 @@ SEXC(1)
 	 nop
 	.endm
 
+	.weak memmove
+	.weak __rmemcpy
+
 	.align	5
 LEAF(memmove)
 EXPORT_SYMBOL(memmove)
@@ -655,6 +658,8 @@ LEAF(__rmemcpy)					/* a0=dst a1=src a2=len */
  * the number of uncopied bytes.
  * memcpy sets v0 to dst.
  */
+	.weak memcpy
+	.weak __copy_user
 	.align	5
 LEAF(memcpy)					/* a0=dst a1=src a2=len */
 EXPORT_SYMBOL(memcpy)
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200324164005.8259-1-masahiroy%40kernel.org.
