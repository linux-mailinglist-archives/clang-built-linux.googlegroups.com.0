Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBMP3RHZAKGQEQOAWIBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BDB1158C6A
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 11:10:59 +0100 (CET)
Received: by mail-pj1-x103c.google.com with SMTP id u10sf1288455pjy.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 02:10:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581415858; cv=pass;
        d=google.com; s=arc-20160816;
        b=trWWib//M6KCSbWdMHtQZyS3NFaVGJ7qvaSDr4NURkhuQigkGVUq49jAoyXFwBcjmU
         Hs3EtyBhsjnVjexYUjqThyDX/CgHWQ3u2IxaZ6K4rpUvIs62ZXPIEbm4ANxXIDMX+MFE
         9Pbri5RVaeVDm7Mh4ggJuaS9MAYqnMEgxfeNMS2/RzADtGIAodg0Jw8iQZVGgHyvDKyA
         5GjU/qthuCoiLYN0HbRmSIFOyxmncwvIoBdn64Tlf5emww+xFPuaOgamGFBUYmPB1BeM
         upgmV1XFpnLQ55PpQ7BO6ix1GLWZvl81YvIIiKyDLaMGoB5NfFRPKhHNFM+toZKJQjBx
         NohQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=p0jf215YIT9JI/nj4mb/30TmU2Jcejsj4YnnZS/ifuM=;
        b=r1XcJNBIhD1G4HQ+on4UaclqOncQKQqcxwWRD1w4bIV61kYxohQbbHqtU4R/VTlETA
         5RWNvaqpabHf1/gsTSqTCqqdhoplJ0m5PtdLxNYhsCdPTYgVk0o+0G371PMUZdFyR0Gy
         l/78G+HvYlFRYtYL9DhvGRWype2SYlyyJuzxb8fYGiFJlj5Fn6a387DzSC9+xO6Go2X9
         nkxGRIaRmvQ1pYLBpcy3jdU/PFs/8SFao7aLEphVGwMhotyO/Y5HLyUzN9hpMEonGc6m
         BNkxlKBExgi+LX4l2DiJBKONBlNOxXXZKAxi6dAemlGYWmGWVHn31oy+K294vE3IaNGQ
         7V0w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=W5hMvYi4;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p0jf215YIT9JI/nj4mb/30TmU2Jcejsj4YnnZS/ifuM=;
        b=WBajUxNoN62kdfOAW+Wm9T5NuhW/ioQet5vMwQt/goT3o/xlKMsiqH4Hr+zAF9TMaz
         QLSdcbpM0Bdbks7JDk8ZuXaGsd6AidwBtLG+OIaOf3dJ8FfVUY/HGKjgv7oTLj5kS/Gx
         9W4ll4EZ388/kcjz5DU/+bQcsdSR18laDtuyV14vadezUf8+ZrYXURJ4xlLsMuXZAeTf
         ucu0ufORejKCKIQXFCdi7qrJlMAPvwHV0tYGxAyuWfQ4qyuZUREKQoIPOjZbzqCVNrpO
         ssu+sVq+x828XN928Hlp4rHKUdF0FlVFYC3VvcqY0EUAVZW/9zIJPBLwkwR5AWvtNZFl
         bUPg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=p0jf215YIT9JI/nj4mb/30TmU2Jcejsj4YnnZS/ifuM=;
        b=HJVxzkYOCSL5XaaLCikb0CpSLjH0P7bYEZre2b0jAd4kue3TGB27KCNGYbHy7dyP6X
         vvqzHsUHioZnOyKxBEO/i6QhM+/4aA0Kdy5yj8hrk+jz8lrTNtuJLPKXXVk+iezktURF
         h1cLQKOVnduTDlLpv0IiM2fR6fbxE56OzVC9+pMjR5KELjfUfFUmpJfXTobTLl5VVAwR
         zmbtsMLJ/2SHrdEOvRr5ENh7Kg8bNUCE55sVUchE8LJOiRLpV6VT1t6NE5RgBWIPNI/o
         31nUgH9g6M59fj54GRaZWl5Yi+rr2n5VcAaNh93sWIcbc28orY9d8sUNgEvIqz6FttPd
         NGQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=p0jf215YIT9JI/nj4mb/30TmU2Jcejsj4YnnZS/ifuM=;
        b=f06CarNX1TQmgF9KXAgBZ1ZmQScsB3BI0SMg1d/b23Ek7FO3WE0jd4avmZ5cNQrKEu
         5Bc1QvHgCUXQz1DCWc2YaYtV/CbXBYjClFCWbtaQA/Jezp2eAuEw0v3jQhB+RW66tN/P
         oDOHLmQhELD4OikUskZruRVluVlaY1sEz9K0ho4lnGsvS58L4L4g6QlKdqJvDhhY3DMj
         73DO1OHFyyOTcZMm/jKC/G68edVuMqHZDPRDLZUtIQAMDDpldJwdcKKDFzUduLc8N8T6
         YAEQ+LSgONgaTeLWfxuNnDC2DW5G64gVixN4xfC/6LtfpEWkKBtws9Nzlh6DCjsUgjC5
         rdBQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXkDEfujMS1ztrMV96vI9Lx8p8wJUs86I1PusdZZ7fmhDRNVwBQ
	GX7fp5LgiNZsq/Y5ZjT6J3Q=
X-Google-Smtp-Source: APXvYqx47jbkkJgRyCVM5YxNUV/hm65o0EJX5mpMnh0QawqKWAlcnl4pFeS2Ka4A4dYsl5DIMHjo4w==
X-Received: by 2002:aa7:9d9c:: with SMTP id f28mr5754078pfq.20.1581415858040;
        Tue, 11 Feb 2020 02:10:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9687:: with SMTP id n7ls5500048plp.2.gmail; Tue, 11
 Feb 2020 02:10:57 -0800 (PST)
X-Received: by 2002:a17:902:bb93:: with SMTP id m19mr2547984pls.310.1581415857571;
        Tue, 11 Feb 2020 02:10:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581415857; cv=none;
        d=google.com; s=arc-20160816;
        b=vI8bmCM9GmJSS+EPHLzWQT3yioRDE+CDrLLJBhc+3pZnE/hR7Q/3ra3bmiyK/tpZ+q
         gGODIU2EepcRhxmN8tgdQMuYdnsd3j3pyt1eXMliO9Yz5QUASvSXKc6DqbZ4f4yySGEy
         EgqXymQaWqmTcsOGE52vqCN6B/Rgp2eLU/39Ye1jujk6b5NBxLPm22NgeZH5CpGtNdco
         2cWKsu+fo6/5HWLppAcNb1tIkQRM1epChwuOImGxEh5nifTyLs4NdmUJmoOt5iypyh23
         xRgXh6OfGAcWV7dq+yEpYkHah5D585Grgyifdrc3s1//0WqLuQ3xa2ytUEF/XREtK1s/
         GPIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=2ON6+M3oReKgbIqmdORIo38jYGvu3gUvQIdy75txpq0=;
        b=bIgIrpATSL2uzWHcVeXkJQ6isE11unicp1dtai4/X0V9Jvtv2Gi55TqjifMj+KIROi
         kpDm/lY95b7+8Z4Fn0/rUnRTWJv+MocHMeD0Iu4sl0kPsdfhCSkBvhzjY0jpUtQ4KOVV
         YZhjO9CFFxKWcESG/LIwK4HJCtZCbj7VXYMYLG/onfRpE3VG2oEMLpeg9kyyQrFFj/52
         guV0G5DxHiliioqY9lhWYw9upDq8eRXiv26QHsXX0Y8AeNPznyz/t2DeYqq3eU6IbVuc
         BCsJ148lZyzGERYTNJ7Z5njQqZ2dzITas4Xwg7fQqZTLr9fjGdyO78fNif62scTzq7hp
         bBUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=W5hMvYi4;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id h2si90262pju.2.2020.02.11.02.10.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Feb 2020 02:10:57 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id z12so5471154pgl.4
        for <clang-built-linux@googlegroups.com>; Tue, 11 Feb 2020 02:10:57 -0800 (PST)
X-Received: by 2002:a62:cece:: with SMTP id y197mr2583465pfg.9.1581415856993;
        Tue, 11 Feb 2020 02:10:56 -0800 (PST)
Received: from Ryzen-7-3700X.localdomain ([192.200.24.85])
        by smtp.gmail.com with ESMTPSA id v9sm2429853pja.26.2020.02.11.02.10.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Feb 2020 02:10:56 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: clang-built-linux@googlegroups.com
Cc: Dmitry Vyukov <dvyukov@google.com>,
	"Gustavo A. R. Silva" <gustavo@embeddedor.com>
Subject: [PATCH RFC 0/6] Silence some instances of -Wtautological-compare and enable globally
Date: Tue, 11 Feb 2020 03:10:37 -0700
Message-Id: <20200211101043.3910-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=W5hMvYi4;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Hi everyone,

This patch series aims to silence some instances of clang's
-Wtautological-compare that are not problematic and enable it globally
for the kernel because it has a bunch of subwarnings that can find real
bugs in the kernel such as
https://lore.kernel.org/lkml/20200116222658.5285-1-natechancellor@gmail.com/
and https://bugs.llvm.org/show_bug.cgi?id=42666, which was specifically
requested by Dmitry.

I am not currently sending this series to LKML as I would like some
pre-review before I get torn to shreds :) I have included the
ClangBuiltLinux mailing list to start plus a few other potentially
interested individuals. Look for things like dodgy explanation or wrong
approach (location of macro, naming, and such). I do not see any more
instances of this warning (aside from
https://github.com/ClangBuiltLinux/linux/issues/749, I just need to bump
the patch for acceptance).

Once I get enough review, I'll post to upstream for review and
inclusion.

Let me know what you think, cheers!
Nathan


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200211101043.3910-1-natechancellor%40gmail.com.
