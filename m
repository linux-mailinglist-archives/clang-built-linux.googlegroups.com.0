Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBIVLQLYQKGQEWXEIFWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D6F113E25A
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 17:56:05 +0100 (CET)
Received: by mail-io1-xd3f.google.com with SMTP id t17sf13076496ioi.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 08:56:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579193764; cv=pass;
        d=google.com; s=arc-20160816;
        b=c5N7fshJ5TEwMmHou9Trusu42S5Qi77FUQ6ML3rzkL9yePDI9Q3kh33jnSQARQSY/p
         6B/GyND6jf48tupusW31Vgbwm6DugQJSE5nE27gDI3gAbHIEGRxe8crKLDxzL5r25CSN
         utZxYSDL7oC64Im2zhdLpfWXN7GoBDhH/X8J+KCWpn1R5GHlU4WE+YrtwQBal/rTn67L
         rZ/HZjFuT27N43E7kKPcf3pwNKbIK598FJSA11sEAChsUeSwmFoTnl8yspYryRaS9PMf
         ZsJRDsgeBpSERsTuUAHJrHt6YouwMLyYxH3JPlrgfFuiTTndUfNVkptt3b7VgDPqRTp4
         1ahA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=5eLMcjSWh6zqd/V9kikQ0f8oxsX2Tjc0l39OIypkhTk=;
        b=zKIRtIZ55fE2b1/IQLsRCNaf+mgHEc0M2e5ScFZ+Hrswoqu3MF/5710hdhIPChQMp/
         6Sl5iLxBeiV0nJztt7MMMnQhgedpLykxPCj6zi/EDzL7ino7kdeZuS/dbDjKDqJnaSgG
         BXKQ9JhRvTva7ZRqp0d5q5EJfPGSOynXvkZMFk9sPb1Mj1UnwJwUePd0uOe3YABzQ2tG
         r0kBkkSiaS0jsX+MI/RURogJoCTLyG6KOjEFfzjLBrwdwY4gVBw17ZRMjUMNTbfF14+n
         B/rHU9rFmYZ/dnfIPwo+zEzvqGYYlY7SyZiEifueeYWoOustJU6UBanMoUxz+BgusyUp
         cfPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ihPQzphy;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5eLMcjSWh6zqd/V9kikQ0f8oxsX2Tjc0l39OIypkhTk=;
        b=YMVH65WZViCLTs0xTAjW6oE/h1Uee5cYkf+wbYWjAWb7fS2/la+6LpxL94jn0qtw1E
         EUAafeatuvNFhKTgaJplHCBOODILivz+pbD+ALjrvPH0QkzXyaZoKwCyCFJCPyVvAyrT
         ShbNpoeiolXInz7XRWkkqxY6Q9jQc8skCHCaRxHdVLsew5rT4IbRhjVAznZAS1lkZYpM
         Hx1MYrBz+F9vTengSqYBgbnSyVHAF51Wa6jnAttMqgRBCd3FadhycOvsSnC5cTeciLXf
         dG/9nw76j8htPYnbGNUv0tXC1FOGmla1Oo8aKfr1ZyX3Wdiymxo6+XHk5ovIQ10WZSqm
         kFQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5eLMcjSWh6zqd/V9kikQ0f8oxsX2Tjc0l39OIypkhTk=;
        b=EOhWOV3VgYGejg+j1gjkB2PpWTG9zFzV/g/6p/gz34Eeg10R5ZM6ogW1DoMpM9uR8Q
         4II26yjzjJz+LG7KigpCCnj+QDMOCVlp/WFLITZ8bQlXF2YzIJYJqcfwn9ezlHWsUBzx
         HE7DgA5UHMtzDMAisD10PYAK/bAqfF3o3iUi4EH2ws0dCzKjEOo4Tmj/DKl04SuKD6ix
         eDNcWThKFuqwd0DoybDkWEeZeSC7aeJrxxmiyy/UHY0FbcjWrSIiV5BCe2WhqFGXsYKR
         9jK5SCVoP3srLbkf/VzxNZOGHxzM4FjZFBZtp6BfRwG/fIoC1uvHGAis91zJELZZTyjl
         K/sg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUuxXlf4F9ttykYPcGZpwq7xBm/egEZ8FRfCXk3fkp8ZVR7q0di
	vAVOI4m1h4WP+2XEM2+94S4=
X-Google-Smtp-Source: APXvYqwCJEcFXdAXBA6vY4grCuIpKKxQQh/bOAIOsw17r813r3IQmYsicczPoSYxm+STkXTGQhUWRA==
X-Received: by 2002:a02:6515:: with SMTP id u21mr28747960jab.82.1579193762703;
        Thu, 16 Jan 2020 08:56:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:cc85:: with SMTP id x5ls4054914ilo.12.gmail; Thu, 16 Jan
 2020 08:56:02 -0800 (PST)
X-Received: by 2002:a92:ddcb:: with SMTP id d11mr4269807ilr.211.1579193762397;
        Thu, 16 Jan 2020 08:56:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579193762; cv=none;
        d=google.com; s=arc-20160816;
        b=qlERaQhAlmUZoCLFMLN6N1JyBEiD544L50NofV3hzBpnqG7ZXw9PZ0u45nV8ebVu3S
         S+HPfZTf8TDBIbcqZdG5iRauWse0GyCQHfMVXspzKePhb95WYd8lSbj6FM09UcJLWyqb
         nrWYC+wSXXxqiAR6AZQl3VUijqezJvu9/uAv8yD1kVOtDFlOMPK5FhJXXsrxO3YYvcLO
         YVhwzNYQ6KUxw1cXSddj3bgY6aGU5I6WspA0iXinm0Z0k2XuDAsL3SG+DlqkWcpoiTF/
         iM9/t1QWt2zXmC5mjIMoQA9QVNZCXCVGHikK8SK/54MDG+crtEF58XdbNCpQyLCwcyE0
         gS0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=bfhVc4i97TSTEG/4y8yiHUjKG8jv/jDViMmXEhQ6EX4=;
        b=vbji395aCVNozDIAC9z9aUkPDGXRgVaTQ1UB6CZzZ1EeXTDvim0t/bQA8feE1eSO4W
         GRhKXeiWt9A4CK7j6r6MHzvVLdkhnaQlyZYPktlEHVWNYxSHCWWQlqXfDT4zUThie7LP
         iO0UhqRoIq+hrGZuNwjbv9qFEEqWIlj545ofUNLiRgZrU9Sc1WO2C8G237K7r+VebTgR
         NOTrndfKGK7+SA0sZN3DblVhuLTgugkynquYVSNlnlsMwJOGunueg2p1gLz4BPaRIuwH
         9gkXEXOvX7jVDF/Qm40WJVBpMf5S4DL2nSlxH302ip3XeRboqO8oq6coqNDuaIowiJKJ
         r6fA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ihPQzphy;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z6si912246iof.2.2020.01.16.08.56.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 08:56:02 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D316A2467C;
	Thu, 16 Jan 2020 16:56:00 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Colin Ian King <colin.king@canonical.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Sasha Levin <sashal@kernel.org>,
	linux-crypto@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 048/671] pcrypt: use format specifier in kobject_add
Date: Thu, 16 Jan 2020 11:44:39 -0500
Message-Id: <20200116165502.8838-48-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116165502.8838-1-sashal@kernel.org>
References: <20200116165502.8838-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ihPQzphy;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Colin Ian King <colin.king@canonical.com>

[ Upstream commit b1e3874c75ab15288f573b3532e507c37e8e7656 ]

Passing string 'name' as the format specifier is potentially hazardous
because name could (although very unlikely to) have a format specifier
embedded in it causing issues when parsing the non-existent arguments
to these.  Follow best practice by using the "%s" format string for
the string 'name'.

Cleans up clang warning:
crypto/pcrypt.c:397:40: warning: format string is not a string literal
(potentially insecure) [-Wformat-security]

Fixes: a3fb1e330dd2 ("pcrypt: Added sysfs interface to pcrypt")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 crypto/pcrypt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/crypto/pcrypt.c b/crypto/pcrypt.c
index f8ec3d4ba4a8..a5718c0a3dc4 100644
--- a/crypto/pcrypt.c
+++ b/crypto/pcrypt.c
@@ -394,7 +394,7 @@ static int pcrypt_sysfs_add(struct padata_instance *pinst, const char *name)
 	int ret;
 
 	pinst->kobj.kset = pcrypt_kset;
-	ret = kobject_add(&pinst->kobj, NULL, name);
+	ret = kobject_add(&pinst->kobj, NULL, "%s", name);
 	if (!ret)
 		kobject_uevent(&pinst->kobj, KOBJ_ADD);
 
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116165502.8838-48-sashal%40kernel.org.
