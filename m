Return-Path: <clang-built-linux+bncBDHPTCWTXEHRBZUP5DUQKGQE62DY45A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id C1D6D75861
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jul 2019 21:49:58 +0200 (CEST)
Received: by mail-lj1-x238.google.com with SMTP id 12sf10956856ljj.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jul 2019 12:49:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564084198; cv=pass;
        d=google.com; s=arc-20160816;
        b=w2IRGnOBz9j1rALCRfXBsZ7JO5n3fGeUdrsvhy6g0mQ6D3mWhwQXCm/YN+jP+ccZSi
         /ysbt/4r7qg8fSRMyR6QKH9QhvqUaZrCBvAWLIwuZarlKwAkwtU6Vmpd3RTGywm0QGQI
         +fpsYb2XY1RqukLJwQrSw34ZCuwf/qCFTOnJ4L6xDm50XDmrYWWugcgZLuFdVoqTaWB2
         DhioDZQOM4NjsSEhd37OOWp9XlqxjjiCOEj5JkVy6qV8Ehg6D+GB1PUXfdq5BaQg6XJr
         8l695A6RMdcr/vY5ryQ3nyQphmGBkjCr21itOKwHWit3exeDsvtj3xVjvNXqsxL9FjHI
         n7vA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ulB+ILSkCpSevzGDYwZPzzSi96yjG7kpY8I8EdFmS+U=;
        b=rroNfLYZT2SDG/cXuywYvtf5Ud4b1ZYoCgHamUogscXaFZ4XD5+aandjy3flr+gEek
         q8IWbNuVi7D/wXPw3jldwv2ntfir+1lSBWkeX/2mCtK4jWZGfGpdQpMQ3/E11BxvnXFw
         m0beuELwHnQ+J4VsiOsQti4KxbujNmcNZ/vytGMDD4hHqdlxWiT4YCw0NUSiAZZBDx/d
         9dNb82tAxzypbEg4GfBvhq/zhr8mw9ySlLYvOo0sVrRu/aCvEQfsadDYCowx1IHWRAtb
         Bla4owLaeiLGb4tsxj1WxrmNzcJQLGbon/XZaQQ3NBvH8BAkk6sJTI/s09wMvOjstn8y
         0PAg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of heiko@sntech.de designates 185.11.138.130 as permitted sender) smtp.mailfrom=heiko@sntech.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ulB+ILSkCpSevzGDYwZPzzSi96yjG7kpY8I8EdFmS+U=;
        b=pkL6FE8R9IEuu9U7Hlwfg1MthTHkK+8aYIjCU0zPiXaKPRXlNwb9Ztt4F3AOsO46m5
         WcLl56fSveVb3cqIQoXV5RimxnM3UJnsUKfHIRyUkLx52Kg2YaXVAkU7AKryim0hmJcI
         zurQeEiG+Xmm7mKBcDfKnvNLl/M8eU6phhply1+zqq4lfySIfKxIGK2abbfjN3vk8C1f
         dercUjeZRENvIthb8Z47PrOSjNqDaPlItMeyF0RORyvIqmD6OzYAWsTW8QSENIB+FJg0
         pB+BBV0M2guzZhon5FImk9fHqZG2PygYDFZKy43qDoEuKuaQkIFFG0sT4s4/XW7DyDg3
         niwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ulB+ILSkCpSevzGDYwZPzzSi96yjG7kpY8I8EdFmS+U=;
        b=Yp1L0gOaTI+b/caMhmTq4AEHnQjiDN0gp19/IWajBRwNm5vfNq01XcKyi3xFnlB8VX
         B1g8HSg46LdwgTN4q/oFx3xg5VokhV6bYGbfd4/w3K+gGD0VhsTjIDjKUhcoDy+9pN2r
         lhQx+1gl19wb833sCD70L2/UhIvz4UVKcUrWjtai4JgLNAbEu40N7z59j0a6uwQt3lol
         z14ADXIuV42+WgIHezLEHHaocOfF0GJfSuK2Xd+kALQ1glcCR93hsmNS7Jourftr0Qov
         I4bnPSZEB9nsfAKRNIzbhye9duW/OX4l2XQaVJQTkEQWrevVQDj2f0oyg+pZ/y+VNkIz
         HOhA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWhheLMdpRpJGn9xbJ0T1hLsTBLgG7AUU6oAPIA/wMwUmjat++4
	hVQpBlkgprsS/yXQd8/aTgk=
X-Google-Smtp-Source: APXvYqyXBkJ1XZVAdPE7IfjcPiFaiF7hEOexZ+1pflDHxGt1tap5xBaD/++c+WdE49b304Jmltwleg==
X-Received: by 2002:a19:6519:: with SMTP id z25mr41701572lfb.42.1564084198355;
        Thu, 25 Jul 2019 12:49:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:f715:: with SMTP id z21ls4221992lfe.9.gmail; Thu, 25 Jul
 2019 12:49:57 -0700 (PDT)
X-Received: by 2002:a05:6512:244:: with SMTP id b4mr10806681lfo.114.1564084197684;
        Thu, 25 Jul 2019 12:49:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564084197; cv=none;
        d=google.com; s=arc-20160816;
        b=oILzwe52Kbu/MyHTyFWAV3rhHZ94LO+8DSc0BhIqrjsnMhBuu69piVN0FP9w1MA3N5
         7a+crTGNoieyE6bEMl5g7bXw904dK/abWajYAuc7ltuwV+3wG2TEwrtB/EojzNeFYUJJ
         qBBFiBpEsG810CDNe5krVGAJAU8Z2L2S4kEI0Oem039ca9kbfyHa2YyYRpw4+g8CJNeV
         MiA1vNlS7jeoVBvLsFEFggEyCncGO0PAWhGdHQPXwhf3z9oJgs4HGToIuQ/3KgG/ts7D
         4LITClKRIe8ChylhazCtQ5DP3b+8m1QhHIvDL1H4FLyrdmzULtJpiXJR7R2OjfG02jB7
         Gj/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=8dwq7w2Lxkxg27CpEkotvhZ7t+6niAvQM6ORduUxvVA=;
        b=gun6u4Ma/yuVokK+/YgZAABJbW+B2QhcO0WR682U+SYz6TPDU/GnjUWwiQn2Ev+5Dk
         cD5EQ6EY8X8wlsU0KniDNT1JAFSOm10AHnpHXV+QPYZ0CdxN+6aAxNUD+QikrnJWxVno
         KGiBrhAl0A/kWJk8oq+m4hAYtpbF/0IgcEGP/IAkCwcl4W+vdTVlfMZTyhfMu1V4UrGC
         i/kTJq2DxFFsRWGIKuBCyIOgJRao0S2Z0icHga1cLPKHuXcj5gSO5vkpyP7kSuddD1yp
         RTD0qbFErLa6cdvb1Fw4hUK5R33vcsQQwpF9QgJunw81wgEPDvud3QhNdg+nN1yKKTtt
         M2MQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of heiko@sntech.de designates 185.11.138.130 as permitted sender) smtp.mailfrom=heiko@sntech.de
Received: from gloria.sntech.de (gloria.sntech.de. [185.11.138.130])
        by gmr-mx.google.com with ESMTPS id q7si2907813lji.5.2019.07.25.12.49.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 25 Jul 2019 12:49:57 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of heiko@sntech.de designates 185.11.138.130 as permitted sender) client-ip=185.11.138.130;
Received: from d57e23da.static.ziggozakelijk.nl ([213.126.35.218] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.89)
	(envelope-from <heiko@sntech.de>)
	id 1hqjkO-0001oe-Bz; Thu, 25 Jul 2019 21:49:52 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Huckleberry <nhuck@google.com>, mturquette@baylibre.com, sboyd@kernel.org, andy.yan@rock-chips.com, zhangqing@rock-chips.com, linux-clk@vger.kernel.org, Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-rockchip@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] clk: rockchip: Fix -Wunused-const-variable
Date: Thu, 25 Jul 2019 21:49:51 +0200
Message-ID: <1978058.CBpQlN27Fr@phil>
In-Reply-To: <CAKwvOd=RhoKvXzuGVe0PaQik8NEFhDkxuwv-T_s6KAtXCDVVvg@mail.gmail.com>
References: <20190627222220.89175-1-nhuck@google.com> <CAKwvOd=RhoKvXzuGVe0PaQik8NEFhDkxuwv-T_s6KAtXCDVVvg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: heiko@sntech.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of heiko@sntech.de designates
 185.11.138.130 as permitted sender) smtp.mailfrom=heiko@sntech.de
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

Am Freitag, 28. Juni 2019, 00:32:38 CEST schrieb Nick Desaulniers:
> On Thu, Jun 27, 2019 at 3:22 PM 'Nathan Huckleberry' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> >
> > Clang produces the following warning
> >
> > drivers/clk/rockchip/clk-rv1108.c:125:7: warning: unused variable
> > 'mux_pll_src_3plls_p' [-Wunused-const-variable]
> > PNAME(mux_pll_src_3plls_p)      = { "apll", "gpll", "dpll" };
> >
> > Looks like this variable was never used. Deleting it to remove the
> > warning.
> 
> Indeed, looks like it was dead when introduced in:
> commit e44dde279492 ("clk: rockchip: add clock controller for rk1108")
> 
> I don't see a pattern between when mux_pll_src_4plls_p vs
> mux_pll_src_2plls_p is used, so it's not clear where or even if
> mux_pll_src_3plls_p should be used.

The possible sources for a clock really differ often, so there is no general
rule on when to use which sources ... except looking it up in the soc
manual. And I guess any possible conflict will turn up when someone
wants to use a clock that currently may reference the wrong sources.


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1978058.CBpQlN27Fr%40phil.
