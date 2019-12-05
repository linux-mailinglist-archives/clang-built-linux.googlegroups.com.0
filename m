Return-Path: <clang-built-linux+bncBDA5BKNJ6MIBBJV7UXXQKGQEDVXOA7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id 03F811147D8
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Dec 2019 20:51:04 +0100 (CET)
Received: by mail-qk1-x738.google.com with SMTP id f22sf661381qka.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Dec 2019 11:51:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575575463; cv=pass;
        d=google.com; s=arc-20160816;
        b=zrgKexqsU6nTlDMoSDpeSZAHPr8dAYZKVXz+U72WfkxfQ/I40p4CJb6nQ9TIwA/Ns2
         54ASPvDS7p0Et9wEu0q/D1zyQTEnjjwdZmrgiCxoN90wmGp/vOHOGNyJ7xuF4YVa1LM0
         ObguA3Vq9NvOXmXInwBFfsiPm2++ygGI+tVLofjxvOcTAAPfCmwDN/dcqXdqV8849sK2
         EHYLIBov8aJw2R0wEK6VgPeHVSqDghIwR5JrFeFo3mTGbix84k5/wKYsYRuqZwVJ9oVR
         qKVy+q7YK/wUpmq82bhO1BsF77qJYrdTSeutT1eIFyBsy1Sc07w361bl+aulMv0e8NF7
         UKDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:organization:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=cZmXGkcXHveS4TuGF4CUmwZVY2DvsUghijY2oBom86M=;
        b=yxFkSik4Lno9cUetiaM0nkg+a+kVyz0BGuufpkLV9xu833T51YG35+sIzIMielWKpS
         5KYxe61wdzfHF2vvQ7ARMVleRihSym8/hWiwk7duY8iMIhdOh3fkbklyJO+P4wyHKThG
         RCVyfrdlL1oigqMYVuKCtxXMxN0jixC2gCNU341QcKMmbIWA0aMSscKIchW0Myo4GigU
         KbK17bVxyRTlfOlMMPc+6ROgvFZoNlZ54TEf7KXMtYZWxJCCR0TqzjwNYCKnmx+EikFe
         iLu/4qggpXzLAkGSpcvUlYzzJ8SgVyjP7DkTPYYwHVGDQ6CbVae5u1uozQ5CQxtJHIxJ
         SaWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=andriy.shevchenko@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:organization:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cZmXGkcXHveS4TuGF4CUmwZVY2DvsUghijY2oBom86M=;
        b=jwg84pzWTtiRl62Q6KVUdUWee9Ee7XisYZhFb6kx+a/vB0yn5ivA+VAowWMGo8rJ8D
         BC3n9c1lIr85h9S4A/+8eyN5s6HFoSPuOMXDkQDjBc/fGC0ItJhOxOn3m+ztIjv4x1s5
         ycgDoaw8jwFa/bY1gG45gXpVv+KR4t30ciWDl8gZBGKbIJao389XBmvOyJyfYIPIhLNF
         F8/Y85Yy8FTvN//LKm45kBGlBMxJlFnfIdXYyqsuZtYO/a8oTwPlx5NdmQ4vLNGJg9TN
         VUQM9sP3rEHbLjTgaxO3H8bs3yXm3/wyQpp481oBpAXLv7VZ81aILCAoqCqPRoqbys0R
         fy/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :organization:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cZmXGkcXHveS4TuGF4CUmwZVY2DvsUghijY2oBom86M=;
        b=UqXauSU6SZ9Wc4KAEWVMlzvjK+rCY+oJRuJtVcVH3jem2G/HmaHUF7XhqduoFJsF78
         muM3EvWFwU8RqQDOowoTYiEZ8bOgbAlpOvsYgBz9tZI7Fmo27dsqpgXEQyv1Soj57QiI
         5d++AVNwL5s0Fu7bzEmcaByPmJR7nPNYjx1E8NZ/+dFgQP56AR0cNWgiUDjR8/h+lZ0x
         h84VbFV39R0mllQ1pRGnjvwlEpXMNT1ZuzGEK7rLw+32qHCvvurn/sHbbY9sYe5OUeZO
         2thRydW6LXAB1Ubdtc5+l6t3JV4eZ8Sn5hyg6t1lUZBUEjE4iKLctXp7g3KIlziMhPxA
         ZMVA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXN1VoxCjZ3QNv+eJyYPmwrm6pnqK7mTlTY2nAf71HiYkpisvE6
	Qyr6Rb/JPO/deDbkU+AxJE4=
X-Google-Smtp-Source: APXvYqy+NRqs9Cm3MMn9nIso1xs/rzxgU6u2xgZ1ubfJp2CVuBpDxLWNIuJfah9ZHDjL5qeWxDubrw==
X-Received: by 2002:a05:620a:849:: with SMTP id u9mr854867qku.389.1575575462813;
        Thu, 05 Dec 2019 11:51:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:fd4b:: with SMTP id j11ls722076qvs.4.gmail; Thu, 05 Dec
 2019 11:51:02 -0800 (PST)
X-Received: by 2002:a05:6214:1711:: with SMTP id db17mr9204217qvb.199.1575575462411;
        Thu, 05 Dec 2019 11:51:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575575462; cv=none;
        d=google.com; s=arc-20160816;
        b=XkTVJS1x2A7z5dOaQrRji+WDiwoAfB4ka+omy20KIppSEozSEeIbCSlUmIfwcPxIwn
         1ggq09uNcZJ4EVN/OvkAzgEJjZJv73kA6VCMmQ1CuSciw8Z/nede5jT9jFi3nzE+kty6
         MZ86M7FtbVQNY3pVN+Tmr3mH8pTAVTdq6IUMiy18vi5yPsUa4O/4dRD1e+S4EvcNE3BU
         uAlaGWyjfiKfbXJO1CjiLJweYHuJgBZxkCBslid8sD8oQZakSiREK6kGUWiFdZP3LcGe
         7aWgCOWNbL3Gx08xDxJqBDH2WNoRfe5S07r+/GBH87QLzlJstm7fmO0cEoXk+avU2cR8
         aO7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:organization:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date;
        bh=JJDEhHVrPMkw0wCJ/vsfqfcQsjBc5DYNxokcbw2dTgg=;
        b=oQkG2s1eaSm3B1wPZHLmeAZ2mhOh+aDVFkdLf3o/Oag9ulOyuEHLB7Wg2xSz7Zrvj6
         Iu4jbncBWiQ/lxqZoxWVjdVYtx50xmNts1tYtr876sRXo2QccNoXguecDYt90hPem7z3
         0taG2Rozc+ZlchXORD68Y1NfQfHHlgWEkCfR/mVyHtktwNPPyWQ+JEyAysYVbwcfaAS+
         BVBDijecXE3w+FiQ+nklP974d4mW2f1t/3YwLhA+DhhAHjSl53eDNOAjvG4M/4pF0382
         00ns9X9bwOh3NgSNc89TqjIFoba1yVW9jLjwd7PKSZzsF+db8QBgq7/vOYJE/3tEAbOQ
         Eezg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=andriy.shevchenko@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id u8si533243qku.7.2019.12.05.11.51.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Dec 2019 11:51:02 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 05 Dec 2019 11:51:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,282,1571727600"; 
   d="scan'208";a="209228851"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
  by fmsmga008.fm.intel.com with ESMTP; 05 Dec 2019 11:50:59 -0800
Received: from andy by smile with local (Exim 4.93-RC5)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1icx9P-0005Tz-45; Thu, 05 Dec 2019 21:50:59 +0200
Date: Thu, 5 Dec 2019 21:50:59 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: ardb@kernel.org, kbuild@lists.01.org, kbuild test robot <lkp@intel.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	kbuild-all@lists.01.org
Subject: Re: [efi:urgent 6/6] drivers/firmware/efi/earlycon.c:33:10: warning:
 incompatible pointer to integer conversion returning 'void *' from a
 function with result type 'int'
Message-ID: <20191205195059.GC32742@smile.fi.intel.com>
References: <201912060234.8XYvgYSn%lkp@intel.com>
 <CAKwvOdkQqipt82KmnmLO4Ns=5VdsCq2Ma_M=OA6c2E8oZTJBtw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdkQqipt82KmnmLO4Ns=5VdsCq2Ma_M=OA6c2E8oZTJBtw@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: andriy.shevchenko@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com
 designates 192.55.52.120 as permitted sender) smtp.mailfrom=andriy.shevchenko@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

On Thu, Dec 05, 2019 at 11:12:34AM -0800, Nick Desaulniers wrote:
> + Andy, looks legit. should be `return 0`.

Thanks, Ard promised to fix this.
Dunno what happen here.

> On Thu, Dec 5, 2019 at 10:39 AM kbuild test robot <lkp@intel.com> wrote:
> >
> > CC: kbuild-all@lists.01.org
> > CC: linux-efi@vger.kernel.org
> > TO: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> > CC: Ard Biesheuvel <ardb@kernel.org>
> >
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/efi/efi.git urgent
> > head:   93afe6258b5ae6bd32981f5249f7b0c1a32cde01
> > commit: 93afe6258b5ae6bd32981f5249f7b0c1a32cde01 [6/6] efi/earlycon: Remap entire framebuffer after page initialization
> > config: arm64-defconfig (attached as .config)
> > compiler: clang version 10.0.0 (git://gitmirror/llvm_project d6cbc9528d46d30416a6f9cd6c8570b704a0bd33)
> > reproduce:
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         git checkout 93afe6258b5ae6bd32981f5249f7b0c1a32cde01
> >         # save the attached .config to linux build tree
> >         make.cross ARCH=arm64
> >
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> > >> drivers/firmware/efi/earlycon.c:33:10: warning: incompatible pointer to integer conversion returning 'void *' from a function with result type 'int' [-Wint-conversion]
> >                    return NULL;
> >                           ^~~~
> >    include/linux/stddef.h:8:14: note: expanded from macro 'NULL'
> >    #define NULL ((void *)0)
> >                 ^~~~~~~~~~~
> >    1 warning generated.
> >
> > vim +33 drivers/firmware/efi/earlycon.c
> >
> >     22
> >     23  /*
> >     24   * efi earlycon needs to use early_memremap() to map the framebuffer.
> >     25   * But early_memremap() is not usable for 'earlycon=efifb keep_bootcon',
> >     26   * memremap() should be used instead. memremap() will be available after
> >     27   * paging_init() which is earlier than initcall callbacks. Thus adding this
> >     28   * early initcall function early_efi_map_fb() to map the whole efi framebuffer.
> >     29   */
> >     30  static int __init early_efi_map_fb(void)
> >     31  {
> >     32          if (!fb_base || !fb_size)
> >   > 33                  return NULL;
> >     34
> >     35          if (pgprot_val(fb_prot) == pgprot_val(PAGE_KERNEL))
> >     36                  efi_fb = memremap(fb_base, fb_size, MEMREMAP_WB);
> >     37          else
> >     38                  efi_fb = memremap(fb_base, fb_size, MEMREMAP_WC);
> >     39
> >     40          return efi_fb ? 0 : -ENOMEM;
> >     41  }
> >     42  early_initcall(early_efi_map_fb);
> >     43
> >
> > ---
> > 0-DAY kernel test infrastructure                 Open Source Technology Center
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
> 
> 
> 
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
With Best Regards,
Andy Shevchenko


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191205195059.GC32742%40smile.fi.intel.com.
