Return-Path: <clang-built-linux+bncBC55DX646IARB7OAVHVAKGQE2QOQMOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C630843A0
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Aug 2019 07:24:14 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id d11sf78034464qkb.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Aug 2019 22:24:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565155453; cv=pass;
        d=google.com; s=arc-20160816;
        b=B70eMAbd8k4eN6DmT/l38MyoYzQseq/B+2ROK/njZnK+8uHX4SfKvpi3tH/u8fbzLc
         ssilV1gWVOBtmDm3n7lgOxE6VkubKuWLsESdFKDMnn+6T2WAhgndrvttm9CdwKZUFO/6
         QLliJk3Q2w9UzbdGRlIdoZvyXqCMrpREaEO+Z+/ypKHDuTtBYeM0thR+QTYpNQ+C5G6N
         /GixL4m/w3DHDjlezf5eCjD5D1yN6bcyFtttStA8Y5WEZxax5ub0H07V0aRSnopKQhp3
         pcfLNzQKNl6pxvJE9IuW4fPlQSplPPEW47J6+eZvCpykvwRrXSHm/Np5IcNsnVL6Pfvz
         NOKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent
         :organization:references:in-reply-to:date:cc:to:from:subject
         :message-id:sender:dkim-signature;
        bh=rIZzxhtgw1P8lABakpSMhBm1y0y5GUHWPff5eKXRMWw=;
        b=Y0U1SbYGlzAXqkQbEzM0vJM31G9P6JxbIZbf6Hy2tEV13CYn/khc5Tl9FoaX92NpuL
         JeI/ucZY2XVVlhtkIdO1z4ZdjoQD2SRo4671Ipuh3rs6HS8UQBHcMG0KJuxBdvlurhEs
         Vvi0s2qKIwnTGe6rKGzmnUpdmraRICxEFTCLqld8QhEbB+WELoxxWjGVbPSg3UCOvOjq
         t9cSAHRz1WpwXsRnjY3+eBPTBMiQsYshQ78CezCvb7BW9mRC8QTKD+jcX0oDi8byGA4F
         K+FtMo8DIOelkXVHjXx8QR086XSnmlKz5D+VfFRn/4QIwPU9xeZqKU0pN6ytGe5Lc3DM
         ohIQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of luciano.coelho@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=luciano.coelho@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :organization:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rIZzxhtgw1P8lABakpSMhBm1y0y5GUHWPff5eKXRMWw=;
        b=XJ1fUJreNNPJTg9IA5aF/9w6xb+Iv42GAU18ky/N/7OFRbQsKUS16CaHRa7sCzW0Ux
         mhwl0G8pmQsz2RiKWX067bDUQx129zF12RbTgPqrSyiGog7lMbQMdoxlH44JD4N6AqT6
         f/MLND489ZkQJkCGrygd54f1UJFt8YpKDMAOsjaN+CQJl30l8VOoqL63neUspGdgrzYf
         1X46UY4cHz6uO0TDDDwrTnF//TJXWMe2A4IKbW1SHxKnckhyIjs7fDb+I3POtyVNmxFM
         AgMKQ8IOgCK2qX6oW0nVc5kOjEKdQZxksuYhuNeFzZoxTUhm4HzjsrMBD36ZFEdo9ePx
         8Bhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:organization:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rIZzxhtgw1P8lABakpSMhBm1y0y5GUHWPff5eKXRMWw=;
        b=QA77xHQlng3bI5+g1MUgxnBen/LbjhvcomW4B8CR5ldgkihTigAEqugkTTBcAEA35m
         s44HlKOGbYXWm2S2R/h4dRFRgomV3dum0/++QVVGhAehGmTi89L0XI288hGmWgXg+4QE
         WySieIs+VKaXJrdar4lISA+dNBzdgpF2z4mXD2qrZZeovNTmFlLEzYyG4QhOLLRlzbV5
         0om6CUSxclwoLxx3jfs198oAFwfSWYnRTkauYlrLJ2jjYz3JU4RUeCg3Sr6Mj97M0vTa
         gdTBH8tCBNgnyvB3BAB4w5aWFAtcRcGeJbdNPQv1DjxChv23KYkbX+aDTNMBH46nK7Sw
         eWvA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXBjw6h/i0m2Gqw+2bg9xR9XMUpMfY2LunZBzpAJGhw8cTaP6YQ
	q/rhFH5bq5SxD2dcOo9rLUY=
X-Google-Smtp-Source: APXvYqxOtvF5WdK5xxMWMZW0Fu/se0e2F6GCvN3vsGacZsco+IkW3ZqifG3f3aCWwP3GlS509LEFog==
X-Received: by 2002:aed:3ea1:: with SMTP id n30mr6415203qtf.342.1565155453299;
        Tue, 06 Aug 2019 22:24:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:7804:: with SMTP id t4ls615503qkc.16.gmail; Tue, 06 Aug
 2019 22:24:13 -0700 (PDT)
X-Received: by 2002:a37:b044:: with SMTP id z65mr1240893qke.197.1565155453109;
        Tue, 06 Aug 2019 22:24:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565155453; cv=none;
        d=google.com; s=arc-20160816;
        b=soV1q9rx91UPSSH4itC1/NTBsolWaYpLtXEc81kAZz4PcY12vhPIHLxiQJyrPslA/p
         ZzpqR2zB1k56crDgQ4wpZUfdvSWb9WItXbxUhSwnqUgcq9hSWhZH/9/Hiku9X4l68WrY
         0ybDguGQVXSzLHkdTPowOyL6Hh2kWIOcm1aLEvTGcXWbWycahWOg4NMvQ0MZ3O+J+EZY
         4cnjyqYz2mwjiY159TWB29Oo0GFxyKKlvqjr+92WGGC46Kf3YTyo+K47OEiAqwY2GpnV
         RBFbA5ESag9dCaKZZuZxn5fqMG6FJ/cZKLtbtcHXeJU8YOwA7GbcNKu+/NuF5pE784NA
         Tsdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:organization
         :references:in-reply-to:date:cc:to:from:subject:message-id;
        bh=kzxYwp51EZPQjnavocx0Nj3NVkBVm0etwvd6c+REmCk=;
        b=BLCC65Smns0FVOxzeki+gIOlPvu0Y55Vz96GWJ/AhL6Rrqz9CJPWp5gkFeLkM1oam7
         FStJ2Mi0XsKb+y6oPqpy7XVy9dIvxiCTxIEckYcabfyAqsz4Hr8fzEluKRpdzIxOuvBV
         rwcUVrlJiCJK6cpmnwMyK6mPeauPbQs3y9I1kO+UlCvjbm7xO2/9g7/Lq43FHrG+fJjp
         6dxrp5lm/G5WQMRZhcpAQT2Z5VBsPMr9dCLBGofwZ63yw858m8+rUmvo6TS5d2y6VLE3
         rYrpIol/n8XpKxvNrrc+HiFxX+i50DslJidwdtRZIuSihnKW23ivLas2ccA+IvtNiQbo
         S0pw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of luciano.coelho@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=luciano.coelho@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id w82si3770798qka.7.2019.08.06.22.24.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Aug 2019 22:24:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of luciano.coelho@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Aug 2019 22:24:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,356,1559545200"; 
   d="scan'208";a="176853760"
Received: from kerdanow-mobl.ger.corp.intel.com ([10.252.3.167])
  by orsmga003.jf.intel.com with ESMTP; 06 Aug 2019 22:24:07 -0700
Message-ID: <a32af5800af19779eb5be8d7b2552de18bfac194.camel@intel.com>
Subject: Re: [PATCH -next] iwlwifi: dbg: work around clang bug by marking
 debug strings static
From: Luciano Coelho <luciano.coelho@intel.com>
To: Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers
	 <ndesaulniers@google.com>
Cc: Johannes Berg <johannes@sipsolutions.net>, Michael Ellerman
 <mpe@ellerman.id.au>, Kalle Valo <kvalo@codeaurora.org>, Arnd Bergmann
 <arnd@arndb.de>, Emmanuel Grumbach <emmanuel.grumbach@intel.com>, Intel
 Linux Wireless <linuxwifi@intel.com>, "David S. Miller"
 <davem@davemloft.net>, Shahar S Matityahu <shahar.s.matityahu@intel.com>,
 Sara Sharon <sara.sharon@intel.com>,  linux-wireless@vger.kernel.org,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
Date: Wed, 07 Aug 2019 08:24:06 +0300
In-Reply-To: <20190807051516.GA117639@archlinux-threadripper>
References: <20190712001708.170259-1-ndesaulniers@google.com>
	 <874l31r88y.fsf@concordia.ellerman.id.au>
	 <3a2b6d4f9356d54ab8e83fbf25ba9c5f50181f0d.camel@sipsolutions.net>
	 <CAKwvOdmBeB1BezsGh=cK=U9m8goKzZnngDRzNM7B1voZfh8yWg@mail.gmail.com>
	 <20190807051516.GA117639@archlinux-threadripper>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1
MIME-Version: 1.0
X-Original-Sender: luciano.coelho@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of luciano.coelho@intel.com designates 134.134.136.31 as
 permitted sender) smtp.mailfrom=luciano.coelho@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

On Tue, 2019-08-06 at 22:15 -0700, Nathan Chancellor wrote:
> On Tue, Aug 06, 2019 at 03:37:42PM -0700, Nick Desaulniers wrote:
> > On Thu, Aug 1, 2019 at 12:11 AM Johannes Berg <johannes@sipsolutions.net> wrote:
> > > 
> > > > Luca, you said this was already fixed in your internal tree, and the fix
> > > > would appear soon in next, but I don't see anything in linux-next?
> > > 
> > > Luca is still on vacation, but I just sent out a version of the patch we
> > > had applied internally.
> > > 
> > > Also turns out it wasn't actually _fixed_, just _moved_, so those
> > > internal patches wouldn't have helped anyway.
> > 
> > Thanks for the report. Do you have a link?
> > I'll rebase my patch then.
> > -- 
> > Thanks,
> > ~Nick Desaulniers
> 
> Just for everyone else (since I commented on our issue tracker), this is
> now fixed in Linus's tree as of commit  1f6607250331 ("iwlwifi: dbg_ini:
> fix compile time assert build errors").

Yes, thanks Nathan! I was just digging for this patch to reply to you,
I'm still catching up with what happened during my vacations.

--
Cheers,
Luca.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a32af5800af19779eb5be8d7b2552de18bfac194.camel%40intel.com.
