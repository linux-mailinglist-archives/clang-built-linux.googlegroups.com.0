Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBO6NSL4QKGQE2X7GD4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id A9D21234E5B
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 Aug 2020 01:18:20 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id l22sf9854591pjt.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 16:18:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596237499; cv=pass;
        d=google.com; s=arc-20160816;
        b=hvH3mYM7JvlgFQIhN+QzpDtpp9i4eZpWtDpaoDz/Icz7RUqI99mR8+vdnepiRRbVxm
         YUZ/BnWgQF7F5QGAxTAn/DSqx2ue8CLxWYmYGizE2vXWUN9CL3oai50WiIC3WwA9fJNq
         aoGE4iSW75xWtv1v3XuW+lwWctIyvLv30+auqZ+LhnMq1HMbNwkY96OIP6Z9Dtn3Is7J
         Mfsyj/WZGCGZ7NYqT0s0UO9kgWp4NIC7x3Rq9BmJ0QcPqUAyrtqPv7DH0ldm3VQT8voc
         n9ItVlXrG9SDLJYZwHbKSSSfCaVKVR8+7jdR/zMG89XmmxmS7JebW+e0vSZwQ2r1vIuY
         a19g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=xn24mKIs1HSFu6+7kAwsF7POjE4YQp2dtB30k4qHXFI=;
        b=h7dQUvjwkY8jzmAfNYqBZqdCmTOBdUAmsobeFhaEuc5iS4SQOcxpvGgq4BG7tEljG4
         rnndwARdmk+3hAGkiXz6ihHohG4kjtnk08Hon1wE1hTqV6iXcLIGGTvEzIMEji0tKBdm
         UmFfeCHii6bPRSn0Hgwhx6btE0LlJvN7YWZm8Tj4Ir6Hf3suYe1k4wXFutAWRg1jvrbM
         7wlaJTxP8ha/X7bf/XWmGRdCuQ0t07uRN0J969micKxh6VEuJNvbGMqLbgoevUxWCihH
         tiz/S62HG1RUGbp+bOyOsjkWw/cgogmCTaQ2oXPITISUj8TW6cBqUsCc7CdWJFHPVzM6
         4QMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=lnbNKX0y;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xn24mKIs1HSFu6+7kAwsF7POjE4YQp2dtB30k4qHXFI=;
        b=llpC8H6E5prpdiP+NcsoRy0soP8tdmCZ8J1Nz33O5k3uHqPkcWApcGHc6+VbMb0y4Z
         9WOreQK5GhyCAaYy8cY1nT8i5tibe8QuznXHjKGR3UXMKZ/LByrazSW57KPdRn/rWGrq
         pmyLrdaW3wTPGkDaGiKZbI+CCurWlVi5VkkGQkZ0sLxEE0ic043of2FYB4KkVzPYe6l4
         oaDWcpX+oniJCKcfDK/0ET0x5k3afMNOlmqYk8hFv8r0xvYHAVB57aqbL0TQTxFO9LBX
         eZ4Nlyg4mOVXUq0Nd+JejuawD57UImwBoB/xNUKhD2eRU07pd1dIBuQLG81dxRRfsDM8
         yIsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xn24mKIs1HSFu6+7kAwsF7POjE4YQp2dtB30k4qHXFI=;
        b=aeE7Jdbz/VF3R5ecJVcmIlv5eJbkS+4QrA1AwIPkTMr9lWYGWx+UI2TJOSx4XgrvNr
         tXXLd8bhIwqp4Q4NTomfcaWYEjNl33L5yBlrc9kdg645+M4SOV42UryDQSZyEhET0VGF
         s+nojjBJN6d8vbTkLdfpk1Ji8xmpHIznd3Q235fP065sX+Jt2JQc5YoQiZuVBY8jhu+p
         0ncedB2XMSuX19qQiY+9XDTkWk68L6Nx8Sn5He0e887CedkzXKGJOfPR4fOYDXvWQQxa
         7m7ZTJFWzMYs8IgDIkmDnFnQb7m2lODH3rux7Wbl5+BwpiTtMTaH3pqFYn56kTY+NqW6
         GkIA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532T8VlRq2jDRM8us4sw0LJH1ytBVDy9LVzNCV0e2zAzveryNFIV
	bA9HxMQIxRM3eJtNWtSWcUU=
X-Google-Smtp-Source: ABdhPJx8xxmdC+RwMPHWFq4KnSRnaGMc8P5rqXGQ/1svyDHeyyQvYaOOsd0J53B29w3Kmkc2uC9lGA==
X-Received: by 2002:a62:a217:: with SMTP id m23mr5672306pff.291.1596237499393;
        Fri, 31 Jul 2020 16:18:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:364f:: with SMTP id d76ls3422145pga.3.gmail; Fri, 31 Jul
 2020 16:18:19 -0700 (PDT)
X-Received: by 2002:a62:25c6:: with SMTP id l189mr5939267pfl.241.1596237499013;
        Fri, 31 Jul 2020 16:18:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596237499; cv=none;
        d=google.com; s=arc-20160816;
        b=vD68cAbLx0m4YzRCyDReDp95E4ZwrOnYNdU3glBmsgsMvY6ULGVS6P/HbiuXL054T4
         gJy7WK5WS/1GR4XZCC0VGsn8bdfNnx9cJeVwi9XLO3Ri2BU/uid3RFg+7DH7cv3FxTJe
         ibtGAmNNBATXUFEmQ8HIy/QRx3iIGFlW4OKCnqdVeJ+GgZ4ntoVqTaOiZ/eW4bpW7EH5
         aODMmrQQyKp2hd6Ry7UB9qBPxGnGKnzLlFHvl923JEQL8w2AoCksqcIrhiOuTaEIPkS8
         lHAzNOKOqQx8Dl+MgVcFQ6+SHwknaVPJWfEsAtyQ8/E7LfUyvA0Aa7LTFr/x8b2b292P
         jkvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=SkeFoLe4SBoT15Xnwf3OcmbBPE6+tbLBkxS1vM74EoU=;
        b=nYVgkr5AA5AYbUmyYLPFE7R7kDCPgy+GLb+fNq9pIE6C3Ov9P2J2zIDjDTG9eDV7KK
         lmbc7P/Q9UYe7AExNrnDNS1ED/8ZUul6aMKupzp5v768jtCfx/FjhInhXI/qHRSSxhSS
         TZZcGHaHglDfeQSkLcMys5wORkOg8YheF2GA4QOm48ZxN702ClOkmQSbr8HMhOkhHxk7
         H6DGNKWHHAazvmbHTszdKDzLwKk9ZLK3ktbi9i4uLxzPODcMTI++eyYbEqHHgLP44mGy
         IEnrOYWP8tmwQqLzAPfbLwxmOavVm4d6mwb0PBj1wN+DqTNEVz1aS6vRRShSNl/I0zi8
         Sniw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=lnbNKX0y;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id c4si604952pjo.0.2020.07.31.16.18.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 16:18:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id bh1so5009600plb.12
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 16:18:18 -0700 (PDT)
X-Received: by 2002:a17:902:a610:: with SMTP id u16mr3670388plq.197.1596237498722;
        Fri, 31 Jul 2020 16:18:18 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id g15sm4473924pfh.70.2020.07.31.16.18.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 16:18:15 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Will Deacon <will@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Borislav Petkov <bp@suse.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	x86@kernel.org,
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 23/36] arm/build: Explicitly keep .ARM.attributes sections
Date: Fri, 31 Jul 2020 16:08:07 -0700
Message-Id: <20200731230820.1742553-24-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200731230820.1742553-1-keescook@chromium.org>
References: <20200731230820.1742553-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=lnbNKX0y;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

In preparation for adding --orphan-handling=warn, explicitly keep the
.ARM.attributes section by expanding the existing ELF_DETAILS macro into
ARM_DETAILS.

Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
Link: https://lore.kernel.org/lkml/CAKwvOdk-racgq5pxsoGS6Vtifbtrk5fmkmnoLxrQMaOvV0nPWw@mail.gmail.com/
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/arm/include/asm/vmlinux.lds.h | 4 ++++
 arch/arm/kernel/vmlinux-xip.lds.S  | 2 +-
 arch/arm/kernel/vmlinux.lds.S      | 2 +-
 3 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/vmlinux.lds.h b/arch/arm/include/asm/vmlinux.lds.h
index a08f4301b718..c4af5182ab48 100644
--- a/arch/arm/include/asm/vmlinux.lds.h
+++ b/arch/arm/include/asm/vmlinux.lds.h
@@ -52,6 +52,10 @@
 		ARM_MMU_DISCARD(*(__ex_table))				\
 		COMMON_DISCARDS
 
+#define ARM_DETAILS							\
+		ELF_DETAILS						\
+		.ARM.attributes 0 : { *(.ARM.attributes) }
+
 #define ARM_STUBS_TEXT							\
 		*(.gnu.warning)						\
 		*(.glue_7)						\
diff --git a/arch/arm/kernel/vmlinux-xip.lds.S b/arch/arm/kernel/vmlinux-xip.lds.S
index 904c31fa20ed..57fcbf55f913 100644
--- a/arch/arm/kernel/vmlinux-xip.lds.S
+++ b/arch/arm/kernel/vmlinux-xip.lds.S
@@ -150,7 +150,7 @@ SECTIONS
 	_end = .;
 
 	STABS_DEBUG
-	ELF_DETAILS
+	ARM_DETAILS
 }
 
 /*
diff --git a/arch/arm/kernel/vmlinux.lds.S b/arch/arm/kernel/vmlinux.lds.S
index bb950c896a67..1d3d3b599635 100644
--- a/arch/arm/kernel/vmlinux.lds.S
+++ b/arch/arm/kernel/vmlinux.lds.S
@@ -149,7 +149,7 @@ SECTIONS
 	_end = .;
 
 	STABS_DEBUG
-	ELF_DETAILS
+	ARM_DETAILS
 }
 
 #ifdef CONFIG_STRICT_KERNEL_RWX
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200731230820.1742553-24-keescook%40chromium.org.
