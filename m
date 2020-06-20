Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBTUFW33QKGQEA3P4PII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E680202054
	for <lists+clang-built-linux@lfdr.de>; Sat, 20 Jun 2020 05:30:24 +0200 (CEST)
Received: by mail-oo1-xc3e.google.com with SMTP id o14sf2724310oon.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jun 2020 20:30:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592623822; cv=pass;
        d=google.com; s=arc-20160816;
        b=uh0QJQLLPrf9Nqu41XVYm1YMskhMDekVOPY7rARxddfaU+GMbQ1liM8lyVGO3cAeGY
         XvwYj1cVahFiO/F6S4qE9lhO0mSxygHETKrAVhmEbtpfHlrIeD4U+N1bHhfycBiprgkD
         sKNxBMq49bQ9uul5YEdpj+F112K+bjxYkYWfejgL0wPFGbq9iiDEmDfEsefdyKuhRImv
         8mZ7iHt97l3HQqr00/EGbXkgtnUisXFyYzsj1ASTioUVgZUtpoQytW+S22+VUbXo978e
         58LjxSafwa9C+yRRLVRKJtpaT3uKzCzWc5a73HhAmhhvhOBv4t29pxEyRR5EJrnP+Vvl
         ze5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=JHq6zuyjczrqLxu6ytE+UwYcrn5iS4aTyttjH6zu12s=;
        b=T+8QAWV8Q0AhKONufjj3wL+DvZ5pTzFAC40uJXP4IZSfNQqWdbZKE+rRJlwLtnLSgJ
         2bSvvsYjgraZh6HHL9yS85AF0u5AaYPavj2xMKaD279+5zVj2RT9olHwsio8mT8ExOhn
         IZQ059Xxk1Zx0KP0stRMP3eR45bsj5prg1xzDL47dAtg6DIOUnfbA/iFvrXm+mrdR+O/
         HLNKoTXW9Eop/ByY9foAKUGNQWmFMfvevFzSiggdu8wm++gDvc/DOJei5oA4EeF1WJAj
         Cwwy6gQF+zFt5h9ooZBQf+Zw1Tv9iufo40Hu0dkID2gY5RBsCiSu99L1bcLKDMZ2taRT
         oF4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=GrC+IOZr;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JHq6zuyjczrqLxu6ytE+UwYcrn5iS4aTyttjH6zu12s=;
        b=sNtdwPkLAAKmJqFmVUzXOZkFeZZNewrb4dSR0EePHgU1p6NiSaStVlQbKFJr2a59yn
         djc4expJ5PgWXgneUX1htGvGNGIruH73Wf1ACr2vFAk9sGTpcPuwdj5tgBHK0W0GWRIY
         HytVQ4twC7m2Vf5pAk3rgHqhY7U4isnHLkCrcN4IP3F1RbA/tNoTFFugf1yrci1sYF1H
         wByf6JSXO2nlM5WvoCy0zJMPbOPumSGnYmPJEK3Emw9SL8IirbUnoSxBWtuF//IVOuxM
         QljrB9D+ojOovDm5CkR1BwKvGwdNQBGWyxWa4UfHguHzM5jpCW2ZTmmQvWt5ZYGcmZjS
         LloQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JHq6zuyjczrqLxu6ytE+UwYcrn5iS4aTyttjH6zu12s=;
        b=CpNuflrSU1Np45zWPXtM4uzwO9/PqKC3C1Tc1RuYfH3evet8jMaUvUsoGrldfuW9QO
         0CDN//BMsq9RhUKZAQFIixB8d5ceIwsbEouuz1wtdI2h/gWiQxKOm1Nqcrkp6noHV9KN
         x38NtaJLi11dNkEQaqMzX02BvCjJfyEkfr1kmEeW4lvmqfXRvbCuMBW9sx5MYKubPBGt
         WuTfr2W/9Gr3/NONYXiawkiwWgmiVQeDVZ2R69+Q2CnGI0SE1zwye8kHaDoM0T/5ZqzV
         HBTML5ai/H3HQHVfaNAaZMjYRnBbBpQ4YO4znVYaQYJW4Nl75lQ3SWOBXyhkzXvRah3W
         fFlA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533L6iqQcX1EUbR4s7GMA64POYXBNMrbqGWNSX1NljqQzsEBzLvM
	W2TeFm4xPGAPwQGEAcrwQvk=
X-Google-Smtp-Source: ABdhPJxiP80d5bj8pvxM/WIIN7TdsvbLcm7GPf0UrA0WRe4qYvNolQGrCRRUGj47EA0ee/9DqDB3Fg==
X-Received: by 2002:a54:4494:: with SMTP id v20mr5472662oiv.154.1592623822670;
        Fri, 19 Jun 2020 20:30:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7d0d:: with SMTP id v13ls2487573otn.3.gmail; Fri, 19 Jun
 2020 20:30:22 -0700 (PDT)
X-Received: by 2002:a05:6830:1bcc:: with SMTP id v12mr5376585ota.301.1592623822376;
        Fri, 19 Jun 2020 20:30:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592623822; cv=none;
        d=google.com; s=arc-20160816;
        b=EmEFCCMZwidkjKdnjp0pifYLwe0CMU9Mmdy2PgyKmee2jUWeRv43Kfk6eSyRAbk7sq
         t0kSswbrutzah5HJFXoYiY4Y+HVaqGW/etKNOt0zfQfxTulw/y2o1sj7ofBna8Bv+FB2
         sVyksYyyHRJlBkCNRtrs1/QmkWeDIZ9c8HYr1d49nGDqekM9t3l+PM7sQqXoHbcThY38
         JN8cJa8IJFDlDuh7JT7hC5mphMfsHpdxBOSnBlTuf+EUOPj5sbBTn9Ka2HfbaDHQvV1c
         ARx+IYH7H5MCF4acASrvcPtti3EU1Z6OCDN4NWjXxRy/C3OFVOhSD9rxKlPu1OCoaFSH
         igsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=z7EOwykxg6pvaBNDuOu+42kuk7rsiOpCvhCBE52K1bI=;
        b=a4+Jy3c4hVWcTQ2IF+i3GWjP2cjtBfxJmISNjLOtHtUl6V1KJwUUkK3Y1tRdFntlJS
         6iwkd42zy/DObzLkMGwxvHkieTLkS6e5cIZcKRgzXb9lkAJd7POBCrHGP8cGszLuu9rb
         LNdX4ZqqU2e0GkChMAmZwx4g1kFQMrZoOJAB5NqrTKe5YAaCgylBVTfp1zYCT4eUr79v
         0yWUOqdafLF9mHFt/XrU30atEYNooZGueJIAUCRGwGNFgj8fSKEq7fzWBm5xjmcYEOz4
         +8InBfNjCNitTi+X9hpOhrRvxTplCFLyt7TfQjbM4XRqPBdmNpW1uO5N8R36mzaX8uwE
         9o0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=GrC+IOZr;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id m26si429746otn.5.2020.06.19.20.30.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Jun 2020 20:30:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id v14so5407040pgl.1
        for <clang-built-linux@googlegroups.com>; Fri, 19 Jun 2020 20:30:22 -0700 (PDT)
X-Received: by 2002:a63:5a60:: with SMTP id k32mr5268010pgm.73.1592623821607;
        Fri, 19 Jun 2020 20:30:21 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id g17sm6301749pju.11.2020.06.19.20.30.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jun 2020 20:30:20 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Kalle Valo <kvalo@codeaurora.org>,
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
Subject: [PATCH v2 05/16] rtlwifi: rtl8192cu: Remove uninitialized_var() usage
Date: Fri, 19 Jun 2020 20:29:56 -0700
Message-Id: <20200620033007.1444705-6-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200620033007.1444705-1-keescook@chromium.org>
References: <20200620033007.1444705-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=GrC+IOZr;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544
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
to removing[2] this[3] macro[4], just initialize this variable to NULL,
and avoid sending garbage by returning.

[1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
[2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
[3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
[4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/

Fixes: dc0313f46664 ("rtlwifi: rtl8192cu: Add routine hw")
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Acked-by: Kalle Valo <kvalo@codeaurora.org>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c b/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c
index f070f25bb735..5b071b70bc08 100644
--- a/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c
+++ b/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c
@@ -592,7 +592,7 @@ static void _rtl92cu_init_chipn_one_out_ep_priority(struct ieee80211_hw *hw,
 						    bool wmm_enable,
 						    u8 queue_sel)
 {
-	u16 uninitialized_var(value);
+	u16 value;
 
 	switch (queue_sel) {
 	case TX_SELE_HQ:
@@ -606,7 +606,7 @@ static void _rtl92cu_init_chipn_one_out_ep_priority(struct ieee80211_hw *hw,
 		break;
 	default:
 		WARN_ON(1); /* Shall not reach here! */
-		break;
+		return;
 	}
 	_rtl92c_init_chipn_reg_priority(hw, value, value, value, value,
 					value, value);
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200620033007.1444705-6-keescook%40chromium.org.
