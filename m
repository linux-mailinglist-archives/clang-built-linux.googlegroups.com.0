Return-Path: <clang-built-linux+bncBDYJPJO25UGBBNVYWX3AKGQEA7NZATI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id 71CBE1E29C9
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 20:13:11 +0200 (CEST)
Received: by mail-qt1-x83b.google.com with SMTP id n33sf23148347qtd.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 11:13:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590516790; cv=pass;
        d=google.com; s=arc-20160816;
        b=Mm+ZuhflAKZVZEPT0DJJOZ3h4z0NTqMga1YG4lB1iabggUZhrqZf4+/cTz7SCQ/9E/
         2QiTdJ0HnnK57RM+Ec8NYkNIFMpTOxvPF+yCmA5nkoE2HjkeTZUCIbKAgC4B31sg+zE+
         xldmC9TcBcWoCGPKnjJv+GkWqH/atZz20x8nNl9DSvzuVL/Sywsbeoj/SPr8Mv6/e0Wl
         3nWEqZlrnwPj8frxpi4FrtJaZFF+xoo4S8SOKaj9nrm7yY82E4v8AUYFPXoJoayC4QHI
         7sVhmMj0lv/VeqPhIAR3baDzcJyXKOeq1dklwqL9V8PmNJDNxb9qLQXf728TtpdV7VIv
         xxag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=a/NsflAGNFWPaKU6FYP4+bA9nZ097yU6kFZrqm9nHHE=;
        b=KbpKoDQvnLnpEidrQuWRfBwyatcspXWzAVomkNCvdPaP+iEgmS01W9G7+nQPp7N8sc
         5EkW6eTcMGuk4Ij3cYboYRux+aB02/v0lrqmRiEGoIMSytTCIDqmOP8yiVZQhcnlYYuq
         jehTpac320hpzH0ufzVPbsDL5mCp1e9gwAI7Xf8XnHiTHPxGXKu/Y7Y3wSorZjOhNELT
         pWlC4QafAR6WbRLIDZTD6VxIonDN2U13Y2upxyRGC4aMNDD39eQxR7no+YGny1VIrzym
         M31nOuOUCVL9Nd1BbNSWbtcKa/bGKJB17zwH8MC9CZKXO5tKDivT4Em6uky0g4Hi4tyZ
         u+BQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RaHt12wv;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=a/NsflAGNFWPaKU6FYP4+bA9nZ097yU6kFZrqm9nHHE=;
        b=JZaCPBHEJcW3HUmB616iAEPaQOvtL5TvqVohVmG8WJLcNLO+haQ4JiHBMkrXoVQ5+0
         gkx/1B8WGheauLCI/AT8dM01gZlPW8lDIDdYYS+X9iBgBSKJ8aUcwBcQPxrKna9iwLYL
         sMyq9aHmfDr5/tmREBE4TcON8NUT8RU/52QMxwGEuVQ0yXPBOYrXSX0vCKn8rOYcptw2
         MPptm/Mq34N2h1qWeWXm/7fpZfVErJkbH69S3mbGjzYZmMs+MGgt25uTM1uf//t91UYY
         26BxJRx2NEOMbTGKlS3ZX8FPZZ7/48QI8kFSY7iuSSW08w6p0SkZtDYO3PL6uUZtkkKz
         kdew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=a/NsflAGNFWPaKU6FYP4+bA9nZ097yU6kFZrqm9nHHE=;
        b=Vq+3afe3qOlqR9FM482himgaeiOUeYvBPstOjPgM/XXg+MC66TKF/jRa7SARc9Z9cD
         CpZEwcCzcEYnVdq0LhnMkaMFY5jTiopxRN1vJ/rn5ag9v7VoGRCIRNn5dCunQS0FIXqm
         3BMXy/hJ3Bjs/shdnrRUKYKBrDIh0MI6sNLFjx1IHjbTpqZIrmZWLP8arGBiXpcnVCqV
         ByG33px85jTAgpsnMrLVEVypu6lqXS4+RicTolEGEVtf7wglVG8rm/7qJlbq5+EbAyQU
         NdNJYyuhGBpGYsUFxFBgMHlAMh0PSGSZ/+/TaTZDnd1UYSuG9dsvjP1R+oLQRdK6ivT5
         idEw==
X-Gm-Message-State: AOAM530nYQHVk0uf9bEAlRiKcvI2Jvfcr+5ngXYSui41Q17i1JOhKuCl
	tOmPu4VduPsJs37gkSj1dlI=
X-Google-Smtp-Source: ABdhPJwzXfih/TPhrkTbhmuzyBsFkDSYUEGKTgBcBzMH4AVpUxU/0EQ9vdUqLrplTGzcS8l/Xu9i4Q==
X-Received: by 2002:a37:4e4e:: with SMTP id c75mr42146qkb.143.1590516790530;
        Tue, 26 May 2020 11:13:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:3fd5:: with SMTP id w21ls572060qth.7.gmail; Tue, 26 May
 2020 11:13:10 -0700 (PDT)
X-Received: by 2002:ac8:dd:: with SMTP id d29mr56508qtg.392.1590516790157;
        Tue, 26 May 2020 11:13:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590516790; cv=none;
        d=google.com; s=arc-20160816;
        b=FdC7LxIlN2MLO30jNJt7/R9D8oBiulUx0kvHoZYhOhfUfriGYcWS3QQW3FIvQA1SFY
         3PrVXR2S5/+4/xcp7AuUT2HdwKD5ohrulDxmUwiAJZ0Q/ox5nIGsTdyqIyml1YHNjx7J
         VQufsJLyJe1hg1wxw0nwNnMipINS+dEuycr5kSFajHohXCZBejuQ6oaB5i/op3sj6nMJ
         PPU1eRtw56Fe1isrncCfWBrreRQ9hcjVzo7IcZZv/Vj/WLgZGZs1WBocoFrvsyj90cZ3
         R6ZvyyG/CJcHqLSqJjqQBkMaitOEo74EqhZ59backCGvcS72D0Mznl3UXf3q0O44/+30
         txIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1M5+lH45bn+qZSHAItaOoLPP98v+wT4Co9b5U7SWVW8=;
        b=Mtyb+aoGG7JXpXvqWqt2SLC8RrZ/kFzVwoGd+Mc0emQIjxi4jdBLEDYm8Z28XeUcyM
         hwyg5eRqYhQ56ddbTioDafiQYvhYx49JPHFBnj+dvgEjhrNicyoSyzDEIhnN5nlO12f1
         Pjhla4pqvjWtfRnE7XptGT6z6bLSqMhkevVgKN2eF4UpLPt5Q6I1QInBBbSsyq4R5BZN
         yxspjLSmY/OeRuRhSYRxd26L7NJsKyBp7FD2p7k5+fzzpsxbMBu2ypcqyY668K4qDvmJ
         1YRay4Dza9vyerqoqx+blTanjj9GFRO9ufQlVRaEN0Y3bsxT+4NF07szrx67dTavx2eX
         XhYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RaHt12wv;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id v73si47209qka.5.2020.05.26.11.13.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 May 2020 11:13:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id q9so129447pjm.2
        for <clang-built-linux@googlegroups.com>; Tue, 26 May 2020 11:13:10 -0700 (PDT)
X-Received: by 2002:a17:902:341:: with SMTP id 59mr2088402pld.119.1590516789291;
 Tue, 26 May 2020 11:13:09 -0700 (PDT)
MIME-Version: 1.0
References: <20200523035043.3305846-1-natechancellor@gmail.com>
In-Reply-To: <20200523035043.3305846-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 26 May 2020 11:12:58 -0700
Message-ID: <CAKwvOdn5R0md+9jVGrzQhR4ZfcSWsCqPE9qK2UxMDOKnWnpaKA@mail.gmail.com>
Subject: Re: [PATCH] phy: intel: Eliminate unnecessary assignment in intel_cbphy_set_mode
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=RaHt12wv;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044
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

On Fri, May 22, 2020 at 8:51 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Clang warns:
>
> drivers/phy/intel/phy-intel-combo.c:202:34: warning: implicit conversion
> from enumeration type 'enum intel_phy_mode' to different enumeration
> type 'enum intel_combo_mode' [-Wenum-conversion]
>         enum intel_combo_mode cb_mode = PHY_PCIE_MODE;
>                               ~~~~~~~   ^~~~~~~~~~~~~
> 1 warning generated.
>
> The correct enum to use would be PCIE0_PCIE1_MODE. However, eliminating
> this assignment is a little better because the switch statement always

Indeed, the switch is exhaustive.  Might be a risk if new enumeration
values are added to the enum, though.

Probably should just initialize it to PCIE0_PCIE1_MODE, then you can
simplify the PHY_PCIE_MODE case a little (replace ternary with
if+assignment).

> assigns a new value to cb_mode, which also takes care of the warning.
>
> Fixes: ac0a95a3ea78 ("phy: intel: Add driver support for ComboPhy")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1034
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  drivers/phy/intel/phy-intel-combo.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/phy/intel/phy-intel-combo.c b/drivers/phy/intel/phy-intel-combo.c
> index c2a35be4cdfb..4bc1276ecf23 100644
> --- a/drivers/phy/intel/phy-intel-combo.c
> +++ b/drivers/phy/intel/phy-intel-combo.c
> @@ -199,9 +199,9 @@ static int intel_cbphy_pcie_dis_pad_refclk(struct intel_cbphy_iphy *iphy)
>
>  static int intel_cbphy_set_mode(struct intel_combo_phy *cbphy)
>  {
> -       enum intel_combo_mode cb_mode = PHY_PCIE_MODE;
>         enum aggregated_mode aggr = cbphy->aggr_mode;
>         struct device *dev = cbphy->dev;
> +       enum intel_combo_mode cb_mode;
>         enum intel_phy_mode mode;
>         int ret;
>
>
> base-commit: c11d28ab4a691736e30b49813fb801847bd44e83
> --

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn5R0md%2B9jVGrzQhR4ZfcSWsCqPE9qK2UxMDOKnWnpaKA%40mail.gmail.com.
