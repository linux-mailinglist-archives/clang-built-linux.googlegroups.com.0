Return-Path: <clang-built-linux+bncBD5ID66FXMARBTO4TOCQMGQEXJTNMWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F9AA38BA58
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 May 2021 01:18:38 +0200 (CEST)
Received: by mail-wm1-x339.google.com with SMTP id u203-20020a1cddd40000b029016dbb86d796sf2965765wmg.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 May 2021 16:18:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621552717; cv=pass;
        d=google.com; s=arc-20160816;
        b=bc5Btd5QZVoLQvXodhX8q0tFP+MBqxv0uMTvbTFJOFTS7lV2K1WH2gDZYvDXo/12JH
         jZl8PT/dXTHXeryxuVfH9lmtL94MiDKbd4kVzXdSJjVlCquQtDyPoq7R4JcOa7zCMy4U
         NQuEOTYE/3vExJd3F+mdQFvW5JdOo1L/DQ5+0H0iM7nN8UWHfgUdV63GgAaRA+BgY9Am
         F9JJbin2E7xg4Rjk12giqWImegIs1xbiDPn2gGMCzNBnxSoazzGdzfrBJqSRfINCCpYf
         972OdKXryu2FgYC7KW7OFphqkUD6Qyb03DphqRTqhl8jVeLUM6LCaaV9xEe0pch6LWuF
         ll5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=p3JRE/R5gJzB43WrrIo97gumeFq/qp/hka1h+uOHSkU=;
        b=pUb39jFFlS0fZowRgGKMaMTbUZ3m7GfcSIWSrOgSHyZ2VL94WSNVVVZwpYS/V7roLV
         kwQNQnmnF4NczUf0CMmonW5Z2n3DShV+rsMyUrDlF19Pqh5DDSLemPDOLx4/X2fbMh0V
         Ow78VA/uZKBDS/Wlj0Mi/TvXjGJh5c5nmV14/VmY61NTQNcY8ZHD5K0agJh8Id33p3SG
         KyTYVT+oGuaBLyeKSJfz7ZIQmOfl7jBrmqKFRUbjYsZpkIiexQ0XqZFAqJ8DkydTFGyQ
         Nmf2BkO+m6xf+S/V+nquHuUrQ9mlnLf/GmaoEHZBGKVrZM12HhAdL0hvNZwwTN2Yl46V
         udxw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Guu6ytHT;
       spf=pass (google.com: domain of maciej.falkowski9@gmail.com designates 2a00:1450:4864:20::22d as permitted sender) smtp.mailfrom=maciej.falkowski9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p3JRE/R5gJzB43WrrIo97gumeFq/qp/hka1h+uOHSkU=;
        b=cd8xaXlwkAQhgqLTREL1UwP0hFeBF7r2xXHZ3wHDvVp8WFoVspP8vdPND2kR95amux
         P9mVvph6Nd++XpblZyTN6dL8wXyFQAwGBp3KiPKnlUoNIrlhlOGc4kxq1LgRmMWF52US
         ir07dSeytOuF9u0Oz6xdz00WnAwtmgxzBQfzCNhxNMWk2Q5/iHTqx2XqH2/J7+9bJe0H
         pwEHkKBQmnI4I/Q0Aoh5J4TwQqpxylBn88Nqrz2oIBQ5T9h1cQU5bD7kH6cOxT298q1v
         GsFqtHJtY63F60X8/ECDf3LlgSqAMTtH4Re1Pi4vClqNN44JbW7yVJhO66GYpxrGnaIU
         3v0g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p3JRE/R5gJzB43WrrIo97gumeFq/qp/hka1h+uOHSkU=;
        b=IifU1cTO8PSJ3kD5J4AHv9DzC+cPbfJL1B7J+dJrqlvCTMJExASuyFClfk7FtFqsTy
         SPMeAARqm/l+cEdYGj0e+0sJCMqRZdwoSk8+VnhBGXYLwnOm2r59vMbXEeofBsZCvoVX
         OaWEDBvtloIvvcAtUg99Hizx/I8TX8q2KboBWHlp7kl8X/zeIqALROk2H3Jem8LKmFFP
         S+jLeM6FGjifgcY4D6RYfuwOk2NzyDcMEVsF90dNOEKZRkkWI2sJ37ZqSIBndZqNOuyl
         VTlkiqEp8tC5Wgf2/yyfegr/dm8avFc34DuKhR3HnQG1IaazYr5A7hRNJno/P+02wOUx
         HdzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p3JRE/R5gJzB43WrrIo97gumeFq/qp/hka1h+uOHSkU=;
        b=TuN0gJjNSa2uLlk6L76jw9rA+mehn+ulNHnnqswfv/Kr+ldwiX4Jue0/iiyAGuTkoH
         JQD2vWwQ/HRky9I7hi8pc8DpHhDr4XjydsCcd61AH/jl1NXzc8jLgMQLth9TxraVfnac
         ecuUPihyIjd0SGzeW3Zqql01faLfgXBxquhPejgf1cEet4UUUZoKcJRDKVVOjSUiK8+p
         LzHx+6iY4GX8/693ezAkpxiZfPrVtaDqLnYILxlo2yrsAP99qzESJYzX5QDuKwgaUkLk
         hrV3VUGpMVnD//7Xn2zq1KspjB3me+NJQ7XPa9aZWX/MZ7dzYyhx7zl7CJkaVwatz14Z
         Pouw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530MrSx0cnLWTXLra+/xncYDRnZ6/UK5e/j/rFqYsGEhAP+OCma+
	tY8GvvcRefh80XuabeIepMM=
X-Google-Smtp-Source: ABdhPJxUDQlV7EVKbOCnnGx7c/CAx1c7DXNO6RuU7j+85bWQfaWh2MIb6EXSDCTDAYLCEuxXgp4Z8w==
X-Received: by 2002:a7b:cbc4:: with SMTP id n4mr6358346wmi.153.1621552717833;
        Thu, 20 May 2021 16:18:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f844:: with SMTP id d4ls2109447wrq.3.gmail; Thu, 20 May
 2021 16:18:36 -0700 (PDT)
X-Received: by 2002:a05:6000:511:: with SMTP id a17mr6408829wrf.351.1621552716915;
        Thu, 20 May 2021 16:18:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621552716; cv=none;
        d=google.com; s=arc-20160816;
        b=K4vMMIWtu/X0p1lKPPSZrYu590CIbicTIP/g8mRuw7wWpSsJAmR2XO4XzS8g1OMSNd
         wfLp3D3ANNqse/XsKyX3xKQOB2rfaRv4avyXy0JPe7St8zEBNd1hLKIMraJv9CtdY1RT
         yDTd2fOTtmiIMzroOb2wuS4uzVUrNz0J7StKlw5a2+lwUogtjdboTweI8Yu9C5iw1D1i
         +IVw/xVILjsfCevzgv7j0HF1uToQ5xDWnxtfwBFLJntqQ8FVHD6JZLeddXNKdUCF17Ff
         +iJEclU/FtaeRiT8OB5egTgBliDFFQl0IK5BSYAuwi4wvFaDFYFxzNkDDcedPg4gC8ov
         QoEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=I39s4AfTS1FlK9WbJvre2lj1XFN86rEIo1G47wYSeiA=;
        b=vK8yVzCmf1CNEq7YZLIejwSpyIsYZnhtbIp5o0//Y1TRBd8+fStXBHDtEmFNUUhbrI
         k8vSL/rj6XtinnX0dSkALz4nDYvuUd0XFf2BdHkIUciel0zr4UXnQnDQuxrR6WwZy7sU
         Pij0alPVQEoLebEoabuUqnY9DHUbnbnsOjoCh92SK9/mL1fg3duAuPveNFV0+0FXs866
         DxjIkCwyeWC1JvJUS8TIhrhKpJkfy2cAu6J+6N+cHg03sCxY5Wlmbq2ltSheU3yIeONi
         E60m80k1UoKk1NncxLUYxvDdLFZBWZ7B5N2y6bvQDgLshbDf3F0ag32jSN4UYqWaGiTM
         84Tw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Guu6ytHT;
       spf=pass (google.com: domain of maciej.falkowski9@gmail.com designates 2a00:1450:4864:20::22d as permitted sender) smtp.mailfrom=maciej.falkowski9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com. [2a00:1450:4864:20::22d])
        by gmr-mx.google.com with ESMTPS id s185si167384wmf.4.2021.05.20.16.18.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 May 2021 16:18:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of maciej.falkowski9@gmail.com designates 2a00:1450:4864:20::22d as permitted sender) client-ip=2a00:1450:4864:20::22d;
Received: by mail-lj1-x22d.google.com with SMTP id e2so15493302ljk.4
        for <clang-built-linux@googlegroups.com>; Thu, 20 May 2021 16:18:36 -0700 (PDT)
X-Received: by 2002:a05:651c:200d:: with SMTP id s13mr4595040ljo.254.1621552716457;
        Thu, 20 May 2021 16:18:36 -0700 (PDT)
Received: from 192.168.1.8 ([212.59.242.58])
        by smtp.gmail.com with ESMTPSA id h25sm432761lfe.3.2021.05.20.16.18.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 May 2021 16:18:36 -0700 (PDT)
From: Maciej Falkowski <maciej.falkowski9@gmail.com>
To: natechancellor@gmail.com,
	ndesaulniers@google.com
Cc: clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	maciej.falkowski9@gmail.com
Subject: [PATCH 2/2] Makefile: clang-tools: Omit printing stack trace when KeyboardInterrupt is raised
Date: Fri, 21 May 2021 01:18:21 +0200
Message-Id: <20210520231821.12272-2-maciej.falkowski9@gmail.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210520231821.12272-1-maciej.falkowski9@gmail.com>
References: <20210520231821.12272-1-maciej.falkowski9@gmail.com>
MIME-Version: 1.0
X-Original-Sender: maciej.falkowski9@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Guu6ytHT;       spf=pass
 (google.com: domain of maciej.falkowski9@gmail.com designates
 2a00:1450:4864:20::22d as permitted sender) smtp.mailfrom=maciej.falkowski9@gmail.com;
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

When user terminates the script (also implicitly through for example
`make clang-analyzer`) by using
Ctrl+C (or sending SIGINT more generally) the KeyboardInterrupt
is raised printing stack trace of the execution as shown below:

$ ./scripts/clang-tools/run-clang-tools.py clang-tidy ./compile_commands.json
^CTraceback (most recent call last):
  File "./scripts/clang-tools/run-clang-tools.py", line 74, in <module>
    main()
  File "./scripts/clang-tools/run-clang-tools.py", line 70, in main
    pool.map(run_analysis, datastore)
  File "/usr/lib64/python3.8/multiprocessing/pool.py", line 364, in map
    return self._map_async(func, iterable, mapstar, chunksize).get()
  File "/usr/lib64/python3.8/multiprocessing/pool.py", line 765, in get
    self.wait(timeout)
  File "/usr/lib64/python3.8/multiprocessing/pool.py", line 762, in wait
    self._event.wait(timeout)
  File "/usr/lib64/python3.8/threading.py", line 558, in wait
Process ForkPoolWorker-6:
Process ForkPoolWorker-1:
Process ForkPoolWorker-5:
Process ForkPoolWorker-7:
Process ForkPoolWorker-2:
Process ForkPoolWorker-3:
Process ForkPoolWorker-4:
Process ForkPoolWorker-8:
    signaled = self._cond.wait(timeout)
  File "/usr/lib64/python3.8/threading.py", line 302, in wait
    waiter.acquire()
KeyboardInterrupt

The patch handles the raise of the KeyboardInterrupt and exits when occurred
with code 130 as documented in: https://tldp.org/LDP/abs/html/exitcodes.html

Signed-off-by: Maciej Falkowski <maciej.falkowski9@gmail.com>
---
 scripts/clang-tools/run-clang-tools.py | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/scripts/clang-tools/run-clang-tools.py b/scripts/clang-tools/run-clang-tools.py
index 38fc311d2e03..eb0e0ecfce24 100755
--- a/scripts/clang-tools/run-clang-tools.py
+++ b/scripts/clang-tools/run-clang-tools.py
@@ -77,4 +77,7 @@ def main():
 
 
 if __name__ == "__main__":
-    main()
+    try:
+        main()
+    except KeyboardInterrupt:
+        sys.exit(130)
-- 
2.26.3

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210520231821.12272-2-maciej.falkowski9%40gmail.com.
