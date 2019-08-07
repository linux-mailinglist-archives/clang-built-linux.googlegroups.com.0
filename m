Return-Path: <clang-built-linux+bncBDC3JRMYUQLRBT7DVDVAKGQEPBPQNYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 34CF48420F
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Aug 2019 04:05:04 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id j8sf12059320ybm.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Aug 2019 19:05:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565143503; cv=pass;
        d=google.com; s=arc-20160816;
        b=QsVF/CNObmL4o8Iwn42Yj9gZc2UVZsOm4c9qlr7SBe14A9sDymBSbm0ut1MXO6h1/F
         FHaRUeOqnVWPvMCkQ1Y6g9WdAmkNWVA4R3RnyFXveQ9QcjS7++zy1OA9VeZ9782nXpye
         Zsrk2NDpCwqt8y09OabyVnOLOOx0yCIbv+715fGwaiwisX3BovMRTSFUzBee7olFrIEy
         1HQ2gzervxMy8wmY7/XqcuKIA9R6BxJf5MpIk+McvO5+o51/WLH2AxVz94S/y/pYHQKb
         YLkJKtfmdLVPfiNU0DAyrwyYTp2wGKT+f+J3GO3bPW6hhlrF8qvbvcexwjt8VE/20a42
         UlFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:reply-to:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=r9wE13ryrHivi3VQ+QssAsD3lhjlgWkr1aDFdbz4zPU=;
        b=URysZvORT7YRfUC/Kn+2y5Jq9oUyXfb+e5kGLDKBMs7gxVxYt08hnZvoi9/LWl17S6
         r0NiGC4rFtZsxu9wZOin46ZKZ2+j+kCMZ4B8+r2I/s61isc12652ZZn0oybyjWyKUh79
         z939q8h64ilfbN770JdDF2IRY6ZeshOhuu/d6URKKJXBp7W2dG/yMtlujrP63sVBFYME
         VGkHVF3xgRMpnl1GrDCwXqsUDu7sr160Dc/Jo718B3Lsfph9AV1c1Zj9ihyJZT5rKQYv
         BxsXkz2S871n7f4GZxUQmf/VnBUK+DsEzJLqCXCLAF5zqkol2tJrkCfS9wGQIZ5iTev1
         ut+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of zhenyuw@linux.intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=zhenyuw@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r9wE13ryrHivi3VQ+QssAsD3lhjlgWkr1aDFdbz4zPU=;
        b=hY/dcNtokNmsfzZDoU6xRhOYbKTj5kGQvfSSdLJzKlXQLIKxO64dBAa1HlKWrleZgQ
         UQh/+W2RS7rjsDDkJLyCGzfUwEv9ghLwjHy9dZ9SNI2Z3Mc+09BqcwT12S8MEPO3GUPI
         Rmz5UFzluXD/bavMBfxZN82kK7ra5jxWFnliImk0qm5josKUMzeOpSXNo0br294xc/Nd
         BZYNtpem3dD2xmU6P8f4eCH1BnWWAc9y/Ni8jegOWiKs1vD4UVgRP9DxZMFnm6wQ/yOy
         8SwbPKSvZTmv9So0QMZ6lq5UVg4irHK7vUpQFwsRlBm74th5BxFoJyMpPGNcj2EYCsaF
         8hag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=r9wE13ryrHivi3VQ+QssAsD3lhjlgWkr1aDFdbz4zPU=;
        b=q2O+0kX0JlWKzMb4YqScEILEAddnwrUiEuwCUrJGODA1oQeS0QJDMVj6QWfy71OXFc
         5SAdlkmlwGH9z2FnQ6TYBJwQXIJhGmbPin8vo/CsW/SJ9HI/R6SCHQ5I9p+9UHjGG1VP
         r/HHBl1Wa9Mk2ENk900cydboLzcolU984zteQH3a8WTh9k8E63ymFsEbHT3nmvpz/kcg
         eD02TPBm+9fsjL/8LPid4BBihSsRPZwGoNdMGihPHVDhGDuwIQzKmq/24Zx5u64eqt0J
         CbWX8T3nQUgb9uzB3ktoSs9JRQMKL2DvLYvgaLmTtx8LRvBWagCnaKPluXVGb8V5cZy4
         +K5w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU90LxoKKNhXb5gzcAMRpT2h1feX08pyScckJyfEhON6p39MX9p
	NndNnMQqobtEFDSJRVDVzq8=
X-Google-Smtp-Source: APXvYqy/d2o7RwR5Ll0wMgT508UGvyCecrZlbG9k2ZwB6MFWXQK/hgip0wUrqSGsivrTrxGwCr6PeQ==
X-Received: by 2002:a81:68d6:: with SMTP id d205mr4197079ywc.341.1565143503301;
        Tue, 06 Aug 2019 19:05:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5b:5c7:: with SMTP id w7ls3269442ybp.10.gmail; Tue, 06 Aug
 2019 19:05:02 -0700 (PDT)
X-Received: by 2002:a25:aaa9:: with SMTP id t38mr4871189ybi.305.1565143502956;
        Tue, 06 Aug 2019 19:05:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565143502; cv=none;
        d=google.com; s=arc-20160816;
        b=Jxqs0yMaXD4BYN5IuVydDXom/YyPbtpPWKH7bQ76V+eBEBLa42cgpKTvgJEl7fQiGf
         i617PG2wyciDf80NHWWeOqh/0kqe7kXTVzPhn+LCTUo8ZZ5lv21ffTRJ7IdKNjjOmCqP
         pCUEeRLzJnQAMLUcbBKVEOtVGdTvyXX/zfnq3WCT7kNEgw6GRHO1ZnJEkyfiLrPzIWdz
         QdcNAJmWdcIipfh7kUNTFwajqxxV0xwU1Gi/y3kvGsUxqrByfSX5DZUX5EjaaANvGCRq
         JqCO255mo6y6TjridtOwRhG8DWGAzmNK/oylcSTRt1VK96WoV+Hy+twJ28qevZ/GF7hs
         ZkFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :reply-to:message-id:subject:cc:to:from:date;
        bh=cKCpgBe3c1j+WQ5zdUdd/yIjVnKARKa7VJ/iJ4xolDw=;
        b=uV2kuu20w4KLeCqdNRbqvqKOzPVea1B0mIehAogPA0VOixNQeMFzy42BN9dViLKKJA
         p8qG4hdZ269zE00C40pXU0wa2EqPzV6tw3+ZTd33m2cqibgxQ63XrwH8NNVobmDfqF/C
         yhtqMFvW6kp/ocQpDMUM3oziefhMh3VYRO5a0lGP+/oh9fwkRdKfvNBrtYgCeoacX2nf
         3f4ESWlBtcuRFyuX83W0/WVFhMNWhOy69OXeY+PDxKvNiCeMN7e8egJMvO/mvk+Puwt8
         nrTjP+4WjuluWXIviDHN+VLZhAGWcjiZ6O+eDp4DRUoJHMtTnUhD6lP51i62xKF4r8Hr
         rzDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of zhenyuw@linux.intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=zhenyuw@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id d16si4846535ywg.5.2019.08.06.19.05.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Aug 2019 19:05:02 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of zhenyuw@linux.intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Aug 2019 19:05:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,353,1559545200"; 
   d="asc'?scan'208";a="373612824"
Received: from zhen-hp.sh.intel.com (HELO zhen-hp) ([10.239.13.116])
  by fmsmga005.fm.intel.com with ESMTP; 06 Aug 2019 19:04:59 -0700
Date: Wed, 7 Aug 2019 10:01:04 +0800
From: Zhenyu Wang <zhenyuw@linux.intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: zhenyuw@linux.intel.com, kbuild@01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	kbuild test robot <lkp@intel.com>
Subject: Re: [intel-gvt-linux:topic/gvt-xengt 25/45]
 drivers/gpu/drm/i915/gvt/migrate.c:490:30: warning: incompatible pointer to
 integer conversion initializing 'u32' (aka 'unsigned int') with an
 expression of type 'struct intel_engine_cs *'
Message-ID: <20190807020104.GA31922@zhen-hp.sh.intel.com>
Reply-To: Zhenyu Wang <zhenyuw@linux.intel.com>
References: <201907301224.UsWL0uwy%lkp@intel.com>
 <CAKwvOd=8nhZXSbKFn9yCqxWM4kw4V63HvOrgXAVR_ifmLFSDGw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="3V7upXqbjpZ4EhLz"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=8nhZXSbKFn9yCqxWM4kw4V63HvOrgXAVR_ifmLFSDGw@mail.gmail.com>
User-Agent: Mutt/1.10.0 (2018-05-17)
X-Original-Sender: zhenyuw@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of zhenyuw@linux.intel.com
 designates 192.55.52.151 as permitted sender) smtp.mailfrom=zhenyuw@linux.intel.com;
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


--3V7upXqbjpZ4EhLz
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline


On 2019.08.06 16:09:12 -0700, Nick Desaulniers wrote:
> + Zhenyu
> 
> Zhenyu, has this build warning been reported previously, or fixed?

I think this is new problem, I'll refresh that topic branch to remove that.

> 
> On Mon, Jul 29, 2019 at 9:26 PM kbuild test robot <lkp@intel.com> wrote:
> >
> > CC: kbuild-all@01.org
> > CC: zhenyu.z.wang@intel.com
> > CC: libo.zhu@intel.com
> > CC: terrence.xu@intel.com
> > CC: intel-gvt-dev@lists.freedesktop.org
> > TO: Zhenyu Wang <zhenyuw@linux.intel.com>
> > CC: Yulei Zhang <yulei.zhang@intel.com>
> > CC: Xiao Zheng <xiao.zheng@intel.com>
> >
> > tree:   https://github.com/intel/gvt-linux topic/gvt-xengt
> > head:   2fb2c8e06ea0ffc81376f05208e1d98d71a19c67
> > commit: 43514087dbcc7ae99a5ca570f6a11e291e828232 [25/45] drm/i915/gvt: Implement vGPU status save and restore through new VFIO subregion VFIO_REGION_SUBTYPE_DEVICE_STATE
> > config: x86_64-rhel-7.6 (attached as .config)
> > compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> > reproduce:
> >         git checkout 43514087dbcc7ae99a5ca570f6a11e291e828232
> >         # save the attached .config to linux build tree
> >         make ARCH=x86_64
> >
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> >    drivers/gpu/drm/i915/gvt/migrate.c:291:25: error: no member named 'sreg' in 'struct intel_vgpu_mmio'; did you mean 'vreg'?
> >            void *src = vgpu->mmio.sreg;
> >                                   ^~~~
> >                                   vreg
> >    drivers/gpu/drm/i915/gvt/gvt.h:97:8: note: 'vreg' declared here
> >            void *vreg;
> >                  ^
> >    drivers/gpu/drm/i915/gvt/migrate.c:306:26: error: no member named 'sreg' in 'struct intel_vgpu_mmio'; did you mean 'vreg'?
> >            void *dest = vgpu->mmio.sreg;
> >                                    ^~~~
> >                                    vreg
> >    drivers/gpu/drm/i915/gvt/gvt.h:97:8: note: 'vreg' declared here
> >            void *vreg;
> >                  ^
> > >> drivers/gpu/drm/i915/gvt/migrate.c:490:30: warning: incompatible pointer to integer conversion initializing 'u32' (aka 'unsigned int') with an expression of type 'struct intel_engine_cs *' [-Wint-conversion]
> >                    off = i915_mmio_reg_offset(RING_ELSP(engine));
> >                                               ^~~~~~~~~~~~~~~~~
> >    drivers/gpu/drm/i915/gt/intel_lrc.h:38:28: note: expanded from macro 'RING_ELSP'
> >    #define RING_ELSP(base)                         _MMIO((base) + 0x230)
> >                                                    ^~~~~~~~~~~~~~~~~~~~~
> >    drivers/gpu/drm/i915/i915_reg.h:185:46: note: expanded from macro '_MMIO'
> >    #define _MMIO(r) ((const i915_reg_t){ .reg = (r) })
> >                                                 ^~~
> >    1 warning and 2 errors generated.
> >
> > vim +490 drivers/gpu/drm/i915/gvt/migrate.c
> >
> > ---
> > 0-DAY kernel test infrastructure                Open Source Technology Center
> > https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> 
> 
> 
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
Open Source Technology Center, Intel ltd.

$gpg --keyserver wwwkeys.pgp.net --recv-keys 4D781827

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190807020104.GA31922%40zhen-hp.sh.intel.com.

--3V7upXqbjpZ4EhLz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQTXuabgHDW6LPt9CICxBBozTXgYJwUCXUow4AAKCRCxBBozTXgY
J6zeAJ9KbkGo3sQyFfyyazxAsHioeaHl+gCcCAcKFavuLp0E11li2p5kz2kJyQo=
=HCQZ
-----END PGP SIGNATURE-----

--3V7upXqbjpZ4EhLz--
