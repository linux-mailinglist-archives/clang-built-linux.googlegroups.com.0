Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJERVDVAKGQECE7H6KQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id D0D1C83D9D
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Aug 2019 01:09:25 +0200 (CEST)
Received: by mail-oi1-x23f.google.com with SMTP id i132sf36359622oif.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Aug 2019 16:09:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565132964; cv=pass;
        d=google.com; s=arc-20160816;
        b=nklCEVNX3CSkOhuPz40ZfVaHgZ4x0h9qavSMIaBacP0g55+6o2lzch/B8bjtaJ4q8K
         J+b//mH3OlS1twq0o4R2q8YOfqkyp/YTuZCXy8LjiSkLxdAeZ0kxDcCd1OZux4Hb4Gcb
         PYltrkjnk/EOz3W63/rfOBMqsLxgpAfsCfWUdBJNXrDoH/0UBqVn7R6OZ/S641j1G6WQ
         yDOgs/69bFs1iDgVJrabMfvBR2jFxuQas0xBiqnJP4+JvjtSA2L3kRm07rfHsfcLh7A8
         W/vp+TzBIxUsBiKrTEEtpoxeFeyyeGXYKQMAevp/NUXirT42VMyUeMupwPDtpoX2AldF
         c/Ug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=FMhFQUt0aVk07ixHSASaFt2XZnMUGi00LKaB/vA1UC0=;
        b=kaf65JvOsMbFeSLErC3aiQUvuEracls0qQG/yNWluvW+uWmBWO6a0jZZVoL9RdF3C1
         kuF1c5NTp9sxljABsAE/qDC1QZHqap3Uldk9x26agDJnreio/XeyL8s+D/5bu9nv3P8r
         ukcWM0iDLtImeQd6H7hlZv1feAYPdWE4FieqLfcPE6xQaCbZnQzaTw4Agyi88KxKmYTu
         4J5bOAMFJSVAYmFYur+EnZ73c5eo9ZbDWpX3Aoe3xhc1O+BGCu+h3i+TR/o/xznnDWYW
         7aSfB/hOptxk4zXYKGE1IdqkvNqRWn1ew8f8hk/TGI1d2QkvKgZyEhe2kQVOWgm3M9RT
         GhAg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YLXCcymI;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FMhFQUt0aVk07ixHSASaFt2XZnMUGi00LKaB/vA1UC0=;
        b=Hd0mfz5ec8cPiJ9Ap6W2sV7d0lV00IyUuLnl2azpXA2buXTLpvMbg4JlW7EI2X0lyu
         tueFBlm9e/oEoLLNUFdt8NCUl18PG9UXE2xFsXRH8uhIpWJkMS64GaiVnGabKW2zhhCv
         8rlAHe8sP+eAwdJjA9cd19iYsrfmBBWJIGML6z3mf0kNETokMsN6OKxaRGprBLHRTeBQ
         DcvGOug/iwWEOmfIeKokxa2OFJ87B/F4n7osH+gCoITtRwmCG11C79beLb5NbMS4L0J7
         aVCd9AK1TxKm/fU1Y9Tjd0X7g7tMcOEnL9pWLrq5wn1g1jdfKH1I7Xce71Or47zinJl5
         sLOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FMhFQUt0aVk07ixHSASaFt2XZnMUGi00LKaB/vA1UC0=;
        b=hWK+oCsk8qW7baPhwuc9w2qOHXtkyjCZ3aclnGRM8vN2J/v88lzh+wH2g3Gxrp119C
         PMChJkKXNpumK84gv3pTYybkPlj+iGz2Wclu3e4cFtyxFBvST7ETiX1J/0JaNP016Qq3
         /wTjHI1yhRqVVcnjAyGX9KVzxjO3ojAOj80n5mX3Hdo6WuwlrqdESDtDnXZLYsiyzuDO
         n2Ic9/rWVb0sMHtQ7JL85jnQruciYpZ6hvHe9XymB1K2xg7ssoVq6DBbbyUNTsjxt+zW
         eBpTi14Yiw4VU1voCvwJGs57zlnNA1xHGaWmsajkrhluwLXtmewanGSdVLVjq8rC1UHb
         iq0g==
X-Gm-Message-State: APjAAAV83h061b+qXTPHOr8Z2yUX+lAcVt3TvyTtYyD2xZXYSjb5w+Kh
	BJRoamaaCao7WlPr/TrqJj8=
X-Google-Smtp-Source: APXvYqzyC+GDlz5M11q8wUFatLteLg8ycX0JVw29lwnwo2ghjetRGE/F3mDNViWuhykPdqgDzob/ZA==
X-Received: by 2002:a9d:7f0f:: with SMTP id j15mr5633054otq.156.1565132964796;
        Tue, 06 Aug 2019 16:09:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:b803:: with SMTP id i3ls1018511oif.4.gmail; Tue, 06 Aug
 2019 16:09:24 -0700 (PDT)
X-Received: by 2002:aca:51ce:: with SMTP id f197mr3490172oib.33.1565132964413;
        Tue, 06 Aug 2019 16:09:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565132964; cv=none;
        d=google.com; s=arc-20160816;
        b=j5fj6wR/B1aKQhvpdJBSoEiZo/J7Cu9GHDRKXGrvUsuID5GE90U3G8hv6GaI1wD7P5
         rPBbBOgXEkF0UcYEgQILX5+6yMaPvRVM+jNQGJNzsAVAIx3u2a1VCtSyF/ydm5bTHx6t
         v9rRbD7LXPSro1DKFwpbLa/X/Sv1YiJBdpWe9cYzPf+VGa56lCXg16N3IOQWf7Nr2mx6
         Rdy/7qiMTsDOGdOXbQQtj52FdwSevQi0pwzcoDCY+P+5WM9YpTb+h5gNNQ6pI7kDlqcv
         DPzrCOnWdl1NPPHqJOaXIvxa1QHM4luTPYLuR0VCgEqPM6cCSNd+9hlFK2bZTR9tmox7
         mdYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=CQJJ0HliKFDr8iDPoHES6b5yGFZR97ZQC7JxMCEnpZg=;
        b=abZ/LhkccCFAJyU6w6iSbIPVQ22STpAF+2pA9lZnVMwyOD3IdZCX5o1bVCoUWiBs+7
         BUJ5d5ZpMDbyhILuMzWz2Q8dlEXiNtSCOlrtpz1Fac2iRKKP5Ld/fPpBhzwKT/Xm5Zba
         +oiHXh64q8npWdQ4AxIYAD+vn1eDt4Q/ergtp7Xde4MWaJUDGvFSTa3HhQO8pmna4UWP
         P52SShyvXFT8M8aRMC7zasbAagxVzGdtsxijNTjLoXAa3UcUFVngCbNzs7WfwXzswxSO
         rmhQFK/LUzrdkTG2A1mVGWonuUzi+WQFHCThFMTwhZva8w+WFm5t+WJ+8MaqMD5ccC44
         RHUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YLXCcymI;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id q3si2497399ota.4.2019.08.06.16.09.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Aug 2019 16:09:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id u14so42342529pfn.2
        for <clang-built-linux@googlegroups.com>; Tue, 06 Aug 2019 16:09:24 -0700 (PDT)
X-Received: by 2002:a63:60a:: with SMTP id 10mr5017916pgg.381.1565132963179;
 Tue, 06 Aug 2019 16:09:23 -0700 (PDT)
MIME-Version: 1.0
References: <201907301224.UsWL0uwy%lkp@intel.com>
In-Reply-To: <201907301224.UsWL0uwy%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 6 Aug 2019 16:09:12 -0700
Message-ID: <CAKwvOd=8nhZXSbKFn9yCqxWM4kw4V63HvOrgXAVR_ifmLFSDGw@mail.gmail.com>
Subject: Re: [intel-gvt-linux:topic/gvt-xengt 25/45] drivers/gpu/drm/i915/gvt/migrate.c:490:30:
 warning: incompatible pointer to integer conversion initializing 'u32' (aka
 'unsigned int') with an expression of type 'struct intel_engine_cs *'
To: zhenyuw@linux.intel.com
Cc: kbuild@01.org, clang-built-linux <clang-built-linux@googlegroups.com>, 
	kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=YLXCcymI;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

+ Zhenyu

Zhenyu, has this build warning been reported previously, or fixed?

On Mon, Jul 29, 2019 at 9:26 PM kbuild test robot <lkp@intel.com> wrote:
>
> CC: kbuild-all@01.org
> CC: zhenyu.z.wang@intel.com
> CC: libo.zhu@intel.com
> CC: terrence.xu@intel.com
> CC: intel-gvt-dev@lists.freedesktop.org
> TO: Zhenyu Wang <zhenyuw@linux.intel.com>
> CC: Yulei Zhang <yulei.zhang@intel.com>
> CC: Xiao Zheng <xiao.zheng@intel.com>
>
> tree:   https://github.com/intel/gvt-linux topic/gvt-xengt
> head:   2fb2c8e06ea0ffc81376f05208e1d98d71a19c67
> commit: 43514087dbcc7ae99a5ca570f6a11e291e828232 [25/45] drm/i915/gvt: Implement vGPU status save and restore through new VFIO subregion VFIO_REGION_SUBTYPE_DEVICE_STATE
> config: x86_64-rhel-7.6 (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         git checkout 43514087dbcc7ae99a5ca570f6a11e291e828232
>         # save the attached .config to linux build tree
>         make ARCH=x86_64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
>    drivers/gpu/drm/i915/gvt/migrate.c:291:25: error: no member named 'sreg' in 'struct intel_vgpu_mmio'; did you mean 'vreg'?
>            void *src = vgpu->mmio.sreg;
>                                   ^~~~
>                                   vreg
>    drivers/gpu/drm/i915/gvt/gvt.h:97:8: note: 'vreg' declared here
>            void *vreg;
>                  ^
>    drivers/gpu/drm/i915/gvt/migrate.c:306:26: error: no member named 'sreg' in 'struct intel_vgpu_mmio'; did you mean 'vreg'?
>            void *dest = vgpu->mmio.sreg;
>                                    ^~~~
>                                    vreg
>    drivers/gpu/drm/i915/gvt/gvt.h:97:8: note: 'vreg' declared here
>            void *vreg;
>                  ^
> >> drivers/gpu/drm/i915/gvt/migrate.c:490:30: warning: incompatible pointer to integer conversion initializing 'u32' (aka 'unsigned int') with an expression of type 'struct intel_engine_cs *' [-Wint-conversion]
>                    off = i915_mmio_reg_offset(RING_ELSP(engine));
>                                               ^~~~~~~~~~~~~~~~~
>    drivers/gpu/drm/i915/gt/intel_lrc.h:38:28: note: expanded from macro 'RING_ELSP'
>    #define RING_ELSP(base)                         _MMIO((base) + 0x230)
>                                                    ^~~~~~~~~~~~~~~~~~~~~
>    drivers/gpu/drm/i915/i915_reg.h:185:46: note: expanded from macro '_MMIO'
>    #define _MMIO(r) ((const i915_reg_t){ .reg = (r) })
>                                                 ^~~
>    1 warning and 2 errors generated.
>
> vim +490 drivers/gpu/drm/i915/gvt/migrate.c
>
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D8nhZXSbKFn9yCqxWM4kw4V63HvOrgXAVR_ifmLFSDGw%40mail.gmail.com.
