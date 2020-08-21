Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBUFUQD5AKGQEYD3YC2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1118624E046
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 21:02:42 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id 130sf1502879pga.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 12:02:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598036560; cv=pass;
        d=google.com; s=arc-20160816;
        b=wS4NpG/ieTIvSrOphrL+jbZi1hL9Ik9gDW+M891gok+Q8e7V2D0faVfHSSjjSTKMF1
         L3DdFWORGqAyB1VSZQARbNy6iaj7kU9yHnY5wtjOG9OhvFpbE6PRL3YpENPXNnPuElvE
         g4NInlUpoYE3gEBLzgoHknSZfMbdJfsCY+ktr2MkA61ccuJDMA07jkgpSjphKwrZBvSe
         5tMrRcsJf5tnNuQ1Vp0eGp3PW3ytvIzxavBSChwaYbU+HEVvGCNADq5GWZYnCRakfcjw
         WZ6GAdCjXbiHwb4thisUmwe9W0p5qbohxaTbQCMNNsrxPJTJjRGZxSfwR8uI7mp8VRFU
         NxiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=gakCoZ8eflcnov+XZJyQIl4n2RwSThYy0dzsNEefkMM=;
        b=As3F3olsYGd8djVw1nefyIn8kTyeKcqH6iQ08zkM5frak/gevYqmaN+2b/Py1OjysM
         CNiOIbYsrUKY5/fSwH5YnkcLI9EyGFhXxW1FbCYQXQbvl75nkfdWSVdKq06ZIGBUFUxe
         X9/wu0QLol6ac4ZcMRLGGFSjHb309rpRevsQ6Dr06r3V0Wyr8gtfeyT7lV37nG7/SVM+
         hA6lI61cI+cNd1/kW+L5yBc8HkUOBfEW46/4hzeX8lHDPeWJfuVLEcpt8kNLj1pinvXG
         bOEMZ516m2bb+hLpL5o63/mBMalcIxwDEVmCJ1BO8M64fKkOR0m4qvmj9RuPUPxgLNaS
         XcIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="llJj/4JU";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gakCoZ8eflcnov+XZJyQIl4n2RwSThYy0dzsNEefkMM=;
        b=IHkY2JIFefEnQd2VMiE5zJOK2qbgvTUwj/voroufqFnRE+8txurFGbv86N4VpPpE+I
         MOoNtf3y+maLCuL3xdHuQJ3LZxsXAKwsViiQe8bCgl8Vt0Ifs++WLrRXVoDGPOz9N/o9
         j3F/kqYjKepS0/B9FwpCL1Kq7G9S6FL8MhEf+ISEdULOzQFwsQe951EmKtUCHyX3UWiG
         SuFaM7OS6xlLwADYb9Iue6VLOQmDbH8hEHgYSbMXHGcNBFD9UsJJcW9TuCzwIEkvNPKv
         Y0ja5uCicC6o7qwLJIlokyuF4OBP5fciLLwGJgTIxqeQtJUbLI9DGTqdZVwSbJRsvQXZ
         68iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gakCoZ8eflcnov+XZJyQIl4n2RwSThYy0dzsNEefkMM=;
        b=kO4ZikCOtSHU9OI35E3CXbvO0DVMxh7pW73Y2WIB58t+H1ZK4x2Z37VYMK2IV858nn
         CFcEQbSyGJYsXt1M+hjJEx33EuagHcGHv4oP1Ew0vrer6wLsouQztPDkZuhE0TLQFf/m
         fYwkD5UIzuUKQob5ZE1Ii/I+XxyLcgE/X0ABLXA6EnyG4wqgSxjlDNOcuFrlboNUNxnY
         rfzUNV6NisyLEu15ERnvsc1qbJecfHF96pAc/H88raNENjAlpZdlFkHjntPcIGGxQ6bU
         x3YetGrx4088dtZI1zXaa5ooqjgYrujidFtkmZuLp5a7oHkT3B91JkSUyv+N4fPKUKh4
         w2aA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531MU8F30h7Sd6aEWE9c6a/ytS2r1m6cQFZ3LDcNKeE2yXkEGyi1
	G6hBXvF72Sgq3Em+ntR7aeU=
X-Google-Smtp-Source: ABdhPJwOCQ0opgTVnur3wnazh6yrTdKEV8wU3eOwKom0f8WyzVf3URpCwNeePzjjWoYq/rDJDaLhZQ==
X-Received: by 2002:a17:90a:d504:: with SMTP id t4mr3611913pju.58.1598036560717;
        Fri, 21 Aug 2020 12:02:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:142:: with SMTP id 60ls1449324plb.9.gmail; Fri, 21
 Aug 2020 12:02:40 -0700 (PDT)
X-Received: by 2002:a17:902:bd45:: with SMTP id b5mr3485393plx.22.1598036560159;
        Fri, 21 Aug 2020 12:02:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598036560; cv=none;
        d=google.com; s=arc-20160816;
        b=iGsEX2mW1djBigLlgLOuE46mR2Pcnl278jPe2KglJgf1Mmbs9Z+2C8HUD2J/g+C56J
         ey/Ki5RWtC87xILc3He9YbqzTRj7BnNPUFUuvzlmwwah/mZ++fgLs4EnxFt0VJdI0vu+
         cyPhechldaSQMzM9YbaD9rFnvqmAFYahOVFATXVe7i7kKAld0IFXJEOFdbsHlbGg3AoY
         LXJF70uA4FE3BfWED+kvifvbPnZdaOChadj2LaaMyVQrRNDAONvi9ivqQcEtaBUNOiQI
         1XBUprj9Hr/SCxBi3sMsh5hDtWB16JW4HGDjedtoJV/gKpc+DKwSH3EIO4KLCQbfB2mu
         1M5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=mg0M4bAejUOuEVILMgIjbEef+kFqOFGf8lqJ8WZirB8=;
        b=ELS7tWqaSHOYxtYhYUowqAZoSNC72Y3guSFIY+S8BPUEGUROZjfCbLHWYtpn3bgBba
         k++0MXD4xiPqRiIpBdoPOCilK48Ofdy/ReiTC/jmAk/q1aViT0xhgtwgSHTByKQzdoq8
         crN2jGoHWcMejueTKXWp0+JZxdVYktgNu+hJyTRc4/COPFkq34Q5s8NuVpoWGV5la1Pc
         OyvSIM4WwWsf4gtXRjrHmQGwMdcPmPpQZAQQJl2yl5kWtUVuE/kMUOPLAD0qH/D6ggFx
         y6QnVUYwfGYZ0QXdEgF9ubrv574Tj6wzvvn+fEmn9UegXrD9gP6/8SbAkx3EiDz23T5V
         XmiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="llJj/4JU";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id t13si164988plr.0.2020.08.21.12.02.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 21 Aug 2020 12:02:40 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from oscar.flets-west.jp (softbank126090211135.bbtec.net [126.90.211.135]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 07LJ23eW027595;
	Sat, 22 Aug 2020 04:02:07 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 07LJ23eW027595
X-Nifty-SrcIP: [126.90.211.135]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Nathan Huckleberry <nhuck@google.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Tom Roeder <tmroeder@google.com>, clang-built-linux@googlegroups.com,
        Masahiro Yamada <masahiroy@kernel.org>, linux-kernel@vger.kernel.org
Subject: [PATCH v2 4/9] gen_compile_commands: reword the help message of -d option
Date: Sat, 22 Aug 2020 04:01:54 +0900
Message-Id: <20200821190159.1033740-5-masahiroy@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200821190159.1033740-1-masahiroy@kernel.org>
References: <20200821190159.1033740-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b="llJj/4JU";
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

I think the help message of the -d option is somewhat misleading.

  Path to the kernel source directory to search (defaults to the working directory)

The part "kernel source directory" is the source of the confusion.
Some people misunderstand as if this script did not support separate
output directories.

Actually, this script also works for out-of-tree builds. You can
use the -d option to point to the object output directory, not to
the source directory. It should match to the O= option used in the
previous kernel build, and then appears in the "directory" field of
compile_commands.json.

Reword the help message.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

Changes in v2:
  - New patch

 scripts/gen_compile_commands.py | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/gen_compile_commands.py b/scripts/gen_compile_commands.py
index 1b9899892d99..5f6318da01a2 100755
--- a/scripts/gen_compile_commands.py
+++ b/scripts/gen_compile_commands.py
@@ -31,13 +31,13 @@ def parse_arguments():
 
     Returns:
         log_level: A logging level to filter log output.
-        directory: The directory to search for .cmd files.
+        directory: The work directory where the objects were built
         output: Where to write the compile-commands JSON file.
     """
     usage = 'Creates a compile_commands.json database from kernel .cmd files'
     parser = argparse.ArgumentParser(description=usage)
 
-    directory_help = ('Path to the kernel source directory to search '
+    directory_help = ('specify the output directory used for the kernel build '
                       '(defaults to the working directory)')
     parser.add_argument('-d', '--directory', type=str, help=directory_help)
 
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200821190159.1033740-5-masahiroy%40kernel.org.
