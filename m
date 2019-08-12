Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJV7Y7VAKGQEO3JH5LI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 063408A9E4
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 23:52:40 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id s10sf1387284pfd.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 14:52:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565646758; cv=pass;
        d=google.com; s=arc-20160816;
        b=QKTSOKwhJUZlWPmGWaYu7UdWOyRuHVRAGwnUc1sPn/EPq0PshhViKWs/tRTOpBYjtV
         SvAi+N1P5uzMadsFmJ4bec2aWZoLCCoTjN7dBBbbSLKnkL72vuNa37apT0UrOg7Bx1x2
         DBaji+7rKrf4yEit1MVzdi8RHV+b1nLo5pRYA4xbMqQjhn3Nn80zVmCpjXnW/x8oYTvU
         Cs5M0MLxt4QO2LPTp6jN5yo6prW2V0HsOq8r21oyPS32+qZyKvEt2+jg8mLlJJmshRvH
         vaCbFZ7Bd9NifnrWoo9PK6xaARDP7zwmYtqdkadNNwZVZ4oaN03db3OpRZ3LdOaz7UFq
         XUAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=DKP6xnTj1YD3yMZXfpjv71emue8Tj/LBm9i66qzP3ig=;
        b=vbnsZlH9YP7+isLzuF1U32jZIn98JlR4td0aw5E5csyPskZBqOxRKQmCjxUjD/aKw+
         eNZKcsveHevtSZlrMQIExJryqHOh/C9A5T7qSleYewity3jqyQo+2rNupFl6RelkzgpV
         w+FUqBffuzCXvWRifajJ0inqA/KZi/ax0P6y8tYyp+lNjzYd/hSztPPr5oIV8v+v5NgG
         lydybYTESmaA3vsN4KbkfU382ep5+1CWs6DHw3mYdDvSAzGNu9gu7JIE7a+MQoE+Svv4
         0Hu3sWJsXQi8c9tp6NYxSC089yP0ZAVhUqtWri5db/0f/jsG8RNRRlrdH2FOUGLnFJIQ
         +bZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=l0vrvwIH;
       spf=pass (google.com: domain of 3pd9rxqwkajwj9ao6qhjeanockkcha.8ki@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3pd9RXQwKAJwJ9AO6QHJEANOCKKCHA.8KI@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DKP6xnTj1YD3yMZXfpjv71emue8Tj/LBm9i66qzP3ig=;
        b=Qla5iJlV3ktkSG+zg6HBXMj+cHdBufZaheeK353w7CL2Q+Ngk6evjsIwrxL3eSpDae
         GUiC+uI1yR56GNqzwBsxZYOxbk58SOVdryY720E939f2l0/p8w+2fZAMbQ0UWfeWqf6S
         IV8HzxBMP5GgdTld8rIavrL9DpXYNo03TUVi7eU1yS9IYmOQIYGU45APSuYdKVJrciPK
         R34vPSb5IXND8mFq2uBgqFOu8JoyNnvCjhthHkD2PqBiFmw4YoUr+rdx27lqa/+co6yX
         o0NyA3QRtWUWG+w6rk3rvevT2X4zpSQlJJfaxWuH04h+X6J5knS9/YoB5RNgq6b+YbZr
         KNDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DKP6xnTj1YD3yMZXfpjv71emue8Tj/LBm9i66qzP3ig=;
        b=j16b9Q0nOPOukH+iQ74169srfd1l4RwGsU9mrj8gh17PzBYmnm30O78Xsxps35MQM4
         I9ODIpIilPWDZY64kuYbNHCY7yhEhJ4wDVZVOQeDkl7MeJ12et/W0Ke+65KcvVuafTat
         Q2bj3A06M7w6qHLkkUnlLAfKYNfhyvp9DpFGXnMW5igRgqKhlETpOxZtwD1yHdI/E9uO
         MwNn3n4n1gvseId4qCHmQ09+A8a7i0XVcekU9OdpZPffVO1vT8jD2wOZFnt6QbtuylWn
         qeeD0b5dcYv4JJiHtkyZfYZTZ91giheCOMjMuwXLWFIwN2ZNmJx+mvRi3e9oUQxVuPbs
         LobA==
X-Gm-Message-State: APjAAAXdlKbXiaXdRtoEor0wnZEj5BXwQb2aC2+ap6yLmueYukhsg9TT
	7idAlf7pcDqNMzccxY4hjVs=
X-Google-Smtp-Source: APXvYqyE1uWZfKtaXTDX3QXBmRdSVCS8hkgnudPgQI3YC/ipgn5OtGU0n9ROQs/g3ToyedMZ6B6IzQ==
X-Received: by 2002:a17:90a:f983:: with SMTP id cq3mr181663pjb.1.1565646758683;
        Mon, 12 Aug 2019 14:52:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:8996:: with SMTP id v22ls200644pjn.0.gmail; Mon, 12
 Aug 2019 14:52:38 -0700 (PDT)
X-Received: by 2002:a17:902:8a85:: with SMTP id p5mr3273274plo.211.1565646758388;
        Mon, 12 Aug 2019 14:52:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565646758; cv=none;
        d=google.com; s=arc-20160816;
        b=ON1qtB2KiF3x1pQQzPnt0ACJSZ+J+zqOH3l+R3KDU8xG1OrTyc/zHdw7ILiBb0fxtG
         vKHm3R/KX6jHB/0iv3mYwaGFQYANyhuHQz3gr6zgn0zarWNC3upSBXw4mnjVOW9vqrUg
         T0erp90G1Gq/xdJSEZJqzSDfYTsyLP5N9fGltoQtJnEPVceU5wzFD7nqvEIRwvo4dBwg
         q6VziczdXpAgQ8h0u+oK5tVelOzSdv6HiOTCFpvVRvudxHMk1LaPEY0IhUaHXINFB1Pk
         7HShX8aGbaXH3By6Z9bAa71yIzVQsED3MlIjCIuUTuCSJpC7jcULcriDJtMmLm755Wjp
         3TxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=nhdP3qLGadfkBXXgzu2XRajPFFK4fSn/Au7TvOHqv+g=;
        b=tMrkdRGnxqbilHdCTEN8/6bS917R+0rG6hnP3CT32XuZ0YF4xOMAV+M71xdt6Bh+YH
         jxxx9I9krVOSieQ6w7oN4icAzc/TAuAeuxgN8f+NExgBnsxxJMS3nnbg6duNbSh4BjOx
         BUjy6JK5ta1LAJt1XVE5XBhsxpWndo+Y35nNF9QP++xKaehzT3g9Ik/butzlGeygUlSo
         7klWlY26scfd7FW1DUYD6mbBkuEDC1xm9rZVgJp5vcZxfCrzcZ/a1DGQV+xUEtHwqwNy
         l3iIEcpFz3t8yYw1rufrCus1XVcaZy4oCdBwb2PAaHcKRBF4Apw8OdCuiedMG9fAH182
         XU1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=l0vrvwIH;
       spf=pass (google.com: domain of 3pd9rxqwkajwj9ao6qhjeanockkcha.8ki@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3pd9RXQwKAJwJ9AO6QHJEANOCKKCHA.8KI@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id w72si4736875pfd.2.2019.08.12.14.52.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Aug 2019 14:52:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3pd9rxqwkajwj9ao6qhjeanockkcha.8ki@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id a9so4658872pga.16
        for <clang-built-linux@googlegroups.com>; Mon, 12 Aug 2019 14:52:38 -0700 (PDT)
X-Received: by 2002:a65:6406:: with SMTP id a6mr26645041pgv.393.1565646757703;
 Mon, 12 Aug 2019 14:52:37 -0700 (PDT)
Date: Mon, 12 Aug 2019 14:50:44 -0700
In-Reply-To: <20190812215052.71840-1-ndesaulniers@google.com>
Message-Id: <20190812215052.71840-11-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190812215052.71840-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH 11/16] x86: prefer __section from compiler_attributes.h
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: akpm@linux-foundation.org
Cc: sedat.dilek@gmail.com, jpoimboe@redhat.com, yhs@fb.com, 
	miguel.ojeda.sandonis@gmail.com, clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org, 
	Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, 
	Song Liu <songliubraving@fb.com>, Armijn Hemel <armijn@tjaldur.nl>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Allison Randal <allison@lohutok.net>, 
	Juergen Gross <jgross@suse.com>, Frederic Weisbecker <frederic@kernel.org>, 
	Brijesh Singh <brijesh.singh@amd.com>, Enrico Weigelt <info@metux.net>, 
	Kate Stewart <kstewart@linuxfoundation.org>, Hannes Reinecke <hare@suse.com>, 
	Sean Christopherson <sean.j.christopherson@intel.com>, 
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, Pu Wen <puwen@hygon.cn>, 
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org, bpf@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=l0vrvwIH;       spf=pass
 (google.com: domain of 3pd9rxqwkajwj9ao6qhjeanockkcha.8ki@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3pd9RXQwKAJwJ9AO6QHJEANOCKKCHA.8KI@flex--ndesaulniers.bounces.google.com;
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

Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/x86/include/asm/cache.h       | 2 +-
 arch/x86/include/asm/intel-mid.h   | 2 +-
 arch/x86/include/asm/iommu_table.h | 5 ++---
 arch/x86/include/asm/irqflags.h    | 2 +-
 arch/x86/include/asm/mem_encrypt.h | 2 +-
 arch/x86/kernel/cpu/cpu.h          | 3 +--
 6 files changed, 7 insertions(+), 9 deletions(-)

diff --git a/arch/x86/include/asm/cache.h b/arch/x86/include/asm/cache.h
index abe08690a887..bb9f4bf4ec02 100644
--- a/arch/x86/include/asm/cache.h
+++ b/arch/x86/include/asm/cache.h
@@ -8,7 +8,7 @@
 #define L1_CACHE_SHIFT	(CONFIG_X86_L1_CACHE_SHIFT)
 #define L1_CACHE_BYTES	(1 << L1_CACHE_SHIFT)
 
-#define __read_mostly __attribute__((__section__(".data..read_mostly")))
+#define __read_mostly __section(.data..read_mostly)
 
 #define INTERNODE_CACHE_SHIFT CONFIG_X86_INTERNODE_CACHE_SHIFT
 #define INTERNODE_CACHE_BYTES (1 << INTERNODE_CACHE_SHIFT)
diff --git a/arch/x86/include/asm/intel-mid.h b/arch/x86/include/asm/intel-mid.h
index 8e5af119dc2d..f51f04aefe1b 100644
--- a/arch/x86/include/asm/intel-mid.h
+++ b/arch/x86/include/asm/intel-mid.h
@@ -43,7 +43,7 @@ struct devs_id {
 
 #define sfi_device(i)								\
 	static const struct devs_id *const __intel_mid_sfi_##i##_dev __used	\
-	__attribute__((__section__(".x86_intel_mid_dev.init"))) = &i
+	__section(.x86_intel_mid_dev.init) = &i
 
 /**
 * struct mid_sd_board_info - template for SD device creation
diff --git a/arch/x86/include/asm/iommu_table.h b/arch/x86/include/asm/iommu_table.h
index 1fb3fd1a83c2..7d190710eb92 100644
--- a/arch/x86/include/asm/iommu_table.h
+++ b/arch/x86/include/asm/iommu_table.h
@@ -50,9 +50,8 @@ struct iommu_table_entry {
 
 #define __IOMMU_INIT(_detect, _depend, _early_init, _late_init, _finish)\
 	static const struct iommu_table_entry				\
-		__iommu_entry_##_detect __used				\
-	__attribute__ ((unused, __section__(".iommu_table"),		\
-			aligned((sizeof(void *)))))	\
+		__iommu_entry_##_detect __used __section(.iommu_table)	\
+		__aligned((sizeof(void *)))				\
 	= {_detect, _depend, _early_init, _late_init,			\
 	   _finish ? IOMMU_FINISH_IF_DETECTED : 0}
 /*
diff --git a/arch/x86/include/asm/irqflags.h b/arch/x86/include/asm/irqflags.h
index 8a0e56e1dcc9..68db90bca813 100644
--- a/arch/x86/include/asm/irqflags.h
+++ b/arch/x86/include/asm/irqflags.h
@@ -9,7 +9,7 @@
 #include <asm/nospec-branch.h>
 
 /* Provide __cpuidle; we can't safely include <linux/cpu.h> */
-#define __cpuidle __attribute__((__section__(".cpuidle.text")))
+#define __cpuidle __section(.cpuidle.text)
 
 /*
  * Interrupt control:
diff --git a/arch/x86/include/asm/mem_encrypt.h b/arch/x86/include/asm/mem_encrypt.h
index 0c196c47d621..db2cd3709148 100644
--- a/arch/x86/include/asm/mem_encrypt.h
+++ b/arch/x86/include/asm/mem_encrypt.h
@@ -50,7 +50,7 @@ void __init mem_encrypt_free_decrypted_mem(void);
 bool sme_active(void);
 bool sev_active(void);
 
-#define __bss_decrypted __attribute__((__section__(".bss..decrypted")))
+#define __bss_decrypted __section(.bss..decrypted)
 
 #else	/* !CONFIG_AMD_MEM_ENCRYPT */
 
diff --git a/arch/x86/kernel/cpu/cpu.h b/arch/x86/kernel/cpu/cpu.h
index c0e2407abdd6..7ff9dc41a603 100644
--- a/arch/x86/kernel/cpu/cpu.h
+++ b/arch/x86/kernel/cpu/cpu.h
@@ -38,8 +38,7 @@ struct _tlb_table {
 
 #define cpu_dev_register(cpu_devX) \
 	static const struct cpu_dev *const __cpu_dev_##cpu_devX __used \
-	__attribute__((__section__(".x86_cpu_dev.init"))) = \
-	&cpu_devX;
+	__section(.x86_cpu_dev.init) = &cpu_devX;
 
 extern const struct cpu_dev *const __x86_cpu_dev_start[],
 			    *const __x86_cpu_dev_end[];
-- 
2.23.0.rc1.153.gdeed80330f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190812215052.71840-11-ndesaulniers%40google.com.
