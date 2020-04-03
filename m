Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBHXKTP2AKGQEOH5QY2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A7BE19D24C
	for <lists+clang-built-linux@lfdr.de>; Fri,  3 Apr 2020 10:34:40 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id f75sf5422500pfa.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 03 Apr 2020 01:34:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585902879; cv=pass;
        d=google.com; s=arc-20160816;
        b=opHFsSf7jcRnC5k7R9J6gEt66emkdpJDHCcm1nzFVRhy7oiiPlVLla6wwO+R3yWz4L
         M8kjq2nAV8dLvXkqwdOTbVGM+m8UHO6vvjnE0qUM5O5a6GkFKAgc/8p7uD8R84+Kpizv
         t3bBiQ6mEfO6AJ6ea4riC4DD8zVKaXyM6GFdGwI1C2PiCZ+7E9AugpwmjdFUoNqxbxvs
         +0m3F2KgTzkAZE1egYet4Ne+dv5d8NRH04es8Bi2g5UIfTI80rYb+oRxoO2nbz/XVG+j
         Da7Ej8Ts5VRIacI2iunYgBP6ND5fPXgVc34EherBZcVu715fvPPbeGNeQ5GJjD5IKKYB
         Cd7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=baLJimh8fVZdbsfgvXSSV/mKiKjUXttBJXFFpLO2CYw=;
        b=TRgQYYeXxo3QLMjy8MvfhCYEMPsyPWQS7lv6Ai9kSOXeW7rZPI41YLvjuwh6joLWQ9
         +OWZcwtChwMxLY7IVDg5JElC/KKnVJY14UJaPsQyxdj/KfERY+LoKEbW/cUxrQnmsmv7
         g0R8vXe7cUsjkCSN/ebHWg9D2OHYC7BMx8fQnLP6cAFT441nRDvLBhZEAMzPaK+b2FMj
         tGFExkcvt/lT1D/m/FLLlVMLyAlbDLgqHztowkM4B+njWtBLGDziEIaEw8b15Ra/cWOL
         MnKe2WpOG1sbJyfGRhBBNZZKLN/H9mwTH7eTUhKkShNAyyHXR8X55WfVIiBRNk0khZrD
         DZ2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aVXZev5c;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=baLJimh8fVZdbsfgvXSSV/mKiKjUXttBJXFFpLO2CYw=;
        b=ARhg/YTiEd9tM25jwWhMVg27GiWIugOFbKgRXic+BRUYmdIWdsSjkl+5FdMS3G5yS0
         hJTKe8OqpCcYVkaQqIMl3NqJz4BBmhkku1MWkwudCbK5EG7R4JYcLoYsDEyI7oIEhFka
         lFMIRMkiVs6XQT3BVWl/jzuIwez8/jnV+L7HNAujX7gapHfBUfl1m7mNWtwDs2m1IYGD
         KXW1HBXHyMRj9hQfCI1gkpGWFF/p235M2BlNkAiSgcMlEkAnOdITYJiuvOnTBUMMm3RI
         JlBfTRQEp3KTDd+FzOh991dPLc4iJTLCIhC1DoJ+AkA68V6VFUSOb+Ess1lvS2P2VC98
         Tsvg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=baLJimh8fVZdbsfgvXSSV/mKiKjUXttBJXFFpLO2CYw=;
        b=bMoRtDwtWOxw6tXDRL5HDtptkdzCnjB1FOY9r+PZXgOSZ401QYNfwTHecYEQO4DEfk
         EAhPCGvB0g1EwYh9ukBo035Gbf9g+tJUUsYlARaIz5ImlM8ahp0ux5WLIDPUI/VfZo/P
         DipSzn63uDDQ2PY8CRfQczG28woECxzmT424plRqDyDpCl4qGZxzyhMGJM/TugmD6dF2
         VHBXloNR9seW1aM4/qT5/MHnGGWkQ8I/OqY7ui3mtddDatHJodyp/qXtmGlZqZDvNZWf
         60VXPyGlApcO08JfWQx2W08TPVMNGITVsodQBG1lcpm5R5wxe7+sWJDevdy88uYVV+NS
         3YzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=baLJimh8fVZdbsfgvXSSV/mKiKjUXttBJXFFpLO2CYw=;
        b=pERnCHwTsLV+rAs9CszbGlZ+uPzFfHpHPXhejTDJBH339YPXTSwsHF+mErpaeO+VOn
         fnYOvIiwdeYndIL9mNxxk61r+R0ib8szJS3quKIKhL9IGvJWQ7w8DlyVT5Ji6S652wMm
         O1E6YlpUTTO39CA0Sm3US/Wm6LKDNyuCxpm7Y5SGnhwHDhZDLyr+6oD8COxkHJVx35kD
         3j/CBab7HooJRUT96Ji+IwsC9jj0018TWyPF5/5/7+Bou7PHn4OHvtWO/ZdbCMjTAI6o
         Wg1PTyfD+NRzifteXay4jHw5oFNqKbdYFTg+K/W2bP9sbgfWgfQuLuP/8991ZlxWSbKF
         DuuA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pua6lTfzOL4F0Wn4VSvMHhd140NvruwkOwkr8hpdN9/2TEM/6ylx
	I3dxNqy4bxv4pyC2SZYL9us=
X-Google-Smtp-Source: APiQypJ+qVz2vGynX5MAjSUgJmRgw1cKQekqjodZa8htLbz3SjO+qcEY+Gu9mnzFlcZ9tfxTf1KJLw==
X-Received: by 2002:a63:134e:: with SMTP id 14mr7216637pgt.380.1585902878961;
        Fri, 03 Apr 2020 01:34:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9911:: with SMTP id z17ls4891430pff.5.gmail; Fri, 03 Apr
 2020 01:34:38 -0700 (PDT)
X-Received: by 2002:a63:29c1:: with SMTP id p184mr7320042pgp.37.1585902878481;
        Fri, 03 Apr 2020 01:34:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585902878; cv=none;
        d=google.com; s=arc-20160816;
        b=EaNOaYjZL3Su0rsUqByhVZMjTdll039y89I6cprBR+aAcXk+CblUKuvUQCyQIhNqzu
         Lxra7ARM1x7x3+6lvAT4+56WCCxznup3aVDi3/ppMADDuVZ7v/BQucmbAurDniHoi5Ha
         iVMqvnW+7TgNlPpXkGC/rRPHwAimtNRBY6hFza9SCRTJuyQEaiY9dD9qq9RF412w2E+T
         e3/1xBfleWT65vFb0HFcaiEM/r+eU8Q3FXZxMmPxxfDMU7uqX7G/wkhfb/gFVrfSQDPj
         Ia/sSId3NpL0EoatqORbUdNI8JmDlcR80jdy6/xqPBCMVzmjNf1//mxdg+LyhjTtnqou
         powQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=3NQs7/le6GweNbe8m9Hgob02jKWzwMwXAqg1WAi60Ng=;
        b=zGC5kc6mGAJP4mzohnCS6zIyipnjz0a0dWiozdzSfVTvG5VXyrx2aEWIKGXGd07+z2
         lCFnMKIuJ2LCo8Z3TQ3zT4hgaUYZ6eHZnnafgViLWrES1tDOJP4uqROOVjA+hxmBaojs
         vbm8LgCSGyGynfQldz3gUSX5YoLejbgOtlWmXk2wpE35SJw/JlXqNF+MqBmGiw83Cj2n
         yZKCFaPA4u4MvPZIHsH/WNa2FZQ5Lt5+pewePxBVhcReVSdbwqf7dB1z2sSDvyLpfzz0
         J53py6S/Sl17QDQpnRjIoGUZ+dFqAqlt5Kvu4wPDiO8upik2DpVzJDPGE8vVlC870Fmg
         1N2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aVXZev5c;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id np5si185821pjb.2.2020.04.03.01.34.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Apr 2020 01:34:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id m2so6506454otr.1
        for <clang-built-linux@googlegroups.com>; Fri, 03 Apr 2020 01:34:38 -0700 (PDT)
X-Received: by 2002:a9d:306:: with SMTP id 6mr5806284otv.185.1585902877682;
        Fri, 03 Apr 2020 01:34:37 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id 95sm1952861otb.44.2020.04.03.01.34.37
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 03 Apr 2020 01:34:37 -0700 (PDT)
Date: Fri, 3 Apr 2020 01:34:35 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Masahiro Yamada <masahiroy@kernel.org>
Subject: Re: [masahiroy:kbuild 20/29]
 drivers/usb/gadget/udc/bdc/bdc_ep.c:543:28: warning: comparison of address
 of 'req->queue' equal to a null pointer is always false
Message-ID: <20200403083435.GA22979@ubuntu-m2-xlarge-x86>
References: <202004031616.oEZp1n4M%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202004031616.oEZp1n4M%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=aVXZev5c;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Apr 03, 2020 at 04:30:23PM +0800, kbuild test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git kbuild
> head:   580ff3dfafe377e02da91a99eb4e41426a4c4184
> commit: ee6313f6b884e61e62f59eb51acdbb5811e27563 [20/29] kbuild: Enable -Wtautological-compare
> config: x86_64-randconfig-e001-20200403 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project f68cc2a7ed766965028b8b0f0d9300a0460c3cf1)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout ee6313f6b884e61e62f59eb51acdbb5811e27563
>         # save the attached .config to linux build tree
>         COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/usb/gadget/udc/bdc/bdc_ep.c:543:28: warning: comparison of address of 'req->queue' equal to a null pointer is always false [-Wtautological-pointer-compare]
>            if (req == NULL  || &req->queue == NULL || &req->usb_req == NULL)
>                                 ~~~~~^~~~~    ~~~~
> >> drivers/usb/gadget/udc/bdc/bdc_ep.c:543:51: warning: comparison of address of 'req->usb_req' equal to a null pointer is always false [-Wtautological-pointer-compare]
>            if (req == NULL  || &req->queue == NULL || &req->usb_req == NULL)
>                                                        ~~~~~^~~~~~~    ~~~~
>    2 warnings generated.
> 
> vim +543 drivers/usb/gadget/udc/bdc/bdc_ep.c
> 
> efed421a94e62a Ashwini Pahuja 2014-11-13  536  
> efed421a94e62a Ashwini Pahuja 2014-11-13  537  /* callback to gadget layer when xfr completes */
> efed421a94e62a Ashwini Pahuja 2014-11-13  538  static void bdc_req_complete(struct bdc_ep *ep, struct bdc_req *req,
> efed421a94e62a Ashwini Pahuja 2014-11-13  539  						int status)
> efed421a94e62a Ashwini Pahuja 2014-11-13  540  {
> efed421a94e62a Ashwini Pahuja 2014-11-13  541  	struct bdc *bdc = ep->bdc;
> efed421a94e62a Ashwini Pahuja 2014-11-13  542  
> efed421a94e62a Ashwini Pahuja 2014-11-13 @543  	if (req == NULL  || &req->queue == NULL || &req->usb_req == NULL)
> efed421a94e62a Ashwini Pahuja 2014-11-13  544  		return;
> efed421a94e62a Ashwini Pahuja 2014-11-13  545  
> efed421a94e62a Ashwini Pahuja 2014-11-13  546  	dev_dbg(bdc->dev, "%s ep:%s status:%d\n", __func__, ep->name, status);
> efed421a94e62a Ashwini Pahuja 2014-11-13  547  	list_del(&req->queue);
> efed421a94e62a Ashwini Pahuja 2014-11-13  548  	req->usb_req.status = status;
> efed421a94e62a Ashwini Pahuja 2014-11-13  549  	usb_gadget_unmap_request(&bdc->gadget, &req->usb_req, ep->dir);
> efed421a94e62a Ashwini Pahuja 2014-11-13  550  	if (req->usb_req.complete) {
> efed421a94e62a Ashwini Pahuja 2014-11-13  551  		spin_unlock(&bdc->lock);
> efed421a94e62a Ashwini Pahuja 2014-11-13  552  		usb_gadget_giveback_request(&ep->usb_ep, &req->usb_req);
> efed421a94e62a Ashwini Pahuja 2014-11-13  553  		spin_lock(&bdc->lock);
> efed421a94e62a Ashwini Pahuja 2014-11-13  554  	}
> efed421a94e62a Ashwini Pahuja 2014-11-13  555  }
> efed421a94e62a Ashwini Pahuja 2014-11-13  556  
> 
> :::::: The code at line 543 was first introduced by commit
> :::::: efed421a94e62a7ddbc76acba4312b70e4be958f usb: gadget: Add UDC driver for Broadcom USB3.0 device controller IP BDC
> 
> :::::: TO: Ashwini Pahuja <ashwini.linux@gmail.com>
> :::::: CC: Felipe Balbi <balbi@ti.com>
> 

Just a note that the fix for this one has been queued so nothing to do:

https://git.kernel.org/balbi/usb/c/58582220d2d34228e5a1e1585e41b735713988bb

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200403083435.GA22979%40ubuntu-m2-xlarge-x86.
