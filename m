Return-Path: <clang-built-linux+bncBD5ID66FXMARBSW4TOCQMGQEPYCXPMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x340.google.com (mail-wm1-x340.google.com [IPv6:2a00:1450:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 573C738BA57
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 May 2021 01:18:35 +0200 (CEST)
Received: by mail-wm1-x340.google.com with SMTP id k124-20020a1ca1820000b0290175dd5429afsf2956232wme.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 May 2021 16:18:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621552715; cv=pass;
        d=google.com; s=arc-20160816;
        b=Dr468cr1f3WGn3s5IxXwfm7kb4JSsB4FfK1NlBkwwJFI8GuZXwWH8EShtoAE5xw0Xv
         MmxgRfIzBwUISm8WCLjKMM+zneQspjesGwdjvyFUCkkl9BKfl+C3+wm0HUXUXZ+oLoAb
         tGKxGkao/CPomlZOh+dgO0aLmcO1jt3IuVrcDLsrBhGf8aqN2NzBR1WH0oKyOctSSKaj
         tjPi6Xz5eAdOrWnjf/F9e6Ote8K93dsE18iE3H+rk51T2f5QqQVLI08DY4U1QshIvZhG
         ig234uqPegu5zPkl/+e93VG0A0rjwEpXXVHimDLQlZp3ZAloutF71YaRYEZ4QRbF9h3q
         2uwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=8MeprbrueoxDL+8tbgTDz/M/rqqqwrSCuBiutYPhSp8=;
        b=PCIYud0EaF3A+4Slw+ms9EMhhWqgotIgOaLg7x53a9GZIk91Sz5++uF1Gwoz8cD5DO
         b66myzjRtc+ErsJFU7r1n3+/sVy705vELC849Sy1oRHa6njB3K7cNCCHNnpGdotflrDK
         w6kQqvffhMSVLcbFPFrVkX4tXumQJpPJMCCql+lXraL2R1iYSyjr+7fpv3uDKm5LKqIw
         QaJ/bIA+xrckjQ2VyfW8PO9AuihX2RVXv3Mh0SX1SMIuyy2Kxu5e3TMKzmAQJu/vJ8oM
         DogYMXOt0sWBS8nLKEhFvu5newmIv9fV/AILITGpMhpK1aVTyJ8Ha5dQpiHVSWeriNvW
         o2bA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=i8rZOgkQ;
       spf=pass (google.com: domain of maciej.falkowski9@gmail.com designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=maciej.falkowski9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8MeprbrueoxDL+8tbgTDz/M/rqqqwrSCuBiutYPhSp8=;
        b=T0eN7qIO03Gb1/xswDP0/lc3dB0PboYDLzJkJgthAV8fHqk++EQh2eAt4JKMDrG7z9
         22CGetYhG9ppXPXnS39Ro8tIsJLF4blWPqTl5RPC94lnsYkptnfzx3ICVdNQ5tWyRpQB
         T6ApSTgMt557S5Sx3iEKqwzTS/rjNEW4yT734Pk7r+5EamHXiII+MiZ6MDsyaNYKyDav
         w65KwTBJHBEemysKTeXcMw6bCou98IPh6tRQffW5M0Uf8UZZe63+EVtZA91IX9pVw7Mb
         6Uj8dPZnUFFaxqllB0OeX/VjzdaKtbLvu0urS0ydrap+9YvfdLvnOSl4/mBS1rjXgGLx
         Ei0w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8MeprbrueoxDL+8tbgTDz/M/rqqqwrSCuBiutYPhSp8=;
        b=FK1cTHLNniinli4qhrrwOhRPDANBjpxAnR94791dDRs+8OP5YANxnXEaTWW1HvveIN
         fjprz9ORMFFfTQnyNvDJX6V+WAsHpEJN0to9MbhtqZ8SRBhCznZ82EN0M0wsOaaDwZAF
         IB0RpfIHOWZ4Dx+qVuwWXZB05sI3ZGltXyT5Zl2LjF1OsahWDRMhszrqSoM/rcN1mvPo
         dRId6i/IoYgGSWpFmd8aSUq8JwuGB8ws6l4It+qFLLBQyP3u1Yp061ETYnUCFaC8Rj/b
         BQdW7QpBXo4oO1zr5HIn1IP+O8XGrKD9hh+RpHhouOSPOGup72fZlFDxRks2UYs3kBzE
         hIng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8MeprbrueoxDL+8tbgTDz/M/rqqqwrSCuBiutYPhSp8=;
        b=VA82ogUd687h7iq3hlvhBkITIzTN0MJhRLHkv1KDiJ4Kk78Y32ftiWzUx0Ln85mna6
         bKhcCjpXoPs1/5nQkwNosGVzjz0FoAdb38hEG2zMDKPIOWyVJ8u6hXg/LH6Ool46sbs2
         VCoUVnFt+FwjRcMCJGRPXCiPjykYbKUvxOB7xvL8UU+2xKderh1IMhhQOwCUjGzygfGk
         HUzyDnX2rfINHuWOwiujzn126m6qQ3BIWpgffYr6nn/WqvDPnXZXCtRi6hONwhQGt0n9
         XsMa09hWec54vDjPzrkhn4FMi77u1ps0hnn9VWks+8Vk2/MqiFViwrj/BICdMhpPUkK/
         ZCHw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532I9pWXnvToq/gyDU2d2znk7OmYSyuw0ZLmXBSRPmGAZqS1/uYh
	gABQF82ZVxa4V1bB1ZY6LSg=
X-Google-Smtp-Source: ABdhPJyGWa1wYeWZL2prAl4XfjkMush8wKGbNt6rHehfMPvQNgaCCISG61NenX9y70Ck4DhLyVhfJg==
X-Received: by 2002:a05:6000:1865:: with SMTP id d5mr2668075wri.126.1621552715104;
        Thu, 20 May 2021 16:18:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:11:: with SMTP id g17ls2067821wmc.3.gmail; Thu, 20
 May 2021 16:18:34 -0700 (PDT)
X-Received: by 2002:a05:600c:3592:: with SMTP id p18mr5725639wmq.44.1621552714180;
        Thu, 20 May 2021 16:18:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621552714; cv=none;
        d=google.com; s=arc-20160816;
        b=r9dB32x2Ph/KC5owOXJZ4PdJdS2QjEZ8pxbZ2Bvd5JLdSEKtMNFdRLRSRfZ4wcFOMh
         9nKzoz6zKiGnNeqWbb+0ddt/3HtoO1wXqw+akrkvddM92LcpBgeVXlhQUEPGhQSrqBsP
         lTXFnoZVVWIiLRKyURsXBSe7Gd2Dh0aFftK/qy9mTrTVkYLrNrlM/ByTAtVMTn7CIm1e
         ZEmQPBjKotHaDluA++vDu5x/d8VRh5+iPUwn4RLPbjMAoZDWOyQwosvKdcgzowaYa+eF
         NJmh8XeBbWV0FZmfUltql08NjUIyJBeiwr7+G4i57CrwxPr1Gx7tGI6lG6ewj7Ckl0UK
         R5mQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=V/aZkvClPqTkoxRn3OG0yQtPKnHJCNnuxaerq1yum2k=;
        b=IG3SJiQHdLDdf/9G4VDxGjOG+1UCG4AUT/wtyoqegOw6ZeGQeIFPIXeFthJtWt5Jo+
         Q3q0U4krqjllYZiRpQgU5WtwQm2++SV0xGMD3AWBkjzDOCy4VzGt8bY3AJzzlzW8wdek
         N/POzXb0oPwKzxpT4Vmn2YjuUMY908G8+87d03kDP279FpInd9Hm+xZo4dMwolDfTmeJ
         fZto+xEu2TGTckymYYtufOl2p28Fz9Q3gD2raWArQcwYapYqkceQH6a/0iBIz3YDhZY1
         N8h9Q10qVrg7a/vFyopM6BvUxqk91M7ccSZyX7u8wb6t40mRAHhzLqIZ2pN/KPitz9zb
         cfdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=i8rZOgkQ;
       spf=pass (google.com: domain of maciej.falkowski9@gmail.com designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=maciej.falkowski9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com. [2a00:1450:4864:20::12e])
        by gmr-mx.google.com with ESMTPS id t1si81wrn.4.2021.05.20.16.18.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 May 2021 16:18:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of maciej.falkowski9@gmail.com designates 2a00:1450:4864:20::12e as permitted sender) client-ip=2a00:1450:4864:20::12e;
Received: by mail-lf1-x12e.google.com with SMTP id a2so26910852lfc.9
        for <clang-built-linux@googlegroups.com>; Thu, 20 May 2021 16:18:34 -0700 (PDT)
X-Received: by 2002:a19:6a0f:: with SMTP id u15mr4990334lfu.614.1621552713684;
        Thu, 20 May 2021 16:18:33 -0700 (PDT)
Received: from 192.168.1.8 ([212.59.242.58])
        by smtp.gmail.com with ESMTPSA id h25sm432761lfe.3.2021.05.20.16.18.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 May 2021 16:18:32 -0700 (PDT)
From: Maciej Falkowski <maciej.falkowski9@gmail.com>
To: natechancellor@gmail.com,
	ndesaulniers@google.com
Cc: clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	maciej.falkowski9@gmail.com
Subject: [PATCH 1/2] Makefile: clang-tools: Print information when clang-tidy tool is missing
Date: Fri, 21 May 2021 01:18:20 +0200
Message-Id: <20210520231821.12272-1-maciej.falkowski9@gmail.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
X-Original-Sender: maciej.falkowski9@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=i8rZOgkQ;       spf=pass
 (google.com: domain of maciej.falkowski9@gmail.com designates
 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=maciej.falkowski9@gmail.com;
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

When `clang-tidy` tool is missing in the system, the FileNotFoundError
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

The above exception was the direct cause of the following exception:

Traceback (most recent call last):
  File "./scripts/clang-tools/run-clang-tools.py", line 74, in <module>
    main()
  File "./scripts/clang-tools/run-clang-tools.py", line 70, in main
    pool.map(run_analysis, datastore)
  File "/usr/lib64/python3.8/multiprocessing/pool.py", line 364, in map
    return self._map_async(func, iterable, mapstar, chunksize).get()
  File "/usr/lib64/python3.8/multiprocessing/pool.py", line 771, in get
    raise self._value
FileNotFoundError: [Errno 2] No such file or directory: 'clang-tidy'

The patch adds more user-friendly information on the missing tool by
catching FileNotFoundError for `clang-tidy` file and raising exception
again for possible other files:

$ ./scripts/clang-tools/run-clang-tools.py clang-tidy ./compile_commands.json
Command `clang-tidy` is missing in the system.

Signed-off-by: Maciej Falkowski <maciej.falkowski9@gmail.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/1342
---
 scripts/clang-tools/run-clang-tools.py | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/scripts/clang-tools/run-clang-tools.py b/scripts/clang-tools/run-clang-tools.py
index fa7655c7cec0..38fc311d2e03 100755
--- a/scripts/clang-tools/run-clang-tools.py
+++ b/scripts/clang-tools/run-clang-tools.py
@@ -67,7 +67,13 @@ def main():
     # Read JSON data into the datastore variable
     with open(args.path, "r") as f:
         datastore = json.load(f)
-        pool.map(run_analysis, datastore)
+        try:
+            pool.map(run_analysis, datastore)
+        except FileNotFoundError as not_found:
+            if not_found.filename == 'clang-tidy':
+                print('Command `clang-tidy` is missing in the system.')
+            else:
+                raise not_found
 
 
 if __name__ == "__main__":
-- 
2.26.3

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210520231821.12272-1-maciej.falkowski9%40gmail.com.
