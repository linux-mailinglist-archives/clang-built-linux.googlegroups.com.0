Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBKVP3DUQKGQEBP2G66Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 450E070A59
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 22:08:11 +0200 (CEST)
Received: by mail-wm1-x33e.google.com with SMTP id l16sf9318731wmg.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 13:08:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563826091; cv=pass;
        d=google.com; s=arc-20160816;
        b=irK1EteTVUEQ2g4N6SzMbw0fFCeONH9CITvj2kRPOL5Fn/wgbBujN/m+qWB9RL+GC8
         cnf0zo4AqkhRtawcEPgUsdIGE6NVhu+lVTnTnY953oDZpPYoS0S/QFA0winG9sgiM7H/
         VzarGv98dNPKArB9+G9rSz67xEJE2Ks8Rc/9T4lmGUoAB16RRkvYnGCftNiXIJcWfd0G
         esn97vRUJljk4QLs06zpuiiOeVJ3sNR66nwHHVJp6yZjj9bcudvhVQGJzhInXRZy8+Pe
         WXfJ/zuYTjnVyu6OqpueOTISyr3W7eHW5KRjvKYd4mlRTQCT7Sh2Gykqp8297vhk6fZ7
         0BNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=kNuZnlxyBkPa1ds6o47sCZR9axn2/8NcB4C7pOMqdc0=;
        b=wIq4n0+s3ydQg7tgCtyKS/KG1sIUdruBNTkTuch9K+TjBbT+UEhLcb2SuDWNkpXZKU
         HnNqK/uneFkS7RwbUfuKn1x+gGS15IpTiMtP7v7+ax/xokQucYSrvOj2RtN7MmMn39xt
         hNLIsE2oYdDfnELxYoeANUCBJ2zwzIZxFVB1gpJlmXiYjEsBiMkGx3TMYL088BEAnpl2
         XHwM//9S9K3bodJ58WsqmjE9wzkOB263AYZkzfQ32bfJjqxHFS50Bsurm/nCmLgkaQMt
         H6Vvq2OWZHl1hLR4DgiwTRhK/Ea4UNJNDUOfAo/gKp/DnV/8hWZL2Sbh+nez0GmiW7eK
         u/qQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lZIsu0yq;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kNuZnlxyBkPa1ds6o47sCZR9axn2/8NcB4C7pOMqdc0=;
        b=VtdNYrougO2YfWJrG664x7VFcNE6UnKn76VcpgBYzejxzwKbqd8CZVuiRLICa9EX96
         YOyq8NUs3nDAnfh4aocyWp5Oa6Rf7MjZyfS8EfUgX38vSdcEp9D+2eGMZxMlCS/Njg/6
         kkoUNdSTSSIC43zHI1ta8jawHfH+JdBHmDB/DxojlfX30tmzCjtCpKufkcf3bBS9L/js
         dizreZyT4cwcNSOBf3YaFp3wh/GlfdXeFRCVu7gF5Mf6qHdQ6m4catE1BEMmRu3X2ZuY
         bx+nHjYKUeQkpYOleHrbZ76vLrq2ncKCuI3c/6EguL6KyyAZRbn3AMPmXWLkARPu/eRM
         Zu4g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kNuZnlxyBkPa1ds6o47sCZR9axn2/8NcB4C7pOMqdc0=;
        b=tuFa7O0cVTWWwxM2l+3WlLsK585SUJqqddNHeUAfuo6aAgn21HitF52zY/nAHKPWuo
         uWOVAFEYY3OQ55+1E1XoFDLEiMY0zZ1767bt4bBdlv95s/tOLRTr9u6AscTBN8jjdcBu
         Xy0GuagO/g65glPpL9dHWK6L3gQQ5FAaa3fb5MmFA2lmpiTdf6fOcaK8LMeXl8sW9gsS
         xrEEBlnjDT/JLTzbIituY53MhtdiMfS7z8QMbZBpkUx4xHtUoph7aTg0umbnCPCK32OL
         IC/cVU76ylZkigiiEMLaAep9Pdi6xdPjY1jlaOTWaySH1SL9S/nRnGiWFAXWtoObr4/I
         2oXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kNuZnlxyBkPa1ds6o47sCZR9axn2/8NcB4C7pOMqdc0=;
        b=a9sEh1RuQ8cW50h0SJvebFrHq+zZYPGKrj/ZcSdW18KcA1+32CaQPzJkOlYw6++2zp
         6zPgvOvArjhF90SH/OfylRyCwr0s8uXzFX/RS7DY4by1tBDf3ixdCbMWsSwZoCtUWAVV
         4uQiM8q4HQXtO003kGp3JoTP9akP/cf+SiEBvxvhYCwKX3VJ6eNQVzZCRqTLj8TSS5pF
         kGdBOKnh+fou75HAkSKZajrkQPq+LUWfpVWFUIuZ26Fl+TwM+dXwWV9bY1NMHYL/TdK0
         xmLaIhhO3AjYZTIDqbQSHVlW+w9vCGS4zb/NfsV30T9dvNt+hCavqWE+T1drPhDAwbis
         n1JA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV0jRYK8kJEoppdCkkLIXiokGt7VK9vE4ZUw4aDxMxHY7v8ma2D
	8253vfRHaV20f5c7vgyCEbk=
X-Google-Smtp-Source: APXvYqzh87gOaHMhR3WnJWoxRrJqgA3W61IIGmAuYV8ZW5crdrP3EMb6uXU4gSCORevweAawCIzmeA==
X-Received: by 2002:adf:df8b:: with SMTP id z11mr20939101wrl.62.1563826090965;
        Mon, 22 Jul 2019 13:08:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:9083:: with SMTP id i3ls12060609wri.14.gmail; Mon, 22
 Jul 2019 13:08:10 -0700 (PDT)
X-Received: by 2002:adf:e2cb:: with SMTP id d11mr47483181wrj.66.1563826090492;
        Mon, 22 Jul 2019 13:08:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563826090; cv=none;
        d=google.com; s=arc-20160816;
        b=uLwGx/08Sq1CYGI8q4Q49xH5arJSlz1ymixNq+we3VDHODV5ex6xy4lnEVWvxl2+m6
         yECEtD5k/XvbvJYMl3CiuIAAeg1sjgzsAE9Ge24fCYcyxCC2P9bM7EWczeLgYWxv+bf8
         iJAR6ALlpMkJO5K36bK6g12Ye0TEfn7xtlo4E4/+CqZCJsGNeB0eFPL5pZYSzpkh+L54
         4+sCL+/gqVefv9u+2xu5jxuE5KQI+qhv0oqY9DPpMfYaoet3WmhpFqhohePqp/FD/9J/
         mahgQp/LlnIyv4gnfow++RJycs4rC2RQvi6H8IQADigz4Ovcyd07q78DXY2S1IWwNsEi
         OJuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=idaXYwGeT3Eejw7/o18x7HBF9JO/MnvD5aUsuNv98kU=;
        b=MmiHor2CjbDTQ58APL9Wop2ADhV3v/mCpRL4kjJ6xl6CrIwSOdrhKMT6uJt1kueQpV
         LJ5s5BRo9HwYviwM64Ok4MeGRZDMC9h+j+RCmb+q7wZUmsKCCyNQVmJ3wLmG5wBNUUO+
         2SA8xeiAWGPxzThxnAgVfup6x2YRd/HKp5r+db0DbVKXvV3oIEUVeuuHP8aOIPj2vZu0
         C2bsx+bpB6TTJXZAiYSwFseUKn5y6XMNKAba7PTM+l0R4cUCbuKNG8ZXNqNwuAo3HCtl
         OAeuYGscdyk4qEMtY1Yyx95DXUbDzYDLeHLGp5lzL2glmCdYKYf5u0MkmA/J5OUdr5NY
         Cffg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lZIsu0yq;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id p2si1689612wmg.4.2019.07.22.13.08.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Jul 2019 13:08:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id 31so40743649wrm.1
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jul 2019 13:08:10 -0700 (PDT)
X-Received: by 2002:adf:ce8d:: with SMTP id r13mr75940083wrn.37.1563826089892;
        Mon, 22 Jul 2019 13:08:09 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id 32sm34305722wrh.76.2019.07.22.13.08.09
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 22 Jul 2019 13:08:09 -0700 (PDT)
Date: Mon, 22 Jul 2019 13:08:07 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [driver-core:debugfs_cleanup 15/49]
 drivers/gpu/drm/i915/i915_debugfs.c:4444:6: error: conflicting types for
 'i915_debugfs_register'
Message-ID: <20190722200807.GB1502@archlinux-threadripper>
References: <201907230252.15mqlyWt%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201907230252.15mqlyWt%lkp@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=lZIsu0yq;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Jul 23, 2019 at 02:46:57AM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> CC: devel@driverdev.osuosl.org
> TO: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
> 
> tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_cleanup
> head:   7ea1b1929a3f463169713ae38bcacf4966e756af
> commit: c322a580a9226296a9ac9f57fdd9f06c186dedc3 [15/49] drm: make .debugfs_init and drm_debugfs_create_files() return void
> config: x86_64-rhel-7.2 (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 3d68adebc579720a3914d50e77a413773be34f16)
> reproduce:
>         git checkout c322a580a9226296a9ac9f57fdd9f06c186dedc3
>         # save the attached .config to linux build tree
>         make ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
> >> drivers/gpu/drm/i915/i915_debugfs.c:4444:6: error: conflicting types for 'i915_debugfs_register'
>    void i915_debugfs_register(struct drm_i915_private *dev_priv)
>         ^
>    drivers/gpu/drm/i915/i915_debugfs.h:13:5: note: previous declaration is here
>    int i915_debugfs_register(struct drm_i915_private *dev_priv);
>        ^
>    1 error generated.
> 
> vim +/i915_debugfs_register +4444 drivers/gpu/drm/i915/i915_debugfs.c
> 
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> 

Already reported with GCC:

https://lists.01.org/pipermail/kbuild-all/2019-July/062496.html

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190722200807.GB1502%40archlinux-threadripper.
