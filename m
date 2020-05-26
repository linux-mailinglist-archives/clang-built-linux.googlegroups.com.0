Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBKEDW33AKGQEYXLG4MI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id 40C771E304F
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 22:52:57 +0200 (CEST)
Received: by mail-qv1-xf38.google.com with SMTP id d19sf20846943qvk.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 13:52:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590526376; cv=pass;
        d=google.com; s=arc-20160816;
        b=cEeWT82CyKl3yzhcOkg4rGhq92a+OfuFncXUlVm/DESG3BiRs+aFE91wOHFzxhwg+b
         pZz1ciYQQJiZ9nNXycOXAw8LPgnCdN+RcQVnKFIRLtO2INdhe8YyInsmRTCqai8nYaFJ
         C5z6FO5WlpWdQJcQsQcQMgx2bg+lQ+FXPQdb6bAZSX4U54+CFr+AxnDZfhBDKWwzZUpx
         eM2fwtwSK4oo4tZviKmqL/7lP4FOJfiqtPtC9Tf0Re7JJHIjc4oMaAIFuyddQ2U5pNyW
         W6YPWfbPvfvc68DgyowLobQHdDyVAOLW9FGErRBgtjpiSUn3MHXRzDOOJcbj7zSAEzFi
         /3ag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=fyFGRqQ6l3sLxvYGlCTxu12aey52ZVJHKx8Mk935zpA=;
        b=vrkT3Lc+a3gRytdCUY2nVS4QbGP2UmSClkLoWDRtf8NIMqbSFAaFxURXJQOQjjpHpm
         kfaDCFtqXHFFFvwuwdsJARQnKBAxJgo/Y/OyzVba2XKmIi1QHzqyQJABvGYNpazG3cw1
         rW2jMXkQDeyG2BzIKR1Myl/DkaGpR9s0qQlrODKehJoKgpPVgkwTv7hQPI0ENw15xsWZ
         IKwOusjr8unoz/j93CRHy4eoTHHDA/wHk5Mrsuqf2RZRYRDjeks1NdMp0pP5sZBDpHZG
         r9Ds1szXaP52GI2AIuWj6Ze3BCH1Nin7QwV3quhKzo2aWriTERu9kTewIOs18pBod0c7
         z4nQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="lgvely/S";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fyFGRqQ6l3sLxvYGlCTxu12aey52ZVJHKx8Mk935zpA=;
        b=RYvuz008Ea2sC7ioXd0VQlmDU7OlK9KClxkdRYm8GQMJW7jydoW+jqpBAAX+SvPJsN
         VL1JC/OdxmMADak8a9UbWZoMmGz0SUC1u/gyhYhvl5/i4a+LCDUXMs1yA4BSp4vXyOuA
         D5Ghh8tZ1F99hMYirWqyDQwktze5dUv0rQIQpKr02hblPdHWf71Y/Il4TgK2Pno0A2Y/
         XGI1/HzVlO95tzFRXBZ5DCmcOpqEgSAY0qpuw1dkovi/WX5EO29SpM0K04PsLAJA4Qw8
         kUm7ZBhsmKNfMLRVOrgOdDtMGxbuMPjYzTo93a8+fP1Q12qU5FyLCeOIqmhigPbyE9Mu
         qpTw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fyFGRqQ6l3sLxvYGlCTxu12aey52ZVJHKx8Mk935zpA=;
        b=QS5WPYVHgyzb4GqCqX4iyNNOwJUBbzegq/HNCHqTK3CrkCSYhD3UySmKjRdEMmPV+C
         e3uS9mwdya8/07SaXqhNdJbjTfjbWBSp7MjArErZtkB3aAQ3nSYsigenB5eBcuz0B7ln
         +YRsnM4I6WcpX3du4TtrrpVB+AzeMvvZZxoPfSWP0nV29RICVsczhm6eapcpLg7Qwba0
         0Bvt3+BDI4QCp84O6strhKcUIil0uQ7kYUgiPDmDShEAx1jJ5YvGZoMf8vIXK1uW9G1Z
         zbLobwOOLPVPaoH3lJ1DVKKPo40yw0zsiEJQw9jgHlw/iCvshlTXA9tnWk1MZk9tkoQ1
         TBLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fyFGRqQ6l3sLxvYGlCTxu12aey52ZVJHKx8Mk935zpA=;
        b=NmonlF5BIHQrC2d24BY+d3a5BGJ0gybVxgWdKFu2MtMoGVkHtH5ivGFR2ZA1ZHtw/J
         /5V7gqEX6ALNea5rwjumdTRT5hav9/JUq9I/nLAwhakmdw9AJ5N9ipCck7fkOBFo2YXp
         vzMQ49rUJ+iHpqtNQijzWOaMEgFSl3AItYCPLCPF2wIOjH641HXexEUDazs2DAM6mZxw
         xe/CcLZwwF9DPbMTOZNQHa9z+bzCdgnltdfWz32roM7/VQlUe4WP/mnx+/666TB43YNN
         KwIfq98VmHfJZSdkvjIfY3oXVddAeHBLNOaPgm4QtXNhPlt7nfdxKlgBBbW1knobiduj
         WWYw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532x4M781kvEU+wox1zKwtSVw8GLu7Xq2uoz5HbUzZP4Sc1qN2uD
	MkTfX/dyHYsDjl/uubYQU/o=
X-Google-Smtp-Source: ABdhPJxrWyhTcCcneUroWTKviT0WHSSsqo5HGVhFaZK8Dw2DIbo5h/05uCHL0W/zb/3YdNwtelMpiA==
X-Received: by 2002:a37:b583:: with SMTP id e125mr738128qkf.386.1590526376181;
        Tue, 26 May 2020 13:52:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:f84c:: with SMTP id g12ls2932140qvo.2.gmail; Tue, 26 May
 2020 13:52:55 -0700 (PDT)
X-Received: by 2002:a0c:8482:: with SMTP id m2mr12443720qva.65.1590526375860;
        Tue, 26 May 2020 13:52:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590526375; cv=none;
        d=google.com; s=arc-20160816;
        b=UbARchtNPPRacQGpQTs6uWaBj79E18Kzc95FrZW8Xmomt04Jv9qTBTLni0qq4qXRZh
         /cTpI9ZoHh99uGYd53bb2H7Krgou1i+G+E5Y6Rf6tsOlqTyl0RkCShFWRolbGQhutBso
         2dmB88y+KVyM4zmijl1dCwVNLdbut64cYslL93AtkVzF3hYl9ZdxLmPLrvU3OhFaC8Mh
         bH8uNVXDwchndwwVO4Q0O9HpJYqCWuA51n/eE//FRMQs8Ep2DfE6B+MrlTisubydZLL1
         tUubMh1WyD28wh81yZF+mGt3e0MjnGnVaOgRfTy6qqqpzWx6dvG1Ko9n2NBB1+Ik2LDb
         d3ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=5I2hn2Gk7YS7ZyJinmSH1ekt14dXnz61kMHW/CzJYGI=;
        b=OYMnCyEIv5W+NqaA1y0XNLwvHIhYIU47G/YRw3Avko352p8poSBxmvo/le12je3L8f
         +BTMQUKXEbhxjhk+XYfULj8AKZcNSnF7zbLS5P/GB9rwIozZlrbcNN7B8JGZzjeHJhNg
         mEG9nAbe4mkGOlHrf0M7JvSsDF8wavfx33XEQ9rzyymSNmPpGE3gX6Bo2P+F+NJ1I0mn
         hXKYggPpZ4pYdLZTzMF3Eo1GXWKypiWK49e+QnhEi/8RuFAl1KxYCyIArNnfteKDwwJa
         RQyck3W9u9wlKvBcyaaYlGgveKrX26txw5wQ7XMMhBnq3bX1Ffnd110KbejGV/lXrI19
         UHMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="lgvely/S";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id s11si83410qtq.1.2020.05.26.13.52.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 May 2020 13:52:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id c75so10650519pga.3
        for <clang-built-linux@googlegroups.com>; Tue, 26 May 2020 13:52:55 -0700 (PDT)
X-Received: by 2002:a63:9556:: with SMTP id t22mr632025pgn.83.1590526374755;
        Tue, 26 May 2020 13:52:54 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id y4sm375056pfq.10.2020.05.26.13.52.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 May 2020 13:52:54 -0700 (PDT)
Date: Tue, 26 May 2020 13:52:52 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] phy: intel: Eliminate unnecessary assignment in
 intel_cbphy_set_mode
Message-ID: <20200526205252.GA2607849@ubuntu-s3-xlarge-x86>
References: <20200523035043.3305846-1-natechancellor@gmail.com>
 <CAKwvOdn5R0md+9jVGrzQhR4ZfcSWsCqPE9qK2UxMDOKnWnpaKA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdn5R0md+9jVGrzQhR4ZfcSWsCqPE9qK2UxMDOKnWnpaKA@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="lgvely/S";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, May 26, 2020 at 11:12:58AM -0700, Nick Desaulniers wrote:
> On Fri, May 22, 2020 at 8:51 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > Clang warns:
> >
> > drivers/phy/intel/phy-intel-combo.c:202:34: warning: implicit conversion
> > from enumeration type 'enum intel_phy_mode' to different enumeration
> > type 'enum intel_combo_mode' [-Wenum-conversion]
> >         enum intel_combo_mode cb_mode = PHY_PCIE_MODE;
> >                               ~~~~~~~   ^~~~~~~~~~~~~
> > 1 warning generated.
> >
> > The correct enum to use would be PCIE0_PCIE1_MODE. However, eliminating
> > this assignment is a little better because the switch statement always
> 
> Indeed, the switch is exhaustive.  Might be a risk if new enumeration
> values are added to the enum, though.

Clang will warn about that (and since there is no default case
statement, that would point to a bug).

> Probably should just initialize it to PCIE0_PCIE1_MODE, then you can
> simplify the PHY_PCIE_MODE case a little (replace ternary with
> if+assignment).

I did consider this but every maintainer has their preference around
initializing local variables at the top versus close to their usage...

I do not really have a preference for what happens here, I'm happy to
rework the patch based on maintainer feedback, thanks for the review!

Cheers,
Nathan

> > assigns a new value to cb_mode, which also takes care of the warning.
> >
> > Fixes: ac0a95a3ea78 ("phy: intel: Add driver support for ComboPhy")
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1034
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > ---
> >  drivers/phy/intel/phy-intel-combo.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/phy/intel/phy-intel-combo.c b/drivers/phy/intel/phy-intel-combo.c
> > index c2a35be4cdfb..4bc1276ecf23 100644
> > --- a/drivers/phy/intel/phy-intel-combo.c
> > +++ b/drivers/phy/intel/phy-intel-combo.c
> > @@ -199,9 +199,9 @@ static int intel_cbphy_pcie_dis_pad_refclk(struct intel_cbphy_iphy *iphy)
> >
> >  static int intel_cbphy_set_mode(struct intel_combo_phy *cbphy)
> >  {
> > -       enum intel_combo_mode cb_mode = PHY_PCIE_MODE;
> >         enum aggregated_mode aggr = cbphy->aggr_mode;
> >         struct device *dev = cbphy->dev;
> > +       enum intel_combo_mode cb_mode;
> >         enum intel_phy_mode mode;
> >         int ret;
> >
> >
> > base-commit: c11d28ab4a691736e30b49813fb801847bd44e83
> > --
> 
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200526205252.GA2607849%40ubuntu-s3-xlarge-x86.
