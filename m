Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBQWG6KEAMGQESPFAMKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id C2BC53EFA94
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:05:55 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id ns7-20020a17090b250700b0017942fa12a8sf963345pjb.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:05:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629266754; cv=pass;
        d=google.com; s=arc-20160816;
        b=g+HnSBaNzV1Yo7rjOSotNtVCNkNMPFP8VfMtJgk7z5YR+JU5CnYpd1vOUcz1cO7vf4
         rYwwAdAgodlFsOO+jO1hcNL2xo5XXQJp6KngHvZFK06y9sL/W08oPcN96ZguDoKGC8uR
         UHTBHg6xsrn+UdYpI+uVaGBR7w5eJpeC+6Yvp86waJrih+shisYcj/K7Gc5q4w/3pG2v
         oKJ4y/1dyQYv+Ca5Pu5DQBm5LxSdLqLo7qnuwvJpC63kAPiKN+wMcoSrNQV1MQl3HKyr
         uzEPVZcaIQrgJxO4fvAQuWMb1USrifbRh+gDgLaqICLUO4/PBNEKUPDaHe4qO/aXbZoo
         dFjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=01FQPYiz/De5vuyOxrQ8/PyvrXqaQ/GF3akTHN2zgA0=;
        b=JKhOHIMCQDiGLbmPdiAMIF07iC0Zx8gNRonWtxZXzm+BcF7VUoqsP3JoHK/leI/nyM
         +FbgVAdwoS2/VdqhfFJTQNvx9h4PCNXsQ6CN1f/2FRnP22avouZ9RXa21sp80IFc+v7z
         GXjP2AOh4PJm6J5xwPIYIRuWN1hPOPLyWJN3oM2bWb0i9+mSCauhcEayd+ESCLJxAN9a
         hdjh32BuG49pqfVId0swQWn2lg6Hqt8fzcwBYXWKC0cG/77cKinzZ2WZZiqxXU5x4dLO
         JMjcS0+iklLZhjPDeLTx4QZZjNE8HtoBhCdBSvVVnFran5xjdTt7mFss1Qw2gY30s2ih
         UX1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=gbrUissy;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=01FQPYiz/De5vuyOxrQ8/PyvrXqaQ/GF3akTHN2zgA0=;
        b=XAcRB7Hc4+JTJFTc9gDqGtEcEicPGnCzcTywenkTl0Fd/PAN++AwUb1cJZfNlIVJu1
         gEod/R+hVzSarp095VRJ8bxUjsG5jSSgHWrqHb+7myLOubp3q18zbdnRaPRfM4WVfj5S
         NQ/32vVoxLvVtW25eeTHA+IIq4ywtxBrdqaqnERAzDnPLSOerW8iSwa9W+9t3mTJoKVG
         cK3EUZOQwxDL05oQehlHJrozTbflgn0Kltuuf5zixVWaYDch1UeWQNhqkjJ+9JQqWqQj
         LcL0ii3/IzQj+ATH5TZPj2Eajj/iOaFHuKkkTI8grP6zwMGDP3m6gK/42CV941W0mjGj
         9/3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=01FQPYiz/De5vuyOxrQ8/PyvrXqaQ/GF3akTHN2zgA0=;
        b=rJld+7HQxEYUHvhoLvzyo6tBgmnYQvUCYGNWtvr5Y281rhWBFViI3KdhYvDYopnRhU
         umNJm7ldsXeQ9hWRws+jcpB1i8tZMJ7sNrbn5f1ymMhExKtE7jlfB0s4OpixSG1175Lj
         xQfYgl+bvlyMnanS0cuF1bgdsy19iDhgatpsqzzbO67gY62WP+z1FpkAxQi+Q8raD8K2
         9qLGUzJ+OWGTS9TKYt68lNZIbXW7TnOyjxJl8c9oJrDeqFz9T3Z2guntVmoepWEZ5gpH
         GObYk+YZtlcUapjyGK6W+7xLysQDOTEA7qrKmej0Pqt8kB/KlJTo2aeyA8iZLZ5JH2lz
         ur9Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533VBPY7vj2lKw/yDcdGZ7joXLsCi56gTzfwJLLzCq+Szf3wuvbX
	rpXOZ7UfRRg11INVYTdSwNE=
X-Google-Smtp-Source: ABdhPJylWeLpcrpGjbOE5DjesAShMWUDSmOi0oX/v1Yif775u7roHr4x8/8nEWevMH9f3UHkbEuQgw==
X-Received: by 2002:a63:306:: with SMTP id 6mr7267879pgd.237.1629266754528;
        Tue, 17 Aug 2021 23:05:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:a1a:: with SMTP id p26ls494283pfh.9.gmail; Tue, 17
 Aug 2021 23:05:54 -0700 (PDT)
X-Received: by 2002:a63:1914:: with SMTP id z20mr7143395pgl.87.1629266753948;
        Tue, 17 Aug 2021 23:05:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629266753; cv=none;
        d=google.com; s=arc-20160816;
        b=abNNqhiBIzJ03pwUrqX5enIBfgwbxRqWPW01fTol+DjpU6zNZSUqB1NanZA8c58EmJ
         SC/FZe4FOkiCZPP1ynEI1zmrkfe810a6ZovAsTRYUK49fCf7sus0C0QgdwhdeLmpqcuF
         47Rx0zZFHhGdCBqI3txjm7m4i4D42bd+pRNSOtxIALdV+WF6C+uizSvxa/cog7TUmLHz
         fL/uPBMwpUivSoc/3sWAYWDNIvq7wHi8fnR/JoXjePQ72vH1k8fHDR6vpm1bd0zp643G
         TXJI3xPgANqIf/8vbseNOcSb/Fw3gyn9p6cs5bjTEFNxIM0cS3XKg0RbYbBLZ41YNEKV
         Vbog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=AY970ncUJAZ3XFO8vIsQqriyIPN/r8JHpDac7fWieeM=;
        b=yVTX3ZAbzsykyidb5raCXdJQXs/FaRd0QK4YraKVjGylbuu6UHEWEJrP7RlSuSMCbf
         pa8bagyeMO5e/XXE0o2tO9CZdjsk5TJfUI16G1JNvi0+9Z9zpNPGdhZA9e7lfdS9xv81
         Hra9SYJ6Z/T+2UraB7ZYKI9M6S97/HU9wI5Gbc3pf5AJTsQYL6dT81zsWqp1llf/ysgx
         gkurP2YgyFShvdm1LnlwwCiMkPD04U5rSnThRNW4wfYRus3qhPJEeT4s4Omt/M221Isb
         Sv0NfxgNHQuiVkikPyGL6ffwQe5U6q1BA9VPTshVzA9CRgb3e3HdAi8DIothyirWcO40
         hlGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=gbrUissy;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com. [2607:f8b0:4864:20::536])
        by gmr-mx.google.com with ESMTPS id v3si195500pfu.4.2021.08.17.23.05.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:05:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::536 as permitted sender) client-ip=2607:f8b0:4864:20::536;
Received: by mail-pg1-x536.google.com with SMTP id c17so1146750pgc.0
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:05:53 -0700 (PDT)
X-Received: by 2002:a62:cf01:0:b029:3cd:ee82:2ee with SMTP id b1-20020a62cf010000b02903cdee8202eemr7462718pfg.78.1629266753732;
        Tue, 17 Aug 2021 23:05:53 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id v7sm3785867pjk.37.2021.08.17.23.05.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:05:51 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Kalle Valo <kvalo@codeaurora.org>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 04/63] pcmcia: ray_cs: Split memcpy() to avoid bounds check warning
Date: Tue, 17 Aug 2021 23:04:34 -0700
Message-Id: <20210818060533.3569517-5-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1806; h=from:subject; bh=MoN9sZmmdDw0lR5vW36Fdr39zzqTtcOilmLJ144gA30=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMeeJZHHO3+hbAJbiz+YaA05/E7kfaAlhhB+qwX bgM8lUWJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjHgAKCRCJcvTf3G3AJtxMEA CDE0x/VuR2ilrvgKGfyTDw1N7+A+OmcMMY6KEuirMzNaQoRp+CPej+AIOz4iZ4YR2w/YDSXsCBANOw K5b6FAZFcHd15dHuy0PHAu+t2wf8+a3LvZgMLeRVlO+k9h6oSr2WGMYO39iapHt3B4Hws0oVkh8NWy 0kI1PrCe5WRCiSu4x3jvUSNQhd6157DS2THCGpKJU2Ohcc4ZZzPKzDttnQBP825XysZzujJgtmp2W/ uwnApWbjaQlev0TzuwRYz5R/ARZ7MhuJYrMe2R9OENKkUQeMW93/Nfw5nTLnSsP/BdFZZcwqlamFTV tgJj36zb3bSbbWtFABkmCdVGvriei7S5s0Nzc2nLVfQb20sxUkWetJM+GmYMeGLfN4BhBeIHcKWVC0 Aj+LGMayAdp/W4t3nVbPAg/TlfR76sc/XwdjpXjNaJp/8GkyyVZkJOgAc9+8oheOZIccG3fCFmuAJf XWHNpEcmYrSvY9JP0CNQIsmgE/a9O437lSmu6bRy71Sex0/QvPbdpZBU0bMxAqgihbSllbeOeYytUg RbErVsVrqCl2m1h09j0e/PiZURm8UI4xWRcHupED1wTamnDG9QrcNHdTzFlM3/dYIU4ooyZySLeioj JNWySYCBKT6ERqzpI3hwtkiH0jo9acVRnX0ABbUt8WOMelIC2mwM5j7Div0g==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=gbrUissy;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::536
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

In preparation for FORTIFY_SOURCE performing compile-time and run-time
field bounds checking for memcpy(), memmove(), and memset(), avoid
intentionally writing across neighboring fields.

Split memcpy() for each address range to help memcpy() correctly reason
about the bounds checking. Avoids the future warning:

In function 'fortify_memcpy_chk',
    inlined from 'memcpy_toio' at ./include/asm-generic/io.h:1204:2,
    inlined from 'ray_build_header.constprop' at drivers/net/wireless/ray_cs.c:984:3:
./include/linux/fortify-string.h:285:4: warning: call to '__write_overflow_field' declared with attribute warning: detected write beyond size of field (1st parameter); maybe use struct_group()? [-Wattribute-warning]
  285 |    __write_overflow_field(p_size_field, size);
      |    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Cc: Kalle Valo <kvalo@codeaurora.org>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: linux-wireless@vger.kernel.org
Cc: netdev@vger.kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/net/wireless/ray_cs.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ray_cs.c b/drivers/net/wireless/ray_cs.c
index 590bd974d94f..d57bbe551630 100644
--- a/drivers/net/wireless/ray_cs.c
+++ b/drivers/net/wireless/ray_cs.c
@@ -982,7 +982,9 @@ AP to AP	1	1	dest AP		src AP		dest	source
 	if (local->net_type == ADHOC) {
 		writeb(0, &ptx->mac.frame_ctl_2);
 		memcpy_toio(ptx->mac.addr_1, ((struct ethhdr *)data)->h_dest,
-			    2 * ADDRLEN);
+			    ADDRLEN);
+		memcpy_toio(ptx->mac.addr_2, ((struct ethhdr *)data)->h_source,
+			    ADDRLEN);
 		memcpy_toio(ptx->mac.addr_3, local->bss_id, ADDRLEN);
 	} else { /* infrastructure */
 
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-5-keescook%40chromium.org.
