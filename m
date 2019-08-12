Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBR6RY3VAKGQEEPARLBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3a.google.com (mail-yw1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC758A518
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 19:58:33 +0200 (CEST)
Received: by mail-yw1-xc3a.google.com with SMTP id p2sf1603791ywp.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 10:58:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565632712; cv=pass;
        d=google.com; s=arc-20160816;
        b=NbypQYD+Jcevzn36D88ignraAxdxjf1g5yc6VHibwF0cXwbZbSE/vM2WTAHoofiWP0
         qoaPtsT4sIchIWDabjSIX6Z+gcpzdhK5Uxtg9RLFxgvfSpFQK6jCx/Jp+aMUo3OIyr8e
         jfvjBTIC2H1eOlqmbs6rCk0MXt2LNf9lUpIqtYHZAafWi2aBrSXv18tnSrmLCu9+NoeP
         eVrGalQmqpeFzjNBToYuLsRukHxvozAZrEXR4kQ/qbQ6+ILP5DwIPx3/edc07CJT9irK
         YZAP9eTrCS/lraiLZ9E2DXEWdnZGii2wej3hBukNHoIHZs+hh5zsZ8pcEQwxJbw25L3t
         mJgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=wdQIXV/lZlpZaCWEhpFcSydapDMsolvVJSgNpo+2gpg=;
        b=Bvs6Diyh/QldasRmdf9WpLef7d0DIw9XtngG+yNKTG7Gei8vaFnfX+hd0w7URSG++k
         KdQnNxiAhpscyiigvyw7vgK+tp9vzgEythb8twX25BCDWapEfjLOQ6Ec28T/O23T7Up4
         iUOQrFPZ8wGrUZcC2S+Q3XD2aFSYdw9FQddQRXRNWynCP1S14j2G3Rck+k8i5bFpDVtO
         DSJt4WGM7cSn4zQHWBGq6KDOtZA6YjN1fKP5+DuYZni/tJMIdFcdRUAolI3UMeWKQ3K7
         4nwU18fWynuUVjfeX6ci4/ZhCAYv4GBPYbdWDkzjMWz/lDgJxWbxFitoexQ4gx7XoLil
         LRdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=iY1WOyTq;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wdQIXV/lZlpZaCWEhpFcSydapDMsolvVJSgNpo+2gpg=;
        b=enN/Lf49c23q/o7K460yomDUqadHxzozYAqDCcoS+lRIjJ09YKPnrLGa/4M1g8FPIy
         R9/HROVfamgnWD060oJT/pOAm3ff+oerJjoB0PkXie79Pl2NTStA8iMKLFnoCod66SQx
         7digydPdsHLbqqxlx0nk24yLWzCNOQniSdvSh9vmZri4kcnVyOmVmmnVcUGun68oZO3R
         LvzEl9LLkk5aYiUao17CahWVj7VqrlUeOCphZInKhxTYj2Vur+bLsNy4E+w288AU83KT
         jxxylipVf5/mAEMJpUMLABJCTg/TciMGcgN/n54LMqVkn0Aoe8LZ6T26Vs3Rvd01RCod
         MK4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wdQIXV/lZlpZaCWEhpFcSydapDMsolvVJSgNpo+2gpg=;
        b=E+5tonYiAQvIs7V8kXGPCXFC7T0vOr7bLNl60WUnH9SaXs03m2/clg8LWAnhaAc+q+
         SEM3QeCDcWA7QDYuWb0upD2OU7YD3LCz3G4i0fRvNI29aQAXvJHzCkyJmv+ddkMMwZhX
         6nv31BLEpwl6jR9VnN6Kda5nyPa466uTyMcGcXvMynnuaX+FuMdfuiJL6yNSCx6/98sC
         4TAIDoGFrKcrOLZAEbn872BZ7ve3RMvsq3EwYJtSCO6s2k8dqFT5O757byC3fU8XF7bI
         OpCjbil3AX1jHCtcLiW5bknPC/9C3E5nwcG16EhpccimP5l3eSBfzT0/Hh69ueDr/1q8
         Bxkg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUUzWoY3Nn+s7ndkVrDi1K+rI8z8TifwosuYTe49j8cCG6CSBsV
	ybW53cdM9G70608EwHZvByo=
X-Google-Smtp-Source: APXvYqzMyQaasXGlzNBiyjzR8e92Poj/UtAGEkJbIqHy+d3804gGEi97HBFw/RQkTZDgujN5dgj+5w==
X-Received: by 2002:a25:c486:: with SMTP id u128mr24537504ybf.428.1565632711972;
        Mon, 12 Aug 2019 10:58:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:38d5:: with SMTP id f204ls2905938ywa.8.gmail; Mon, 12
 Aug 2019 10:58:31 -0700 (PDT)
X-Received: by 2002:a0d:eec3:: with SMTP id x186mr25881324ywe.510.1565632711740;
        Mon, 12 Aug 2019 10:58:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565632711; cv=none;
        d=google.com; s=arc-20160816;
        b=RJsVLwadKyNAMAKWOyG76SkEI5uar9Rfv5KUUNFNvR0dT/9xjHexDgH9pY7cnT7uYm
         XKCFljjUXiVm6ENuwGfVBAyTbM8YOriHaWG2YxjCqfmzYl/LhmLAMIwVWnWvLTjY3WLH
         M6JQN5V6dxlG24Vv5D2y20Z9lL+IhqdMBHQPZTE69unMZ2nhQJ/4DuJ0/tCvJDEOK8VT
         80Vk+3vg7rNCME1csZc2hI02maF7WBxwysw6bXtg6KP3EN8+sfXsrqMd1jkXYaBOmc0/
         MLx7OxQlZlhDlw8HZLSNeB0SqKk9D448SsILVIWNBa6d5SYSPZFodjaSSv4XS98fUsz9
         4zcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=jLA4nF+u76LauqvJZezP8rZgPZP6IRvmZwJ8PII9LYQ=;
        b=AYxNuhMs6Vhw6RC6hSZp83keD/AxsY8fHI4UOW4jGT0PPmSzmh8wUUaKa/iuELeC51
         5CPKiYTEOtJ64jzdaSt8MwB5xKnNgSr7u6jGPj1/afqrKrtxdxrq5Rsmp3/1DmurGJGc
         GDPljCCIiRmSkHeB00ce194vgJr5nBOPVqI/iHJgTBpFAVU9X2Qk3xRvT9ExWqbf7TWS
         a1LTSfWfyTVClZ1DsXgOp6moFW5Wv3GIj++W6rBCPbIsxEM/DpiILj94oxkH0mTLak8l
         VmtZrr1FAxLZcfst7L+fXZIxqEDFI2btJyVEme4aGvJZU8R+rvLEo83m8KlbHUZZ7kcc
         A+uw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=iY1WOyTq;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f131si4599136ybf.5.2019.08.12.10.58.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Aug 2019 10:58:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 39A4C20663;
	Mon, 12 Aug 2019 17:58:30 +0000 (UTC)
Date: Mon, 12 Aug 2019 19:58:28 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Daniel Borkmann <daniel@iogearbox.net>, kbuild@01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	"# 3.4.x" <stable@vger.kernel.org>,
	kbuild test robot <lkp@intel.com>
Subject: Re: [stable:linux-4.14.y 8386/9999]
 drivers/gpu/drm/i915/gvt/opregion.o: warning: objtool:
 intel_vgpu_emulate_opregion_request()+0xbe: can't find jump dest instruction
 at .text+0x6dd
Message-ID: <20190812175828.GA13040@kroah.com>
References: <201908120108.9KdVOsTD%lkp@intel.com>
 <CAKwvOd=JpUsD1XDSBzgwDWcAO+1VuGOLjbGNCTFne-WAqjGzXQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=JpUsD1XDSBzgwDWcAO+1VuGOLjbGNCTFne-WAqjGzXQ@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=iY1WOyTq;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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

On Mon, Aug 12, 2019 at 10:49:47AM -0700, Nick Desaulniers wrote:
> On Sun, Aug 11, 2019 at 10:08 AM kbuild test robot <lkp@intel.com> wrote:
> >
> > CC: kbuild-all@01.org
> > TO: Daniel Borkmann <daniel@iogearbox.net>
> > CC: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
> > CC: Thomas Gleixner <tglx@linutronix.de>
> >
> > tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/stable/linux-stable.git linux-4.14.y
> > head:   3ffe1e79c174b2093f7ee3df589a7705572c9620
> > commit: e28951100515c9fd8f8d4b06ed96576e3527ad82 [8386/9999] x86/retpolines: Disable switch jump tables when retpolines are enabled
> > config: x86_64-rhel-7.6 (attached as .config)
> > compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> > reproduce:
> >         git checkout e28951100515c9fd8f8d4b06ed96576e3527ad82
> >         # save the attached .config to linux build tree
> >         make ARCH=x86_64
> >
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> >    In file included from drivers/gpu/drm/i915/gvt/opregion.c:25:
> >    In file included from drivers/gpu/drm/i915/i915_drv.h:61:
> >    In file included from drivers/gpu/drm/i915/intel_uc.h:31:
> >    In file included from drivers/gpu/drm/i915/i915_vma.h:34:
> >    drivers/gpu/drm/i915/i915_gem_object.h:290:1: warning: attribute declaration must precede definition [-Wignored-attributes]
> >    __deprecated
> >    ^
> 
> Was there another patch that fixes this that should have been
> backported to stable (4.14) along with this?

If this is an issue on the latest 4.14.y tree, please let me know.  Look
at how far back this commit is before getting worried :)

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190812175828.GA13040%40kroah.com.
