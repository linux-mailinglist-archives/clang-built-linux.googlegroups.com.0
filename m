Return-Path: <clang-built-linux+bncBDYJPJO25UGBBKNRVX6QKGQEONDWPWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id EA8E92AE6F7
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Nov 2020 04:21:14 +0100 (CET)
Received: by mail-ot1-x337.google.com with SMTP id q19sf363428ota.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 19:21:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605064874; cv=pass;
        d=google.com; s=arc-20160816;
        b=L8mjHCd8lKpM4o7m98DwMP1aGzewb7Nrbm5MOIc6rlHZBxF7HcO9qscril03SlktCI
         n4wWbw8ImIUXNr0kxp8aGaCpXYYI3za3k3l6LxxRc2/G+LEMPbj/4gSl+nzTpF0VmXza
         J2e8BCA2MBTWRVRBiHho1CfZNuiUMDO+qWvXTSnloC7ZkOntZjL59Ns/MIzUiVxE2cUt
         Jq8W5p482ryPPcjg2Sjn38lgJKu+9N2FkRMs6+Wnko69le1KpEuzMaf6Blw1+IRPzrqC
         v+shvoe9jKdBEJXX2iUtE1b6ao7STQYcJmp4aD1QxwNgC2X9CPKZKAy2/95crdUtJAH+
         omzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=lgdaTUgoVakluON2bIUY4tZluulzzoB01k0n2XTtaHk=;
        b=JVhW9Xf4qDCD8iNM1+NcnI3uS9AZo2cLkCAPOsxwooCngfTm8hBk2HpQGwFTzxkue3
         b7qfRjqigZok8ihMQCEIgV97mhNnGN3JOG2xFVsvYhU1ozRnR1maG1txmXcbilUQvAs+
         /1Ht/FROFsiX5G4U1vGgjr94HVz1VtRqfKVCw9tB+l1rww+Tbwg3EJgTNXDs2xz7CnJE
         bH/5Hb+P8I3OFB5JSu3CdTc8v9aHxDWCgfCwqQr0maj8JJKmuaV/1ZDdHU1fAA4KIBiF
         0jUv7N+0Den0CWPctqZCCaH6QkTYh6244VpBEZ81KBnSHdruv7wC6gFrVA9QZOV1idRd
         Rc7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EnKewTgX;
       spf=pass (google.com: domain of 3qvirxwwkaawzpq4m6xzuq34s00sxq.o0y@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3qVirXwwKAAwzpq4m6xzuq34s00sxq.o0y@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lgdaTUgoVakluON2bIUY4tZluulzzoB01k0n2XTtaHk=;
        b=K4wAXTPgBpIt8u6bqu8R/dFTX3qIBs73ESrRIFeaJ3O+LqNWJzpY3nY/q8h4ZmgtCH
         44ODC6v6lqv+US1obY0gtcj2gBPu9fgZOerWRcB9SEbHNm6luMk+lvSmOnQm/39aSGle
         eN5FsYSs6oMdSN5Wsj+gdLm8NQvTqtJxyv7oEmTgAziZkDwntX28DsHqbz8KrGzNUKhl
         k/OXeneyraVLyFYt98rd65i25rJ2wzantnUNdzF8YuIpkGb0WIUCpuNeTVx8gGgb+Iva
         wPp+xvXsJrCji/h1IShC/LbnsBl2lioRx1Py2gzrYH3YI/8lvaN9mEX055ezYHlsdf88
         a9wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lgdaTUgoVakluON2bIUY4tZluulzzoB01k0n2XTtaHk=;
        b=VoaC54FJNdDM3w3UQg92/jRvAVPB45BbOiu+6l5qCvdUxX+mYyb+IMuVi5g1lL5in1
         c/ZRoE74RfZBtbz/0FmUhuQOQ8QOH0pCyQ/PyI2fxHqsmwt32mtjBRYZz75KHOMTVBDd
         CDvJzPD9NlKbSLmL6yhU5DU7qqIvAr9nz1YvC3eIb0JA4Ti5BDE0poi1iQ2na2CsP0oi
         4PIkssBQx8ZksmGyfFcu0hQfCjIKM9jLpQkfWSWXhd1UQ9C+LVBoR4Xhx78J3NvHpf7g
         Iu6hMhriwrzkoCI1guxW2WMcqSAydebullO2WR9otoKC9sEJ6+wwqzfiQ4dDDcJ63ZWp
         vLVQ==
X-Gm-Message-State: AOAM532RjVtGtQKRMs7SLNbtIWL1F5ChsNIp6T9G2eMbaijzSCeDSaUH
	qFi8fZXOQ1fury4orQprsAQ=
X-Google-Smtp-Source: ABdhPJxl3v8vvDRXD1NfzAKkcwv6/DK8d7Y4ayGANY9/O0DCqrlo2uKYKSmIxkRQKqTzyNTBOl61tQ==
X-Received: by 2002:aca:5d07:: with SMTP id r7mr816916oib.87.1605064873858;
        Tue, 10 Nov 2020 19:21:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:1c12:: with SMTP id c18ls2212083oic.11.gmail; Tue, 10
 Nov 2020 19:21:13 -0800 (PST)
X-Received: by 2002:aca:548b:: with SMTP id i133mr873961oib.113.1605064873549;
        Tue, 10 Nov 2020 19:21:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605064873; cv=none;
        d=google.com; s=arc-20160816;
        b=ZAQOH22uVISAJoNvFbOmdM3HD/EY4L6dgX+/UwebMvd9en60x9jBK3RUGlZNE4Komg
         8M3Dg5xcuLfGgOWzdW2tzCkg7WymGMIGgktOsRZeGQqFVzCA1/91bPogJs+U8vhducwt
         Rm3h38YX6AFEaqn1UTVGwDEIOuIIktv/yFuSfvPAwazF34LmOELcQQn9Cpbu3KjgLVrf
         Rr1Tldv8dt6d0vlOKmEgMXNOPEeBUR5w9psrN+SHZOK/XI9re6di8zs3OdY1wvTvBsep
         kdxGpQs2v9daN1mWyQRIJIUcL/BS3lBH4hhsMnrg8i2IwY72qHrZh6nFF5ToW8IjsAqJ
         a3MQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=IdlC5wqSkRhZShxcvJ+y95nrehDlV8OQP0epQPlLIWE=;
        b=Ee8AMgpoakFSQOB50wp2bYt4Aa8hZ3NuxKbnhiCWvPijsnIyCVX9J6847h6S4GdfxR
         pySMYWcA6fQdK/oX4H3QpmkcE0NXT1oNdaLajNIxX/QBYtFP6WbrN3qY7FugKYsLBNW4
         824rMgYVaC784LQdPVZDx1wEiaPYhatW2SQcn0W+1t1GIWVLMdm9gu8uRWX6dtZ9T+bv
         HJs4VgPwRB82V2J9IMekTb5Tq9EEK8SN7lGaj8Vr+tXgMLDy9xW4dLH/tThlhCIIInnb
         GZ3fyRRMB5DPY5nAnSj03sxiUrI718TUGMI4ezdN5K5oT+8F4uQm/GnQ8qNs5giNQQom
         y/GA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EnKewTgX;
       spf=pass (google.com: domain of 3qvirxwwkaawzpq4m6xzuq34s00sxq.o0y@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3qVirXwwKAAwzpq4m6xzuq34s00sxq.o0y@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com. [2607:f8b0:4864:20::f49])
        by gmr-mx.google.com with ESMTPS id r6si114940oth.4.2020.11.10.19.21.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Nov 2020 19:21:13 -0800 (PST)
Received-SPF: pass (google.com: domain of 3qvirxwwkaawzpq4m6xzuq34s00sxq.o0y@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) client-ip=2607:f8b0:4864:20::f49;
Received: by mail-qv1-xf49.google.com with SMTP id m11so49749qvu.6
        for <clang-built-linux@googlegroups.com>; Tue, 10 Nov 2020 19:21:13 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a05:6214:612:: with SMTP id
 z18mr5959926qvw.41.1605064873065; Tue, 10 Nov 2020 19:21:13 -0800 (PST)
Date: Tue, 10 Nov 2020 19:21:05 -0800
Message-Id: <20201111032105.2346303-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.29.2.222.g5d2a92d10f8-goog
Subject: [PATCH] MIPS: remove GCC < 4.9 support
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Cc: clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>, Serge Semin <Sergey.Semin@baikalelectronics.ru>, 
	Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>, linux-mips@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=EnKewTgX;       spf=pass
 (google.com: domain of 3qvirxwwkaawzpq4m6xzuq34s00sxq.o0y@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3qVirXwwKAAwzpq4m6xzuq34s00sxq.o0y@flex--ndesaulniers.bounces.google.com;
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

Remove a tautology; since
commit 0bddd227f3dc ("Documentation: update for gcc 4.9 requirement")
which raised the minimally supported version of GCC to 4.9, this case is
always true.

Link: https://github.com/ClangBuiltLinux/linux/issues/427
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/mips/include/asm/compiler.h | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/arch/mips/include/asm/compiler.h b/arch/mips/include/asm/compiler.h
index a2cb2d2b1c07..2b06090a78b2 100644
--- a/arch/mips/include/asm/compiler.h
+++ b/arch/mips/include/asm/compiler.h
@@ -43,14 +43,7 @@
 #undef barrier_before_unreachable
 #define barrier_before_unreachable() asm volatile(".insn")
 
-#if !defined(CONFIG_CC_IS_GCC) || \
-    (__GNUC__ > 4) || (__GNUC__ == 4 && __GNUC_MINOR__ >= 9)
-# define GCC_OFF_SMALL_ASM() "ZC"
-#elif defined(CONFIG_CPU_MICROMIPS)
-# error "microMIPS compilation unsupported with GCC older than 4.9"
-#else
-# define GCC_OFF_SMALL_ASM() "R"
-#endif
+#define GCC_OFF_SMALL_ASM() "ZC"
 
 #ifdef CONFIG_CPU_MIPSR6
 #define MIPS_ISA_LEVEL "mips64r6"
-- 
2.29.2.222.g5d2a92d10f8-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201111032105.2346303-1-ndesaulniers%40google.com.
