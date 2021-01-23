Return-Path: <clang-built-linux+bncBDRJJBNBQAFBBSP2WCAAMGQEOJJLNZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1E030162F
	for <lists+clang-built-linux@lfdr.de>; Sat, 23 Jan 2021 16:14:19 +0100 (CET)
Received: by mail-qk1-x740.google.com with SMTP id s66sf6420498qkh.10
        for <lists+clang-built-linux@lfdr.de>; Sat, 23 Jan 2021 07:14:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611414858; cv=pass;
        d=google.com; s=arc-20160816;
        b=NL9xo9XvJvm3i4wswM72ifG7oACHE3sV2myFk/osnKPvK8obANjPv+uv7bCPYujdq5
         8jQptjEW5dsckLrYMws+3A59NEBqr68tNnzDKDVFm5Qb/r2iEW5ULJhW/SDp4LV+jrBL
         JXqFTYTNcV3ZlTYbjEUQ3qdxGcUnekhr6MVbohxhGUDa215x0rzaKFjxxJWXF0y/GK1x
         LMXdQpP4J+9sCHhFEHol1emTKoDE7Y/FxOpqb5nw+N1bHyKQFE4KQ9h7+1C9AU0iBGM2
         itRuttmP2Relsekbdup/r3ZpcQ91/vsVDa2YeIb6GfqK31TsZrDif7NAS9x3nPJWNlug
         9QKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=C5n1VhEmehus3mLvxwK3nK/oFmYyNk1QvAjWqWJiOOs=;
        b=W5nyLjvlGlyjv9Su13DEYRlOYeKYsIudLxilz9aMmScqVw+Z9C+PdO9vZYH01Pd5Io
         /bBOaHk6XFYUofKlFc1v/GH7bzsP5YLYPT3qKA4gg0tpREa5eYXwIca2FtRz46hJxwV7
         mUQ8moteOA+VeOT7mp/3xp/qg1gK1d67u7N5bakU5Mm/KZXqf66ouBKIqXeLjlxP9Y/c
         3Y+azN9Lmz4BDox/CGw8IALoLOtNdTEDFwPW6X3Leb3zJIJBJS9iXZ8b93DW4kM4j77u
         H2LiZvpcLSiRoM7REZpmbOcPjwN1jX4MD9hqUVy8uh7/JgzUl8PKXAyaJ2sXcMzEFCQh
         ZOfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UxxNr3Yp;
       spf=pass (google.com: domain of yashsri421@gmail.com designates 2607:f8b0:4864:20::62e as permitted sender) smtp.mailfrom=yashsri421@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=C5n1VhEmehus3mLvxwK3nK/oFmYyNk1QvAjWqWJiOOs=;
        b=jaUfn4kveyIEDE9D54XgYGOW995ZGUZ17gTEZdMWlVc1EVfVD1XRNMj5d7NaW7WOOv
         BhcCmZVMsddGw3Ta8afctfsR8w1DtPp0zvjb4Jp6VQNK6GxJC3fzega9H0GPbyHweWa5
         b8Jly667EdmFjG6S6TTZ/PIdITtUrVd5LXoAtCJFzjFUSy7uIArbx7XFBNZ//k2liXxP
         x93TQX0bh9C7YqJffXXZWAqPfpbfri6O0IsmP14AoGViPTHw/0Ai+3RzhEGmUtLBGe4t
         8gVFQavRsSU/WdPIANJxX1+hpXQ1USRMHZIHZgtdDbdQdZMugG7Zw3oAuu0ZjqIgE5F4
         I+8A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=C5n1VhEmehus3mLvxwK3nK/oFmYyNk1QvAjWqWJiOOs=;
        b=NIhGaERpz0iNbmFyLSk1L051YasiAEqzoE6MtsnrNK0ve9CpVYnIvaYH19CKhC7GKE
         LP+bhVcw/7Bc2ORAaEY4rfMDcdc749/b3XiD3LiOHOvqNKiEhEC7WcTScCJUv3PzOxsk
         FdbTWJaKnQJSnL5B84PBEz2EvY7v5NU5WTodpSt9h+m1EFhdlORcFWjjx9Gvp1AUhrb3
         xtglig8hv+/4NxPiSyl2vPawxS2pWFCJWV+faVL3w8Z2N+EemlEDcKo/5cQHiWhZEclM
         QUTAMNNkJxt4Orrn94FgZvGnHWVnmodtoT7QV7V5MlVZggNYCjRW/dXhhlsWUw5dahP0
         oeYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=C5n1VhEmehus3mLvxwK3nK/oFmYyNk1QvAjWqWJiOOs=;
        b=IEQToRFlh+nGSGHFK53RnFVUEnOIzzHi2P/4UHncEC6qj3t+9nk5TxqDx2uOHeNbpk
         Yy7G5lUQ+gE/mSbzGFGFY+pNHYLUsCOD3OFFR9nvfemKxqmRnr0EhzbEvEhd5cF9vG9W
         2Wro/JZfB0bIBHYBejjps4pLErfdNqn8Bzj6Dro6kp42oh+HQKq3dXW0mZccVL1pLC9C
         8pRoF203QqLs6/H/utFPMuvdYThBg+Pqp61ZMhO5jd3V0cUyk+QmcBYH2v1Zr1IKWbgF
         YYzvHiD0bHTZZ8isuwwqW1TKayeRupg5CnN5mNlFZfRtIzxofNsCCehNghh0JvP5SIH5
         Uuhw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5307Qv4kNftPgb+uQn5/HN0X5bTSvzrgPC8sSm3Unagy4PrFhpoU
	hDqpuwZq1BDmk2CSHnHKKGY=
X-Google-Smtp-Source: ABdhPJyNB7zngLgEcmp0qSUCvgY6sAUG4N7ompKqqr8H7dXcDUD+rVON0TBBOy0016Kj9yd4opAxKA==
X-Received: by 2002:ac8:6d16:: with SMTP id o22mr222438qtt.383.1611414857690;
        Sat, 23 Jan 2021 07:14:17 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:7cb6:: with SMTP id z22ls229623qtv.3.gmail; Sat, 23 Jan
 2021 07:14:17 -0800 (PST)
X-Received: by 2002:ac8:76cc:: with SMTP id q12mr1473241qtr.300.1611414857396;
        Sat, 23 Jan 2021 07:14:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611414857; cv=none;
        d=google.com; s=arc-20160816;
        b=DB2gfjJdsDVFGuTKP4TD7AxDGW8pbI4IIh6UOeOsoKm9TI7RiojR9W3F18LmHLgn9c
         9KHFA1GdUgpMdU2kAI6UklE816DrZYQtwE8euxF6AOz+7CR5FJKJNesiMwsKTK6tGC8L
         WbPUZ6tPRUAGx8IhL62qk9GeN9Ap7mFb1pkbRh5AZF2iU4lpUMvpLjklPt9Dl+UQQIae
         pwiWBossZiHizIpAR4ksI2dIdfCq7Opg29Jj5BoFqNas6Wojrb+uMM09K2s+M2yJhHbT
         Aw4HiiIxtYRitL+Z1ReUbQGSIjGIUxu5dPj1jpobDQieQ/UDJp/X8HhGQhuMcRe+klIb
         lVcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=KTy8n+bNEd4gKJ9+t7A4mZcH7giU4TFs0RUo2PYg5Ec=;
        b=TpvmoCCceWA2toPPlTBgDUGANUyN4ArfO7rcyO5TUkPr188nWF1/Lk7isvcgOm/Bjk
         2JzKKtHfcMdRnOdXhyklEa7MpBGeSzHA+QgUovJTsZtuhYZ7qo065jUhJgHEvyk2V5+1
         a3DUp15kBil/4U8Ei//GotiISWg9WFtMMGeEfivr5TOa/Q8bsSrOMJdq3AEa0ZSadBNR
         Rtsz2q24ZsQd90MeZbav3QXOBjnuhTXhsux+x9CNbpdX6UD2xazYm8qwTlKrwKVld7Hx
         w//Gh+5BjBIZVuAYvlRdzFJ3Il2+qqCRDAGWEb0MBYGd+8gSE0zZ9zCiifGH3WcbZToI
         f3wA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UxxNr3Yp;
       spf=pass (google.com: domain of yashsri421@gmail.com designates 2607:f8b0:4864:20::62e as permitted sender) smtp.mailfrom=yashsri421@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com. [2607:f8b0:4864:20::62e])
        by gmr-mx.google.com with ESMTPS id u4si16518qtd.3.2021.01.23.07.14.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Jan 2021 07:14:17 -0800 (PST)
Received-SPF: pass (google.com: domain of yashsri421@gmail.com designates 2607:f8b0:4864:20::62e as permitted sender) client-ip=2607:f8b0:4864:20::62e;
Received: by mail-pl1-x62e.google.com with SMTP id u11so4932379plg.13
        for <clang-built-linux@googlegroups.com>; Sat, 23 Jan 2021 07:14:17 -0800 (PST)
X-Received: by 2002:a17:902:7043:b029:df:cabc:cc97 with SMTP id h3-20020a1709027043b02900dfcabccc97mr1429590plt.4.1611414856478;
        Sat, 23 Jan 2021 07:14:16 -0800 (PST)
Received: from localhost.localdomain ([2405:201:600d:a089:8c2b:8940:3286:eb08])
        by smtp.googlemail.com with ESMTPSA id 3sm12107301pfw.204.2021.01.23.07.14.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Jan 2021 07:14:15 -0800 (PST)
From: Aditya Srivastava <yashsri421@gmail.com>
To: linux-kernel@vger.kernel.org
Cc: yashsri421@gmail.com,
	lukas.bulwahn@gmail.com,
	dwaipayanray1@gmail.com,
	broonie@kernel.org,
	joe@perches.com,
	ndesaulniers@google.com,
	jpoimboe@redhat.com,
	linux-kernel-mentees@lists.linuxfoundation.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH v2] checkpatch: add warning for avoiding .L prefix symbols in assembly files
Date: Sat, 23 Jan 2021 20:44:05 +0530
Message-Id: <20210123151405.26267-1-yashsri421@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <bd560a8e-7949-933a-e4a9-508cb42c2570@gmail.com>
References: <bd560a8e-7949-933a-e4a9-508cb42c2570@gmail.com>
X-Original-Sender: yashsri421@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=UxxNr3Yp;       spf=pass
 (google.com: domain of yashsri421@gmail.com designates 2607:f8b0:4864:20::62e
 as permitted sender) smtp.mailfrom=yashsri421@gmail.com;       dmarc=pass
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

objtool requires that all code must be contained in an ELF symbol.
Symbol names that have a '.L' prefix do not emit symbol table entries, as
they have special meaning for the assembler.

'.L' prefixed symbols can be used within a code region, but should be
avoided for denoting a range of code via 'SYM_*_START/END' annotations.

Add a new check to emit a warning on finding the usage of '.L' symbols
for '.S' files in arch/x86/entry/* and arch/x86/lib/*, if it denotes
range of code via SYM_*_START/END annotation pair.

Suggested-by: Mark Brown <broonie@kernel.org>
Link: https://groups.google.com/g/clang-built-linux/c/-drkmLgu-cU/m/4staOlf-CgAJ
Signed-off-by: Aditya Srivastava <yashsri421@gmail.com>
---
* Applies perfectly on next-20210122

Changes in v2:
- Reduce the check to only SYM_*_START/END lines
- Reduce the check for only .S files in arch/x86/entry/* and arch/x86/lib/* as suggested by Josh and Nick
- Modify commit message

 scripts/checkpatch.pl | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
index 7030c4d6d126..e36cdf96dfe3 100755
--- a/scripts/checkpatch.pl
+++ b/scripts/checkpatch.pl
@@ -3590,6 +3590,13 @@ sub process {
 			}
 		}
 
+# check for .L prefix local symbols in .S files
+		if ($realfile =~ m@^arch/x86/(?:entry|lib)/.*\.S$@ &&
+		    $line =~ /^\+\s*SYM_[A-Z]+_(?:START|END)(?:_[A-Z_]+)?\s*\(\s*\.L/) {
+			WARN("AVOID_L_PREFIX",
+			     "Avoid using '.L' prefixed local symbol names for denoting a range of code via 'SYM_*_START/END' annotations; see Documentation/asm-annotations.rst\n" . $herecurr);
+		}
+
 # check we are in a valid source file C or perl if not then ignore this hunk
 		next if ($realfile !~ /\.(h|c|pl|dtsi|dts)$/);
 
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210123151405.26267-1-yashsri421%40gmail.com.
