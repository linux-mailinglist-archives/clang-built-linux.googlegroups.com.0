Return-Path: <clang-built-linux+bncBD5ID66FXMARBG6QXGEAMGQELOVJS5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 42DF83E3508
	for <lists+clang-built-linux@lfdr.de>; Sat,  7 Aug 2021 13:01:48 +0200 (CEST)
Received: by mail-ed1-x53c.google.com with SMTP id de5-20020a0564023085b02903bb92fd182esf6331646edb.8
        for <lists+clang-built-linux@lfdr.de>; Sat, 07 Aug 2021 04:01:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628334108; cv=pass;
        d=google.com; s=arc-20160816;
        b=tS+abYpZhEpNnG7MLgLxx54u75ZyXB+czA9RFoXjF6ZLznxRqDEuybKfriQRtTFu0q
         VfvEt6Ok8/aQCa2mN89w9mvKyx00wuHSnH6viQDxPCt3C7c+/+7h+dqtQWToQcMK1Kd0
         3UzEd+LESzGttpgEGCgn3GuFzdo9ZaFJMwaFxDRGSn0KP1GDjOzTV/gEZpmp/JUt7N3h
         egvugATYGUF5vB9LI8l+GCUg19cRP74KGUoFMS9109HoCzLeYUkLrSizcKd0YBEm1hAv
         wbqfHt0MWBvlDc49dXGs4pfH0c8UtltuvgfCEMK+7mwwG0J4Nx71nbVSw+V9Ai7dsWUf
         8tEw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=DxXAV2NJRqR4twfnVqiRWOEg7EFJfZT2XtmocUz67Rg=;
        b=mqxFBGmj0EtLe2IGG07BwX+7cDPLFAN4XmEVtOPy0KWQ0SColAb1+A2Ow4CaDnqV6G
         JjpSUUOK33YgQdHE7Ud+tOHXkbM+uznc3jVdBHsS2ZwWArGuU7L4+7DKnkIloQnK/CX5
         GSXQ4ex5GM0ZBpOESo+SKTcJoGvxUPZ21Y+/qVk6GDK7QAE/jCx8RKMKODP47n/WMwRe
         JJt63GSOlQJ2Kf69djPYRIM05emCXv1Fv7a4in5DT+lAcCUNr7+blxnFCozXZujMYKCq
         xfIM5f/p34Ntlv8ztCl83zfSPVXsc31xpxCXXYV7QF4iM6wcL2bwmpL/D9p+1F9bMKaF
         cPOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HCEBgbUx;
       spf=pass (google.com: domain of maciej.falkowski9@gmail.com designates 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=maciej.falkowski9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DxXAV2NJRqR4twfnVqiRWOEg7EFJfZT2XtmocUz67Rg=;
        b=phiVwnYLpjsf8WcJ9pD+OEsHuYsnZZg7BxdhY4Mo8+Jy99jJ+qfXBPENuPfFSMYfOy
         RcRwIBX1eczvzgJ8k99NkkWpJHRvDaq5KJ9XuguhHLxLSIkMQ/wnyD1Z1tPrSjOR0RQu
         uPZ34wWVqEQVh+SO3gipO1TuyMBSDyJEipHoM69BaDR2wp6t4FeBbt8t03ra7hbVfRQd
         SCWhH26p8dY5ODpRZIinfgDOdTGSFhhqPp2ZQEGy6YXQgJI+6CilxQLWv6WpMcAvIq3N
         QGnw3SVITaGwsEhuPQWNQgWb2hILoyHhr+3z2zKAmSG03cTMDPMx8Oo17v/5kUwL646X
         jZKg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DxXAV2NJRqR4twfnVqiRWOEg7EFJfZT2XtmocUz67Rg=;
        b=ewwAWos/oq6xoCgFZ9ZJzwJxbrbo+Q/SvSU9XGfRU+HUBTHhvnKKlD9CH2Pk9gowCW
         bHZ5gfooXQ7uSK7V4bs/jhBAQS4TFSx6ktHHFYmuf5oYAb3UIn7zZrY1+hOB/PK1G48r
         QxgwuYJaTNexpcWI/CWFZwJxYfZhOl9yp9znz/Tip7AI7+Je23NlzZ0OCWcNBTW8CNvs
         34mC+qspbMXHb8Ca/42MhWZI03Ly/T3ZcefkHMXJ1/F9jzkXde9JW7eO0rBekqNHzhL5
         w8kqEaPmnyDr5RazES9BBmlND7hUMumUQkgS+C1/zrQ40kqqEPZnvMKibK2nFg77tPFP
         vPWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DxXAV2NJRqR4twfnVqiRWOEg7EFJfZT2XtmocUz67Rg=;
        b=HUF6g4Svs5Iwm8cYkRtXc7mDTo2VgGEroMNxqFz5tzbTA4Ja67zFPtRsAQRdQnIKLd
         tIQ1JN0go0hGKJ7EUlTlYAM/U7TtrrMW15xALdAhhwA93SpS1ZyILVvmrkN+qBdJybj7
         euIca5Mr2lUgLt8TI+yweeZrHcl7f5ihO7/v6/FGj8S0Tjb7LUrEQD7KQEMO1soHZ/eY
         aD6pKUemoTZRLwvk0KajQIjcRsQ7o1waIzh5WUsM//wziSFOYm1PQAmqCkS+chTbhTcO
         IwaWiA72oq9iELCQp51Kqe2bvnx19W1KoRkXkkzVEyR3EGEnJWmq3PseMvqmHtfJgIra
         IiYw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533GiNyz+F0gujVeg4XsqBE7ew/ODfx2+4n2U5q7fuR52tS1MdUx
	mABB9AiHCzD5IP7kosB/Nrw=
X-Google-Smtp-Source: ABdhPJwjMRpgE87u52tT3wzpeji3GBlidSJkM0PMMMBdpo4XcSeSFloxh5bfN4bHQMpeAwT58+Eacw==
X-Received: by 2002:a05:6402:35d2:: with SMTP id z18mr18710772edc.282.1628334108004;
        Sat, 07 Aug 2021 04:01:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:1644:: with SMTP id n4ls5254409ejd.7.gmail; Sat, 07
 Aug 2021 04:01:47 -0700 (PDT)
X-Received: by 2002:a17:906:1691:: with SMTP id s17mr13956288ejd.297.1628334107023;
        Sat, 07 Aug 2021 04:01:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628334107; cv=none;
        d=google.com; s=arc-20160816;
        b=HrvhvcmqIxNqbBR2cell4x8uY15TUnfNBGROy7QUeFNqrZi3uCzlMwCYtNBonB6vhI
         myUXTdj2eKMygtmb0/7o7ZeAYI4hIbIVoh36YjgTgT82C+pUvUANUbMne4xmmiBmsGpj
         XpASsL2QwKD6WP/W4Jat3VU/7FCUVa8UEV5LAHOkHUxdZxyopv+EOb9UkezmVVQ+/aFX
         6U+fd0avxo8IkuBR6SXWfwGA2YgqAgdn9cbZ+6v8y+ZuhnD5TIIbgKuGh4QuUR6HI2nN
         S2+lQ9tU55cykheAN9PAL41D5uzov0CBB4kwvZzkFe7nYaPKHxKDQ+LY8qlobg6WKg+4
         yXzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=GF2A7D7Zk08eDl8dLFG549xofD1EZev+abxefEqBVEw=;
        b=yNcjRb4T6pkBIJkjlab1Sz0uwN2SXIlq4RHKrd7KNCgWoMQI3N6Bs0o2jlepmeQPgF
         c8EoowgY5dwug5CWdosaObslelHJcvKoTu7c80I6h3V0kegzi9BWE9FDxUSdEkmT3p9w
         srPiqT3Gg1yjmk0ucliF4J1m5D6IC5GDXHOQM35UuHD95PV4C3xdg6jEOfzhEdiLmYAX
         0Azf/2IqQFk8WCLKt9Q3gXL9EJAz/mRnk3LObsoghWrTtMY2BFf/YJ9sYuV7WVSkrIWD
         wn9YkV4p/nhqGzA2KaXIkO03Ce6IHiZaPRX5514ccwilxxaoY5rtViYrYeyCB2WUu7w/
         H8nA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HCEBgbUx;
       spf=pass (google.com: domain of maciej.falkowski9@gmail.com designates 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=maciej.falkowski9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com. [2a00:1450:4864:20::131])
        by gmr-mx.google.com with ESMTPS id w12si724428edj.5.2021.08.07.04.01.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Aug 2021 04:01:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of maciej.falkowski9@gmail.com designates 2a00:1450:4864:20::131 as permitted sender) client-ip=2a00:1450:4864:20::131;
Received: by mail-lf1-x131.google.com with SMTP id c24so20090579lfi.11
        for <clang-built-linux@googlegroups.com>; Sat, 07 Aug 2021 04:01:46 -0700 (PDT)
X-Received: by 2002:a05:6512:951:: with SMTP id u17mr11043648lft.392.1628334106522;
        Sat, 07 Aug 2021 04:01:46 -0700 (PDT)
Received: from 192.168.1.8 ([212.59.242.58])
        by smtp.gmail.com with ESMTPSA id x12sm1005396lji.117.2021.08.07.04.01.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Aug 2021 04:01:46 -0700 (PDT)
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
Subject: [PATCH v2] clang-tools: Print information when clang-tidy tool is missing
Date: Sat,  7 Aug 2021 13:01:16 +0200
Message-Id: <20210807110116.7985-1-maciej.falkowski9@gmail.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <CAK7LNAS=tyS22vk1mO7uCuzZ=YuzgByzC4Aix9JwugdV3xpr-Q@mail.gmail.com>
References: <CAK7LNAS=tyS22vk1mO7uCuzZ=YuzgByzC4Aix9JwugdV3xpr-Q@mail.gmail.com>
MIME-Version: 1.0
X-Original-Sender: maciej.falkowski9@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=HCEBgbUx;       spf=pass
 (google.com: domain of maciej.falkowski9@gmail.com designates
 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=maciej.falkowski9@gmail.com;
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

The patch adds more user-friendly information about missing tool:

$ ./scripts/clang-tools/run-clang-tools.py clang-tidy ./compile_commands.json
Command 'clang-tidy' is missing in the system

Signed-off-by: Maciej Falkowski <maciej.falkowski9@gmail.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/1342
---
Hi Masahiro,

Thank you for your feedback!
I am sorry that I haven't replied for so long.

I agree with your point, based on this I would like
to propose a second version of the patch.

changes in v2:
 - Solution has changed from LBYL style to EAFP

Best regards,
Maciej Falkowski
---
 scripts/clang-tools/run-clang-tools.py | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/scripts/clang-tools/run-clang-tools.py b/scripts/clang-tools/run-clang-tools.py
index fa7655c7cec0..27ebe2f2069a 100755
--- a/scripts/clang-tools/run-clang-tools.py
+++ b/scripts/clang-tools/run-clang-tools.py
@@ -67,7 +67,14 @@ def main():
     # Read JSON data into the datastore variable
     with open(args.path, "r") as f:
         datastore = json.load(f)
-        pool.map(run_analysis, datastore)
+        try:
+            pool.map(run_analysis, datastore)
+        except FileNotFoundError as err:
+            if err.filename == 'clang-tidy':
+                print("Command 'clang-tidy' is missing in the system", file=sys.stderr)
+                sys.exit(127)
+            else:
+                raise err
 
 
 if __name__ == "__main__":
-- 
2.26.3

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210807110116.7985-1-maciej.falkowski9%40gmail.com.
