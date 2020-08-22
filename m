Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBOPEQT5AKGQEE22VTLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 796DE24E7FD
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 16:56:59 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id x142sf3117588pfc.14
        for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 07:56:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598108218; cv=pass;
        d=google.com; s=arc-20160816;
        b=Tfu2+lSV2orE9KUjTZZjFh6jIIIlnWOvIO9MlU1x0Otzrz0yLaAVru6QZAhtz0QFfx
         5TWCKMRKx2ENHl+7pAp3syRCav+oLj8NSNih1mrelQw5am4coz61HfUU8hUqrQVJSQne
         L+uzS2te/HX+N5UldR0oPTRFYFQfdhF4IElZzVi2ZmEKOmSbRJ9xeq+NQo7KDaUAxCH/
         doH+3s65u5ns1gOTP6MXzwuEaKV8bRS1Ykd7D8k4KDZ5G2pis2110MjsXv6TbAPmIllp
         jyHfyNCiVg+M5+9bYqJ2y6f8F8XwbrtKdaw8WTc6MadBxgO5WsUdEDzqepU5vlLH56gD
         OjZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=3/0d8wHiq4W7o85o5zSxRMfkX0U2VecyT7lM4VptZ4k=;
        b=Np1wYLTGwnqMwpbuTCHFUQUMUUC36YBB1foNtBP/xPgG/BGeQbQC+mXhxJ9XuQAUWa
         qOBCUq3i9xnN/JB9g5lYVw80Jv/siN2f59atZRHR5YoOImcBXUeTN/IVZAKRBzOCMXCI
         4TVawiUS68CQ+m9BK+CP7QdYruEym0WUWGk9qxHgnNku9iv5Ge+1S9abFgy1GnU8gaav
         Db2dr0A+cQ3w9mlo/JFcCfLUqysgi960Y/IvSFO9vPx2siPwb4MUidazZpZKpa72uvXc
         Ns6jx6Vut1YGzclLEI7L8nSDDJo5/TX9phZfrX7kPVr6HUNVADQXF+IZ70nC0QUwszHc
         NohA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=2Qp4fqRO;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3/0d8wHiq4W7o85o5zSxRMfkX0U2VecyT7lM4VptZ4k=;
        b=CvgsZk78PPRxGula4DLwJ/qUCJ264Um1sA2xu4ycFArr01ypdRvD3aVdauCYHvjKr9
         O3K7jFcZgb9oOGcs8fPMub17mSSGEaI0iTY8Je9/SzOQPkBTWWNkem6L1SH0YXWqk8Ob
         9HLvITNqNyki9EnPhE4EsG7KySCoKNP6Tw5nfHcXBfbFG7UvZv/qqRXPNsHpj2mLjFBv
         nLyu7UMFNKD0Szx0Upw5NxvgLzDDI31b6dsKwkgh3iU8HuF9JAtWWG7jG4NqiVqPbdv5
         3TbMo+tm6LkTII3BJYetjLsPsOW8ZOh2OUfI4bD00eeAJaz19g8y16HrsoD9ZAni9NsO
         uR8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3/0d8wHiq4W7o85o5zSxRMfkX0U2VecyT7lM4VptZ4k=;
        b=TeUOg56aV1OKPh5zIkmiYhQfNqzpiZBkk1tteaZ8+zZZ2JIQ1GERZJpe4qGn8tVk0x
         n+f/AlyrFIagawfVG8TkdSCH9e1GXjT5cKTBNDFTlpp94H2Le7mxHYanO4EZkeRG7tLg
         I5lnU3rTVIsrV9QG9SJHH65UcNL54hZbQQuPQfzW0jdyztmQtZ+vsyJXX3gPLeREEZ/G
         Z2NNptcZmbWdERjB4achvwqZcICfcIm82E1Oxi8Ft4vxkoarm/BoonbtjYkpUwrs+WVu
         R0XKPhcBOtzqOAH5l9zwjEc13SHUaSTpoo3guQgA5k6zbZYsqzBTFKik7FLgsIUKwH/Z
         VF7g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532NKeJhNqhau2BKc57v3E/ousTTv7qwK7Z4jaVMLKyehgYwaBxt
	XWN4BYKzTvLpnVbSBL2Jxa0=
X-Google-Smtp-Source: ABdhPJzjqufAj2RrkYnlcZBWwPxrb806/Tsyu7wxTOR/dYGqMeVtOM5yaHq5HDXUXDFgU+bdyToQHQ==
X-Received: by 2002:a63:5d50:: with SMTP id o16mr5903385pgm.61.1598108218079;
        Sat, 22 Aug 2020 07:56:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:720b:: with SMTP id ba11ls2415967plb.0.gmail; Sat,
 22 Aug 2020 07:56:57 -0700 (PDT)
X-Received: by 2002:a17:90b:4b89:: with SMTP id lr9mr6827788pjb.190.1598108217570;
        Sat, 22 Aug 2020 07:56:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598108217; cv=none;
        d=google.com; s=arc-20160816;
        b=pM403NHcAP2jOi13MGCmNd/SQX6cvgbc7tAeFcTqNAO7nEbfwxDyTkiGustdvWUFLm
         Ltay1woSsYzcjFZOO1BNNA5+k3rXZ5971t3J/3dUkfZfqTAh6NsXvtORFqolAtYkh810
         XU8HYXAQyBdmVlkTT8e/i9dI4YfBtvZs+2kNv3ur2bYbpurFZxMEMDfWuiTn1X4qo/Lz
         TXUealeqonJa6X7x3DE57v4LZVTAzmyF3mF3Z+VpCGBWz/nTo6O0neSy06YMUhsy0rd0
         1E4dcZHSgtEsn7phYUgOcRDdyHzraY9tkU7BJ57AKLiEPMq3HWqQo2jVHpVzkmsBQhD3
         BWyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=IBZFRCC+dauuYn3v7p0fADfhiey+2jMphRtB7L0P/CE=;
        b=hWO9CyNrsumLghKoWa6feXe6CW+p1KF8a/hwMP4rUqzyOzXTBSLsNP3JQ5JaJRv8ud
         NQgitYCjg34kJKd+2FYXTFMV9CFPvVNT5mShNtIt6zdjd20UM5j0fCw2AcDoXSimeg8B
         s4U9UdPedYZT2FSzWJGjVq5hGJTJhhQC3qIF/L5jJXZVDkTnu5CFUvFv2jhW+9xloYEy
         +/LaoTRmA1by9K/0wS+zcJT2NvhKzZSDXKVP8dHpcV1LpObpvivuUD50o+MLYGTxXTw0
         lv6iGGf7vQAP5YvT0Csdxbtcau+2q+2ugd88XJsNanCGgYFyy/bXOJhYuVGvXwJyDcUB
         GQRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=2Qp4fqRO;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id 91si191066pjz.1.2020.08.22.07.56.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 22 Aug 2020 07:56:57 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from oscar.flets-west.jp (softbank126090211135.bbtec.net [126.90.211.135]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 07MEuKVR025434;
	Sat, 22 Aug 2020 23:56:22 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 07MEuKVR025434
X-Nifty-SrcIP: [126.90.211.135]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Nathan Huckleberry <nhuck@google.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Tom Roeder <tmroeder@google.com>, clang-built-linux@googlegroups.com,
        Masahiro Yamada <masahiroy@kernel.org>, linux-kernel@vger.kernel.org
Subject: [PATCH v3 02/10] gen_compile_commands: use choices for --log_levels option
Date: Sat, 22 Aug 2020 23:56:10 +0900
Message-Id: <20200822145618.1222514-3-masahiroy@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200822145618.1222514-1-masahiroy@kernel.org>
References: <20200822145618.1222514-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=2Qp4fqRO;       spf=softfail
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

Use 'choices' instead of the own code to check if the given parameter
is valid.

I also simplified the help message because, with 'choices', --help
shows the list of valid parameters:

  --log_level {DEBUG,INFO,WARNING,ERROR,CRITICAL}

I started the help message with a lower case, "the level of log ..."
in order to be consistent with the -h option:

  -h, --help            show this help message and exit

The message "show this help ..." comes from the ArgumentParser library
code, and I do not know how to change it. So, I changed our code.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
---

(no changes since v2)

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200822145618.1222514-3-masahiroy%40kernel.org.
