Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBNGNSL4QKGQENU7XWXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B71F234E52
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 Aug 2020 01:18:14 +0200 (CEST)
Received: by mail-pl1-x63a.google.com with SMTP id p14sf23458750plq.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 16:18:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596237493; cv=pass;
        d=google.com; s=arc-20160816;
        b=wG0aNxxlivfe/2Apbuw0dN4QTPPN58g0TlNG42WvJpje2AaiWxV9thg/hyZXF201Ln
         miiM+RBEQf9fOu7fF3PfB927h8v8EK+CEMzV5ppHABoEdcXAoO4k2y/pEhcXgZcu1IBn
         faTIbrKxgkTswMhd10GEuTquzSHNS7QkhZwORT5AErNowMYO5Rmax6WlrjyfGtJ0yWu3
         ezqZvrEHXJwSDu43jQsSAWjOtA9SZj6ig9+MJxzhlXu8kGM8GSPtUDiHo1mkm+x/Sra2
         CHNJUjJ/IFpZnK1Sa5sVXvwV8wYuM+s9WNOhvkMq6xi6LKjxMJmrCCGX17dJnRntf2Wx
         BqJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=/qeflHuNsknieI1iUDrOF9iuDsGRaYtR+AgU5b9kgWM=;
        b=b/HtSMevE8JWnnKefmoVzpxrFTE5Wck4egEWJN0csp/eH03fdEdUiGpDeHIMaij5Yv
         oaHpTYtdbnNJb/psIhaIdTaERTg+wUSRv4LXTLuXqnFlbt5jpxc4hikjDC/yV2vyIpb4
         cEzEIfglPjKtE++N8ODVjTruIwdzLjQEjGfsmotaGeJHTG/K6L3uSvKNYCaKPBLBTePi
         yVM3QkWudbRvoljNF3ZssdNb5LDGoJloxEe1r2Kvg6fflf5vkSm7igXshdXO5i/aIfca
         8ZRUAWgk2HlHXtU5VtEsd4Y/zsyVcv7O81GL2u7pS/7zWwaovQOUehstVVG47jVEMoNK
         lLRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=XLAgtFMg;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/qeflHuNsknieI1iUDrOF9iuDsGRaYtR+AgU5b9kgWM=;
        b=Lo/VClelmRJIpVvV8fbShjIAsLq2sPcG1sPXtosTx+tWP/1Q+/nRdjyySsABMcj+Wg
         gqTdHysPsxjs36+nE00dj43wyIGG31ohskJQ3gBoPgGPMOqB4CchI5Znpvu0lz6ZucdV
         7t30xj1gePzoox3fl0hjQvSCJj/xYUXZ/ABl+FBl853lKRC0YdKiiyvX1hIHH1vKSx2C
         UYSkW0WukX/tFgr/gDMpaGT2IHHpERtVCkGwa2SVcLhMzR2n7Uv1zfkfixaA8NkCvpuo
         Hc7IrOml5rUlLchIE9YmeqYtay3YXVwh/MUsTOHocnKEu6/A/zUjvSU6lUpVnMwcLS9E
         BP2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/qeflHuNsknieI1iUDrOF9iuDsGRaYtR+AgU5b9kgWM=;
        b=lgrVShauTQBP4iDtKQwUMj3+FWmMN/LSAX8SHCp5pZZ/W0VO6u74DMszzbr9feo6nZ
         OyHmDeQXU7fs52pCNqXm+TPVEC4YJCa4vjrBdgs1+go5dhuLFHbI1a+hrlWJHCisALWi
         +mUeYgZQWNXZMg+dFK2Ktck/HLtyEuRuJ8/nplYg8B/imDiReaX8svthZp8M9ATWYwX4
         S64JkpfhQS7dhC5A+jzTR7q9xxO5Xvi3DdZHMHJ8V4thRN82x/SzgVsRyupGYX8OC4zC
         4YMZxBla+CFZIVjoc9RJUeDnfLaqlxMRmJUbapdCSOQmP57Kp7vZl3R4Cs+mGIsk52w4
         DRIA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533IjztTvJ2ioJ0ps9ys8DwvNJ8FEWr0G5SeZGi11nYIoNIoUEzw
	xSBfbyO7eDGIgijl8cdL4kc=
X-Google-Smtp-Source: ABdhPJwQQafF+6/ro4XviMkvQZNJSs06zf4bSY0NzXx6dx0iGEwmlfIo5k2s6qI/gW+5LPYdTZuAhA==
X-Received: by 2002:a17:90a:2170:: with SMTP id a103mr6447774pje.198.1596237492846;
        Fri, 31 Jul 2020 16:18:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:8306:: with SMTP id h6ls3471073pfe.1.gmail; Fri, 31 Jul
 2020 16:18:12 -0700 (PDT)
X-Received: by 2002:aa7:9422:: with SMTP id y2mr5787802pfo.211.1596237492397;
        Fri, 31 Jul 2020 16:18:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596237492; cv=none;
        d=google.com; s=arc-20160816;
        b=dl+9cgThjjDcvMMWEpzhVSiKrDguQujzVYca69m6idvRWp1B/G7Pc8Cv1InUtTTFlu
         rqTanLfsIEworWsMIzaI3I3mDjeNW/LXcBuNXiFVRBIFllILVBItgRw77zDIl/4/QC+q
         voqnZ6oiHVp2EGqMsPeV6vRVYxOcOhHbzuz7HXXGaUb1edbwNpdggOAiCF/2jE+ePVIc
         4IGCfvec+bY2ZBC2UYFpJ6yHnE0KUGxXomgQ39O2m7ST0Ej/Cm+TPSFdHgVstc7Z+8n6
         qfJ8P3gyrm3nxKj84qmwVhmALfl+HKhNP4vGVi4k/aULgnGIxHNx31w3w4Ue3qBmOW3w
         E34w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=GYWiGkzrodMZw8E6moJnKNf+2pJurSr6gU0bXIJriLs=;
        b=uEM+Sw8MfHMhcQXR0ezIufStw4m7uiKPYULJarzemIdXv3Vx/JLnn7sywa0C8OFJhL
         +HTRc4zzGNwu6bJLUHETrvg0qM0P32/+8l51g53srJONxZKRG9QALv6+QWzHMxDc2+nB
         E5WX6DbR1QENWK7cmwSMnv4MhfN2XTf0NAPBSGnXKfuBPx1V8A1Ll9H3fT4udcXlIFZb
         qnyFDUaM+JVncuGE+mnKyPeOb/0et3DOtNvia+7rOZMB8XWb1B/AsrjN0Hh+6t70zK1p
         YU2HuC3WNwvkODlx34n1lGbQa96/860p4kRkA/BJ53G0Vwry2wy+veFj3Ob0mNt9n7Jx
         Or7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=XLAgtFMg;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id w2si453052plq.3.2020.07.31.16.18.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 16:18:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id 74so6926941pfx.13
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 16:18:12 -0700 (PDT)
X-Received: by 2002:a62:1c8b:: with SMTP id c133mr5904939pfc.134.1596237492142;
        Fri, 31 Jul 2020 16:18:12 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id q7sm6300502pfl.156.2020.07.31.16.18.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 16:18:11 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Will Deacon <will@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
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
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	x86@kernel.org,
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 28/36] x86/asm: Avoid generating unused kprobe sections
Date: Fri, 31 Jul 2020 16:08:12 -0700
Message-Id: <20200731230820.1742553-29-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200731230820.1742553-1-keescook@chromium.org>
References: <20200731230820.1742553-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=XLAgtFMg;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443
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

When !CONFIG_KPROBES, do not generate kprobe sections. This makes
sure there are no unexpected sections encountered by the linker scripts.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/x86/include/asm/asm.h | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/x86/include/asm/asm.h b/arch/x86/include/asm/asm.h
index 0f63585edf5f..92feec0f0a12 100644
--- a/arch/x86/include/asm/asm.h
+++ b/arch/x86/include/asm/asm.h
@@ -138,11 +138,15 @@
 # define _ASM_EXTABLE_FAULT(from, to)				\
 	_ASM_EXTABLE_HANDLE(from, to, ex_handler_fault)
 
-# define _ASM_NOKPROBE(entry)					\
+# ifdef CONFIG_KPROBES
+#  define _ASM_NOKPROBE(entry)					\
 	.pushsection "_kprobe_blacklist","aw" ;			\
 	_ASM_ALIGN ;						\
 	_ASM_PTR (entry);					\
 	.popsection
+# else
+#  define _ASM_NOKPROBE(entry)
+# endif
 
 #else
 # define _EXPAND_EXTABLE_HANDLE(x) #x
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200731230820.1742553-29-keescook%40chromium.org.
