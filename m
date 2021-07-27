Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB57KQGEAMGQENFWCISA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id 2946A3D809C
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 23:07:05 +0200 (CEST)
Received: by mail-qv1-xf37.google.com with SMTP id js9-20020a0562142aa9b0290310fecb5f78sf544402qvb.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 14:07:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627420024; cv=pass;
        d=google.com; s=arc-20160816;
        b=TQakjMbCvTnq8BFF3USNH/4QGIauOppTs3wxvAU+UjeoCgU1dF9SbEuMgShMv33yT3
         no/iGjx+R1wew+/giF7aaA9FwC6Qe4oqAAVkAaW+Sz7GQAq6dXGBpkOi57BTpcPL18go
         9ZGsLUMtLMJ1g7uxg3b4Ommo7Ry2GfN1hikoVCNYbwm/WwU2MRlITML4C6Z5JgLusV1S
         +VShh1q+h3oFo5xGBdp7bw9N3vkKMGPciCqFPTvB6eZVtg6CiE44qBplKvMPUvZrt1Sy
         rX1RpxSztq+a6Bh6Ghgj/bAwVXzQMhxAf4VtZZbrs0lirca+mhG7LDc682JZdMNmjtfy
         8xKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=uw/VecOUS6ORO8MKzPRmr/B8MBlz1FRaousmdmt+R88=;
        b=K5eZuPDVTQyWYE/NsJ9Na4L7dvGnVLMAypYLVZkEB3BrBuT8bfaZme0g3HQ6kIyO7T
         7SaqvSU6Qij5brl+DwHkHZn2B5HO9Lr3hQcdbWuwaNXEwEioR8gO+4GfGF0ZbclD1WN7
         1hRJcaIgNNvawlubIXOBzLKQEyVc/5NV4D9h1OjwD3OnygsSZgI7fNPL9W2UIIp2KsD0
         eDShPlxwEyJPhhOKNrVdw6xjbR3nHpgj8+hIh/KkkrWqoTq5zbEu0ScMNk99GanPIMTH
         zJBFsBzVQ5XNJQcULj/soSf4VodkUeENcLZjoqXqN6ZEJN3WEe8JRZQEHvdEzuNeY3pT
         MglQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=RtzRv2Hc;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uw/VecOUS6ORO8MKzPRmr/B8MBlz1FRaousmdmt+R88=;
        b=siDOHk2+wMO7jS2d48s/XJdafgG8Kb1yZ40blaKgZw6ynJpUQXZeO2lVTaEJuQ9Doo
         3gY8IK2a4QVc38tnD0FPZZUGaD2SJIn1xRjDj5jGzys4LA7OyEfgVtQDr++0Xih7luIb
         5kSTft1gx4OD+65oHzYRd+ugGyMn5zkABN6AiFSqt53cx9CpEw1AMUE8tdUFrA0s4Ptm
         DFCdrQ4fnF/7co/dW52mBZiok6ZapyXOBQOgWPitsbOirycck16aMH5nD9iLO0CagBCX
         XBTUSAeMUxNovnXzfHYTlngcaDZF64ChRsSU/xP2EBvx3JBRRevXMJyfUgiDja4aZtDE
         uPtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uw/VecOUS6ORO8MKzPRmr/B8MBlz1FRaousmdmt+R88=;
        b=mg1YG2PlqUDZoVK2i+kutIjRtVhXwQlnP9YQnyzld2zr8R5jUcySIWLyE5+sfeYcVb
         76aOSrcdH8uAzlV02Q5qoofL4fjV2zThU+IcRAOfqnTKU9cz6CEv4wGot48/NBeTxd4H
         Skq4rL2IVPOM/IO2nT1SlIB3c0t7QRZ4IfzTprUssp3+sPpp2xglTq6spH2Mxfj+UWIb
         U54h15p0rGmUCaV24asW1BT2D9sA3QoJKs3IQksAsSD/H63BbiZOdX5CkL+7+T1J4T6+
         b2tHX90yI/4MjH+o40ddRlFeEYu0X4GbJDG2NvAv5YWlsZSydVMPJ8sK+YwpviYN6mB5
         oGPw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533KMZ2egUHu6ZNZ7vKk6DwmBIXAUbdtL3ga5ZBa7s5UNyC3RCNw
	/eztxpP+xrex8DkCPDY9+VI=
X-Google-Smtp-Source: ABdhPJwwV/6UrGT0uVkwBJ1NnTPEVRsTEhlQzJaHdASO2UDsu7rOBIUkIa6qnkIq26qeTNLERWOsjg==
X-Received: by 2002:a05:622a:118a:: with SMTP id m10mr21395639qtk.263.1627420024009;
        Tue, 27 Jul 2021 14:07:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a786:: with SMTP id q128ls15212qke.10.gmail; Tue, 27 Jul
 2021 14:07:03 -0700 (PDT)
X-Received: by 2002:a37:a396:: with SMTP id m144mr24796037qke.163.1627420023466;
        Tue, 27 Jul 2021 14:07:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627420023; cv=none;
        d=google.com; s=arc-20160816;
        b=S884utEDoO+JyhAhtVbLJbqeW5C3bwcX4RUZppctIGR5PiVKpxQvIZwVT+jpAf3BfD
         k93XlirZgEsRH/iepS24vaW4HFfZAR3/sb7c6moJmDuEb9zzWkxO5u76gYV7rXCK6HQG
         FQ3J/eI0zprBqzxu6/RelbC1Cct/C1oq22O4AAD+/yS/UY4nYtlaKatJQlKOZrHj2SMO
         BhXUsf2PEhS3vBUKgjczxcTKpeDCISvOsf1hSTJKbIQ7mDyMZdlCtVZOuDqoltfD9zms
         eUaGim3UzJWp/Xdh65ANh7uYlKIdwl09J18T+0gF3pUyj4TAmmn5P4muAp103v148TEm
         RKPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=9rtpQJfi9BLLOweU32TBsHXrBE4rsqDcc6NfaxawLSk=;
        b=PqSBRf3HRdnzGbJj+Hpelobz058WCO9AdnsWG6umeSbVC3N7YMSKrtG9WWvfb7+xv2
         9VGAUaEfiHXJDrKFNHyeb7gNuqN4w1t3/q0VMvqta/CHrbudaoGqFhuvaYS8ACz861Lm
         bxSEVY15LepTKGVDKWGOlL7Ii3jFEQ5M1XUu/xmt/kWuQ6DFEmnKjXpQaW7evIQf47Op
         8lSwv8fv3pDonVPLgNU+w1+yGNkUmGZYjA0WKfNwKfsEHFDTeCAvKJxeJ+kb0vsOKQxB
         MYeiFNz1Icu4K/01bw1sMu5HFjRozKbwGm7qQ6XOCAPg+lHbhn2G8Z7WvxU22zJOLFc8
         41IQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=RtzRv2Hc;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com. [2607:f8b0:4864:20::636])
        by gmr-mx.google.com with ESMTPS id v31si195364qtc.4.2021.07.27.14.07.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 14:07:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::636 as permitted sender) client-ip=2607:f8b0:4864:20::636;
Received: by mail-pl1-x636.google.com with SMTP id a20so88234plm.0
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 14:07:03 -0700 (PDT)
X-Received: by 2002:a62:3852:0:b029:32e:50d4:6ee5 with SMTP id f79-20020a6238520000b029032e50d46ee5mr24697953pfa.3.1627420023128;
        Tue, 27 Jul 2021 14:07:03 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 19sm5414686pgg.36.2021.07.27.14.06.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 14:07:01 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-hardening@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH 50/64] KVM: x86: Use struct_group() to zero decode cache
Date: Tue, 27 Jul 2021 13:58:41 -0700
Message-Id: <20210727205855.411487-51-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1896; h=from:subject; bh=Yy2yFM1urtqhL7n0r4aqd2cxgBZVMAyveJbcFvHLMlI=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHOLO3D9COdGLWOeR85zbaklAzObwkj15dNUWB7V d7VJAUWJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBziwAKCRCJcvTf3G3AJlCqD/ 9cyHvgurMj0+H5UBZbi3PT0Pbs8SRpr/t0XADG40BpZ+yVAAnrqFDSkxMwCaBqoxRSLdmcDqy3b5SU c20S1Aw1siyqHiVEI4mnsKY6Jgrwx/SMBp2bYIVeZru9HNSXKKx57kdf2tIrViE9LYxYJFaHrBwPb9 o5tiJQmaA6MIjjExAe20o1QhTaI/E8sNfmlXtKaS0+XA7Rm8s+Qw65FVDyLqzv2BWb50Hdr4cMYh1X MTXkpiMZrMaPEQ3Wa2TwW0eAlAoWXXUXCLZ9VWJ5QlWKljXrylcdoLAikqEE7v2J5Rlr6FXOAMs3tZ d2CLoMo36Px3zBdTlu90/UlVPgO3P/Uk2ZhkN4uzHd4n/DIvanRvGewXH4liErXPixMmOgnLGLl+5d dVxT4PdjmU6shd83BEuZ8GZH4T6M9tygTNcERhWYIFMPXxYO5sgBrAlOJPmGkJC7hJD/RcfcYrBrpN UanrlQrhn6AYQGnmxcAQjc9dQQiRJO+jcDS4dRElaZb2OkRAD8J6+dNCu3El0L2RSWF1CiAbnwjwZi vxQaozruf1DsPdfg+Bv8JNonOrCpc7rnWMUbZIM6n0KMZJB+puj15D3L2N22fwOUi7MkF9cUWlAzlk H8X7oTv0jAj5RR0KuG/re2JSTLAEqtF1EBsbI72rE8m6mO5OjrH8edIe/qDg==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=RtzRv2Hc;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::636
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

In preparation for FORTIFY_SOURCE performing compile-time and run-time
field bounds checking for memset(), avoid intentionally writing across
neighboring fields.

Add struct_group() to mark region of struct x86_emulate_ctxt that should
be initialized to zero.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/x86/kvm/emulate.c     |  3 +--
 arch/x86/kvm/kvm_emulate.h | 19 +++++++++++--------
 2 files changed, 12 insertions(+), 10 deletions(-)

diff --git a/arch/x86/kvm/emulate.c b/arch/x86/kvm/emulate.c
index 2837110e66ed..2608a047e769 100644
--- a/arch/x86/kvm/emulate.c
+++ b/arch/x86/kvm/emulate.c
@@ -5377,8 +5377,7 @@ static int fastop(struct x86_emulate_ctxt *ctxt, fastop_t fop)
 
 void init_decode_cache(struct x86_emulate_ctxt *ctxt)
 {
-	memset(&ctxt->rip_relative, 0,
-	       (void *)&ctxt->modrm - (void *)&ctxt->rip_relative);
+	memset(&ctxt->decode_cache, 0, sizeof(ctxt->decode_cache));
 
 	ctxt->io_read.pos = 0;
 	ctxt->io_read.end = 0;
diff --git a/arch/x86/kvm/kvm_emulate.h b/arch/x86/kvm/kvm_emulate.h
index 68b420289d7e..9b8afcb8ad39 100644
--- a/arch/x86/kvm/kvm_emulate.h
+++ b/arch/x86/kvm/kvm_emulate.h
@@ -341,14 +341,17 @@ struct x86_emulate_ctxt {
 	 * the rest are initialized unconditionally in x86_decode_insn
 	 * or elsewhere
 	 */
-	bool rip_relative;
-	u8 rex_prefix;
-	u8 lock_prefix;
-	u8 rep_prefix;
-	/* bitmaps of registers in _regs[] that can be read */
-	u32 regs_valid;
-	/* bitmaps of registers in _regs[] that have been written */
-	u32 regs_dirty;
+	struct_group(decode_cache,
+		bool rip_relative;
+		u8 rex_prefix;
+		u8 lock_prefix;
+		u8 rep_prefix;
+		/* bitmaps of registers in _regs[] that can be read */
+		u32 regs_valid;
+		/* bitmaps of registers in _regs[] that have been written */
+		u32 regs_dirty;
+	);
+
 	/* modrm */
 	u8 modrm;
 	u8 modrm_mod;
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-51-keescook%40chromium.org.
