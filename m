Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBOP3RHZAKGQE7ZDS4PI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C7B6158C6F
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 11:11:07 +0100 (CET)
Received: by mail-pl1-x63f.google.com with SMTP id h8sf4424929plr.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 02:11:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581415866; cv=pass;
        d=google.com; s=arc-20160816;
        b=FmGaLWjbDhA2ZK9RzaZ7lCMPxG07/qmm7jWFz0JKVawr43dSEJrno1jOYGw+JLt/DH
         ZgqAL95SZyCzW+RQozYQjBoUPDNUYnfaOpX7UjhcxDFVNtVoC2pBjGTz5QnBu4Enkw79
         Ij4oue1LkVoD+r4CZmMtY6lOq8s9c3RLrz4D4qkopT2Iqwo9XOT8MEmOsRmYoMBVjrNP
         xE1tP/M3HOcZryyIhquJiApgKYTe90zDuU3VRDVIi2IDtaZWx7nHix/4N4pMsD48Qn1x
         Qrr079kYPDO4NA9ZMtxm/dXQarM2EphPmddoQkgpvgwaazRgDteKu2HVVrUpLI9kKApx
         RvQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=b8svKeKY8rYy4dlUg4tYFvatX+Yroe0lQfjGxDkeHoI=;
        b=MNwrpp1x9A25cRzzOtlbLtYsNuJERDPFFmmCCfgI3GvHpTT/7lJ8sbqT4c/EmxLoNg
         icDg9+HznHZ7aDyTZi1zdq7+Y++UOOpuhS5fLRuLQ8msDRPeeDR0tBXd/OtKu49VAU5K
         SaF3VxkRr6wI4HYYSgc4hoN6XkGV+JSYmHmbwg9eEuaKQdtsaqK5nm2bTruy2dq/8i8E
         1ph/ZIquS6BX78TmmAJyD5x96r3eC4dHTzhvNWijdXTigOPkW3GBLfZo+4TWCUGp0S4h
         swLNQXzrOqbafbT73M1esg3B1ndIAtPkgDmQmBLSsjL6lpuOWRKQ9RfoiMeMbX/w7YPb
         mf6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=A7IGQINB;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b8svKeKY8rYy4dlUg4tYFvatX+Yroe0lQfjGxDkeHoI=;
        b=gG7K4dUA2+8Yckmt94L/7FmWr+lu/JHz1LO2JVgElKrWt+ZZ4OA/2EEWiDR8MIA4DC
         xzxzZh3tcs9Opo+Hrwb8GTkAg+SciTCvZPEVG4dnyHVEjkgP0CR4NXMg7LV8n15sCd6w
         M4aM00XldW5K/rn4my3c9T62MIxWMESBBZM+8wLAD1tn5rveTJndNQnrRZnQYzfiRWfC
         AeO62+UDvqpWdDPWA9fM+A3apZTLlOC1UQ+S5lyoCiXJQGLQqD9ve/9ghgEn89LJ9QZi
         fNhwe60A0G+vYXWKLYK6GbwQ840mRBSQg00NaH6OnxTIz4RCOX6JG1FktWuldtZl6e+T
         EC9Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b8svKeKY8rYy4dlUg4tYFvatX+Yroe0lQfjGxDkeHoI=;
        b=ORegy0NNcdq3lFzEyAK8YWjFTF7CpsRFJCNcvkwyiskzP0defnHGuQackvmGLt9Zwv
         oOhKQxk60YLBiPhex/Gn/EnXCY3NtcZA42p2ZxqVkvjbOsyjkK4B963ilQBAsXT4lOWQ
         Lq84rG6wniZ/rtGOsTCuj/HKg7xSA20MCr+Ptr+yAEGAudokqTj8M0/A077KFjaa/B0o
         Z4hweaDA6mWFD/jkHtfUbKA4QDMIgVk2MJPQ10w02Ju5t/JnKA0uE540jAtv9lTdp3+G
         e89rZEl7TFUb7INOWUkqxqlrzklQ9OB5OF5N2mRnUA5r1B1iWq1Rke1Uny5pGa0gk0xM
         ZpRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b8svKeKY8rYy4dlUg4tYFvatX+Yroe0lQfjGxDkeHoI=;
        b=gKKF3LOWUq8VeDVLf2WwNMe52z/znNtRfy3IZxJIDtTUXQYRMPoeCNnTj+7F1V559R
         Ff4WHiwRrekGOLl91wWOsu8QIjpKU7NQLPMRbk1TkY5l7nSMbrzRlvN64EeLSOs2/U4/
         E7Zwq5Kg27+VahTYjB/zBNgVTliUSYXGvYVRrb6uHMjzzLPMpjBmy8SvO9KarLX9yFnQ
         iHdgco8KtXxtsjfL18fmmANOxU2/otpV51yqP9A2gwBBJoc6DnCX/xLPKzXDYHxzWuRf
         v6Z2baZawWlv7qdQ6tsokjMobUOMqXtfi8CM8U+Hd1Y6xMgXQ6DzZIiMKYbmIKvgpSCT
         Qi8A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXe2zBNwKrQhsJcqCkTuaPHm/owrMpOKvHV0livqSfZFnq2caCt
	S12V3lf0+PzztKOoTQxhR/s=
X-Google-Smtp-Source: APXvYqxyVcN/mwnh3VidgA8O0Lol77u5uMpMbZjaGubSO043+NKc2O9VObHinzLAxPfZaOZEkGjRrw==
X-Received: by 2002:a63:381a:: with SMTP id f26mr6374679pga.40.1581415865937;
        Tue, 11 Feb 2020 02:11:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b601:: with SMTP id b1ls5502242pls.3.gmail; Tue, 11
 Feb 2020 02:11:05 -0800 (PST)
X-Received: by 2002:a17:902:262:: with SMTP id 89mr2494365plc.67.1581415865518;
        Tue, 11 Feb 2020 02:11:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581415865; cv=none;
        d=google.com; s=arc-20160816;
        b=aZnGK01rlcPF1YM93VlLQvBvYksKnuHO3Kdgfcku5QuQx2jWvSvwaFcMTBXXFMO1wj
         H1AqNQuckmUdX4kW/AudE+EWcYK/lwVYcZ6PxmUo1FZd2s6jrTRteXb2/50B7MEyP/PP
         6BkZ+DHCMuXv0PAMW+fWGe1hErfI9r1Wr02MjKc4HVx8wJAjiptI52w27rMJLukUC9cC
         Afw8NKS726NEiacXPH/jX78ncLRpSDi/Q0gY2VMpxXW5ulOigpQaY5EytLJYdQ+ntqah
         YNQ0HNHuiiLWPfNlbdPZbD5rTsBl/pGJWlFWei8hxhoZH9W+x4PYAAKPgP8XsyTwGiJS
         A55w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=vZqKO5fizIHEGMinBM+czJiJKngxqNMv7g2+UKm40A4=;
        b=ox9VwC2BOBBlOtQmOkJ9zS4LIeIJ//pix+P1vUtoY7PD/TBs/1ZKQ3rNniVhXQCPBp
         8e4SltTvt82k13jn77DRIojrqJHNTILJVhq0RXgbns43NLgrhIQbZUkWrkYq+HnmavSZ
         urPSL6OQYFjw4iKYPEHwWFu7A5oSTfTl5G3XfuAtOejBOJ7Ep3Br8W9fQgKhA89iiMGW
         MLxFmQy5FM1UwKgYNmUBqv+8c0Kt+OjoV7XnxRIb4FyHBP4Lv5Zgj2uD8VTXQ6HPBYfw
         3BzYgSuPMXyKNN7recPBn3CRNbuscfMk4HtbOWLWv/tLOLjIata2Cd5yUH/H/0qLCZ+j
         P37Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=A7IGQINB;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id u19si168699plq.4.2020.02.11.02.11.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Feb 2020 02:11:05 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id j17so1040712pjz.3
        for <clang-built-linux@googlegroups.com>; Tue, 11 Feb 2020 02:11:05 -0800 (PST)
X-Received: by 2002:a17:90a:d78f:: with SMTP id z15mr2818296pju.36.1581415864994;
        Tue, 11 Feb 2020 02:11:04 -0800 (PST)
Received: from Ryzen-7-3700X.localdomain ([192.200.24.85])
        by smtp.gmail.com with ESMTPSA id v9sm2429853pja.26.2020.02.11.02.11.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Feb 2020 02:11:04 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: clang-built-linux@googlegroups.com
Cc: Dmitry Vyukov <dvyukov@google.com>,
	"Gustavo A. R. Silva" <gustavo@embeddedor.com>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH RFC 4/6] dynamic_debug: Wrap section comparison in dynamic_debug_init with COMPARE_SECTIONS
Date: Tue, 11 Feb 2020 03:10:41 -0700
Message-Id: <20200211101043.3910-5-natechancellor@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200211101043.3910-1-natechancellor@gmail.com>
References: <20200211101043.3910-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=A7IGQINB;       spf=pass
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

../lib/dynamic_debug.c:1016:24: warning: array comparison always
evaluates to false [-Wtautological-compare]
        if (__start___verbose == __stop___verbose) {
                              ^
1 warning generated.

These are not true arrays, they are linker defined symbols, which are
just addresses so there is not a real issue here. Use the
COMPARE_SECTIONS macro to silence this warning by casting the linker
defined symbols to unsigned long, which keeps the logic the same.

Link: https://github.com/ClangBuiltLinux/linux/issues/765
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 lib/dynamic_debug.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/dynamic_debug.c b/lib/dynamic_debug.c
index c60409138e13..a8b10e00daf5 100644
--- a/lib/dynamic_debug.c
+++ b/lib/dynamic_debug.c
@@ -1013,7 +1013,7 @@ static int __init dynamic_debug_init(void)
 	int n = 0, entries = 0, modct = 0;
 	int verbose_bytes = 0;
 
-	if (__start___verbose == __stop___verbose) {
+	if (COMPARE_SECTIONS(__start___verbose, ==, __stop___verbose)) {
 		pr_warn("_ddebug table is empty in a CONFIG_DYNAMIC_DEBUG build\n");
 		return 1;
 	}
-- 
2.25.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200211101043.3910-5-natechancellor%40gmail.com.
