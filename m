Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBB5HCSWBQMGQESUO5ALY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4784C350FD0
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Apr 2021 09:08:38 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id j12sf3017096pjm.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Apr 2021 00:08:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617260917; cv=pass;
        d=google.com; s=arc-20160816;
        b=zBu98OAM8KCOG0+hY8w0rXq35z3TbUaB96dNbtA2hBQVLASoYSQBaVod647sDxK3ya
         EbkReSCWebTuJNANO/A23bAKO/YnqNRqzK6Ie6RpScl9XqsURrrX75I3MxQpW5gSnaaQ
         9kFhoiQ9BXQJMgsOWZLm219RWdj5zhD7LhswyTzdHaerNlVovKF+z5qbLa36GU8ELs+D
         Txei3J9j0LxgPCuRK60dgE36oWi65OvzRy7yJzAoMjqfn8mk8QhThuYzcnl6olCT4Ko0
         ZyrOUv+bdmBg8wCqlvNzmKF1fSg/bPwcuBWXBaM1LzH2uu5IXZyMZHbbqoEYBH481tY9
         yGuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=PiY70D291iJMTsxedwvtX6O5Fb1dmxud8tjhFV5x42Y=;
        b=pooPMZCkJZ+kfCPAgqFmjqLfgISFoe7h0KCJuTLJADRO9y/z2XtdUDb6Tm7a4oxEMb
         GjWdCGLFnZ4Rcw6vhw1gysClni3TOJl0/yTbTO+vGveRmkhDxoma6TryHayprM9zGxpq
         CAEpy+hRefuUvyd3F/ecZeQkDZJC1dEPBxVLNPgymdtjeE8wW6H7YUgkhWdE64JQnw4D
         4XbuoO/8NtQ4hz3cGMNuRSRiMJ2xVZyu2qm+z/Dntg1Y/paVb4ROOmP+HQbvmVkKe1u4
         5E33dfzTQ1nzcPrt/uhULF8kNVNWUwA4GgK4eHaa3KvYRU0NcV1ALRmm5jxxuuK/1MIN
         lFqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=f23I5cad;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PiY70D291iJMTsxedwvtX6O5Fb1dmxud8tjhFV5x42Y=;
        b=fRlvBFWh4NzbqEDRUEVb8Ta1dStckHKskBrQ0oUUPn+GcICKBeJXlOhm8wS7jxf+Sc
         Y5OVclu4pMhMLDvFrR7R7rEwp3Yw9iMoWchR3KRP4PWzN6A2Etlfdp9NuhnVUFiraSJM
         mjcrAj8U+2jS3cpldBBAD5zxKyXXzjNu0nbuElMF/kg2nh9yJRjNHRCRFKviOf0DRe5c
         rvKvlCfoOt3X8O4fZBEEKAkGm1B97ZoCoPc0PWjyx1QMVhMhuseaTdMvxxsDZQvrwMgD
         wjYtW5o0heNi88oQxoaBJAsS+xLvHH29RKl9BDigl/cmaAxRcCh0efHJwa8mboqAZM0u
         vj2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PiY70D291iJMTsxedwvtX6O5Fb1dmxud8tjhFV5x42Y=;
        b=REUrtNIwmiN7mbfAesvP6z8bH7IpQiEnMcYdBWkgn1rVxvRgFaNjITA8RhuFE73j1/
         2xW2HQFSjXN8ujMWUr8H1P6jb8dguJK3DcEO5fFG7/qGpxxZ4XI4b5+bmHSR1G2UZ0QR
         M2LC7yGFsZWwxBgxodlzXsIneJPIwipz0Cagx+Sl+GR0ZCwdDAIWDM2T3r7Ktda72DHU
         L7zMem2ulJcTj/9whcxIxpTz+rNxxzvAV/WH0g4r8gLIYl+GslODGZh2/TKS+NZwc9Ja
         TbgjWA+g/sYO1ks6/KZdYvicZVN0jaxmH6RaYwthgPpgXBHGy+CwbUtqVFBhBnJ0FZg4
         Kchg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530RLmnvtnRjv1DDjKF2l7HUVJ0bkTcXXMX1lW4R9BgGprfZ1zqT
	7uPCqxQWdPgZ85O0zBWkC5s=
X-Google-Smtp-Source: ABdhPJwCdr40mlqionpjaUo9IDFGSXMrHm69xYBDrk/K7stiW2TjovDJvLiRIs5/GX+92D51IUM06Q==
X-Received: by 2002:a17:902:c60b:b029:e7:3b60:34ad with SMTP id r11-20020a170902c60bb02900e73b6034admr6875235plr.7.1617260917037;
        Thu, 01 Apr 2021 00:08:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:ac09:: with SMTP id v9ls1971153pfe.2.gmail; Thu, 01 Apr
 2021 00:08:36 -0700 (PDT)
X-Received: by 2002:a63:fc12:: with SMTP id j18mr6199736pgi.334.1617260916446;
        Thu, 01 Apr 2021 00:08:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617260916; cv=none;
        d=google.com; s=arc-20160816;
        b=l0EiVcVSXvdjoXQDthvH7fyK2v8d5yTJZomWs28kvrylfB+8Gf8kTHCeSVkfomwUYl
         pTk+lkcclunDO33IeQe57Sio5V9k5if4lMrD4xa8n3UA0kFttynlD6c+dme1gjDQwiZG
         Im5VldXMStjwKItwg1HOymTbw+VXOZf7mysbp+v0tQlMYkY+R8jaZIS4aPEzwZjWY++Q
         OJgEK6d/htyF7LTg6G6h6+Gv77XKDUCr40OFdNDgRgDItjSxFHFHkSg7YVy0WQYakKi7
         1FgzJex1qhIRmdNnYg+72u68MKUzdcgqoFsX7r8PKEIFslfVzMPgLZctvqKUjvTEvTTR
         BDTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=32nGVGILB7samls5cPtNtOrkxUONO83YQRYhBH39vHw=;
        b=MSUzpfGm7XLX9A+ks4N2OepCEPKuAySiDU4S5Q5fzxSMxzLgx8JbRRRsA9WpB8uLZK
         kjA2xGgpi1zVju0bXWTNuItD6o8YLEqTX2ypB6Ara/I8WPYHFh0Wqcp8HK8EAlM7TwK8
         agx/eJfJV9OGA0qZk0oFpUYS+xz6zMgx4p4U47i3je8H+tXwmeF11glKx0s5nI2DNL+j
         XBa+eyVPYwrsGaSHrW7EH8r0UgKW/IvwE5a5u/i5MmvkTdgkk+nqfbpUim0o/8kTQEoB
         yO2Lp5K5gjeGNpm7b5Z17JjU6cQ44tv52b/eYslxhr0hscwtKz786HN+Sd0qfV+T03LA
         ha9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=f23I5cad;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z22si473069pfc.6.2021.04.01.00.08.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Apr 2021 00:08:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 485F36101A;
	Thu,  1 Apr 2021 07:08:35 +0000 (UTC)
Date: Thu, 1 Apr 2021 09:08:33 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Kees Cook <keescook@chromium.org>
Cc: Nathan Chancellor <nathan@kernel.org>,
	kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	Andrew Morton <akpm@linux-foundation.org>,
	Linux Memory Management List <linux-mm@kvack.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Michal Hocko <mhocko@suse.com>,
	Alexey Dobriyan <adobriyan@gmail.com>,
	Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
	Adam Nichols <adam@grimm-co.com>
Subject: Re: [PATCH v3] sysfs: Unconditionally use vmalloc for buffer
Message-ID: <YGVxcRaLbIRWWojr@kroah.com>
References: <20210401022145.2019422-1-keescook@chromium.org>
 <202104011400.HiuLgSvb-lkp@intel.com>
 <20210401064753.6ub6dhcuu6zuhdjq@archlinux-ax161>
 <202103312354.A15E2A808@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202103312354.A15E2A808@keescook>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=f23I5cad;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Wed, Mar 31, 2021 at 11:59:03PM -0700, Kees Cook wrote:
> On Wed, Mar 31, 2021 at 11:47:53PM -0700, Nathan Chancellor wrote:
> > On Thu, Apr 01, 2021 at 02:41:37PM +0800, kernel test robot wrote:
> > > Hi Kees,
> > > 
> > > I love your patch! Perhaps something to improve:
> > > 
> > > [auto build test WARNING on driver-core/driver-core-testing]
> > > [also build test WARNING on kees/for-next/pstore v5.12-rc5 next-20210331]
> > > [cannot apply to hnaz-linux-mm/master]
> > > [If your patch is applied to the wrong git tree, kindly drop us a note.
> > > And when submitting patch, we suggest to use '--base' as documented in
> > > https://git-scm.com/docs/git-format-patch]
> > > 
> > > url:    https://github.com/0day-ci/linux/commits/Kees-Cook/sysfs-Unconditionally-use-vmalloc-for-buffer/20210401-102455
> > > base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git d225ef6fda7ce9ff7d28764bd1cceea2d0215e8b
> > > config: powerpc-randconfig-r001-20210401 (attached as .config)
> > > compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 1c268a8ff4e90a85d0e634350b1104080614cf2b)
> > > reproduce (this is a W=1 build):
> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         # install powerpc cross compiling tool for clang build
> > >         # apt-get install binutils-powerpc-linux-gnu
> > >         # https://github.com/0day-ci/linux/commit/c80ca56c15314908ebc1881678da3b36e007a2f4
> > >         git remote add linux-review https://github.com/0day-ci/linux
> > >         git fetch --no-tags linux-review Kees-Cook/sysfs-Unconditionally-use-vmalloc-for-buffer/20210401-102455
> > >         git checkout c80ca56c15314908ebc1881678da3b36e007a2f4
> > >         # save the attached .config to linux build tree
> > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 
> > > 
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kernel test robot <lkp@intel.com>
> > > 
> > > All warnings (new ones prefixed by >>):
> > > 
> > > >> fs/sysfs/file.c:52:14: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
> > >            return NULL + !*ppos;
> > >                   ~~~~ ^
> > >    1 warning generated.
> > > 
> > 
> > Arnd addressed other warnings of this nature in this patch:
> > 
> > https://lore.kernel.org/r/20201028151202.3074398-1-arnd@kernel.org/
> 
> Ah! Yeah, I copied exactly that clever idiom that Arnd fixed. :)
> 
> > which it seems never got picked up :(
> 
> Greg, are you able to pick this up too? (Yeow, sent in October!)
> (Or I could respin and send them as a series?)

As a series would be great, thanks.

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YGVxcRaLbIRWWojr%40kroah.com.
