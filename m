Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBY76SGEAMGQE645PKRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3d.google.com (mail-vs1-xe3d.google.com [IPv6:2607:f8b0:4864:20::e3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 208273DC12E
	for <lists+clang-built-linux@lfdr.de>; Sat, 31 Jul 2021 00:38:29 +0200 (CEST)
Received: by mail-vs1-xe3d.google.com with SMTP id u75-20020a67794e0000b0290292c808d508sf2079596vsc.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 15:38:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627684708; cv=pass;
        d=google.com; s=arc-20160816;
        b=kRYp3j6BC9OdY5lGh74WOIWjONqGlWlvWkT7spuIzybH2t+VHzzriCkJXk2w5vqfAt
         6eV9JchexXiQdna3CnJsQhit0aCw9/8sSm739C9U2PzbxVd7hFzntd9wu3Txa4obH2wU
         VFj5WX7sCLzbLDvSC9NR/0oHoy17bjhb+LtMazgPF+nHLsmcq9Wrtmj+DLdZxA0ESnlj
         mytmZEBihpyM8TBYdcn+bV0X95rGkaZj7kkeZ7rg+RkdS0Wsi/SM1truaoTlOVnrNSN1
         tCZRW8f/WRovwOtRUXKdzxvu+IiBF+tB3WWtxAurErLTNnM6FDGfmpQAvHdrbsOKLubi
         yfhw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=GnsMsteIeqR8p4hK7ITHgJbMfRK5mJNzUYoNuUQcfAA=;
        b=eE0VekLJvIxTAiEbW+ZB0bBp6vPNySNf6cfj3e/G50YW4Xspagri5D17v/WsJ4hvfj
         yauqYbU6qIW2VelV01N78CSxk4iFq1CgQ3wIyer0BIRCwpM5kPFbagy1z+k8KQ/Qhjn9
         t4a4WP8axDhSz48c4s/GlfCNFLRTrBDxmAjaT3Kv99rHv8R0PkXX1jlQ5EllY8rPK/r+
         JrD3wSxkvnt1QjR4dRXDBXbdcb/G4728HsfRCay0fyxF/B5sl8TbkHs0Qmt8Pqj8n79O
         WB/WEASpUhzQDKsFx7GAFrFypSnOJT+Mf709l/5I/YH82GHMwf+NP4A5b2baaH5AFrjI
         p3ZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=CBLwAqSq;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GnsMsteIeqR8p4hK7ITHgJbMfRK5mJNzUYoNuUQcfAA=;
        b=p/NAj7fDI7p1j33xuCiihDg+YZHRmiz4Wy+H/VCsbgOWYlKg0IxvrlGc2rBkdvNQX1
         6UZlkI1zPw/Nf99P1jigqAn9ugBhIXfI7bQ2tFUHK/uM0ETDYFzPiXylL3UAsz4nzeDK
         sFpa0DQznuMOfUncnepkLtuopshiTNwHJufYl6Idvo1BYcSVyzhx1ppB1gl3YQI3nXDC
         78hIqblk7E3PPv51UPLtgxVYjbonME3WfKmZwC8o9Hn66Of+4OrNb5s8GLrubdNjpXET
         Tr+NWyW7gxRe/Yjp4FgjxKdBRix0iN+tFtMGmvF2Oa9gESPWmJHXIRBl8YYbABynnr+i
         q+tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GnsMsteIeqR8p4hK7ITHgJbMfRK5mJNzUYoNuUQcfAA=;
        b=W5zroJQhfHl9ib/NvLnoKCQJJUpiLnhXq3xW19iPBGWv4ZhwFzfUdmJ3qnEUPHRNCs
         an5uooh8kpJvTbptnJooYYPPcOm4Qht7ocOyF1PD5M46vX3Aa9PyesDipLFrNYShfY2U
         VPokBx/mCwYbKFPJrRO/jz9J3DNnYfJEG14YcTRNuf/PnQIijcMV+MBh6C9eqWPtPWh2
         QatXgXcowUScpNmNCdrcwGX5eO28SAmfHzx9Va/t4b49HjsrFhYomMcAIfx3gEte5xCt
         PzjqBaC/MU8E3mglcPx7ryHoAo09w6XEMt+xKxlnLrbMYHAhUDyEnZVL672blIy5IAkZ
         kNDA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5302mGZru785+ujN3bNuMtq1BFfXTQnpxGz4wOF0RV1TtcowSoMh
	MmsZMh2HNRYLLIEPTRrJ6iM=
X-Google-Smtp-Source: ABdhPJykmggy5r/6bKDA8NH5mv5/H5Zeh671P4p54iiWUBlRFxrIccdZFB7pFUbb7qVkGaXaw5EhZw==
X-Received: by 2002:a1f:9d13:: with SMTP id g19mr3858395vke.15.1627684708054;
        Fri, 30 Jul 2021 15:38:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:6701:: with SMTP id q1ls431422uam.11.gmail; Fri, 30 Jul
 2021 15:38:27 -0700 (PDT)
X-Received: by 2002:ab0:7455:: with SMTP id p21mr4860879uaq.73.1627684707577;
        Fri, 30 Jul 2021 15:38:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627684707; cv=none;
        d=google.com; s=arc-20160816;
        b=mn2A9I7TjvRhNsZ6w+0OsZAlrSHdC+inWpyEQjrbZuPZtjcK2OKBdprrSY5ftXh/pP
         3GuVF0O0l3H/XKgR5jlAqYmiVh1rdt1HSP5zISY294x/bXc/lnq62tTZrfDOFsw6NA8A
         Bg61436kdypIjlVIBUMHIiaVBnSsW3l9pRpzV3wPsoGFvUecsR/a4w0egvzRjxNwqN8G
         8l2lM0jcWnCfmvaHi1g8u8mVQKX44FDAmjVzIPJlYT2YZDCbmleiZMNb96+9ozppKl0Z
         Qm4/qgVhZ+6SgURMNdZpuA3E5XleQzBCi0pCSleI9aOuDGsPZsr7YQTUeO2tV7ozdUak
         G88g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=fR3YoTsGn10UoLhjKnWcrXTpAUviMKq9lqUMnVNwz2Y=;
        b=g3LVbX3bOd3wfAe3Zi8xjiIMyjEHNlIBYXF4aCj6DQu+JH7WHzaQhyu6XA1qY0THSB
         nShZ0jfcx3jzBnro6RNR2aI6SnnwOgLAFOGByahN33RUOv1Fq3B+hXnrGSjj4tE5UmX/
         KQrpNK+XJdpbp7yC7luTFRKWv8ZFYqMUviJklzYxdx9E3q5p6g6BtPhPKeSp/W3HY//j
         CA6CmLwaMQAfRcX5Mdiz6dnKHIbGqbtxGHerNg5l9+FCrY3nc/kvK0T8wyToZI/+wPx3
         BAfQPGUxpWc7R3wv6U1Pxu6ISETtV/Hc6KU9sTq+1B0ZMHYH07NbTA+/r3Ve6BYmPXwL
         gEDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=CBLwAqSq;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f11si203265vkp.2.2021.07.30.15.38.27
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Jul 2021 15:38:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8B00660F42;
	Fri, 30 Jul 2021 22:38:24 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Kees Cook <keescook@chromium.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: Fangrui Song <maskray@google.com>,
	Marco Elver <elver@google.com>,
	linux-arch@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	kasan-dev@googlegroups.com,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>,
	stable@vger.kernel.org
Subject: [PATCH] vmlinux.lds.h: Handle clang's module.{c,d}tor sections
Date: Fri, 30 Jul 2021 15:38:15 -0700
Message-Id: <20210730223815.1382706-1-nathan@kernel.org>
X-Mailer: git-send-email 2.32.0.264.g75ae10bc75
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=CBLwAqSq;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

A recent change in LLVM causes module_{c,d}tor sections to appear when
CONFIG_K{A,C}SAN are enabled, which results in orphan section warnings
because these are not handled anywhere:

ld.lld: warning: arch/x86/pci/built-in.a(legacy.o):(.text.asan.module_ctor) is being placed in '.text.asan.module_ctor'
ld.lld: warning: arch/x86/pci/built-in.a(legacy.o):(.text.asan.module_dtor) is being placed in '.text.asan.module_dtor'
ld.lld: warning: arch/x86/pci/built-in.a(legacy.o):(.text.tsan.module_ctor) is being placed in '.text.tsan.module_ctor'

Place them in the TEXT_TEXT section so that these technologies continue
to work with the newer compiler versions. All of the KASAN and KCSAN
KUnit tests continue to pass after this change.

Cc: stable@vger.kernel.org
Link: https://github.com/ClangBuiltLinux/linux/issues/1432
Link: https://github.com/llvm/llvm-project/commit/7b789562244ee941b7bf2cefeb3fc08a59a01865
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 include/asm-generic/vmlinux.lds.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index 17325416e2de..3b79b1e76556 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -586,6 +586,7 @@
 		NOINSTR_TEXT						\
 		*(.text..refcount)					\
 		*(.ref.text)						\
+		*(.text.asan .text.asan.*)				\
 		TEXT_CFI_JT						\
 	MEM_KEEP(init.text*)						\
 	MEM_KEEP(exit.text*)						\

base-commit: 4669e13cd67f8532be12815ed3d37e775a9bdc16
-- 
2.32.0.264.g75ae10bc75

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210730223815.1382706-1-nathan%40kernel.org.
