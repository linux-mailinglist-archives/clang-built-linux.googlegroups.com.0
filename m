Return-Path: <clang-built-linux+bncBD26TVH6RINBBGVP3HVAKGQETPZPNHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E498FBDA
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Aug 2019 09:13:31 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id 15sf3870610ybj.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Aug 2019 00:13:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565939610; cv=pass;
        d=google.com; s=arc-20160816;
        b=UuBRnVH8Id1YZMniCeR7SBIQhu+CrgnDPrWfSxQagvibF6R2GdQrS6BRR8LeCIsG9T
         vMxu+/XUoDsKdYDBAN8+Pgga/rcpC4l2tVrAbuAsQYn/P6qF6AfQqoLb3MlZEPwANI0z
         WrRUVxRsJGEI54V/hGdosH6aVogCA8sRx6opq0vtzplpy+OtCdqZZwn15RdC0aEHnD6k
         riDN27BB5y77RCLSSUoKHUWoaFB5nJ+1d9dhrx0AbWNPSM3xGxybXZRxox0qT9sJpEKG
         0eLAkoVlO6inudoUZI8oxkCdnL75OPaE5U43XsY2IG1Xm9pR8np5sRzGDvj+C193oekr
         IStw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=EtJpRJCeL9y32husw+Far2tbk2XTQg6H4zJs3WoUAhA=;
        b=HqlNFKd/4mwawRLuLUPhegD8507sGthwbbP7+YxWjwkj1RcH9RKcPKe0tP6gScRv+l
         EQVSWq2KmkdNGXZGYlg3sOs24Y3f2IXMu8tJhEWCTOmBPFSEyan7If7hNgqiAqxh0L8G
         wV67kuNkchy+22PFCSiTCJW2k8feta7lQP1leWOjP/HSxTkPBTjg7E1XGfVVR27UzXBs
         clXbSAXuN4qPVCf0bOQwZt9JcNLxMJSuZ+k2qri3iqV4QCj8/OLe8eN1RlkzzuYQbDeO
         ufC/mpdsCHERDYC3EfJtR53f2wp3WdM/GlTzKYKdiZYdCJqRljTFU1D4kOCTJP/DWouV
         Tktg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EtJpRJCeL9y32husw+Far2tbk2XTQg6H4zJs3WoUAhA=;
        b=B472Xz7WyZ+LfQKF7yMl/k2fMNP1m4034MmRYKPuggfcsncmKOfh6U5DbhwQLztahe
         xzls5RKpvgRW7MvBiL90sz7f5/JNB7F5YapvMDAeiWdmROY5YvTtQDim/yYKTEnZZ9p2
         jyzM5wyiuM0qtCP36WIZ3RBBjPsb2uq9vd1KdhqZSedZGLKzmz77GDQ5k1WsooLF2BQL
         UU1ZhGE6SIqor+kpD74UsRXVHYaD3tEh5iQXcHoVU8cCXdSrIYdQMQ40ApQRZzKTQBcE
         HN8/TmWz1AEGDY9/Pm8ZfeTsZVi7JlwCuNv4mLROzyjP7W3GnGNSTFepiivL9BgbN66w
         jQrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=EtJpRJCeL9y32husw+Far2tbk2XTQg6H4zJs3WoUAhA=;
        b=k0whAKsOaOIc6GQRndzJHodmt47q/t1eWvqxLZFsBGWUelYlxjO88aOysqWDyH0oyB
         kPsZo4zTiSKzoIciz6ZwmyeemmhvHOADgBHpWPbi18LDmlGGFYjl4495oFO4b5Y3Ven3
         ZiQIBfbIqbrNn2cEjtPH/FqQNC3Rg31pPW13iT3xdQNL4k2ePj6EVjzgPlP9q/x/NdCb
         +P2prg6F/IH+nHWazpIbe0kSNmtJDk7Ox6swyjE9DNR78lFaBp+jSc3i4Po/brwLxii+
         pVPZSitpBoUCTCqVkgdMDCmKFaqoR/kBjZRTY4xg+EhsedEM/miRAx1d65vaDVLyBF0j
         KagQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU4VybiyAlgv1PrGXAptqZWpS8VOTb7bMklYV/1PHG0+IkVz+wX
	pDlu5pKeIzhTWwNPuYfRjsc=
X-Google-Smtp-Source: APXvYqyzl9yBOlS8SAY/B9SOJZzZnQdmzZMuT2Ak0VPfGCpaGBUI94oPIqTelFp+MWCXzKruO2Tr1g==
X-Received: by 2002:a5b:48f:: with SMTP id n15mr5633813ybp.500.1565939610745;
        Fri, 16 Aug 2019 00:13:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6902:52a:: with SMTP id y10ls1201286ybs.0.gmail; Fri, 16
 Aug 2019 00:13:30 -0700 (PDT)
X-Received: by 2002:a25:b74b:: with SMTP id e11mr6426287ybm.252.1565939610517;
        Fri, 16 Aug 2019 00:13:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565939610; cv=none;
        d=google.com; s=arc-20160816;
        b=pwkz87uA2242RBrymjUd2taEMsT/HP2Wc+TT+IjuUl44dJbAq4Rk8tPJUzIwDMuCrm
         mOGcZXaJPaePotggPszpo8E9q6Y1i480VkP/hhv+oY885WJk0dWI1ke9Xg4C+Sq9xx5D
         eS66n0AW1HwieKDADD5spVDsJSph9tovFHUuvXVumL5F6uDwx33jgRqDLQea+rO/tqis
         6YpejdV/vY70ptO76Ad9ruRFg8MmHyRnXogDQb6+i9iJO5kHmNqaLMYr7mBWvSz3Mukv
         gWN4SIpuMQRiP4KcPZCI0z22t1Ish1b04yMywPfSAFt347o/t5EzqmGLnlAAc/LCOwjo
         q0QQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=/5LVDOHlFB0HqRRNmDqEf1JTljJZIehlxgFHqV6urGA=;
        b=grzOd9Q//LifrYGIQFpBawKz7xd/crfK5ufpp87k0F2HWFiOMb9PcaQTiJc37mOOXn
         UQC+SZcT9fLwwxkG80p5TAkJhhEGvTzZPNWqBK4Hxa1tMeYlYw5mVI80TxuTIjsdWgUT
         WzlQ9sIwrTJDT9/UoIwJwedMjXgap2KlBTee2zrxXP7B1jjHVl2Yh96IWVzkP5N+SjR8
         0Gx3Qxrkd1mDRpzooBK8fTpaRUPNruS8aqNt0SyFtCQ4s+h8FPHJmKsgMb/NEU+XN+/k
         5hzHSDT2mh0u3Ra+wNY0l2uwaV3HRd3qzrqR8/cAgzL0UlCkc0dB3sAvwBT61V3nNRND
         w0vg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id f190si352449ywh.2.2019.08.16.00.13.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Aug 2019 00:13:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Aug 2019 00:13:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,391,1559545200"; 
   d="scan'208";a="376632246"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.6]) ([10.239.13.6])
  by fmsmga005.fm.intel.com with ESMTP; 16 Aug 2019 00:13:24 -0700
Subject: Re: [kbusch-linux:lru-promote 24/25] include/linux/mmzone.h:282:61:
 warning: use of logical '||' with constant operand
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
 Keith Busch <kbusch@kernel.org>, kbuild@01.org,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 kbuild test robot <lkp@intel.com>, Keith Busch <keith.busch@intel.com>
References: <201908151055.OL6W1ZPG%lkp@intel.com>
 <20190815201444.GA119104@archlinux-threadripper>
 <20190815201726.GA5813@localhost.localdomain>
 <CAKwvOd=Wgr_HhJACpO_x93owqXKCUp2Ydcd7CjF=9V-1b2+4tw@mail.gmail.com>
From: Rong Chen <rong.a.chen@intel.com>
Message-ID: <a2ef668b-aac2-cdb3-d747-bb1331cd7568@intel.com>
Date: Fri, 16 Aug 2019 15:13:27 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAKwvOd=Wgr_HhJACpO_x93owqXKCUp2Ydcd7CjF=9V-1b2+4tw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 134.134.136.126 as
 permitted sender) smtp.mailfrom=rong.a.chen@intel.com;       dmarc=pass
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



On 8/16/19 6:10 AM, Nick Desaulniers wrote:
> On Thu, Aug 15, 2019 at 1:19 PM Keith Busch <keith.busch@intel.com> wrote:
>> BTW, this is a pretty experimental branch. Is there a way to mark a
>> branch as such to have 0-day skip it? I occasionaly do some pretty quick
>> 'n dirty hacks for these PoC features and I only push them for easier
>> collaboration, and 0-day can end up making a bit of noise for things
>> that are not quite upstream ready.
> + Rong

Hi Keith,

We can blacklist branches with patterns, could you tell us what kind of 
branch name we need to skip?

Best Regards,
Rong Chen

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a2ef668b-aac2-cdb3-d747-bb1331cd7568%40intel.com.
