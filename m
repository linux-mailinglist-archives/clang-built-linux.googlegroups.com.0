Return-Path: <clang-built-linux+bncBC7KRVEOTANRB2UV3CAQMGQEKB4DM2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id F3D9C323865
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 09:14:35 +0100 (CET)
Received: by mail-yb1-xb3f.google.com with SMTP id u1sf1549069ybu.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 00:14:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614154475; cv=pass;
        d=google.com; s=arc-20160816;
        b=JtJZ21rXbtgBPP3xrWD1/keWvkepzEcJcCo3TP2x7WAL8w2uz4pCjSDMLVuqKeVVCB
         DEWRPMmoBgSg/rMpw5xuIE5/jzfWAhTsHneDMdz1KeVrVv4mbCAJ8oAbveIRhf8oUxQq
         ue5R1dT67aH1AA0D87Us2eCJOtpxmo9WVztOv9Nj8wW73+yZiX3UcLvTyP3m6Xl4VnuF
         RdKBv7bWcvn0tHV5zYtdQyDY5t71cLf/I5ytX0+Vx+NMor2Af+MOkuvOQg4U9mhyZiLs
         pgb6iLShhglQmSgCKKGCM0TU57uAqxCnwFXrxnmVuFaw5YhtOURrYT5S46LtTdXXACaP
         T0ag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=L9DqL1CeOqO267n9nO69hy4ibBZGYhiv64q0wjp6aKs=;
        b=zzvCVqMB35W+G2I4VnAKpMKrBL1JzSmoq+34+3jtSSJHMW3tA8MpYiE9uIOTDvT+Fk
         G4PKVPOjPegVAa1BbHegxHuVZ4p1n1R/MdFQ3G70gBUKJh4Ff18yMal/nz4h6784AwVy
         zjA3w3fvL9Ec76Pe79kPGGpkZegqtDMFp1sc4Ic44y1wm+6MPhIuqcLC9om66TR45igm
         BO6tZSHMKK5AWe3RXTGNww+K8njg30Y2hg5LFv3opEtI/VNM+wO+c115zGDvOY0tP6Ko
         8hKFLwyi1/OJGGidfxAHzzXhYgz82SwJVHTNwJediKUtHu0DIn5nY/O1JSqPfA3szDbH
         NAtA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OsdFAKf+;
       spf=pass (google.com: domain of unixbhaskar@gmail.com designates 2607:f8b0:4864:20::830 as permitted sender) smtp.mailfrom=unixbhaskar@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L9DqL1CeOqO267n9nO69hy4ibBZGYhiv64q0wjp6aKs=;
        b=qJPOv7jTFf/9g6TzoK3YNYPGUjDybRe6bIfu+22cxa0S4DIEgTO9eq5zTSSqJ2JQQw
         mQlg+MuIKKBn+ekaDlysC4h8TP1kwJe4mRDV3eBLOBVfUMp8RK/wFW8lFVHWOMS1+4eJ
         uLr5nAMThT6jGSpwqZ9dO2hTQATh1f26EuWFQHTw9G1IYuHKRI3V8lKdqFadddSR0YWq
         AZqYlUX4Qt1HCOkIdiuNPsPQxxLnRYM45Y1ZHNfkAQZyrzAAEQo1LXelUz8g2VE+DcVr
         cVLIR9J9yuFYJ8G1T3oJLVL7iTOa3Y4bk3ONbzrKzjeyxRf4sivevl8Bvnz7PRC2zpJG
         e8pg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=L9DqL1CeOqO267n9nO69hy4ibBZGYhiv64q0wjp6aKs=;
        b=fC6Kq25S59hSV275E/mK8ZtPHI4Ms3FbdK6QwofcpAfJM13O3/9db/h2Qvi5mdxHV8
         e3pMp5AXbkfd8qB0NSi1DKxA17WtEfoKVC6bPfIlJhgj0rpaWEOi7UzLtIuMNfPmtRGB
         chZYrxDNLYSOmjGli6nrU3pGvBn0+Z1a+V3PQn+HxOFAAUSg4Ivy7EkxXCDB4sVBeimt
         U5WrvrzpRFfTOZ7DmYGGrSXVGbrGSNEFoLy4SgaA7qMV7Bv+3tHd/wA+4J971ZLni1rL
         3sdzWAz2pIxo63k1HvOegmwM7bF9z341GoH6j7Rg117kP5bgskeF1YvME8MbF27s2Eux
         Bz3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=L9DqL1CeOqO267n9nO69hy4ibBZGYhiv64q0wjp6aKs=;
        b=umKZObj4d+XFF3/N6HSoZuue/PHHvaKqz49nfyTVkRPsWx/JxCGFae0jaY/pwvtXKX
         N4J9iIPzNrVkZdQIeBu0wUKY0csgggQ43qDHqbxHkZRMiPxgpSdFNk8CmZTNQvi6k35d
         wPPA/47W1lgxOtCtidewNEkyeuwpFblYS5QGtDjz4H9wSYeS7De7L0lpyLW/D/wHna+A
         MJy/g6U4OOH87na1ZDOCdcrRnRPQ2lC7QcBnDU1xqogXF5Ces8sl8soaa9DVhW3isEq4
         1uZumFD1Qtgiuoj83bNr6BuSm5B+bD28awQV6IHN26uMAeiFIPnS0iL8Tv2giGl/jIBq
         QJgw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533P88uKbETVgTEjyKid/fMz+or43QfLUsyiBiaGWEVkT19Te5m6
	eV6XlsdQw8B2X61/PoH/YCo=
X-Google-Smtp-Source: ABdhPJzSHF0fYvJUSWFwMG4GXiA517FWIFOXoSNxJzY8B6JRdbFrHP8Jwu+8vmeS5+/ovh8Z2S3XBw==
X-Received: by 2002:a25:4981:: with SMTP id w123mr45526606yba.123.1614154474882;
        Wed, 24 Feb 2021 00:14:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:dc49:: with SMTP id y70ls591258ybe.4.gmail; Wed, 24 Feb
 2021 00:14:34 -0800 (PST)
X-Received: by 2002:a25:2d4e:: with SMTP id s14mr22128940ybe.316.1614154471199;
        Wed, 24 Feb 2021 00:14:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614154470; cv=none;
        d=google.com; s=arc-20160816;
        b=0v3klxq3J20uBaXUQE/HZ5DVwvcX3Oh9OzDsjNErpna5i9lQUmfKjJ3BZxzLY65LPs
         nK7uoveJ8wvXPXlSN88SmVkb/BEbjz5/n2MDF/tN3VZpHdKe9GUN+RlF+7INgpp/tPlm
         4ejo7NgVrvrZvF44CWiYwv+9FCb0aXzjZeQdOw3o4N7Or9jj50l2yMPJ4RE4LlfIGQKB
         a5TlsZrU7JI1sbyImVN+IX9oCGiNPNwHXxS1Sj9Ks+qRLaTVBceUJnitCKlICo5gqisd
         YLVGxiikKNtr+/NL7JD3+Dj92/tJ20+Os1XRt5tcPfiztVWOhzkRXATq5lkNYQGoNC3s
         06dA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=j2K/SUFIFZUghbC0EKiKQeI7b0lM+QlWgzKTZl7hblc=;
        b=Yir6kYFcDvnuO/7DkjP2jj2NKPZkeWs6n4p9v0Ek5grcI+Ydl/XiGCSkp7ez0czu2T
         T2oEimozfaBjL4fG8h6JHdjwTdP5FqqnUBWqtYYLaphJWzg21riEzlIzaUjE1OJpRkkV
         mSj4OZ8GQlEpuOH9TnPuA0BEh0dgbV+34vT0Bjo/lO5GSmNjhPZpckQwts1j/CzGSD6j
         Rqzp2d7avbJEGfNnPwKXA3+shuMP01tSluHAQ0NO2/UE12qmZAdwAcuv5J0yEXmlyUpJ
         A68npaTUqm423LUbR245dWODkZyO9lWEdTGQ+qnTroJkpZCIrFeMuxiZNJ16PJ3MrXjB
         zPMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OsdFAKf+;
       spf=pass (google.com: domain of unixbhaskar@gmail.com designates 2607:f8b0:4864:20::830 as permitted sender) smtp.mailfrom=unixbhaskar@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x830.google.com (mail-qt1-x830.google.com. [2607:f8b0:4864:20::830])
        by gmr-mx.google.com with ESMTPS id x7si101134ybm.0.2021.02.24.00.14.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Feb 2021 00:14:30 -0800 (PST)
Received-SPF: pass (google.com: domain of unixbhaskar@gmail.com designates 2607:f8b0:4864:20::830 as permitted sender) client-ip=2607:f8b0:4864:20::830;
Received: by mail-qt1-x830.google.com with SMTP id r24so838655qtt.8
        for <clang-built-linux@googlegroups.com>; Wed, 24 Feb 2021 00:14:30 -0800 (PST)
X-Received: by 2002:ac8:6a09:: with SMTP id t9mr13276421qtr.334.1614154470387;
        Wed, 24 Feb 2021 00:14:30 -0800 (PST)
Received: from localhost.localdomain ([156.146.55.69])
        by smtp.gmail.com with ESMTPSA id y15sm836878qth.52.2021.02.24.00.14.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Feb 2021 00:14:29 -0800 (PST)
From: Bhaskar Chowdhury <unixbhaskar@gmail.com>
To: ast@kernel.org,
	daniel@iogearbox.net,
	andrii@kernel.org,
	kafai@fb.com,
	songliubraving@fb.com,
	yhs@fb.com,
	john.fastabend@gmail.com,
	kpsingh@kernel.org,
	natechancellor@gmail.com,
	ndesaulniers@google.com,
	masahiroy@kernel.org,
	akpm@linux-foundation.org,
	valentin.schneider@arm.com,
	terrelln@fb.com,
	qperret@google.com,
	hannes@cmpxchg.org,
	keescook@chromium.org,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com
Cc: rdunlap@infradead.org,
	Bhaskar Chowdhury <unixbhaskar@gmail.com>
Subject: [PATCH] init: Kconfig: Fix a spelling compier to compiler in the file init/Kconfig
Date: Wed, 24 Feb 2021 13:44:09 +0530
Message-Id: <20210224081409.824278-1-unixbhaskar@gmail.com>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
X-Original-Sender: unixbhaskar@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=OsdFAKf+;       spf=pass
 (google.com: domain of unixbhaskar@gmail.com designates 2607:f8b0:4864:20::830
 as permitted sender) smtp.mailfrom=unixbhaskar@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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


s/compier/compiler/

Signed-off-by: Bhaskar Chowdhury <unixbhaskar@gmail.com>
---
 init/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/init/Kconfig b/init/Kconfig
index b77c60f8b963..739c3425777b 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -19,7 +19,7 @@ config CC_VERSION_TEXT
 	    CC_VERSION_TEXT so it is recorded in include/config/auto.conf.cmd.
 	    When the compiler is updated, Kconfig will be invoked.

-	  - Ensure full rebuild when the compier is updated
+	  - Ensure full rebuild when the compiler is updated
 	    include/linux/kconfig.h contains this option in the comment line so
 	    fixdep adds include/config/cc/version/text.h into the auto-generated
 	    dependency. When the compiler is updated, syncconfig will touch it
--
2.30.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210224081409.824278-1-unixbhaskar%40gmail.com.
