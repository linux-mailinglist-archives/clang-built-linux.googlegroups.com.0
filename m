Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBOXEQT5AKGQE4XOY7LA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id 744D424E806
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 16:57:00 +0200 (CEST)
Received: by mail-qv1-xf39.google.com with SMTP id y30sf3245442qvy.9
        for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 07:57:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598108219; cv=pass;
        d=google.com; s=arc-20160816;
        b=S71E8amvGWCCbz6NSUPKsi77/d0pOKs6FULyUVHkVYXeQR3rrXZhhHuMJsscZmQfjM
         bi4WfnGw1WLyDYjG4Dq1rhFN0ZRwxTY0JnbehuGc/dONj2m4BxRi/gsOO1JB18JVSw+v
         HGxqV+oE2TvSK7aC5bTcP2kJ60PwU26XIRS7o10dgulDj5ChtI4KpJPEl6Plwg0b+uXA
         I7k8nTPa4N4ahWGFVV92dALtA5QxPNUNWBYAsCxQaSoykIHSv+KhywuO31KShAnlByZe
         O4dD8fUC9ljcopFAaCWsnsnlDDIDriIf9uMRXVkLzv00LvERWGo8IuGUlm6PGkaK8XNj
         F44w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=H2LDG9l/EtxviaLxDEkiT1OdlLHzClOXVhWn2IHBqpQ=;
        b=0SlXO0vCHNY9DY9KZfcuNWKtR/B7KwjqRSzIr9Fm54e2E1CPqpMXX0eIdqRn7vdY/6
         GpqOQkHNM4s0V8P2hUKf1dk7TBRI2tcsjTKJE95b1Hr8YbCmqUEXdfWEMsmhNBoimeSH
         xjtBgeN+frEByAltouzi49dgJ1xcMXgOBMUsxDMcxkrF2i57GhMiyOjCgD/uC324OTXr
         t0mMYpiK0aYXEQkmirRV8ijv1B96wmXZQ7EtB3ufg3DnUNO/Ha4BBuIY5eEsBghkHxDr
         XyHC5Bh8wFvlIABAKV5INTHO0XIJD1b4wEIcfo3hJS3nJXbGR6Zxkh+zRy8naWScc+c4
         CLFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=vVURP5tF;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=H2LDG9l/EtxviaLxDEkiT1OdlLHzClOXVhWn2IHBqpQ=;
        b=VDXeBHXT64b2zWK5P8vqOYX3Vf/vRpKjQ6iW0OBPJz7C1PicyrdNZLhlwzT4Ba+mrH
         5zL1uWIagFHQLzjIYabYP4ruRoeSjOIjL83ndzFneQ8ZPlxDOudP7pfqGHfcJTJuInVt
         0fDdXVQD2Ie1iDtTzEfTN9rZS8HnrcKrT6VWV9PNwi5YGOkJP8uQGgMVKDt8/+YFeB1o
         iPJDV/s5F9/0qOF+u9ixJzmN89sp3xNcR8OHC5SshyhuB3SX3TArdcBPwXBAlwwiG5Ln
         umCTZYRz78FMQnj+JRuy8S3m/SrnJae11nh1WfN40zZfNtzgGDeYZA0rWy7v+aIsMsNM
         kMXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H2LDG9l/EtxviaLxDEkiT1OdlLHzClOXVhWn2IHBqpQ=;
        b=UMYhn+u0mSWNgz4nJ8z2w3/3DkPu22QiJy8GU5+cU27ltoAXemU3iCrswnGuMq48RL
         lTQLRku+YNDTnjlLbkaqIULNFAKJu2bF+EnPRIpw3niZBQ+CEaZA1NLw+Wi2J6NB4/we
         Mo8MU8ENQb5C4Ccu26TOeUKHI9ATrgnYYho6FOsA8DnuseQQYxs8K4vUSEIRSQaCoCh6
         SMRtm9NX4Kr6HMtSiVoyGMUpYXVgfX9qM0hhT6bXOE7FfVJVYEzg6mXdtq1kVU51MH1z
         V5jRI1jI4M2Lkqal24mrieJa9aTDLjo2YMtwWQUtO1z7UTXwoz/N4MR9Fu7GltaXkr+7
         bO2A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533La/6aQK6N6PIG5aF7IauF8EPi2ruHhYPmCmi7H+u+/XlZprg0
	Q44tvr3UX/3JTh9CQ03Chf0=
X-Google-Smtp-Source: ABdhPJzdRSxTIeixqEP9RIf1kUpu0SJ635LAOMvp1pprg9V7X2XwncvwNcTtgoeGSSVtpY69iYrwPQ==
X-Received: by 2002:aed:3361:: with SMTP id u88mr7146955qtd.79.1598108219015;
        Sat, 22 Aug 2020 07:56:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:22ca:: with SMTP id g10ls2069256qta.3.gmail; Sat, 22 Aug
 2020 07:56:58 -0700 (PDT)
X-Received: by 2002:ac8:318e:: with SMTP id h14mr7412760qte.245.1598108218631;
        Sat, 22 Aug 2020 07:56:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598108218; cv=none;
        d=google.com; s=arc-20160816;
        b=Jk9QwJD2hgVweVPb+H7bZUdI0RXhs6V+AySUmq4agsBfX+XcF3s2rJJ7URsY741qiD
         sfZrd/j+3VrGyr5FU6EWyaeY5KyUQZLGDUkHvx7YTIRWcdlNresvq+CdRSHI3BhJhjQi
         nLhTXQ1jcxGMLbgi1yAJVfF+mvcB0lv6u2miGurtDzy+YBYzQFZrlXqNOEHg8QP5N3Sp
         XBhDRbnteurXYpyJje1FNaUa8J1vL01BbLooQDN4GypZCdXhRUhbIvy3wzQ6ybWSing/
         Ib/6v3sxKWpAOcnv2fWP15kl6DlAw0JgTm0CfM3ZdlI8xexYhAIQlyl1+/JabKQHp1iB
         dNqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=kQajBz1G8qgjw+0MUJ0nLzYzwlOyQl9s1CrXywysVeA=;
        b=TGEQWaJ8aMwvK2tWerWiC7D6267til+uWFhmSKYE6+iMvPUX5JRqD43eObD6RKozcK
         K6FjzOl+x11o1fhO9JHC+tmFnIivtJUacvaQeBV58ZubpqkonSKXkD3OIZGC0LHDIFjJ
         JKU1XP9dc1urc/3SSF8OcLfwqzehtzR0HwDDQK43uXJdThc1n9CNy2HCtn7Obnndi+JA
         i8dKvzfhgbvl6Y4hki6Uu6/rGXGY85mjzSXXa2jwvsxApi7MPChxHCYXbp0TaXfBzUNG
         ezpG6SKtAT0gnm3BIy08LQ3OjIqy/i8UDhUQWVAo042w6EsLxFhNo+IcgyId2okmDUpw
         tP3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=vVURP5tF;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id b1si260638qto.3.2020.08.22.07.56.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 22 Aug 2020 07:56:58 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from oscar.flets-west.jp (softbank126090211135.bbtec.net [126.90.211.135]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 07MEuKVU025434;
	Sat, 22 Aug 2020 23:56:24 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 07MEuKVU025434
X-Nifty-SrcIP: [126.90.211.135]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Nathan Huckleberry <nhuck@google.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Tom Roeder <tmroeder@google.com>, clang-built-linux@googlegroups.com,
        Masahiro Yamada <masahiroy@kernel.org>, linux-kernel@vger.kernel.org
Subject: [PATCH v3 05/10] gen_compile_commands: make -o option independent of -d option
Date: Sat, 22 Aug 2020 23:56:13 +0900
Message-Id: <20200822145618.1222514-6-masahiroy@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200822145618.1222514-1-masahiroy@kernel.org>
References: <20200822145618.1222514-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=vVURP5tF;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

Change the -o option independent of the -d option, which is I think
clearer behavior. Some people may like to use -d to specify a separate
output directory, but still output the compile_commands.py in the
source directory (unless the source tree is read-only) because it is
the default location Clang Tools search for the compilation database.

Also, move the default parameter to the default= argument of the
.add_argument().

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
---

(no changes since v2)

Changes in v2:
  - New patch

 scripts/gen_compile_commands.py | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/scripts/gen_compile_commands.py b/scripts/gen_compile_commands.py
index f37c1dac8db4..71a0630ae188 100755
--- a/scripts/gen_compile_commands.py
+++ b/scripts/gen_compile_commands.py
@@ -39,11 +39,13 @@ def parse_arguments():
 
     directory_help = ('specify the output directory used for the kernel build '
                       '(defaults to the working directory)')
-    parser.add_argument('-d', '--directory', type=str, help=directory_help)
+    parser.add_argument('-d', '--directory', type=str, default='.',
+                        help=directory_help)
 
-    output_help = ('The location to write compile_commands.json (defaults to '
-                   'compile_commands.json in the search directory)')
-    parser.add_argument('-o', '--output', type=str, help=output_help)
+    output_help = ('path to the output command database (defaults to ' +
+                   _DEFAULT_OUTPUT + ')')
+    parser.add_argument('-o', '--output', type=str, default=_DEFAULT_OUTPUT,
+                        help=output_help)
 
     log_level_help = ('the level of log messages to produce (defaults to ' +
                       _DEFAULT_LOG_LEVEL + ')')
@@ -52,11 +54,9 @@ def parse_arguments():
 
     args = parser.parse_args()
 
-    directory = args.directory or os.getcwd()
-    output = args.output or os.path.join(directory, _DEFAULT_OUTPUT)
-    directory = os.path.abspath(directory)
-
-    return args.log_level, directory, output
+    return (args.log_level,
+            os.path.abspath(args.directory),
+            args.output)
 
 
 def process_line(root_directory, command_prefix, file_path):
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200822145618.1222514-6-masahiroy%40kernel.org.
