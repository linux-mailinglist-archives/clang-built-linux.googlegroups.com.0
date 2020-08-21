Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBUNUQD5AKGQEQE2PQVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 28B4724E049
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 21:02:43 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id a14sf3028468ybm.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 12:02:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598036562; cv=pass;
        d=google.com; s=arc-20160816;
        b=eTNxoqQqkv02Q8ZMeOMUclJlOLhfqytaIavhVlsKsnkGaCFef4LpnQz7Q/x/7YwJ3a
         D+XVwCfDkQf1Rz8RWL+a9cVxKWCbRreuU+3ir3mvvZg846X4maYpIpTcYYWHdoPmxBnY
         pv44yR5eBX0rc0YkgTk6gPspXnoqxvE0pHT1NFswZF7dOtcVKDirmbGltDJzN9kkjLtw
         Yvry23vNkLBMmu2fl69IVHAHOdAaZYR3f0KhspHz7azehiQYnjlmoFHMGCuOsncWkg51
         Tg+V1SgS14/elKZUOrbvl8uPdte7bnkmIQtA+820Q1TJzvn1INozJNF+qpsq66PqvpMH
         zxRA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=1RhpMzjnpYJGq37YSCPsAtzJN3pXFn85oSLWHa+sv58=;
        b=CB1u4Bh//3f/MI24lc9f6xo4u2UwGlR7haoKdsDyJbJlwSnJYBpejQojqte9ZapfGz
         T3wYdANlr9KeFlxJmHxwZA0d8qsDVeN0Z3Jdcj7ghfi/5oUrJX4+Ou+jkox5cCrXpBdT
         379I33ZhBuD3J0Q4j8I3nB/zZaOxvOo2tUEzPQQhBh0WZISNLL01HIigE1uUXuZVeteY
         pld1BfTad17hjxru4WCaiOVDm5GPOak89sintwdB0ThgC1aopYnIlXuqLDv55aNwEum+
         nb4Ch3yOTOmyhRYJxWtnI6iQe726Yp4JNx5NuGh8EzCmpfjvO7orCz9tir/AeKpnh8cg
         iQvQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="NCiA6t/J";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1RhpMzjnpYJGq37YSCPsAtzJN3pXFn85oSLWHa+sv58=;
        b=FLwlqmpkFnIj4DheM5SGIRI0aJRGKOlZjNF2i14BSOlkhfqN9M+3Dz9wkpAgu740WW
         DYz+aIrLfYQ1IjlDfe2KFS0Mtn+PnHWl+pnAAbH1T3ehj88u9OfFmvsMUhrgVTzxHW70
         jdwKBUqHso/1e7TDic3irgnoW5Bxt8ffuuxEtob0X8NP1v1F9C/w96KKIh1qKrpEB4vS
         BpmfTeBieM6xw7s8FF9Ju47nttn6Pv2SOQ6Cat3gx0PWEfoTKDtyNRfJA43eVA/eK18N
         kzvXbAo1MqmRoR3/JOQBlIKHmQs6kZms8uYJdlEd43LAN9mINL5oKiYLILtwMNcOrXD2
         Yt4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1RhpMzjnpYJGq37YSCPsAtzJN3pXFn85oSLWHa+sv58=;
        b=kFLLSJbUxYwiH/u238TJmdazUK33lWxCF5uT5znWpSvCIbv1KtnmKKpdustS1KOd0f
         SHnuRC6T8P0iPg0VRS4T1iA4AD+tn8OjZhZ0x3F4R4Lu/J4yVUUjOofx/RH7PI6MsdAs
         sIq69SsRFtnEKBMXmf+i/g4iUBgUwqEVQJBacaYwl1MTwiSGuJhTd1DShqbUW/jp7Gd6
         AOeimfAlOfEd8gP0Bwmk4y+tQw6dBr7RSq44xCAV7IGe6QAJzhHg4rcH2gPTo3qpr9cv
         56hSNuDt2WCcO9Nqr8N/UwWTp40y1ZPiHoQC6KAXk+uVN7YUllpwNuXAQfDLKNSKSh3S
         w9+g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531UVa9ppZaCueMx2+IiQ5mhFnV8+fSf09OQlsXLm7ezNmAVunLQ
	GCdDgEscEM9aWUt4pFdWP3U=
X-Google-Smtp-Source: ABdhPJxdbb3ewmgZq3DGjEkcDP7lMC8YR6ifAiEeN8UPqSQ/EyV30IzRmmqMmLVosFMXdD3U0xNSmg==
X-Received: by 2002:a25:c547:: with SMTP id v68mr6004486ybe.31.1598036562032;
        Fri, 21 Aug 2020 12:02:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:40c:: with SMTP id 12ls1175036ybe.7.gmail; Fri, 21 Aug
 2020 12:02:41 -0700 (PDT)
X-Received: by 2002:a25:880e:: with SMTP id c14mr5748428ybl.181.1598036561633;
        Fri, 21 Aug 2020 12:02:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598036561; cv=none;
        d=google.com; s=arc-20160816;
        b=1AXklxxAKyNTHekxHwzLlXnO6kKljSoryBtE/TA2YIomeG42kvbWUPuO1W995UGZ4Q
         Rg/diSbwDSKlTOm4ZlzhRLxYMzV0nPAIXzr/qkRYV8sc67Mh22awIIipd6sP2RqEhR7Y
         Et5M3+hJAhw9NJ2QFgs9g3MLbmJ4gOggDFKdk3XdVYVRhI4H+ImmN8AsG+lnRaMSsDJl
         /ERBZQo7EFPto5IT+AGnfJpXaWcMNegDfS1RHvLld8dJUk0MAZFupMFBVbwREuwTcuJs
         doT1c286kaJr3BqU7eGCUvTGB2c0eTqbgLYp5gm3VM0Xpe7tHlRUha+LTYMfd3rReCzP
         ma0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=8cSRIBoO/zleevMu8zzDy06lPzwCJYJIGufBDcMF7kI=;
        b=hGN4a1yyb/UaiQwGlbVNb2YNjQiNn3aTk0Q+5jRAKU8TioC5BbRH5Ca+lnwfbsU4YY
         SSJJqqaqSJPy8b87yxhUyvtZuzVTHZvjapGhKD6rl8cX1DNsZ8WXcmg5MIMAgP32EiyL
         GQN9g6lcuMX0P5zonj/truODfyxgiVh0aCsbJ4anA3qvdn8avAEKn6rG0VcGoMotS+s/
         MWLVsKMOSmRWpQpnTaGic2Dmbm4dBvC8JK4Ssey6fCoXW4rI2ZbIoDkRsP1q9mu23jaO
         lHVyMwnbnoxddtj6yyuZtouuJ1US4h15IQ6vouDZcbO+/Yku6C2PTrxLsLHctUl6+owA
         AvaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="NCiA6t/J";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id y18si197663ybk.3.2020.08.21.12.02.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 21 Aug 2020 12:02:41 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from oscar.flets-west.jp (softbank126090211135.bbtec.net [126.90.211.135]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 07LJ23eU027595;
	Sat, 22 Aug 2020 04:02:05 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 07LJ23eU027595
X-Nifty-SrcIP: [126.90.211.135]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Nathan Huckleberry <nhuck@google.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Tom Roeder <tmroeder@google.com>, clang-built-linux@googlegroups.com,
        Masahiro Yamada <masahiroy@kernel.org>, linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/9] gen_compile_commands: use choices for --log_levels option
Date: Sat, 22 Aug 2020 04:01:52 +0900
Message-Id: <20200821190159.1033740-3-masahiroy@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200821190159.1033740-1-masahiroy@kernel.org>
References: <20200821190159.1033740-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b="NCiA6t/J";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org
 does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

Use 'choices' instead of the own code to check if the given parameter
is valid.

I also simplified the help message because, with 'choices', --help
shows the list of valid parameters:

  --log_level {DEBUG,INFO,WARNING,ERROR,CRITICAL}

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

Changes in v2:
  - New patch

 scripts/gen_compile_commands.py | 14 ++++----------
 1 file changed, 4 insertions(+), 10 deletions(-)

diff --git a/scripts/gen_compile_commands.py b/scripts/gen_compile_commands.py
index 1bcf33a93cb9..535248cf2d7e 100755
--- a/scripts/gen_compile_commands.py
+++ b/scripts/gen_compile_commands.py
@@ -45,24 +45,18 @@ def parse_arguments():
                    'compile_commands.json in the search directory)')
     parser.add_argument('-o', '--output', type=str, help=output_help)
 
-    log_level_help = ('The level of log messages to produce (one of ' +
-                      ', '.join(_VALID_LOG_LEVELS) + '; defaults to ' +
+    log_level_help = ('the level of log messages to produce (defaults to ' +
                       _DEFAULT_LOG_LEVEL + ')')
-    parser.add_argument(
-        '--log_level', type=str, default=_DEFAULT_LOG_LEVEL,
-        help=log_level_help)
+    parser.add_argument('--log_level', choices=_VALID_LOG_LEVELS,
+                        default=_DEFAULT_LOG_LEVEL, help=log_level_help)
 
     args = parser.parse_args()
 
-    log_level = args.log_level
-    if log_level not in _VALID_LOG_LEVELS:
-        raise ValueError('%s is not a valid log level' % log_level)
-
     directory = args.directory or os.getcwd()
     output = args.output or os.path.join(directory, _DEFAULT_OUTPUT)
     directory = os.path.abspath(directory)
 
-    return log_level, directory, output
+    return args.log_level, directory, output
 
 
 def process_line(root_directory, file_directory, command_prefix, relative_path):
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200821190159.1033740-3-masahiroy%40kernel.org.
