Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBXEC7PYQKGQEQNFYJKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id 669851564B1
	for <lists+clang-built-linux@lfdr.de>; Sat,  8 Feb 2020 15:10:37 +0100 (CET)
Received: by mail-ua1-x93c.google.com with SMTP id f15sf944677uap.4
        for <lists+clang-built-linux@lfdr.de>; Sat, 08 Feb 2020 06:10:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581171036; cv=pass;
        d=google.com; s=arc-20160816;
        b=HwAihQ7T+EH4JRPhDOStCcl/NKqCnUPHw75qRHzQL+L1565Cbez8GRokw2FEbzz4aV
         oHyBkBQck8oNaNS07QlolCE0kTSz4pkV5jHVam179G7BeAbF6YDpYiCVpdxWFv4INOD5
         Cjuzq4/JeW6j0j6uUocXVogYVcp4Dr/mHAvIFjwYl30TiNZt4Xtszf0Fv/HXpz3NhLBY
         qvE/ym8MEpYzUQA7WKZ1+lSSXEWdXsfJeGX4tIZHeV7m9Y0ZdbgY/HPzkYwag51NP1es
         WZVBtgNI5phJxtCaaOqGvr1wuJAQdedrbJPTcczh1FWfTXRpBbV0P4dJxoUpBOOabHPH
         lEuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=OVJRLCP2Ot9gWedHe3yF1dvzwidR4c4dJ++nIz+aOj8=;
        b=ZnoLwS2eXiJBsjWI2v2CVm9A5AytTss3c8wmIBY6DkHT9dt+fI371sfqTsMvPtcWMi
         Z0HiYQGTj4V9ZHjeeu9lt/hX7cSp1y9c8OdcS/Jj1XHXQmZ8yZIHUFT10Jv4TyaV7ERz
         J1fhaTGbyC1kWlnfhfdH3kY0NTQAFB8B4q/8Tbmbj2CQ4yj3dQzhgZ7zSKbwpyB9kC/1
         p265hxJ/9+U8lC/+qq2ehCcaMTLo4DwlyoG7gaOHajdY9XQy93DIx15bkCPpd80rnTxj
         K/goQC7cAWs0nmT83acTgVIKLVeOvZMguIbioLGFWo5quwuot6XlcNLQZrbvzbFxdC2H
         G5Aw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XsJZtNGd;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OVJRLCP2Ot9gWedHe3yF1dvzwidR4c4dJ++nIz+aOj8=;
        b=nz2ghtXoGYC9Og2y/LtmrQCAs+dSaPbE8p3NTgM1G6q7WfS+iWQXm8FKzhash9syCr
         9WwWzxp6NZHj7XsAhL+y1mz2qPFW6VplUFw5zn7Oz+f5r1zCx3Ovt8i/9Pe0ihn5cm/e
         ogz7xCWLw6WEL+bgzocGQ6R+8lb2/PfxH3IXrFjAJFUjBrPxsoVYb3rhcvmWSAQvNDij
         X4qXGPjMGKI2iu6SN9EH8sPdTKykdtITAeZAIHDXsf8IeBJ+hMiCQ07Nzhszh12tuR+C
         pNyIptnSmPLQPK7BAXDrJLvTKtkZbU0u+qabADUKQE14qMPD8gHr6u6mOUCRe96N8DD+
         m1ag==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OVJRLCP2Ot9gWedHe3yF1dvzwidR4c4dJ++nIz+aOj8=;
        b=F5xoXtHsFIXuOvBBf4EFbL4jXMMakKREbKgu8xEvb04oZAw4AcIQmVsFY8loWug+Iy
         weSh3mtwuKEj778fjPIIgMs7HSWLSAVq8iAXTDgwsF5K/Zdperd7/Qbmn2IXO03Ka7iY
         k1O+M9svo/xv4iJSHDnXJT4rFJi7x687b7wdQ+qkFY4mZuI5ka9Asm6rT0eQDzKblDdk
         HMw8qNYyDPieZpBFzSwhI/B8YZt2D5WR+6VztOhSEKfHPtdAB5YIaadZy/pkVo0k6+Vf
         My4FypuVGPIket9mO7z2XCypkfeeZxn+qPzBgQ0wy2ZWKUDL+ed32IPwF2woO6iZw8VS
         7IGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OVJRLCP2Ot9gWedHe3yF1dvzwidR4c4dJ++nIz+aOj8=;
        b=fGMnwHmXM0MunMLNPjD1jSfXKSY9RdmyAAZnEs3M2UXvvctld9WkA3PUvL0TG6afZj
         Odlk0iMDKMBZkBHaJNdJtBc1eOvaW+yQhGufrfPHvKfa+qeguGESLhUE1iMMUu+7Rowu
         PccjKLVtsPfprLPDJRJHsKhoxqGS2fjHbL0R7Z5jGe47+7ejZNnGVe+g7ppcjDcKtFzS
         5QQ7dBKNo6dUHjX9NffZ63iM6nxoeUIOOw9N00lRNk9Msk1RKfDj7aAYv+MzhRh2QxUT
         J1tug+3kjWef584UIK77jUMsh/zqTikpmUSu5xwEcvYjP8d/vUFFcEU3WSY+P7OMBkA2
         1qOg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU2HpCQXela/J23r0nAfNNPrWnxNA5MIiEcaixdJ3s8p8QnNaTV
	fkWtvv5um9mMnujVXCBhYrg=
X-Google-Smtp-Source: APXvYqzQS/ttWoH2m+p2azAkIHCrhIe1waVCCwqxIs0gyCmdqPVYJ5LeeEhr8yn1MyzNPA5uKejVzQ==
X-Received: by 2002:a67:ae43:: with SMTP id u3mr2057390vsh.44.1581171036477;
        Sat, 08 Feb 2020 06:10:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f94a:: with SMTP id u10ls252514vsq.1.gmail; Sat, 08 Feb
 2020 06:10:36 -0800 (PST)
X-Received: by 2002:a67:f50c:: with SMTP id u12mr1843228vsn.24.1581171036143;
        Sat, 08 Feb 2020 06:10:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581171036; cv=none;
        d=google.com; s=arc-20160816;
        b=ZhoKX6nMWnfdmxX+h1jJ0UZW/XG2Fh/+fUSiiJnxBZZTZRDNvx5PvrddiYYmMfnuJU
         WN6VzqjHniy6ZVpNDe5xVXJ16UeZu7uYxZHbCcqVyq9i/k3t7xdLhIzoKfOfJL8lCTtM
         Ak8j2hutYYvJ1NnPTnp7EdFJK0cIrTwsZqsCV4AOdm68YhsUKDq5X+USzgEIlK3qSmlo
         3zf7Gdq/+OgSEeYCXDJR/UTHsRxk2k1bxT+51r0LcPMMGTPWs/vS/z4Guk8e0U5W0ufk
         nWSl7ruGc0RMNq+vlcyZmLJYJklGq5Glzd21ZgfAeRIXf66/NKSzk+zGVfTfzKo8SE0U
         RcEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=vng+4h19JerkC+XuBG4vryvn9zwYhKsMZJpIzjBBzWI=;
        b=DDW6Vs9JZznvq1PMYTlMJ+S3+6W6JAvsUsYQ4C64vlxU0p5ds3N3Ff2kImk6kdddBE
         +WLSpUnCHls7n/X77nmSInVfhhwsQIwAfvZXNZYxLD5q6l7907FzEv51R3OfadpXsok2
         HDZW5/5MfvW05DiApEOUwpoHunoI5hsecBNPf7VxdmxZR0oZBvOUbhrY8feK1ba5AmTL
         3gHNJEwBf8FEwkdQOkmgK7ly8XfCHxqbg6iUokG/u8sC6WL84Ay6DNTglDHRntgJyb20
         GApjKVIQZ3uaWNm59t7acXZ465ehXeFFicwkeHX6mB0x71mS++Gl05v5dN+VIklgPgBh
         5U0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XsJZtNGd;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id s5si106742vka.2.2020.02.08.06.10.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Feb 2020 06:10:36 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Received: by mail-oi1-x242.google.com with SMTP id l9so4939444oii.5
        for <clang-built-linux@googlegroups.com>; Sat, 08 Feb 2020 06:10:36 -0800 (PST)
X-Received: by 2002:aca:1a10:: with SMTP id a16mr5591118oia.9.1581171035472;
        Sat, 08 Feb 2020 06:10:35 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id k201sm353074oih.43.2020.02.08.06.10.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Feb 2020 06:10:35 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Heiko Carstens <heiko.carstens@de.ibm.com>,
	Vasily Gorbik <gor@linux.ibm.com>,
	Christian Borntraeger <borntraeger@de.ibm.com>
Cc: linux-s390@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] s390/time: Fix clk type in get_tod_clock
Date: Sat,  8 Feb 2020 07:08:59 -0700
Message-Id: <20200208140858.47970-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=XsJZtNGd;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Clang warns:

In file included from ../arch/s390/boot/startup.c:3:
In file included from ../include/linux/elf.h:5:
In file included from ../arch/s390/include/asm/elf.h:132:
In file included from ../include/linux/compat.h:10:
In file included from ../include/linux/time.h:74:
In file included from ../include/linux/time32.h:13:
In file included from ../include/linux/timex.h:65:
../arch/s390/include/asm/timex.h:160:20: warning: passing 'unsigned char
[16]' to parameter of type 'char *' converts between pointers to integer
types with different sign [-Wpointer-sign]
        get_tod_clock_ext(clk);
                          ^~~
../arch/s390/include/asm/timex.h:149:44: note: passing argument to
parameter 'clk' here
static inline void get_tod_clock_ext(char *clk)
                                           ^

Change clk's type to just be char so that it matches what happens in
get_tod_clock_ext.

Fixes: 57b28f66316d ("[S390] s390_hypfs: Add new attributes")
Link: https://github.com/ClangBuiltLinux/linux/issues/861
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

Alternatively, changing the clk type in get_tod_clock_ext to unsigned
which is what it was in the early 2000s.

 arch/s390/include/asm/timex.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/s390/include/asm/timex.h b/arch/s390/include/asm/timex.h
index 670f14a228e5..6bf3a45ccfec 100644
--- a/arch/s390/include/asm/timex.h
+++ b/arch/s390/include/asm/timex.h
@@ -155,7 +155,7 @@ static inline void get_tod_clock_ext(char *clk)
 
 static inline unsigned long long get_tod_clock(void)
 {
-	unsigned char clk[STORE_CLOCK_EXT_SIZE];
+	char clk[STORE_CLOCK_EXT_SIZE];
 
 	get_tod_clock_ext(clk);
 	return *((unsigned long long *)&clk[1]);
-- 
2.25.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200208140858.47970-1-natechancellor%40gmail.com.
