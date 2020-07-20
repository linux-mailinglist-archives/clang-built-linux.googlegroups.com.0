Return-Path: <clang-built-linux+bncBDYJPJO25UGBBBUH3D4AKGQEVEDQJLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DAA9227004
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 22:50:16 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id 67sf8947360pla.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 13:50:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595278215; cv=pass;
        d=google.com; s=arc-20160816;
        b=ilytnCyNrG0LP55fMIXf4dEVa8IRcGTye9xTE0vpySy7ILzxPOfz0NO9LP3kJGCd6x
         B/TykRyyMKLHL6DkLbTd5ELWyColaz6WQ+MZ3i26C4jJ/MnRqaAgKLz9ywDnz+fWk/kB
         Posy67CUhhQCYoYk28eXAfgpjy8RC5GsKLppVA2f1p32dMiV/ckSwGuaD5td1yxuVWBG
         65E+o7vtKFr+AORqQbwcDx8f1GqzdW7hFkL5mjyXh70DYOea+38ns4ziz0uXiTyWtrAc
         4ZDT1MtrJJQ8xO8n1SfmEMNlD2ktMxAJeLqNbgWHTyau9XhWPI+HvuKb3WPT5eBZALIu
         PG+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=usRKtdmc2VGmSwKzMLqEk0y1HKT14GygbAAsgaeR39M=;
        b=KidhfR7BeWzOsCzY8d10KN4PUiB4o57a1xr4hSPmpL1RUVFb7jIPov5T9CKkVIpCxA
         l77hSaD/jt/nQpW8juSO1FEWEhH2vLu44DN18FrhAnVq5V65J4hxtCdTJXIABocm0sqr
         DaxGASB7F+FQeLiNtlSCA0EcJD3cnkSMPgfoquDKhvysFMK+aCv5c9NICvZu+/ugo3+p
         ICS8sgzRCDKotr6BP15KrDYzSMtE0+9FVm8zXZQEPpKYd3kJ+SSkFgQ0Gi9DtyfS97Gj
         6CZS3sxFso8BMybQ60JxlToasx99V2AK+YRqVjrSYppjevsnNsCt1GU2LvZVJJfiEjZA
         Eg2A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Gs4QCxzA;
       spf=pass (google.com: domain of 3hqmwxwwkaoirhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3hQMWXwwKAOIRHIWEYPRMIVWKSSKPI.GSQ@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=usRKtdmc2VGmSwKzMLqEk0y1HKT14GygbAAsgaeR39M=;
        b=JN56ks4s/X20d/4/WCSw/OQmGbr6T9eAjOmA+VcaWMhl1Wo6PMBIjvOMTcqe/WDaO2
         h03XVvl3nnEo7RYtU2y3dT7KNQtY5AdsdCneBRvz+hX7DrnVYCPrmIWW89aXZmJ7aIqp
         b+9PGUXoelnNYv+6reGmM+K27OCz+kjjaMMJc2/CRzalUewjiNsczvMEVqht+76PcPKJ
         qljDRsGGhYtzFrA3UJdVYZhgDlJf6XJwKrP0+OZl/xFGMrtIzbBhpQ0a+6/8+fN0cUUX
         C15+spEBfHTV692o5MaqdSH58pridcWl/5WbBaAg/PCPnMzqrI96ZCUo3YSQo5mF1IUd
         lKWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=usRKtdmc2VGmSwKzMLqEk0y1HKT14GygbAAsgaeR39M=;
        b=O/YNj7pnj+ZsYhHJvErDFoR+bY/XDrQrppYa+DvAINmuUsHlioqvws6b7pKjkjeIkO
         6a8xP3TTgI5IOK+0+5oqDIEaJF/gmSMrB0Cn0lEhTft06NWIk7u0hLi+GbeSRMnGvQfQ
         TZpSsP9de875xRXK0lMYN6acTFYoAyzvMSpQIUUtEljFt5qOH8GronIp7ViqKJhgamLj
         djVY8D93/uIg2EwiZrgLWR5WjYxDzYL576Ul/RRmsmx32qgq6r+b14wJ7ZYjWOg1Xv8i
         zneZdE812P7sDAA401Wq6USBkZBcFRykLbclDMGBWUCpVXCa8+ze8CEYoA7DnhnW15GQ
         67cw==
X-Gm-Message-State: AOAM533Rb/eZjeY9XlRnNy5E5d/23aQjl5u4yMBWx0ptqWWybzkYyaEO
	ccKLRGldISzn0i3V4Np2B8E=
X-Google-Smtp-Source: ABdhPJxoP3xQ/Mb5Tr1hfkKvtPefJQFk3Zb2FwzmVdnEb6ArHThqjCEpLnalaZOJUp9phoHWFPatiw==
X-Received: by 2002:a62:346:: with SMTP id 67mr21462297pfd.111.1595278214936;
        Mon, 20 Jul 2020 13:50:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7757:: with SMTP id s84ls4988009pfc.9.gmail; Mon, 20 Jul
 2020 13:50:14 -0700 (PDT)
X-Received: by 2002:a63:a558:: with SMTP id r24mr20650123pgu.70.1595278214314;
        Mon, 20 Jul 2020 13:50:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595278214; cv=none;
        d=google.com; s=arc-20160816;
        b=KXtUGKlrzczueWW+SXTbP/C8b35Po498ivu0xmj8jlzVFo3OowK1wlCU7xlo8ZUznD
         5zRJ865QHhyZMzgOvyiSTMZ/XNV8fUktSnPFaW43PbOuXaN6b18AgHvvohXN5qoltfEJ
         9x+OoccIRJllDNcohu+IroujuQj7qE+tOfk3aXZKScL/QCPEyqWE1wLixIvGuPYiJ/DX
         NlhAJMA/zkyyG4MIhPPb2T6NTNflX63jepmA/b9YofP/me/obayenGsYfLdXZRd2qQMd
         zwYwq3VYYPWDQQDMSjM6FU2su31RtQv/nZtUMnQ7xy/cO5XBsI+UBjYPxL9A9mK+R3SM
         ckDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=N5jd+pSQ0JxE9XvTtwZnQjvUf1dPBeQ5IDjxob8l6P0=;
        b=kRPNTk39rmbJ0uAOQoOUGxX5Be2kP15HDBdTJ/MLddARSfVCMQ7Sk8CmwyZt4Ms0f2
         KPHKmBxpEbQUTlpQEBPsYlgDBcrEeWJ3sBV9yM1JBf39N3T3V7JK5ciN1B+ym09YXct2
         BxU09P31OXpylaoEMG9ru3JA4s74Nm35jllQC9vd4hNGNetH/P/Jp446py/gs4Ajln3E
         ssaAXzEmaKb1GiXiTW6zR7bybLZiByNwFzxz176tWuYv4IlAMlb/TpiQyBIaN/apNDBy
         LiOfVItjJSXl05p5w60AlD4OOhk5DtLfGsCOYOyxEzpjAOZmBt41faV1oNuY5h7xpB3F
         1Ulg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Gs4QCxzA;
       spf=pass (google.com: domain of 3hqmwxwwkaoirhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3hQMWXwwKAOIRHIWEYPRMIVWKSSKPI.GSQ@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id g22si712500plq.1.2020.07.20.13.50.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jul 2020 13:50:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3hqmwxwwkaoirhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id u186so12288652qka.4
        for <clang-built-linux@googlegroups.com>; Mon, 20 Jul 2020 13:50:14 -0700 (PDT)
X-Received: by 2002:ad4:4903:: with SMTP id bh3mr23645134qvb.17.1595278213791;
 Mon, 20 Jul 2020 13:50:13 -0700 (PDT)
Date: Mon, 20 Jul 2020 13:49:19 -0700
In-Reply-To: <20200720204925.3654302-1-ndesaulniers@google.com>
Message-Id: <20200720204925.3654302-6-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200720204925.3654302-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.28.0.rc0.105.gf9edc3c819-goog
Subject: [PATCH v3 05/11] x86/percpu: Remove "e" constraint from XADD
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>
Cc: Dennis Zhou <dennis@kernel.org>, Tejun Heo <tj@kernel.org>, Christoph Lameter <cl@linux.com>, x86@kernel.org, 
	"H. Peter Anvin" <hpa@zytor.com>, Al Viro <viro@zeniv.linux.org.uk>, 
	Andrew Morton <akpm@linux-foundation.org>, Peter Zijlstra <peterz@infradead.org>, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, 
	Brian Gerst <brgerst@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Gs4QCxzA;       spf=pass
 (google.com: domain of 3hqmwxwwkaoirhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3hQMWXwwKAOIRHIWEYPRMIVWKSSKPI.GSQ@flex--ndesaulniers.bounces.google.com;
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

From: Brian Gerst <brgerst@gmail.com>

The "e" constraint represents a constant, but the XADD instruction doesn't
accept immediate operands.

Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Acked-by: Linus Torvalds <torvalds@linux-foundation.org>
Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>
Signed-off-by: Brian Gerst <brgerst@gmail.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/x86/include/asm/percpu.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/x86/include/asm/percpu.h b/arch/x86/include/asm/percpu.h
index 2a24f3c795eb..9bb5440d98d3 100644
--- a/arch/x86/include/asm/percpu.h
+++ b/arch/x86/include/asm/percpu.h
@@ -220,7 +220,7 @@ do {									\
 		break;							\
 	case 8:								\
 		asm qual ("xaddq %0, "__percpu_arg(1)			\
-			    : "+re" (paro_ret__), "+m" (var)		\
+			    : "+r" (paro_ret__), "+m" (var)		\
 			    : : "memory");				\
 		break;							\
 	default: __bad_percpu_size();					\
-- 
2.28.0.rc0.105.gf9edc3c819-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200720204925.3654302-6-ndesaulniers%40google.com.
