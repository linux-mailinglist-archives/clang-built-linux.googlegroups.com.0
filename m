Return-Path: <clang-built-linux+bncBCIO53XE7YHBBBOFYXZAKGQEQL2XZBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 698491690AC
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Feb 2020 18:19:02 +0100 (CET)
Received: by mail-qv1-xf3e.google.com with SMTP id b8sf3570753qvw.3
        for <lists+clang-built-linux@lfdr.de>; Sat, 22 Feb 2020 09:19:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582391941; cv=pass;
        d=google.com; s=arc-20160816;
        b=TC5RvJj/cnOd9Kmm/hMF241//0WOU4XMHQaGZ/KzIOuZPcrkgxUOsXPLIIExYVO6xn
         bJuFNQk9EoeCKFHQqHsSg4X4hYljDitlwoVVfFPlW4N1eaKv6NAbFkccHSTYwqQlEwEX
         kwbIJsuI1hHd8VyV8Iqeyv81PHxorlg/V+vWCbeBceamnqYNkEzHzjALaoOTXYapK+CK
         1N2DV1foPaCXAWDj9iuPFYBHp/7V/ZNgX9mBfdsOQLVqMGhBnsOtPCsclCWvHzid2vNa
         IgLGwbesz6JDhjBA1X6qjPyTq0vCGKHzuoWKCrGTfzO/G4zIZLFsJ1xZODaVKiKMh39q
         4JYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=lc1TG7xo7pen4buLoV19OAMxhC5tIfXrjs1Mp9WOECs=;
        b=ji9zdKmfhRPXPaK1cMixf78VosY98kaAsWCn2yIZOXm61JC8k2gR48rilqNzaBEABw
         kPjOel0tfjjiSGLZxK7O3w90U8f8LJtMvm4jbBweoKhDSt8JPgAPIkbazL5GmYs2y5b5
         TJg/naB0CcxaGbN2KlaIvx8nqm7Gp3FigyvLg9+htCBR+HB9B70au71oqubgcoxoPKB0
         uusTBOiPY8Gv0mu7l+Roi18lqsBw3XzJTA4boZF6n3pqWCRSuASSE/QPDTNMOmlCuu+Q
         VCmLfTGoRHxLoGO0HTi7wiD6QU7WEMbB25OP6ya9iCykVpNEMxQn7s+/DTA0GSjRT9U4
         +esw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.65 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lc1TG7xo7pen4buLoV19OAMxhC5tIfXrjs1Mp9WOECs=;
        b=o/02HXMnL1KXfT0F+Th0OYIksx/IRjhp+4Ea2rUhH5vv42ZLqGiyDBGP3gFhITIDPH
         nOlCFq3ryKcCOKjMIKhuP9sn9v6PJ/inrqlcPXgwyt7tjI6eBQHrUrBmw0dSr4UQbm1S
         dvlTdOxkoDCodHRl3CFSER72XcAF3B0h1C1QIqkcoydy024mT45Ztp0qMsBMhmu1effQ
         C6lnVoWCnWQzMkaEh4xozGoSlZ1YKaQDc1xUXrsQjZHRE/FKPu1BUiKbzULn3OjXXEh+
         8UBsCjBcP14SmNKlsXg14M/H+jaKEMKT3c/GPfUB3WBZjOIu+QljWTB5ayHwzny0Tn7/
         Z+SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lc1TG7xo7pen4buLoV19OAMxhC5tIfXrjs1Mp9WOECs=;
        b=sbhIe+L2oGp7TSK32yze4Fi3FI3p5bbjYPgKPEqLy3R1HfFO/5NByH45W+DN1ZDs9o
         3KBauD8PFTPJESnIbsu50GUwHqCkllZ8PEQmBkaEkA8hERqtmm4XiV3DwEosfPVjPMWB
         lQ/fSqtGXfsGbYXTqLGhRADRImBJZDMgryHMsdi45oySWpXpopQ/P+pNGlROpaWQhyJ/
         dlAxSC6yf4LrvXm/NrifOwJ9SKqZxz9eH4474T5fDzMeLKArYRv//yR4o4KofQjzajY/
         HIUuW2RtDzG900Cp3p7QjqZ5bAqZVTGaU6f8lhYjeYlFjEG5lAvKPvbg6f7GC28JuLbs
         xmeA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXxSAkHhb5F30HCYRf0pdqXR4QZuof8RYkNJVlKaiP2eKQNn0fl
	DATJqK648C50bqeoY0UABxQ=
X-Google-Smtp-Source: APXvYqzAdwPT7Up+iJD3Rbxnd0foMbtyppoBwYQXced5jFULoizZ1tD7xzGhNUW3Dvn6XsXabkvqpg==
X-Received: by 2002:ac8:3fd5:: with SMTP id v21mr37845006qtk.345.1582391941522;
        Sat, 22 Feb 2020 09:19:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:4526:: with SMTP id l6ls1178321qvu.1.gmail; Sat, 22 Feb
 2020 09:19:01 -0800 (PST)
X-Received: by 2002:a0c:e150:: with SMTP id c16mr35977191qvl.51.1582391941198;
        Sat, 22 Feb 2020 09:19:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582391941; cv=none;
        d=google.com; s=arc-20160816;
        b=P58IZY46TyIyE4Onb1l3EBLGYQ6I1/Gqw6V34I/9oG6Ki0A8NcGdPe9CK3tFBEvAIV
         EeXkOvduhm+ZeTEe7XOlBL5uxEMRwMtnpGWjedPLeziGko3dUv4/39vVz8MeY93q1vhZ
         c16+HaOUvTc+0VzxdAabBV2hS4pCtVe+K19DtaqwUK2JvbEbAPSL6P0QBClMxGg5lVSr
         x1CL9qzoCDMEN9MvdHeovxj/c3p/ijbDG1qy6HNFKhR0bjtBa68JbMtzmfikw2Sxv2Wl
         y3unkeY+nNwaY20O3xfWASDkCzZ9zaejR/6vwwq3Go5R3IcwSsIQ2Fc4/kLCdeFGdOk/
         SoOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=usc74mrAn4ovUQS3g/Tme8E1bBKJwqNVRzgsDrqLwAk=;
        b=ZvU5kZWcJbf3g6AqnIQG5RoKvI7ZewBlT+Fqhg599CbCAprXXsh6Gio9RSHJF8wor6
         vd0D9h7w87eMxMeORx4sRFCEbFv5WhRQEk0mByLg73ywQxCFjocoCZUoNc0ml+L+cnVI
         9z1iNHhAHt9vEM9qA/OuiDdcsQS4yFrzdmIPnY1PSNC0XEo5jsNuJFcQf885epTrvLc7
         YUeT0BNcWzG+QwSZnLBJF94Bq0NxE3zvTiMIk0AQUXCPqDerke82OA99p3VU1Ncp1GEG
         LnOj53zOmjg4D4NKEuUadPPivOsJBB178TJn67jkTASlYzoQd0AhoxCEcsLNYadIQTLy
         t/1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.65 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-f65.google.com (mail-qv1-f65.google.com. [209.85.219.65])
        by gmr-mx.google.com with ESMTPS id 23si89540qks.6.2020.02.22.09.19.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Feb 2020 09:19:01 -0800 (PST)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.65 as permitted sender) client-ip=209.85.219.65;
Received: by mail-qv1-f65.google.com with SMTP id y8so2409238qvk.6
        for <clang-built-linux@googlegroups.com>; Sat, 22 Feb 2020 09:19:01 -0800 (PST)
X-Received: by 2002:a05:6214:1933:: with SMTP id es19mr35351103qvb.14.1582391940880;
        Sat, 22 Feb 2020 09:19:00 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id a128sm1169350qkc.44.2020.02.22.09.19.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Feb 2020 09:19:00 -0800 (PST)
From: Arvind Sankar <nivedita@alum.mit.edu>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Fangrui Song <maskray@google.com>,
	Borislav Petkov <bp@alien8.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	"H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Michael Matz <matz@suse.de>
Subject: [PATCH] x86/boot/compressed: Fix compressed kernel linking with lld
Date: Sat, 22 Feb 2020 12:18:59 -0500
Message-Id: <20200222171859.3594058-1-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200222164419.GB3326744@rani.riverdale.lan>
References: <20200222164419.GB3326744@rani.riverdale.lan>
MIME-Version: 1.0
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.219.65 as
 permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

Commit TBD ("x86/boot/compressed: Remove unnecessary sections from
bzImage") discarded unnecessary sections with *(*). While this works
fine with the bfd linker, lld tries to also discard essential sections
like .shstrtab, .symtab and .strtab, which results in the link failing
since .shstrtab is required by the ELF specification. .symtab and
.strtab are also necessary to generate the zoffset.h file for the
bzImage header.

Since the only sizeable section that can be discarded is .eh_frame,
restrict the discard to only .eh_frame to be safe.

Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
---
Sending as a fix on top of tip/x86/boot.

 arch/x86/boot/compressed/vmlinux.lds.S | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
index 12a20603d92e..469dcf800a2c 100644
--- a/arch/x86/boot/compressed/vmlinux.lds.S
+++ b/arch/x86/boot/compressed/vmlinux.lds.S
@@ -74,8 +74,8 @@ SECTIONS
 	. = ALIGN(PAGE_SIZE);	/* keep ZO size page aligned */
 	_end = .;
 
-	/* Discard all remaining sections */
+	/* Discard .eh_frame to save some space */
 	/DISCARD/ : {
-		*(*)
+		*(.eh_frame)
 	}
 }
-- 
2.24.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200222171859.3594058-1-nivedita%40alum.mit.edu.
