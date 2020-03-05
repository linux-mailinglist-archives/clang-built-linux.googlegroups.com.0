Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHU4QXZQKGQEOHVHAHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe40.google.com (mail-vs1-xe40.google.com [IPv6:2607:f8b0:4864:20::e40])
	by mail.lfdr.de (Postfix) with ESMTPS id BB81417AEC1
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Mar 2020 20:08:15 +0100 (CET)
Received: by mail-vs1-xe40.google.com with SMTP id r13sf429704vsq.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Mar 2020 11:08:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583435294; cv=pass;
        d=google.com; s=arc-20160816;
        b=M8tYMo+Pe0TeWCxS83kE0Y5gvuGsr7mxMI7qgc72u+mgugmjeIvXowjt7f049kvt/a
         PbhjXMRfPVkypMSLJWs9qBB1Esx7hcYJUEf+5SP2qNJzc9QSZ7D/8iccyMBmyyaZxR0n
         3JROpIpkZCjWcoPv/F67zVzMBa5YKoQbzY7tY4jPVfQa0R7IH+v0cEDeBNifV7d7h2I8
         7kBBAxUrb7i7ie8HMiDlDsfR9KjxwEI28Nkm3ePx27v+JXYyFwYKiWxLd7xgN3XOEjN6
         CrIPrkGDPpedqQBo0zxYVq1+x6wuaeBshVdP61c2hvdsy+qXoVvRTm9RfRa/tDPd4hdF
         Z6vQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=HgoQjCzXuGB6JiOHQoLflNMi+/JEs2o/rF4hR7ZXA6M=;
        b=tvlRZWJp84TEOWe6/Gp3zeGODSWNovfn5jCMayKXq9LX7OQIO/69OjIE0HGu0RD8lc
         +NMDQJ/kLD7wLnsMGbTfeC8DxRtYse7XK4pikDbZwTzVexgnZpKPr9osgaB/daVB64Of
         g31Z0TNGlWjepMjOLrDFG9sjiH+ot++EOkiAPxk3Kx/RJ/2+pSFROQVXRGjK5jEva6X9
         e70WUhpIHQm/cProTaKXb0ig4+qgoqMCTDgnENAj3Jh/h1aC6vBVieMom2+3xr9Mybg+
         72IV38Pulqvetb6e/HiQtuM27U699yKXK5sIlo80U/C6lnndBwWycNNhSRJh/Vom8CCu
         iNMQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YV7xV8M3;
       spf=pass (google.com: domain of 3hu5hxgwkadghxymuofhcylmaiiafy.wig@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3HU5hXgwKADghXYmUofhcYlmaiiafY.Wig@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HgoQjCzXuGB6JiOHQoLflNMi+/JEs2o/rF4hR7ZXA6M=;
        b=Nud43IXfLYLNOqsGuOCdlzTy7EHJnD7uqWjB1jJdhqhevGjRfFhvtBBCFBZCvVOXOh
         t1NTCJIitXfwLXnTWKQOlpRIzStiLqQfg5FaB5ZkYV8ULIyex4dQa2fV7C1FMJCc3wi3
         jSYfEYwobKdqiMvGVaCcVqqmMvN36i2Grnsaiufyj0u4e/04t5KuC+nR+mBtCi+Fo49N
         curWIesQScFevLqt+EDN5ECi81Ci5TDrqIoYnXma1KkYxECnd9+rfhvhJ4sC763mTKL2
         YeOXmP6qRlrSVKuZOiamratVUeqkBcxTaLS8KNEYws4l6kY794LpIJ7Op1YxG3gwEItm
         wBmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HgoQjCzXuGB6JiOHQoLflNMi+/JEs2o/rF4hR7ZXA6M=;
        b=ncOdSY5o5M3yFQS3Ja6eX6yYYKp53RZRunHFwZ8sStXGfR3gAC4gQLXf+mP+OYgC8L
         kRrQ9L8ANMiEtYRQm981GwM/y3ArAl1w4EDenQYLUKI0ym/3ShIlvI68RAd0JIYkk3J/
         Fx1bRPmrj4vRN5TGCWSIYzPeoudWF9CiFDlfe6+s9E2LytjU9G7KnIkCgRTIyCKkvvCP
         TX7MAOb+EOJUDycWiTkikfNePEtxAdvMtQiFbN4o0SMXMPoBv66gsRfufMXT57Vy3s5/
         xG9FNE9wwPL2NydaPJuvku8AHCrqPvFNBXiBgxLNxXdyhEFM8YFgJUhXLoT1RZCVd9is
         IFwg==
X-Gm-Message-State: ANhLgQ0l8raSyRsGmDorWXUm8Yw/KxxjoedWneziKc2kb1ba5PuRCt0o
	TpUbtukU8xOVYI64tRo+fe0=
X-Google-Smtp-Source: ADFU+vvqE62LizZDg96DhkeFcomoC928zxiOtIN2LXsu3yGjQfhZ9DGuw0p0J2Qx1qjIqN8lDcqITQ==
X-Received: by 2002:a9f:2f07:: with SMTP id x7mr13856uaj.137.1583435294818;
        Thu, 05 Mar 2020 11:08:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:7112:: with SMTP id x18ls114768uan.5.gmail; Thu, 05 Mar
 2020 11:08:14 -0800 (PST)
X-Received: by 2002:ab0:2e8c:: with SMTP id f12mr65281uaa.78.1583435294395;
        Thu, 05 Mar 2020 11:08:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583435294; cv=none;
        d=google.com; s=arc-20160816;
        b=NxqcyyIfW2cZchVTA8wSxw2rJmWW0WmRruIfaWDVXvegadFArqO21Um4/T9WnjE9n+
         B8XZwAzgm6of9nsvW/b3/l+ONo3azDdvCEe8k7UyOuG5DPS/hAf9PhT0B3NgvqgWfb7F
         Bw0ruO6mmrNUyWYzgBGstBTOi/85VsLoIv4oSAnMvwwJlFrPPe4qZSK5KgRVLJPcAyKJ
         n61JXzVR5FVJxlhaKo5++99aY3yKfdhoEoFQBPKixE/rq2mUGV7wVCNZOv2hnYP4V7TG
         Dpp05V9DFkD3nUuzA2dk8GtxlwLiK4sdH0nvuWsQMq1qaiRSMLdlou3PzzRbEtdMRDVG
         FVuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=vV8z0GsZZu3m0kH6uF6vvQ4/IvRFkRrMZtfhsx0k6TI=;
        b=uZTQ+QjOn7MJ9qOCMv/WjrgqZRTJYRZiB43x5PgkCi5UK/UgZk2+YNq6H3Bx9fm/fM
         +lbflaE3u5/R2jG7Wdf0Rw1BtzrgA0vVMCihdQJmA8G8IGilDoreom2rz92+19b1m77O
         R2e8nQmCYWzwNQh7eFdoa4hlB1GkC+MSfuxJJT8cS2fCos1/74DIUYc2awwWVAYUUD/w
         jcx6g20kWhHZhjLB2ZYt8BIYKy2MhhS6gCUk2BCRi3Ui5sUMOLa/bh9VPp7D2aXq/b6V
         TPTajTiT1Xq+qixVNAzfIVUg+Q/IsAxcQt7q9QbHfXiIYbXXW2Eo5QKrBr7wRnKe5LvT
         Bw5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YV7xV8M3;
       spf=pass (google.com: domain of 3hu5hxgwkadghxymuofhcylmaiiafy.wig@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3HU5hXgwKADghXYmUofhcYlmaiiafY.Wig@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com. [2607:f8b0:4864:20::64a])
        by gmr-mx.google.com with ESMTPS id s74si432660vkb.5.2020.03.05.11.08.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Mar 2020 11:08:14 -0800 (PST)
Received-SPF: pass (google.com: domain of 3hu5hxgwkadghxymuofhcylmaiiafy.wig@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) client-ip=2607:f8b0:4864:20::64a;
Received: by mail-pl1-x64a.google.com with SMTP id t12so3452720plo.4
        for <clang-built-linux@googlegroups.com>; Thu, 05 Mar 2020 11:08:14 -0800 (PST)
X-Received: by 2002:a65:4bc5:: with SMTP id p5mr8786317pgr.409.1583435293361;
 Thu, 05 Mar 2020 11:08:13 -0800 (PST)
Date: Thu,  5 Mar 2020 11:08:11 -0800
In-Reply-To: <d5d0609ac6a81f940d91bf93a11506b0af0ce631.camel@intel.com>
Message-Id: <20200305190811.3009-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <d5d0609ac6a81f940d91bf93a11506b0af0ce631.camel@intel.com>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/tgl: Move and restrict Wa_1408615072
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: jose.souza@intel.com
Cc: intel-gfx@lists.freedesktop.org, matthew.d.roper@intel.com, 
	clang-built-linux@googlegroups.com, bot@kernelci.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=YV7xV8M3;       spf=pass
 (google.com: domain of 3hu5hxgwkadghxymuofhcylmaiiafy.wig@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3HU5hXgwKADghXYmUofhcYlmaiiafY.Wig@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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

Hello Jose,
So this is triggering a very subtle bug in 2 separate CI systems:
- KernelCI: https://storage.kernelci.org/next/master/next-20200305/x86_64/x86_64_defconfig/clang-9/build.log
- our CI: https://travis-ci.com/ClangBuiltLinux/continuous-integration/jobs/293826383

commit 50148a2 ("drm/i915/tgl: Move and restrict Wa_1408615072")

for Clang builds.  It seems that Clang is inlining `wa_masked_en` into
`rcs_engine_wa_init`, which has implications for `__builtin_constant_p`
evaluation.

The relevant call chain looks like:

rcs_engine_wa_init (drivers/gpu/drm/i915/gt/intel_workarounds.c) ->
  wa_masked_en (drivers/gpu/drm/i915/gt/intel_workarounds.c) ->
    _MASKED_BIT_ENABLE (drivers/gpu/drm/i915/i915_reg.h) ->
      _MASKED_FIELD (drivers/gpu/drm/i915/i915_reg.h)

So it looks like there's build time validation that the masks and values have
their bottom 2 bytes unset (mask & 0xffff0000, little endian).  (There doesn't
seem to be equivalent runtime checks that the masks & values obey this
invariant when they're not "integer constant expressions").

This will break should GCC ever decide to inline `wa_masked_en` into
`rcs_engine_wa_init`.

VSUNIT_CLKGATE_DIS_TGL is defined as `REG_BIT(19)` which evaluates to
0x00080000, which would fail the check against
0xffff0000.

Can you please validate that VSUNIT_CLKGATE_DIS_TGL has the correct value, or
if the invariant that the bottom two bytes of values passed to
`_MASKED_BIT_ENABLE` must be set?

I would expect one of those two to be incorrect.

Link: https://github.com/ClangBuiltLinux/linux/issues/918

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200305190811.3009-1-ndesaulniers%40google.com.
