Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXFAU3ZQKGQELWUA7CA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B021826A1
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Mar 2020 02:29:01 +0100 (CET)
Received: by mail-vs1-xe3a.google.com with SMTP id 62sf467293vsk.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Mar 2020 18:29:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583976540; cv=pass;
        d=google.com; s=arc-20160816;
        b=nJSmtTh93dieG1k74P8XciLrGLjM27eyBf2VLBK+/o7D11ZOTkCMFUXLTqvjas0DRS
         Snr7KuFm1ZE5YvupCWycetq6SdQKRE9DKflwoF6EDUm6kUzxunAsswNgtN+BckwhEZNl
         Mli4/+Aak9+nEFMdHz2BNm1c9doL0whnijuRqxu6mOBVbstOw47j7pi9ljq+CyZ84EPe
         4OzHN/p690mLWLwF9e3xEy5YheCU3iFJOTRDDrMklu40lwZ4TSZbwxaW+Gnq6hIJOfka
         FADU+GPMP8f4nIVnOkV0woWhjHfF5CHHSy1J1JpzSBQ1vxgftNhkamwyq0D/LgzrFEQE
         fQJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=9m9xD0BLRSD6m2vg/OpnJthx7OZE7JD1mQoaBEcfSi8=;
        b=Mbnl4R2H01zQaXqOIykMvRuadPm/QX5nKI/dR70gizkob+GelgMS5ieQ+Y3TOxTAID
         pa2OMwmdaywxkdiih6iNKa6rimZ75ZlWgEfuYC2rqkqm90suujnoId10obtP7Hfe9AsZ
         jmt320scKSijkK63dKFB58cEHqcl6qcz+WpiYw/kZmypW7raKfnNy4Rim5Wx4eSCp1Ns
         T/jgTyIn1EIpBaKtj4dTCCJcppfXi9Ll1C7c8VfQyh//pMf4NQKWxQi/u2escbcMydzJ
         CtQXDq48RmuoiHrzeksqNopu8O3JuCtWmHKg4CWNPsiS0rT43RJ3/eRy1C5wRfBkhPc/
         wpLg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YdX5ro0j;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9m9xD0BLRSD6m2vg/OpnJthx7OZE7JD1mQoaBEcfSi8=;
        b=iDPkX0+QzQHG/BHnQoZCUN9GGmHq/XiIroWorAN0X3ILAwDNQnYO9VuUHQ5jcpgJLU
         BTSkLLDWnkAh9UcQC9pQlOmAze16AJa8YUYOBnTItuxTaNxnVhK/DwQdQM+8xiEuEjb4
         LvC8DaKqIXmoIHEuORq1TElSsI7QRgxdhW8a0PoAdSPwuXJSRucrCRsezEhz0j835ypG
         jYf/rplBMvzcTgRHvc/nmabb/02BsJfGNhDnvRorS5wGeIeTwBrWYI2BJJdjhrJK8JhU
         OMsb0SUBRynkawkDHMlmnUP58CEwyahDvF8bENeU+3HF2sLUuNYO8LlHPUKaVXO4V9/R
         K+zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9m9xD0BLRSD6m2vg/OpnJthx7OZE7JD1mQoaBEcfSi8=;
        b=nTPPMxIefFalKSh/Ng/ZTyNMy2/PJQicFa+3NEThl99cOsm2vbeI64/y6slHNWU6eE
         gOPSQmp2K/sMIqrP8JhxonQVYWkMtFW2OcRQUT1zfH148IYQgStq3E61slKXzqL9vrnV
         cj7+G1tc9F0Q4FClgN4Wh4/UGuJUTbNQBJa1SRkarUU4tI2zt08b3vkqP8CjAFxF8++z
         DQ16eXmin9lGEE1CBwfEfTjvUlpk+ZQBQY0ht+tJab/DnuzlafKQS5aPVqmsEgkTKRPe
         4Jh2L5N++Q4nIEqWIYcE3cq7KHMwZ00VVcjsr707wDx4wl0pQIQ002TWWnN7YfStLr2E
         wEWw==
X-Gm-Message-State: ANhLgQ3dyH0Ud0Ul+oCS8sHkGc+ysNbgfyDfeIof+oy24zjWa5UDACDi
	Xan2TDzubHDgq4QAhXJlX6M=
X-Google-Smtp-Source: ADFU+vsYCd8+SnweFVpcjZW9cixkus8UeDKzHSnYoHmy1tf6+fxkZWEYPB66gyLWEaJI9JsQaa+y+A==
X-Received: by 2002:ab0:2a1a:: with SMTP id o26mr3482091uar.62.1583976540614;
        Wed, 11 Mar 2020 18:29:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c01d:: with SMTP id v29ls518432vsi.6.gmail; Wed, 11 Mar
 2020 18:29:00 -0700 (PDT)
X-Received: by 2002:a67:ecd5:: with SMTP id i21mr3953552vsp.166.1583976540151;
        Wed, 11 Mar 2020 18:29:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583976540; cv=none;
        d=google.com; s=arc-20160816;
        b=KbKrVdeeADpYs59ml5TL/KqPaXTsBNSn3a6JaVmHlP+4CxSJ/PZvMJjaKzsz2tsjIX
         IcYzpkZR+rqmFe8ADmsWNUbzDUFSkuduINJh0ONQK7ZgbzYxMnAm57fVUJrdQom7PK4m
         GRAA0Du+XMCwL+H/8BM3S8lF7Rlt8UBve+eu09tWnGCrjxKK+jmigLPN6uquRU0tPnV/
         MFAO3QaYW43buY1XPNWHCIL+wYNdhKpZuNWlwM4Xa+fAoANAi16WTnyGIdIE0zJL3FBe
         Mtto3HkNgZj/RJe5ltnG+6WyzEO4iWb/dPD6mlt+SzHMee8gKJ6DuMgbwHrdQveLJ3u5
         Fnag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=L2vMRWySM71KYMc/Pnx9PYK0kmjBb8nWIiwBPPZ9xRM=;
        b=zc7a65zuStQXzOpvnPfMnWZS6zHvRxuZH73av927MYJ3Fa0cYxlhg8DnHnXc0SR1qD
         FxbFrAwwEipTsPP2AOfpx27rJFSWyyXwuuZPqQT+8aBwL1Ua7rRkIlw+Avwi+Zv+pTcR
         F/bodntLzwpKuVOfaKlue4iEGHbao6FWDrZImreipebbBi5NxvFF7GISj4Kfy6Ackr4/
         LOWNoQKj/fx1OLokysxlEgLyj7pOTaeY4L1tNhpX2HUDAkk3v8NcurfPoc5MIbxSzJCz
         oLconE1ZxhVPJS+Jse18+Qbw18xxX6gAuXqYw1DusgT/nJ1+DgCtKIUc09l/bK/UwJwA
         /0DQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YdX5ro0j;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com. [2607:f8b0:4864:20::535])
        by gmr-mx.google.com with ESMTPS id w69si200563vkh.4.2020.03.11.18.29.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2020 18:29:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::535 as permitted sender) client-ip=2607:f8b0:4864:20::535;
Received: by mail-pg1-x535.google.com with SMTP id m5so2187489pgg.0
        for <clang-built-linux@googlegroups.com>; Wed, 11 Mar 2020 18:29:00 -0700 (PDT)
X-Received: by 2002:aa7:87ca:: with SMTP id i10mr5553929pfo.169.1583976538769;
 Wed, 11 Mar 2020 18:28:58 -0700 (PDT)
MIME-Version: 1.0
References: <202003120026.Dan8Lnio%lkp@intel.com>
In-Reply-To: <202003120026.Dan8Lnio%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 11 Mar 2020 18:28:46 -0700
Message-ID: <CAKwvOd=MB54aDeF3yQ18Zu=Vd0BH2Be08VjBvRpTD88swes7KA@mail.gmail.com>
Subject: Re: [linux-next:master 5552/7467] intel_workarounds.c:undefined
 reference to `__compiletime_assert_184'
To: Matt Roper <matthew.d.roper@intel.com>
Cc: =?UTF-8?Q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>, 
	kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=YdX5ro0j;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::535
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

Matt, did your patch ever get merged?  Can you please "chase it in?"

On Wed, Mar 11, 2020 at 6:05 PM kbuild test robot <lkp@intel.com> wrote:
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   134546626849cd6852d6d4bf8f207b5fbc54261b
> commit: 50148a25f841dc1e2cffe1669d4782dfa75d85d6 [5552/7467] drm/i915/tgl: Move and restrict Wa_1408615072
> config: x86_64-defconfig (attached as .config)
> compiler: clang version 11.0.0 (git://gitmirror/llvm_project 6309334b9574017523f73648da879fa5e6ef017a)
> reproduce:
>         # FIXME the reproduce steps for clang is not ready yet
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> Note: the linux-next/master HEAD 134546626849cd6852d6d4bf8f207b5fbc54261b builds fine.
>       It may have been fixed somewhere.
>
> All errors (new ones prefixed by >>):
>
>    ld: drivers/gpu/drm/i915/gt/intel_workarounds.o: in function `intel_engine_init_workarounds':
> >> intel_workarounds.c:(.text+0x1a1f): undefined reference to `__compiletime_assert_184'
> >> ld: intel_workarounds.c:(.text+0x1a24): undefined reference to `__compiletime_assert_184'
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202003120026.Dan8Lnio%25lkp%40intel.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DMB54aDeF3yQ18Zu%3DVd0BH2Be08VjBvRpTD88swes7KA%40mail.gmail.com.
