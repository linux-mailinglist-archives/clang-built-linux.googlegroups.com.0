Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQ57Y7VAKGQE4XNIQEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id D0DCE8AA01
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 23:53:08 +0200 (CEST)
Received: by mail-qk1-x73a.google.com with SMTP id m198sf94383211qke.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 14:53:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565646788; cv=pass;
        d=google.com; s=arc-20160816;
        b=rExfMWNgtgLWTngeqFXBXUr9X7HSWkrbEBzZz/n6S86rae4ykC387FStFTB5vwcQ4t
         WjBY17kKBL/8/HaXvPpZDSDWVUzQ/yC+fZyrHZKgxfzi5d0qWNE06qtFRBt21J2f097U
         RUAgNeH7fDgZTEAnPWzS3YSjFkjSTwk7JWrYs3BpRsFfHOnHU1A0nal/mB7zw+A9zPU7
         d10fzZwRm5AXtTVlOeeNHezx0MWWxQdWcfnXlWFc4ySyp+14V6+um8y8kRhc07rxgQri
         dcQ+kT/VNuAkFNnVec+Uf4oWH7yxD7xipEzXdoL3HH2WGLOqr5HEgC6zHn4YhlaxebZz
         LkZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=CPyVphuz9HwobjlL4M74+HsAzKitUEWVXofomVME5m8=;
        b=ki/g6zKcnaPMFseN9V80l3tDWKUoTuCnaYU29MwnpUz9+EU3PulhIYsT8O2N4NcblK
         ATC8WD3YL61E80ll0Z8bwMOlt47k75eljt9jPKQXszDY1GOsjadlAvRhTXRIPPNdQWXl
         vtrnIAsjFL6nvLh+ZZegcYwyvDYDQ4wgYE0BdiqHb9//8DTmFkdy3FWunxqg8OCb7KBx
         RGmO8u/oux8P13UW2HVfcAAublgCueO51+DS57S6aAre5YstI6ReOqikg7GCGWEFvLj0
         rQg2TlFPA5lUpZc5wmP0lTW4Qmzf2wPlzY3RjHsGWTbkqq1JEnq3GjDMQgqzmu1vbHSl
         1h6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=F7+jqw49;
       spf=pass (google.com: domain of 3wt9rxqwkalkmcdrztkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3wt9RXQwKALkmcdrZtkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CPyVphuz9HwobjlL4M74+HsAzKitUEWVXofomVME5m8=;
        b=h9H6R3Uvm/Je7+Vh7kmETTsebJiFZPukbUSkarCNKXs1R7VK2tv2igo4aiiecXqEla
         vXBFZZ/ICpMSieJfNU69dJ9Ld333q8TtV+URodQsrddlCiy9r5WTjT5kNFoNPIz1y/sz
         TKo7PtfRX72ZC2D+0iorbA+W0qPagj7g0J+L/Tw3t+ezFG3fozRjG7H9QrhxjivX1OJz
         ooWikXpkq0+hRdxzt4lLELBhETpTzfWshj7mG8Y+rgoBrjzBycbAhh24/7QxycQFZM6B
         tVJyywJYGJTOcFWxFHfdOraQhnbLXcla1Kjr4V0z4UOQp0PwNMwt7xNGxMZQMcyzwV5b
         viDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CPyVphuz9HwobjlL4M74+HsAzKitUEWVXofomVME5m8=;
        b=ErYkRPOgwXjeDz17vCLr53S9GJZcF6tlOS8Pp6Nu41lapcQDks0+OyR4osGocEU5ns
         6FW4KX22A3ZYzpfHTLRkPPUvac88u+qvb2FAXBvxFw96VKRkMrkzNOfRYkOqc3fp17sy
         CGuj+GOaDfiWFVK5jlYo2kN5Mqa8L798WiqbwHfysN3+FyiMCt6okrZoKpltOfP6q1Iy
         1n2cokQ2AbsAEt1CXIH5wjFAi2EvSlid6Rcn8GWnkvkFtQ0wcj7fibtqs659xpG6no6Y
         TRFRiYEEIoTL/fLqkYmZkuPbd34gtoytJOQGKg5ADf2+IfuKiHkq48THdAyNKwyAA8wh
         myPg==
X-Gm-Message-State: APjAAAUR4OyIp4yfSB/dQl34BcLS0g/9gYmzYwwuY2W661SNG9SgBDHq
	W3NYePlLRqdYwhK6wZLGfsw=
X-Google-Smtp-Source: APXvYqxg8EOn6ps4UohDbmbtC1nU8rfKP+kQj6xY2iVMemWxCTsPmVFL/iIs+fpTTaCtoRe/wMLZsw==
X-Received: by 2002:ac8:2194:: with SMTP id 20mr30464383qty.203.1565646787980;
        Mon, 12 Aug 2019 14:53:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:3927:: with SMTP id l36ls5099304qte.15.gmail; Mon, 12
 Aug 2019 14:53:07 -0700 (PDT)
X-Received: by 2002:ac8:7b9c:: with SMTP id p28mr16630518qtu.185.1565646787784;
        Mon, 12 Aug 2019 14:53:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565646787; cv=none;
        d=google.com; s=arc-20160816;
        b=PDMspW4mUEuIj8Xyvn4X/SN7PLZzxk+quIeKzMSsaYcGURZLyUjgtjeOGJgkzM/2tn
         fQSHJ6ShYne6Kf8KhtjmJz7sp88zeVVPFqTL2Y/BtnEuvAYMPMKriA24j+a8IO2ue9R3
         hwI1pBCEUMyia9okcRCC5TVxNd5FYFXT69E3vxF8o2fcfCb3h7wrl2gbJBj9mhmcHFgx
         dqHZuo8kjxJV2DU76XDUM3OSgY2L6HH6yvzdoKM67gpNWpIP5XTpnY/8OCy5kEUkXSnj
         Wro4hbpT8mWiPmv2mZgpJuCzWpdNa+RPizE7LWn6E7MDQiDcsaaVjq4RYSJa19Ti6b/x
         6gKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=mebfbjlkEdZmmfTa81qyikO5W5onC7JtmBJnlT+apBs=;
        b=vMzyy1F1VZjhgoJmf1s7ttLd4/IpZqHMutANgWoPDlDcYj3bq9hN4Ob6pn5sbhS6cb
         QLEY8nukO23KAuUiJtfn4qv6yKalfsYE3i6Yj20ns+Y1PYNaXRGdR6KWCL0DKwEyu/eq
         yX9OlpWi59JcLu75afxWgyYU77Lybyu96luHcdONwJyjgYXKr7nrw4QEZ3JSRuISO88g
         PzaS7CdUDBJZ3bYhfnrgGQ1MKDxIt4VOLjs5MN6cs/bYLioXBMr93Em6cWo1s2DPR/uG
         6H/sYmfiKSV0anWRgN6Q4FWXCJWsfblNGr4y9aN8hDsDYu3cPClM/vPWFopnIaXj2E7Q
         TYqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=F7+jqw49;
       spf=pass (google.com: domain of 3wt9rxqwkalkmcdrztkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3wt9RXQwKALkmcdrZtkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com. [2607:f8b0:4864:20::649])
        by gmr-mx.google.com with ESMTPS id w82si4479351qka.7.2019.08.12.14.53.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Aug 2019 14:53:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3wt9rxqwkalkmcdrztkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) client-ip=2607:f8b0:4864:20::649;
Received: by mail-pl1-x649.google.com with SMTP id ci3so19284597plb.8
        for <clang-built-linux@googlegroups.com>; Mon, 12 Aug 2019 14:53:07 -0700 (PDT)
X-Received: by 2002:a63:4461:: with SMTP id t33mr31217445pgk.124.1565646786608;
 Mon, 12 Aug 2019 14:53:06 -0700 (PDT)
Date: Mon, 12 Aug 2019 14:50:48 -0700
In-Reply-To: <20190812215052.71840-1-ndesaulniers@google.com>
Message-Id: <20190812215052.71840-15-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190812215052.71840-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH 15/16] include/linux/compiler.h: remove unused KENTRY macro
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: akpm@linux-foundation.org
Cc: sedat.dilek@gmail.com, jpoimboe@redhat.com, yhs@fb.com, 
	miguel.ojeda.sandonis@gmail.com, clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>, Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, 
	Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, 
	Song Liu <songliubraving@fb.com>, linux-sparse@vger.kernel.org, 
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org, bpf@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=F7+jqw49;       spf=pass
 (google.com: domain of 3wt9rxqwkalkmcdrztkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3wt9RXQwKALkmcdrZtkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com;
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

This macro is not used throughout the kernel. Delete it rather than
update the __section to be a fully spelled out
__attribute__((__section__())) to avoid
https://bugs.llvm.org/show_bug.cgi?id=42950.

Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 include/linux/compiler.h | 23 -----------------------
 1 file changed, 23 deletions(-)

diff --git a/include/linux/compiler.h b/include/linux/compiler.h
index 5e88e7e33abe..f01c1e527f85 100644
--- a/include/linux/compiler.h
+++ b/include/linux/compiler.h
@@ -136,29 +136,6 @@ void ftrace_likely_update(struct ftrace_likely_data *f, int val,
 } while (0)
 #endif
 
-/*
- * KENTRY - kernel entry point
- * This can be used to annotate symbols (functions or data) that are used
- * without their linker symbol being referenced explicitly. For example,
- * interrupt vector handlers, or functions in the kernel image that are found
- * programatically.
- *
- * Not required for symbols exported with EXPORT_SYMBOL, or initcalls. Those
- * are handled in their own way (with KEEP() in linker scripts).
- *
- * KENTRY can be avoided if the symbols in question are marked as KEEP() in the
- * linker script. For example an architecture could KEEP() its entire
- * boot/exception vector code rather than annotate each function and data.
- */
-#ifndef KENTRY
-# define KENTRY(sym)						\
-	extern typeof(sym) sym;					\
-	static const unsigned long __kentry_##sym		\
-	__used							\
-	__section("___kentry" "+" #sym )			\
-	= (unsigned long)&sym;
-#endif
-
 #ifndef RELOC_HIDE
 # define RELOC_HIDE(ptr, off)					\
   ({ unsigned long __ptr;					\
-- 
2.23.0.rc1.153.gdeed80330f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190812215052.71840-15-ndesaulniers%40google.com.
