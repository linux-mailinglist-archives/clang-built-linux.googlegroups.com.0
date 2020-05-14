Return-Path: <clang-built-linux+bncBCE55NORZABBBGET672QKGQEJZWCIIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 477FF1D4142
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 May 2020 00:43:38 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id z16sf225864pgi.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 May 2020 15:43:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589496217; cv=pass;
        d=google.com; s=arc-20160816;
        b=yMt5Y/ukdGPVj4jbfpDDC9BGoE4pSPLv7OpHMfP05pyxDTtt4ioAw/L3vvHlT5O25E
         1b/RByiyJAAr1jvNtIEVDc2uYQMeHziVjwKNthC5bq3dPPzalC8cfJVUOZWZODmbRZow
         I/sNRuSk+cl0I1jcd13jtzyb/KS2uys5oTnSlehRbrmjN/4/D5u+LsEcPTchBduKTbct
         6Aq8lm4csGbwoRVhBbTf6iy27O7TcpyX+p7avgzfFTqwwNuUlKRJkXWc/pDu/m8nO+ya
         oMPN4wZFXhZW/MOJQGFAU6sQE6/wVEGr9Cyn8Kehb7lmybGOrf/BOA3EgE6P60RL7Kgz
         teBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=CiaYYmzVaP2lJILR2+Us8SYS+AAWAPISglE2+NRp1l4=;
        b=SGIFcgZ1cTtOPFt+maGyt3VXWOkX6gXCbuteNoMAtqKBdMheduKaz3Np6/EJbKkIN4
         FB9h5gmz3KtnKirWd65pkjbw0QbTGHuLPAdTUwJ+coI0yVsQhJvbP+pPe4sRlKeB6Czo
         g5jzN4PX7HimA9OjZvG/WZiTtFt/gcOLo1XXAM8pcKiFGac2rwzl/gsYzjtw1FBsQWGF
         BEhCTQz0PHHiB8SvZ2xwXVwDOt55g7upsAPemud0qXfgKPYMU83SnQzyDn585SyfyOOA
         sZ7MJsNJLczoCtJD7Tkglrctd+fOzaA+n/5zpgIkpICGjH/itYefH7y7BLF3CoU0/DVt
         B81Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vgRWK6jH;
       spf=pass (google.com: domain of yshuiv7@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=yshuiv7@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CiaYYmzVaP2lJILR2+Us8SYS+AAWAPISglE2+NRp1l4=;
        b=lg+Ry9XCIisauBjh6VvbF28fj8e6OqB4XMs1wku3DxbqiCBKQH13q6LtMBUsqA7ttD
         VFsF+V2Uzb2KD4IxLumcg4/0jAITfCm9/0tseJWl3fqB734LwivYJekxV+tHRvwQRC3S
         eewh8OZbBfArTqY2wYIdIZFBHHmAWOvfuILnnycak7s4Berh0est3FZYFwwCYrPZra5o
         ltL5PLlHxPj4rG5pc2Y0WxAx/Ur6rjFFa+3dj3HVCw+mpiyhuaJmrsR22I3YaXnmkOUi
         e0r2VWF7XbIgYcxV/HZNEIyHwbg5ldg6Pod1AOhHeSHUCg1zgW5ySQxkUaN57FqYkUoS
         T5XA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CiaYYmzVaP2lJILR2+Us8SYS+AAWAPISglE2+NRp1l4=;
        b=ZgZlXJwzH/idpQyBixoPYkzjMb+ZSOa3ThMbb4oo0DS2hTYh/4k/KsoLWX+UaIPsgf
         N0saRbRowJMJf/bN9VgCAGuru18/go29u0lu9S40QaVUm2i5+bJ6YqCeKZLY/pAzoCKf
         l6Q0jOJOdBPLmVwWGY8gAFjXyKE3om+fuhIvQhkx6frkpOeDpDPG4yMPnMUrvByqwaA7
         1auCdUD6nasokRVDkQtfJzegCHi54df0lh2sY3FHXE/SZSiHBnSDu/7KyyLTWyxAuH4X
         /wG49zwdliNhfZbNnCM5FE40yCxxb7ZYkwip+2DxoGmYchaUS/CfUDJhrkRKOknlKt5A
         1gAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CiaYYmzVaP2lJILR2+Us8SYS+AAWAPISglE2+NRp1l4=;
        b=TmQTImGBhyIQNBWE4baCFUbI4mkrLsixYNAgN2Y1cr9VsdRmjLotA1TA4jF1FS7Zk3
         W/giWAYovB178Fma8fVhZYGOW50zcyuoCzvAolUL24LcZV5iR5I3DgErk6YHhes0Pivv
         SY2BptNesWUwz1o3o2L9SwoBEYo/X3XHWfoe63gSDd8yRWG/ynhZ9fkI9qqup46BPAPl
         cyE18w1TnnqoppnlHlkqqLCwq6uOyOnmcor1/9dSVS2wiwxTAhD9vbXjRRA9VKP1wT+N
         M8gj8TqxESW5kTJGMx+fZ72H3Sd/XcTtz/fsG+nWoRLy3tOqRBxzcA/xWfP/8wNWcFWx
         UUZg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532GsMPG94z4/63pGZg1LciL5fSrNZbBm82ewUEd67XwzWCbzfMx
	xY67becYJN9KjhAAZF+jwSg=
X-Google-Smtp-Source: ABdhPJzEbLEUkngN5fUAGAJ3RtL+gp4XOvcdjQRaZ+aaNRB7d9yMd9AyKVAK7VbFt/euWtdFqxaN9w==
X-Received: by 2002:a63:1e18:: with SMTP id e24mr328754pge.296.1589496216896;
        Thu, 14 May 2020 15:43:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:e116:: with SMTP id z22ls76539pgh.9.gmail; Thu, 14 May
 2020 15:43:36 -0700 (PDT)
X-Received: by 2002:a62:760f:: with SMTP id r15mr811703pfc.236.1589496216467;
        Thu, 14 May 2020 15:43:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589496216; cv=none;
        d=google.com; s=arc-20160816;
        b=YqUNKycOvIoTIOok8it5ePWVXCQyRrn2cgUc/V8/Elfize2hTwhgLc2oH7RlZ1Wpoq
         uFvjUg0UVS49igpvI/Gb46LqHlhKSt71mZeqIWeB6cOE3RhzR2ZOo+mM416IABtJnhp6
         72bPGrBB3cS6JtOiPPD3gEturoY7WaMekN0vkyTYKxD/uiNqD/PhJTwW8jH7oL7D5hOh
         wsAur/EKQ5Qo3sQQZ5YgyGGAnt8F9QhDrSPUhP4iccrqfJnjTwKu0o/Qc8XI6Pq9nIjQ
         i4KHBklCZSOt001Y/7jfJ6Vd7RVR/uVURSzRpmWBhFQQM3z92Y/Pd621cdD/wvN1TSwV
         Jffw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:subject:cc:to:from:dkim-signature;
        bh=z4rDFOjoDHp3m5X99/G3ebYd8yR50/aoIzPUOG1GLcs=;
        b=s6rJZS5WEcXZtXxuG7S8rynd2jzp0gmYv4MzgxIMutD0HGCYUAf7P6REzoIEUcHYy6
         iax5wdmR6BJJgC/eJWpLwK3z3hjTID1zvKLWk10uiDpk3FkQ/dZbvOcmESTHHmaXohND
         1KkntmXd3cxnXfhxoONMJe5q5YqzxIuRSmAbrZ2LSpoh0GciT48m+Vxxo4sA8036hzf2
         Gi0xAmVSobs8hPle2Odl3KC9uycvIQI3+VI8AmOtLWcZ48QHNjFU8t14aASUAyKkqkHH
         4OfdCeq8geIlUHTv8zgZ1ic5v9KS9IjzR3m39/ENyiSRonPv7UYeDyBM4dCosCPQZ7XU
         Oo/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vgRWK6jH;
       spf=pass (google.com: domain of yshuiv7@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=yshuiv7@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id q34si18741pjh.2.2020.05.14.15.43.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 May 2020 15:43:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of yshuiv7@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id q9so98417pjm.2
        for <clang-built-linux@googlegroups.com>; Thu, 14 May 2020 15:43:36 -0700 (PDT)
X-Received: by 2002:a17:90a:cb09:: with SMTP id z9mr264097pjt.120.1589496216213;
        Thu, 14 May 2020 15:43:36 -0700 (PDT)
Received: from localhost (cpc158779-hari22-2-0-cust230.20-2.cable.virginm.net. [86.22.86.231])
        by smtp.gmail.com with ESMTPSA id mn1sm69221pjb.24.2020.05.14.15.43.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 May 2020 15:43:35 -0700 (PDT)
From: Yuxuan Shui <yshuiv7@gmail.com>
To: linux-kernel@vger.kernel.org
Cc: masahiroy@kernel.org, michal.lkml@markovi.net, linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: [PATCH] kbuild: compile_h: fix compiler version detection with clang
Date: Thu, 14 May 2020 23:19:05 +0100
Message-ID: <87imgykunh.fsf@m5Zedd9JOGzJrf0>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"
X-Original-Sender: yshuiv7@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=vgRWK6jH;       spf=pass
 (google.com: domain of yshuiv7@gmail.com designates 2607:f8b0:4864:20::1041
 as permitted sender) smtp.mailfrom=yshuiv7@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--=-=-=
Content-Type: text/plain; charset="UTF-8"


In some setup clang will print a line about CUDA version it detects,
like this:

    Found CUDA installation: /opt/cuda, version 10.1

So grepping ' version ' matches 2 lines, and results in a broken string in
compiler.h, which doesn't compile.

This commit adds a "head -n1" to fix this problem.

Signed-off-by: Yuxuan Shui <yshuiv7@gmail.com>
---
 scripts/mkcompile_h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/mkcompile_h b/scripts/mkcompile_h
index 5b80a4699740..8e6b4fc6fdd9 100755
--- a/scripts/mkcompile_h
+++ b/scripts/mkcompile_h
@@ -62,7 +62,7 @@ UTS_VERSION="$(echo $UTS_VERSION $CONFIG_FLAGS $TIMESTAMP | cut -b -$UTS_LEN)"
   printf '#define LINUX_COMPILE_BY "%s"\n' "$LINUX_COMPILE_BY"
   echo \#define LINUX_COMPILE_HOST \"$LINUX_COMPILE_HOST\"

-  CC_VERSION=$($CC -v 2>&1 | grep ' version ' | sed 's/[[:space:]]*$//')
+  CC_VERSION=$($CC -v 2>&1 | grep ' version ' | head -n1 | sed 's/[[:space:]]*$//')
   LD_VERSION=$($LD -v | head -n1 | sed 's/(compatible with [^)]*)//' \
 		      | sed 's/[[:space:]]*$//')
   printf '#define LINUX_COMPILER "%s"\n' "$CC_VERSION, $LD_VERSION"
--
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87imgykunh.fsf%40m5Zedd9JOGzJrf0.

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEL6EJkr0WlitWahBy06RAW+bMF/QFAl69yYwACgkQ06RAW+bM
F/QVYA/+Iqa09i83Gi0bUr1ZSpujLj3Pke7A3qzGr1WxDx+WgeUsN466dtbmo3x3
Gvxocu+lzO2fhJuG8/Lk3DcNUrpBaxi/qfTq5SXK0IMQmAbhIQRVVQw8Vz+C9nuk
IatyTz5sgaBpVZlQzOs81bcfcF3Q1jlP57okNbZLIkhDk74seIRFddiY3gR3TNb1
3VUQDmoPT7Xo0N7whzERmfzCPlrWZphDT8nh6OwOt/InJJPvB1i8235ckCZbhIty
KFYH1nxB19QkURZ12zGxmnHJeGEXTc+Yy/NcpNH/lA1h2IvcD9qmE/E1TBoueiPy
MrgxczwhPgjhzeNv0AwSK0JhjWEDl3Jg2GXNhngIckfn+DrEZN4WreF5fNZNctqs
4+GOKreqGvJqXL9hUF6Pjwv/ef4zi3Py2qkJEQRxATPEf8Kk8t2Ok/Xkf+e0uRCL
tWVlCbHtkotEjycImzNbyRGoquIfIamuidtq+k5Bs0OIGUETVK6hEng45F2PQ27E
YHo7SXKDeQjrHHr/05ues02xecf0JRhvn/vBr8E/uddXAPEgYn25P7N5Al4KpMiV
U7TlikB/r6V8IUfQjqki9qGaPmMGp790QNQwx/jR8hOPZ5aBN57qTcRM/NSs4vgl
RFTwHAK9KrWpRsrU9E9s9BWXgGdTwKOjzAZpLX0jygr2iJXVjP4=
=WfVw
-----END PGP SIGNATURE-----
--=-=-=--
