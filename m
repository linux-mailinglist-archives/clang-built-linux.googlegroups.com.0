Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBS4FW33QKGQEVOZPR2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id D2F0920204B
	for <lists+clang-built-linux@lfdr.de>; Sat, 20 Jun 2020 05:30:20 +0200 (CEST)
Received: by mail-vk1-xa3b.google.com with SMTP id r194sf2935724vkd.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jun 2020 20:30:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592623820; cv=pass;
        d=google.com; s=arc-20160816;
        b=gDb2E1pGeNktcTvbiTRZw0SDNhxz/jYZKFYOIO+QXYEbBSbYk+xGJNHNMOOt4vAqzB
         i1S4yuhSTa4nnfagucBqZqXS+0/O7Sna29GCqmfWNNJDPyPYg3I0rR9CBwHecx5hBZVh
         6mU0KHou87kgsDp8QivXO3dHhEtsSpmZfawfA4l+65oEq5xtmX/19aZfzGs8WrwDXdA7
         AcgmtZxx1JO3zFxeIOrjQ3WNQU2ww5rU+sy5vfiSDxwAHT3H6RK1NtH4qQkHswyUqa07
         9O2YaA5d+5M9oCxYm+wm5cVcQCENxapllEsW7s6h5FGmzvED8SpFztoVWHneBmpc6Pg0
         sKwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=pEsxOLi8rOhRAFNKQ/ASkOUiP+86D3vuIjKIw6+JhF4=;
        b=WI9gH+YL5mK28PEaKNZEY4Qs5T1DoqF1Kp2WnoXqh67rCSjjIm/Y9DIGztQB7pXdzU
         AwMqUC5HYVqbC3917tfYrG6PurvylFANV1TUVspIousx89+Et4IKTNQIp/nZr10gS/VM
         yvgA3V6dI5Ar0CEqw4BPNZKKqGObqQxCnn6aJnWYApqXRG5Ism3XfiJ+N96xRae/2teU
         nSQnO9pT4xjslSqIQZZZOiLkKEvuK2aIJUcypNNDwOEwWvsFbG7JtpZNxqNJkmhyGCkU
         +uBDcULT8Q0PN/pPp6zLZtwsaY+pBsvjyhiii4U71lcWYlIqC6M9HhvDZkIbX0fBI61s
         NSDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Q7HTsK0J;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pEsxOLi8rOhRAFNKQ/ASkOUiP+86D3vuIjKIw6+JhF4=;
        b=almNcAtcWp3k44of+K0R+EQDePPsoIQW4NYfvPdsvm6kWedk4273OJCsIomunVgyai
         ovh5DQQplb0H0rTID9oCYnFoO/qvGgBRcoF30QsN+WvtiVw4yOLTF1TLdvz9JIpDfvus
         Bv6biCfyErX4Z/nm4CKu+YrUDUal6wdS/MuEKdItXuZxl54eEeYUvmZ1NAoDumPRKmBI
         UPwZcctuPD0qVI2MS6UIMCqrRB/qw/yTmK6HMLGSwE6DqWhPrdq7iw/jssncmzkgUiiE
         Hau6MfyA8tCwJtp+RtVk4hDJW9EwirvapmU5iKhPM6wNSLQt3Wcftvs0RrqTqPCna6YZ
         Ro0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pEsxOLi8rOhRAFNKQ/ASkOUiP+86D3vuIjKIw6+JhF4=;
        b=Py+YA7JrshwgfF0xyJrHejElhHKqJ+YyURp3lYTRHtOdco773MPjQA4j3RYuLyLmzH
         hADmePOeCVgHX39jLfdeJYhdg+4QjjoxGmErAn8Kw4CM68mp7S2kjLK5MS1fMV4Z5Dc3
         Df36pYMlHjnSoNAUG3kshwFv6Cypd5AcBut9PgSc32Aens+9s2K1WlCMoKbomrVeE6DC
         e8CsijuleC5mBqWvuJa0LaV/MEdJ3MTRvE5wWIewFot7K/Kyc0LS9WwPV1WjHbArkyrz
         1Z6iOiIxsZEui9ak7eC+c+fUg4yDdkneI3Nfclp2VBznEbCXxxMJ53tX5oBkBybUlTB/
         0StQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531tYOXYECHkTuFhQSAJDV0s5a0LRtE3pgm6ZR0n7/Z0QJOlI/MG
	yZDfwUSnXm++W3ByjJ2cUaA=
X-Google-Smtp-Source: ABdhPJy4pzKV+MsoXDWcYg5YE98CL6yRFHWMmGg1ujaDNAidtiv6hyYu1nZaRMNt8bDC3zWZ3ZablA==
X-Received: by 2002:a05:6122:2ae:: with SMTP id 14mr9650507vkq.31.1592623819935;
        Fri, 19 Jun 2020 20:30:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:902:: with SMTP id w2ls797159uag.0.gmail; Fri, 19 Jun
 2020 20:30:19 -0700 (PDT)
X-Received: by 2002:ab0:42e:: with SMTP id 43mr5085017uav.72.1592623819581;
        Fri, 19 Jun 2020 20:30:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592623819; cv=none;
        d=google.com; s=arc-20160816;
        b=Zx1rZuQSUQjKKYtlD0Mx33OcSe7LhzT5U4v50PXblIXqNHAGg/ObHhDZHcsJAxbbw4
         71v2QB/9IgCSM2uR7eP2eift3YMtBXLd6uHcP7k3XMYXojHYnjDSmdteI6+MTVhsoTCF
         G+3tvbVgPvIoC0f9Wiev2BSg+0L/S+/r/isA7c3QCFvXdGSiMD3FMX9C0zBfW4k9g08n
         Zcx13nnBf5ip7aUgYVcAmfjtoGH/L5MLxVFXz4w15/KDLBXYagSNRsHfKdG44BWBQBIw
         PQJTM5f1S2K2GLWWXgF2Tk6aZ7TzHXMiRYGY5rTCHXeeLgyFFGZbBjuxsBOBCz5uBhqP
         HO4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=HyXcsVKIRYzWpBmnwJPGbhkvsengpFrT3ttylCxecK0=;
        b=g+cGWMB1NCyjgETMk0tVkkaAKSuyIBGhPVLr3QR7obap0ILOl6CIPgdweBP9UnvDCt
         AhtndTnJE49SS0TnGQxaeyvaqMPYwAc+0DGJ3pnsyjagZLusvGe4+409NhNDXAJNfN6j
         uX8QgCL46lQ57Hru+BWhHyLgvhFoH/rcRVsPv2Pv1A0SLzhyFfy4Wqm+zZa9DfCuS/xJ
         /sajxUlkhLZeKFnPyi+Mf48ulkauEI0cNOVzDeMznGKvhu5CboghsiZ5sQeWItT3dc72
         hDGa9wh1gzq4mxtqn5GiAbVpZTEPw3XCYurpEESV23p5f3kSPbAwPoIlmnsbPZFk7Dyw
         omJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Q7HTsK0J;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id q20si846591uas.1.2020.06.19.20.30.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Jun 2020 20:30:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id jz3so5003099pjb.0
        for <clang-built-linux@googlegroups.com>; Fri, 19 Jun 2020 20:30:19 -0700 (PDT)
X-Received: by 2002:a17:90a:d305:: with SMTP id p5mr6252229pju.44.1592623818774;
        Fri, 19 Jun 2020 20:30:18 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id g9sm7101346pfm.151.2020.06.19.20.30.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jun 2020 20:30:17 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
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
Subject: [PATCH v2 03/16] drbd: Remove uninitialized_var() usage
Date: Fri, 19 Jun 2020 20:29:54 -0700
Message-Id: <20200620033007.1444705-4-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200620033007.1444705-1-keescook@chromium.org>
References: <20200620033007.1444705-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Q7HTsK0J;       spf=pass
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
to removing[2] this[3] macro[4], just initialize this variable to NULL.

[1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
[2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
[3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
[4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/

Fixes: a29728463b25 ("drbd: Backport the "events2" command")
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/block/drbd/drbd_state.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/block/drbd/drbd_state.c b/drivers/block/drbd/drbd_state.c
index eeaa3b49b264..0067d328f0b5 100644
--- a/drivers/block/drbd/drbd_state.c
+++ b/drivers/block/drbd/drbd_state.c
@@ -1604,7 +1604,7 @@ static void broadcast_state_change(struct drbd_state_change *state_change)
 	unsigned int n_device, n_connection, n_peer_device, n_peer_devices;
 	void (*last_func)(struct sk_buff *, unsigned int, void *,
 			  enum drbd_notification_type) = NULL;
-	void *uninitialized_var(last_arg);
+	void *last_arg = NULL;
 
 #define HAS_CHANGED(state) ((state)[OLD] != (state)[NEW])
 #define FINAL_STATE_CHANGE(type) \
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200620033007.1444705-4-keescook%40chromium.org.
