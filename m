Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB4X54L2AKGQERV3EFAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6819E1AD106
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Apr 2020 22:24:20 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id v17sf4132357pfn.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Apr 2020 13:24:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587068659; cv=pass;
        d=google.com; s=arc-20160816;
        b=YBXubTzfylK9rUVFIx0IvG3cNVR3Yq9f3h5zOuo2FexGAGhTM6D766YfggsLToDjXC
         1G4PYufuaDkEY9N4Ism1cyV2CaTS3o5sSkwGmtpPZVLCEX9Zq5pgh2vASchxb/PNLvKq
         v9Dacm+G2diD1oBgIX/HYQCcKb1npcYahrPPPXaBVoRrhSdr+aokiDKBEdhTWgXPk6zT
         p8EyG/ldifZvU3aiAukF6w84I0qKisaZXWFa3T2vTFHdrclZ3grkCXJw9kaTwmJ6fjHU
         TxexbOHulzaemkQmbaeq76giFuzSrcBDFfoZczvHb7a+2gqwhFQnEO9v56e7Tqry8I31
         Yl9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=wo5RAj+tTQn/eBT29IPLnQihlA1nUQC9fIcQCUw3OTc=;
        b=vCtnTx7bxOqKvSO7E6KsMqmfqeB2+RmPfX6x06vNrVmwq2bG9e0MJ4Wpr0e2svnOj5
         bMciD8azpAB49EqYC3ocdbKjLthQVFR+b92YhrB9Spyy8oKvMSD1bKeiK590sVtq+w6q
         pzi5V1E6seuAIW5KTApCYJ+S/Nv0UyCPNQWHP9Yy+AXBKmAap4Z+nZ8QYC68c9YTGTaq
         xz+24GsalUlcxuINnw30Q8qsPVgrYlMP2Qu0kUGRyZRc/UxRSzPIHe6wYaZHSA4E6ZZZ
         OciCUl9P9ZHuTu3IaUZOHgl4zpcYKgPu2XPT6ohq+qB1xIW3zcq5Gsppc+igKPWBOA3D
         u68A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z17pqRn6;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::c44 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wo5RAj+tTQn/eBT29IPLnQihlA1nUQC9fIcQCUw3OTc=;
        b=PDJgy3lb+ihX6qmgPWM+lzkD1MjaoiVW93FRAXNSI2u/NNnP1CCJ5JxHcKbj9wKm5Z
         iq/d7u/dPNye4wQLj4yITV7viOMB2yBSMT/YfpanoFgu7jr+Mz+oPxTOYvqES+VS6g5A
         vNfTUwplEMWDMnBOqw5r8bjKpjiVDxB+hh62TaMNfbwyNdh2HxOEdFebuar2usfzaX5Z
         PO1C3I3EfzkxhqtApeVWbC4UElYG+vQeT95mXq2ht8V8YgaPfdXsS9rvnX8Z5cTwxjAE
         MdMQFtWla4hBM4n4HpSa7MENJArUhYVIOWMNIsVpTbnEQx/hxhShq2+3OW7T5M6UiIuO
         zb3g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wo5RAj+tTQn/eBT29IPLnQihlA1nUQC9fIcQCUw3OTc=;
        b=F77iE/zlcCThCNn7YH2j72UDx1O5a3jQbxucpFUccnzs/83mjPvSoe7loYlZou6lFb
         VdhgG3TQdrZMBg3AGl4LFVKsZsvGgTcYRvUGdRttVkfIpWRN9TLyWeEr+oDAbMYvnLaH
         f1Md0QCDv3YndAu0950xlbIDhn+Zn09hDJNT1gDtThE7SGUy9J28AXjsN4bvxM7maRFt
         HeXzWKjdF8kYVMWQGYIVykaWOrib6TC+2pjaI1Edk02vJKP6qxOZ8YfNfwrV8cd2UtGV
         9uPmTRyKv2UTfJI3HWEzwblQBL6HlD5AxBSS1QI3TI55yb2KEr5rw9RwgI/r4wyvog/R
         I9CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wo5RAj+tTQn/eBT29IPLnQihlA1nUQC9fIcQCUw3OTc=;
        b=nCNcxyMmsAf6vocInnaY5nBox0NZX456qEzTdAvoYs9NB3hdRuzNVJs32v1kxPr0/s
         G2KvvtqurrN3f9ZkUTZ9yzLF+AxaOzkLPySzADoEH2hbBmHmMeK/p73BiXHHeJilX1Ro
         83Yc2+vKk32iFz+eKF/YEAYioYwl+MMKr9CjHBvHMwKX438D2y50WLRLdu6u5zeajA3u
         kdEMF5lo3kgZOe0rdcqOlM/0UunITHytq+04Aqq2SiR31z4B8lhR0Ug4SOcLD19y5KK5
         uuSE4877rNC4ruLrb+QJvlqUYFBzVk+DlHkkkTtzuZgZqnTuYcwldB9OdTOsHkyKiWGG
         XwIg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubvyJQRUdHgUz9AAuGhnT+X3v6cjhilQkJR2P+++Lvn9FBaui+v
	C2vMtq62gQCuOYE9ITNsmdM=
X-Google-Smtp-Source: APiQypLqef9t474l16vrMkr3BeFyPZ+xpDXi7UBCxMjZOh85PX8ehrc0htQ4moYNwt0Z2YQKCQELMA==
X-Received: by 2002:a17:902:103:: with SMTP id 3mr29115plb.26.1587068659089;
        Thu, 16 Apr 2020 13:24:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9a03:: with SMTP id v3ls9548141plp.11.gmail; Thu, 16
 Apr 2020 13:24:18 -0700 (PDT)
X-Received: by 2002:a17:902:32b:: with SMTP id 40mr28646pld.22.1587068658665;
        Thu, 16 Apr 2020 13:24:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587068658; cv=none;
        d=google.com; s=arc-20160816;
        b=iNuUK2Pi/d8VlSXdDxUa3CJ9d3viajL7ll0QVN/8Jt0oHYLjSzh+Y+r6V2xh43sS2A
         fBIpN9+v1C5Mc36SWmoASvDWblHQhNj2oNhpfpRv//dpvoqohikfSz9kWHgF0tnS0lv0
         SKRCoSLtX0w9MTAG6dZRkW3aex0LSEznX7chAM9XPLQEZO4KDwHFlrfICCaKYyts+ZB6
         GRhpyF8189Z1aKT/UVOQw8A3cqUzQ8Ej8FuHDuY46bWPp312pVihcn33hqjxVWZ5UyiD
         4UfeHFdf6xh+LdcuulODCX0sFy4D0XIcx3UJ2KgiD5AI8foZrtH1iq3+1GIOFz1kihgS
         4S6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=3KT3Lk+L86Pg6kG/Kio9iVjTavDlMZk/zeLFXx3fyr0=;
        b=kWFV5blCoSqzPpygTVp1cLBHkAFDgkYtTljA/7ZYMSHYbvduMnTT8mDTpFYzR/2q+1
         K0dn1E7thVttee1Hak0EKalMaV1DoFK7rBVt3Ona9niUPB/c3GP9sTTov7EOphUelq/K
         260by2xDdGPBQdsn4RKL9jjTAX1RlX57lQL0Zq/wD7M6UBFbjNIzzi8CY3vffUgngMbJ
         Hmhn7gW9mPRFhBmo7fuo9/MFzZvCozjkgVPnff4hv4TGOY869oq1LfP4Or0q8doISfVn
         NJJH07/bP8/MrOxn6gEiRQIOxeGYguQ3Vvc2+O4jRw4IAM97lBKSEUwZRRWusui/M+vn
         8nAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z17pqRn6;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::c44 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oo1-xc44.google.com (mail-yw1-xc44.google.com. [2607:f8b0:4864:20::c44])
        by gmr-mx.google.com with ESMTPS id 194si1461969pgd.0.2020.04.16.13.24.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Apr 2020 13:24:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::c44 as permitted sender) client-ip=2607:f8b0:4864:20::c44;
Received: by mail-oo1-xc44.google.com with SMTP id e18so932473oot.9
        for <clang-built-linux@googlegroups.com>; Thu, 16 Apr 2020 13:24:18 -0700 (PDT)
X-Received: by 2002:a4a:3006:: with SMTP id q6mr18966698oof.70.1587068657829;
        Thu, 16 Apr 2020 13:24:17 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id i2sm8092125oon.0.2020.04.16.13.24.17
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 16 Apr 2020 13:24:17 -0700 (PDT)
Date: Thu, 16 Apr 2020 13:24:15 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Adrian Hunter <adrian.hunter@intel.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Michal Simek <michal.simek@xilinx.com>,
	Manish Narani <manish.narani@xilinx.com>, linux-mmc@vger.kernel.org,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	"kernelci . org bot" <bot@kernelci.org>
Subject: Re: [PATCH] mmc: sdhci-of-arasan: Remove uninitialized ret variables
Message-ID: <20200416202415.GA30964@ubuntu-s3-xlarge-x86>
References: <20200416182402.16858-1-natechancellor@gmail.com>
 <CAKwvOdkCMsDUGK88xGqfsA5Nc1eNmR+PbLBoHE0dv65aimcJyQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdkCMsDUGK88xGqfsA5Nc1eNmR+PbLBoHE0dv65aimcJyQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Z17pqRn6;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::c44 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Apr 16, 2020 at 01:16:27PM -0700, Nick Desaulniers wrote:
> On Thu, Apr 16, 2020 at 11:24 AM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > Clang warns:
> >
> > drivers/mmc/host/sdhci-of-arasan.c:784:9: warning: variable 'ret' is
> > uninitialized when used here [-Wuninitialized]
> >         return ret;
> >                ^~~
> > drivers/mmc/host/sdhci-of-arasan.c:738:9: note: initialize the variable
> > 'ret' to silence this warning
> >         int ret;
> >                ^
> >                 = 0
> > drivers/mmc/host/sdhci-of-arasan.c:860:9: warning: variable 'ret' is
> > uninitialized when used here [-Wuninitialized]
> >         return ret;
> >                ^~~
> > drivers/mmc/host/sdhci-of-arasan.c:810:9: note: initialize the variable
> > 'ret' to silence this warning
> >         int ret;
> >                ^
> >                 = 0
> > 2 warnings generated.
> >
> > This looks like a copy paste error. Neither function has handling that
> > needs ret so just remove it and return 0 directly.
> 
> Forgive me for not taking the time to look into this more carefully,
> but just a thought:
> 
> Having functions always return a single integer literal as opposed to
> having a `void` return type in their function signature is a code
> smell.  Did you consider the call sites of these functions to see if
> they do anything with the return value?  I understand it may not be
> worthwhile/possible if these functions fulfil an interface that
> requires the int return type function signature.  (It's also probably

Which is the case. These functions are passed to 'struct clk_ops', which
defines the set_phase member as

int     (*set_phase)(struct clk_hw *hw, int degrees);

so we cannot just change the return to void since there are other
set_phase functions that do set a return value other than zero.

> faster for me to just look rather than type this all out, but I saw no
> mention of this consideration in the commit message or patch, so
> wanted to check that it had been performed).

Yeah, I should have probably mentioned that. I can do so if the
maintainers feel it worthwhile.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200416202415.GA30964%40ubuntu-s3-xlarge-x86.
