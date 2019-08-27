Return-Path: <clang-built-linux+bncBDYJPJO25UGBBVNKS3VQKGQE765W72Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A9B59F449
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 22:40:54 +0200 (CEST)
Received: by mail-oi1-x23f.google.com with SMTP id t207sf84759oif.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 13:40:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566938453; cv=pass;
        d=google.com; s=arc-20160816;
        b=0a8vQz4gUjQkw+laJg//QNZb2HZZHiSDNx0m0w8MaOf9Ix8e5XdslxnL8hBhy1wmQH
         Dviz2nJEecbog+165K61vBb1HZA6vOqiCBgYlWQPDZnxO4uDvc6yxJvPc0ykLwQvrDaV
         SbEwufLs7D1ReiY+FUbxeId9N3GDZItgeI0xRvtoCyGU71nEhAuwR15R6N9YeXUPcv1b
         fQGUxdeDXv0KGMi83Oqm99XXR5dLox6+bFGpK+G/FjBa53HFbj5PZI+N4yUx41I25Dax
         RhfxwBvqjAgiX3u2Yqml05GJ0DXBj9u0Qh/IfCPDyCFu88glUEuBSHKbCQaN6APntZk6
         Szng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=/71cAW6f5QzQVKrj6fIIfUbO42dt7m9eeP3cOuOukAY=;
        b=AIRLD2T1l3dcOBvktNZoB461xjRpWMWCFJvr18FDAbv3zP61pxcLUMwq5sNsWQGrND
         pxTSWvR1fwevZVb3dmtpHssUo4Xc6j3htPZJWHsiDMq3FaW/VZLV/CiVubMfEHKCgBe0
         fZKB9wV5oloZgskDiGSKvy/NKwh1bs0QiFXCANYkeW0Hr5LgEP0yIVX+QmsUOubntb3a
         cw2qSCTbCOcgOmtrpiIEUDMcII+QvsEn11vCmIRxjRXEv7ZfhJPh3scQN941Q01E3v3M
         A/j9xnLkgZnw5w+vuVOGnjTlBD1JZYSlCmKyEgmJwJPXLUn3NMHNb3Hvm7CGClIqebcV
         ZFHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oZVG6SfX;
       spf=pass (google.com: domain of 3vjvlxqwkaacuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3VJVlXQwKAAcuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/71cAW6f5QzQVKrj6fIIfUbO42dt7m9eeP3cOuOukAY=;
        b=C7l5JAU3yHHY7e7PqP+58SuCsGkeomSrMB8wOrQzDfWP2MOgbiFH15dV0Oky44vpZF
         isPhP4jhKBS7VsyUU6yh1nDwOZiM6RpRKxNlimb1/UH9Hp+/RnBFvvxQSYyT1CBJsAv/
         A4uDw6IPQvNXeaafdW0AcuP2GPs/M5J8S3GCrPvOsZ3GcC9nSVMPemQbcn2J1Vk1wc6i
         kvi47I2KizygCkMLqq9oOljDajRGPzrCG2PjeqbC6cexpoo9M+DXu1/YsJ19THhGpQxZ
         vsKlklWBdxtnGAzNL46+TsPPFz0hN6v9OoV7fuZwsYyJ9jRcFbVytp7pTjwGCXlPduXZ
         3d4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/71cAW6f5QzQVKrj6fIIfUbO42dt7m9eeP3cOuOukAY=;
        b=QzemRnC+Tx88dzkuakNR//I+YLaQgbyJJ879ZGT2eIM7mz+h22OTcz4uMr8vrwTCxv
         TC/ZH+uViuoe9n0DqqM7bm3MPs0tuE/U1Zzo6ghqaRJ51Z9p77H1cJd5xKu4zILzORym
         8v2Cc9O5FDeSiCvfmlSYAbzbtCLGtyZKr5kijHn6lIhAZmFYPpzSKPh5nDvTq7+AKFBx
         pxHTaJtNICpNwf2PV4F1Rj4uDaZ1h2UgWuD3iKoGiilnhFVwZdQvX77VwhI4Lv2P2bPL
         LbHTx3i51gfb8YNJQTIdQiZ+VBPgU7upA6fgscpwllK6m2MJn7lyM32rSA8aRQu1rWVT
         cGDg==
X-Gm-Message-State: APjAAAUG6yTNsTtDq/9aA8qv8Tx4TxCiMIF6BNaNYSq1P4JltmpvZObs
	x03WZpQHTxiO2/q7V/PVoeM=
X-Google-Smtp-Source: APXvYqwdrGVMTAV0x3vIfSiEe9MRJOw98VE2n0Q8iVEoscOAfIfDfk28SwCWMnaeRUoque6wv3RSjQ==
X-Received: by 2002:a05:6830:1e4a:: with SMTP id e10mr478383otj.310.1566938453476;
        Tue, 27 Aug 2019 13:40:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1e97:: with SMTP id n23ls108636otr.5.gmail; Tue, 27
 Aug 2019 13:40:53 -0700 (PDT)
X-Received: by 2002:a9d:5511:: with SMTP id l17mr485539oth.206.1566938453224;
        Tue, 27 Aug 2019 13:40:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566938453; cv=none;
        d=google.com; s=arc-20160816;
        b=P3VxIR8A6l9EHoN7oGgLIkfUehT1+cIUXraU+JTpBBLa8Ni1xs5YilSPBSwpp9g3Qf
         NfhxTQ86xIMzXRtQ+lK6OSsxUSpqM5KAzv7xe5cyoJpIO2NqZG8/lKwQ0ixM7SX/2x/W
         1un4YFVpKuEaQbjm9nvGg6voDAY8TcbetoiefnkRkMi1d8f0ma2tBzk9WEGAFBhdOCrj
         sYWmMViA2NhtSkbPnhNKS19wmKg5E4ysvlsC7h4yakPFdpqqhh1Z3O7/lVekxjd4AfGd
         JziB5DBn0JpzfPOT05pVxCGPG4yYYT+6zLATAFSMlXGBtTnYI13l3M6QrnasX3LvrHI3
         DMJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=Ywx7jCXsKEfuHAj2q8Y6vNlDnApWLp+V93ssN5FszZc=;
        b=U3xRo8Uc2eKeVnBZiNzzNI2jrJBUL1cuPFKnUcj22gfMmoV3HQJIyIdwULp5yllTqa
         hbXv+0aNP0pf5K+kixB4ciRZFX0+Ul7YvV7N8cXrBqqmJEgenIfE5UQ9Q84s5ijTwoVB
         FtzFGmgzRViDZTasRwhe6LqJRSSd3cxDE/9MgVkkDcuHIA+nA2I70KedJZkD98VoPk58
         3yYpfuUkdCUaCxfC3iJEHGNjyL5siOIDc/KuRgc5W8z7u7hvGx0qJmGmbXa7ddYD2+i1
         v+KbCJqFjAxp1TJyps6fXrVPGqz6T28t8ITMCaQBkb+R+9nUfZ3eafXZyNS4dc2l5tky
         VG2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oZVG6SfX;
       spf=pass (google.com: domain of 3vjvlxqwkaacuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3VJVlXQwKAAcuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id f16si29625oib.0.2019.08.27.13.40.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Aug 2019 13:40:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3vjvlxqwkaacuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id p16so238679pfn.3
        for <clang-built-linux@googlegroups.com>; Tue, 27 Aug 2019 13:40:53 -0700 (PDT)
X-Received: by 2002:a63:6206:: with SMTP id w6mr281844pgb.428.1566938452324;
 Tue, 27 Aug 2019 13:40:52 -0700 (PDT)
Date: Tue, 27 Aug 2019 13:40:02 -0700
In-Reply-To: <20190827204007.201890-1-ndesaulniers@google.com>
Message-Id: <20190827204007.201890-10-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190827204007.201890-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v2 09/14] powerpc: prefer __section and __printf from compiler_attributes.h
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: miguel.ojeda.sandonis@gmail.com
Cc: sedat.dilek@gmail.com, will@kernel.org, jpoimboe@redhat.com, 
	naveen.n.rao@linux.vnet.ibm.com, davem@davemloft.net, paul.burton@mips.com, 
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=oZVG6SfX;       spf=pass
 (google.com: domain of 3vjvlxqwkaacuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3VJVlXQwKAAcuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

GCC unescapes escaped string section names while Clang does not. Because
__section uses the `#` stringification operator for the section name, it
doesn't need to be escaped.

Instead, we should:
1. Prefer __section(.section_name_no_quotes).
2. Only use __attribute__((__section(".section"))) when creating the
section name via C preprocessor (see the definition of __define_initcall
in arch/um/include/shared/init.h).

This antipattern was found with:
$ grep -e __section\(\" -e __section__\(\" -r

See the discussions in:
Link: https://bugs.llvm.org/show_bug.cgi?id=42950
Link: https://marc.info/?l=linux-netdev&m=156412960619946&w=2
Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/powerpc/boot/main.c         | 3 +--
 arch/powerpc/boot/ps3.c          | 6 ++----
 arch/powerpc/include/asm/cache.h | 2 +-
 arch/powerpc/kernel/btext.c      | 2 +-
 4 files changed, 5 insertions(+), 8 deletions(-)

diff --git a/arch/powerpc/boot/main.c b/arch/powerpc/boot/main.c
index 102cc546444d..3ccc84e06fc4 100644
--- a/arch/powerpc/boot/main.c
+++ b/arch/powerpc/boot/main.c
@@ -150,8 +150,7 @@ static struct addr_range prep_initrd(struct addr_range vmlinux, void *chosen,
  * edit the command line passed to vmlinux (by setting /chosen/bootargs).
  * The buffer is put in it's own section so that tools may locate it easier.
  */
-static char cmdline[BOOT_COMMAND_LINE_SIZE]
-	__attribute__((__section__("__builtin_cmdline")));
+static char cmdline[BOOT_COMMAND_LINE_SIZE] __section(__builtin_cmdline);
 
 static void prep_cmdline(void *chosen)
 {
diff --git a/arch/powerpc/boot/ps3.c b/arch/powerpc/boot/ps3.c
index c52552a681c5..70b2ed82d2de 100644
--- a/arch/powerpc/boot/ps3.c
+++ b/arch/powerpc/boot/ps3.c
@@ -24,8 +24,7 @@ extern int lv1_get_repository_node_value(u64 in_1, u64 in_2, u64 in_3,
 #ifdef DEBUG
 #define DBG(fmt...) printf(fmt)
 #else
-static inline int __attribute__ ((format (printf, 1, 2))) DBG(
-	const char *fmt, ...) {return 0;}
+static inline int __printf(1, 2) DBG(const char *fmt, ...) { return 0; }
 #endif
 
 BSS_STACK(4096);
@@ -35,8 +34,7 @@ BSS_STACK(4096);
  * The buffer is put in it's own section so that tools may locate it easier.
  */
 
-static char cmdline[BOOT_COMMAND_LINE_SIZE]
-	__attribute__((__section__("__builtin_cmdline")));
+static char cmdline[BOOT_COMMAND_LINE_SIZE] __section(__builtin_cmdline);
 
 static void prep_cmdline(void *chosen)
 {
diff --git a/arch/powerpc/include/asm/cache.h b/arch/powerpc/include/asm/cache.h
index 45e3137ccd71..9114495855eb 100644
--- a/arch/powerpc/include/asm/cache.h
+++ b/arch/powerpc/include/asm/cache.h
@@ -91,7 +91,7 @@ static inline u32 l1_cache_bytes(void)
 	isync
 
 #else
-#define __read_mostly __attribute__((__section__(".data..read_mostly")))
+#define __read_mostly __section(.data..read_mostly)
 
 #ifdef CONFIG_PPC_BOOK3S_32
 extern long _get_L2CR(void);
diff --git a/arch/powerpc/kernel/btext.c b/arch/powerpc/kernel/btext.c
index 6dfceaa820e4..f57712a55815 100644
--- a/arch/powerpc/kernel/btext.c
+++ b/arch/powerpc/kernel/btext.c
@@ -26,7 +26,7 @@
 static void scrollscreen(void);
 #endif
 
-#define __force_data __attribute__((__section__(".data")))
+#define __force_data __section(.data)
 
 static int g_loc_X __force_data;
 static int g_loc_Y __force_data;
-- 
2.23.0.187.g17f5b7556c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190827204007.201890-10-ndesaulniers%40google.com.
