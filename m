Return-Path: <clang-built-linux+bncBDYJPJO25UGBBMN7Y7VAKGQED5ZWBBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BE038A9F4
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 23:52:50 +0200 (CEST)
Received: by mail-ot1-x339.google.com with SMTP id g8sf6552928otj.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 14:52:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565646769; cv=pass;
        d=google.com; s=arc-20160816;
        b=rebdOWGO/dDmOKfjL6+Tro4IQ3kLMcEC9e9V4QLIl3pmnsL33GTRCjZrVDX9xjhhRz
         eJmbllBc7uYdt9+xh3NO9Zj1rcgrXPTLrAvKljMmp42AA0We86u6F7EmE27azxA/fr4v
         BY6LSuU79YoMUwzJDtmTsAaBA+yk0bzlotJ3rbe0XzZz+sjwc+TxO5r8X04vaBlDQl+0
         ZeUS/v7fjD4nKSv/Gfzr9pgOqnxQUFWLMz9C0bL5Ek1ZD4B2ex7OkI8SFjBdz6M6ZrxZ
         lJ6VbRq6YhMlYYC6gJzisg3Bk5KFxn29KwxhGjUiDR/KZHuL6EBRLZfRsUPkBoce9VyF
         cUpA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=8+Qf7slCqC3daI1Gs1ynySl6q/dQKdJqhh6cPSAFiBs=;
        b=XyQXeEQKmyIqA/qlaaiCmbG66x4g5tQEUwQoCWP9ZVsusQNtaeubDn08cLrBuRQTbq
         Ty4gM/fG9LBjffhFHbclig24foH1u7onNisuov4IMo/ETfDTQf3QEeLu2b3h7EqXZY3X
         h+BVdp/Krn61ghV0XRhUEGPA5HOd7dHkqDDiK1orIU53hMdSvXU+9qsHIAA2R1JWLaNW
         2ooFu6rePT/eUduzBHWlEy9O2yS/9ElLIAXKf+lLUF2nt3DqohZLcO2ZDZg5MNAdSNI9
         yaC36jzBHwBP6lNcLJeyA2t66/B5jN+afQNS7WCza5MQNvT8UOStQrHKn7RRzXLybuid
         hfIA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=AwtjYLPB;
       spf=pass (google.com: domain of 3sn9rxqwkakcuklzhbsuplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3sN9RXQwKAKcUKLZHbSUPLYZNVVNSL.JVT@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8+Qf7slCqC3daI1Gs1ynySl6q/dQKdJqhh6cPSAFiBs=;
        b=I2e0oCBpxjr8YEZofivRar/GcgfQVAvOcPttSIzxArEPC66RhN4cc4zViiM3QmAXDJ
         mliQ+ccJWBZpAmiJPdUiMHh0IzEWT01TxAB1vCNouOGYx9NWRTv9R1wpdmTYAgw2PpiS
         vagzdidr09/90HOfcs50w4trd3a3WkBlKruk/2DZ3ovN6PudAtwRcVBT+w1iwKmkUUzd
         IyyAK9eHBnexAYfuqjTNYWGg6U2CGVGpTi/iTmkl/f71G+OIIWuAegnptKEax6ZRpo26
         fxqWPYeCUGn83Tw+5OCFx1FyFVbuPkaO/bGA935LdhSL8LvLdsoROexh0IMXoOxEeSlP
         JUaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8+Qf7slCqC3daI1Gs1ynySl6q/dQKdJqhh6cPSAFiBs=;
        b=Y7LVi5CJ6nZIuYHG07i9vaC8TJcyeU15LCW/o+Djzstxfe4VSUskqriGmpGD2DV1Gn
         h4gAtbFtgiPhHBp++AsD10FXI0BBmFfbZQfQxs1XFbs3oozTWc+tTjgu6xbGb0h+0BM1
         66zkwUQCBlhrFHSpfZw599E2AaAZBkKTH4cIfSq0I/DLyUzmTF3NenD0P4ApaMLHUXOJ
         yNx6iKCNXP32H3cp7SLSGMBlin23cpe9ZMfDYO4ahuAoPQamlY+pUDuHuVfTmH7yWb4o
         2vnnKPxOMjUjeQFf7ILzG8LKlsKaHAuZWxpSIJt1Ov5ICmdcnlEYGzCYnaRABkoxFD8X
         EmOQ==
X-Gm-Message-State: APjAAAVHfMlIppIvXTkuqLM1MD2HAm63k8q4Vu+S2WVZVhc7NU/zjyfO
	pSIlG/zM9gq0VEcyRVAntQA=
X-Google-Smtp-Source: APXvYqw3JbQu5mfYVsuU2RpOM2borOBVeRmGWDNsaV6aFDXiWgEoTnWP3stuRKzZhYfAq9Rhl7e9yQ==
X-Received: by 2002:a02:9f19:: with SMTP id z25mr16046154jal.107.1565646769379;
        Mon, 12 Aug 2019 14:52:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:8d17:: with SMTP id p23ls6141418ioj.14.gmail; Mon, 12
 Aug 2019 14:52:49 -0700 (PDT)
X-Received: by 2002:a5d:9f07:: with SMTP id q7mr19161902iot.21.1565646769153;
        Mon, 12 Aug 2019 14:52:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565646769; cv=none;
        d=google.com; s=arc-20160816;
        b=Xvn+pMA1tTsN8fSqVdPXvUOpfXRLIFkGOuFlN0gCNF/RiShM1PKirJISywLjvbkTgo
         qLDkogmFPA12IwSWgi+iRDDfcBW6n///fnDxFXuZIpm3XhiZ6Hyuwub67u3e42vz68DH
         j7IV9/JSjaVWvYWSdQGs7fG93TYND7vY1sx+rnZXAftg0gi7j0vC16HqOTjMV80Sed/w
         bCm6zisvnvSZyN4b1LVM++oakKz2TwzDTjpSGaM516NBxMh67qr6C+7ct1ElgwpYAzx1
         OgB6AHI0DxfU6PNWScIWfc72+JqSvaitJnO64vygkBM0rt9aRgK8p8eI6St/fHzvqmZF
         I9QQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=Yon+tib6K4agCcJ7udMNHZNwzVmJ2uncNyVHsVPdrbk=;
        b=e8PzFKQnpRDIoBuOrxWoeWx695H1GyYTd5F9jvRJQ2uJ3ajhWOrErWBx0O/yhfslgk
         XSSphHQQcsSfdTjqbOcg/NDKncG2NrzvdoS4ysJCp1WzFy0FiL0b++LrCm19d97BoQKQ
         nUp6pFhrWS5VMuUvBdsjAgnXstnRDbMu4S3bhm5gm+Bg2Qy3hgMl/jE2sakYU+3MPTo8
         ThYHMX5OkzGN0RP53hnHzu685Ejii4oT2d91u4EmplL79eBiYMW9wOv0vsgovt9vkDw2
         6RqImdyuJSKVtt9W35RPjYpTz4nZJrJVrVUaaOFowEGCVeXctyttrfs/reh60VqfB3oo
         mtsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=AwtjYLPB;
       spf=pass (google.com: domain of 3sn9rxqwkakcuklzhbsuplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3sN9RXQwKAKcUKLZHbSUPLYZNVVNSL.JVT@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id h25si4069819iol.2.2019.08.12.14.52.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Aug 2019 14:52:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3sn9rxqwkakcuklzhbsuplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id 21so67094444pfu.9
        for <clang-built-linux@googlegroups.com>; Mon, 12 Aug 2019 14:52:49 -0700 (PDT)
X-Received: by 2002:a63:5550:: with SMTP id f16mr33164653pgm.426.1565646768288;
 Mon, 12 Aug 2019 14:52:48 -0700 (PDT)
Date: Mon, 12 Aug 2019 14:50:46 -0700
In-Reply-To: <20190812215052.71840-1-ndesaulniers@google.com>
Message-Id: <20190812215052.71840-13-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190812215052.71840-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH 13/16] include/asm-generic: prefer __section from compiler_attributes.h
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: akpm@linux-foundation.org
Cc: sedat.dilek@gmail.com, jpoimboe@redhat.com, yhs@fb.com, 
	miguel.ojeda.sandonis@gmail.com, clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>, Arnd Bergmann <arnd@arndb.de>, 
	"Naveen N. Rao" <naveen.n.rao@linux.ibm.com>, 
	Anil S Keshavamurthy <anil.s.keshavamurthy@intel.com>, "David S. Miller" <davem@davemloft.net>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Alexei Starovoitov <ast@kernel.org>, 
	Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	linux-arch@vger.kernel.org, linux-kernel@vger.kernel.org, 
	netdev@vger.kernel.org, bpf@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=AwtjYLPB;       spf=pass
 (google.com: domain of 3sn9rxqwkakcuklzhbsuplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3sN9RXQwKAKcUKLZHbSUPLYZNVVNSL.JVT@flex--ndesaulniers.bounces.google.com;
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
 include/asm-generic/error-injection.h | 2 +-
 include/asm-generic/kprobes.h         | 5 ++---
 2 files changed, 3 insertions(+), 4 deletions(-)

diff --git a/include/asm-generic/error-injection.h b/include/asm-generic/error-injection.h
index 95a159a4137f..a593a50b33e3 100644
--- a/include/asm-generic/error-injection.h
+++ b/include/asm-generic/error-injection.h
@@ -23,7 +23,7 @@ struct error_injection_entry {
  */
 #define ALLOW_ERROR_INJECTION(fname, _etype)				\
 static struct error_injection_entry __used				\
-	__attribute__((__section__("_error_injection_whitelist")))	\
+	__section(_error_injection_whitelist)				\
 	_eil_addr_##fname = {						\
 		.addr = (unsigned long)fname,				\
 		.etype = EI_ETYPE_##_etype,				\
diff --git a/include/asm-generic/kprobes.h b/include/asm-generic/kprobes.h
index 4a982089c95c..20d69719270f 100644
--- a/include/asm-generic/kprobes.h
+++ b/include/asm-generic/kprobes.h
@@ -9,12 +9,11 @@
  * by using this macro.
  */
 # define __NOKPROBE_SYMBOL(fname)				\
-static unsigned long __used					\
-	__attribute__((__section__("_kprobe_blacklist")))	\
+static unsigned long __used __section(_kprobe_blacklist)	\
 	_kbl_addr_##fname = (unsigned long)fname;
 # define NOKPROBE_SYMBOL(fname)	__NOKPROBE_SYMBOL(fname)
 /* Use this to forbid a kprobes attach on very low level functions */
-# define __kprobes	__attribute__((__section__(".kprobes.text")))
+# define __kprobes	__section(.kprobes.text)
 # define nokprobe_inline	__always_inline
 #else
 # define NOKPROBE_SYMBOL(fname)
-- 
2.23.0.rc1.153.gdeed80330f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190812215052.71840-13-ndesaulniers%40google.com.
