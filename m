Return-Path: <clang-built-linux+bncBDY3NC743AGBBCGDQ36QKGQEK7NUVLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id F010C2A4ED9
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Nov 2020 19:29:29 +0100 (CET)
Received: by mail-qk1-x73b.google.com with SMTP id t70sf11186195qka.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Nov 2020 10:29:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604428168; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vv1JYbsmR/+kzJydZzrJw/3QaoaowwR2eteELVXpg6SUXzn/9Yiy3aom4Tl92jGCXG
         zAaryiKd/5IgA+UBKAc3Y9FcioLvW6Kd1fS13kJzvpRdqKhUXwxnmdYGiCn5WNCpsSq+
         mR6Tro5Oqq7J9XC5Za77sG1nZ1ystWgU3zRXD8mXL5GqCpRMn0FeeU20or5vaWUAoGst
         CVLc+gJWKNcFmEm81bUkQmYfDnhoX/xBQ2JzhhVnLUsEgdL3YxrvjzKMz3mgHFE6QJoy
         seYdJcW5zZOENdAehH/V9tlKvahWxTNNkR3PWdEYoNrVHTLZLoL9emBBYZGjQp+QJDLg
         EG5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:date:cc:to
         :from:subject:message-id:sender:dkim-signature;
        bh=PiHspvuEJI3hlLI8O7ogpnHm1BJZ5lXFbeaM8fWrQcU=;
        b=Wi8vohX6jgbh7r43+UXi4mGIIWoMJYz5jMHA9MlVvzToN/5vnPlG+SsUDWxRdbo9Di
         7ib1j//6c67MntBlIC9p0xNlTWHM7S0xAxAW+RHeYLhIumaW83touo8M6nWHlGImPW7m
         UH85GqyjhSpQygRQLEAuIKlALLzrP3hQTKtBRQPWN8tsM3cvRu/1qOmTJhFAqHajvDNV
         yG4t9D9HaKxTAFVWFJv/rc++ZK9BsgRRJ5Soabsv32z44Vd/5qphZQjVuKbQoU5Osa3B
         dPo2YjTvTTYlFeM8k5DN8Lw2KnxTxYAL67Pdoo1rIwws7sPuU32ea3p5rRgEIqZnOz0z
         ZiuQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.220 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PiHspvuEJI3hlLI8O7ogpnHm1BJZ5lXFbeaM8fWrQcU=;
        b=F/de8DniAWp7PdSDcytX+1VtKVPWvkbk5WLfqk0vYSuUyOnPyRY/S67zYg+gVyyzPN
         T8KucyCyCUjZrXx9i3F1XtynJWYzHGX5Wmlj0C8mG1TmB+Ig5oRo99lNpgLWkJ+Oqtib
         hj8GSMuyeQyOHvFcEs79KaEACKLDjlzcL4/4RQyQq09/aoap1yXkbNSJHhQbktc1SYOo
         N06DgTkasUUdVAB8DqSRAhzKZrUSzOx/EdiK4jVUyuVKNVZXBBzm9X9YpzNE21bLO6Kc
         9LBsd7Qa2Bl2+RyR0XQa+L0DAj/SnxBKgx5g7YmQ0irKZ326dTQRRbHKMQoaAcYHwIix
         R/Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PiHspvuEJI3hlLI8O7ogpnHm1BJZ5lXFbeaM8fWrQcU=;
        b=rqfIrum0jpA0Gm/rM6UalSrRkvs1UfDt34uZPX6iRfr51AbMEKoR3bdeUHkUR7Y21x
         KcEvCvvaMSxopJxwCSwLGi7VTJbCrKFd8b47mjq7EoGYBMJOdbFTfZRxlGNWEphrx5Tm
         iUQPOm0L3y8v24pjZOC6Fes6B/lJ53B+C9IlLB3C6ljd+Qjqh/ynrfqo0tvRJUz9AVNv
         XVhVasyk4dHjrvFsqa6X+N5+87/6h4LqhI80zGi49ww0FwzaXWEekkveRV5P/lNd3g8x
         I04m0zr5mXqkmL1SZbjOh7xvUrXGSrY+GpZLGkyrmlmECjRAy2wfCpBucHtYkUKSVSCd
         MKQQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532zo1FcpRqkYs1whYehZ2TEc7jx+Za1chsFRixMWNTSWCTH+Iup
	UMVvzAn3gHEhgL2coIK3NQY=
X-Google-Smtp-Source: ABdhPJwYioTfJEEg85z+N4P5fD/jDYryIVfOvxDR3f9kKDxGwOW4y1svYMYz6RVMk2yW68mNcL9uWw==
X-Received: by 2002:a0c:99e6:: with SMTP id y38mr12445502qve.28.1604428168642;
        Tue, 03 Nov 2020 10:29:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:8744:: with SMTP id j65ls1336348qkd.1.gmail; Tue, 03 Nov
 2020 10:29:28 -0800 (PST)
X-Received: by 2002:a05:620a:14b5:: with SMTP id x21mr21895985qkj.300.1604428168124;
        Tue, 03 Nov 2020 10:29:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604428168; cv=none;
        d=google.com; s=arc-20160816;
        b=Mg4ItXGSU9NoGCySX84LdWFPC4e7kjEL8CfaN/n06B8RX81w3ykYVedpqwHVDLjxMb
         Tq991FvOxf7rPlzGa0aR1s/u0TSzpRxaP9WJqC/g9kDY+BXEcT7nKckn/4CaquxhI6Z0
         qd+RP0m2e4L+k6Zjmxz57klQDJLZKnn8d9quZ2XcVNsnhcfY1XFiBYY+b5fKOUIDhOU5
         ln5rtfwOMPwOAwk3oB10SXwqB2eF/XeTSD/bd/MXtYyPso0ykd3mCEdVbk/RU+/tGf6+
         Z+nKJLQbpDsuTtC4JliraFBcjNgN/R8GfXv0KgFiZLg/17a+lq4UiIYHSxuu3seGbD2N
         E3/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:date:cc:to:from
         :subject:message-id;
        bh=SBP+WpAMLarv6O3qCq62UPCJfEmwbemmQZaYtHZFqME=;
        b=DyR9ZgJH2eZfDxyux5vYRQAd7STUXOudfqWZ9RUUTwGAviYZYj1t8xJAcPrKUTzmU8
         BRncxw4SnhwGjD3zNSwMy8fBpJqaApnXPW+SJkT9qsPTktDPOA6dr+hLD752ImAMjpbL
         Xg8OY51P3sc6ZqWfKrTcJPunQY9aDKnjhNcszS0XcHzk4Wb6hC3toeZCiiVjirIpyU1E
         Ocoby8KX0rxS9pRQ9k1MZp8BOMVeWFX9anFiQ1xwJsnF1R5PnvYD12gZE6SY3TmNBs3n
         qFi6Jq16s9idEroIMNRrO923Pj7uCFEJr5jxY2L/ZQZmZ3oekgGw7Q+ad+t54f6Yqvg4
         X43w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.220 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0220.hostedemail.com. [216.40.44.220])
        by gmr-mx.google.com with ESMTPS id m21si186181qkn.6.2020.11.03.10.29.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Nov 2020 10:29:28 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.220 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.220;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay05.hostedemail.com (Postfix) with ESMTP id 35BDC1802913A;
	Tue,  3 Nov 2020 18:29:27 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:69:355:379:800:960:973:982:988:989:1260:1277:1311:1313:1314:1345:1437:1515:1516:1518:1535:1544:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:2892:3138:3139:3140:3141:3142:3355:3865:3867:3870:3871:3872:3874:4321:5007:6120:7875:8957:9163:10004:10848:11026:11232:11658:11914:12043:12297:12438:12555:12679:12683:12760:13439:14096:14097:14110:14180:14181:14659:14721:21080:21394:21451:21627:21990:30054:30070:30075,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: anger96_1d006c4272ba
X-Filterd-Recvd-Size: 5155
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf08.hostedemail.com (Postfix) with ESMTPA;
	Tue,  3 Nov 2020 18:29:26 +0000 (UTC)
Message-ID: <363325b4a85f094ba9cf06301dd022912ec79d03.camel@perches.com>
Subject: [RFC PATCH] .clang-format: Remove conditional comments
From: Joe Perches <joe@perches.com>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: clang-built-linux@googlegroups.com, LKML <linux-kernel@vger.kernel.org>
Date: Tue, 03 Nov 2020 10:29:24 -0800
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.1-1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.220 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

Now that the clang minimum supported version is > 10.0, enable the
commented out conditional reformatting key:value lines in the file.

Signed-off-by: Joe Perches <joe@perches.com>
---

Hey Miguel.

I don't use this, but on its face it seems a reasonable change
if the commented out key:value lines are correct.

 .clang-format | 36 ++++++++++++++++++------------------
 1 file changed, 18 insertions(+), 18 deletions(-)

diff --git a/.clang-format b/.clang-format
index 10dc5a9a61b3..531b97501f14 100644
--- a/.clang-format
+++ b/.clang-format
@@ -1,6 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
 #
-# clang-format configuration file. Intended for clang-format >= 4.
+# clang-format configuration file. Intended for clang-format >= 10.
 #
 # For more information, see:
 #
@@ -13,7 +13,7 @@ AccessModifierOffset: -4
 AlignAfterOpenBracket: Align
 AlignConsecutiveAssignments: false
 AlignConsecutiveDeclarations: false
-#AlignEscapedNewlines: Left # Unknown to clang-format-4.0
+AlignEscapedNewlines: Left
 AlignOperands: true
 AlignTrailingComments: false
 AllowAllParametersOfDeclarationOnNextLine: false
@@ -37,24 +37,24 @@ BraceWrapping:
   AfterObjCDeclaration: false
   AfterStruct: false
   AfterUnion: false
-  #AfterExternBlock: false # Unknown to clang-format-5.0
+  AfterExternBlock: false
   BeforeCatch: false
   BeforeElse: false
   IndentBraces: false
-  #SplitEmptyFunction: true # Unknown to clang-format-4.0
-  #SplitEmptyRecord: true # Unknown to clang-format-4.0
-  #SplitEmptyNamespace: true # Unknown to clang-format-4.0
+  SplitEmptyFunction: true
+  SplitEmptyRecord: true
+  SplitEmptyNamespace: true
 BreakBeforeBinaryOperators: None
 BreakBeforeBraces: Custom
-#BreakBeforeInheritanceComma: false # Unknown to clang-format-4.0
+BreakBeforeInheritanceComma: false
 BreakBeforeTernaryOperators: false
 BreakConstructorInitializersBeforeComma: false
-#BreakConstructorInitializers: BeforeComma # Unknown to clang-format-4.0
+BreakConstructorInitializers: BeforeComma
 BreakAfterJavaFieldAnnotations: false
 BreakStringLiterals: false
 ColumnLimit: 80
 CommentPragmas: '^ IWYU pragma:'
-#CompactNamespaces: false # Unknown to clang-format-4.0
+CompactNamespaces: false
 ConstructorInitializerAllOnOneLineOrOnePerLine: false
 ConstructorInitializerIndentWidth: 8
 ContinuationIndentWidth: 8
@@ -62,7 +62,7 @@ Cpp11BracedListStyle: false
 DerivePointerAlignment: false
 DisableFormat: false
 ExperimentalAutoDetectBinPacking: false
-#FixNamespaceComments: false # Unknown to clang-format-4.0
+FixNamespaceComments: false
 
 # Taken from:
 #   git grep -h '^#define [^[:space:]]*for_each[^[:space:]]*(' include/ \
@@ -494,13 +494,13 @@ ForEachMacros:
   - 'xbc_node_for_each_key_value'
   - 'zorro_for_each_dev'
 
-#IncludeBlocks: Preserve # Unknown to clang-format-5.0
+IncludeBlocks: Preserve
 IncludeCategories:
   - Regex: '.*'
     Priority: 1
 IncludeIsMainRegex: '(Test)?$'
 IndentCaseLabels: false
-#IndentPPDirectives: None # Unknown to clang-format-5.0
+IndentPPDirectives: None
 IndentWidth: 8
 IndentWrappedFunctionNames: false
 JavaScriptQuotes: Leave
@@ -510,13 +510,13 @@ MacroBlockBegin: ''
 MacroBlockEnd: ''
 MaxEmptyLinesToKeep: 1
 NamespaceIndentation: None
-#ObjCBinPackProtocolList: Auto # Unknown to clang-format-5.0
+ObjCBinPackProtocolList: Auto
 ObjCBlockIndentWidth: 8
 ObjCSpaceAfterProperty: true
 ObjCSpaceBeforeProtocolList: true
 
 # Taken from git's rules
-#PenaltyBreakAssignment: 10 # Unknown to clang-format-4.0
+PenaltyBreakAssignment: 10
 PenaltyBreakBeforeFirstCallParameter: 30
 PenaltyBreakComment: 10
 PenaltyBreakFirstLessLess: 0
@@ -527,14 +527,14 @@ PenaltyReturnTypeOnItsOwnLine: 60
 PointerAlignment: Right
 ReflowComments: false
 SortIncludes: false
-#SortUsingDeclarations: false # Unknown to clang-format-4.0
+SortUsingDeclarations: false
 SpaceAfterCStyleCast: false
 SpaceAfterTemplateKeyword: true
 SpaceBeforeAssignmentOperators: true
-#SpaceBeforeCtorInitializerColon: true # Unknown to clang-format-5.0
-#SpaceBeforeInheritanceColon: true # Unknown to clang-format-5.0
+SpaceBeforeCtorInitializerColon: true
+SpaceBeforeInheritanceColon: true
 SpaceBeforeParens: ControlStatements
-#SpaceBeforeRangeBasedForLoopColon: true # Unknown to clang-format-5.0
+SpaceBeforeRangeBasedForLoopColon: true
 SpaceInEmptyParentheses: false
 SpacesBeforeTrailingComments: 1
 SpacesInAngles: false

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/363325b4a85f094ba9cf06301dd022912ec79d03.camel%40perches.com.
