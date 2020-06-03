Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBBHG4D3AKGQEE5YUYUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D47C1ED91F
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 01:32:21 +0200 (CEST)
Received: by mail-ua1-x93c.google.com with SMTP id f26sf1470069uao.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Jun 2020 16:32:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591227140; cv=pass;
        d=google.com; s=arc-20160816;
        b=yac6hPV7We2DkNfwAD/4wHMsf6/CV+Ikh/HMT9MIpWXUS13cNabJq0uVdewY1FHO/R
         +Q2UCEFyG4mnb3kIlYwnWAaa7PVg7c+Kt3+ojY4V4eSWIZ8/eny+G3BVAA+Bls2zx9pB
         pUe7Szeix46Sd1oEcy8U53B2PacV+lWjhHaXMb//SYWaKOojMcE29sZn9bdack/g3vh4
         Du9IjMhr1gY9YKX0LRs3QFG/RjFvhJNE/PFAQudcgSK+Y2OHrFpEVe5dKde4wvGrFTkf
         KvQnCh9VPs1e2dkedk0b/hqwAqBD8pvSaMvSm5QBULEUryAMRZE1Aug5Jz90LtP0QJ3g
         3LxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ILwZy5XGbtdkt9EtT8BriutRoGT389ZExZGu3dR9dHk=;
        b=t74gOe8g4pzN6SZVhXi4hCwnEIDmBzHmzw8ax5Uf+2YNwbCirzDJ0e83k1LgkPTY10
         GMSvYroDNfL/dMVG+fku/Q7K2QJe8nwo4Yuy7SgItswKbSeXOBmMlQ4/IiyRL+qFoAhL
         ZH6oAovKdOzp8y5cGCPYdtHqktyYowmwad6jfvU3kQwvdKMXojgnx7D4WtIrDffXsW6O
         vXW3CjA5hFHxMaimELirhovAjMNjoHP2sbUBiM3Z3hMy/6WSkdVysQ/NQ5iRzuBPmj5z
         SvEkMFJ1n85XFjWajIyRjruXC4BJWrBR/3lm8dOepMh+Unhq7E80vaIGapWipUbJjfxu
         NDrg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=fiQwobOm;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ILwZy5XGbtdkt9EtT8BriutRoGT389ZExZGu3dR9dHk=;
        b=I9LG+oYPpcezdezofdM7WCIyjX5/Plfa9lmwOMThuVgBUBviyuOb8KuKlEXhQ+Dg2q
         mTxCPP87U1v9f+WJxLZJlsSThCz73XhuEv0bP9fx6R0mWmhEb/TAyvBuXk2D4SZ+VFjK
         VfNaCbR6Huo2z//qRDkXveYFROPmL32JZdOFnacEddAnjL1oQ3FMkjGnSvQUuWzFEGW/
         coxb//3JLPQ6BQT5RTf7b6K+f20xXmIqxxlWzDToopQLpQLcrh8Dslici7FBQGF128+q
         omgYdfssi6AR1RznaUWiUe9tnziPXvWDTZcmXjWREV4MvtxyF73t7kIX9NnTULv7rWkC
         KWFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ILwZy5XGbtdkt9EtT8BriutRoGT389ZExZGu3dR9dHk=;
        b=RUg5sD6L0wYa+D2zqFHGneB/JlrsG2eD+33me38H32ptJy/ROS5rXHwBBg+fgnXI/j
         3HEPBfvUG3HX2a6IHSzzMjZ+HZ52IEa6qOb0QFv0NegXCkgh3P+0KL1XAIbDVnKsXiZM
         KeoqQ5p7NCf5nqJ2WtmnQ5p7/AqYU6ZXanr5LR6xkHflWjQ0Cp+vfRP5PEt0LXsQD6z8
         5Bk1sxDMnm4YxFBdWWyPRQ4VLwWYDaHWRps0kL1KMqe+AC5VDYLAmTptpGTEV7g4pB4b
         vjJrKcsYgrysWOBa32uZExiX60WQ/CRTmXschFxLtCLGljDLep5GCgrsRPI9nbjR6GBV
         vz3Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532XcPLmOb+PbOB6EUPxVk9j8qq/xjc5sUGjlUtyXerPtDuLWeoI
	8w2eGBBTsJByNn+4olcQWk4=
X-Google-Smtp-Source: ABdhPJwk1YBTpQjEv1dEt4bFsxcD7w6WxtcJxcc8Y6nH+H6yBq4AoSl/Zmeq+a51LxrScnOzgvTDRg==
X-Received: by 2002:ab0:2358:: with SMTP id h24mr1745182uao.82.1591227140372;
        Wed, 03 Jun 2020 16:32:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:6e8b:: with SMTP id b11ls360068uav.7.gmail; Wed, 03 Jun
 2020 16:32:20 -0700 (PDT)
X-Received: by 2002:a9f:3049:: with SMTP id i9mr1776588uab.113.1591227139935;
        Wed, 03 Jun 2020 16:32:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591227139; cv=none;
        d=google.com; s=arc-20160816;
        b=F1/5xQ8evo2EHvCxjnxQaABZWhQ87QAPwj+evDl7uHeXPS6PEGUT3GUmmS2F9BBeKl
         NkT/ajvzV6CJKL5tfXoDVeYGimKbNTf/PI+EH9ksJtkdRgPWv5xJ2KxKQizj31wxY4m0
         idRSlfhiX/8w/ak6kfHlOLwGP0ZP5NgAl2ccH5V6p3tAtlca1l91tqOuvZQbk1pYe34d
         mi1Ax59QRwQx3NvnAkh9qfeW+VxgZtTXfs8JlOqE1LB1ONzjl7PNj8EtSB1qj3cwvx5b
         +5/slqI+IRyecS3ksHSgXkGLL82OPjiMrhld+E+PmT7c63IIpV917tXB0/qhaNEDMI/V
         1PAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=OzsXBVjaZ9OyhsxAhNYMGGdoHV1Ey3EdXUcZrl9vzVM=;
        b=j9nxXXTvfwykbnG7yTl+3qHF+tXm2mJPb8Na1kYMo4ZwEm4+ES5YBttKOkaxY0MMhW
         hfuqo7RZkyDQO6KFlx+O2ING1UIlLCyzHa3aRqYfOBzH+LwC4wupjtLrPVoNuw2qEzaf
         qxJ+EcUzIqvg/Hug74xBfQWP22wRUHSJ2mYt3RGYsu9JB4TNU5KlgYNV8w/54kx0jGwQ
         Vie9jQ1dVd5T87xTNfBpNog59i/TWvatImBW/+PV/vwgVEptybrcO2XoPuBdNSYKpY8G
         IPh4KByr+ESk4SAoPWUAgQfc6u6LgH1sH1y+/h/Ypmb/R09mT64suNNuri8NgZEuzP8h
         5W1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=fiQwobOm;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id t9si197757vkb.1.2020.06.03.16.32.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jun 2020 16:32:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id z64so2504745pfb.1
        for <clang-built-linux@googlegroups.com>; Wed, 03 Jun 2020 16:32:19 -0700 (PDT)
X-Received: by 2002:a62:27c6:: with SMTP id n189mr1466796pfn.277.1591227139068;
        Wed, 03 Jun 2020 16:32:19 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id x1sm2647707pfn.76.2020.06.03.16.32.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2020 16:32:16 -0700 (PDT)
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
	linux-wireless@vger.kernel.org,
	linux-ide@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-spi@vger.kernel.org,
	linux-mm@kvack.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH 08/10] checkpatch: Remove awareness of uninitialized_var() macro
Date: Wed,  3 Jun 2020 16:32:01 -0700
Message-Id: <20200603233203.1695403-9-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200603233203.1695403-1-keescook@chromium.org>
References: <20200603233203.1695403-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=fiQwobOm;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443
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

In preparation for removing[2] the[3] macro[4], effectively revert
commit 16b7f3c89907 ("checkpatch: avoid warning about uninitialized_var()")
and remove all remaining mentions of uninitialized_var().

[1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
[2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
[3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
[4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 scripts/checkpatch.pl | 18 ++++++------------
 1 file changed, 6 insertions(+), 12 deletions(-)

diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
index b83be177edf0..e9f8146600d0 100755
--- a/scripts/checkpatch.pl
+++ b/scripts/checkpatch.pl
@@ -838,7 +838,6 @@ our $FuncArg = qr{$Typecast{0,1}($LvalOrFunc|$Constant|$String)};
 our $declaration_macros = qr{(?x:
 	(?:$Storage\s+)?(?:[A-Z_][A-Z0-9]*_){0,2}(?:DEFINE|DECLARE)(?:_[A-Z0-9]+){1,6}\s*\(|
 	(?:$Storage\s+)?[HLP]?LIST_HEAD\s*\(|
-	(?:$Storage\s+)?${Type}\s+uninitialized_var\s*\(|
 	(?:SKCIPHER_REQUEST|SHASH_DESC|AHASH_REQUEST)_ON_STACK\s*\(
 )};
 
@@ -4075,7 +4074,7 @@ sub process {
 		}
 
 # check for function declarations without arguments like "int foo()"
-		if ($line =~ /(\b$Type\s*$Ident)\s*\(\s*\)/) {
+		if ($line =~ /(\b$Type\s+$Ident)\s*\(\s*\)/) {
 			if (ERROR("FUNCTION_WITHOUT_ARGS",
 				  "Bad function definition - $1() should probably be $1(void)\n" . $herecurr) &&
 			    $fix) {
@@ -6271,8 +6270,7 @@ sub process {
 			if (defined $cond) {
 				substr($s, 0, length($cond), '');
 			}
-			if ($s =~ /^\s*;/ &&
-			    $function_name ne 'uninitialized_var')
+			if ($s =~ /^\s*;/)
 			{
 				WARN("AVOID_EXTERNS",
 				     "externs should be avoided in .c files\n" .  $herecurr);
@@ -6291,17 +6289,13 @@ sub process {
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200603233203.1695403-9-keescook%40chromium.org.
