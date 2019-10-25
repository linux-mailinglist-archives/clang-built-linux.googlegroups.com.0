Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB6NVZHWQKGQELTEGPRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C83FE4162
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 04:16:26 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id p66sf807131yba.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 19:16:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571969785; cv=pass;
        d=google.com; s=arc-20160816;
        b=AIgvyFuLXzvGMnoLsacnNko2wexZYFH2YUjxNXaHc9tClL37yI4NU3YOjxgb8VhqPX
         MvO/q4Uls/ylOIAetDQRPiOJbKcxH0DIG8VqpvXnb/E4ynDeOXi3slEUL/IH0PrZq+5X
         rAbvGUAf3PXXePxtwQISZYuGjNmlq/kkOt1AEtQaJ+YV6gdj2/ZbdeWG8NZmSJ3pTdPP
         XSp93ZaJ75+u6s1FG3LVtsbYofHe7H+TS4IQjbs4Byl06SS9k12HSBhrr5hDd5apUAzH
         IYg/qiKWIpfmPmvtju51lP4oHsAqiANmb55lr6S45f5i2NEdWRMRFEmwsr050u/hDZ18
         WjqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=XazJINi4X5K0j9fOanrkc+8Vcsxr5musJdWrqwp5cIo=;
        b=Y12TGdgq36U/zqRJYbj7Sy0tfaen/bKvPg3g97tuGVccf0Y1lyHB7gw7W4jE47v49N
         HcgEJ4Z7DVnQszGG9LrxF1mVyVjxZuY+vD+EGRVbwj3E+4kg/3BNOzz1wST7VL9GT0no
         PQySkF6moVEqp0ZA1uruqhD1AZnHIe6HU2MvjeoMbBX9m+sk4BSDOTKkHrgCiixgtMtm
         HLnAxETHGOdPayC6CisUKKJARuUG9wyhVW79ydwjX3kVwQhE7lnlo3/AkdkeyJmyDhOm
         zHB2LA9hQZWvNSedrnu8BBGtL9cFxbk+7YKkkNmUKsP0/HMAueYNa5GRAeA7PW0xP2gp
         +9sQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QgC4cex4;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XazJINi4X5K0j9fOanrkc+8Vcsxr5musJdWrqwp5cIo=;
        b=cHSTdYTWbfNcesrS1+mBdkGg+AK9ar6/degWHD5Z/NJXjwdVx7Nr7N7sb6qqXm4lcX
         +ENibYZPN3fyT8tcXAzNBvBl6WW6EMWHcHxrJP3uYSFYzpkDEXZn6hRrstZnV2CIa9aN
         Yz0El/tTich7UyFYxdyTNZ2UeMkbKEh/oWrQubohN8itNu1j4OirFD1ThYx6j5PffKrA
         H5wf3qNIQx9V0HzDxE6nL3yGepMoDrPXtbUJp37oy/4t7RqCeR6d7zHjrWuP4qJKS5oD
         P5HUEwCBQYXb5wqAarMKhowxZerxsOr54zpMmddejJVr1b0Tsqgamw5RVXC25caknC5o
         rpDg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XazJINi4X5K0j9fOanrkc+8Vcsxr5musJdWrqwp5cIo=;
        b=H/8i5+rxAlE7+ecevXR/etyDWox49UnLHxp3S+cSb9cLa9hBkkvFFbXcXD/jv84T15
         N38mWdV8RWpS6Qf4Twt0VdMstDJT76Yj7YUERA1Nd/JhXu6di1/Ona9aO4VdrcsYX3bU
         HzUydboyxBMuu3VBOsyI7eyAj+KglkEfNU1FqsNkDGHOKGxaU9PE6obinjd/O8/UNm+T
         3na88e55n8ciliCC/2oQmX7bXnk3HuL9xDYhOJ6/eHJDQuTE8an11jIUTtszm/e44ZHS
         l2FZ8aVbRtzCxA99quV6BKetx/io8o2WfcAyPl5umP1GEv0IZ+Rp9UKwTBcDdWhM9mTw
         a1eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XazJINi4X5K0j9fOanrkc+8Vcsxr5musJdWrqwp5cIo=;
        b=dHXiqv4QWlxhXst0QrUv7whBotUHMVPXVxfz+MBtzfhbtugH8ThG/spJMIElKiDEAq
         iKSAEiNV1bvXzABByex8T1FVlQmr9VqlG5R7JFX4flLdqrv07Gc44iKhbgiYGeLWHH58
         AuEntVk1a2DI9p3xo56WfyB3MZZe3OpKQTAxAieY3hBJdWH9uNhTAuk0hhCP9yw0bZH3
         BevVWfwS7abqoyR9BRYQTqf5+XTYQzBX4K1qB19HRHPTZjyUQUnY2WDCOVKojCik+Vyv
         tch/YIFzRACXzkWfRwasaS/kHfjCU0ll6HSS0ws4k+LLZqnV1ZwhTEwshZz97MBc8wfS
         AzTw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVxY7Qpgc3ksT8s1k+LQlZzScF/D344OXARRkuLZ+e6jveSaKk1
	mZPYsypEJbEVwCe3Tn+Dy8Y=
X-Google-Smtp-Source: APXvYqyKUsOveQr+2+CCYKmeAapfbseAoZoywkbb3kUK37b0PvTAUoH0tysvF6OzCVM45RaQwy3ZEw==
X-Received: by 2002:a25:4c5:: with SMTP id 188mr1095558ybe.499.1571969785432;
        Thu, 24 Oct 2019 19:16:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:e403:: with SMTP id n3ls1214505ywe.16.gmail; Thu, 24 Oct
 2019 19:16:24 -0700 (PDT)
X-Received: by 2002:a81:7ac2:: with SMTP id v185mr448229ywc.458.1571969784908;
        Thu, 24 Oct 2019 19:16:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571969784; cv=none;
        d=google.com; s=arc-20160816;
        b=k36nHMMEjoMMxoM1VisxxnOOzP8+tusrvcwyU1Z6IXEPmhSUELzwU4gjwP2Y+WfyDU
         hrLGSZG473NVgPKPhKKMVcMk7cOiDVYmwPa2MFEhLJr3VEd0bvzKvHX3NwwXPrBnag5M
         ZJpB0T7bh6D76iSdL30nHQo4y0jqr9BguO549GZ7nVAHjEwS2BbuVzLmMC2GEbiTuXvC
         HW8pbfJeOdebn5KONlcWRvNlk3rmYhXg6a5sfYgA92yrHCZQQwNGiS03cYHmqbG5JqMC
         g3BSvmq7gycDQlh9PcGas3I+/cvvnw7bnbZWJyS83g+ZkXiRTWoXnyQL8YUV/UnJEscf
         oTDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=hqiWmmS0grI2QkxqFHmSXWvuUsdYeX8KhQexskLR6yQ=;
        b=OxWP5XMicvsyM2MjqIGv7X2wWoSGYc9X66JlbF6mHOyPgMrfAbTp95zG3cWLQ+1LpS
         yWouA2Xk4lt3L8RdCoU4chT+S/ULP7ZnsnTlFbjLUsMySyved6t774xKe3tttNIEbgEq
         5TpiWX6kcclHelXh5po4uwk/aL2QcNEkjrM7AhAyZEnpxahHqel9A23+LP7XfHrkl+mh
         ppaH7PO7d99wP61CfFaMiu41KfJWOUWcTW6MrbEEO148xPbpGnIYzDAkmLMn7jvzUnzN
         ipuomxVujx08LhH65KlGdaj6gkUjkypD34eu1tz6bynUjK5ersIPexnXWu8FwYNKaB7z
         BVMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QgC4cex4;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id t73si50416ybi.4.2019.10.24.19.16.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 19:16:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id s22so810276otr.6
        for <clang-built-linux@googlegroups.com>; Thu, 24 Oct 2019 19:16:24 -0700 (PDT)
X-Received: by 2002:a9d:6c56:: with SMTP id g22mr718105otq.89.1571969784245;
        Thu, 24 Oct 2019 19:16:24 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id s66sm291113otb.65.2019.10.24.19.16.23
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 24 Oct 2019 19:16:23 -0700 (PDT)
Date: Thu, 24 Oct 2019 19:16:22 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Cc: kbuild@lists.01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kbuild test robot <lkp@intel.com>
Subject: Re: [drm-drm-intel:drm-intel-next-queued 5/6]
 drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c:159:13: warning: use of
 logical '&&' with constant operand
Message-ID: <20191025021622.GA32347@ubuntu-m2-xlarge-x86>
References: <201910241556.zhmi2E5w%lkp@intel.com>
 <20191024170819.GA40118@ubuntu-m2-xlarge-x86>
 <157194746880.2725.6247510106796004407@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <157194746880.2725.6247510106796004407@skylake-alporthouse-com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=QgC4cex4;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Oct 24, 2019 at 09:04:28PM +0100, Chris Wilson wrote:
> Quoting Nathan Chancellor (2019-10-24 18:08:19)
> > Hi Chris,
> > 
> > The 0day team has been doing clang builds for us and sending the results
> > to our mailing list; this one popped up. Mind taking a look at it?
> > 
> > On Thu, Oct 24, 2019 at 03:54:59PM +0800, kbuild test robot wrote:
> > > CC: kbuild-all@lists.01.org
> > > TO: Chris Wilson <chris@chris-wilson.co.uk>
> > > CC: Jon Bloomfield <jon.bloomfield@intel.com>
> > > CC: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > > 
> > > tree:   git://anongit.freedesktop.org/drm/drm-intel drm-intel-next-queued
> > > head:   8eb8e322ec07392e8c8008437216c38c310ff6c7
> > > commit: 058179e72e0956a2dfe4927db6cbe5fbfb2406aa [5/6] drm/i915/gt: Replace hangcheck by heartbeats
> > > config: x86_64-rhel-7.6 (attached as .config)
> > > compiler: clang version 10.0.0 (git://gitmirror/llvm_project bf869683c3f26827853e3c34d3c4a337069928fe)
> > > reproduce:
> > >         git checkout 058179e72e0956a2dfe4927db6cbe5fbfb2406aa
> > >         # save the attached .config to linux build tree
> > >         make ARCH=x86_64 
> > > 
> > > If you fix the issue, kindly add following tag
> > > Reported-by: kbuild test robot <lkp@intel.com>
> > > 
> > > All warnings (new ones prefixed by >>):
> > > 
> > > >> drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c:159:13: warning: use of logical '&&' with constant operand [-Wconstant-logical-operand]
> > >            if (!delay && CONFIG_DRM_I915_PREEMPT_TIMEOUT) {
> > >                       ^  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > >    drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c:159:13: note: use '&' for a bitwise operation
> > >            if (!delay && CONFIG_DRM_I915_PREEMPT_TIMEOUT) {
> > >                       ^~
> > >                       &
> > >    drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c:159:13: note: remove constant to silence this warning
> > >            if (!delay && CONFIG_DRM_I915_PREEMPT_TIMEOUT) {
> > >                      ~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > >    1 warning generated.
> > > 
> > > vim +159 drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
> > > 
> > >    152        
> > >    153        int intel_engine_set_heartbeat(struct intel_engine_cs *engine,
> > >    154                                       unsigned long delay)
> > >    155        {
> > >    156                int err;
> > >    157        
> > >    158                /* Send one last pulse before to cleanup persistent hogs */
> > >  > 159                if (!delay && CONFIG_DRM_I915_PREEMPT_TIMEOUT) {
> > 
> > Might I suggest either explicitly stating '!= 0' or casting to a
> > boolean? You could also swap the CONFIG and the !delay to silence it but
> > that is fragile since Clang should probably emit the same warning in
> > that case (see https://bugs.llvm.org/show_bug.cgi?id=38571).
> 
> How well does IS_ENABLED() work with kconfig value types?
> -Chris
> 

Hi Chris,

It does not appear to work, IS_ENABLED(CONFIG_DRM_I915_PREEMPT_TIMEOUT)
becomes 0 with the default of 100. I suppose there could be something
like an IS_ZERO macro added to complement IS_ENABLED or IS_BUILTIN.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191025021622.GA32347%40ubuntu-m2-xlarge-x86.
