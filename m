Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBBVVY7WQKGQEFIFOG7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FBC8E3957
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 19:08:24 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id r19sf19528167pfh.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 10:08:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571936902; cv=pass;
        d=google.com; s=arc-20160816;
        b=JGypmgVEmrRByLlYlDE8Mjto4ZkCV5F+Y0VF9ozcjqgZkhR+ksouYmWlBNDGLqIQ2I
         /bocoZcxP1s0kbegWdL7ayksg1wn0L+Ricq6pMflR4RGf9pMxxa0wt9PC47lc/kbVLKJ
         Q1hlirCRTPY8+LwYUN9CzmAERPzh2BFBgqm/qkWjX47wwXSR3jWqqXLOOWC0POLrptlW
         sZNAkfVWoTujSouvdZL7o+U0nXyl0sDpXBwdSQxYBGZj6Bx0cfKYz/ObdrqqqFQM+pKm
         aIHyyFx+WGQL+8iumiTBPsp580zRdh3VFbejK1pAFCHx39gB+69BHE1j3AkMsfImu3oH
         MRig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=by+wSKhYI/v77ckEz1RE30Y9i+wvNYsIMnNMERS9FsU=;
        b=P6AmgkCcKwL8BTKeKL/3emEfq5M4tAytBFNEJAICHx3k6LmDbdMY/O0fqm6pJ+Xwqx
         djVCZWEMYv39UuR+h6rnoNxrl9eJ6KdxDwXvsSVWsdP+VEUGPecwAK0pOf7zBGBE0GHJ
         FmPq+aVbSdDx6ptw5/4SrPkoTZDio4GeFCs1YgikY5ii4AQi08D9DqTtjZEV6Zsq1Ok4
         0M2w8N9xMAHrtHbM215YK4unNm6CM4rVvM8VsXCuLG4kLSYbUl4lpkpBNvUMbEGAu4cQ
         Agk/nBNl/D1p5He8qoW5Iuc5Fosb64vye50c3KmOzlJ/XytxOekam9eaNaxFFLe3fyn/
         Q0Mg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Wli3MZlt;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=by+wSKhYI/v77ckEz1RE30Y9i+wvNYsIMnNMERS9FsU=;
        b=FdwQ+i3TDHr8Y+filx1bLUUQCBB11TL/j2dPljPdhSsS7KdEKO93fJPAzuIXOapFaX
         UCTMoKxNyBo6wlZxaLVsrQ1WUJUKmwp31MStCAiXZnr9/sXzEes+g6d+THonfWpXo9nK
         nzKr8mP8F1dRWbPk8vexhrIjBfxnp4mdEn6zVFGIGt5LfDHU1TxmfaIoCqQdR5MqEZcT
         rGObWzqBYO7uyuYXnhAyhV+o24yPSxO1zZ0b0E/nmBCFivepPMHKxfqx3UBYQ6lA1xH6
         nwmdL+6E37bfnNSNaIfUIf9a8dQdVn/MVCL5pa/Xs4twQAGporE+6rk5uV3+pfFkwCJQ
         DuHA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=by+wSKhYI/v77ckEz1RE30Y9i+wvNYsIMnNMERS9FsU=;
        b=JsUH9PaJrGcg/YzXezkMBCKtbmxCBM8vtOWsxnvJdPJDXo1R51YCZYErp1v2lGadyF
         Lt+cejtdw2q1N9b56n3i82rsBX5dAMkOWM3XrQMUvjLBssfa9jXGIA5iFkSGgJETARxz
         g4pYwJIGLpAFvmuSucCFbPPlamqaHC66N+B/OeF2Tz5XSgcAKdk4B0X8dIiszkjSteG+
         yRH0YRdPz0QRkZ3ZYJ4BSoiJvpOukPQkLQ/QvbLXAc1Fe33eKKWOshII8KmveD96AnVn
         J0gpwg6Ra9lq4MvOgFbFM+eTI4+fIJNJutHB3Vhsr9rM01MApsS//esWCQmySML5ypK6
         MJ/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=by+wSKhYI/v77ckEz1RE30Y9i+wvNYsIMnNMERS9FsU=;
        b=tYdySdS9hzQk1ApM0qlZn5OrkBAs/NKhju6aE4F1OaT3RqkRy8Y9WOtfI+/fDJQ7XQ
         Z3YiyB01T5rcERHjQrsfJ+i9Wk/Qi6HTHJF2MfdNNF/5EtPE7EUqjHRTt7s+SPlZ8f+I
         eDMB5HJsvO49I8ZGn8K5n0dOygysKgwVhpjel81IO8ixabJfa6NEKQKFofTcPbZZdSPu
         JflFi8mshA8CDRntPW+JvP6uVA0UlKxSNPPkibBPZR4EhMdRKN+igtuvg72s7vANLIl6
         hO4mioxNFA1rk4+o3n5YdKaW7gjZuElQsywMqWiZHPes4Zl1zNfqcgM/lLsvbUj7S+pP
         D5sg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU38NNOJp1J6fTWOiauI4FH0m4NkSE0m0yM41SLsx2lu/gZg34y
	RV4KxdUflWdhRpbvrP2QCM8=
X-Google-Smtp-Source: APXvYqzFE3AqKSlciRLexRlxucboRF7mVfQk4M4BLHS+sY9WXhyNm5GS/vwQrDnzVnw/OLLMvnHGxw==
X-Received: by 2002:a17:902:6943:: with SMTP id k3mr17343494plt.158.1571936902558;
        Thu, 24 Oct 2019 10:08:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:345:: with SMTP id fh5ls2229805pjb.0.gmail; Thu, 24
 Oct 2019 10:08:22 -0700 (PDT)
X-Received: by 2002:a17:902:aa86:: with SMTP id d6mr17435554plr.268.1571936902076;
        Thu, 24 Oct 2019 10:08:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571936902; cv=none;
        d=google.com; s=arc-20160816;
        b=C77p3I1Qu1e6sZFonui/j4C7dQp8+PgJz9gKMdCIWbBQd6ZNHemhbHdboBub1Gr2rc
         9VOVCKZTGUGACDzVscemn8IKo45mTd8+izBBwrPvtQ8V0SyUa7NAbJ3dJNII+L1Dxsi0
         UP02gjNuI9DQ/nJVjQ//cto3LfkY+TwRJSSaztspSUE/L1YJIX40J8xLPKVZPeHH0SR7
         EoYcAGdCG/Yy6+jetOPMj6ygXJVTNXHUmpIdS+jbtMsOQOJR7NALh/+YJioek4kxLAmV
         GHJxgIkf5aHB+c3Il9FKjgtc/GwJ1J3a0Ac8E5JWAkSVjSo1EosJm1oBP1R3WgdoJxTC
         7HoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ySPqWF/b+qV1qQPvYGrtrPPGTIi+Mry4npeJgPDNYQQ=;
        b=V1bm8XMo9oTohgcbeio9IQVl/xkEZWydO0LJZjq+Ikd317j+xTfsHOW4TiRVVANSRM
         d5lR6XEQ2nM+tQmxGwudVsPlFGoKtcUIN7y1EXtJwjjPomfaywSlgJziuTd3WV9WKalX
         LkExkVydPD5VfL73XdjgQ0dXuheVZ0+VJsfZd42M8rO1hN5vq5QBxZEUinLC/RnvOOC/
         q+ByLVDZZEFLUCjdDkcHtC8n71kWYxVdaT0VRAJIyIh4Y032kdTdEdeBjAbT8V5snQIW
         TW5UNI4S81l/CiKi4NGJcBj2784LDgGPCbbls6xdcBekXfhRHUlzh0d3SdhQTL8ASyxa
         2J7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Wli3MZlt;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id t17si1173560pgk.0.2019.10.24.10.08.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 10:08:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id b16so10526713otk.9
        for <clang-built-linux@googlegroups.com>; Thu, 24 Oct 2019 10:08:22 -0700 (PDT)
X-Received: by 2002:a9d:6c85:: with SMTP id c5mr9709676otr.257.1571936901036;
        Thu, 24 Oct 2019 10:08:21 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id o5sm2045120otl.73.2019.10.24.10.08.20
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 24 Oct 2019 10:08:20 -0700 (PDT)
Date: Thu, 24 Oct 2019 10:08:19 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Cc: kbuild@lists.01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kbuild test robot <lkp@intel.com>
Subject: Re: [drm-drm-intel:drm-intel-next-queued 5/6]
 drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c:159:13: warning: use of
 logical '&&' with constant operand
Message-ID: <20191024170819.GA40118@ubuntu-m2-xlarge-x86>
References: <201910241556.zhmi2E5w%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201910241556.zhmi2E5w%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Wli3MZlt;       spf=pass
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

Hi Chris,

The 0day team has been doing clang builds for us and sending the results
to our mailing list; this one popped up. Mind taking a look at it?

On Thu, Oct 24, 2019 at 03:54:59PM +0800, kbuild test robot wrote:
> CC: kbuild-all@lists.01.org
> TO: Chris Wilson <chris@chris-wilson.co.uk>
> CC: Jon Bloomfield <jon.bloomfield@intel.com>
> CC: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> tree:   git://anongit.freedesktop.org/drm/drm-intel drm-intel-next-queued
> head:   8eb8e322ec07392e8c8008437216c38c310ff6c7
> commit: 058179e72e0956a2dfe4927db6cbe5fbfb2406aa [5/6] drm/i915/gt: Replace hangcheck by heartbeats
> config: x86_64-rhel-7.6 (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project bf869683c3f26827853e3c34d3c4a337069928fe)
> reproduce:
>         git checkout 058179e72e0956a2dfe4927db6cbe5fbfb2406aa
>         # save the attached .config to linux build tree
>         make ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c:159:13: warning: use of logical '&&' with constant operand [-Wconstant-logical-operand]
>            if (!delay && CONFIG_DRM_I915_PREEMPT_TIMEOUT) {
>                       ^  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c:159:13: note: use '&' for a bitwise operation
>            if (!delay && CONFIG_DRM_I915_PREEMPT_TIMEOUT) {
>                       ^~
>                       &
>    drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c:159:13: note: remove constant to silence this warning
>            if (!delay && CONFIG_DRM_I915_PREEMPT_TIMEOUT) {
>                      ~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    1 warning generated.
> 
> vim +159 drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
> 
>    152	
>    153	int intel_engine_set_heartbeat(struct intel_engine_cs *engine,
>    154				       unsigned long delay)
>    155	{
>    156		int err;
>    157	
>    158		/* Send one last pulse before to cleanup persistent hogs */
>  > 159		if (!delay && CONFIG_DRM_I915_PREEMPT_TIMEOUT) {

Might I suggest either explicitly stating '!= 0' or casting to a
boolean? You could also swap the CONFIG and the !delay to silence it but
that is fragile since Clang should probably emit the same warning in
that case (see https://bugs.llvm.org/show_bug.cgi?id=38571).

>    160			err = intel_engine_pulse(engine);
>    161			if (err)
>    162				return err;
>    163		}
>    164	
>    165		WRITE_ONCE(engine->props.heartbeat_interval_ms, delay);
>    166	
>    167		if (intel_engine_pm_get_if_awake(engine)) {
>    168			if (delay)
>    169				intel_engine_unpark_heartbeat(engine);
>    170			else
>    171				intel_engine_park_heartbeat(engine);
>    172			intel_engine_pm_put(engine);
>    173		}
>    174	
>    175		return 0;
>    176	}
>    177	
> 
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191024170819.GA40118%40ubuntu-m2-xlarge-x86.
