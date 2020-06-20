Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBVEFW33QKGQEXAB7FJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 81DD620205D
	for <lists+clang-built-linux@lfdr.de>; Sat, 20 Jun 2020 05:30:29 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id w10sf738819qvs.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jun 2020 20:30:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592623828; cv=pass;
        d=google.com; s=arc-20160816;
        b=ANbtepihDTNUDMXNX2D1CLvrmIQtYBQ0lhbSWZiTHBe4tHQpnhTWgRI1g+8+au8JID
         uMVxuky0u9jnlN11ZdJv/rVVmZESHxaQpfGNosx2Z+1URcDnMriK1yL0TfmJ+IR4tJ0W
         mXioWASkSaFY9j5g6VEHpN84xqsTPc63I+OK9HydluPwCbCqwp4i6OxYFFHbAzj3Kc2/
         jO8YnOuFBdx9/BPTONbIeGE+d/iuy59YvO2k+A5sRwIACuy4tFT4nNqBAJM5AjSagPVW
         fVs819VikIIUzKeLXF7dWTjkO5spbPPjvGuq2KwPzOP16xJA7NBBrw66mY3RVxblOATe
         689Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=/bUXnEj5u1xm5wndcxbwoXHIod64siEIo7DB62g1ZV4=;
        b=FiWlDeaUn/8LL1C14uxz073symHHon0OEFuyK++1UKw18n0cBr+aUCmWoiAfG4yHf3
         WS3CQCp5H56tu9kcZD1KfaWisquvurb63uGUx9lSkPHpULEJifMfgWFd/380NGLpDnap
         tym/xvGH71HIEbvaUuB0idnu383YVRFzp7zJgpbrXSWrMTEtB+VVVzHFvshuxpr2cwQA
         iHDazJg3bHF1psBxieZg7UbYnH9J//lDb+d+nBA0SlEvvFqphOqmrra7p93XCfvH59qK
         VDd64waFCjOUU5VkLNI7ZLA9sWMFm2/OKnS8dejH6zqgJD1KsdDKrTVZFFg3UmnBV79H
         aUjg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=MihGMYKd;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/bUXnEj5u1xm5wndcxbwoXHIod64siEIo7DB62g1ZV4=;
        b=H+7bTYMTgPXnppI4noGoO6vJ5Sgn0tQFQ7a7VcMnu9Iq934JqYXcttqG2I7RDp9fFQ
         Rg0OYiRTiVUj6NKnkXduk9giG6p2zRLRCgRGOnfbiZv3hFeg1jsSGE+iVvVYpq0Kqs3H
         V7eO0qy4+Ni4rpP4dTV3ghOa5wKDlruDupIa9w4mAIpOWcnjwRjHe7mQ03DWcIsKbFml
         oRNTbFstjb0mcIXiD0QXg+EVfQNiav4x+gvRKhrKPPwwp1ymInXhH4ooXkiCgha4vn0y
         MfnMwXmuvtyXnZy9jBmh35I5weEn9FZqiRMIX3bupOnisM3VgQfCx4sceuLDBC2FzTjX
         4QRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/bUXnEj5u1xm5wndcxbwoXHIod64siEIo7DB62g1ZV4=;
        b=sV+LcQZJfEksL/KC163ihx7F2mna2HqI0521KyJHrUi+tTESFSNsqBAmt6DcRz7b7w
         DUkmmYS40oPnwUKIwgq8in9UKmy4Rkc+ex9crQ96jFddZtlJHjd/6S88thTqiCGbsLe5
         Lg3r4ru/bLtqkjZV9TFEkQSYEnXUf3x8U1yD/NNr9CYm2hGDcjX/q1nDp9xx0dBSyrhy
         LAc/0ZWpX8wMyKdbUpnxFUHevWXWcwGTKJyMCLaRWxghfXkM+l0AHYIA25UOfnPnHqsK
         wIyCIA26uv+IQmexiAuwvA3QTeosH5c3PEARmU9BFVflp6IGDnvIS2ZAN8A5iyTm7TPc
         sLNQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531rN3GiWs6GfM/EuYGkS+2JMX1X11ddS0BhUkgTrYYtrETLKeHB
	uquNBZrsFPN8s7Fg6d6/kwo=
X-Google-Smtp-Source: ABdhPJyeLKnpxHxZc4B+u7uQ9ZiAqQzL5VMCkUKBvo+R5jIvPpeZESGDyQDfFRJUVwPThSr4G0e2YA==
X-Received: by 2002:a37:bb43:: with SMTP id l64mr6436938qkf.271.1592623828585;
        Fri, 19 Jun 2020 20:30:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:cd07:: with SMTP id b7ls2582411qvm.10.gmail; Fri, 19 Jun
 2020 20:30:28 -0700 (PDT)
X-Received: by 2002:a0c:a9db:: with SMTP id c27mr161098qvb.204.1592623828290;
        Fri, 19 Jun 2020 20:30:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592623828; cv=none;
        d=google.com; s=arc-20160816;
        b=bLl5sTNjN6Ug20YN/ZpJfcwwlxy7It4Ook0TaUVTfs3DFtmBLXhtH0K8t5vi242NKb
         CXq7bjQq8xXPHSRI7emVnojGp776HYrd0JiJB1P3UgjQu+9kXoNA0mNLYG8lNW9BNR/G
         GNxDgtTMimW5FsSFTvkx9xcT5gyQf25Y3u/YUwvL/Cisup6GELm1s2cv+nmJZuGiOTC4
         R1OzQIVhfwCSqqywunmOWEwLdsBKNrF0k55baNtd3T0TnoKqfDxIdoUOYyR9XHpqD2gl
         BrVA/W+9eweFpRb6y1ZBq5nTdPxjkrBLvDvKq4sFpF5drCRW1tVU9+WWEtQr8QluBq+b
         sKlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=dfh/vw+ddjlYh9CDRFRkQhWgDe6VpIaXph6iMJk9GA8=;
        b=ftUTrTPR4cVShCq0SxmD2Eh31jeGg4IpdSW0mtPnLXNPZ672DTFO74d8zjWsOFdHoN
         3zPs10T7qt8c28vkumkNtZsF1zM7nu/2G3c4WuB8O/hmpzO74j7JQ4HbK8ybulyC38d9
         hbIzaxvo+BOGoR7S9MP/mcnhnwidCSuC1h4AMiWp2mi96B4lklCf7vYe2cD8jKc7UEvX
         YN2EfHyiMNeGro+awxon5cYEWzZ49jdAysOJvqcpPYwJPheKDnPfoEwqY7+PxIX2PAMG
         JFtabD1n+DeiCmS4KleW0HYXIM8GBEzIdr12RP+bacu5h2S4Gfruqh1pKjM5yj0FXlUY
         PIOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=MihGMYKd;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id x78si383197qka.4.2020.06.19.20.30.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Jun 2020 20:30:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id 10so5373000pfx.8
        for <clang-built-linux@googlegroups.com>; Fri, 19 Jun 2020 20:30:28 -0700 (PDT)
X-Received: by 2002:aa7:9569:: with SMTP id x9mr10876864pfq.308.1592623827680;
        Fri, 19 Jun 2020 20:30:27 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id i63sm6601330pje.34.2020.06.19.20.30.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jun 2020 20:30:26 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
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
Subject: [PATCH v2 14/16] checkpatch: Remove awareness of uninitialized_var() macro
Date: Fri, 19 Jun 2020 20:30:04 -0700
Message-Id: <20200620033007.1444705-14-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200620033007.1444705-1-keescook@chromium.org>
References: <20200620033007.1444705-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=MihGMYKd;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442
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
(or can in the future), and suppresses unrelated compiler warnings
(e.g. "unused variable"). If the compiler thinks it is uninitialized,
either simply initialize the variable or make compiler changes.

In preparation for removing[2] the[3] macro[4], partially revert
commit 16b7f3c89907 ("checkpatch: avoid warning about uninitialized_var()")
and remove all remaining mentions of uninitialized_var().

[1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
[2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
[3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
[4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 scripts/checkpatch.pl | 16 +++++-----------
 1 file changed, 5 insertions(+), 11 deletions(-)

diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
index 4c820607540b..60b737e222fe 100755
--- a/scripts/checkpatch.pl
+++ b/scripts/checkpatch.pl
@@ -840,7 +840,6 @@ our $FuncArg = qr{$Typecast{0,1}($LvalOrFunc|$Constant|$String)};
 our $declaration_macros = qr{(?x:
 	(?:$Storage\s+)?(?:[A-Z_][A-Z0-9]*_){0,2}(?:DEFINE|DECLARE)(?:_[A-Z0-9]+){1,6}\s*\(|
 	(?:$Storage\s+)?[HLP]?LIST_HEAD\s*\(|
-	(?:$Storage\s+)?${Type}\s+uninitialized_var\s*\(|
 	(?:SKCIPHER_REQUEST|SHASH_DESC|AHASH_REQUEST)_ON_STACK\s*\(
 )};
 
@@ -6330,8 +6329,7 @@ sub process {
 			if (defined $cond) {
 				substr($s, 0, length($cond), '');
 			}
-			if ($s =~ /^\s*;/ &&
-			    $function_name ne 'uninitialized_var')
+			if ($s =~ /^\s*;/)
 			{
 				WARN("AVOID_EXTERNS",
 				     "externs should be avoided in .c files\n" .  $herecurr);
@@ -6350,17 +6348,13 @@ sub process {
 		}
 
 # check for function declarations that have arguments without identifier names
-# while avoiding uninitialized_var(x)
 		if (defined $stat &&
-		    $stat =~ /^.\s*(?:extern\s+)?$Type\s*(?:($Ident)|\(\s*\*\s*$Ident\s*\))\s*\(\s*([^{]+)\s*\)\s*;/s &&
-		    (!defined($1) ||
-		     (defined($1) && $1 ne "uninitialized_var")) &&
-		     $2 ne "void") {
-			my $args = trim($2);
+		    $stat =~ /^.\s*(?:extern\s+)?$Type\s*(?:$Ident|\(\s*\*\s*$Ident\s*\))\s*\(\s*([^{]+)\s*\)\s*;/s &&
+		    $1 ne "void") {
+			my $args = trim($1);
 			while ($args =~ m/\s*($Type\s*(?:$Ident|\(\s*\*\s*$Ident?\s*\)\s*$balanced_parens)?)/g) {
 				my $arg = trim($1);
-				if ($arg =~ /^$Type$/ &&
-					$arg !~ /enum\s+$Ident$/) {
+				if ($arg =~ /^$Type$/ && $arg !~ /enum\s+$Ident$/) {
 					WARN("FUNCTION_ARGUMENTS",
 					     "function definition argument '$arg' should also have an identifier name\n" . $herecurr);
 				}
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200620033007.1444705-14-keescook%40chromium.org.
