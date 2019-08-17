Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBSVD33VAKGQEOJWHRVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BBAD90D23
	for <lists+clang-built-linux@lfdr.de>; Sat, 17 Aug 2019 07:34:03 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id f9sf1873683wrq.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Aug 2019 22:34:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566020043; cv=pass;
        d=google.com; s=arc-20160816;
        b=tyCOq4rLPyGs6sv6wrP5S04a/hH+GbZWkbiO/V+V6D8EujRxf14Zow+XDUQsxYXiHp
         xTaRhCBJ268rPWjDG3lkwWWXThOV2G3BeoHXpZianxIWiWeB3bRNrpy00LqCMZeZaM9f
         Tesfj5fi79rBkFhyI1nsn74OF8FsumI4A37b8EqHyv/a8gK6J7fxO/K4TDMH7aCzmn7I
         /Vru56WKtXAmMHMliHqG7GzfjCAsxmQQoWcfx/1mMMfYM7ln3RBljlMtoVpOqDJu/JZP
         rq0J8336nf5WTfvyPNXteY8XV6rjlm4l3irrC8taYJcawmZSXd3ByO8pPtn2WaeeerJA
         Lk0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=pxPBdSmiWkXf9Tu3FT+5ZTOCT6nJZOemSiOm6fIiSjk=;
        b=0RLyBK8f8bZQp6PW/3Bk34mkVOvGSTVJVSZlbJWBsahB6fhNLB00HUN35sS9Xhxp2b
         6kpSbVsRIexKok94grcKxX1xGn4oE3LHhr4Yvm+O//wMpOK6pfRfS5T+TQBU9jiiDGFn
         sh+n3xjdD0F8rKnH7lT156Fzi0kP8YajuzeqHcgw7VteJuAazgP6Jap+WL0DlgUibS7P
         7xvUYE3pXGdWjsr4wNQdRhJKBIOonE0DmETKL/BGFDNgsWm5Cj/ONcoJMR7x3KWPH+eX
         Y3IgBgClMZjpo5CcFLhRDl1DgwAJY83V+afKVz1ZBIM9a0CVB8QoQKgdgDUrkKEWeeCL
         LbZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nrf9yX9D;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pxPBdSmiWkXf9Tu3FT+5ZTOCT6nJZOemSiOm6fIiSjk=;
        b=SqJybtjxBM1yQU+06zoVTlrbWwzYTDZ9TCtscN8Yxyel2hSxZnaWLa9Tw84ff9ZWxf
         F+Z3UDtivVwEM6BIYYpKSXXbqmWbCk9okz9XA4hpBHm2aobXRZY8xALwCIH7c3eoj3hI
         E0W7CMdB48Dgcfx+SFio547omGbo10uEcadM3ZszqGMnTOa2ofVYvf21BcCdgVn5noAE
         jOF+fc9r42enQyH9c8Ba3cHiakLiHN5YRonC55maX08snWoZh1VP4w5Q0bzD/Nn6ja2+
         0nNcv6pIhUE6CDzyZ29tYVW8wNajUv26tJ4z76ePvw3bZaHCWcHSe7+JU/XHcG27Gqlh
         Sygg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pxPBdSmiWkXf9Tu3FT+5ZTOCT6nJZOemSiOm6fIiSjk=;
        b=p1XcyRWkLbdrL+iCnp65d+wLP/j21+6h6EVB7/Y538YAsNxd1BEoYFZUJN41K7phC0
         d1hMJsRt7gdu33drrQO8PMW7wSREgPAXRBaVKubzzFG8uaUU6z21qK67q9+qHBuyzz0q
         kOwkIEpZsmio735FTBX1LyAZQa4xOFiowDUmdiZTPWtEETGXyUGAvtKtSdH9K2M3FCOF
         D/1cxUaG4kwQb6eAaSHKk4ZJJmNIl4koqxMOfdOZpK4ttXyUw6ugpaD62R1wNS+tDMVh
         5srH4Wl4WEVA+sfd1KU/dJJ3f/bHOCvDIVmb6IpyuYTYQRih0L73o1qvZ/ScyA3xB3iS
         ccsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pxPBdSmiWkXf9Tu3FT+5ZTOCT6nJZOemSiOm6fIiSjk=;
        b=jYSRXLzjKD1FCQfHqTUfU/H5sJQvpCo+QMYTZCsqN9nlFm3isLyRGDZfTftdAjYN5D
         rWq+cQ9mFCH2eDIuTl8+0XhRNY/AjxOWED6E4Ji8rImO3/9wLnvf5BeIiH5mb696mPkf
         AZtfJGfbsA1dYQ+QJUCRgoxOPdpIiCZgjliGXVlivSS8pVwTRH2Y8+qJB3TExulFsh+q
         LRk9naCFYPS4jTpA38L7C1RVgWL1Ox+6SnNOWBgwIYaSRuAduFtyP7W30J9VQC16ixzn
         9pLda4OTRBWIlfNM5VYL+h0KpARzTSXwr8KybfRLXdUDNYLDe+CYh18XBOY2n2wf2Ff1
         BytA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVl96NYy2PctEVQjNH+kXYwx/7gjdtj2STcMiQx5TsjP0KXAyoL
	DcB635ivJrBd7OGSyMhMBK0=
X-Google-Smtp-Source: APXvYqwlODDnIoPlaNL3e0SovQXcOjVA5VExYKic+D54ZsF1NqyQdfU1bjnYPrunofiqHFMfaZvd6Q==
X-Received: by 2002:adf:f641:: with SMTP id x1mr14860555wrp.179.1566020043064;
        Fri, 16 Aug 2019 22:34:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6191:: with SMTP id j17ls324224wru.13.gmail; Fri, 16 Aug
 2019 22:34:02 -0700 (PDT)
X-Received: by 2002:a5d:54ce:: with SMTP id x14mr14421497wrv.237.1566020042534;
        Fri, 16 Aug 2019 22:34:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566020042; cv=none;
        d=google.com; s=arc-20160816;
        b=M7rSBC0C3H1gE4lPaHAod8q59Ap5I5EHxiYe1S/0ySvC8kJyn6S0E7fhZvXgczxOrc
         Ehj9S+m0zS0/UIDLz8cyN34cEoOmndkqyndtKh+tWvKzlJyKFMKx+SjU8imt1ZTl7BIK
         taRQ4TVfEYhpusGyaUqvk6kY2Ui2I8U/q3milqw3Ovyfmd1gv7gRWfidUU4r2+RkdRc/
         xH4bfu0ENLF+6Wdebfx4dnguiKNcQ4Pg0Dle1ffsJzRMPN3eli3zj6fFXbT3BAdUZ2WR
         XWqH+rPPd2PuEMIxRGPXir7pF2Y2LpjWzVvVcrLFHARUiFymnthkxnHn/1psvxow8dfw
         RQow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=5efqPaMC5nYH5sXoCpfessVAXayIygCzNYbWC1BpVBg=;
        b=LYduAtlaoIk/bvGndzUIwHmyhi3Ajf+GsqNMFAROmt2dG8OtuOnta8iFqjAUhroKU7
         DHe8PWMqZhujI0D9iSsCCJR2Ny4MDByfZUICy0auDypMtNMgX6ElAmb9xl90hTFYE6er
         a3vAE0wVbHsl+FbDEyjQALpDSxuF8dfSQZwAz77HGdC8ZZxhURKwYsa9i08PUOBY4ssi
         5onKJuPPh4Qq8Xe9OoyuObxKBKbGN28Avi5Dlb+lV4AxOLQ4sKSxW2FV1BmTcB8AcLsJ
         owAHtA7HYIyUm7gdj3n4iTFedQFm1ITpn9nNkjpKA5Qpae75eMzAyeXRkoRoGpNzgkO8
         zfWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nrf9yX9D;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id g7si407298wmk.0.2019.08.16.22.34.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Aug 2019 22:34:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id s18so3452988wrn.1
        for <clang-built-linux@googlegroups.com>; Fri, 16 Aug 2019 22:34:02 -0700 (PDT)
X-Received: by 2002:a5d:6a12:: with SMTP id m18mr14589727wru.306.1566020041995;
        Fri, 16 Aug 2019 22:34:01 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id f17sm5893065wmj.27.2019.08.16.22.34.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Aug 2019 22:34:01 -0700 (PDT)
Date: Fri, 16 Aug 2019 22:33:59 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Rob Herring <robh@kernel.org>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kbuild test robot <lkp@intel.com>
Subject: Re: [robh:panfrost/fixes 14/15]
 drivers/gpu//drm/panfrost/panfrost_gem.c:80:1: warning: unused label 'out'
Message-ID: <20190817053359.GA106447@archlinux-threadripper>
References: <201908171346.QTyai8bV%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201908171346.QTyai8bV%lkp@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=nrf9yX9D;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Sat, Aug 17, 2019 at 01:25:50PM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> TO: Rob Herring <robh@kernel.org>
> 
> tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/robh/linux.git panfrost/fixes
> head:   cd3d42f11886f7b48598e5a42b636b4b8f93c2a0
> commit: 802d63aece610f209b6b8c03d8417aa529948636 [14/15] drm/panfrost: Fix sleeping while atomic in panfrost_gem_open
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout 802d63aece610f209b6b8c03d8417aa529948636
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/gpu//drm/panfrost/panfrost_gem.c:80:1: warning: unused label 'out' [-Wunused-label]
>    out:
>    ^~~~
>    1 warning generated.
> 
> vim +/out +80 drivers/gpu//drm/panfrost/panfrost_gem.c
> 
> f3ba91228e8e91 Rob Herring 2018-09-10  43  
> 68337d0b86445a Rob Herring 2019-07-01  44  static int panfrost_gem_open(struct drm_gem_object *obj, struct drm_file *file_priv)
> 68337d0b86445a Rob Herring 2019-07-01  45  {
> 68337d0b86445a Rob Herring 2019-07-01  46  	int ret;
> 68337d0b86445a Rob Herring 2019-07-01  47  	size_t size = obj->size;
> dac77f4b554076 Rob Herring 2019-07-11  48  	u64 align;
> 68337d0b86445a Rob Herring 2019-07-01  49  	struct panfrost_gem_object *bo = to_panfrost_bo(obj);
> dac77f4b554076 Rob Herring 2019-07-11  50  	unsigned long color = bo->noexec ? PANFROST_BO_NOEXEC : 0;
> 73a0a6a5992426 Rob Herring 2019-04-30  51  	struct panfrost_file_priv *priv = file_priv->driver_priv;
> dac77f4b554076 Rob Herring 2019-07-11  52  
> dac77f4b554076 Rob Herring 2019-07-11  53  	/*
> dac77f4b554076 Rob Herring 2019-07-11  54  	 * Executable buffers cannot cross a 16MB boundary as the program
> dac77f4b554076 Rob Herring 2019-07-11  55  	 * counter is 24-bits. We assume executable buffers will be less than
> dac77f4b554076 Rob Herring 2019-07-11  56  	 * 16MB and aligning executable buffers to their size will avoid
> dac77f4b554076 Rob Herring 2019-07-11  57  	 * crossing a 16MB boundary.
> dac77f4b554076 Rob Herring 2019-07-11  58  	 */
> dac77f4b554076 Rob Herring 2019-07-11  59  	if (!bo->noexec)
> dac77f4b554076 Rob Herring 2019-07-11  60  		align = size >> PAGE_SHIFT;
> dac77f4b554076 Rob Herring 2019-07-11  61  	else
> dac77f4b554076 Rob Herring 2019-07-11  62  		align = size >= SZ_2M ? SZ_2M >> PAGE_SHIFT : 0;
> 68337d0b86445a Rob Herring 2019-07-01  63  
> 73a0a6a5992426 Rob Herring 2019-04-30  64  	bo->mmu = &priv->mmu;
> 73a0a6a5992426 Rob Herring 2019-04-30  65  	spin_lock(&priv->mm_lock);
> 73a0a6a5992426 Rob Herring 2019-04-30  66  	ret = drm_mm_insert_node_generic(&priv->mm, &bo->node,
> dac77f4b554076 Rob Herring 2019-07-11  67  					 size >> PAGE_SHIFT, align, color, 0);
> 802d63aece610f Rob Herring 2019-08-15  68  	spin_unlock(&priv->mm_lock);
> 68337d0b86445a Rob Herring 2019-07-01  69  	if (ret)
> 802d63aece610f Rob Herring 2019-08-15  70  		return ret;
> 68337d0b86445a Rob Herring 2019-07-01  71  
> 0e5e439ef7d3f0 Rob Herring 2019-07-26  72  	if (!bo->is_heap) {
> 68337d0b86445a Rob Herring 2019-07-01  73  		ret = panfrost_mmu_map(bo);
> 802d63aece610f Rob Herring 2019-08-15  74  		if (ret) {
> 802d63aece610f Rob Herring 2019-08-15  75  			spin_lock(&priv->mm_lock);
> 68337d0b86445a Rob Herring 2019-07-01  76  			drm_mm_remove_node(&bo->node);
> 802d63aece610f Rob Herring 2019-08-15  77  			spin_unlock(&priv->mm_lock);
> 802d63aece610f Rob Herring 2019-08-15  78  		}
> 0e5e439ef7d3f0 Rob Herring 2019-07-26  79  	}
> 68337d0b86445a Rob Herring 2019-07-01 @80  out:
> 68337d0b86445a Rob Herring 2019-07-01  81  	return ret;
> 68337d0b86445a Rob Herring 2019-07-01  82  }
> 68337d0b86445a Rob Herring 2019-07-01  83  
> 
> :::::: The code at line 80 was first introduced by commit
> :::::: 68337d0b86445aa438677c7929ea897845714f8b drm/panfrost: Restructure the GEM object creation
> 
> :::::: TO: Rob Herring <robh@kernel.org>
> :::::: CC: Rob Herring <robh@kernel.org>
> 
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> 

Hi Rob,

The 0day team has been running clang builds for us and this warning
cropped up.

Looks like out can be safely removed?

Thanks for looking into this,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190817053359.GA106447%40archlinux-threadripper.
