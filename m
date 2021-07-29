Return-Path: <clang-built-linux+bncBCZ3LGVOUAFBB7NKRSEAMGQEGEKDLAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DF7E83DADEC
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Jul 2021 22:54:21 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id j6-20020ac253a60000b02903b68cc7d130sf1161807lfh.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Jul 2021 13:54:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627592061; cv=pass;
        d=google.com; s=arc-20160816;
        b=0J0mdGG7K8cnNZbmc9fUSaEZBAFYShNu/jPBoZXTyD5Z5TXEMUxN3m46hSBKilEfQH
         usby7A6GMIs3o4q4+LYDKLvZx+lPXzapQUioEJyz8+868DBAPDoTj5aEpkJGx/cbfnoc
         keqy83GaeoGcndD4+GhBfLgt9xYGUOW0RSt7FT7L8EbpTRNL0LC199vllZHhCCo1PkHj
         2YlCxzFPclMA5X2EXDzL8Xd3ea1yqKKDFgDrdP1v/RuSu/NQ6U3fKCHHGFgWFZaYDih4
         Vk0fZhweOKHvcUvSH+Cy5DbNPWjY5jYNS4aPjoB3Me8SnvQPPqTGSvA3Vm/acRehmhzz
         kRbA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=bL3MVuqrooNJfXuaKeyyeGfAZk3T8ji+0k05zvFjyDE=;
        b=ILA+Lh7d86wBVgV9NaDt0KeAemrFiW6NSUkAQplmT2DMJMGT4tpR97jPixZqE44TXl
         vblDWxqltb+ibJpaxfBAOdteweJq55oHF/JPOc7JYVVNNFg3Pnwcgjs70msjK9q9WvKR
         PHzxYheHvjYHrOQ6GzkAeci/CO91i48I/uIM2GMmMyTJHxskrsxMhNw3EAv9nHfAaJ5i
         8LkSSvdWVAVNOpMEOEL+iRy6X2qt4lQw+J+CeBhmJglLv0hn9z9VlgKZvzLea0WPacd3
         pNf3BbdGtDjY0pbf6T2+adc09T4a8iOw9GdBvRFSJpAE5eWrgn2tUVHmO1hd54pQ3lfE
         12Rw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Gh0TbzRa;
       spf=pass (google.com: domain of treasure4paddy@gmail.com designates 2a00:1450:4864:20::531 as permitted sender) smtp.mailfrom=treasure4paddy@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bL3MVuqrooNJfXuaKeyyeGfAZk3T8ji+0k05zvFjyDE=;
        b=laMrNbcQocV5nzBRyspPuSaTkjCb8B3vQVrX1nUoLX26UK4L0JFMBqVh5+16BWbhzW
         eT/IKfnPLJxSKavrxRX2hmEH0UX/Nzhk+GYAnE2LX1MXK2nL4GiYwiuYtZWtXfzXRaaN
         BkSaiIBRCFFM3ZtQRHgvPNVp3XYC2QiXKrU9fa44/GZMMCgmFEWjI2e5ed5bnk/zaOra
         T95QuT7QmCheqy7Me27P8v7uG+joF7uFwta5wK2XzrToxe/WZ+lOFutqCkCJwpCx/5A3
         9M59J4T3b7+rXyUTTiJZHAHffBty40dMqMc45q8NvLzdMJSZvpHgmtN9sT/DWRzzSFSx
         QRRg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bL3MVuqrooNJfXuaKeyyeGfAZk3T8ji+0k05zvFjyDE=;
        b=rMPO0M5cU7KwbA4xmtk23GxiDPCyY9N3uaevlD8lR0PYt2tTbm9vBXZ9SIcusAIfxc
         JX6RRAvwqkvd6oD9/wgaE7c4jnxEg4BhKwY4yj+T84PR6pf00xxgIS5bxIND0UYqaNrf
         UaiEzSLkuYP5ZgYOEOObT4tTxiRkYCJDjdFB+XD21b6Ge9It0qDBzbfSQsl55WNKpRDV
         0vKbqR305BLE+HNIQMSaoN1ydM4lejfdL9858olW9A0BywJxuCcQf5vWqwB0GrtoGfsx
         SrVI1Y98SoA8wsxFedfYdwy6QB85hcR0tHP88vVWEsgo5E4tV9mwhgc25Ohy8vZtNAm6
         rWOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bL3MVuqrooNJfXuaKeyyeGfAZk3T8ji+0k05zvFjyDE=;
        b=YkM8umhmGm6VesgQufx/yFJXqnthZaLi53riKjTXnFjA8MEr0cIabI5hREz226lbej
         p7z/02M7KL79W36lT9P17+5Vru47MaHaud9rUxV3u6IfPYag/QHo+j4l5KZE3DbZ8ki/
         0NvqxoQNR+RjCbs0CUJvPsPy5uWeKvaq2nBonwoZ6CLLZmp0bVAGgZCCk2QaN40DH+oe
         bovOKyvoJLL8iKlmGE/g5PHorqvkzttj1AuV8rnNgKBand1ZsgE2pW2ht1g52GP3iBgs
         Rv37Wolk5xBxXsrTDxlOalx4UVqBFU9VoGMaHyHrafugN+kpk33w7YTk13dI5i9uG+On
         bTOQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531THze6el3IegkaexjHX8XnP63WqEX6ofjU3aPLk2aad8jpNG1n
	VKY9KlezYcm4lUbTfuQek7o=
X-Google-Smtp-Source: ABdhPJwAGbGwvviofsS8WwSFQ+9tVv6J5QAD4nvUnlYyOMGP1j1JdeVWppJL6vd+otlqftJrdXzhqw==
X-Received: by 2002:a2e:910e:: with SMTP id m14mr4088997ljg.198.1627592061472;
        Thu, 29 Jul 2021 13:54:21 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b4b3:: with SMTP id q19ls1159886ljm.0.gmail; Thu, 29 Jul
 2021 13:54:20 -0700 (PDT)
X-Received: by 2002:a2e:bd0c:: with SMTP id n12mr3992182ljq.447.1627592060448;
        Thu, 29 Jul 2021 13:54:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627592060; cv=none;
        d=google.com; s=arc-20160816;
        b=tLgWseFOM+iAurKDHAOzWccMoix/9jEP1EKLPZymMfugCGQ7k/9DX3gzL8gwrpusE0
         yN+H43yHNpaOpcVWZhUdWAYa7By4x3alxg5FDp4/I2kuhco4wmrht+8LyR4c4tqPYxfV
         hlwPw/IbjzXQTVG1CWDFoEuNvZEw8X565aZKko6gnHTTUCD5ZO2qLGd/f18gk4GgzphE
         JPBzJlUiiv0AUFETM1Goc9Y8R77tszLCAv+9x4nVqscAYWjWgjWwtnba4lbsJzuN/T9T
         78vOY76Wf+lOfjyEDd0FRXZWwrH+hYXvrdEwCKOlacyucr6LJi5VEGnT7UjBOVwaioAC
         4Clg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=usBsehgRLO8yBDJdVm0jGsDqhFCcetjnZvT1SyvVNfs=;
        b=HgwvnQSPqyjYTxMYtePrEQWP8U099sxN8oce8jC/FpXcKSJlG1vjYz6oW22rwEB4Gc
         zLmgUpvFy+5M1ooyTH9SPAVp8JsZkB+1bt/JZLlUp1QXNOCiof16Fh8KYuOhJ3vjpRzK
         F+xuJUk2YsBWJgpHpe1bKRdrjXe9K9bwKnmYzTsjOLpmRo5vcx8Oxmlz7UOudw/16Wti
         u9kxz/44/+Dmapa+DS7TM9GN6ho577LAAKkcUClyYvNA8m7aYjDZPI+g/gBcI0cRZyMT
         axbThBQbLnoqVJVP0dx5YsQTqr9nh0mzpmNQA8J01zwbGcyc47Ww6lq1mInKI+CVKLwW
         QWFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Gh0TbzRa;
       spf=pass (google.com: domain of treasure4paddy@gmail.com designates 2a00:1450:4864:20::531 as permitted sender) smtp.mailfrom=treasure4paddy@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com. [2a00:1450:4864:20::531])
        by gmr-mx.google.com with ESMTPS id g15si123368lfu.1.2021.07.29.13.54.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jul 2021 13:54:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of treasure4paddy@gmail.com designates 2a00:1450:4864:20::531 as permitted sender) client-ip=2a00:1450:4864:20::531;
Received: by mail-ed1-x531.google.com with SMTP id y7so7719511eda.5
        for <clang-built-linux@googlegroups.com>; Thu, 29 Jul 2021 13:54:20 -0700 (PDT)
X-Received: by 2002:a05:6402:2919:: with SMTP id ee25mr8299804edb.222.1627592060156;
        Thu, 29 Jul 2021 13:54:20 -0700 (PDT)
Received: from localhost.localdomain (i59F726E2.versanet.de. [89.247.38.226])
        by smtp.gmail.com with ESMTPSA id u2sm1625307edd.82.2021.07.29.13.54.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jul 2021 13:54:19 -0700 (PDT)
From: Padmanabha Srinivasaiah <treasure4paddy@gmail.com>
To: jeyu@kernel.org,
	keescook@chromium.org,
	nathan@kernel.org,
	ndesaulniers@google.com
Cc: samitolvanen@google.com,
	treasure4paddy@gmail.com,
	Miroslav Benes <mbenes@suse.cz>,
	Stephen Boyd <swboyd@chromium.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Joe Perches <joe@perches.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH v3] kallsyms: strip CLANG CFI postfix ".cfi_jt"
Date: Thu, 29 Jul 2021 22:53:12 +0200
Message-Id: <20210729205317.25685-1-treasure4paddy@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <CABCJKudYRiK0KcMHGHeBFcr+Smwa9EM+NFeBpMo_ePqK+zHz0w@mail.gmail.com>
References: <CABCJKudYRiK0KcMHGHeBFcr+Smwa9EM+NFeBpMo_ePqK+zHz0w@mail.gmail.com>
X-Original-Sender: treasure4paddy@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Gh0TbzRa;       spf=pass
 (google.com: domain of treasure4paddy@gmail.com designates
 2a00:1450:4864:20::531 as permitted sender) smtp.mailfrom=treasure4paddy@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Clang CFI adds a postfix ".cfi_jt" to a symbols of extern functions.
For example this breaks syscall tracer that doesn't expect such postfix,
so strip out the postfix from the expanded symbol.

Signed-off-by: Padmanabha Srinivasaiah <treasure4paddy@gmail.com>
---

Change in v3:
  - Modified commit message to indicate fix is for Clang CFI postfix
  - Rebased on recent patch from ndesaulniers@google.com.
  - Fix is enabled even for CONFIG_LTO_CLANG

Change in v2:
  - Use existing routine in kallsyms to strip postfix ".cfi_jt" from
    extern function name.
  - Modified the commit message accordingly

 kernel/kallsyms.c | 21 +++++++++++++++------
 1 file changed, 15 insertions(+), 6 deletions(-)

diff --git a/kernel/kallsyms.c b/kernel/kallsyms.c
index 5cabe4dd3ff4..67d015854cbd 100644
--- a/kernel/kallsyms.c
+++ b/kernel/kallsyms.c
@@ -174,7 +174,8 @@ static bool cleanup_symbol_name(char *s)
 	 * foo.llvm.974640843467629774. This can break hooking of static
 	 * functions with kprobes.
 	 */
-	if (!IS_ENABLED(CONFIG_LTO_CLANG_THIN))
+	if (!(IS_ENABLED(CONFIG_LTO_CLANG) ||
+	      IS_ENABLED(CONFIG_LTO_CLANG_THIN)))
 		return false;
 
 	res = strstr(s, ".llvm.");
@@ -184,16 +185,24 @@ static bool cleanup_symbol_name(char *s)
 	}
 
 	/*
-	 * LLVM appends a hash to static function names when ThinLTO and CFI
-	 * are both enabled, i.e. foo() becomes
-	 * foo$707af9a22804d33c81801f27dcfe489b. This causes confusion and
-	 * potentially breaks user space tools, so we strip the suffix from
-	 * expanded symbol names.
+	 * LLVM appends a hash to static function names when both
+	 * (Thin/FULL) LTO and CFI are enabled, i.e. foo() becomes
+	 * foo$707af9a22804d33c81801f27dcfe489b.
+	 *
+	 * In case of non static function symbol <funcsym>,
+	 * the local jump table will have entry as <funcsym>.cfi_jt.
+	 *
+	 * This causes confusion and potentially breaks
+	 * user space tools and some built-in components.
+	 * So we strip the suffix from expanded symbol names.
 	 */
 	if (!IS_ENABLED(CONFIG_CFI_CLANG))
 		return false;
 
 	res = strrchr(s, '$');
+	if (!res)
+		res = strstr(s, ".cfi_jt");
+
 	if (res) {
 		*res = '\0';
 		return true;
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210729205317.25685-1-treasure4paddy%40gmail.com.
