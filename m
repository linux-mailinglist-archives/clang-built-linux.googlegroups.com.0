Return-Path: <clang-built-linux+bncBDPPFIEASMFBBVVOZD3AKGQEPVA6MTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E2611E8FAC
	for <lists+clang-built-linux@lfdr.de>; Sat, 30 May 2020 10:20:40 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id y12sf1405922pgi.20
        for <lists+clang-built-linux@lfdr.de>; Sat, 30 May 2020 01:20:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590826839; cv=pass;
        d=google.com; s=arc-20160816;
        b=kB2BREk6Bv6onhrPqFgupsGDDlrqCKysBBLub/4w4O72td/vNx9a+GCH7CCYIsjxgn
         pcwz9KGisvHTOZO3Otq23CXB07SbGV4l9lqXWBoJO9okDIZ9ldo6LsHILAZccAwA7Dtv
         1PxX3kE3hwNI3dKTeDXkfOwttFL4fGpKv0Vg6fX3lO28KMK+jiUo1CEM9FcIE5egltQm
         HcJ+ceEwrMCAUK5qxtrJrzC3esrReINNmtyj69cjcHInqQOQJ2I6a3MFX7PMcVSCfOAE
         IDnZF56KRP2LR98vokWkPZDrUYVLmNP6JJjhxFVuXgmbnzB9CYWU/piB3IkhDac4QX3m
         DuTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=mRXO0G7lrxas2652MlADCR34ZTmgIXOBvfE7NbYM1i8=;
        b=YgQLlr2y+A8rLz/nGwyXcMmAufs4q5eq3N+Z8JD5aHS9lPKwYkURqJ/fLD8w/O80Gq
         2wtJ7H2BTY0/4mJkg733qrxxS7lk5Tov2elBJ+HX3Asw2KpAQvODcgHZL6hKFB+6I3/8
         I+an2Xp5kv3GqcylD9R6bwe6Of65cP9JM2d2s5KO+cgZebkrlSmecMWB+259MNbuAnP7
         jh2tBYg4zcNK1gnryECGQqea83HFFJiOL+YbKwiVPuL37i0zyp9jTz4SOaMqj9VWIDpw
         Ayii6Ym0/j8H1I7iO7tL+CsVHzWu7eyMIsXDSrIDUYHjMxIYBW6cg+CTmsgGkLcxQ3uh
         KkZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SoZuqjk5;
       spf=pass (google.com: domain of 3vrfsxgckecgw52us56u22uzs.q20qzo1u-p8wz7-zw18bu22uzsu52836.q20@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3VRfSXgcKEcgw52us56u22uzs.q20qzo1u-p8wz7-zw18Bu22uzsu52836.q20@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mRXO0G7lrxas2652MlADCR34ZTmgIXOBvfE7NbYM1i8=;
        b=d4R8f/zuMPK67w5nbQyV+lWjeZ4R4SrX9ZL2nyhCY5HXdmb3XuKPq3MH/5SS7DS2KN
         WYdEp8yDE93Kldx5lwIQ87neJ9MCteOlmVNSp9qy0fXfHUKMcbOz/E+iT8mvhZZLDvaq
         PO0AVixj1tIi6dp8q18zGwLaxNTLzbCVA9lGKcp7muzyHeWXQ/22m3yJRQkQlHoMgSSp
         qyn2d6Rgnx+gBqVmbNyJRTG1V4f+Z9GWFjH9fft1Ar0fjk+AKWt9nScSnYBcjeLUweE2
         nINIJ6/02zdTi7waU40j/t8OZRAoWsarQkyrQ8gLtmLLJZfSb4T5hCp+Z/YraMojSM01
         4ncA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mRXO0G7lrxas2652MlADCR34ZTmgIXOBvfE7NbYM1i8=;
        b=YY3+AdP4ed0YDf4SahWjkNTgQ/rdCsselFdd5ouZyr/EJg80O97c3gHPqTTe8PqD5m
         2Uw66hKxO3WYVBYtYNGPEKAm1cL7Uj9mjKrQz2bkXuMfuKg7wRXqPvaAF0Wevob3FyUo
         8xZmgh93n4kPoUhQEvtWky8j0idmpoXxhFBJAPV8jsTiQrqJoJqAtmCr9mbFbfwLCyTR
         IzxPXr1z8ONBs5cSklMmVcBPRb3vw540FbJ+cXdXJrEfyPkCK6yjJiehu/2qleZBR0sI
         mdAtJLGwNFgV6VhaXMAxvHQ8tVkMZHaCQexoNu8WKz6fp7cjwSCBBrto+gTy6X44/fV0
         skPA==
X-Gm-Message-State: AOAM532ODn4OZYKuY8L8cjk1Ky9lUPvrJqsJqqel9nqxEkQhwpZ1Nmqa
	quHhRGPTnwPPSF5v3V62+YI=
X-Google-Smtp-Source: ABdhPJwGjcC6kFidqC57vqFGhwhg21FyaR16SB6n4bcKpZ6+EOb3qlPdGSPfBzCZOiMwqwjhzffuHw==
X-Received: by 2002:a17:90b:e90:: with SMTP id fv16mr2488173pjb.1.1590826838893;
        Sat, 30 May 2020 01:20:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:6943:: with SMTP id k3ls3626955plt.7.gmail; Sat, 30
 May 2020 01:20:38 -0700 (PDT)
X-Received: by 2002:a17:90a:8416:: with SMTP id j22mr13438734pjn.92.1590826838403;
        Sat, 30 May 2020 01:20:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590826838; cv=none;
        d=google.com; s=arc-20160816;
        b=SyBP0Is9ZgSjeuesVAYCcq7aGJTqNsFYb/06y3feC+0px4sXIRz1MPc5G9C9PrvqOK
         lyM+jR3OhPka4EKbe1zAg/+q8uDJ4GSZsjIA53Z/eFyhi5OJPyUKh6xqoX8641SsWM8L
         FxNH/tcmKtSRorstNB6nRO95pwH/oZEHC10J6amvtfgfW7CwpsOS2pzNe992CP9iPRDY
         X+WPC9zbHuc2YHqHlRBRtS4HwVXvi08C4B/OMvXALw009dkFX4gtlFUglmivvfoX1VLJ
         IZMkW/GT4DxPhUYQfTeLTnOP+9QOs3KhLHrt1jmbLR+K2tNKXOofOL+W72UpJUJxwIcR
         s50A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=SSDWtclczDAnQ3izYJ36eT/zTxSHgQUYdQ4BNnNP5dw=;
        b=xqeVsRH1Sk5f1A8uR7kuanb6uvxsNlx7z6/ILTRthNYv7VBJGX027Zj6Plzhx1HVqp
         tKCrU7aYadzY+DdL/9ODWF33oYwLdzi0yuXBCmLHi/5cEXMoVfC7jM90opiz5ZZO9Cqt
         mgZKg7oxit51ZltVdlPqvvUYH04RE49BhywKoRZ/MGmP8Z/tN67Om8Cd4USlx1XHm98A
         Xm4EWKSE4hddBO887pkJpCWPQa/GdmqpDBXwlm4oLjdVyz0JBYLxuxVpb6Dl/+m40je8
         drYSfBicQoYOi+wdytqzOhRxE/rhUYSxXKi5ER63oVD7Mni1V1LW7TtFCia4HOAFi2c+
         goVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SoZuqjk5;
       spf=pass (google.com: domain of 3vrfsxgckecgw52us56u22uzs.q20qzo1u-p8wz7-zw18bu22uzsu52836.q20@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3VRfSXgcKEcgw52us56u22uzs.q20qzo1u-p8wz7-zw18Bu22uzsu52836.q20@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id r127si599704pfc.6.2020.05.30.01.20.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 May 2020 01:20:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3vrfsxgckecgw52us56u22uzs.q20qzo1u-p8wz7-zw18bu22uzsu52836.q20@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id e192so4301368ybf.17
        for <clang-built-linux@googlegroups.com>; Sat, 30 May 2020 01:20:38 -0700 (PDT)
X-Received: by 2002:a25:3f41:: with SMTP id m62mr18219047yba.455.1590826837446;
 Sat, 30 May 2020 01:20:37 -0700 (PDT)
Date: Sat, 30 May 2020 01:20:13 -0700
In-Reply-To: <20200530082015.39162-1-irogers@google.com>
Message-Id: <20200530082015.39162-2-irogers@google.com>
Mime-Version: 1.0
References: <20200530082015.39162-1-irogers@google.com>
X-Mailer: git-send-email 2.27.0.rc2.251.g90737beb825-goog
Subject: [PATCH 1/3] tools compiler.h: Add attribute to disable tail calls
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Quentin Monnet <quentin@isovalent.com>, 
	Alexei Starovoitov <ast@kernel.org>, Jakub Kicinski <kuba@kernel.org>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Cc: Stephane Eranian <eranian@google.com>, Ian Rogers <irogers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: irogers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=SoZuqjk5;       spf=pass
 (google.com: domain of 3vrfsxgckecgw52us56u22uzs.q20qzo1u-p8wz7-zw18bu22uzsu52836.q20@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3VRfSXgcKEcgw52us56u22uzs.q20qzo1u-p8wz7-zw18Bu22uzsu52836.q20@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Ian Rogers <irogers@google.com>
Reply-To: Ian Rogers <irogers@google.com>
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

Tail call optimizations can remove stack frames that are used in
unwinding tests. Add an attribute that can be used to disable the tail
call optimization. Tested  on clang and GCC.

Signed-off-by: Ian Rogers <irogers@google.com>
---
 tools/include/linux/compiler-gcc.h | 8 ++++++++
 tools/include/linux/compiler.h     | 3 +++
 2 files changed, 11 insertions(+)

diff --git a/tools/include/linux/compiler-gcc.h b/tools/include/linux/compiler-gcc.h
index 95c072b70d0e..cda555b47d3d 100644
--- a/tools/include/linux/compiler-gcc.h
+++ b/tools/include/linux/compiler-gcc.h
@@ -27,6 +27,14 @@
 #define  __pure		__attribute__((pure))
 #endif
 #define  noinline	__attribute__((noinline))
+#ifdef __has_attribute
+#if __has_attribute(disable_tail_calls)
+#define __no_tail_call	__attribute__((disable_tail_calls))
+#endif
+#endif
+#ifndef __no_tail_call
+#define __no_tail_call	__attribute__((optimize("no-optimize-sibling-calls")))
+#endif
 #ifndef __packed
 #define __packed	__attribute__((packed))
 #endif
diff --git a/tools/include/linux/compiler.h b/tools/include/linux/compiler.h
index 180f7714a5f1..9f9002734e19 100644
--- a/tools/include/linux/compiler.h
+++ b/tools/include/linux/compiler.h
@@ -47,6 +47,9 @@
 #ifndef noinline
 #define noinline
 #endif
+#ifndef __no_tail_call
+#define __no_tail_call
+#endif
 
 /* Are two types/vars the same type (ignoring qualifiers)? */
 #ifndef __same_type
-- 
2.27.0.rc2.251.g90737beb825-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200530082015.39162-2-irogers%40google.com.
