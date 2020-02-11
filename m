Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBO73RHZAKGQE437P7CI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id D27F6158C70
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 11:11:08 +0100 (CET)
Received: by mail-pl1-x63d.google.com with SMTP id h3sf4424553plt.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 02:11:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581415867; cv=pass;
        d=google.com; s=arc-20160816;
        b=aplo7h8XWtXMRejABUjOJMxNzACFAiRPCzuOp4n5EV6mZKMcYatH1OSHIlVrvzgncT
         TRzwfuauVAmBUhtWekU5FH23wLkAxDY4l4kqPim1O9PBmGjmKkrGqI6OiwqECcPCL7hY
         DFF5SvV4yeHx1n0udCJhcdKO6FuX6iU5POpXTEcSOTpeO1gsEK1QOi+BWDkXlKpUjmD1
         eThfF0GF7nW671sKWj1jow5LfoPceItmxPp6u6yM0jHzCW3GT1hVWdMrlnkDs4MXV+nW
         yb9pePCedytoVsg2x3fkeOpOSNLItpzTdR0wf3ZC6QYh2zAjAnaOP6hoGhFqM8M/gufN
         b9Mg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=iq/88gvxeqrOJci/TuKH0LWD7Xqq5/oAeg5+KfIXO2A=;
        b=uQ6BSnMz1TsJWOzRbBp4mySeyJvPGqcTqPX2lZsdznr+DXjl5t9a8ws2GSY8owNDT/
         8ByZ5UpnENyYno0Lxn/pbnbpjlCHLHFkNSDegoh7FNffAN6v5D2RNJt0xSdAyuk7uHCY
         QWMFWKl56DsWrB4/S6KvsTG6pzf/yXM8j0RipqiXwFuYe8kOUaMbT2VSnwlq4XzG7+QW
         7loz8rBgZCjBA4gVzVr7EUZJStOjf5fwJD9pd7aI6sFBhHi5cwB7zfuPDmQY1rg8GmOW
         UcJ7sKvtm2OY80TuQhG+uGbKnIUWF4y+9iVuFGtITxLaOhu0cmK3lwfDx28TJ5uNrzN/
         264g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="tU/CEmUV";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iq/88gvxeqrOJci/TuKH0LWD7Xqq5/oAeg5+KfIXO2A=;
        b=cNTECSMIoJGX6aKLAivfD3+MSGCtC6flgCIwgWwwN4PVTfdcZLvtAskL+OcpV/fuHQ
         viweskySCUnQldcxodWCLQifufhcx6wm/gsIsM5pwsAkwLYeJI7Zrpm0OaZT+0St4vSW
         tRkhsNT+7wpmHWlL8+OQFfZuf9EX5QF0AKb2NiLdJ24cyCivRjAGQ4qqg+9QDpT2kGiE
         XVh9UPJzzib93bgcqW5PWFGMhnqRIBGhau4yFyePjkgnTjUElAENDxvwDyKVXXv0dXXg
         PffXhNnSF+m4Da4GVphTufvHX2nfNYY+Zxsyogc96rVMzOtOWd4bM4hMmw6xj8yEDK8D
         VXNQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iq/88gvxeqrOJci/TuKH0LWD7Xqq5/oAeg5+KfIXO2A=;
        b=CAmM1ZpXb5XYHOvNBJu/FoCWoYWJ916ZH9uIKnOoszWdaUfzh8s+jI7nwoZ66hnhPh
         mAlrVeAjB//rYvu0MMr+DYyhPI0jLkkEd7lQWAUujZDgx7M3d/yd/OoEtZfMJ6Gdp3iq
         skH1xF+pNH0CjVuMWHEQhUDDKtYNFn+FnBzbeQbr3cR0yaaMoZb+LHrjaoOsSMxnF3+y
         +7VXn8dlJDHxxUs1Pu+mKfxvz4Y/mXx8bGd5unxUpBsPhjvcUACfPjk8I3LqUH9xEl4X
         Za9xqQEPCA2AVMRyj3kCIK+MAl2g3NfgSNc/4uiJyMCeUW9UmAcDMchvuWo9cjNSvfyx
         BI8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iq/88gvxeqrOJci/TuKH0LWD7Xqq5/oAeg5+KfIXO2A=;
        b=pxDmK/MCMJzZ8KdDRtO75x8+4CzeBlj8JaCvcTsgFD9M6ZNXSNpMMA2AVa+TqgW8Du
         ny0uouWCUeQ1eGk63Rh4K7ymxPce5Gx/P/j9gtWokYs1FWJRXhTATSR1Sg+N0jWSQOOR
         7ZAESxaSgmKCt+rMvcP4GV7W3j5Xs79KkcVnVpLzvAd7zTRZgrpfsH2qU6NJIN/+JpyB
         wfii0viVyZmkKM9UZ6tYBvLHflvb3Io3qwz7USgPd3TVkfClT5oJYP/EZ0o0rRUx4mHt
         iwpXBmd2qj63FXQHnEQcRcCzDPKPLvkOTQ/pg3vPEPJKv4LlIaaijMNmOcfwHREqj1rn
         2fFA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVC+pU0gGZWXuyCjWLAf2IPWG3VLJdVBJA9AUCFoYJmmiLr75nX
	+PlIJrqnAoEOD3YNOKCFnc8=
X-Google-Smtp-Source: APXvYqx3polflX9ae1E8hLMrpEqYaQ5s2ixx24s6GKNNofCtKavOADPTepZ/apf5H82lpU35f07pwg==
X-Received: by 2002:a63:3dc1:: with SMTP id k184mr6172371pga.103.1581415867589;
        Tue, 11 Feb 2020 02:11:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ad06:: with SMTP id r6ls1562745pjq.3.canary-gmail;
 Tue, 11 Feb 2020 02:11:07 -0800 (PST)
X-Received: by 2002:a17:90a:da03:: with SMTP id e3mr2836011pjv.100.1581415867186;
        Tue, 11 Feb 2020 02:11:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581415867; cv=none;
        d=google.com; s=arc-20160816;
        b=tzq0uPAxjlIEPzxmqVKFrHknxTmgsZGRvEW619qXchaLGUgF/PhyrQmM8T3Mbjigir
         Z0jGJqr5yehEgX8y5UPmR7BIpNXlngQ4tC7XzuWNX9FpMZyGiZ+LYBICjFpY9HMr7SDG
         4XPoFJNPffh6vZIqFrjBlwC68+AlcbxUe0ZIAQxJkJ7xU5YGCxH40ZQgLRqYpiufQT1R
         UaiWkJbT+QRVvwcoEpo+paXtxfg8/cyAzlGoFmUi++2JgBQLmwoZlzWYoFpQreur/Zjt
         HNDwV3XBEtqdax5FEM6j8nxifOyoOKy5p8C+r3Tm3w0+1yPnGotDzv3qnG+DfF9oITgd
         MaZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=7ascoSyyl6/0wTjgPcfOThYnv5a+tYL+RY3+yY2IcIw=;
        b=CU0GFo393FerYmvjo13etnWQsdmvGO8Im3PcUClPvRh0bHOtzfDSrTCTPsuPTfaEi7
         SuGX8P/c3KtYyKyFIBxU5+i/U2x/EoZfAG2jgtpRniJVnf8F8evnYTr4ykvoZUisr6QA
         ls3oD8A7Qyl5rhxhiW8Ur8Y6V0bU33fd2tIMlBb6KwEfZEp3LYDrtBjC98EMwW3f6EbW
         GiFUCC+iJ/8rcVdL8a2yCF6lWWOUz735Pinpyti2kVddiL3OAzXt4oxjPxFivyzUugnD
         saRDVTz1z9eUctKxHgTKPeTNyO8mUGOR408gAMRz8qG/xy7r5kPBIUQPs8hVXpNsnGXp
         +IJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="tU/CEmUV";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id u19si168699plq.4.2020.02.11.02.11.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Feb 2020 02:11:07 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id j17so1040712pjz.3
        for <clang-built-linux@googlegroups.com>; Tue, 11 Feb 2020 02:11:07 -0800 (PST)
X-Received: by 2002:a17:90b:f0f:: with SMTP id br15mr2734217pjb.138.1581415866660;
        Tue, 11 Feb 2020 02:11:06 -0800 (PST)
Received: from Ryzen-7-3700X.localdomain ([192.200.24.85])
        by smtp.gmail.com with ESMTPSA id v9sm2429853pja.26.2020.02.11.02.11.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Feb 2020 02:11:06 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: clang-built-linux@googlegroups.com
Cc: Dmitry Vyukov <dvyukov@google.com>,
	"Gustavo A. R. Silva" <gustavo@embeddedor.com>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH RFC 5/6] mm: kmemleak: Wrap section comparison in kmemleak_init with COMPARE_SECTIONS
Date: Tue, 11 Feb 2020 03:10:42 -0700
Message-Id: <20200211101043.3910-6-natechancellor@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200211101043.3910-1-natechancellor@gmail.com>
References: <20200211101043.3910-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="tU/CEmUV";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Clang warns:

../mm/kmemleak.c:1950:28: warning: array comparison always evaluates to
a constant [-Wtautological-compare]
        if (__start_ro_after_init < _sdata || __end_ro_after_init > _edata)
                                  ^
../mm/kmemleak.c:1950:60: warning: array comparison always evaluates to
a constant [-Wtautological-compare]
        if (__start_ro_after_init < _sdata || __end_ro_after_init > _edata)
                                                                  ^
2 warnings generated.

These are not true arrays, they are linker defined symbols, which are
just addresses so there is not a real issue here. Use the
COMPARE_SECTIONS macro to silence this warning by casting the linker
defined symbols to unsigned long, which keeps the logic the same.

Link: https://github.com/ClangBuiltLinux/linux/issues/765
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 mm/kmemleak.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/mm/kmemleak.c b/mm/kmemleak.c
index 3a4259eeb5a0..ad887bc81382 100644
--- a/mm/kmemleak.c
+++ b/mm/kmemleak.c
@@ -1947,7 +1947,8 @@ void __init kmemleak_init(void)
 	create_object((unsigned long)__bss_start, __bss_stop - __bss_start,
 		      KMEMLEAK_GREY, GFP_ATOMIC);
 	/* only register .data..ro_after_init if not within .data */
-	if (__start_ro_after_init < _sdata || __end_ro_after_init > _edata)
+	if (COMPARE_SECTIONS(__start_ro_after_init, <, _sdata) ||
+	    COMPARE_SECTIONS(__end_ro_after_init, >, _edata))
 		create_object((unsigned long)__start_ro_after_init,
 			      __end_ro_after_init - __start_ro_after_init,
 			      KMEMLEAK_GREY, GFP_ATOMIC);
-- 
2.25.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200211101043.3910-6-natechancellor%40gmail.com.
