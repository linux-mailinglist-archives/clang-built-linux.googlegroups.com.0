Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB25WYT3QKGQEQGWUDAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id F114B204242
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 22:58:20 +0200 (CEST)
Received: by mail-oi1-x23a.google.com with SMTP id r186sf8817630oih.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 13:58:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592859499; cv=pass;
        d=google.com; s=arc-20160816;
        b=UvvNqnQ7Nps9wxXMXwOOLtyzbLmbdriCvajcYGKJpnA7qVfvigZgu97F2y722k/DKc
         BmzqI/usGRaHLqWMmgDaTpPsvP8z0YGE+fVIquCLbF+wD+TE59lL6KHl+pGmL6tx51jd
         XpQwPhGbkMh3SPT1Mcf6VzkTxjvI3ZsB6ESY+WyPcTV1PwsQ2FzWND5xpUt6MVS6VfA5
         3it778DPqt7aSsIcoI3R2Yo8MF/ac5Qd9m+SbcDymPHfIU6gwaKDw07TjlUuIVOyRfm2
         8BhR2iclsBrqQj8cdX0zhvXKlqlFz3kigvmPmPCllM/eOUC2otJHbCmfbZK/HrhMoIlr
         H7mg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=HWGoqmZ6ekLM354H8JumvHD+51O3rvod1P/oPCnHKuM=;
        b=ESmDWKpztXm17cJo59EJJxQDLuP4ZKoY0bloE7ixUiuRsaSzEEc2kDItHb5hiOuDmZ
         8HnqMbEY6NNrKp7hBVKK6igLQLA4MKByqCPkhYlIGa5i6g8aTv/rp2yPLdnc4wXN5gBo
         DAdnVhB6i+CSGx1cLfV17Zu0l1nCcm3isaLgyXOt6M72JZIXirzBEyl/bNi/llCPxKqH
         rQ33nh/dpplDlGvq7xN212Iis4gRkmc4y6GlF+k8BOlWVslxoSkfmFxtw9j9xKtcM9+c
         EQKLkBqFwM/SPVK9N9MpjVfq0JwoQKFMHVn47ySAmQw21r/zer1csBbYxmT9efmIMjGC
         bhDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=d59awIr4;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HWGoqmZ6ekLM354H8JumvHD+51O3rvod1P/oPCnHKuM=;
        b=OU8r5a/ojNrRAjICrQBipztwFvu0ptbYbMSPOhdOGpaSHeVCTJM9G/zqG5BZ8cJOsH
         N6nND5NOuy3FFxN76cGmGYs1chIxdAMACcVbkELmhCbyTdjRUoTl/jMQ4J9OSGzlj9Rk
         OqtVFJBFC/glNxjsvmRkDuLvKcDUmy4o7XMiZ1Nv2qsurIdr3jUu9wn63vrD2XHBTTmR
         eERBapmocLGVR0yxW0ZASmFXhJ6Tqs+ijllHleMqfh0/Zt4iPDwG5kXbY70bEYakvWl7
         OCYJzKSaepew0zBvDZMVl6uf7YACIls552U1zofoE+0XyetpWs71yGBRbnWXm43epW+H
         eUxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HWGoqmZ6ekLM354H8JumvHD+51O3rvod1P/oPCnHKuM=;
        b=MacQnwPNfsW5JaEWH2rMCEfyvYanEBx1dhSNGZGCAjzqxxZMC8uOW2I0pfbl5bFVBe
         eF4skWKbgW5mnZVZsJZ7FOEKQ3emw/UdD6CUyjyZq895D6qR23D09NiFyKSb3TykqBdG
         KHtgtxZhUrv9ny4f87hArk1RFa3blzy1C3a66fxT/iBIk4gNoj0WTJPdokZ93qZJqUoK
         y7ciRWlwzPyUoak67U7KzbXGQrYlfKT3huEVP3vac34ErJJVpeC7Pj30A6NEQMRhbWY8
         yZ0+urVvzFbeeuXAkROCWCshQUOqn8j+RSd31s7WXvYB9d1geGhTkxQ9ZnnwQJOa9oy5
         NNnQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530/DlRetyl2Cig5y2H0I344nxMmSzRvq+ZsesFfvcFEMPn4ZwJx
	Sflv0pLSlMA4vOMZPmaapt4=
X-Google-Smtp-Source: ABdhPJx6mbnp5gftA8qapkomZFvjOuW+Xz6WyFntRepoeD5YxYQQUJKEzVb5lCZHTgKZEiSv4Njccg==
X-Received: by 2002:aca:c391:: with SMTP id t139mr14581306oif.166.1592859499749;
        Mon, 22 Jun 2020 13:58:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:241:: with SMTP id m1ls3556786oie.0.gmail; Mon, 22
 Jun 2020 13:58:19 -0700 (PDT)
X-Received: by 2002:aca:568b:: with SMTP id k133mr14349655oib.143.1592859499209;
        Mon, 22 Jun 2020 13:58:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592859499; cv=none;
        d=google.com; s=arc-20160816;
        b=RVmpPsbAxRTUP6p24GpSgBlPKeA1JdmQ1Z/kMBmascY3fDljDHUkbUvy062/dtoV8Q
         nJTsUYo+TYIIHbKjJTwLVIWRC1ffoLTNfrQxluS6oHdIetORvMUBCjanNI9++PvzdqFD
         kQTJxBsnKvnVjxqAbNxVVMiYTbsMQBodBXx6gJEsHdH20K00wXPDjgWicdjfaOuzFqJn
         EsvjOWahrXOtLTrWnwso5qifvl9/OPe5A9Md/HraS3IBo+0Z4YfwqDaxniZcy5+agbjT
         p3JE5Om1UGjXEZzzAlebig8YcE4qvPKH10BjBtp95tcXP0tLfy5FU//eihg1i8JXU2bq
         ooKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=NMAZshRZgRqtOcF48FwBwSDWqy/EeeOlwf50Pbmu5Nk=;
        b=NZKXLm/57Hok8hW+b5yZotvjNmVGin3if9oqVH63fe7bWXq3/hnRZYbiBS46zEp2M5
         GPvRjCF+Zr4EEgdXtWQk8qaboI6yVVoJCZgqM2mwF7Xq+TS6K1qSJa2RJL8hHMQSlFVa
         Vjq7yJIp2KTYy2MuiFZmNfVX+Lsv3zX7k8eznbnWU9J9CQ2DjvmHju8rlo1SIWoDw+f0
         RNNmBRYVGF44j/Bb3KB33GXBJ+dGEHYcAh1xLGAmeci+/oTZYvmgc4mAf73LhYc8eIHP
         PPrpnl1RIfxqCyk2MPaNra1Ge3zMAljTEVZUSxCiXkKttrOJAa7iLbzHJYQ8Kh89FgUI
         sTbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=d59awIr4;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id l9si812051oig.0.2020.06.22.13.58.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2020 13:58:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id p3so6111108pgh.3
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jun 2020 13:58:19 -0700 (PDT)
X-Received: by 2002:aa7:8f1c:: with SMTP id x28mr4466138pfr.19.1592859498597;
        Mon, 22 Jun 2020 13:58:18 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id c194sm14351376pfc.212.2020.06.22.13.58.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jun 2020 13:58:17 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Will Deacon <will@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	clang-built-linux@googlegroups.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] arm64/build: Use common DISCARDS in linker script
Date: Mon, 22 Jun 2020 13:58:14 -0700
Message-Id: <20200622205815.2988115-2-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200622205815.2988115-1-keescook@chromium.org>
References: <20200622205815.2988115-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=d59awIr4;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541
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

Use the common DISCARDS rule for the linker script in an effort to
regularize the linker script to prepare for warning on orphaned
sections. Additionally clean up left-over no-op macros.

Signed-off-by: Kees Cook <keescook@chromium.org>
Acked-by: Will Deacon <will@kernel.org>
---
 arch/arm64/kernel/vmlinux.lds.S | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
index 6827da7f3aa5..5427f502c3a6 100644
--- a/arch/arm64/kernel/vmlinux.lds.S
+++ b/arch/arm64/kernel/vmlinux.lds.S
@@ -6,6 +6,7 @@
  */
 
 #define RO_EXCEPTION_TABLE_ALIGN	8
+#define RUNTIME_DISCARD_EXIT
 
 #include <asm-generic/vmlinux.lds.h>
 #include <asm/cache.h>
@@ -89,10 +90,8 @@ SECTIONS
 	 * matching the same input section name.  There is no documented
 	 * order of matching.
 	 */
+	DISCARDS
 	/DISCARD/ : {
-		EXIT_CALL
-		*(.discard)
-		*(.discard.*)
 		*(.interp .dynamic)
 		*(.dynsym .dynstr .hash .gnu.hash)
 		*(.eh_frame)
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200622205815.2988115-2-keescook%40chromium.org.
