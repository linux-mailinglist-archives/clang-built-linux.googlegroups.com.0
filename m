Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB5OFTWBQMGQEFEFZIPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x939.google.com (mail-ua1-x939.google.com [IPv6:2607:f8b0:4864:20::939])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ED08352F49
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Apr 2021 20:31:19 +0200 (CEST)
Received: by mail-ua1-x939.google.com with SMTP id w16sf175570uaj.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Apr 2021 11:31:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617388277; cv=pass;
        d=google.com; s=arc-20160816;
        b=qSZwFLuLZarGUekSuX9UAPIf53n5S7gtAn0RwToRWp0JkkuniVXaa5l9PCpw8Kdg2l
         DEjj+bsjO15VoBChVN7rurw28UBLSv47Qbpd9PHw78tW99WyF+IfiyXyzcDaKDyR4Voc
         BsAWthAqL+CchYnO5J2nZNSIDim0utRMa2+/6T3GZBGf+JD+5G2UnIYKMeK6cGJSoEtK
         yk2voqlszYzoBEHUMX6Ykmne1KwxCq8dZzmt/BI8eFIW0ZXn/24Mg/0gksVudJL4WX11
         AvgsI6OF7zn56OrQpV6viTMM2DcoMg1sVNxFU6mVA+QOUKky+ujx0QemZ8YZhhaEiWVq
         keIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=vj6flmxakI7gr/RKLkaeHR/8Yfdk+1UqKIvPMRCmjso=;
        b=gTd6geiWWKlmPNDoEXzATz8FruBsK2qA9t+2cMLs2Y3iZH7WOjwLpmPwSpzj4DuV3v
         g2kF5GrDCAZw0uGLRB+braNPnriOLt98tyrK3Mopf/warzrnWCYnNeX18pgyC3soQre7
         ljHSeAgNldY1bWfCU5kovxfEca6G5FuQ8Bam3l/OYa+cOvWosd+y5cGCT96cFVhavfkP
         3wLvG4xpQ+WygcHVeZoB6B5KAm2Gw3wP5RVat5qEghIxf01/+atQzUuHfNq+4WbcloYa
         SNKG140KPDqV/t0/1SCZ5LGDvij4G8s3iHw1xvssWdRaO2gEzuFywD33geyGsWZwHyRA
         iZfg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=VYEa4qrp;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vj6flmxakI7gr/RKLkaeHR/8Yfdk+1UqKIvPMRCmjso=;
        b=Dv2tTXcCl6ZAh6UZK0fWniz3yB3EZfZRSbFQJoZ44F49lneUy7T4r69ooff/iYJAW+
         bRkvptojOfO9l+145MuLEBpZTDE8vEeql/7UqMpdJawokGABL4WswG0v6fqZJ0fr6Ddt
         LYQhTqY9IeyFtZ7USPWZcSH5ulQ4jjMbGs6sRMf12SE05vSJ+2KVGOoMRB1HtsYxD8j0
         BEYtlkJYO6HWp1X+2P2q+HJM6DLlFv6BIdcQXRRrp7MJYaH8NdQMm0an0DoAkawQ611/
         qjU/VK4w7Mygz23fc3kSKk4ClLPXthnn76bLJVTjA1+fh6RyjzWmwl5umWdkK+4DqKTA
         sjAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vj6flmxakI7gr/RKLkaeHR/8Yfdk+1UqKIvPMRCmjso=;
        b=lDFNF4QXF/+GX6YS4X2sttPRcWpRZ31lbeHSpmme3ExNm3YCfCsDtFMU+LFXP5G4nH
         D8lW3Dz2MET/iiGasv+dYICs6oE9UkNLXM0ZQ0846EKu43BVPq9Jn3Sg7V2LA+yGPC8h
         h99VNRjGmdp/L8tQUoDRfBBJK9+1GyE15rvI57v+Ozn+x9q8dOdb4HZocE95j9FJYWM9
         DSl9vA331V/LuM2iQN/d3NMku4Q6BmH+EtGK7ouCRr2kzl4LbE66FyIx6EHFh/hU0NmV
         4C3IoKb5sEwz3kUhQMZlJ3HhYyedL/mirTHI82j0MvXaUomynVLskCa1z9/q8suZWO6d
         Kbnw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532MHMHXdd9qdQKtvlS741EWBfauWVYiJErpMNPrTS6p3FBJ62WL
	qFywxJWzF95IH924X9Exgq8=
X-Google-Smtp-Source: ABdhPJzp7fEH0bxOhfCPLa4455rwQRRX+KnBt1Xmb10xLIJDDDadN1dXoBy59C3jzBt+uVzIYx2xcQ==
X-Received: by 2002:a1f:214:: with SMTP id 20mr9983974vkc.17.1617388277429;
        Fri, 02 Apr 2021 11:31:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fb06:: with SMTP id d6ls864664vsr.7.gmail; Fri, 02 Apr
 2021 11:31:16 -0700 (PDT)
X-Received: by 2002:a67:63c5:: with SMTP id x188mr9643144vsb.9.1617388276920;
        Fri, 02 Apr 2021 11:31:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617388276; cv=none;
        d=google.com; s=arc-20160816;
        b=coHF032BAH3BYeMVG4x3QvgzeRjTbdIAp/4QgNyWpy4kQ5Eof33v2SA5dqE9G2WwhS
         DTOIr3iJZTeJRZT/HV/e9hem8xkc9rc9EmjYpOFewBnOGzV0AOgzT+wJl5hmkD2jLznt
         RNqirJBduPvEhzNbHp1QlC46m2jv5+kmjBg0CrJkkMaNatHcZgWfVGiHE80yE6cPNV6z
         yrbf3p28a6Y9HpBbMgZYSDePS1goIPjZ05j9nmpqOjIAgfk5GBow0cTz473iPwwpRgn+
         Qin6E1GLCm7+gR8IvX+ErGJdDo9eWAXrkLOr9nec9AgkH2jOi/60oP8EE79swvwm/aqy
         taVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=LotJKdMe/ypbmJamEYbVdhrjKqpUZkzB0wuq8Oepocw=;
        b=HMWNCjWPp439FYk+wnnELSZS3jvGn/2GS+VsF8JC+PaNd8NEJdp4Y4wE6VVjQ42IOm
         DwA0sdkosgiNo5u89K9PZFNvxSVmBUN1q7hEueoCyZr2b2CsT2Uvy348GJLVZRH5HtKn
         k2hIvOn/YxMP98nagowVOMtEmutXpLUFSO6NoQoZnVpYeto+pYNBOQK0+G2mupEZdbKY
         0jg/nsbImQQnih0PQH9LAtqVmadKxJXr2JUGTqt7zMjirDdJ4rRKLm/qejJkIVlZ4Jmm
         2H/zRlyJKm9kQmdeQzper9xCwmP26yzT65bWrFMF1e3Z28yaOXYUts1B1vDb3yb73ZnJ
         KDOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=VYEa4qrp;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v23si693263uak.0.2021.04.02.11.31.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Apr 2021 11:31:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id EAA0A60C3E;
	Fri,  2 Apr 2021 18:31:13 +0000 (UTC)
Date: Fri, 2 Apr 2021 11:31:10 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Kees Cook <keescook@chromium.org>
Cc: Sedat Dilek <sedat.dilek@gmail.com>, Gabriel Somlo <somlo@cmu.edu>,
	"Michael S. Tsirkin" <mst@redhat.com>, linux-kernel@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>, qemu-devel@nongnu.org,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
	Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH] qemu_fw_cfg: Make fw_cfg_rev_attr a proper kobj_attribute
Message-ID: <20210402183110.zmnuoc74mzil3tml@archlinux-ax161>
References: <20210211194258.4137998-1-nathan@kernel.org>
 <161428829728.2305454.15456455443457551559.b4-ty@chromium.org>
 <CA+icZUWdeWSy52bU4cjHau1hn5NiFAozaHgDb=geaaCYOET9+w@mail.gmail.com>
 <202104021125.53164550A@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202104021125.53164550A@keescook>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=VYEa4qrp;       spf=pass
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

On Fri, Apr 02, 2021 at 11:25:42AM -0700, Kees Cook wrote:
> On Fri, Apr 02, 2021 at 08:42:07AM +0200, Sedat Dilek wrote:
> > On Thu, Feb 25, 2021 at 10:25 PM Kees Cook <keescook@chromium.org> wrote:
> > >
> > > On Thu, 11 Feb 2021 12:42:58 -0700, Nathan Chancellor wrote:
> > > > fw_cfg_showrev() is called by an indirect call in kobj_attr_show(),
> > > > which violates clang's CFI checking because fw_cfg_showrev()'s second
> > > > parameter is 'struct attribute', whereas the ->show() member of 'struct
> > > > kobj_structure' expects the second parameter to be of type 'struct
> > > > kobj_attribute'.
> > > >
> > > > $ cat /sys/firmware/qemu_fw_cfg/rev
> > > > 3
> > > >
> > > > [...]
> > >
> > > Applied to kspp/cfi/cleanups, thanks!
> > >
> > > [1/1] qemu_fw_cfg: Make fw_cfg_rev_attr a proper kobj_attribute
> > >       https://git.kernel.org/kees/c/f5c4679d6c49
> > >
> > 
> > I have queued this up in my custom patchset
> > (for-5.12/kspp-cfi-cleanups-20210225).
> > 
> > What is the plan to get this upstream?
> 
> I haven't sent it to Linus yet -- I was expecting to batch more of these
> and send them for v5.13. (But if the kvm folks snag it, that's good
> too.)

I am going to be putting the CFI series through its paces on both arm64
and x86_64 over the next week or so on several different machines (in
fact, I am writing up a report right now) so I will probably have some
more of these as I find them.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210402183110.zmnuoc74mzil3tml%40archlinux-ax161.
