Return-Path: <clang-built-linux+bncBDYJPJO25UGBB2V6Y7VAKGQEPFS6EKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB1D8A9C1
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 23:51:39 +0200 (CEST)
Received: by mail-qt1-x83b.google.com with SMTP id c14sf4622767qtn.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 14:51:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565646698; cv=pass;
        d=google.com; s=arc-20160816;
        b=yyvXOQw8r3+NSR+d0jMogh3WimlSKdHkfRXUFe9AZXfmrJIDIbEorByttllRja8WI5
         kjobEQ0cAU5ZSTfQbRN3VRj8o3HPCffLOUOFqrYNjL9pE6wI8blpcSiKFxf4Dw4magOz
         WBnjX4FJpo7e1RD/h8sJssaVy7YSMKTk2MYmUett8qortn1wumi8VP2kKDELLDLrGZIV
         zllNBPhPYC0n8+YlmRRZzHwnLNSRbHpgd1Eaaqf35u2QT+KnA9ow8DB2daVRGtuaYh6N
         YM94Pr2JTFaSeMBI4iiPuRJ1MF95mffcoqLeXx4gh+LgP51jgHx6B4hxS9Ex3BLsp/m5
         oKKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=D6y4KLGxRQ540fV1Re/bXuRB001vvWdRU1rGO5Lr+IM=;
        b=ZXfCsPkaxhsq6moG8LfdPYa1xpMhfXfZ7DXQ/Uz0349eFy4R+VD3BBfUmn7uKsS6EU
         BZ3EoVyLuGH+Ybzi02hftYqs5PxglTN3VR5xY+069PWQwuGbWcvnFIApCRAq1z0KfY1o
         tB18ibhn/yR6E2P6d6MO7y8JMoHzXrUbphl7vxqK40ieTYkaARAR8lp9kfhzf6rX/Fhc
         aaHhyDEk0IzeZ86bpepAVm/CfFxW93mpIRZDLOBZFAbK1vIk4l6MqgmnxTi6hLLAm1bU
         Qg+vmkNrB8Z8hxkaAY8cV0MsugdhzsGCHPwN2/q5nkKnhUMiEJ0xwob598fdGsayoofD
         35ag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Qz1M7PvU;
       spf=pass (google.com: domain of 3ad9rxqwkagalbcq8sjlgcpqemmejc.amk@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3ad9RXQwKAGALBCQ8SJLGCPQEMMEJC.AMK@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D6y4KLGxRQ540fV1Re/bXuRB001vvWdRU1rGO5Lr+IM=;
        b=l4Yh4RIw+GJsCJPo/59Je8L32OJWS3K5e1QbmDEyP/bHOKv6sFC9BEi65bW99N7MO4
         YsTSTeISRnJsYlKivoukVdMGRBXFZXiGmb2AUCfP28uYgoAKFw8iI8ZkYvGE8qWDsWyW
         BAkoZ4ZC0akIDQk9WkKDN3UZY07dRPDnc9SuZ/5X71PLf4V9t3xWowkNjCrxokTDnbIb
         z6gHZm12A95ickJcJ9N+n+pwlD8oes3fFMwn2cWiMlEM7gR5P0m1Kx/0zlz7Qo51sawP
         ZrsteiQ5MtnE71scRCr+Eh3/fdayewe2/cEvkUA5RZPC8d64J9C+/RPusrOVoF4WIyhV
         NSIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D6y4KLGxRQ540fV1Re/bXuRB001vvWdRU1rGO5Lr+IM=;
        b=c8lCLaePpApL4p1LrbgtAefk5otDe29G/VizoGXMBuj7huzZTF14IfZHAwUrIvy5Mu
         hA42cz5iTR1+69FyEB3F83nEyg3Ceq/F4O7/5wguIP04qkDypx3yZXdy/lO9gnxLOR88
         wciRRQ8aq1xNHwLti1uCnhfwVoGxoxQwHBXR002+KHl8twHkELGffhhKGSgO8akKwS6O
         azXyX79lVDs4KsDN7ThLxYCd2GNnz4rSSP3jQsoaTSrS53U4e1nkSuJRVnMsyaucQBWY
         XH2AA1NV7mKfgpL1uKlL93cpOB1jdh+Dx5Af6KMxMjm7bROZkb3FVhUMBpzP3onnf2rX
         nfCA==
X-Gm-Message-State: APjAAAXrOYVfksmXGAYx34RtGbzqaal4P1Kv/dNiiLm/QE5LEMuUE3SP
	YQ70PL3a1s8Zt9WDa/+TK/c=
X-Google-Smtp-Source: APXvYqzBqnmVkxZJFuNmf5neY44Pdsg5/YyeDvgLJhT51LkMJAS8vZKq2YAjUsw5Ljqu1ParHTjeEQ==
X-Received: by 2002:ac8:7104:: with SMTP id z4mr31880539qto.52.1565646698360;
        Mon, 12 Aug 2019 14:51:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:d081:: with SMTP id z1ls229095qvg.7.gmail; Mon, 12 Aug
 2019 14:51:38 -0700 (PDT)
X-Received: by 2002:a0c:8602:: with SMTP id p2mr31609751qva.111.1565646698112;
        Mon, 12 Aug 2019 14:51:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565646698; cv=none;
        d=google.com; s=arc-20160816;
        b=owUC331Qjyqh/E972zxen2pCg4BkVQoEpSeaPcxhgrYhHM8v/4AtcRz/yAHq+tXKfs
         MAKN9Hf7h6iPTElvwfAy8C0LN8YUoO44Ld7nkw/jWVKVDQJJgOhY6ix15BlY4Mg/QpB2
         11LCPQ4NRWCyol49v0BFs5xTGMB25YEwK+ycBW3kfuZRM7zm3v5b5hBvkymc51r0rH+H
         lRNIJK96MLVrCdcH0FysojLmBHxiy4mVUuupv4BMxZFd8m4MeKJaaUX4FNA+qzLVREQs
         QZjhu9WB1OunZf9One4h/qFuOaWoeLv43GReRAFUdUNYS+4lHsiNfbEHAMVI78S55VC0
         17Gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=Ci0/dDTEQ/TKTYA4PTTz/x+w1WNnSFlT+0iZElVTbkg=;
        b=JD6m2zlOddULOA44AM63Lk5KcMyq5QFbcvlarUgRduVGu7ffwVI+mqqn7ZberK6CnK
         qxM/kfrxWPTy8VDwKTBKJEw6UlwketshIHKVkwNoXIXfHEza6Llh06u4xWqVZ16bM8/P
         y1JzRFvj+4VF0URjgiPS4MNy7S6sGF0YoEP+09xJWkdjtCVJmrlh8vI7JLQySU7vxbew
         w7s+Nzlw50PWiaM0rtyeboKyMjugeUZgPs7wK6xhRnsrcHxUbHKDj/iRb2fCFpl4qzIV
         AEDdQa4POY5KltRNEQLTAzuNGBXQQVp+NbvCqUv7kgFTszcnX2PnWxkrMsvhb15ZprjX
         5bkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Qz1M7PvU;
       spf=pass (google.com: domain of 3ad9rxqwkagalbcq8sjlgcpqemmejc.amk@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3ad9RXQwKAGALBCQ8SJLGCPQEMMEJC.AMK@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id 37si921326qtv.2.2019.08.12.14.51.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Aug 2019 14:51:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ad9rxqwkagalbcq8sjlgcpqemmejc.amk@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id d9so94289562qko.8
        for <clang-built-linux@googlegroups.com>; Mon, 12 Aug 2019 14:51:38 -0700 (PDT)
X-Received: by 2002:a0c:98e9:: with SMTP id g38mr31135758qvd.187.1565646697667;
 Mon, 12 Aug 2019 14:51:37 -0700 (PDT)
Date: Mon, 12 Aug 2019 14:50:36 -0700
In-Reply-To: <20190812215052.71840-1-ndesaulniers@google.com>
Message-Id: <20190812215052.71840-3-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190812215052.71840-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH 03/16] parisc: prefer __section from compiler_attributes.h
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: akpm@linux-foundation.org
Cc: sedat.dilek@gmail.com, jpoimboe@redhat.com, yhs@fb.com, 
	miguel.ojeda.sandonis@gmail.com, clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	"James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>, Helge Deller <deller@gmx.de>, 
	Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, 
	Song Liu <songliubraving@fb.com>, John David Anglin <dave.anglin@bell.net>, 
	linux-parisc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	netdev@vger.kernel.org, bpf@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Qz1M7PvU;       spf=pass
 (google.com: domain of 3ad9rxqwkagalbcq8sjlgcpqemmejc.amk@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3ad9RXQwKAGALBCQ8SJLGCPQEMMEJC.AMK@flex--ndesaulniers.bounces.google.com;
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
 arch/parisc/include/asm/cache.h | 2 +-
 arch/parisc/include/asm/ldcw.h  | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/parisc/include/asm/cache.h b/arch/parisc/include/asm/cache.h
index 73ca89a47f49..e5de3f897633 100644
--- a/arch/parisc/include/asm/cache.h
+++ b/arch/parisc/include/asm/cache.h
@@ -22,7 +22,7 @@
 
 #define ARCH_DMA_MINALIGN	L1_CACHE_BYTES
 
-#define __read_mostly __attribute__((__section__(".data..read_mostly")))
+#define __read_mostly __section(.data..read_mostly)
 
 void parisc_cache_init(void);	/* initializes cache-flushing */
 void disable_sr_hashing_asm(int); /* low level support for above */
diff --git a/arch/parisc/include/asm/ldcw.h b/arch/parisc/include/asm/ldcw.h
index 3eb4bfc1fb36..e080143e79a3 100644
--- a/arch/parisc/include/asm/ldcw.h
+++ b/arch/parisc/include/asm/ldcw.h
@@ -52,7 +52,7 @@
 })
 
 #ifdef CONFIG_SMP
-# define __lock_aligned __attribute__((__section__(".data..lock_aligned")))
+# define __lock_aligned __section(.data..lock_aligned)
 #endif
 
 #endif /* __PARISC_LDCW_H */
-- 
2.23.0.rc1.153.gdeed80330f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190812215052.71840-3-ndesaulniers%40google.com.
