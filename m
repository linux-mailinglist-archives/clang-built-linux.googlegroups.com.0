Return-Path: <clang-built-linux+bncBD5ID66FXMARBDWN72DAMGQEIQLDGAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63c.google.com (mail-ej1-x63c.google.com [IPv6:2a00:1450:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 093DF3BA653
	for <lists+clang-built-linux@lfdr.de>; Sat,  3 Jul 2021 01:51:43 +0200 (CEST)
Received: by mail-ej1-x63c.google.com with SMTP id f1-20020a1709064941b02903f6b5ef17bfsf4052388ejt.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Jul 2021 16:51:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625269902; cv=pass;
        d=google.com; s=arc-20160816;
        b=fE51Xb7Zhl2FBRnAkIT3oHkK/+NOtKwTyftsx5jFbJLI7jKkVQtAgcrL60LhQOgnGn
         9DSPq4I7yNlGCTRhcsc4QYJagc+7Iaz9EgcitwLXpjDVNpFfvAippkcTLlkpIhVHDftp
         Ji9EhwHqAWymI7eBGIibCMP8cGJKX0zriLu5azOmt/emk8QTk3NkDU7iG446BQu251OB
         CKZfRkI79eb9TZ2pihpShYUnqXMivPMQZFw/Stsu+LqMoOkQ7u4XNFbqMnlZoxyrkF0t
         7J1DPzUR4FOtXys6boMkufWWi7MUZngh4ePk/XO/xCx+JZSbat/S40g8brA+IQCzQ367
         Ls/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=+26Zq1zcZTeMdL2B4qjrFn+8Rv5hzZXT4osnaYoVrpk=;
        b=0oIvuWeZ+x5X1N/Ey8ilgNIO+Gihf3HGIpOH0KNuqeuSzo4z4Qt/SsgKIZdZjrk0L+
         OvU6SVEUg0kCba5le/z4hjq/D4AJmUIiIV0NaCCC2Gb7CQ/OHGJQ4INrHIa4F5u4/xEy
         MGct/06GFbr1/QDKVtiueaZX88MzobLeOwtB22IwUiauhVW8q4/fpmuseE8k3cwCmRUx
         ZkTxjMjw/4qMUao1wImK/013rurV1DXRWXj4jgnWPhfPcVBiJ1hvbIHHw3743mTmHFv1
         HCIfCNbHEdiIJTqrivLfinfD+AvLtMrirwkNbaerH4pQea9m/oJHDQ/GDcWwwuT2VtpK
         F0PQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FoT0dmiW;
       spf=pass (google.com: domain of maciej.falkowski9@gmail.com designates 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=maciej.falkowski9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+26Zq1zcZTeMdL2B4qjrFn+8Rv5hzZXT4osnaYoVrpk=;
        b=h4sb9SGcEB4u3bQxqwxqZOjPM/O4dJJSY/vBCn83+vtkFt/at3sfZBuEfuM+UpexpD
         4ZdC2o3g2IliGAM9eao/AgocThp6g2CMcAxmY0YG80CuIMxfzMRCbXvb4nOqWL0TYziA
         BpIFMIlKrrPC6uXf5qWranQQd9hdv3KpEZ4gwmp6247fGIloh1bTiCgXYPubowlBFSN2
         GnVrTqROphjNznS1KbnFxpuWHCeWB6bOlKWXaWUGgT8QguDv2XNkRJz2cZH/9cMmIQyS
         dqZ6tmg1mekP5vOOsuYg67aRq0g/bRw1NhDmKWds8WG+PecNGdDjrGFrhbM+H63XLH7O
         q/sQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+26Zq1zcZTeMdL2B4qjrFn+8Rv5hzZXT4osnaYoVrpk=;
        b=jAWN9LE0/RiP79SN5MENGXisFP2w2//WFb2T/Cp0WUunJINOIR1YgPhgxcr5c5gjk2
         9u4AXcie2aud3XV2aqynX0nbQCpXNxNoX3aPIkOg17UojFDEr2KZbiBfq/qeTV3j4CAQ
         gdfGM5k0Ye2wXKCMBxk9fnqkYNgleJeAeV/bKN7oXyYdv7qt3Cg2hVztBBpaFslFP7m8
         82Yf1vZucC5PkpmTU39oMUe1eVXaqAanih7ds6uMUPn6j1E7EdGR/q6qqWX4efRcNe3y
         eUblsfc9ZDb+Y0F0W51zL1pD7ljdnQtIkZhKWHuKDC+D+8vVEsUC2t++WPP2a0MnHB9o
         /gjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+26Zq1zcZTeMdL2B4qjrFn+8Rv5hzZXT4osnaYoVrpk=;
        b=GyFXYctEAQQKThLED25ArTvv85TKrMsPtRw4mNs6UzE/881eNCF88hF4XVD2ySm1/b
         tei6w4bem312mq8eyKoQbU2XneYgF4aR7OZaF/5iNVz/YXttvk8zU/MGF9SDOGooE/zh
         jM0eRg/0V1nop3hzBtwnctJOc5Z5p4Hs4mjuo0edI+MUHH0fduGGrBxjkidIqbgnR+ot
         fbX/MEK8xdAkaKSfTc4Cm79rTDYI4nOFuHaMbjqjGpYxlj8Pzjkqpz8upqRUQrECjb3D
         +8RjI3mbuU8E5UYjEsjwp6iDNp4/aR6JS4GEyWpAriXu86hVbPQZG7jIg5SpQbY9X4jK
         dKyg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532IkrREbIPNz2X7tO5RGrWKq6Ws44Bl8o2pwwXSkh5mGQrQSfeU
	utf+mJBeYvSPYF6cUKZkxMU=
X-Google-Smtp-Source: ABdhPJxM84d+rKEKR+ekViszWBr5B5IdmCxheF/HI1mhFiVDJEh2pwfH/Kx424IqOg/tq3uCMx254w==
X-Received: by 2002:a17:907:ea5:: with SMTP id ho37mr2229466ejc.109.1625269902796;
        Fri, 02 Jul 2021 16:51:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:6811:: with SMTP id k17ls86938ejr.11.gmail; Fri, 02
 Jul 2021 16:51:41 -0700 (PDT)
X-Received: by 2002:a17:907:6fd:: with SMTP id yh29mr2302036ejb.432.1625269901859;
        Fri, 02 Jul 2021 16:51:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625269901; cv=none;
        d=google.com; s=arc-20160816;
        b=grwZzGuckENo216X2lz0p1goEVMtuTF5FpWP+hwy7K6C3wLBF3U/fdY0EDaSJJGCRG
         jAR22KJxWATXUJ0XXranXi0voBgvzV+ma9nS/BG94k9vaj6t6TzR2IqLnY2KuFSZbVzG
         YJ7iMPDaoTQfZJbuUNOIftlO13y4XhodU32qDVnnIzfeI22kIvdbgFQXeqvGiALyp8I+
         iQBJHPkwXpH0eI3ItbEWTplTV7qknTPJiYHgHj9/EsdPhXpAe0/zLHHI6/wfWDD2JaeR
         vxNHmfwv5OVXLCbuj3ryFRvBoJo9dt5sdse4tnHfBhApeyktvSr2SItxwLocIK7sNn3V
         XNyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=clIxmMxm6a6CEZgz+Vza6vLv6bCnIn97w16YVzgjAlM=;
        b=fa6UmhHlk/ONO8iMSjLGBx9VeDkb+33Trj/a9HYo/vyYhx4NI4HcoUAtx52mxQP7Yb
         v11+YCVhJTtePE/zqobfZCgtiTke5ytAMEKnBapRuWHzMaF7dbvpc0auN99/6nAe8xSf
         aswYhfQR9mC8bgCq/1exUugzDWIhmFs3zTNDu97NVrU6mz/zL2mI/Gg8YHPOUfQPkD2E
         atuz+RCe5C5i/VFNJ1O3Se485suJmXxTmtBQ22psAZTZhhyrz7q2fE+1clgh6mPB4eR0
         VB5OS9uL1mO9mstcTw6smj7cOTCuuG7v85CzYknWzE1qIwRkHefXsldu4P9jAqykI//i
         F2xQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FoT0dmiW;
       spf=pass (google.com: domain of maciej.falkowski9@gmail.com designates 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=maciej.falkowski9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com. [2a00:1450:4864:20::12d])
        by gmr-mx.google.com with ESMTPS id s18si153294ejo.1.2021.07.02.16.51.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Jul 2021 16:51:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of maciej.falkowski9@gmail.com designates 2a00:1450:4864:20::12d as permitted sender) client-ip=2a00:1450:4864:20::12d;
Received: by mail-lf1-x12d.google.com with SMTP id f30so21054948lfj.1
        for <clang-built-linux@googlegroups.com>; Fri, 02 Jul 2021 16:51:41 -0700 (PDT)
X-Received: by 2002:a05:6512:3761:: with SMTP id z1mr1511747lft.99.1625269901657;
        Fri, 02 Jul 2021 16:51:41 -0700 (PDT)
Received: from 192.168.1.8 ([212.59.242.58])
        by smtp.gmail.com with ESMTPSA id h5sm511370ljj.80.2021.07.02.16.51.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Jul 2021 16:51:41 -0700 (PDT)
From: Maciej Falkowski <maciej.falkowski9@gmail.com>
To: natechancellor@gmail.com,
	ndesaulniers@google.com,
	masahiroy@kernel.org,
	michal.lkml@markovi.net,
	nhuck@google.com
Cc: clang-built-linux@googlegroups.com,
	linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	maciej.falkowski9@gmail.com
Subject: [PATCH] clang-tools: Print information when clang-tidy tool is missing
Date: Sat,  3 Jul 2021 01:51:20 +0200
Message-Id: <20210702235120.7023-1-maciej.falkowski9@gmail.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
X-Original-Sender: maciej.falkowski9@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=FoT0dmiW;       spf=pass
 (google.com: domain of maciej.falkowski9@gmail.com designates
 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=maciej.falkowski9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

When clang-tidy tool is missing in the system, the FileNotFoundError
exception is raised in the program reporting a stack trace to the user:

$ ./scripts/clang-tools/run-clang-tools.py clang-tidy ./compile_commands.json
multiprocessing.pool.RemoteTraceback:
"""
Traceback (most recent call last):
  File "/usr/lib64/python3.8/multiprocessing/pool.py", line 125, in worker
    result = (True, func(*args, **kwds))
  File "/usr/lib64/python3.8/multiprocessing/pool.py", line 48, in mapstar
    return list(map(*args))
  File "./scripts/clang-tools/run-clang-tools.py", line 54, in run_analysis
    p = subprocess.run(["clang-tidy", "-p", args.path, checks, entry["file"]],
  File "/usr/lib64/python3.8/subprocess.py", line 489, in run
    with Popen(*popenargs, **kwargs) as process:
  File "/usr/lib64/python3.8/subprocess.py", line 854, in __init__
    self._execute_child(args, executable, preexec_fn, close_fds,
  File "/usr/lib64/python3.8/subprocess.py", line 1702, in _execute_child
    raise child_exception_type(errno_num, err_msg, err_filename)
FileNotFoundError: [Errno 2] No such file or directory: 'clang-tidy'
"""

The patch adds more user-friendly information about missing tool by
checking the presence of clang-tidy using `command -v` at the beginning
of the script:

$ ./scripts/clang-tools/run-clang-tools.py clang-tidy ./compile_commands.json
Command 'clang-tidy' is missing in the system

Signed-off-by: Maciej Falkowski <maciej.falkowski9@gmail.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/1342
---
 scripts/clang-tools/run-clang-tools.py | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/scripts/clang-tools/run-clang-tools.py b/scripts/clang-tools/run-clang-tools.py
index fa7655c7cec0..d34eaf5a0ee5 100755
--- a/scripts/clang-tools/run-clang-tools.py
+++ b/scripts/clang-tools/run-clang-tools.py
@@ -60,6 +60,11 @@ def run_analysis(entry):
 
 
 def main():
+    exitcode = subprocess.getstatusoutput('command -v clang-tidy')[0]
+    if exitcode == 1:
+        print("Command 'clang-tidy' is missing in the system", file=sys.stderr)
+        sys.exit(127)
+
     args = parse_arguments()
 
     lock = multiprocessing.Lock()
-- 
2.26.3

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210702235120.7023-1-maciej.falkowski9%40gmail.com.
