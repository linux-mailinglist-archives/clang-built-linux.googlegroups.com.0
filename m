Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBV7F6L2AKGQESMHDSMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 4983E1AFE06
	for <lists+clang-built-linux@lfdr.de>; Sun, 19 Apr 2020 22:21:45 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id t3sf8008714pfd.5
        for <lists+clang-built-linux@lfdr.de>; Sun, 19 Apr 2020 13:21:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587327703; cv=pass;
        d=google.com; s=arc-20160816;
        b=nXuVC+17g6cnyurJFOreRiIkxei3vOCMUl6QAlp3IfJhVtVhDZ58jVUtscL1F38n0K
         Dwe5+2z0/HNhRKt96zzQ/jjMFMVygW2nEFZyVAknZ/EEDExCRdPJ96d/Wg8dz0zoGG+G
         f7kItOrqRrRrFmP8kkzZxZAPX0YzNJL4KZ47pYDpuPFnlZn94dk1VTsH4o4OcH2kD6X4
         k3qDTSiWiM1gTdCvcBJaIpq3jKfl5f+yq11QEZihevBqbNY6Gcm6+tb4ApYTP3peonFd
         lD3i9BHXcUwHZbogeA83HWPIDgzf15EAf/nitbrfHWu5Kz8DvDs7TpfU0UZmJfqW813D
         Umtw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=dmFPQflxWdwerNBi1sfuRRLO+LeM86Ee/Daa62z9FTo=;
        b=DTDTkNx+NT5835BFaBqBQKQbbJzDJdCcgQtXRsqE0esfW6rC63l38lSz8E24x2h5vW
         8CHN+RjWEgx8e+Ne7r/lkJGB6rBkGv1WgQTTX7haNPzOJzNaI0Yl+4+NbT6kexKzPT9A
         gMgtZqi7jyaLdrV/TTq8P4d8pi42WQ7l/HiB27XEYxVrna1awz9h9v61AKpiRhRX9gNa
         Kbr9lIw4jLkgRFEy/mC4y8KmMMUvQQ9gGh83hab+wpYe9jrCyTRpSSd0c2LdH2NoX1eK
         dOKNGmFaF3tPCYNJsXSTpEbTaRLalA/aaPrEL/lK8OhkHQin5cdKuKfwSYzsfrFYVfZ5
         lwOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ME82ILm+;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dmFPQflxWdwerNBi1sfuRRLO+LeM86Ee/Daa62z9FTo=;
        b=EKCTkqeaSEEv/y3r0rinILKpmIt6rkXulckCFW1xTAzYBwGVZtEW+IKVZjSUx3QWxJ
         zL9Ga/0qI/vgcHBHU6M8cJJrTBZTKNLXDE01oDTMAYAV7YeFpwo9M1tfGW5LVbRjCcuK
         9Tixn/rk7c/AnuRPIsGTPzZ4o26P+8NmU11heBSxQKKXTkpo7DfXBnsYYcpkwzN4EZiu
         wM9v8wpaVD0bxxSuoi0ahGPBZG33yBQZsLnT1KBkIJR8d6jQZb3KD0EKoYoVtt5FZccf
         pkhzuG9KG2YOj6L25YfY7X1tJSnryKhjxMa6SsqyGw4LAazXrpR4eisE72AEelBtsrCQ
         ERLg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dmFPQflxWdwerNBi1sfuRRLO+LeM86Ee/Daa62z9FTo=;
        b=jlpTtp4CwakGc78QeS/a6RrkXVZQUTVcFiz7+TDBIxoLSl9IxMWA5crG6RgvBGPXKo
         rqa6Nx2ZNNw3SypjQa5EoI8SaXDT2DO4Bzcdgi57V6sJivMhqC2+7c+VQa7yw78FETIx
         aDpyp4jZXLwlsP0RXgZlaPFEXRJ8kCsBp82ezNaA8wiBGguQb6W/zVjDfJwIgZldmtBE
         adwRoU0UgYkd4PLwcR2JW9T2VVLw4M1xSynkCSxcpEqTpznpPg72guEbW/EPh7qasPHs
         pa9PeLfxK3IGGV0mwwetpzR08csTMX6ZzjeOV2KVEmhLv82xZS+AY/bAgAkmefQddLcB
         mK9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dmFPQflxWdwerNBi1sfuRRLO+LeM86Ee/Daa62z9FTo=;
        b=DZQ7QHh0S9DjbhRZk2p6seAw3nUE4LOfEfqU9NX0BfaJoEX7/moT0FQZ3zIFjMLYyb
         ulKiisnPJQSxP21f9nOTuhXiqpC9FLulPHMm/LvzS7IvYO69he12DExzOu17Eo4cUKRB
         SZ+MvTAxjY8aN2G0vY4KvZIdNL4FYACSeJ+IL6nd1+/vJhRkPkWpQl0pfwfxufb05H32
         EEq08OIyTGtPlEeynuloA5l5I/qYI+/dS1Osb6da2p5lHxC6EeXAhDeMj6KQ46URpCK3
         ME7vvOjo+Swv6yTQy7pS2q/vLC4m22Wdgt5xSnLhLH7q0kbvpOZTTmiFAK7IhWYwY3zL
         Q1Eg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZOfqRCUmgbEAaQERw+rNepz+182Wh3ejdO5TCCyf1QwfBuaqFG
	F4Zy9TadW/gSYBYDCI+2yJo=
X-Google-Smtp-Source: APiQypI1xUZj9wbBo1ovhrDoGa8Rcso9sE5eWnFYScxv9zDK8WUR52QmTzbXr+OcsV5YvboqTUNJbw==
X-Received: by 2002:a17:902:6945:: with SMTP id k5mr13411538plt.8.1587327703752;
        Sun, 19 Apr 2020 13:21:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8c85:: with SMTP id t5ls8151884plo.9.gmail; Sun, 19
 Apr 2020 13:21:43 -0700 (PDT)
X-Received: by 2002:a17:90a:718c:: with SMTP id i12mr17765921pjk.142.1587327703379;
        Sun, 19 Apr 2020 13:21:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587327703; cv=none;
        d=google.com; s=arc-20160816;
        b=PR8WZ2QtbNwenuWVgKE3u7qTI/KWGY0OuXWNcyHNo/avo2TTSj8RRGpSjpc+PJgKbc
         1BJxJy9/B2futsZdwElVMeHjybU4eCRxLW9Y36GnX8ptDMQY9cvNBC5ooSC6w0tBNrch
         ru0b1eoFmimFsQzagsJEQsImHQljCKf4ISX9AlV7tSu+er4V7CByKkSquS2u9utvy5Un
         oRTPk/fyckRivs50Vc1BF1iddqyltwB/Z/YJCOs9wxzeojUp6w77BfERhj6B5vwCq8va
         dl/Qsjez1Sh4iCIAUDNCX1EfrVtxJLd0wcP0igRd314x6XIa9idU5k79iD9E44PT1v15
         Fnqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=mE8tb2wID6Gq1tu3H9S3tHcs8Ey6O9MmS8FBya2Z96U=;
        b=a3DWjMDCrCkGW2uNq+VjTYdBXAy8qvy5HjebgkSoovq2et2HlS6d1R/QRPcKOGQWFM
         koPz7klYitKq04hR0V06sXeyFpkTJLipf/lA40zfv0KkjPMye4R2cyDZ8SeyutZzksST
         PGNUusPmDbfAuB4e0WYjRwM8p5FWxX6TMZYUjNChlyPWDT7B48dC7nT2mG9XqBLgf+4w
         bgDEp5WGKgVeajpnlqh1QbQZiDSsn+7zu/yEAEv55LvvYLDuPjMMb/9zJPkG06lZSchg
         xYb6a35AXNNA1xP08qgdqtRP0QQfiiQ4+g0rGZfmOdtMAW76Wirq6YK3PKnkzJaEY7oo
         gLpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ME82ILm+;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id gn24si639534pjb.2.2020.04.19.13.21.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 13:21:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id 145so1644013pfw.13
        for <clang-built-linux@googlegroups.com>; Sun, 19 Apr 2020 13:21:43 -0700 (PDT)
X-Received: by 2002:a62:4dc3:: with SMTP id a186mr13921704pfb.40.1587327703004;
        Sun, 19 Apr 2020 13:21:43 -0700 (PDT)
Received: from Ryzen-7-3700X.localdomain ([82.102.31.53])
        by smtp.gmail.com with ESMTPSA id s66sm10881010pgb.84.2020.04.19.13.21.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Apr 2020 13:21:42 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-kbuild@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH v2 1/3] kbuild: add CONFIG_LD_IS_LLD
Date: Sun, 19 Apr 2020 13:21:26 -0700
Message-Id: <20200419202128.20571-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200419180445.26722-1-natechancellor@gmail.com>
References: <20200419180445.26722-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ME82ILm+;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

From: Sami Tolvanen <samitolvanen@google.com>

Similarly to the CC_IS_CLANG config, add LD_IS_LLD to avoid GNU ld
specific logic such as ld-version or ld-ifversion and gain the
ability to select potential features that depend on the linker at
configuration time such as LTO.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
[nc: Reword commit message]
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

v1 -> v2:

* No changes.

Sami, please scream if you are unhappy with how I worded this commit.

 init/Kconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/init/Kconfig b/init/Kconfig
index 9e22ee8fbd75..c15ee42b8272 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -23,6 +23,9 @@ config LD_VERSION
 config CC_IS_CLANG
 	def_bool $(success,$(CC) --version | head -n 1 | grep -q clang)
 
+config LD_IS_LLD
+	def_bool $(success,$(LD) -v | head -n 1 | grep -q LLD)
+
 config CLANG_VERSION
 	int
 	default $(shell,$(srctree)/scripts/clang-version.sh $(CC))

base-commit: 50cc09c18985eacbbd666acfd7be2391394733f5
-- 
2.26.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200419202128.20571-1-natechancellor%40gmail.com.
