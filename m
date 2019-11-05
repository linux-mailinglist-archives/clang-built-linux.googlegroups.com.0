Return-Path: <clang-built-linux+bncBC2ORX645YPRBRMYRDXAKGQEC6NTJWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3d.google.com (mail-yw1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF3CF0AA0
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Nov 2019 00:56:54 +0100 (CET)
Received: by mail-yw1-xc3d.google.com with SMTP id s128sf17603139ywb.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Nov 2019 15:56:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572998213; cv=pass;
        d=google.com; s=arc-20160816;
        b=q0aovodX+TrLdxo86NqtWDP3AoiteM0lhtyKKpCFlwFNm7Z0iel1OmceBMcv5yb0fq
         oR04/AJ3vBTRwXq1VrbaU3NrvYWW9gXxJQybCEZI+C1TS/iWt+i+B9vwX/wAn4vp+wbp
         oEfs+JFVf+bNWPAd4IwcXs/QunRlqN6FtiqV2lFQLNTavGfJcLCbXWqau3j8PqLim5v5
         I14meMBFNhCADewSQFPvBmXxWH+fRNvxcVEOpIMjDccsIE56ODHVdi/irJGGLWVQkwOB
         p4hiPZJARtaXrbbUII6dRu510GNQvuQMzMu72RTTAjgz+SUUOsCqwVKNsFvbqZaIpqc6
         75jA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=OMQbVUObtCRINSr2qBucc/5hgqh7AxSrw8oIifQ7RCc=;
        b=XDjbfQB9AduFMS7yCOSnYk+LJZDsFJErS+vVzbEpDT7TmM3+z0aQa/Lg45TJVtrsds
         bq8zzId796f5NHXbdbG8umMwWokYb403dMy0QqFxwP0qdaJQaIIqKKpnZL8fai2O2ag4
         vr4TurddafP6M35LKMkrU501gEQrTPimtfrOPZ+5cOf2Ou+5Aa7DXHMdyDu4oz0jT/3D
         frCNWHuL91x3T/8vEHa2wYUxxxdp0Xg2rah6mIirMB1UVJn6eYmIcA52FNI4QiY7ALoV
         nhGeNGSeaEypAXGJDmGFR7rZBKoXQXY0Pzvs+5oGCOLX2nBpTBboIDJZG/mGO47Irb3t
         s1sg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="p/+qormW";
       spf=pass (google.com: domain of 3razcxqwkafkj1d9kfcm1e5e7ff7c5.3fd@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3RAzCXQwKAFkJ1D9KFCM1E5E7FF7C5.3FD@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OMQbVUObtCRINSr2qBucc/5hgqh7AxSrw8oIifQ7RCc=;
        b=h1EcB9CGyWJkkN5uJo3YMCmJcWaxddYX9tiHvBEm0S1BLSHSB6/UcQDLSW2VPtoMe7
         c7r87nww6eS4Yj98Ybt76UN6VdQqL3jbIXwvpgRN7PU3sITqz8y1oMHFgTQinaEbPu0N
         KgXZHN4Mjzb/ElhfWmejxDgt29JARy8ZTkHXtNCZSJMVFTKwoI4jBIARIP+RShIbf+gI
         tTsoDDvY5udpC13cerIEQPTMCmtwQSJ2mPbRfS3Bn3lAYCG+K+uj665yGyPUeZeUcqhu
         UKqA2xc3+Jwk5ruWxDK6Il2cB8Rifttv0DCXQI9ilT9uxKHAJ/AEsqt5hsC578RAqL5N
         bexA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OMQbVUObtCRINSr2qBucc/5hgqh7AxSrw8oIifQ7RCc=;
        b=aN89rkkmrhgReV+8xhqiu6C73PRANQlfxsSMGDp5VwO/D4m6EwuvuDNkjzpa90sDEQ
         MUNWtJvQu9O+jHZxUFdcEjchd4nlLtfP66b/acv4QIxwfBo3Szub9Tyq+mVJwGx2Tq26
         ngy/4cATUolbo/hYfE3gVkY/frAuLMzIGUpHfzAqyJI9fYtLaacJUZYAAt7ciFTYVpxR
         bUQ4QuCLWfnRdGkR7aiduD2JTZMRUCEaFH8WRUB8YttXR/xCx6qO+MdZdd8RL2s9cRP4
         mVJfET5FKQW10aTAr3e0rlIY9YUytUzb0YEyDZ/tYSiOZmf6jzBOQK2zrXwFKLm6syLU
         aZkA==
X-Gm-Message-State: APjAAAUeg1kKfk2mCQGwaOnS1ZfbFRl2/HuHrw4tSN4bTsS/4JeX+FFS
	PrEaxxWq2XpzIERowrrFE1E=
X-Google-Smtp-Source: APXvYqwQtGquFq+IFVNnruJ0kSWvk326qHYXeNUvGPowFXUkEqM+hrQK2SQhLVQio57rNx8KenE8bQ==
X-Received: by 2002:a25:d7c5:: with SMTP id o188mr26122005ybg.336.1572998213646;
        Tue, 05 Nov 2019 15:56:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:6e54:: with SMTP id j81ls100217ybc.11.gmail; Tue, 05 Nov
 2019 15:56:53 -0800 (PST)
X-Received: by 2002:a25:7614:: with SMTP id r20mr9022267ybc.23.1572998213286;
        Tue, 05 Nov 2019 15:56:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572998213; cv=none;
        d=google.com; s=arc-20160816;
        b=0TmXrxQ2FBlvRX9NG8oFI5wylvWHAFlJQk0PyaONV2EHC2CP/6f3Spa4AgQoZsg968
         nAB5N6dag7X3HmJT+K4+/lmYw65NX6tBewD2Vg4iw5sIiUMt4WkfvxHa63R6H3Y+GQ4O
         smeFOkpZ+dSoEhZ8olpmcyj6qdbfeC8TB9oCkRNV1ih06vJxyO8G38wnUwX14tlgOJJ/
         DVK+Z8Fa/LZQrOU99XV0nVFKzgm0MbLy3nNlmMFg1tX5EdjRw40euZId7/yACYB4TBPW
         n0G+18KHIsbvy6XuW0tdEmdAaZm4XlZXsHQxCmDu3Glku948ojdvcb+PFhYrnFXmsN+G
         Z8Og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=SBPjjox/K0nQBp9p/UReaX06mOCKZA5VG5oKrHSRp3U=;
        b=VznlQEhxYakSBBjBJAd0jXo2syW8dibgoNgcF/sMH4E3/NS1uBofT9MTQ2p9v+Ydj1
         GGF8OYH1BHKdrP7+5CgDPhUQGJkw9jqF7HTXIRMWfWqk7H47u9761bSBoQJ7OFwc9Kt3
         jLA/RJOAQMySne4mrsfBc7KoRfY9zVWHczeKYNILdJaY5XcldKabwo4PVl308Hd/Q1Yn
         Wdo8Gc0q3h/tjfPgfLe2q2XbSe37QGT/+fNRckuxT7ukKOrnxXYGX5wZMYc2iPn563ot
         B/MrVy4vs/BBBwLotcrIl3NpKEvnsqe3Z+jy7asmUNhxC3dxKLQzefvRTM9PySvmzWp5
         KXJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="p/+qormW";
       spf=pass (google.com: domain of 3razcxqwkafkj1d9kfcm1e5e7ff7c5.3fd@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3RAzCXQwKAFkJ1D9KFCM1E5E7FF7C5.3FD@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com. [2607:f8b0:4864:20::549])
        by gmr-mx.google.com with ESMTPS id u8si319028ybc.2.2019.11.05.15.56.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Nov 2019 15:56:53 -0800 (PST)
Received-SPF: pass (google.com: domain of 3razcxqwkafkj1d9kfcm1e5e7ff7c5.3fd@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) client-ip=2607:f8b0:4864:20::549;
Received: by mail-pg1-x549.google.com with SMTP id u20so16327966pga.4
        for <clang-built-linux@googlegroups.com>; Tue, 05 Nov 2019 15:56:53 -0800 (PST)
X-Received: by 2002:a63:6483:: with SMTP id y125mr5619534pgb.444.1572998212169;
 Tue, 05 Nov 2019 15:56:52 -0800 (PST)
Date: Tue,  5 Nov 2019 15:56:07 -0800
In-Reply-To: <20191105235608.107702-1-samitolvanen@google.com>
Message-Id: <20191105235608.107702-14-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191105235608.107702-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v5 13/14] arm64: disable SCS for hypervisor code
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="p/+qormW";       spf=pass
 (google.com: domain of 3razcxqwkafkj1d9kfcm1e5e7ff7c5.3fd@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3RAzCXQwKAFkJ1D9KFCM1E5E7FF7C5.3FD@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

Filter out CC_FLAGS_SCS for code that runs at a different exception
level.

Suggested-by: Steven Rostedt (VMware) <rostedt@goodmis.org>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/kvm/hyp/Makefile | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/kvm/hyp/Makefile b/arch/arm64/kvm/hyp/Makefile
index ea710f674cb6..17ea3da325e9 100644
--- a/arch/arm64/kvm/hyp/Makefile
+++ b/arch/arm64/kvm/hyp/Makefile
@@ -28,3 +28,6 @@ GCOV_PROFILE	:= n
 KASAN_SANITIZE	:= n
 UBSAN_SANITIZE	:= n
 KCOV_INSTRUMENT	:= n
+
+# remove the SCS flags from all objects in this directory
+KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
-- 
2.24.0.rc1.363.gb1bccd3e3d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191105235608.107702-14-samitolvanen%40google.com.
