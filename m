Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBGEC2CAQMGQEY2GW4NA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 41EB0321FA6
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Feb 2021 20:08:10 +0100 (CET)
Received: by mail-io1-xd3f.google.com with SMTP id c3sf10279711ioa.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Feb 2021 11:08:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614020889; cv=pass;
        d=google.com; s=arc-20160816;
        b=BypLahupDMHCsWtqFNmk1Wxz787DBeRmmX7ixZ7GXYdla/ZO2RR/fpJvxuxtP3PkTn
         By/eCtWoDjKJtbuDPy4jnl92F/HGuzN1RHLgH+nV/5QsPAdoNsVhR1Z6o4zpJ0DA1eho
         vImds0FywcsHjo5eqkCsrZjBLuGzFY3x5nNOLp0auVh+vImVHnrBIw4sFfi4B7oWeJX7
         7KwnVEiGoa+8DrmFwrJy/D+BLIS/MkcYEXw/VZZsCRTG2qJGu0pptM01dze6x77gnsRW
         bQ0lDVud3q6ntKg7XNtUBDzwQ1oabaVHDPS78JmlnOol+THQjnVTDBnsbQ91GrM4QCqj
         vvCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=m2FoEqgMLfJNwLa/77uH+uLBe3coMNIf3XryQEy8Yjo=;
        b=aWpsDTXbO2FVO5P2xzm4MApuKJDhVuBsi1mJiiYIB2nlqRW2sMOm9eqnLrR4fNs3KS
         jwV0fE9+epeE82ZUnXx9GMRs8VRkcChNY+JwYncy18h732Wtmq/YOb9IERPAfPYq9Orx
         q7Y0kqGGIELTumlp7xy7ttKT+4d2E5S6p3xzP3pHu3btPJr0M5gkUp4aZh6fFSRFUUDR
         1ZgHuCv9BD37d2nCkmFW+z/p2Qn3YQ0PDGJ1h41dBEzupL7nFQEIzrYn4ID1ON0WYmH3
         j7pQ73DzQB2dCyRyfNUquS5Hi4BTsaw1b+wW7XVRsFRogWVGAs/EoUJAKCe9/7XwHiEB
         +S+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=DCjRqWbn;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=m2FoEqgMLfJNwLa/77uH+uLBe3coMNIf3XryQEy8Yjo=;
        b=Suc6EWog3AF0ISyZGvddGSw5/3jlJL5PfND/4GzJlwNbxjrd04/hGxFkUj88bj5xfr
         4g08yLfj/+rYOGDxcqPcaiPaStsKps3or/hE8winfCwD7PxsTMh0y8LNbW29ffo9QcJA
         RAJFICxbwQhLkVQBFH+kjua1FoAIKSc4xNYY6FVipVIqOvy3LC7XUDr9E0snEszKyr/w
         XrCexDEJdsOEfRKkxLVaeRWI7VsZRcUf2/AJcX6fi/n8jaQlwW2T6ow9Qqe8Ua0IUQpe
         VDGVInMRmA+Q7ATStRsqbB5YJswdkmshTWXtOTRnALYm/abR2gyNsZ+U8MLRy5ZRbVz4
         fwvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=m2FoEqgMLfJNwLa/77uH+uLBe3coMNIf3XryQEy8Yjo=;
        b=qHo5irEDygqW/bYMiIFSRzxPQt3pjTmg/diWMjMz5V1jEmXgb2Wf6qs1utMHsp2IYx
         PPP4D8xIELhGJwQvTCNHnRjsyO/TNAlGmsx0CGvWBxI7hyVy16MJYn5ADN9NT0BDngWm
         XZ0v/NkzmNOypxfEmoU3jMiOxUtgAnhMbSIMmSP+gFuv10TV3v5RX/UoFB0ALM7zhzLx
         zDb9fJcjmADsJmFhgxHV/m0LuaXWW7DLGAd9d6GMd/7t+44CTX/tkUj2jCW1yAEzilqe
         zoDnbxug3NsFpskVP8o8Z4imWV3r4XVTWwQx8kwdE0Qdn7K0FtI3qHNy3ZQLKOK9qmv5
         g+8g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530dDoPEl8ON0eFkNleHZ/+wQk/GuA6Exz88QOVkP70617djqdo6
	Rz2+iY5QltPRj4DQ1a3CImY=
X-Google-Smtp-Source: ABdhPJxVv5TBv+YOVZe5xk4E7erJH+QgiF6mjY4wLO4KTYlxJDFOTH+3g/eigA1fGE5G8Ffg/u3l1Q==
X-Received: by 2002:a05:6e02:1aa5:: with SMTP id l5mr15779964ilv.278.1614020889076;
        Mon, 22 Feb 2021 11:08:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:1687:: with SMTP id f7ls2520223jat.11.gmail; Mon,
 22 Feb 2021 11:08:08 -0800 (PST)
X-Received: by 2002:a02:c552:: with SMTP id g18mr7157472jaj.76.1614020888666;
        Mon, 22 Feb 2021 11:08:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614020888; cv=none;
        d=google.com; s=arc-20160816;
        b=JWINibgw333Jj1I1nD1dzXckS0WOI/Zy4PmqMjiRoYdahACfOYD/lDxHDcwlBuIIT+
         enUHBKMWAv/TQtWMDKktowekHwSEpr9Fm/a6iYIGIxOI6ANr+4A7pXgK6XxlxQpad0uc
         yB13neYpX+nEUYbqbHZsnxzejl96leY/sJvu0AAUoEwfttETp+Ls0ID1/RpyWWWLZ7iX
         gp/5xT29r/cYKgdL20SYr5VzgRU9wstVCkFKbypiudNSaqjyDot6Zb9Rqvg1p+sYPj72
         IIYH0u7uqJ2bAobN90Vr7vtTBbqA5UOuOhvPlSA+rY1FL/Sk0rVFBVT+352ukclFXxAC
         Ep0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=BnzYpLTwRo1+A5JKUDfkOyNgPOkYPv0uqUZ3x8nqH4w=;
        b=lS9gpmp+q3d18noHhguAN01u3OBfSlMduFFNWux6cMm8/4aHntjf60womDXtkj+cY1
         jQk4K25HASEZ4WSgZrsj3aAuoqq/AviT+yxlNbWSm5QQ3cV1hGsBKTW5Ji1mzWE4qXb5
         dUDZO3l6bVfqoPFYboV3xO+yjLg9x6umEFNISJkkRH+ciVbwBaVvFP0Et7LQ9U64Ift7
         tUHKwdVnZjECOgqT8rZZJDuh3GBC+uUp077mfPfaHHj8hgo2YMV8voEPmxArTi/AUzGO
         XoYWxU4tWMmSon/FnWoorMO4eIZxcmMDR4JKuvrkh23bCrstqrIdJjtRVBEdnyCYkp6w
         02XA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=DCjRqWbn;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y6si940698ill.1.2021.02.22.11.08.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2021 11:08:08 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9596D64E31;
	Mon, 22 Feb 2021 19:08:07 +0000 (UTC)
Date: Mon, 22 Feb 2021 12:08:06 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Gabriel Somlo <somlo@cmu.edu>, "Michael S. Tsirkin" <mst@redhat.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Kees Cook <keescook@chromium.org>, qemu-devel@nongnu.org,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] qemu_fw_cfg: Make fw_cfg_rev_attr a proper kobj_attribute
Message-ID: <20210222190806.GA41637@24bbad8f3778>
References: <20210211194258.4137998-1-nathan@kernel.org>
 <CAKwvOdkJfJ+LDspz04tsjd=55LxF5rgTOAXt0cPxTyCCUBqgBw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdkJfJ+LDspz04tsjd=55LxF5rgTOAXt0cPxTyCCUBqgBw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=DCjRqWbn;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Mon, Feb 22, 2021 at 11:02:34AM -0800, Nick Desaulniers wrote:
> Did this happen to get picked up already? EOM

I have not gotten an email saying it has been picked up nor does it
appear to be in -next.

Cheers,
Nathan

> On Thu, Feb 11, 2021 at 11:43 AM Nathan Chancellor <nathan@kernel.org> wrote:
> >
> > fw_cfg_showrev() is called by an indirect call in kobj_attr_show(),
> > which violates clang's CFI checking because fw_cfg_showrev()'s second
> > parameter is 'struct attribute', whereas the ->show() member of 'struct
> > kobj_structure' expects the second parameter to be of type 'struct
> > kobj_attribute'.
> >
> > $ cat /sys/firmware/qemu_fw_cfg/rev
> > 3
> >
> > $ dmesg | grep "CFI failure"
> > [   26.016832] CFI failure (target: fw_cfg_showrev+0x0/0x8):
> >
> > Fix this by converting fw_cfg_rev_attr to 'struct kobj_attribute' where
> > this would have been caught automatically by the incompatible pointer
> > types compiler warning. Update fw_cfg_showrev() accordingly.
> >
> > Fixes: 75f3e8e47f38 ("firmware: introduce sysfs driver for QEMU's fw_cfg device")
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1299
> > Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> > ---
> >  drivers/firmware/qemu_fw_cfg.c | 8 +++-----
> >  1 file changed, 3 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/firmware/qemu_fw_cfg.c b/drivers/firmware/qemu_fw_cfg.c
> > index 0078260fbabe..172c751a4f6c 100644
> > --- a/drivers/firmware/qemu_fw_cfg.c
> > +++ b/drivers/firmware/qemu_fw_cfg.c
> > @@ -299,15 +299,13 @@ static int fw_cfg_do_platform_probe(struct platform_device *pdev)
> >         return 0;
> >  }
> >
> > -static ssize_t fw_cfg_showrev(struct kobject *k, struct attribute *a, char *buf)
> > +static ssize_t fw_cfg_showrev(struct kobject *k, struct kobj_attribute *a,
> > +                             char *buf)
> >  {
> >         return sprintf(buf, "%u\n", fw_cfg_rev);
> >  }
> >
> > -static const struct {
> > -       struct attribute attr;
> > -       ssize_t (*show)(struct kobject *k, struct attribute *a, char *buf);
> > -} fw_cfg_rev_attr = {
> > +static const struct kobj_attribute fw_cfg_rev_attr = {
> >         .attr = { .name = "rev", .mode = S_IRUSR },
> >         .show = fw_cfg_showrev,
> >  };
> >
> > base-commit: 92bf22614b21a2706f4993b278017e437f7785b3
> > --
> > 2.30.1
> >

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210222190806.GA41637%4024bbad8f3778.
