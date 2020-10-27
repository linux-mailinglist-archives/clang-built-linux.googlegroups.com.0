Return-Path: <clang-built-linux+bncBCFPRMFUYQPBB35U336AKGQEDN3PHHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id EC86D29A379
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 04:56:32 +0100 (CET)
Received: by mail-oi1-x23c.google.com with SMTP id 65sf45543oii.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 20:56:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603770992; cv=pass;
        d=google.com; s=arc-20160816;
        b=OVkKdIM65MlJHcF1EU8V2c1fOLVAxc1aMdIQiNoX3WpihYVYs2dKcGyOuOGPrBSLgm
         nBeXyZkd0eIkhsr+fPfmtzlBC5DQu7IOB1V5jrvfQYTP8SwYVhGUGSxPVcfoRMTpaq2h
         rw4OdtmqHD/XI4JmwBi3SBk/LwJqAjKotTpijpbozYKqRyl+ZA/XHRMtyG0h/jYQ0gxT
         dH29SevmcOSEo69fH6uEN0HLd35swZGp0bY385GDpbaiRSogRpx2BOTag65C/NhPq499
         OIO/ya0D7dpq/y3Qxf5PFvRCGVmbkUzAXySlF+YHQhBvpvAQ17TnFKFIHrV4UuKkIQXt
         0Y/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=A1wUbv2hQk62xgoyN2PetUaHRzcegS9vvdIx/aUQPc4=;
        b=W6oTEwyDe+vUl/FHoyewDMwldXwiFpg3nPXaBZjYNLxphhEde1vVfg4qxH4/klM8no
         D7R12wFX0U6hQxPaQh4y+DTfIbu1lyBETHqAKOD/K/J6UXgBRpUttxxGkxOzhvekH2lp
         9uqlXr53Lf72FJ2YLRyoDiatJfelBZqPy6Oiwv7ABx9H2AK50zXQBGXsuF4csZdz8r8K
         o7HpnXyJd7j6E0wYUwnic4BoSu+jeJHW2IZF48MRdQz4UvqTHXmuxergFHxkbptkjeL+
         8H9Vq84lBg7tz4hNhBdMc65XZ/qt/FZigByx5bK/N/YZFJva3pClHrsCZb2X1E3R6ocZ
         KCfQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=X6v+3QJK;
       spf=pass (google.com: domain of xie.he.0141@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=xie.he.0141@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A1wUbv2hQk62xgoyN2PetUaHRzcegS9vvdIx/aUQPc4=;
        b=pROeunYg/swoVPDM3uWO9xkBplZKC82KI6xnQRzFy5OjX7Z6fsgwWg3vc2gKL9pNl3
         BSA1VSmlLBU02vo5THR4Bf6Wli7Ztqa8rYFP0gv169Jni7/pAFC3TH8R6cfo9cRjbQcr
         gvrwNm9NIlyH6tqPglCvAHnGg/K/5OXPZSHSlx3bIHPim/LLMCTS2/DGX6SzdZveiZx2
         BtdN33VHmOKwsjBlxFDtlQgB58rwPjlgOmHrlgAyO3KsBK/3E8l1n0wMDIg3UwKoPMm5
         dVZ68OnnI85LNq8PbvGXrDz261nTfCu5Gq0oJCkTlkeHBB27Pt9EVarTFwejizuPqVY1
         IrdA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A1wUbv2hQk62xgoyN2PetUaHRzcegS9vvdIx/aUQPc4=;
        b=DpgNvrNEaSN1xqRcOCHs1HENSqdLmrVjfsvKieW05ZQyMKIlpbeK/CtEZPCBy2QhA1
         lvRacGcYBRlC9E35KSjz0EFIaRM3YWwvA62f14Mj3dGB7h4ykdUCoPGSSpEXdMnULQNA
         +HcPEsxz1jkro6thdgw7gYN8zSVN9ukauZkzECHOn3Erf+Z51k0dCL7/8N1crdrUMmCr
         nhiqtF5jRxkrHWpINhB2daaS1nTzvY/Y2iHy55k8UtJydpyyGv/upYgRKdZhE9IRk/rD
         ifqrfNB0As3y6BTSum3ntgQAKAQNfnQKR4y/+G0GBFoEn8UAHD4ZpuxOXetJfkswaV77
         aELQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A1wUbv2hQk62xgoyN2PetUaHRzcegS9vvdIx/aUQPc4=;
        b=IabAg81EPjHYtFdPSAiFAZX9dV7KYP5IVw2eTTKn9xEY6QM8isgBuUOjCzWJC3/mhh
         ZmAd8LbL0yqADw35uEHYdEaCohOu/QWSenb5rIDRQBy9/dKJKH9sI7QbJrwdRSe6ik7W
         pRcruypp/oYve69dwnP2nyDkVJ1hJsY0634+HdlXbwwzFhAL8qbl3iMPiFvQ9xHjnuua
         1FESLlp4CtD2mB7F8I2ZoXQtW+nLaqkdM6AA1Zyh6pb9lWXSz2fFSPo6WbeWI1y1N8/m
         rxVhE130BlAqm31c91rQB8aEeiQrdL1fpKwqI2hyGOWsEVLIXlymeAlZ39D9tV1y0og+
         2MWQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5304EtPnaEOo2fomghYSxOE5HljH/2PQ5FOSVeFSSltGX1U6IyTH
	VzSzhpmaI+qJdH3cjnT9Vss=
X-Google-Smtp-Source: ABdhPJwjhmbLh/wWaktAe9VtWEQUztc51QqN40Ji9eAXzSuYUiTxfPezjU8ZjKQIs8KYihQCNwe+Xw==
X-Received: by 2002:aca:d48e:: with SMTP id l136mr89939oig.142.1603770991880;
        Mon, 26 Oct 2020 20:56:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:390b:: with SMTP id g11ls53478oia.1.gmail; Mon, 26 Oct
 2020 20:56:31 -0700 (PDT)
X-Received: by 2002:aca:5d43:: with SMTP id r64mr66042oib.163.1603770991553;
        Mon, 26 Oct 2020 20:56:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603770991; cv=none;
        d=google.com; s=arc-20160816;
        b=CC3bP7j6YjTamzR0ZyWBM9DY3wR7t0BoGI8TP4ca8dFHgMZHg5RaM+eNOU7im6TNXe
         KTnzsHTwz40g8MScY6zgGV18z4RvB1Ek9aWq8nYnA9r5dnLFYmRhJvClzHy3awDBcorG
         LKjonl1adTZsZseua1uS4aSK/mcDHFTdEPXPgJpXN+XIEpcbjQLw9zpKo64nnytQkrjO
         c6k7gIE3qCwPAcKM5cGOR2yaaHB2hQFY9eYYqwWsnqFFsuzmtTVkVENapdVY/ciVQ7CN
         S4dGHBzDK9rBGbMIxlkVp1NPhuDVjgvdcUWx9CX2miLR/gXOKX695af6xHoN273ddhtB
         S8Cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=928Y6cCd6X7WfnBYvopP1Oa2ebBib5VLieFKDVDEi2w=;
        b=MAdSYRo1oYkeisW8kQdIoV2XWFAcLa0dt5V/z0FxBge5xrWEQnYBehUlW/m46GZ7rQ
         fy1kUmvyP/zjxwLKCHFlsI5oXPdBMujiHOVFCNcxZ1rPG19wfWbXOmHT2wBo3Ew6g1nQ
         YPoBdXt+Ayx9sEJWo4z4HQmdcJqHuszKvc1hhCnoNZr2Fihx/HcXoUIXa/bWBgy8YbMg
         uDWmKnNMy9B8lJMSjmcVvR30S+KbJy50Sv8KWhKszBsMB0ITSjqZ3n61l+wUNw/1KbdB
         j0U5MqUXoKycwxNtbp94Brlg/mtNMCs71TlMHe3MSs4idqSVHyNtFcTDlyXT1g4Zx2bq
         ByJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=X6v+3QJK;
       spf=pass (google.com: domain of xie.he.0141@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=xie.he.0141@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id j78si25705oib.5.2020.10.26.20.56.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Oct 2020 20:56:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of xie.he.0141@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id e15so129810pfh.6
        for <clang-built-linux@googlegroups.com>; Mon, 26 Oct 2020 20:56:31 -0700 (PDT)
X-Received: by 2002:a05:6a00:13a4:b029:163:f435:28b5 with SMTP id t36-20020a056a0013a4b0290163f43528b5mr299215pfg.45.1603770990931;
        Mon, 26 Oct 2020 20:56:30 -0700 (PDT)
Received: from shane-XPS-13-9380.hsd1.ca.comcast.net ([2601:646:8800:1c00:ac90:26e5:f63a:9f81])
        by smtp.gmail.com with ESMTPSA id e5sm274355pfl.216.2020.10.26.20.56.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2020 20:56:30 -0700 (PDT)
From: Xie He <xie.he.0141@gmail.com>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Xie He <xie.he.0141@gmail.com>,
	Chas Williams <3chas3@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	"David S. Miller" <davem@davemloft.net>,
	linux-atm-general@lists.sourceforge.net,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH net-next 01/11] atm: horizon: shut up clang null pointer arithmetic warning
Date: Mon, 26 Oct 2020 20:55:58 -0700
Message-Id: <20201027035558.16864-1-xie.he.0141@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201026213040.3889546-1-arnd@kernel.org>
References: <20201026213040.3889546-1-arnd@kernel.org>
MIME-Version: 1.0
X-Original-Sender: xie.he.0141@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=X6v+3QJK;       spf=pass
 (google.com: domain of xie.he.0141@gmail.com designates 2607:f8b0:4864:20::444
 as permitted sender) smtp.mailfrom=xie.he.0141@gmail.com;       dmarc=pass
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

> -  for (mem = (HDW *) memmap; mem < (HDW *) (memmap + 1); ++mem)
> +  for (mem = (HDW *) memmap; mem < (HDW *) ((uintptr_t)memmap + 1); ++mem)

Note that these two lines are semantically different. In the first line,
"+ 1" moves the pointer by (sizeof memmap) bytes. However in the second
line, "+ 1" moves the pointer by only 1 byte.

This driver is old, but let's still keep its code correct!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201027035558.16864-1-xie.he.0141%40gmail.com.
