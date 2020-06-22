Return-Path: <clang-built-linux+bncBAABB57HYH3QKGQEBHEABDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id DAB1A2032BE
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 11:03:52 +0200 (CEST)
Received: by mail-il1-x139.google.com with SMTP id g8sf11591448ilr.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 02:03:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592816631; cv=pass;
        d=google.com; s=arc-20160816;
        b=zmB9v9/IYojyYgrPDtz++IzjRhBFZBDFy+3zh91OKcm55a6w70sp04m/9nq6jR93pX
         gDfuIe7sy4wJAKnEIxTBlgHfCYGNFFe23FnSGECw1BKfjFPpCm9vYaUpBaM3wX4bazVn
         quW0+a4h16OXCNFCOI5r98txmA+C3IIqAcQlbJ8FCbHLeduRq+3mzqNNw9f+Y3Ysq2Bn
         gX26+5rSdFBYW+JpBp4SOcwDyhZzVXeICTOz6vndUxnO4m5DUBJ18BBVnql1jn+h+tqd
         Cbp0Oji20WFQwx3Ocx3lfrQvo54nPjjssnEojh70dQ6fwtZt8z/bhjFD7cho+8TUL9It
         OAJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:message-id:date:to:cc
         :from:subject:references:in-reply-to:mime-version:sender
         :dkim-signature;
        bh=W78vahtOGFJl6UhY7N0ZlUkqQs0sBeo4zr2PUfJSjFU=;
        b=BDc3jY+C2C+N5Dz3Wu3tXUJbctCIv+WZIG78MQQjF2qwWHrpnW4L+CbYgw53ufYf/y
         VRauhKi8znDfp+zu7ITCyTIZk1nNUG7dYDAayTBRnHRaJLpovE22cx+BTWeTZA2emAwy
         vLTYWdG3ngJetqHBNyJWKQZ3VlmmoPvHV0mnu93aymu/htzK0oFjpcwSQz+i1wxDFrHg
         ul4Ux97PAIK2l/GdHCuvntkuUKY7ikVyBAMCIkHygtj7BCz8In6P6UdOIiFFxf++JN2u
         cIAXuoiPEutxNWK6BUXRH3Ux3yvi1gD02TgnPR8eV9I6vGveXZXfO8Y+grQHEYNBqtq6
         izbA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="Xh/zfNmL";
       spf=pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sboyd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:in-reply-to:references:subject:from:cc:to:date
         :message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=W78vahtOGFJl6UhY7N0ZlUkqQs0sBeo4zr2PUfJSjFU=;
        b=HNUGBObIwHqk3fyKLXxG+vEiCLpxcjEqTWGR24imJgmHwNzYqxFYXHo+GVlf+DD1oO
         eWQLSXFdpjsexro/0WznI2c5r9d+Jtv/mvVQvNTg8CsaNtOwpjMBiBA+JEguWYNd8ZR6
         bvxVOFSU6J270X0a2cGi96C4wOh0RKGOf5FKUnXJPVwvC2G49bdown/L3d2ztAP1LZSJ
         v8sS8Y08FL1MJkDTqFvPLEhC1HUEB+HcEXU001+zpZVqI2k9uo0N6Mqa95C46HdXBpJJ
         u8yRum2wQ3jwjECdXPgWW3rVyBVaRGjbBe7Ag+NNk6ofcFU0j3cDK3259GSJAO7x28G+
         FUmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W78vahtOGFJl6UhY7N0ZlUkqQs0sBeo4zr2PUfJSjFU=;
        b=LC6xXt2C7OMTYup8RFQUo0hwG1VJ96dNk2f4AP4gjQ1bDSYjNLjOlIKqdecqPbVh6f
         nlPg5cI5vRBPr9iPgG3sYTCpTAvtdhX2puj90cdx/kR5RBpxWlfc+Xwk9kgu8cyBi8cV
         5T/N77Q8+xU/kWvT/2xnRX+JH+rUt8w+DvIUV+4TrgoewPtbFTjYHFLW9xlLSvoKBKjE
         o6wNFT09egOpdgHADLuhRWGx/gL2ZW/KEplcIkaRFX/IFXq5U0BlyoTc7EGsTFV0Qz1F
         Qfb51+Tf3N7JrIntdHaP2QLW82h+Xia/XxdDqXf8yuXHGNA248lL1flvJKAfkTQQ4NqY
         Y/1w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531UFPeAVwbJfBSHKa4ly2YEir1BadTjjLFRx5xnS2ZamH8M/NxW
	2Wn4rMR0YWXLf7tk5qpnKCA=
X-Google-Smtp-Source: ABdhPJzX2Xcfdpfwoia7zUCGlmBlj0fYTRDP8sdhLqxmVRcxuSPbsLhEHdlATzIEf8oQa0V+okpo7w==
X-Received: by 2002:a5e:8f4b:: with SMTP id x11mr10035357iop.90.1592816631631;
        Mon, 22 Jun 2020 02:03:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:d719:: with SMTP id v25ls2613046iom.6.gmail; Mon, 22 Jun
 2020 02:03:50 -0700 (PDT)
X-Received: by 2002:a6b:3ec6:: with SMTP id l189mr2219582ioa.32.1592816630884;
        Mon, 22 Jun 2020 02:03:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592816630; cv=none;
        d=google.com; s=arc-20160816;
        b=p7JdnEg2hnmAbLZMgt/O8yB50EgyHI1Y7m6B0OXBlJHM9hRcN38J2GNekY2EbpO5fq
         xL/4WpJHGSllQVMU1gy5CdCnb1NyFj536subv6Q2QYdgu5NCR05nWfL3L/JjwinzDP6c
         LwMI5kZ6FySXRCA9o2BKAY7ElT9AKf01YK0MZvxnfDCPMXfV4TtmpuPl7sdec5SCR6M6
         dfPlmJGRwMcGLGaQDuD1qnC2HcdUDZU5T3LqVfd0HdnfHUgUZ3/HrQl1l+L2htwpuxEJ
         mRS/yxJAoOqc48YlNNsSXtFPf8k2lWasvbDLU2eAT4PQiHKbDgmztpaKuFKaRMgUL9Kq
         g50Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:message-id:date:to:cc:from:subject:references
         :in-reply-to:content-transfer-encoding:mime-version:dkim-signature;
        bh=uHzWPbIY/41z+WQ/nEUcOLsdKXZ7Qrprx0s9J3nM1WI=;
        b=CcIBu4zX4wf+anDYpJIxg9ydaHbBeoVJAxo6ifCm6AskAL2T/xxjJWavhaygwnrcxY
         XTlgGkDY0noZ14Ey1Ah8Gzf80y4Pyf9UnYy1ZS4CbEcf+hLtrt3/DKaGMCxXzMXcebjK
         P8dTz0jhWirkkn3Jo1pzJ8/S9TYXhblHEJlrvhD9U7OdKnMjIPFu87neYI3dlyl+aTHn
         /ghvITWWEKiwqDSgIp9z3VL/zJfllkvvaYDLVhLTp3qaUjcow4Z4bDgIYnjIJYBvHtHz
         gw/QY6TX+XVxWRbSB6cL4Tu4AkC0jF1cdoqsXMx0GLCWEOH2GKF+d54r2K49lQSEvOv+
         UEOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="Xh/zfNmL";
       spf=pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sboyd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b1si744597ilq.4.2020.06.22.02.03.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Jun 2020 02:03:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from kernel.org (unknown [104.132.0.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3708D20716;
	Mon, 22 Jun 2020 09:03:50 +0000 (UTC)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
In-Reply-To: <20200620033007.1444705-10-keescook@chromium.org>
References: <20200620033007.1444705-1-keescook@chromium.org> <20200620033007.1444705-10-keescook@chromium.org>
Subject: Re: [PATCH v2 09/16] clk: spear: Remove uninitialized_var() usage
From: Stephen Boyd <sboyd@kernel.org>
Cc: Kees Cook <keescook@chromium.org>, Linus Torvalds <torvalds@linux-foundation.org>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Alexander Potapenko <glider@google.com>, Joe Perches <joe@perches.com>, Andy Whitcroft <apw@canonical.com>, x86@kernel.org, drbd-dev@lists.linbit.com, linux-block@vger.kernel.org, b43-dev@lists.infradead.org, netdev@vger.kernel.org, linux-doc@vger.kernel.org, linux-wireless@vger.kernel.org, linux-ide@vger.kernel.org, linux-clk@vger.kernel.org, linux-spi@vger.kernel.org, linux-mm@kvack.org, clang-built-linux@googlegroups.com
To: Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org
Date: Mon, 22 Jun 2020 02:03:49 -0700
Message-ID: <159281662960.62212.15318119299039755482@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-Original-Sender: sboyd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="Xh/zfNmL";       spf=pass
 (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=sboyd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

Quoting Kees Cook (2020-06-19 20:30:00)
> Using uninitialized_var() is dangerous as it papers over real bugs[1]
> (or can in the future), and suppresses unrelated compiler warnings (e.g.
> "unused variable"). If the compiler thinks it is uninitialized, either
> simply initialize the variable or make compiler changes. As a precursor
> to removing[2] this[3] macro[4], initialize "i" to zero. The compiler
> warning was not a false positive, since clk_pll_set_rate()'s call to
> clk_pll_round_rate_index() will always fail (since "prate" is NULL), so
> "i" was never being initialized.
> 
> [1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
> [2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
> [3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
> [4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/
> 
> Fixes: 7d4998f71b29 ("clk: SPEAr: Vco-pll: Fix compilation warning")
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/159281662960.62212.15318119299039755482%40swboyd.mtv.corp.google.com.
