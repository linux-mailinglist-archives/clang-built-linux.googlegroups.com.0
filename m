Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBRVZYT3QKGQEAERWZYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 031A5204262
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 23:04:08 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id x18sf11161103pgk.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 14:04:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592859846; cv=pass;
        d=google.com; s=arc-20160816;
        b=atW9jWyJeOoMl6ZYj+dmR68UFAbmignVBWmttRIGU0N02gLvMO52hvKa/2RXichtZK
         XZ5oFBHD6h2j4xjwOqI0F6VRi0DbvE1HOFQAl0e9XKLe7As4EF+668cA4wXLqBOB5re4
         8NamBw8w5u9cFMipEsbe793h5KTgAegKVNb04V4DE2HwnXioecHO0DSwfccXkIPXbXu8
         e44u5cgm6tzWgb5FbVzXcqo4JGMJlNvTUn0zdaIHzjgi2VOlocoM7UOvWLrNnjYiJmHM
         kbuwTpSt/Kd8EugiVg5unBwI1joBjLFtGZ8+3UnfJp1qmbAagnmpJ1k2I0VktCHGry5p
         43Iw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=zkUlVldjEhWwnECNQ4fvjUfm5uoqM0Ja3gbgD1V9ElU=;
        b=yj7ru9WnFiXD/vg5mpsWKvAaFM2qJ6zb4DRhLFYdaIQK84vEGRwZGyh4JKWV3Kwvkk
         kFcKnhOrSF2pueENoFLKLiLrS+nqJCNpI5eBnDYPWLXgQj6BUrGevj8tb0vFy/tck0EV
         dv3lZ+O1KWpzk7k16Li4PINF0U4aSAiOprrSbIjNh3M33ZXzUaKMXYUxcOlbmY9PSxhE
         uRFYS6kxawrgG66lrL2Qlys1wGUdqYQE3ZOGbsW/gsSsY4EuyoD22DViW4AHy9ix+J6E
         xnILtRt7KfCQXtde8zsrHjEN/qzLxDlnlMfu0QxN1B9/XCJDSAe36hEi4w9WTpaii9uX
         8xnw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ILThu+fB;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zkUlVldjEhWwnECNQ4fvjUfm5uoqM0Ja3gbgD1V9ElU=;
        b=llKsn+RWB7qE9VK5BnE08iqaWQm19QiMwUr6HuK2VmCBBBzvotVpAjS9y8SrRQeZt+
         SozFBxuk3PXtfS8JkvHIP0GFNNUcx7l/jLwCoQZXo/+siuY2Erg3Jf3fXZMxtl5r43ll
         qqFNKj99TcPdRzQA2UBbXMligZG4COfCvV2NB7sxMkmD7GLwqRiyNTQpJTYtD0xi6KpC
         kxANcnlDGMlhlOwTgP9cdvMsPcWwrCkqdOnI4O18e47KHNiQEZt1IlB9IK8JvTyhXSJa
         beZ1ZTbIPdPnovP+Qi9CSKCUn0rT9lD5yCMV2A1adJpQMF3VftW9IkIEy/HVS6uYEuEn
         HO4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zkUlVldjEhWwnECNQ4fvjUfm5uoqM0Ja3gbgD1V9ElU=;
        b=Ix8jV400hkBvBg90+RFiZXlE8pkP+WjpDeEbMNwWAeaWf1oBgiJKwOY9kAiy/V9XvW
         aFcAhhPq3bVWMk+2Upzf5PJDz6243Vj1nbX0oMGXcVanKFNpvarvHLsmwaj7JOHsSPc9
         lvX4wvo7RXKhvmSCcqUX75ah+/v9Lb9RdJuSG6E9+XAmyb842NPPX3oMsBnJV4QqmRgS
         0jkOM6uO4riDOd+1y2GA+aatAwLJL1SDkMpSrfLHr4oJqmWCC86BFiKTIfUoIodnJVK3
         S4QYsWQHVQutFayWH+fYeQoDGY7GjyUrcwJLJxXX357tKbBiPnbs3gjtjPsJWX7x2U/4
         K5SA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533uPL08Tql/RcoP+d1tXh88w1VbBHozuvyrKe2Fg2ot5Fc/O9X4
	vXuAWsJWGXWZkpJpQIE3A6c=
X-Google-Smtp-Source: ABdhPJwDMKtB+lC/eLbhCwh00TmJOKML6zARqeW1vopGmYowxAf6Zqv6pN52YICAWtlcQ+7LEKdFlg==
X-Received: by 2002:a17:90a:e00a:: with SMTP id u10mr20099558pjy.17.1592859846741;
        Mon, 22 Jun 2020 14:04:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:3c0d:: with SMTP id j13ls4300280pga.8.gmail; Mon, 22 Jun
 2020 14:04:06 -0700 (PDT)
X-Received: by 2002:aa7:8bc6:: with SMTP id s6mr21608828pfd.260.1592859846303;
        Mon, 22 Jun 2020 14:04:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592859846; cv=none;
        d=google.com; s=arc-20160816;
        b=c0MTJc7eZE7BHqaizac3X7H50c+f8PhkSS5xGx4d+dBwCd+3i/8fBQAFhPhK+g+WCo
         MEp7A1U85KLzViIqMDU0TMo+k2ovfoe2xg6XgWCbH5I2NMqeb6CYCHkzCmwtUhfi3hbq
         d3VuLW7Ue4iJbdbWo6RFCSyGPozXkyJxLW51MqtEKhO8Fi+vvoFabXoqAbDpe7cqexu+
         EmjGguWIRBFhyoZHl/qi49m91uw+sCfetUwSJK1Foo/07aewdVxyTrTc5pvWGuXdcKlu
         tfUcMnPfVm4jHSTqQ9fbApCu41zIw1QkHSQLYfNtVuJIdOVUIPYnAZIctnD1Od65Y5O4
         CDbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=XaQAHgI/fJz5n4PH9+AAQxpUaFNfDOAFJjIvvuWc6mg=;
        b=Du89XssAAbtTK0Qro0z2SqQu2Qb5YNz9bb3aIDVJexKnTklRE76ZtDfJ4D0qvax3St
         7n8B8T/pIfSDKr6vXVfwG9lzdppmP0jN8I5/FheT1f6fNSHWQgIVwL/9imcqSRAt8uFg
         lpqZCLztPTOtM874W9ezJCGJi9rJBHjaJSRAFrKNwTb0D6r2ixPtpczv8tHa4RwMZzYo
         4R7n2cg2JLZIYHKlw9f+swqM6WrNw/Ty319deD6D8Ps8U2e4dSX786hKmnKqz/2y9aDi
         Fdn6/sjXyVMvtmsCOymUqqgOw3oywj+fhX61GK/tpVa4OysjYi8bEXHJLFhp0NpbyoO4
         pGww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ILThu+fB;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id x70si859178pfc.6.2020.06.22.14.04.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2020 14:04:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id y18so8117903plr.4
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jun 2020 14:04:06 -0700 (PDT)
X-Received: by 2002:a17:902:b942:: with SMTP id h2mr20581705pls.163.1592859846012;
        Mon, 22 Jun 2020 14:04:06 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id d2sm10586968pfc.1.2020.06.22.14.04.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jun 2020 14:04:05 -0700 (PDT)
Date: Mon, 22 Jun 2020 14:04:04 -0700
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: LKML <linux-kernel@vger.kernel.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Alexander Potapenko <glider@google.com>,
	Joe Perches <joe@perches.com>, Andy Whitcroft <apw@canonical.com>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	drbd-dev@lists.linbit.com, linux-block@vger.kernel.org,
	b43-dev@lists.infradead.org,
	Network Development <netdev@vger.kernel.org>,
	Linux Doc Mailing List <linux-doc@vger.kernel.org>,
	linux-wireless <linux-wireless@vger.kernel.org>,
	linux-ide@vger.kernel.org, linux-clk@vger.kernel.org,
	linux-spi@vger.kernel.org,
	Linux Memory Management List <linux-mm@kvack.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v2 04/16] b43: Remove uninitialized_var() usage
Message-ID: <202006221403.EEAD37E94B@keescook>
References: <20200620033007.1444705-1-keescook@chromium.org>
 <20200620033007.1444705-5-keescook@chromium.org>
 <CAKwvOdmsXuqx-3Rt_KNFq4psAeFjG2-7qQaqkJ7dDqqmscUFNw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmsXuqx-3Rt_KNFq4psAeFjG2-7qQaqkJ7dDqqmscUFNw@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=ILThu+fB;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642
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

On Mon, Jun 22, 2020 at 10:04:18AM -0700, Nick Desaulniers wrote:
> On Fri, Jun 19, 2020 at 8:30 PM Kees Cook <keescook@chromium.org> wrote:
> >
> > Using uninitialized_var() is dangerous as it papers over real bugs[1]
> > (or can in the future), and suppresses unrelated compiler warnings (e.g.
> > "unused variable"). If the compiler thinks it is uninitialized, either
> > simply initialize the variable or make compiler changes. As a precursor
> > to removing[2] this[3] macro[4], just initialize this variable to NULL.
> > No later NULL deref is possible due to the early returns outside of the
> > (phy->rev >= 7 && phy->rev < 19) case, which explicitly tests for NULL.
> >
> > [1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
> > [2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
> > [3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
> > [4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/
> >
> > Fixes: 58619b14d106 ("b43: move under broadcom vendor directory")
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> 
> I see three total uses of uninitialized_var() in this file, do we want
> to eliminate all of them?

This is the only one that needed an explicit initialization -- all the
others are handled in the treewide patch. I *could* split it out here,
but I found it easier to keep the "no op" changes together in the
treewide patch.

-Kees

> 
> > ---
> >  drivers/net/wireless/broadcom/b43/phy_n.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/net/wireless/broadcom/b43/phy_n.c b/drivers/net/wireless/broadcom/b43/phy_n.c
> > index c33b4235839d..46db91846007 100644
> > --- a/drivers/net/wireless/broadcom/b43/phy_n.c
> > +++ b/drivers/net/wireless/broadcom/b43/phy_n.c
> > @@ -4222,7 +4222,7 @@ static void b43_nphy_tx_gain_table_upload(struct b43_wldev *dev)
> >         u32 rfpwr_offset;
> >         u8 pga_gain, pad_gain;
> >         int i;
> > -       const s16 *uninitialized_var(rf_pwr_offset_table);
> > +       const s16 *rf_pwr_offset_table = NULL;
> >
> >         table = b43_nphy_get_tx_gain_table(dev);
> >         if (!table)
> > --
> 
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006221403.EEAD37E94B%40keescook.
