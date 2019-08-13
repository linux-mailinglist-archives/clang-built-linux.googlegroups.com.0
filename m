Return-Path: <clang-built-linux+bncBCK2XL5R4APRBFGHZHVAKGQEWAGRO7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 59F788B086
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 09:15:34 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id q1sf10346663pgt.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 00:15:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565680533; cv=pass;
        d=google.com; s=arc-20160816;
        b=YUqd/AthIgzpcqcpt0Zhma4up0v0rn2MvBZ7wWF13OJ3J7mB52XAYTDu0gnnVZEKtF
         wtlu5rwYZCqu90lQ46+0JYIOR8kmcSJPUYuHYS3MP7Y667uRKRZljhECTu1iYpKpcLef
         4eJQovkJrrNXwwDb0dtrmt0OaMBAPcslSbIPEjl5PSflENVIFkN3Ey15I4rMxqs8KG23
         TRgbhWt74KnoMfA1/8RxKbTQQE8dT80NKO8M57uNZTQAHAtkOpKNxJuNtWuQIndDx4U9
         RU9dw/LptJM8jeORHQTEkP9d30SiM7wH4J8wD9JEDrxnjzizWzQVQM98igstWEvIRrnW
         3GPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=uxzDGemOxTBkoHCzetuOxdkIMOckAsr0SbIUfrCR880=;
        b=ypcwAc2Hd3STNpkt7xFd4A5gm8SmOrNhtRlnVp0tgQBS00qMZFDj0YoXY/q+pfcTwq
         BMj/tWvR+2eQgTgomFsnTFHnNI4CK4FGjc3AvTbWQ0UTdIUvlfdd9iJFnmqmXiX3p16f
         Hd5NAeMvV8/u8B0Qn2chQBY1y+JyiC8l6I5HUaaCWg7ldF3S3hiTdBtrEWViLitv8DAQ
         rLnYqyO+i1elghFGuQyeqGajccP4RlSx+kSKDGVeezXXRmBP2BpPRcWvWVM5eFWLpBqp
         yjpePOubvXtN/SIG9UOgoXUHfejm9WdnIDqvrCxh/2VWy3eP7wo+bJTlQF5+cECEyqBc
         KSLQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=HTz9MlS4;
       spf=pass (google.com: best guess record for domain of batv+500419ec2d16c94644ee+5833+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+500419ec2d16c94644ee+5833+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uxzDGemOxTBkoHCzetuOxdkIMOckAsr0SbIUfrCR880=;
        b=opmE3YudEvnbM1X8hFDW32JpLhNtueO3UZ0Tbrqdz1OVZTccbQ9MbGh+Pj0ens3cBz
         iqU8jADJWSnyjPTUXwAnlpiLkIjG0Q02D6e0rU83JbEBm+7NzPCshCuDCt8D4I5azXed
         1o03ES4S2BYWqNFpeJD/y6k9GdGGHk+2LsxNGOYKT4zQxG3l7BI1+tiUcTHSWTuL7mnl
         9RKDplVq/mNriAnRhYJmpmDq8HCp12EA+vNlQuRRWVoIWK2QkG85/wjOPk4tv+pfQyoC
         GGYOlC3EM7EapWQqkDm3+28xaz6HZ8V9PosIXQy/65iKd7lWSQDt0Mi7QailK/j2Pkqz
         S7oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=uxzDGemOxTBkoHCzetuOxdkIMOckAsr0SbIUfrCR880=;
        b=ZZBAQ2OyW9Iic6348XnT4IjAY2/MUi8bdnWiht/8lQHIH5iTGA9adBg5oI3pZCavml
         JQUZuBIaicTUgYVUy2xFZccklYhHJkKvmo3pfVb7vpuH4v9SaMXG30C34rTaCfYjoOe0
         zeW+JF3mKKAUhAArIPhonbLDIbFXzqXhU9C0v/owwH2vhwPi6alfksn7J6/OpBBtzWhT
         Cq/8nJmVJuMueSEvKk6CeHuHURCe7G7NW2ukbKdkfdmM/DLo5Otwo5fot28vnE1iXtGZ
         Mgk2lGStOENx1m1afSKOQEVgYPH1kscorHqTREQsnms6O3i2RLynZ3Mw17lRiOwht6r6
         N7Rw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXeW14C1Up9/nmNDWJAvGUu58PTUaQi069jIR5sKu1C/ofwzq4a
	lKGhNK53hNCKIczg2IB4JfI=
X-Google-Smtp-Source: APXvYqw63AlDsGOeCveFwKYwKlvLgR7YG4krqurwsLO4DhY9cfOHwZF2EEd97k0vucuR1t/Zs5LpOA==
X-Received: by 2002:a63:755e:: with SMTP id f30mr33383590pgn.246.1565680533060;
        Tue, 13 Aug 2019 00:15:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:354:: with SMTP id fh20ls189709pjb.2.gmail; Tue, 13
 Aug 2019 00:15:32 -0700 (PDT)
X-Received: by 2002:a17:902:bb8e:: with SMTP id m14mr15597612pls.107.1565680532652;
        Tue, 13 Aug 2019 00:15:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565680532; cv=none;
        d=google.com; s=arc-20160816;
        b=iLJtAk+1L1+aRKdkB4lf8g4QvMXu5c0lvMjR+qbJNpq5a3RP6NEf2enHntZxxHrx/4
         QyqyqoNS5jvQcVGNWKDH1aSu0orZrjQ5/axPE40UKutPgqg3uz9EDVYMGq0AetIMZn8N
         qXTEj2ltLophzjWcgppPx+ZAscZutghR+GmtCgVZm+F+uA9CnOFh06aT1Wn8YiwKqauk
         SLQKpEWHcgcYqwWUtoBA/I+h3tQqw7UOWHCaDEL9yaMtPgF0WqDk3ItJZhaDdgndwWVZ
         4Zh6rlaaig2Yw8YKw1IjWfqDzqmyS7mYOSHkq5eVQjNuYTbI3SKjBKrqsgEIzX+EjqNK
         LQmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=jQna6PHWwWISAI9eb8f5G01BTeDr0I8GheF/Eo+K8/4=;
        b=OjhFMtWs3j0xj9SvHOh5DLGSdlUF9NqovMRQavN53kZEENhtm1TQR6pEq/h+igWuMM
         zteMKWhJaSU4p9Nbtq9jPw5cnXFFYnndnUUF7pD71aYM9i5GK3321q4XB/04OuIa9x6c
         I6E/86FoMdma0fm+4lk1tzYee/JkUQMjZnzkJTJD0u8PdINEgU3CPtuSpuCpNQBh+9w/
         UAPkD0r4Wn2GvV00jr18gGwizrBDsJEwueTaIlAmLGBjWUXaAiO0scxd+9R1qAbPJkX0
         hkq1949oDKGJEnwdFBs78dVJ/KBWHlMBGw68sxrTE9MH/dne/7mA+YzZAaJ4GOgpeDQ0
         BoKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=HTz9MlS4;
       spf=pass (google.com: best guess record for domain of batv+500419ec2d16c94644ee+5833+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+500419ec2d16c94644ee+5833+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id f125si5375679pgc.4.2019.08.13.00.15.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 13 Aug 2019 00:15:28 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+500419ec2d16c94644ee+5833+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat Linux))
	id 1hxR1c-0002g8-RL; Tue, 13 Aug 2019 07:15:20 +0000
Date: Tue, 13 Aug 2019 00:15:20 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Nathan Huckleberry <nhuck@google.com>
Cc: yamada.masahiro@socionext.com, michal.lkml@markovi.net,
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-mm@kvack.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] kbuild: Change fallthrough comments to attributes
Message-ID: <20190813071520.GA5075@infradead.org>
References: <20190812214711.83710-1-nhuck@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190812214711.83710-1-nhuck@google.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=HTz9MlS4;
       spf=pass (google.com: best guess record for domain of
 batv+500419ec2d16c94644ee+5833+infradead.org+hch@bombadil.srs.infradead.org
 designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+500419ec2d16c94644ee+5833+infradead.org+hch@bombadil.srs.infradead.org
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

On Mon, Aug 12, 2019 at 02:47:11PM -0700, Nathan Huckleberry wrote:
> Clang does not support the use of comments to label
> intentional fallthrough. This patch replaces some uses
> of comments to attributesto cut down a significant number
> of warnings on clang (from ~50000 to ~200). Only comments
> in commonly used header files have been replaced.
> 
> Since there is still quite a bit of noise, this
> patch moves -Wimplicit-fallthrough to
> Makefile.extrawarn if you are compiling with
> clang.

That __attribute__ crap looks like a cat barfed over the keyboard.

Please fix up clang and keep the kernel source sane.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190813071520.GA5075%40infradead.org.
