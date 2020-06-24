Return-Path: <clang-built-linux+bncBCQMFSVRS4ORB2EGZX3QKGQE2FNWNCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 169822072FB
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 14:13:30 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id y1sf1272795pff.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 05:13:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593000808; cv=pass;
        d=google.com; s=arc-20160816;
        b=coCip0EY+PybKkCq1MKQOVQdKewUhO1rT4VrSEX5ULjYP2he+Jzwa6Bm+zK1eCxiBh
         TqNIvoqdxzZc1XEX+SaDsLrHkPF2JmsE1qgLXd1XGNPlJyzw0HCKrvMY9U5ljeHtFTzg
         QRVWF8Mq6g+NvzKxI31c/5SwM5a2FIIOiojifQrwWeFPAlA4hJjV6zynbkDtv+aRI07s
         9MYYg4wVJZ2xsWZWcKFVmayXIYlCdiFLZRaKM/1M29GiQA5rVtD1LPzHZbV0UbkzPFaJ
         6hGpRvuc31Hp3m9Sw9xVBcSl0kiM6MVNINK0kEqPlIkR1ubQn1U4RAnYurOaPrYTPycV
         zNog==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ZwF+quOJ2D25JSz4Teq7pApSMsdtFJoUPomrFSu64yA=;
        b=Ok5uvtvTYSlip+n9p9x0ttGzH+ZQGncg5Zap+qmUn8xZl9BQ8qFy8lkgmnfO6CdTZH
         S0SrJXsLXfPNvb5dv8UYKqSGs5vcxzPCXpNzWEfijrfF2Rofl2h0PakACpi+nakcu6Uz
         Ac/yuVm6sT5FVZvJUqZPRPD/g5CDOeXSkPfK+/0kSj4lDN0PEhgfetcLAuXgrx5fTUeI
         bDzeLpQJvWI1h4CJewy9naaJO12UNBTD24sHT7NCmIVE3/RkJHJxVZ29DJSIYZxcTzXO
         XRtku8U2IZTc//LuAalZLku/QNMgd9AmjXXEZ5rqRMi1bka8LkgjRI5hKJ1XjTXkHaZn
         Htqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=AkHPlmFs;
       spf=pass (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=vkoul@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZwF+quOJ2D25JSz4Teq7pApSMsdtFJoUPomrFSu64yA=;
        b=tlYf8N2p8VoDNIDh0bJ6gIiQaswlRMJIjSuGgjGnl3+/y0mOAvUw/noU1wyvPTfsJa
         nA+trVP5W29/WjI0fA7HUjL/L2Huk+/Ud8UfXIjeMWWBsg2ecDZJG4H2cxjilUhHYQjP
         TJSlSzgbE7uvOTUpwbYz4UGOp6A8stoLNgN671VyfCTrVW1wM+MFXXySDwHyQLbB/t7y
         IO68HSIwqMpRrr3NhiTg4wN9A0EhK1HZJayLy8dbiHJbnHwhvUxSuBDIgD5KdYH1DDzh
         bZYwJtTWvqy3cK7+VNIASxNL8mY7nuPV8Xib4CANESW3dAcbDcmuj8ZQ0b3oiKRP2HXG
         F9Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZwF+quOJ2D25JSz4Teq7pApSMsdtFJoUPomrFSu64yA=;
        b=QXlzVK+aPMNFg/0l2as8F0I/SDQsrVKZ5dYNwdGIk5j+GFx/sgHf5evkQ/e+YAuH7J
         KwUZpGzifamTFGJhp9/P/DWMR5gjaK01BXT8R6DU0G8Cggir1hpUJuuRVjANqy5Ajlxf
         Oij5iKlWviI0efgKO2SV56uYkw4hXp9mynYZ2DmPqocSdLSJkQUDH+VZoAaSkrb1aSHv
         eW5HnR/cToCMtJuM0W2FS4VHUiUEqtsNeODZ7udfPrranOZeU8vF9h0N6Ll4UiwU6ny9
         IBc11YfWPcbQWhck2cg1E7hgOTlepe1VDB/nVbtMfh/r7oKOSjf74byOZWzV58RReFXK
         Wn8g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ypCWizIOP3n08/zwhJGGEld7uDpyfULuC9zoms6K8pg0L3BC2
	M/p29SDbmF3bOaC06weER1s=
X-Google-Smtp-Source: ABdhPJy51KnRAGeaOaIu3guQ95Sl/qLbJ7l4AaDoVGqQm1f1DLjhVu9UOZUjpY1hG7xI1Oa84Q6tqA==
X-Received: by 2002:a63:fc09:: with SMTP id j9mr20246453pgi.308.1593000808437;
        Wed, 24 Jun 2020 05:13:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:3acb:: with SMTP id b69ls1014486pjc.3.gmail; Wed, 24
 Jun 2020 05:13:28 -0700 (PDT)
X-Received: by 2002:a17:90a:8c96:: with SMTP id b22mr29717907pjo.88.1593000808024;
        Wed, 24 Jun 2020 05:13:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593000808; cv=none;
        d=google.com; s=arc-20160816;
        b=D/Ts+QA8QL/UUnd+UCG8dDUC2CJNO2gQgmX0BhxjOTQGaIMVsk+PC29BJz4M7A8YHV
         Kd5E5nMWxeMcxQSyLZJKEF39okuzaCO6lnyd/+BGmd05IkswnQ+5CT41bZVTYIcKush/
         Rn2bNR3HSP7L5ABdjqvhDVhqbObIhx6sZl8OzSyXk5cInxCzIpWy3H0aEaUm1KqelJV8
         b5MeKDYHpQ+XxFIIonr72Td0W5MKKUKStFbkNr+tmrHQhguu9Gr/wmjpqM5AHYCQo4oU
         E6Xe7GCHWj84Ov1aNkhTmR53nVliCuaWAffKb4Z08frbwEfyfFyKMW6WNsISrg0qknjC
         cTfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=I8aqB8tSAfssUaQ97QmBJvtULymoPdf6/cVTFWf3LME=;
        b=XEYZXSQsPgPjekCkLnO9+zy4djm2PX/TUMNhpJ4+AJd8PTMqA95ERDtF1dxD6Zfbks
         VXHRvtx5Uz4nJRwtmMWDbq93AhCeP0/0COOPLrE03Y+mYfOTYDbeP2rGRIqAPZm3w1eo
         eTujmPGcc17jBkG2Idb33RcJYZdZCVAnDiKlReayxiaBBhNm7FaSotjpRP2PQGWOfpY2
         Ja5tF8lg1s76tC6YrkruXq5Nv+dsMV19wJ17XVugCdapcjRFdty6P/OWQrE6CtCBukYc
         J3A9b9z9Abgqe8qJEkcwTvc1LXWI5QsmR5SOoO7JS8qVEZxyODOXfVjEoKlC7sT72dtE
         qUWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=AkHPlmFs;
       spf=pass (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=vkoul@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j23si920211pfr.0.2020.06.24.05.13.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jun 2020 05:13:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (unknown [171.61.66.58])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D9BA62088E;
	Wed, 24 Jun 2020 12:13:26 +0000 (UTC)
Date: Wed, 24 Jun 2020 17:43:23 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] phy: intel: Eliminate unnecessary assignment in
 intel_cbphy_set_mode
Message-ID: <20200624121323.GB2324254@vkoul-mobl>
References: <20200523035043.3305846-1-natechancellor@gmail.com>
 <20200616003004.GB1307277@ubuntu-n2-xlarge-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200616003004.GB1307277@ubuntu-n2-xlarge-x86>
X-Original-Sender: vkoul@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=AkHPlmFs;       spf=pass
 (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=vkoul@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On 15-06-20, 17:30, Nathan Chancellor wrote:
> On Fri, May 22, 2020 at 08:50:43PM -0700, Nathan Chancellor wrote:
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
> > -	enum intel_combo_mode cb_mode = PHY_PCIE_MODE;
> >  	enum aggregated_mode aggr = cbphy->aggr_mode;
> >  	struct device *dev = cbphy->dev;
> > +	enum intel_combo_mode cb_mode;
> >  	enum intel_phy_mode mode;
> >  	int ret;
> >  
> > 
> > base-commit: c11d28ab4a691736e30b49813fb801847bd44e83
> > -- 
> > 2.27.0.rc0
> > 
> 
> Gentle ping for review. Nick did comment that maybe keeping the
> assignment and tidying up one of the switch cases would be better but
> every maintainer has their preference. This warning has slipped into
> mainline so it would be nice to get it cleaned up.

Sorry for the delay, I have applied Anrd patch for this already and
should be in linux-next tomorrow

-- 
~Vinod

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624121323.GB2324254%40vkoul-mobl.
