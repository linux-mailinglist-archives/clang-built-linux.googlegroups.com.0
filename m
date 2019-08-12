Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZF6Y7VAKGQEDM7IMUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D6988A9BE
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 23:51:34 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id y22sf61844453plr.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 14:51:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565646692; cv=pass;
        d=google.com; s=arc-20160816;
        b=tJjknCPlOwQZTw3ZRwY3d1znKtEduxePvRPIofK+HCL1aQ/RgNQXdI8YHlg1si3C/q
         k1TxPnlE2ZkCjrBsQBBmZyLre9Tnjql08Uq6KUyIThY12LeTyfcze+hBHiVvxTtnP5Xk
         ATEE45cSt+2j7gLeeT1BOyxDKeM3zw/pym02RVKGZAbHIPyJYaGqbM+H7XMKh335JE5L
         fcsP40axspIF/cBOe0BKc7oVAjjv/3HlCvXM4zNcozEt0F/XsI2i4LeWJlEOiUXs29wA
         5IFzVnZ/c3Zdz2crFDtKJbxxbHFJXX+wyemsfQu2aADADDs05bNldhRyJmI6PH1TnmlT
         8OFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=pKARzdxqn564ByxsrK1OEM60Do5xH4/Krg7uUEDiXPo=;
        b=oSWlAiDjiJAkfN+b68lNA0VqgDmb4XjRZCZ1PsVttJnIR7Qg9RaaBFkzrojZvY/Npe
         D5wABS8W5sXE0cj0BptPiMxbbumKZrqgJyf53Sx3rtWEnh9GNFeTMCjdqssz2YSzLK54
         YMI4ukuvY/FZX8epYG9NYngRCRM7/sknp1ViTlBxM6TNToHsZIXzB1jYhNikCjbQyRsg
         2p9SmqMB3TD96NDtpVl473da1YYWEPVAGhLYpEqMNeaS4EwcnMUQ4MMbMyfUq0n6gbFK
         kl4Fz+Afe6m6sjuDiWvbxnMFV/fsVdEv2fpfG21oLtfQeyk1A02sCemCEiRc+76kP5x1
         J3lA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Vd9nPvrN;
       spf=pass (google.com: domain of 3y99rxqwkafof56k2mdfa6jk8gg8d6.4ge@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3Y99RXQwKAFoF56K2MDFA6JK8GG8D6.4GE@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pKARzdxqn564ByxsrK1OEM60Do5xH4/Krg7uUEDiXPo=;
        b=c/nWSXmkGG8TjMN4/RiqBv/2En5WodLTEHRAC3CUQBo7V6NU9P/vlbrITC6f4hdNML
         1sryt8+Shnwbq42rnP6pW03l5dslH5C20JH1YzkRozB7Jrv2RytAiTVm7d6KqKVZrbWy
         v22XGwQDa5b9bi4liGrKwZeFtej7F3FEFdTufpHVfIzZnQSeFmKwuaJ7X7PcijnfPQuY
         pChBen6eRc1YfbW1HeHevNBa6vXUs5av+9HVnjeYvgprCoLxFqEOlsiZMlv/3h8VtrRA
         lnuzqYqUGUtJ9NnSHbWyE1zKzx+aqIwSySs5mO06JdsSEIZrhcQWKHr1Xsuk+yvISkV6
         O3ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pKARzdxqn564ByxsrK1OEM60Do5xH4/Krg7uUEDiXPo=;
        b=jxIahFVEOW//TfCGvrhAvbGB1d5vCxbjob2ZqTsnn+XNEaHWDvwJzQvHdLtGNmxRFH
         tVVasDSy74QTQ4HdSuF1Z9NeoFZ+pXgPTD3y7deFYUbZXQBb1qhpC7VvVbDONarlBH+6
         qv7JMA4LO0byaoISaYOBrYEQ0+9YHJiQDyPNsS5tT4lQRygx22eeCuS5JSa9E2lydRWw
         7FoAaIas0+JACRAIUUEzwfPezNylmaZVwQIK38UrwddjK5QP7XjqN8xR4CNasA5gUnNQ
         qymziiBv9GAzwxTyvigP98u0gfoLMmv62LmHm4/DQuyCHoR4YKVT8bzb5MkKzTm4SBl8
         2dKw==
X-Gm-Message-State: APjAAAUHHXrkwcXqI+VTTuRpQyzOy+EPyhyn5/ZRRUQ2a2FZCNTVK0ct
	H3vHMQVoKHE7rNiXm/MJ3Lc=
X-Google-Smtp-Source: APXvYqzUK6gIxhVfzkETl/vqyY7aHwrmCTh48XYXorb2ZS2Tl0McLcJ3u5I3i1ZIq4z2jNjDjuopxg==
X-Received: by 2002:a62:144f:: with SMTP id 76mr5107208pfu.62.1565646692714;
        Mon, 12 Aug 2019 14:51:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a9:: with SMTP id a38ls29146629pla.5.gmail; Mon, 12
 Aug 2019 14:51:32 -0700 (PDT)
X-Received: by 2002:a17:90a:4803:: with SMTP id a3mr1303154pjh.58.1565646692414;
        Mon, 12 Aug 2019 14:51:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565646692; cv=none;
        d=google.com; s=arc-20160816;
        b=0XUCM/03IUGCIB24huQmXjPoxdPCKuP6FlvG+nkpaCQ76mCptm5Ne5K+xAypV8V2xh
         AwJg22Uu35GfIRS3MUdiAulRAgGreXnthuRfoodY5V8pFkEtH4tbBK0NTO4r4fFp1EDF
         MHCch2u9NIPeOJNbVEbu/fxRdIrcCbJY0+7LljMiXr/2fvv+0IaNarqWi1n8bNivFNOp
         HohjSOjXdhFwfDi9UMLy1hVkFfvIHphLpkg9J78j27mkX6QJqI1pUGjAR0r+Vm/AIG8g
         qtU4wnGUmGvjQzZD8JzoY2v1O+U1qQlNFEMCtImN06r/iAwMLrfbaPQxmh3VO9jGLlyH
         0IUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=0kDIUkQq74jS4s3L5upJ2sLFeJ4SQuXmh/iJl/tNzO8=;
        b=ZbB1NcqRA6VUmPhr8dJZehGBHjjKRMPBsTRPqFww5bWNz6Pezqb47m/YyDmWl43/a1
         aoPsI9wDlJ3TKISZ4zsNI9ugYZgRkq/zVymKLpFBfrLK63L8QJdF+A5iqBPdr+EpnI1W
         eBBqwbGP+h1qJZKaKWP2jLC+N/hHtQYpbMqewu6baQgid+wuNJaAhD53VBO0pjKmCglu
         q0kCh3ZyUMjDMWh3Y7SUz9WzV4deR1WzsF98dgm46hFic1Vxx/jK6xf5p2QsFPGmLDuq
         SDrjQm7XbKHHaJxZp5NXA46LgVivapRyjYgGRBrp1Dn5LVHIcsZG083p5+Wti3AYXaAZ
         DeEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Vd9nPvrN;
       spf=pass (google.com: domain of 3y99rxqwkafof56k2mdfa6jk8gg8d6.4ge@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3Y99RXQwKAFoF56K2MDFA6JK8GG8D6.4GE@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id w72si4736783pfd.2.2019.08.12.14.51.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Aug 2019 14:51:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3y99rxqwkafof56k2mdfa6jk8gg8d6.4ge@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id m198so94379959qke.22
        for <clang-built-linux@googlegroups.com>; Mon, 12 Aug 2019 14:51:32 -0700 (PDT)
X-Received: by 2002:a0c:af33:: with SMTP id i48mr31608806qvc.185.1565646691285;
 Mon, 12 Aug 2019 14:51:31 -0700 (PDT)
Date: Mon, 12 Aug 2019 14:50:35 -0700
In-Reply-To: <20190812215052.71840-1-ndesaulniers@google.com>
Message-Id: <20190812215052.71840-2-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190812215052.71840-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH 02/16] arc: prefer __section from compiler_attributes.h
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: akpm@linux-foundation.org
Cc: sedat.dilek@gmail.com, jpoimboe@redhat.com, yhs@fb.com, 
	miguel.ojeda.sandonis@gmail.com, clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>, Vineet Gupta <vgupta@synopsys.com>, 
	Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, 
	Song Liu <songliubraving@fb.com>, Enrico Weigelt <info@metux.net>, 
	Kate Stewart <kstewart@linuxfoundation.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Allison Randal <allison@lohutok.net>, 
	linux-snps-arc@lists.infradead.org, linux-kernel@vger.kernel.org, 
	netdev@vger.kernel.org, bpf@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Vd9nPvrN;       spf=pass
 (google.com: domain of 3y99rxqwkafof56k2mdfa6jk8gg8d6.4ge@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3Y99RXQwKAFoF56K2MDFA6JK8GG8D6.4GE@flex--ndesaulniers.bounces.google.com;
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
 arch/arc/include/asm/linkage.h   | 8 ++++----
 arch/arc/include/asm/mach_desc.h | 3 +--
 2 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/arch/arc/include/asm/linkage.h b/arch/arc/include/asm/linkage.h
index a0eeb9f8f0a9..d9ee43c6b7db 100644
--- a/arch/arc/include/asm/linkage.h
+++ b/arch/arc/include/asm/linkage.h
@@ -62,15 +62,15 @@
 #else	/* !__ASSEMBLY__ */
 
 #ifdef CONFIG_ARC_HAS_ICCM
-#define __arcfp_code __attribute__((__section__(".text.arcfp")))
+#define __arcfp_code __section(.text.arcfp)
 #else
-#define __arcfp_code __attribute__((__section__(".text")))
+#define __arcfp_code __section(.text)
 #endif
 
 #ifdef CONFIG_ARC_HAS_DCCM
-#define __arcfp_data __attribute__((__section__(".data.arcfp")))
+#define __arcfp_data __section(.data.arcfp)
 #else
-#define __arcfp_data __attribute__((__section__(".data")))
+#define __arcfp_data __section(.data)
 #endif
 
 #endif /* __ASSEMBLY__ */
diff --git a/arch/arc/include/asm/mach_desc.h b/arch/arc/include/asm/mach_desc.h
index 8ac0e2ac3e70..73746ed5b834 100644
--- a/arch/arc/include/asm/mach_desc.h
+++ b/arch/arc/include/asm/mach_desc.h
@@ -53,8 +53,7 @@ extern const struct machine_desc __arch_info_begin[], __arch_info_end[];
  */
 #define MACHINE_START(_type, _name)			\
 static const struct machine_desc __mach_desc_##_type	\
-__used							\
-__attribute__((__section__(".arch.info.init"))) = {	\
+__used __section(.arch.info.init) = {			\
 	.name		= _name,
 
 #define MACHINE_END				\
-- 
2.23.0.rc1.153.gdeed80330f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190812215052.71840-2-ndesaulniers%40google.com.
