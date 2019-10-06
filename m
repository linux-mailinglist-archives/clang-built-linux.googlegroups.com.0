Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBCOG5DWAKGQE3FR7OEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 11498CD421
	for <lists+clang-built-linux@lfdr.de>; Sun,  6 Oct 2019 19:23:23 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id t25sf3397507qtq.9
        for <lists+clang-built-linux@lfdr.de>; Sun, 06 Oct 2019 10:23:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570382602; cv=pass;
        d=google.com; s=arc-20160816;
        b=Td/PsMIWUk6UFt6DFwTGwApeS/0tGLUfy+v3VZ/3cipi7GZ1/mZJx39rxQTwUixPMU
         WP5PVafotSNAGdPyA3sfCa8PpA3sNThupfJNPWNCiP8d01bFvo5gBZzIWxe3c6DS+Qrg
         yINiahBcGGt7ozLmsWExceOR+lLidOz2CYgA6c0c1dRpGY/YrYQCvKaycEV8+kBPbQ8h
         5k3/hJDxwaE6xWIf92bSLV0lMa99glq0CuAxGHLaL6ar5kN9326pDiSHqFl59Ylt4vtQ
         farv5mGmsi75NZP1OvAncWxhTqPlicFj3RwfjfxBPod3/CzIimuBJEzK8t9qM9ZomNse
         TZyg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=v5HOYLuZquMfus7EXzCc5gngUK4LdTSvqPTQjl5QgjA=;
        b=pPcx14XGX7rwBmF40J3ASoqeujOf6Fg4sJa0k9mlDkQFTlU7hjQBOT3+nDFQwzyuP0
         z4zcFIBqg4Zd0AjCKmyZoNqHcaZ/z3rRuDjpZp8OFmTdF0Gm+siGOe0YnEqeLaPu2Xzl
         u8oChKJMRnuhMa6fmOPmXmiGxYf+5rhnhNc/lInm9az0oYRwNW7k86g+QnflhY7yNk83
         69dTfbHx6ZrjUba5B2tnq1ZW+tzWCGyfXp0n1Ik0g/i8ee6pXst4FCKY7XGXXFevY35X
         9sG5G4vKXArI9gsWkDudWHYMetUMAx6waE92ib0R0Gja7InBve7/72Yywdgtgk++9qoi
         3FHA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=I+xBPV2l;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=v5HOYLuZquMfus7EXzCc5gngUK4LdTSvqPTQjl5QgjA=;
        b=rcSTKVn8jracjpsWwCEOG3mMPw5a7UbbqaHJwqT81n0BGrORq71k5eRiqdzg3GJvfB
         Lhv7nDQCaurcczl0WgK9sF1xHbv1kevLGdrqyAEp1I//y4ZaxPOlpPkcSC0ZShn6jbPO
         nGxtt62+wLbgrH4X2XckMFSaBuV7f/spfMgW0IGDZkd8YE6Gj4kAZOxrfvkcGuyONjCj
         b68/r+fY6WkUX1MLk6jusWS2InowDzJY3UM5dBXEzpzTZGdsh8x6YMXZmAHaZVjr18t0
         wG3hNNd7eG7hUS0WG4CKjwo6T/lzeT1MlVhE/FCGi6seSgo7WYfacvfV6P+hR3PN4V21
         ODEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=v5HOYLuZquMfus7EXzCc5gngUK4LdTSvqPTQjl5QgjA=;
        b=MnwXZ6bqOsnKfJFyki34XEnzAhsb+klO8/Wuy2YF51dpZ/sIr1MEk2qqOilNM3iRtN
         RVKRDmrnqeu67KKOmaqeG6ulxw0qSzW1aBtEpJGp7gp3BUiMtUk8hL+0JCKFU6+TM/KW
         C2lx5EDq/+fvY9av5Y+I99nTJP5y+ePaN1EQMQYbrOCfKBpw6m2F612zMk5x7M2vk7/A
         q1SvU+zDSSNDGJg7siJSVwQYDEaLSmnouahqJblE2EgB85ok9YngLusumChTMclk7wOI
         UWvCcq1tDupNjMAhTB1Bmn6IQiycYgYLCKDfHgejyqb/4jYq+D41vh7JTPPcN2nkMRe3
         7uJw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXnMGAvSL6jbhFzqANwby/Hiv+cCiwGtM5THK/bTBUae8QItf2J
	u5c3jQmR/an4XFlVHUyA6Ow=
X-Google-Smtp-Source: APXvYqxRFmxUUwm6eVwiD4HEwQzPtsNhnh7Mzp4OtF1/7LedGjltcLY/eNqwoW1lQ3+/24X3aktQyw==
X-Received: by 2002:ad4:53c8:: with SMTP id k8mr23838864qvv.240.1570382602027;
        Sun, 06 Oct 2019 10:23:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:5384:: with SMTP id i4ls2510707qvv.8.gmail; Sun, 06 Oct
 2019 10:23:21 -0700 (PDT)
X-Received: by 2002:a0c:eb12:: with SMTP id j18mr23813588qvp.81.1570382601730;
        Sun, 06 Oct 2019 10:23:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570382601; cv=none;
        d=google.com; s=arc-20160816;
        b=yRP6rCjSHGez/lZ0LOxu0775aSbZ/h07nKb0/6Vz2NXSwkz2RyRCEQJIPp8K8KW/Ba
         khCarI0lcvGSW1CMvCrrm7bqCqHbyKLkulznf7jSU5tqetEqq8mONotCIdlx+Uiq0f9X
         tt3XTSEbhQ6v3XFyiuLiTD7apH/US7VSF+EOF7DWJH5KzJlS+2MxB4bWBwZL7tzJbL2v
         YBwdOej3A7UhLcS3pnq7SBhgPULBKABmXFmNBcMyJZlkoAQKvKl+JaC9c7BSqNaorri5
         1t13Av19NJ5DwHkyczoQ+a7dAhm/j0f11rKUkyOYKpDrlRBq4Bc9C496FMxdnraIrcs4
         lT7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=Ajxr02wAHR2RAA5cLm7olMvAuBgd7Mm3EijaDAduRjE=;
        b=GGMyK2pCgeA9N/r/k9DLFL82/v/W43zl4vGrDyzCl5bOinpsLiHcgYKFNISvCDAy3j
         JP6omQsCO8f8C94fYgRDuzxaPmOtyFibB3xBIl3eegXzNRX3m1gCnLo3HvOP3cUuv53P
         2Gakk6Bf6Dma60ugSuANeVGRDyFj6pkioKXzkeyGXaQ3RJFPYks3jdV+Xah/yUJirSEp
         uiQVXbjC8FAuYkczHocByif6hFqse9qO3AHBcMMcHZYkltwLj7gGC46o3aLTDDS4hJZb
         xAoHa9QFMZWAQXnNBKKSB5GphV3v5CKYLRJL8Gc69GeAFMJ8mEdWTbQJJXrRqNh7M9dW
         rvdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=I+xBPV2l;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l4si572752qtl.1.2019.10.06.10.23.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Oct 2019 10:23:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2392720862;
	Sun,  6 Oct 2019 17:23:20 +0000 (UTC)
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	stable@vger.kernel.org,
	Nathan Chancellor <natechancellor@gmail.com>,
	Paul Burton <paul.burton@mips.com>,
	Ralf Baechle <ralf@linux-mips.org>,
	James Hogan <jhogan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH 4.9 19/47] MIPS: tlbex: Explicitly cast _PAGE_NO_EXEC to a boolean
Date: Sun,  6 Oct 2019 19:21:06 +0200
Message-Id: <20191006172017.899294811@linuxfoundation.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191006172016.873463083@linuxfoundation.org>
References: <20191006172016.873463083@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=I+xBPV2l;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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

From: Nathan Chancellor <natechancellor@gmail.com>

[ Upstream commit c59ae0a1055127dd3828a88e111a0db59b254104 ]

clang warns:

arch/mips/mm/tlbex.c:634:19: error: use of logical '&&' with constant
operand [-Werror,-Wconstant-logical-operand]
        if (cpu_has_rixi && _PAGE_NO_EXEC) {
                         ^  ~~~~~~~~~~~~~
arch/mips/mm/tlbex.c:634:19: note: use '&' for a bitwise operation
        if (cpu_has_rixi && _PAGE_NO_EXEC) {
                         ^~
                         &
arch/mips/mm/tlbex.c:634:19: note: remove constant to silence this
warning
        if (cpu_has_rixi && _PAGE_NO_EXEC) {
                        ~^~~~~~~~~~~~~~~~
1 error generated.

Explicitly cast this value to a boolean so that clang understands we
intend for this to be a non-zero value.

Fixes: 00bf1c691d08 ("MIPS: tlbex: Avoid placing software PTE bits in Entry* PFN fields")
Link: https://github.com/ClangBuiltLinux/linux/issues/609
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Paul Burton <paul.burton@mips.com>
Cc: Ralf Baechle <ralf@linux-mips.org>
Cc: James Hogan <jhogan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: linux-mips@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: clang-built-linux@googlegroups.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/mips/mm/tlbex.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/mm/tlbex.c b/arch/mips/mm/tlbex.c
index 3cc5b2e4263c0..47d50197789be 100644
--- a/arch/mips/mm/tlbex.c
+++ b/arch/mips/mm/tlbex.c
@@ -637,7 +637,7 @@ static __maybe_unused void build_convert_pte_to_entrylo(u32 **p,
 		return;
 	}
 
-	if (cpu_has_rixi && _PAGE_NO_EXEC) {
+	if (cpu_has_rixi && !!_PAGE_NO_EXEC) {
 		if (fill_includes_sw_bits) {
 			UASM_i_ROTR(p, reg, reg, ilog2(_PAGE_GLOBAL));
 		} else {
-- 
2.20.1



-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191006172017.899294811%40linuxfoundation.org.
