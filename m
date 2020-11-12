Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB4NLW36QKGQEKLKFZWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id 61A3E2B0EC4
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 21:07:14 +0100 (CET)
Received: by mail-qv1-xf40.google.com with SMTP id m15sf4587331qvx.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 12:07:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605211633; cv=pass;
        d=google.com; s=arc-20160816;
        b=i3E5Eu/e422ea25MU4D3+ihjsn+ZjMotQ8ltJcOy/Z3aAoTRehnb9obwxX5d0qGP1B
         hNrsOY6zmzaHOx9LddJbVSuzDNRIHqnjxcqphIPHMYaPTu586UsXceWsXwe61Xb7t4qu
         4JAi90pURaZPnk9HXMf8+q1BSNoKJ+2HEQ7fapV8NFhOM/GyuHsfV4uIzs7+WINtdV4/
         Ar6MpGZDAnXWLi9KcZWOJ9E3APR+IX1l3qGuEF5J9ofbVOFbT9jwm3t/9sGdoOgVa+FE
         A5SBJnwvOZPYzJJvVU+ZhgG/SJgZdG+ArGaqE4pM3AQoHx0Knd0NK9IW4oh5lshqptXB
         vfGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=TBu0N390JHyj9cM9H4NRRSrG5X7BbhwQdi43VYGuzeo=;
        b=kkG6/KDMYIj2zbU6AGB3NWmH/Zcp3yYmNgQTETfS5MoIRmZmDZe0XiVU+EAEhxzSib
         IROW3Dp+7gVWMpJcM+hdysrxdUb8rYmpU8/11SiRWwEN0lYRvnaqYYC5is2rDuYvMeff
         DBx6Y3HatOvDKiY0c81ObcUwCLIugfHq/1shf1YTJNuL1Z0ukNklV239YXBigR/GO1HR
         uzuQRqMRf9Zb0uVp0tSwNySYbY1c2l+wU9RiK1d8VZEteIoP6JO6DD+cBy2iXMeXCDTY
         A0c19tS0Nx5xknR3JiniARPNJ2WVQLnAlpKNflV7f+UcB2O4B6YXD9mrfRjLwy7+WCJM
         y1+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=myhEdHA1;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TBu0N390JHyj9cM9H4NRRSrG5X7BbhwQdi43VYGuzeo=;
        b=rRyTyiq223w8bvN9Kh84Ol2wHtrHtaQIAaxETVYVXvcoGTlOB+qbWGn/5/ORBX8om6
         tYfviLetJJEUnhXs/18nJNjJsCWWkufvK4oY6T0W12jR8gsCV3UJdqBR0NWpDxhF5/M9
         7G2IG5NDt/FcCc1n9czS8+Fl6624UkRQUSvoohvwiC0RK35kFoKsSdVRzHWc/3MZqtdk
         sONxrtxqDfeB8SgBMEB9sQRl9WqcV5Y1OjWWgYTjnQLZYcCg5SZ+qXgxY9bi8KPKCn/N
         47tcZ/ZfYbon+/8ewwSB91EOUZ2Kwc2RqergcP16Yj8VlSVX5l3+DwuEV+JoItRMbUpL
         eZ/A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TBu0N390JHyj9cM9H4NRRSrG5X7BbhwQdi43VYGuzeo=;
        b=hijt1z3Lik3F9iqED8kV241doTf7BucDMwwwbIdkAFe4W7U8Wa6zwLX325Mh4FkoUQ
         6UXBrd1d5dzAEMCm4LCycRUFDMLhUHdztQv6+nJLY25/gfgKCT6J+tZE6l/UO3htstjJ
         tMkDzswuzHtVEKSbkvHK9heuHU3sfG4huPSzZYzH+sBiliKzQbI81bxcRtO8am1QMT9i
         JWNUdAyLXR8IgUma0odYA+L1f1elBTX/465DCGe674ugvvBHHluQpk5PYiLl8RUY3UfR
         DBY1Eo8AiH6rGJDTCBhOct+eivPv6yJPK24b/3alcJqnQ2A/Wh8wb1F76r6v1DXOGWEG
         D+fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TBu0N390JHyj9cM9H4NRRSrG5X7BbhwQdi43VYGuzeo=;
        b=RO0sVr2gMp107gkKJRE0Q4G29PVeqdzzdm5aksubT9bPPIKHzYYWh0LJFSNQ4vOCpT
         tohMKkXWoUQI17AvHxXnXz8T0sb1rI6z9CDAv8EK7RWP9z1ccim2+3WtNXOpOpUqnHyV
         y6i21VWmG9RGADi0kk9ny0dsra3AXLWqwPHtYrOQeYc05sG1/a2Z4TkNynIk+pM7fYct
         H5NC7anB92fnFEYswyjcc05fHUwm1A6Lm75wn4fRpucNeB+MYe/IEa3jp8OkH7+ADik2
         1ukqaRzdZXO0zbpK62IkbekNzD7KGvYkYhjNKr8GvRUu0ktwq/gvkqxWqhP7cq3FWg+4
         Zpug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532snU6Du8sjBvKz0PHHGVjNyKatLe8ztCt4FpHd/D+yJCZkHKJn
	WdBlo5VH+lddWNhqzdkqJ0E=
X-Google-Smtp-Source: ABdhPJxYEFaySJfFvQcE/Pu+V2sv1QmqXaNeVpXLZCe/SvLos34jTw/5MxQUJquKCelT4Lz6akXF3A==
X-Received: by 2002:a37:b545:: with SMTP id e66mr1551562qkf.392.1605211633374;
        Thu, 12 Nov 2020 12:07:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:6615:: with SMTP id a21ls1811178qkc.10.gmail; Thu, 12
 Nov 2020 12:07:13 -0800 (PST)
X-Received: by 2002:a37:8903:: with SMTP id l3mr1529654qkd.219.1605211632892;
        Thu, 12 Nov 2020 12:07:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605211632; cv=none;
        d=google.com; s=arc-20160816;
        b=T6zQWb3LD2DZAeS/2TNJlr9qepgtJqfCWezHLNGDONAnUtYK9791KFvcYB4s+bU2Bu
         YOTk6ccnc7N5kQVOb5x6FxSOYzOZ4pvaIyAciJ57rzGv3rmoa4kWj2qum+j9WilkqsJJ
         5ziaCWodPliERGpN2lHHw1USYrJV2folhRj5iirP0GkUJ2IZSrYnYeiGeGIAv+sLlL5Z
         0ktINeqFPOh31y/tu+E5IJyv1lDKTJ8KC50T35Gojv5Tsyi2UzBvKWcQZu0IAP6gjtNm
         dNg00VmmeZpLz+BJCy6jX1JFgxfFKZOFppN8BPokvOPQXxehy4IPG/m/uQ34GLiI23NV
         Cl2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=E6ppXCmiSFyh9upyqD1fFw+i5gNBFjv39zREmHQXKsI=;
        b=J0s+sjdk6nCN5NQrPf1YJi5TAXx+QN7fGSD0vjojj+/+86wqhHf6s777DFb72yG506
         HvHk8Fd04E9se3BdO2JcvsW7LdVT7J+fqjqZI6wmoDdidXVhvunFfJHlUohj6787wLah
         px7LeS16ah9EU4GKcsoRp2lNy72OwrwRKJoOq5ZmbL3e7qaYg6wYgco8j8HOrYbg3e3I
         vgM8Ew+n/YYSp6ww2SU+A40PbJhZGFQcotGfIKJJNrjmtwR+g55vuUTJaSP/PrhWJZXI
         vnRXKABBL3pmA2h4UTp5EWoJvGf5m4LgPR4CDl5fl3sT0DUHtUG07JYQMWeaqZ/i42qr
         CEKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=myhEdHA1;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id x21si328826qtx.1.2020.11.12.12.07.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Nov 2020 12:07:12 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Received: by mail-qt1-x841.google.com with SMTP id g17so5027729qts.5
        for <clang-built-linux@googlegroups.com>; Thu, 12 Nov 2020 12:07:12 -0800 (PST)
X-Received: by 2002:ac8:75da:: with SMTP id z26mr933380qtq.36.1605211632407;
        Thu, 12 Nov 2020 12:07:12 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id 207sm700295qki.91.2020.11.12.12.07.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Nov 2020 12:07:11 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Herbert Xu <herbert@gondor.apana.org.au>,
	"David S. Miller" <davem@davemloft.net>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Christian Lamparter <chunkeey@gmail.com>,
	linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] crypto: crypto4xx - Replace bitwise OR with logical OR in crypto4xx_build_pd
Date: Thu, 12 Nov 2020 13:07:02 -0700
Message-Id: <20201112200702.1664905-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=myhEdHA1;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

drivers/crypto/amcc/crypto4xx_core.c:921:60: warning: operator '?:' has
lower precedence than '|'; '|' will be evaluated first
[-Wbitwise-conditional-parentheses]
                 (crypto_tfm_alg_type(req->tfm) == CRYPTO_ALG_TYPE_AEAD) ?
                 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^
drivers/crypto/amcc/crypto4xx_core.c:921:60: note: place parentheses
around the '|' expression to silence this warning
                 (crypto_tfm_alg_type(req->tfm) == CRYPTO_ALG_TYPE_AEAD) ?
                                                                         ^
                                                                        )
drivers/crypto/amcc/crypto4xx_core.c:921:60: note: place parentheses
around the '?:' expression to evaluate it first
                 (crypto_tfm_alg_type(req->tfm) == CRYPTO_ALG_TYPE_AEAD) ?
                                                                         ^
                 (
1 warning generated.

It looks like this should have been a logical OR so that
PD_CTL_HASH_FINAL gets added to the w bitmask if crypto_tfm_alg_type
is either CRYPTO_ALG_TYPE_AHASH or CRYPTO_ALG_TYPE_AEAD. Change the
operator so that everything works properly.

Fixes: 4b5b79998af6 ("crypto: crypto4xx - fix stalls under heavy load")
Link: https://github.com/ClangBuiltLinux/linux/issues/1198
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/crypto/amcc/crypto4xx_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/crypto/amcc/crypto4xx_core.c b/drivers/crypto/amcc/crypto4xx_core.c
index 981de43ea5e2..2e3690f65786 100644
--- a/drivers/crypto/amcc/crypto4xx_core.c
+++ b/drivers/crypto/amcc/crypto4xx_core.c
@@ -917,7 +917,7 @@ int crypto4xx_build_pd(struct crypto_async_request *req,
 	}
 
 	pd->pd_ctl.w = PD_CTL_HOST_READY |
-		((crypto_tfm_alg_type(req->tfm) == CRYPTO_ALG_TYPE_AHASH) |
+		((crypto_tfm_alg_type(req->tfm) == CRYPTO_ALG_TYPE_AHASH) ||
 		 (crypto_tfm_alg_type(req->tfm) == CRYPTO_ALG_TYPE_AEAD) ?
 			PD_CTL_HASH_FINAL : 0);
 	pd->pd_ctl_len.w = 0x00400000 | (assoclen + datalen);

base-commit: f8394f232b1eab649ce2df5c5f15b0e528c92091
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201112200702.1664905-1-natechancellor%40gmail.com.
