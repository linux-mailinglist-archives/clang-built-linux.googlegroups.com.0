Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBOXEQT5AKGQE4XOY7LA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id EF6B424E7FF
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 16:56:59 +0200 (CEST)
Received: by mail-yb1-xb37.google.com with SMTP id l13sf5508590ybf.5
        for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 07:56:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598108219; cv=pass;
        d=google.com; s=arc-20160816;
        b=L+lVv1xxhZAKbk8/yXcTJ7PnUFIM74c98M8OsNbR5uL05lHEKkmhwhWA3gdDetHECM
         ohWVpDNr5PEjxVu/oPLOVwbgFf9i3PhyK41KC5sXgYXxa3PnXxPBKYNw31SAbMy85xvu
         YJeNTF70/MteCwVkks7DwDxhVFxPZ3FasD7QYlPtcUdKPI/34qrqiTVEvZZyXYXZ9hW+
         dUSxUu0yDVdu38zzrQAIoTh0ow0AqCjlP8SdLqYB3+Qd6ZHw96vDMw7fk4gdDFSvK8dm
         r1iGSyNyIdo4cKSNIw0MJTp+F6MUnIUdowMWpD+jWhd4F+8fj+jIJft52LbK9TW4NnJb
         lafw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=JdjBSDsAz2b45Q05dvUjoJWgfm14sCGOaD3J7F5aVr4=;
        b=UzXUXhxSa1DakyxGfYzc9RruMMdBoBb5rJf7hyMVGJK//zrdH+lybrAMH0nE0PkrTJ
         tr1Zke5M/htepVobTsdEeSBE2wLr2JLymaqc3/b6cFCWbFZENPOlexb42YF++pOzpDlv
         1ZlSe+tzhdiueEr3NvISOi+5iNUuNU+GncAxt7B8qVtGA2YXvJbt7Uhib2rEt9DoRjt+
         7QAGU/K3LIeIrmEGGnuz6LDNVoio7xcXL/aBf5swDYalH4zjFRqsS6teXRuFhB0OJnT/
         ZN0+wd6M0cwANp2Fcrdk8A6AXY0N7UgTN/qNOddIOauM9i8xZ5Yfxiy3P8fB6bm9q80v
         RBPw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=v16cp4Vv;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JdjBSDsAz2b45Q05dvUjoJWgfm14sCGOaD3J7F5aVr4=;
        b=NGSBHWEv8QdhQH+V5ApdqOn6y7wSvhh4m8b8FtreU53ANkyF5F/v1ScR0aBm0l64o5
         ybaXbFG8roIZJ5Cq3IbDua6NzKGUjknMwlCMVDHqMyBVlQOKi7X+AaV21ptrsZ36DeB7
         HcxF459YAEL0Magc2ojgT1EmADP25kCysUAU8ysEpgbtx2vLQCBpBDjlHSoGLAbPRFsY
         Hdb1B/E9701dyVEeI7YHGClLg8995StWgsgm6Mvv8h70ZbyhtKr6pWaMuF2vYBis6Bmv
         6MSkHHU2tFektCF2Fok4i7H62HObNB8SWdjm5Ey6S0hflTV0/Z/maYmybqPU6mEZgLA+
         pFhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JdjBSDsAz2b45Q05dvUjoJWgfm14sCGOaD3J7F5aVr4=;
        b=mA//XFGHGyZlzlXoWcgCPdsgZhaHa336GZBLtWIu4Zopzn547ImJUHtXZCxv4LmCh2
         nvdxVI+JjtgzCtmV4vpGNaeaOWKYkk8HE/tRAcnloGKbVPpwzj5tsIst3AjZuP45HtnP
         vR25GYuPhjkzRbZV2HTrazoTjcRzFfmTBTZMGLUKM/61vgZKYjo7vi/W+aWa83poi0Mv
         mDY4tN1Jk3FcztYA13CJvVwjX57KW3nh/st+cjP9blVvmJmezemKKhk2PYcjl2Hm3Zmh
         WIQe24d0wN5tiDnwxyh1k+wCPcHuvz0pOYLWwDGHI3+jaZuy47hmUGx+RNRmnzd9K+ea
         JdSg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5330OjOd/zKHzFYCzv/cl1rqRMw59VOr+KXJDA0EsXCMOx1gLZ0v
	ToeEbvILNFf/W3mroJTz3AY=
X-Google-Smtp-Source: ABdhPJydPWGb3/8LGAqDvW+9cX9GrqONkGLFv54qPmdkic32fuhg1VtSVgkKY3ETRloXGpStXjEl5g==
X-Received: by 2002:a25:ae83:: with SMTP id b3mr10320184ybj.354.1598108218968;
        Sat, 22 Aug 2020 07:56:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d0c9:: with SMTP id h192ls1998965ybg.3.gmail; Sat, 22
 Aug 2020 07:56:58 -0700 (PDT)
X-Received: by 2002:a25:7ec5:: with SMTP id z188mr10820854ybc.57.1598108218591;
        Sat, 22 Aug 2020 07:56:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598108218; cv=none;
        d=google.com; s=arc-20160816;
        b=Y5MaErTKY6h95ddZwcmTkEzbABYpKgMKiJaiPlSb4mnUtoR/a9fUARBvi3Zbue3UZQ
         EasFb6jKI6vfPa+5TDFqkwMexUCVyOKxsgad6CW3nU310odIi2WibfCHDORjJUzRitLm
         BIXwhH7ABOXuTlKIkEDBR6eQmO6BNI7XtgUwj9QkvCo4u1PPYC0m7lBLO3j9WoMUKU/Z
         T+pM+SxZo7XZKgn6u/r+DpIFCNMOUx8E6fEOIjD153tG/w06y6WR8+/xt+xgn9xSxX+O
         uxmuoqF/QifHUHsZ3SZR+2p1z84ZVxCLcqDDorvjbw8EYAcizXJv99E1JQ+TXxOO2CrA
         Qo0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=xgwPl0sYIxicw/V74mC1zpDsm1aQ6gpJpcgmlt5eG3c=;
        b=mH2YImKBK0bbZzcs3oJbd0moJkgH4RS9obZmF/ljrIrsw8c1xB15yF+kW5gycry66Q
         3Wmk1rFE/PXvRzMgp6cREfisXvVzvDeziUK33OLRXl+UkojqqAu0bYVlGCgQWGBqkjVw
         zdiFoyy3gIQWBr+HgNE2D48Pym2Z4GWnOYXwtuWP+PELvpuK4BctrX4bz9EnFfAlWyQZ
         ERFH6JHAGF5ObWe74f9ubizq+u1Q8VtRA2eVZJ8NhmkMaKmMEOX89Svp1omr2FYoPc4W
         FMt6vRdOvZjm11IcrOiSvHmjT6eHk9KNoa10cEwB95kUx+bMWS2C8Qq3qfXOhsYX9OCD
         TQVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=v16cp4Vv;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id 7si333523ybc.0.2020.08.22.07.56.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 22 Aug 2020 07:56:58 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from oscar.flets-west.jp (softbank126090211135.bbtec.net [126.90.211.135]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 07MEuKVT025434;
	Sat, 22 Aug 2020 23:56:23 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 07MEuKVT025434
X-Nifty-SrcIP: [126.90.211.135]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Nathan Huckleberry <nhuck@google.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Tom Roeder <tmroeder@google.com>, clang-built-linux@googlegroups.com,
        Masahiro Yamada <masahiroy@kernel.org>, linux-kernel@vger.kernel.org
Subject: [PATCH v3 04/10] gen_compile_commands: reword the help message of -d option
Date: Sat, 22 Aug 2020 23:56:12 +0900
Message-Id: <20200822145618.1222514-5-masahiroy@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200822145618.1222514-1-masahiroy@kernel.org>
References: <20200822145618.1222514-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=v16cp4Vv;       spf=softfail
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
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
---

Changes in v3:
  - Add the missing punctuation to the comment

Changes in v2:
  - New patch

 scripts/gen_compile_commands.py | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/gen_compile_commands.py b/scripts/gen_compile_commands.py
index 49fff0b0b385..f37c1dac8db4 100755
--- a/scripts/gen_compile_commands.py
+++ b/scripts/gen_compile_commands.py
@@ -31,13 +31,13 @@ def parse_arguments():
 
     Returns:
         log_level: A logging level to filter log output.
-        directory: The directory to search for .cmd files.
+        directory: The work directory where the objects were built.
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200822145618.1222514-5-masahiroy%40kernel.org.
