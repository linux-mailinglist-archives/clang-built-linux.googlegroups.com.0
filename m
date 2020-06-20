Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBUMFW33QKGQE3W2O2RQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A40A202059
	for <lists+clang-built-linux@lfdr.de>; Sat, 20 Jun 2020 05:30:26 +0200 (CEST)
Received: by mail-vk1-xa37.google.com with SMTP id j75sf828681vkc.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jun 2020 20:30:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592623825; cv=pass;
        d=google.com; s=arc-20160816;
        b=ajNA3qTHKb131vSHSi1UjxVOrMs6aO2Sa+eW0Zmh4WjDJqQoQKC3WwwAeo7LhpwMd1
         y7tawLK6CBRh3uR+x5/a9GsLt+tLymQak2sHX7DDWsY6cXCpLYwLAglOtJkF8so2++/c
         ohW2QlOiToirU8MDYAnUFKgFONplI0GmTmk9Sn334qYkt8/zyxiw0CSOGRUWZXY2mL/Z
         Sa7yJpGY+yzHV1IxMM5ReEzeUu+4HzY2KBwZ5UsxKfsnb8UgFw2x8bEzSNpGtOFFarlA
         xEVMUwBmpIUs6ETbthBzAwcTbsAkQAPJrgO6RpgM+CxxvNM5Sw6YO46eR+UKYEU8sqia
         eIDg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=m51vqrUzuWFbMdwn5KmgFFDva6kzN4iIPRMHWXdwKag=;
        b=X3ISKYlK4vNPaylrPfNgD0t5s8dzsD2zfHNAX6lKJsngLzcuRn6KKixN7waEIMb4A2
         gCr6liQ0c39XTYw+LcgNt3eu9zFjKeSaMfJYfTM80ZtEM475ATCxJjM4YvEyBR+O6EZV
         y5mM6rVMOgcGYAqeESUE+UI7x4/xo9vvhNJltwOr+o2l7XNLjTKhpnhJa53K3S0Gr8OJ
         o4jN6JkOy+rcyjHUkAqtWQ1iHlTv4KIHgPzq5N/E4uFgOP/NsYnEU80YlAAa1QsZmndM
         wSxzcu8DG9W3TRqia5q8BABkvrbWd4DYq2Xl6AZzboVnk7z5EjfiYZoXsONg7TWeUXu2
         kG8A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=nLZb9q5M;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m51vqrUzuWFbMdwn5KmgFFDva6kzN4iIPRMHWXdwKag=;
        b=AWos4EZI4bvO5jkSFxaPbLVbnSazTdC/dO0WNkqCPL6m1bm8E1LCA8aASuc+H43jEI
         JBm0/lW1VnDObPJIRPMgvJSl37CyzAxp5fKngksbBBgtdz26uzoFyUv/n76pxpKX9AZn
         qCXKQxj8Gk63JYp6KqOyfHfC2PeWBpaIfbISpe2Ww8u+gHKfbzRKFhkxRpoC64kHkY53
         /WEP71T5VONVWWVQrETF/YBNteI/NmCmmGcEvRUwfNoBOGPqCESnLTnm/WI+DQ45ZJXt
         ABYGEcqQTLX6u0D15VyvgHvgji1bpTOJ4h+T49nSKTxc1alFwDiC+VM4mFH27DajGIGq
         U+4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m51vqrUzuWFbMdwn5KmgFFDva6kzN4iIPRMHWXdwKag=;
        b=ZVMIBs5ZXGaNwoie6AD77H3qo5PP3mTx2tBkmt8oeFvvdn8NVNXZOkrixrq34UM/jH
         xvOvsmiBs6PnSlv4FJFT2O9OoixdgBF+EvJCaDIJa7f903CW22jtlh96S5bDwRkzykQZ
         0tEw0er90IBH+Wv7xyKmdQVPDMEHbiuvYYrbcMAVT2EfXGufJMr276UTAhm/n1sIz3IG
         mc+xirZ7r6FW3c2n8q7AK4VzHEQCURHY69U36nGZCeWUf+W0oCCxPP02PhvSVC2tybTN
         oq84RFOh+a1Ks6yZS2ZNHMt5jRG4U/g8SZt5JyggA0ln7fVpe7jW6PloUxojv8Yxfdnc
         TX4w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531SKUp5UTL0RWeTyYY0ldOkO8gP/ra1PCKQRYNZxHT08GLGmyZO
	QZEcbEM0ElBtgKuUPA00YXA=
X-Google-Smtp-Source: ABdhPJyHiYj7AY1SnPdJVLHyz+SgB6fpcAyHRYjl/2EMcWJsbPamCoX5QCcEuBPAhYlOCubr/GnUSA==
X-Received: by 2002:a67:c806:: with SMTP id u6mr9713327vsk.94.1592623825603;
        Fri, 19 Jun 2020 20:30:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:3d86:: with SMTP id c6ls792012uai.5.gmail; Fri, 19 Jun
 2020 20:30:25 -0700 (PDT)
X-Received: by 2002:ab0:7202:: with SMTP id u2mr4355707uao.119.1592623825142;
        Fri, 19 Jun 2020 20:30:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592623825; cv=none;
        d=google.com; s=arc-20160816;
        b=L9dQBsv5NlLlOtP4Ba2Tos63cDdP5xm0Oi32tnpql+L36arKtjv5KmrYb8cQFAGxOe
         gSkX4CoQjE4C1k1hoFH4ILHijuO6/cyp8eWCRUjhnrsnLnSMtE9OdetvaOUCJtjXkEOK
         iuFHpwTIrlxxGemu0b8G6wQKBsjFzSV5K/tR0JaS4E+4bIciZ51mgT0x6uqIoEj03PbZ
         18xTNVgzMZUyZVyO5/bG9D0UrXLSMjX94o9tn7sdYIZeTYQOGxOfkeA9mVXmyQlxIyiJ
         Q3Brh5UMUHFZJJdMZG4QQp9Na4lMV8HjLe4wNZ+AoPgYCndhzHwG1h8kDZEFm3ZDKy/m
         vhTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=TsJU39le/9mzUUvkg/vEQ1ejtljvEC7MElEcoRxU/hs=;
        b=FmU89j/agZlA5iixnnRRYmpJucfcp6kJJD6H5iO9XAo15UFZOcO49b2lQJpPDKYpVT
         mj4iQrtUZjhZBUgywmg6B5uHwvdlG1qKS9IvJonfR1YeAVfn8PXmo5lKB8jseor4lmoJ
         zC1j3gT2s7ab0OjYk84mebWrhT3b1glv/Z2ZNaZ9y9Umym+E0XxTgM9aKfjsl93Xk+AX
         pgxmFlJ/uFFGV2Tvp/WTi7Kpj1wgvzip/praiC22c5xgVglVSBElk1y4ozE4cW0SCVws
         IUogtW0Ukwg0t1NYlv6JRE0Tg/oLyOB2RJA88HM3L1QTc/wzzNpGYImTXQJHzAJVrCjn
         SmUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=nLZb9q5M;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id q20si846591uas.1.2020.06.19.20.30.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Jun 2020 20:30:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id jz3so5003099pjb.0
        for <clang-built-linux@googlegroups.com>; Fri, 19 Jun 2020 20:30:25 -0700 (PDT)
X-Received: by 2002:a17:902:8f83:: with SMTP id z3mr10333002plo.203.1592623824777;
        Fri, 19 Jun 2020 20:30:24 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id ev20sm6238855pjb.8.2020.06.19.20.30.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jun 2020 20:30:20 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Alexander Potapenko <glider@google.com>,
	Joe Perches <joe@perches.com>,
	Andy Whitcroft <apw@canonical.com>,
	x86@kernel.org,
	drbd-dev@lists.linbit.com,
	linux-block@vger.kernel.org,
	b43-dev@lists.infradead.org,
	netdev@vger.kernel.org,
	linux-doc@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	linux-ide@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-spi@vger.kernel.org,
	linux-mm@kvack.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH v2 10/16] KVM: PPC: Book3S PR: Remove uninitialized_var() usage
Date: Fri, 19 Jun 2020 20:30:01 -0700
Message-Id: <20200620033007.1444705-11-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200620033007.1444705-1-keescook@chromium.org>
References: <20200620033007.1444705-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=nLZb9q5M;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042
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

Using uninitialized_var() is dangerous as it papers over real bugs[1]
(or can in the future), and suppresses unrelated compiler warnings (e.g.
"unused variable"). If the compiler thinks it is uninitialized, either
simply initialize the variable or make compiler changes. As a precursor
to removing[2] this[3] macro[4], just remove this variable since it was
actually unused:

arch/powerpc/kvm/book3s_pr.c:1832:16: warning: unused variable 'vrsave' [-Wunused-variable]
        unsigned long vrsave;
                      ^

[1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
[2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
[3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
[4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/

Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
Fixes: f05ed4d56e9c ("KVM: PPC: Split out code from book3s.c into book3s_pr.c")
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/powerpc/kvm/book3s_pr.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/powerpc/kvm/book3s_pr.c b/arch/powerpc/kvm/book3s_pr.c
index ef54f917bdaf..ed12dfbf9bb5 100644
--- a/arch/powerpc/kvm/book3s_pr.c
+++ b/arch/powerpc/kvm/book3s_pr.c
@@ -1828,9 +1828,6 @@ static int kvmppc_vcpu_run_pr(struct kvm_vcpu *vcpu)
 {
 	struct kvm_run *run = vcpu->run;
 	int ret;
-#ifdef CONFIG_ALTIVEC
-	unsigned long uninitialized_var(vrsave);
-#endif
 
 	/* Check if we can run the vcpu at all */
 	if (!vcpu->arch.sane) {
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200620033007.1444705-11-keescook%40chromium.org.
