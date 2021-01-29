Return-Path: <clang-built-linux+bncBCTZ5O62V4ORBDNW2GAAMGQEXJJVUHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E22308CE0
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 19:59:27 +0100 (CET)
Received: by mail-vk1-xa37.google.com with SMTP id c69sf2717069vke.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 10:59:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611946766; cv=pass;
        d=google.com; s=arc-20160816;
        b=iUSH3m8DIs1bEr/2pp9Zb5hhI9bvSQtsfdTw8PyTrkiVZTd2zw2sDRmxClGy9sDLsc
         r41pDSiD0KvcQ2FQh7cSjInoqBRL5rTPRb/5ikcRyOrf9nDvbGsC5scPP45a3b1MAd1P
         DZfPJr1KM5tjoVBboHK1vP1Bse4tOaKfJdJu9nbygJkM+KbXR6Nde9de+Giu/7ve5amu
         R7sj5qB5nQwdwqNFdzWNEUeIzfzjdj8vSU4MR95WWjBbX6Y/fwE/ZK9Pu+vdpsrx1GSZ
         dcw1zkuJ34CipcptK5NlWVk4O7JEUT0qqnRRGUh9KAheSD19A+RKhifQKs+r0Q9jNpba
         NU8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=YrE0YrtS+WRMFv0/71v/63kHbHtFwqXGJbbXaN71I0E=;
        b=0MOAnIitHzDGck/wkSmX4J0jI4xprCXHVisfpUs3g76RGxyO3Z3ib7iog7hgVTfksV
         ogmL5E1HqR+GRyFHHDGMZwP55Tr3Up6tLSIQCMy2QhukqLDoDpc2q8Hf4vrdiRf9VJWK
         HVSyh7RTKJvpX71mDApX5CRLzfKSfEI+0Zj6qeCWlqYMaGPpJ2T9w9BENaIQESa72OoG
         i7YlpFY94xKZi85lG7rMW1TGA36mV46fktsE5uLx1lts4vpFO8qbsf/+6vAiCeSCLxGA
         HJyd2BgpsJX7Z85LrhHM+CipTr++wDZBxs2MhPjk6WLPgaF4Ka82vmIdkoYFbSD61YmM
         5z9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GnXjtF8H;
       spf=pass (google.com: domain of viniciustinti@gmail.com designates 2607:f8b0:4864:20::d2d as permitted sender) smtp.mailfrom=viniciustinti@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YrE0YrtS+WRMFv0/71v/63kHbHtFwqXGJbbXaN71I0E=;
        b=c2q3PQnjeYuew9NhTB6q8SxeGgNUt/FANfdPERPWZGM7k+Ps5TNxv3cLMPYVArxdiB
         CUPApNxeNqtiLrjEyNtHheyvGpGDV+X92V1O3AcjQYZ5YjDNtM6HMJJ6v+7731rba18k
         86mIXmyS6IP8dpV8BnOURIZK+Ucba+FSahdjN7SBS3Hnw+7Zaevy6JMP49WrOQdEI6GX
         IN6p7PtD9WE3/5qwfglURVVDNQuNf0J3i+3fBV5qoqNhWZvmGe4n1i+SagmX6GuHnOdv
         YjolBj5RLvyAsKEqMv6tBF520+9rjlhVlF1OacVvUi2AnYu9EEzJ7atgLQW/KcCiSD+0
         Ryew==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YrE0YrtS+WRMFv0/71v/63kHbHtFwqXGJbbXaN71I0E=;
        b=FK8K+pNkS2Nf7iCh1NSDoJWYFis8QzIvABydznht0aoc+Jnes6XRit9I2GtfMgEnuj
         ucCZimdOm3HHNxjCimGoC4Xpleh+y9XenLLWdiCoQbK5+zqSeRpmUmjQ2S4sDu52i1nn
         vr2Jk33K2KRZPEEfG8B5z8PWJZX7e+9UpJ5fH3NFNxHs14C7AWlor9nKuTenmW7lB46x
         BT98VID0XQ9SYB6QG4+/ZUrRxxeANx1W7u0s05iUp/8AMekekfU+azVmwi1asHt6hxRC
         wArubkEbCIU2Gn0mWbe92fdbfeIVfM9NYSZ0cbCPz5dzmNlrDo1t7CgUOv3/6fc7oJJF
         MGnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YrE0YrtS+WRMFv0/71v/63kHbHtFwqXGJbbXaN71I0E=;
        b=WZdqh7HGEFysUPdnX0RzOPvXIhf337Gf+UJRNMdbpQq9j5OR0NakgkIMEEOlw0kmUv
         gA5BfHpKk1GuidFxuSXIOCIXPozPpx7JTkkBAZ3x6akohaEdFfp9YEtLum5FVaNOS8j0
         T/MY6E5cNSUd04Hj+/Ej9Gim3XTbsYk41la7O9Qft6tyOEiBqx3ZheHJuTIPmAyk9OTq
         VIDpR1289W4bGQNS8I/YWTF/ff4T/b3XJAatrs2/ydgJ2ZZQqXGKLhirc4WF7fE0GZBp
         hoSutyr7ZRaMNfQ21M4hT/kXOM+wLhjVABeVOiFMrWad/wVBnMFtQy0T18EN0zwjujbS
         hgwg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5324pLT+tOpDI8SUOB27ZtfTqizhU+hPZ28pjwkWFbJHlsGa6r7B
	8ios87wXM8eSVAM7Had0rbg=
X-Google-Smtp-Source: ABdhPJx6JWlzALUfp2BeK81gxVXN6N/eopXSC8JiTGl643Curcsz3eKG9ZurleRTLLeoJhKB13uyow==
X-Received: by 2002:a05:6102:226f:: with SMTP id v15mr3789839vsd.36.1611946765978;
        Fri, 29 Jan 2021 10:59:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:106:: with SMTP id 6ls785996uak.11.gmail; Fri, 29 Jan
 2021 10:59:25 -0800 (PST)
X-Received: by 2002:a9f:2666:: with SMTP id 93mr3718834uag.59.1611946765591;
        Fri, 29 Jan 2021 10:59:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611946765; cv=none;
        d=google.com; s=arc-20160816;
        b=h/pGz19VDrlvZc+Ac5ceJ5U6S3eyTpk5X25toTd2VSYBdxYJ/L1pLDeQlGbLCER1Jm
         kRbltaNze7bFP7zZXgduMYL7oymoKdUkxhEScGaGkhHoejq3ZZAOH5NYF2yFtShIIsBx
         PO5+QAuVgotwGAdr3ewApsB7OCxR9rYExi50U9d5PgpCSi9Jnl2yJ5K/6ZvIfEpxsFxx
         gtbWBp1ucaOuROOaNq4MF/YST1xiTJqIF6QfybC3htbmIiIDi0Sxb4IWLkxSpRLpbgzE
         dbpkI5ojc/ypVId75s8U5Zeq8Db7JFy1GnIb75g9YoYTSZJjqAoBWVORZr8VZFESKpI9
         nhBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=OgYPIOqOXKdCc6WoLn7V5g+qgBdayVhc1PkpXTbqbXk=;
        b=JXenjpPFlchBKmB6YLOft2i5xtdyqL3yNJXejaY0KqScxPbFH2JPzXp4sholFNP/Q/
         AqX2qpfYnXpB6MMXvsSMOca+eGIlgwVwKSLhhAy0yzqCgjyk+WTUzC4kzrTLsV1Ubszz
         GdHa13jvggkVJlBMpOHe5y2Zkr/5NXJCDCIyzBnqPr+1cxcc92CWa4dMN94Rstty+B+J
         uD/iy8XIoUTY4gbTUsUtfjhTyEt5oxsUoZNgGJKtCniYMmyJ8d9dvFgPsHej+gpsY2u6
         cJfJXNVs8HlzdX2I7/EwwbWuyI6IBSEJyTb8SyCTh53LdBdEb3ikgnzQHBLPS2f3+48n
         j4tw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GnXjtF8H;
       spf=pass (google.com: domain of viniciustinti@gmail.com designates 2607:f8b0:4864:20::d2d as permitted sender) smtp.mailfrom=viniciustinti@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2d.google.com (mail-io1-xd2d.google.com. [2607:f8b0:4864:20::d2d])
        by gmr-mx.google.com with ESMTPS id e11si710812vkp.4.2021.01.29.10.59.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Jan 2021 10:59:25 -0800 (PST)
Received-SPF: pass (google.com: domain of viniciustinti@gmail.com designates 2607:f8b0:4864:20::d2d as permitted sender) client-ip=2607:f8b0:4864:20::d2d;
Received: by mail-io1-xd2d.google.com with SMTP id q129so10406833iod.0
        for <clang-built-linux@googlegroups.com>; Fri, 29 Jan 2021 10:59:25 -0800 (PST)
X-Received: by 2002:a02:cab2:: with SMTP id e18mr1122374jap.55.1611946765078;
        Fri, 29 Jan 2021 10:59:25 -0800 (PST)
Received: from llvm-development.us-central1-a.c.llvm-285123.internal (85.235.72.34.bc.googleusercontent.com. [34.72.235.85])
        by smtp.googlemail.com with ESMTPSA id h10sm4846817ils.10.2021.01.29.10.59.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Jan 2021 10:59:24 -0800 (PST)
From: Vinicius Tinti <viniciustinti@gmail.com>
To: Theodore Ts'o <tytso@mit.edu>,
	Andreas Dilger <adilger.kernel@dilger.ca>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Vinicius Tinti <viniciustinti@gmail.com>,
	linux-ext4@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] ext4: Remove unreachable code
Date: Fri, 29 Jan 2021 18:58:56 +0000
Message-Id: <20210129185856.158310-1-viniciustinti@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: viniciustinti@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=GnXjtF8H;       spf=pass
 (google.com: domain of viniciustinti@gmail.com designates 2607:f8b0:4864:20::d2d
 as permitted sender) smtp.mailfrom=viniciustinti@gmail.com;       dmarc=pass
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

By enabling -Wunreachable-code-aggressive on Clang the following code
paths are unreachable.

Commit dd73b5d5cb67 ("ext4: convert dx_probe() to use the ERR_PTR
convention")
Commit ac27a0ec112a ("[PATCH] ext4: initial copy of files from ext3")

Clang warns:

fs/ext4/namei.c:831:17: warning: code will never be executed
[-Wunreachable-code]
                        unsigned n = count - 1;
                                     ^~~~~
fs/ext4/namei.c:830:7: note: silence by adding parentheses to mark code as
explicitly dead
                if (0) { // linear search cross check
                    ^
                    /* DISABLES CODE */ ( )

Signed-off-by: Vinicius Tinti <viniciustinti@gmail.com>
---
 fs/ext4/namei.c | 15 ---------------
 1 file changed, 15 deletions(-)

diff --git a/fs/ext4/namei.c b/fs/ext4/namei.c
index cf652ba3e74d..1f64dbd7237b 100644
--- a/fs/ext4/namei.c
+++ b/fs/ext4/namei.c
@@ -827,21 +827,6 @@ dx_probe(struct ext4_filename *fname, struct inode *dir,
 				p = m + 1;
 		}
 
-		if (0) { // linear search cross check
-			unsigned n = count - 1;
-			at = entries;
-			while (n--)
-			{
-				dxtrace(printk(KERN_CONT ","));
-				if (dx_get_hash(++at) > hash)
-				{
-					at--;
-					break;
-				}
-			}
-			ASSERT(at == p - 1);
-		}
-
 		at = p - 1;
 		dxtrace(printk(KERN_CONT " %x->%u\n",
 			       at == entries ? 0 : dx_get_hash(at),
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210129185856.158310-1-viniciustinti%40gmail.com.
