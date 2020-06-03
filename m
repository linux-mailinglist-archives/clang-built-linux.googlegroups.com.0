Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBAXG4D3AKGQEKNVZLBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id E74D01ED91A
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 01:32:19 +0200 (CEST)
Received: by mail-ua1-x93e.google.com with SMTP id q3sf1449232uas.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Jun 2020 16:32:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591227139; cv=pass;
        d=google.com; s=arc-20160816;
        b=FC7QAFr6lt+qk7sOnTvYaY6kz0tW8sNSRYq3IcZx+CDZuATyh9zOWBxycOg3J/nRUx
         XX8HLBrLu66KWUbf48GyR8RkP9dcO26L0NQ5Na4dCplTkjECOqeCBOLj9lnkDGPZW3lY
         E2YZFAw6kOokdF+eEVYs3HjkHI5XmV/XAzXmwYmUwa1er/X0Tr5Pdo14kEXeG8dVOQM0
         kz35bBMsP8UxZ7ECSQQfMCi0yqcwxJPvmpGoEyjSqcGNUfnDDsPTuNpuv5jHSDpFX7XB
         /2KVH+4wVe7nX0OgmQdLhEB+AtOjH9k98dAP/c80HniAssCtVLIabdL+KGv23xeWA6E6
         4dHQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:sender:dkim-signature;
        bh=NCWIRMEyiqNXwjjeDhf+RsLbYr+ygxyBxCOg3OX+f7Q=;
        b=wUt7zAFWxXwh8vT18mVzwpv/C1b+NBWUN1GxJ+pDESEyXYjRACHHyRceG0/B/VyJ0+
         xTFGxY0cFhaASUVznmBuW846wkzjzXL4YrnVR9vgQbStgB8SYSlR0okqVMBnal5Ok+os
         O1DUMV2u6N8v4a69R4Q6xmviJn/JXAZ/ohUkbcziC9NrCMov45i+ZftZ349Ylup0dqvo
         QshZeT3hEQhYkJEVqB36syG/D9RqowGKdy/8RFcyozdO6RZDyA5l8+wdMhicDFUIFIjp
         cX05R19m22HJiadPPftMTiF7+yOL43JD9Zo5JPVaG8/wGWeRurg6zrPjLqdsBJB1ysXH
         3jSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=TU9flWAg;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NCWIRMEyiqNXwjjeDhf+RsLbYr+ygxyBxCOg3OX+f7Q=;
        b=PPjHsS4suY+JOC+mNVKt7wlfOFfoz6oJLPquVWqVCyraOxynLK2IVFjoCsYWUabeHR
         rsUsGP7KEVJBizT8L4NZ6mBhyuSV5nfLoCmKRY8mKv9nxYCmU36brkAG/AHaF/nqjzly
         Q9bHcixDYThBTCwedX+molrMRpwZQhV2OBoG5vMl2/xok2r+FmsxQdSY5VDaUnX8a8vC
         n3UIC2YKaIEPpjQXTm98Q7Mzi6lw1f8nuEggytmk9JHcRQcAjVasNouErGY7u1bj67zL
         zF2vf3qGDgKAYeTzQcrVs7z+3h+08RDAuTs9eCAnEc11AdN+uz9br1aMlPvkCrMAmVew
         NGBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NCWIRMEyiqNXwjjeDhf+RsLbYr+ygxyBxCOg3OX+f7Q=;
        b=D76XVnUp1wJHb9jh+9jvMvGiUBtkKjxTOIuPzd6rhjPrxuucLa0Zn/iQTnX6whaGOy
         iY9/S4ht0udXb+m8ug+zCX2GnihNvnl3sh8fjSmx+og5mABCiUFLQWAHpTchFTL/FVzv
         011l9J+bgO66YH1/L2U4LiGTLssmTQ3+Xq1x/0t41l1mIrd3D+b505BDeKo3F34thjxV
         JoBjlPyQJtPxSThrpDFv7DJP6DyXD4gLMYpASjAlEYCVX2VCAArVtiKBqMHPIBV/wmPQ
         HxORZpseqp+nmP0kISm9hhCzmuO/cQVJsOHmoRNrkA8feU0h3s0I5Aa5tNXFf/+ZHOfI
         NZIw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ffr6w07WqJ7fpxuEAVvrnnal5JCwoCxFr15xo3u7euTJuM0Qq
	L9lzyVOccRcD7BvMHREPUvc=
X-Google-Smtp-Source: ABdhPJxU/sqvAUixTOKtiXSaA9+sm9IwbSElIHLHPcuTNn6gKASxLcjyhsoJm7YpWRrRH2QIQiWzyg==
X-Received: by 2002:a05:6102:2f2:: with SMTP id j18mr1414623vsj.47.1591227138971;
        Wed, 03 Jun 2020 16:32:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fdd7:: with SMTP id l23ls498333vsq.4.gmail; Wed, 03 Jun
 2020 16:32:18 -0700 (PDT)
X-Received: by 2002:a67:3083:: with SMTP id w125mr1496651vsw.207.1591227138590;
        Wed, 03 Jun 2020 16:32:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591227138; cv=none;
        d=google.com; s=arc-20160816;
        b=wGLop4+BkEOUdMvQRtwnV2Cx/BUIwWpXBFapbrbZ9sq1g7Uqnrv2SHtIfnDcNTHYFY
         Bdxnqp7I8rW7EzRWlaN0Wzlc6LxlnsordWAzNqHKmCASG+JWss5tuoYYl483toYx1DNq
         KyOqD6PVsFN6jGziaoblQtbbX5pn7dDZiFDQNurjbEZzI9GIvdG+x1DwnLQorrYzpIiv
         Dwt30OH6gSumIgAwc70huTFYQvttrkDJ48gwshF2+q0L46JOgQTnnolg8eLk8EVe+mdi
         Rj2Spgq9stM2mWzPQSH41DkaIRa41voKIq640JXhQo+nbo3jI8P5Az8qXeMoxEjP3Eub
         HsTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=vlsGh/2A3yd9dyMlCDYBd0p4l1T5Oo7IaL6NTs2MBUk=;
        b=kYdHiKwGxfWhPE8aoi19xwdnZPkUwvmUWHSAk53xPtHLf3nQj2S9zdNW1Ugb1UZ6+R
         Vc31ygmlA1m2hVkSC9uq+3TINvq/vs9cstdhSzDmDf0NBZyrz5j+41PbmyA/CP9m//ms
         IpiGHlckRn6DzBsuOzM4PNonX5+LG09b5Jow6EhFhJ1cW3+X4ERj1lCG+HAvNKDx2gcF
         yMZbqIIUoEbVBljouuPnjTGNxCZzS16UL6KYG2/+1SjeuNX/qZd6pBddofKB3dSwGZEE
         lAPnTUxvCa8nhy7UoceTP2kyZoPK71zAl3tY0HztDdKRE3rpJx6bnTKRfMdQiKvFbgzd
         C66A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=TU9flWAg;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id t139si90623vkd.3.2020.06.03.16.32.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jun 2020 16:32:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id i12so257911pju.3
        for <clang-built-linux@googlegroups.com>; Wed, 03 Jun 2020 16:32:18 -0700 (PDT)
X-Received: by 2002:a17:902:aa0c:: with SMTP id be12mr2119692plb.241.1591227137753;
        Wed, 03 Jun 2020 16:32:17 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id b1sm3836817pjc.33.2020.06.03.16.32.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2020 16:32:16 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Alexander Potapenko <glider@google.com>,
	Joe Perches <joe@perches.com>,
	Andy Whitcroft <apw@canonical.com>,
	x86@kernel.org,
	drbd-dev@lists.linbit.com,
	linux-block@vger.kernel.org,
	b43-dev@lists.infradead.org,
	netdev@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	linux-ide@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-spi@vger.kernel.org,
	linux-mm@kvack.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH 06/10] clk: st: Remove uninitialized_var() usage
Date: Wed,  3 Jun 2020 16:31:59 -0700
Message-Id: <20200603233203.1695403-7-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200603233203.1695403-1-keescook@chromium.org>
References: <20200603233203.1695403-1-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=TU9flWAg;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

Using uninitialized_var() is dangerous as it papers over real bugs[1]
(or can in the future), and suppresses unrelated compiler warnings (e.g.
"unused variable"). If the compiler thinks it is uninitialized, either
simply initialize the variable or make compiler changes. As a precursor
to removing[2] this[3] macro[4], just remove this variable since it was
actually unused:

drivers/clk/st/clkgen-fsyn.c: In function =E2=80=98quadfs_set_rate=E2=80=99=
:
drivers/clk/st/clkgen-fsyn.c:793:6: warning: unused variable =E2=80=98i=E2=
=80=99 [-Wunused-variable]
  793 |  int i;
      |      ^

[1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
[2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=3D1TGqCR5vQkCzWJ0QxK6CernOU=
6eedsudAixw@mail.gmail.com/
[3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9k=
nmPuXhOeg@mail.gmail.com/
[4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=3DyVJu65TpLgN_=
ybYNv0VEOKA@mail.gmail.com/

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/clk/st/clkgen-fsyn.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/clk/st/clkgen-fsyn.c b/drivers/clk/st/clkgen-fsyn.c
index a156bd0c6af7..f1adc858b590 100644
--- a/drivers/clk/st/clkgen-fsyn.c
+++ b/drivers/clk/st/clkgen-fsyn.c
@@ -790,7 +790,6 @@ static int quadfs_set_rate(struct clk_hw *hw, unsigned =
long rate,
 	struct st_clk_quadfs_fsynth *fs =3D to_quadfs_fsynth(hw);
 	struct stm_fs params;
 	long hwrate;
-	int uninitialized_var(i);
=20
 	if (!rate || !parent_rate)
 		return -EINVAL;
--=20
2.25.1

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200603233203.1695403-7-keescook%40chromium.org.
