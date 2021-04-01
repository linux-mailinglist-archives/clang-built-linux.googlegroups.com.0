Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBH6ZSWBQMGQEXI2TLLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3562C350F4F
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Apr 2021 08:48:01 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id q2sf2724147pga.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 23:48:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617259679; cv=pass;
        d=google.com; s=arc-20160816;
        b=Nv/86BNYDddTiBHLRPFzJSPnXi5S8OIGe6GaaKjrXO8sVhSHn8eglODZRQmhPXitF4
         YC6aekoMQxpM+k9SrJArgmNCfAWjB4+P2piqa0kT+Gh4P1zKAEMwQXEIBFiomtR4T+O/
         i5ouSkU2XRQBNESoDiKjL1gckPE/YSK5hqYcjIC2HXDw8rnVtHBp7NXC1if1OTTLjE+c
         SDSboIqFIVCDMkXRA4R6CiQlPeJe9raZUQYRzac8iKswMl3plkt/oab2AqaYbgHi3kEA
         0dgtpSibuhY+njtsmEhoKM8pe/EfGiU+QCIFkIuHFvaPd3FrREcFnlpu0SvpmC846WwJ
         9nGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=LdFWKoMBeZp2Axxk8vGehQhyC4wx/wkgsGM8H5/snBw=;
        b=Bcqp2f/D+XX9X9f9cFtEF3+jGBtpf/Y0eBf4XslMZAW4mm5z5nurD5XjgrCrX1WJAR
         SLy5img+n6V+ciMWA6DlMlhM1mttSJo/UKZJ68K9CF/EpkwG+PjdPM9WmzuzGTzachNo
         Ju01ObYYalMaSPGKhp1RXFR3A+wfditoqwhU4KYoYlCfoy2GXWHwpcshP9Hh2KHBw+r3
         J+SXrsSg8epnCBl9mI9DYFFmQ0x+TKwkMnaywOKZrUHW951bNXW7JgE3jR+/jUqv6UQh
         +XatnT9vUlEMqsx3bJro+FXsuV4MhPn3V0UFvexHBF5LEwGvkqkDF4ARrklKNKv4r/sO
         w3hg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="c/7zpxLm";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LdFWKoMBeZp2Axxk8vGehQhyC4wx/wkgsGM8H5/snBw=;
        b=Hf++oBTKlo7Sho8FaEhNl7C8FDQtvZmxXhWYmCMWM0rK1rDLaAYSNLuZr9iPRylKnC
         LSX9NzFqQ3GAey5FU98q8xGZ5sXghva88jqBQRC0Wvtg3vs7jFms2nZOanP5bS+iMLYG
         lQhVXXtpvx9w0WreDy9WwFtqlMDjcgMhJZupjXIVBJFWYNdc5N7+posn1gGt5Wk1rXV/
         kV/bhjhDDVCFsUUST3pHQjGHUIhgkAf+1q+K2jfo4lskjwPI0Lhx0Nue4XdYfgPrTtLY
         kz2zJi7hVtE4Vk9cNKdjNwStRnKKlxh2Y007qrWwu1wXM7TlbrHth81QOJAabjdaG4LS
         y4PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LdFWKoMBeZp2Axxk8vGehQhyC4wx/wkgsGM8H5/snBw=;
        b=Ea/49HN7pZ7eGWGt9A9JjstUTV3OMC8Bl6q+tnMIKMpc4cgiC+0nSbhpX5+pltRVBl
         Zz3+kJ69SqtA+SxjkOK5MHW5SobARLw5Qns+VLReErXCjNvv/l+2Dd0ojzWOTMIDC93P
         IBSA9IEs5O5+TGMF0YwpHuMBHa1dq4QyL8MwXNSJFOUyIXzPh1JmQD2XNagdVffmwTu6
         35I1byqJ/8aN/4hJBryPNzh9Df7H2aHwOKI+4UIkTpylRaJXrfFqobno0RQCd98bB4xy
         yYT10dL1sqC2xCwPRMfFCuY3jWjugiTBj+wFCmKKz/1ZnspU2+2dR2sHbPgpsGYKhATk
         bZ9Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530+4DvwUsOzbs/9J5OYeUJpLxVtQ/SYVInbx9Xmv5f0HTm9RQUh
	XiGVYh/vv2TeJDxoIdTmpNg=
X-Google-Smtp-Source: ABdhPJw/p4E4E1/VXSVd7izFb3FVEubByQ7md7Bil9j0kPBPfcCbtLdyP0whba0SJffqo6kL0MAqsw==
X-Received: by 2002:a63:cf45:: with SMTP id b5mr6137072pgj.372.1617259679548;
        Wed, 31 Mar 2021 23:47:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:1382:: with SMTP id i2ls2977147pja.1.canary-gmail;
 Wed, 31 Mar 2021 23:47:59 -0700 (PDT)
X-Received: by 2002:a17:90a:2b4a:: with SMTP id y10mr7452288pjc.143.1617259679103;
        Wed, 31 Mar 2021 23:47:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617259679; cv=none;
        d=google.com; s=arc-20160816;
        b=NvuOs6GsM7CCT7AZgi38oAHT+R/J5FJHlQvUeUX/R7VLCsFOHCq8aB6laEeHnRUYZH
         ubscPvm8pqQQ9+zDsqA0kg373P1RxiKWPM0twGmdwUezjWI5e17mN190Y53vuMBY5/Jz
         u79eBzpHF5NZjKVScC95FwyWqMZBFUjn6WXHh//N4CypDYSnujQzPrGuKcKZbyQMq4nd
         kcO2+Pisb+S0ZxwlhWBiiTYtp44hdnBzhdlQtQ1aPGUsXvwbsDMP3j4OH+1arRvYJlRK
         DdoY/fxqIjmsk/tAxevAxWH5ZRA9dtcx8qp6XY2no0QaKgcGqlLClNjV9pbirmgy5cFT
         Dy6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=rjymyHp18QJW0GSJu+UIpvdyf0wuRE3sC10h8bdkT+I=;
        b=FZ6LmBPwtExKkv98xiJDQOg3+b+DmJG0TDwNWxrCq9u9wrc2E8cm3hfz4D/9u/YO6E
         rS7sXHOv5SZHafuUo7FS9O0GaihQ4QmQPua31+5hTaDX3nS7FtgFMWUAjuln/zf07J25
         SBwMWubPfOGLiTWjkRG1QE4hiX/Wq7L1rNfr3rhAdYdKTVhlLh/Dxzz/Lpc2t9ZsJqcg
         YOTNE+i+zazyCgdz4SamuwhdR2spLDGQN1AKo37XuVhyvKOhpWbyAl9hyIZgzq+Qp/sc
         B+qSt2NIEeQdDbuVNNpiwR6WHzPpTsckuHxTgWrGXhirWaPY7wPZzE3ePAlsPpspxjs8
         ptXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="c/7zpxLm";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e15si330973pjm.3.2021.03.31.23.47.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Mar 2021 23:47:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7893B60234;
	Thu,  1 Apr 2021 06:47:56 +0000 (UTC)
Date: Wed, 31 Mar 2021 23:47:53 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: kernel test robot <lkp@intel.com>
Cc: Kees Cook <keescook@chromium.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Andrew Morton <akpm@linux-foundation.org>,
	Linux Memory Management List <linux-mm@kvack.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Michal Hocko <mhocko@suse.com>,
	Alexey Dobriyan <adobriyan@gmail.com>,
	Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
	Adam Nichols <adam@grimm-co.com>
Subject: Re: [PATCH v3] sysfs: Unconditionally use vmalloc for buffer
Message-ID: <20210401064753.6ub6dhcuu6zuhdjq@archlinux-ax161>
References: <20210401022145.2019422-1-keescook@chromium.org>
 <202104011400.HiuLgSvb-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202104011400.HiuLgSvb-lkp@intel.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="c/7zpxLm";       spf=pass
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

On Thu, Apr 01, 2021 at 02:41:37PM +0800, kernel test robot wrote:
> Hi Kees,
> 
> I love your patch! Perhaps something to improve:
> 
> [auto build test WARNING on driver-core/driver-core-testing]
> [also build test WARNING on kees/for-next/pstore v5.12-rc5 next-20210331]
> [cannot apply to hnaz-linux-mm/master]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Kees-Cook/sysfs-Unconditionally-use-vmalloc-for-buffer/20210401-102455
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git d225ef6fda7ce9ff7d28764bd1cceea2d0215e8b
> config: powerpc-randconfig-r001-20210401 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 1c268a8ff4e90a85d0e634350b1104080614cf2b)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install powerpc cross compiling tool for clang build
>         # apt-get install binutils-powerpc-linux-gnu
>         # https://github.com/0day-ci/linux/commit/c80ca56c15314908ebc1881678da3b36e007a2f4
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Kees-Cook/sysfs-Unconditionally-use-vmalloc-for-buffer/20210401-102455
>         git checkout c80ca56c15314908ebc1881678da3b36e007a2f4
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> fs/sysfs/file.c:52:14: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            return NULL + !*ppos;
>                   ~~~~ ^
>    1 warning generated.
> 

Arnd addressed other warnings of this nature in this patch:

https://lore.kernel.org/r/20201028151202.3074398-1-arnd@kernel.org/

which it seems never got picked up :(

Cheers,
Nathan

> vim +52 fs/sysfs/file.c
> 
>     35	
>     36	/*
>     37	 * To be proactively defensive against sysfs show() handlers that do not
>     38	 * correctly stay within their PAGE_SIZE buffer, use the vmap area to gain
>     39	 * the trailing guard page which will stop linear buffer overflows.
>     40	 */
>     41	static void *sysfs_kf_seq_start(struct seq_file *sf, loff_t *ppos)
>     42	{
>     43		struct kernfs_open_file *of = sf->private;
>     44		struct kernfs_node *kn = of->kn;
>     45	
>     46		WARN_ON_ONCE(sf->buf);
>     47		sf->buf = __vmalloc(kn->attr.size, GFP_KERNEL_ACCOUNT);
>     48		if (!sf->buf)
>     49			return ERR_PTR(-ENOMEM);
>     50		sf->size = kn->attr.size;
>     51	
>   > 52		return NULL + !*ppos;
>     53	}
>     54	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210401064753.6ub6dhcuu6zuhdjq%40archlinux-ax161.
