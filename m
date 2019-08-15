Return-Path: <clang-built-linux+bncBDYJPJO25UGBBO6K27VAKGQEJCPT5NY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id EDB768F763
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Aug 2019 01:05:32 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id q16sf3112444ota.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Aug 2019 16:05:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565910331; cv=pass;
        d=google.com; s=arc-20160816;
        b=Yw3cry0pu7tBc3amNvUS2j9VtH/uTnKnawDEqkzHD6gIX53yOCj0umFlD8Jg3ud3Vm
         My5yZ8lo7BcIqWN9nd4aHWOTwNv6tUb1detC9ix7iYqXf01zFJd9rqSe1XkLcirbFTRK
         E/lhON1HZaaZYd4uX4yDVw4c0KvhTjF//3Ygxo4pgI7pazFfyoWCx0tX/Zc2FeqsXtYJ
         O5hegcW44uR/+++NTwnYr4dLgqhGgT+pSkGS8Q93ItH36StEQVl8/U0VlJs/NjeE6bUu
         Q4ao8/ej2kL6QK+xyq9YX8yqBPFlEpFkZ0cxz6VJvc9aLatnKFxha2rYogtGIxqetOSG
         UcQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=uNN6cXlGFy5kl785LPYqioXH/g/8M9i8Ed3Nxoe9DlI=;
        b=UcOg+j46stJrW4eYpFTSc3a4/7Hgw0IKeqyFY2eYWbD586jQme/A4GUqZSTYdqasDI
         Qt7PeZta3YmJlW4dVOm4MfsubWRTuu8q9ejCiz2lSXeyy0GEI2FpKXnsckts+Y7jX6dB
         xlWMjLICEhQfq9zI0LFESnut79yjTtl/aofqw8hPrtPOtjQoE3lpwRA8Bhavf4E5hzRN
         k1HABvCbDC5xRzW7AqoD0A8g+QZWn3NuoMHoAh/C3iZNmgtWtAlDAJxRdEAdvTwX2y42
         fRsYNuj0rFjz27YNinfqBBk3lLpjPQWDQiozfbh17EPngaXkoAdjymCRS3Ty11SxUkcM
         hfvw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cPrbVHFE;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uNN6cXlGFy5kl785LPYqioXH/g/8M9i8Ed3Nxoe9DlI=;
        b=cNGN7Rfm6hZrMN4w3Lq5Jr6oYfNNanvuETB3ZRO+thjR2i+h0imSEpnVnSIw0flBAw
         lJFd1hLvJ4IM4sz+N24VBOppeg62yKh2Mxh5rvb5er55qddgxOdgOylDPpguvTgBR0dK
         UwdE5lrizQBsaRvE6Is5ez/jJ7T38CiGsOVdsXlbpMOGbtHTBcHxUG6aBFcA07Dpn2RT
         CeBVDyziOGeCO+IkaAwW3Hw5pIb5CBcC3nmJBoamymhW3S90Ak9QOtp12CwttH8MPGCR
         E9nMvXF70cELLqKNWU1eKk1zgkCdcVwe7Y2skZ7HKHT8YzjEfHZSvR67ZIXJealXQ5XX
         OgaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uNN6cXlGFy5kl785LPYqioXH/g/8M9i8Ed3Nxoe9DlI=;
        b=pFxIHkoLoccm5D5QN/HVbVeqjCqXhy1S0zTrUSKHIuaoH70okqZP+wqvyjbTK/oBNJ
         97nIZV2DK71hYDv0CbJASxIYa9YbbIGueDHczCFOF2L0KwcwDMdeuSd0Kk5CD+MOFcRN
         Dz9Em4qL1gPGHWZAvD7WlAyglKOAXR/h+oIw3UTjQicxg99HpB7CRJxKOAICBAYJQ/W8
         RHfXo//uinNqXGH5oT04B93HTSv15ro0ZO82cV59ihstymLhGaLcAmQhaY3ukOCG5Yba
         HhTg1Y2oHDo/OpC63bwHha5vOpzs+vdQ/jkFNH3JowopNmkNNZvJMvD2ZJSFgMCxY7Hw
         +szg==
X-Gm-Message-State: APjAAAX5QXDd1Q+Mpe1f9UwPBEtcujhZEgeQ3YiCn4f85PCMgcF4uNge
	3w8/SSA8KMJDdi3wkUCQpDM=
X-Google-Smtp-Source: APXvYqxlWFQaQg96LOfwQmCd4U4nSRfX4BgzjNUnbMlr2B5q2QPoFMAJphqG/5nhAnb6cFbFwSaf8g==
X-Received: by 2002:a9d:7c87:: with SMTP id q7mr5588073otn.241.1565910331600;
        Thu, 15 Aug 2019 16:05:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1e97:: with SMTP id n23ls1304040otr.5.gmail; Thu,
 15 Aug 2019 16:05:31 -0700 (PDT)
X-Received: by 2002:a05:6830:1e6e:: with SMTP id m14mr2977183otr.258.1565910331375;
        Thu, 15 Aug 2019 16:05:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565910331; cv=none;
        d=google.com; s=arc-20160816;
        b=YRRCbAmdYjAPulnhsSGqCNa3Rx17pzY/vKhFqSProWWTEq+UFOuAN4wKeQBGrdryQ2
         WYXIfQcdkr1Tjb55HsaZYJJfBs8ZSVDFGl3xluByOo0MG3tL6cypPyUN+3Rq7aS1S+2P
         cb3yppx5VHlSfGs+9y82LYNLiVgeqIfoBfGQecIzFq9kZi8Gab9W9wUA84weDZNjkd6D
         08eRudgcNbpxuLHTYRJEHOxxyEtGPaQehCDw+fne3o7C6N/mvdN4/+Z1FVgK5Q3n7B0+
         /zdwJUxdyg7J+8J9YRmYhTRRORWKNXT0yChXz/+K3BmnuQLNZO6oFoAfcLt24hiRzeKD
         jX9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=cPt+lD53UMmWuKSJSUmfcWxGBTRSp/XxZ/GGdWGHTvg=;
        b=zdPfD9pF0G3QTpHr9LEZEdJRPSfr7zAdxrLVcTGKdNWTHN84GGyTfZUL3aWpv3dGZn
         1pBbDUY2ENrnsKFQBP76Wn6g65MH6IEfirVRzADb17/u0nghxXtfbfE40UZIxmn5Zl9C
         lcazkTHpgCvhX+0ULwRZ5kqXF1IXtVorULcOARacJz3bp3m5O3lvKIol5uH6zi+C3ivd
         GEtvdbHNGeMivWHTnL8+I/2ejYKG7jNPAUxOar3XV0uPUAJ60WucNnjQ7Ctws+uIFCFk
         0997zypANU+SlTqdcN0xy+TO4hd3ou0endcJyuf5bR+avibP/WWkAJw1lvmF8ZtXLr2N
         Sx0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cPrbVHFE;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id c20si271415oto.5.2019.08.15.16.05.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Aug 2019 16:05:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id 196so2073025pfz.8
        for <clang-built-linux@googlegroups.com>; Thu, 15 Aug 2019 16:05:31 -0700 (PDT)
X-Received: by 2002:a63:61cd:: with SMTP id v196mr5358843pgb.263.1565910330216;
 Thu, 15 Aug 2019 16:05:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190815182029.197604-1-nhuck@google.com> <20190815204529.GA69414@archlinux-threadripper>
 <CANiq72nM4d-rc_qUMUEisXyEU9A0mbW=O_w5X0zoqWNPLacuNw@mail.gmail.com>
In-Reply-To: <CANiq72nM4d-rc_qUMUEisXyEU9A0mbW=O_w5X0zoqWNPLacuNw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 15 Aug 2019 16:05:19 -0700
Message-ID: <CAKwvOdm4Lsj1mPn3+FtPDrNVSQovsw8Fe9u6Yw3te7pD-izAog@mail.gmail.com>
Subject: Re: [PATCH] kbuild: Require W=1 for -Wimplicit-fallthrough with clang
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Nathan Huckleberry <nhuck@google.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, Michal Marek <michal.lkml@markovi.net>, 
	Joe Perches <joe@perches.com>, Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	linux-kernel <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=cPrbVHFE;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Thu, Aug 15, 2019 at 3:59 PM Miguel Ojeda
<miguel.ojeda.sandonis@gmail.com> wrote:
>
> On Thu, Aug 15, 2019 at 10:45 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> > * Revert commit bfd77145f35c ("Makefile: Convert -Wimplicit-fallthrough=3
> > to just -Wimplicit-fallthrough for clang") for the time being and just
> > rely on adding -Wimplicit-fallthrough to KCFLAGS for testing.
>
> I would avoid applying commits that will have to be reverted just for
> Clang, particularly since it is not fully supported yet.

"not fully supported yet" you say? *drops monocle*
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/MAINTAINERS?h=v5.3-rc4#n4001
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm4Lsj1mPn3%2BFtPDrNVSQovsw8Fe9u6Yw3te7pD-izAog%40mail.gmail.com.
