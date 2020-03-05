Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXM7QXZQKGQED5RHLBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id C87E417AED2
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Mar 2020 20:15:42 +0100 (CET)
Received: by mail-il1-x139.google.com with SMTP id f68sf5470888ilh.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Mar 2020 11:15:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583435741; cv=pass;
        d=google.com; s=arc-20160816;
        b=b5gejQGgfWjKz3KBLH0iUQGCPJBb2B/u9V/SRnaJBQlwZu8kK1M2B6nsJHV3bIZgrs
         qew81RqGHVkTh5bI53rcCe9OtDZH18gnNm8fmsr8X1VMAezIuphZcKM+aIKXw4ahoobm
         BqiLTmdoTWUF3QjoDg3zp+FCbWAVKqqJplvi0maFzOsWVL1MYCAn7mWfdGSNKXvk3wnw
         L02Lu+Qk9k/zprOwDhSJCM2FNRfLFhIzClr8JlhWj13rXwRshIhZG6Os2vojDWi74EDW
         /w2WSoBtnT/7DGEez/Sr6DxY+zmJe7tCu9vtbomPjV53HtLwZ4CwZEENeKQM6+fG9CPg
         oIqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=vSMynV1qSOOqRULU9sANJXK72j3dhbJZiSSS1KDVQj0=;
        b=SjbtK4Sq0Qd0GLZ1Qo4WbY/RfhgHFDNXc1a0KEpO4LXb9GMZ/9kJxCyk8/GAizY7xm
         RK8+EqOKaNGHVJpmNNVMoO+VdkkTiExGHgvPg7rZlUXPNONnfhK7z3BN4h78IKEhs263
         CdSZimspicmfI26foWG+BaKzq7jd5W7aRpYvOn1ouo6+siMDGOZvQyOEeu/xw4hiu9ml
         mJ48smYHsrP17/H1xYZAa70DTOMNIHsroD6SAmLKpgBifW3cKk8FNxJds7tSY6pesYBb
         r5DCNL6EKIE3UEmADVX5aBip/8BUEW0DSHQ0zme441htgwVlwQWymiLReKVgXO7kSvu0
         dWiw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jC3W1Q7e;
       spf=pass (google.com: domain of 33e9hxgwkapkoeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=33E9hXgwKAPkoeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vSMynV1qSOOqRULU9sANJXK72j3dhbJZiSSS1KDVQj0=;
        b=jSmGj/+BqlrVrKEV/pyFyzGdsWGjYOsslbx6tPQdovfPRn5V6R3T4VunXO2VI/yLtc
         EHOiBouz92M+UWdZbJ8rS9ZU10+FLWVdk2JjSHf/DJmIpTwjZkh0K8N5F9hBe4y8RuXT
         n03dEOxCefhWwNLtCHLFTot/Opvr4d9wbrghnrvLsctcYsNqI/LqfUqCDIjNM6yQTWmC
         u/CRu/ImVKje/jQdUBoobh/cdKElT2CZTB0aAtxf8CAunaD3TZJ76WPrGNw9EEN4riUo
         1dznWu4Yc1lQu+oPjRpG+4QhAk8GX8yVuIeeOqknZS8ydSmwPcgN4rwF+2qjoswRsR6X
         b+og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vSMynV1qSOOqRULU9sANJXK72j3dhbJZiSSS1KDVQj0=;
        b=YoE8QulRrZzfVVvkf3Dr/zxQ43baPrZM6ZfVr4xgU0IUJdPOE13+9pKFkMFMGwP8xi
         2A3NSTm35Q7RDdE3V0pVnljVikDWoL2vhVT09hfi7nV1PVBLTul4A/Fjd1X7Jjhck34c
         F2go/JIGzgRrGAgyUpD80QxIcNUg0x6rzqP/zLUiqw2E32H8lNrU1F4KYDxyR89+Xdil
         6KHSy1LUfN98HypjW/rvomp8K4gSpkHFFWEOhoIBuWzQ9k8PzXVBFTT+B80Oc4x9S4W3
         21BHzh5l52blORYzRDZnUsK05mc8crv2dgIB2s3+NxNod4N8ySxNff8stgUN+9sXeIah
         NJQg==
X-Gm-Message-State: ANhLgQ3twpRRhuGmPLP+TJtlAG3iWmIzlmhm8/dTXlQQX/h0skrf/1e5
	zC0Q/d0IFu2ejCn7OT2Dx6g=
X-Google-Smtp-Source: ADFU+vvt7OsI2FgZMRX+akCNOfuISbY/QPPq24t/RLdC9Wm62H5JuCdC34T3waY371oCl+LF00cA8w==
X-Received: by 2002:a5d:9805:: with SMTP id a5mr487728iol.80.1583435741290;
        Thu, 05 Mar 2020 11:15:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:8787:: with SMTP id f7ls755574ion.3.gmail; Thu, 05 Mar
 2020 11:15:40 -0800 (PST)
X-Received: by 2002:a6b:e70d:: with SMTP id b13mr21738ioh.91.1583435740950;
        Thu, 05 Mar 2020 11:15:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583435740; cv=none;
        d=google.com; s=arc-20160816;
        b=SSbQmTdUzf7j7n9vPl0gtisbqqJSlVV1hhbVX//DFQOPofYt+B8bh9DVrBZoFn74Ah
         3P57306uOWJy8JFiFGLq7zXJQ9cBQvl6rjzQpfxh9y9uNDDDZyXrhDUxekR0HMkRq4Uz
         zUsdOHo749kP/vvKHjY6zMOCZUt23Dyi+T9aYQgRFVe7Z8ZaO6Vai8mzahHja3KIj81O
         j/2gV9MTM9SUST3Gl/YRYEZ0avvCpXpTQhWPUkHbTe1im77HP1UYHhjvLMMXGSJyHiFO
         tbvaQR2MXzf1peMhy9xUDCHlQrI7fV5Lm9k5rP5Tm7ty9plzAxutePFf6Q64VXZIxJg0
         W4Kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=5rxqTIhyXDQUDBlmPKY/XymUnZCSNBSx6WZr21UpFlk=;
        b=U3dO4PkXC3xnPXRkmYVKuddeaH6UgclcSNm54EXw0lADQfjga3bTuICsBqfrW1VLJE
         A7UlK0SCJp+BaZmpGlr5GOeDIB2jn4W1KV0HpyX3cckvRUAR18X7kUs2XMrB1OSuwpF1
         wpFHKIEXvTJk4BH++i/0dUSY5Zse1lpQuAy/7kaGYQNnmSI3E/8Ij87TekIiVqObgNZi
         Jygyq1yUUgJ6rT+Nc1SpNABqPdxVu3ipP6Fx6HBrCwShkmmr5Nund4Tq/9WApVn4E9zO
         wY+9Qyx1bU/J0HKjpj8Geh7qTm+vIblvf9s7SrjYgDHuAINAksE8z4MWhUcBO0fLbk5d
         EB/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jC3W1Q7e;
       spf=pass (google.com: domain of 33e9hxgwkapkoeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=33E9hXgwKAPkoeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com. [2607:f8b0:4864:20::64a])
        by gmr-mx.google.com with ESMTPS id t10si474040ilf.3.2020.03.05.11.15.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Mar 2020 11:15:40 -0800 (PST)
Received-SPF: pass (google.com: domain of 33e9hxgwkapkoeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) client-ip=2607:f8b0:4864:20::64a;
Received: by mail-pl1-x64a.google.com with SMTP id w17so3454535plq.16
        for <clang-built-linux@googlegroups.com>; Thu, 05 Mar 2020 11:15:40 -0800 (PST)
X-Received: by 2002:a63:35c1:: with SMTP id c184mr9226603pga.121.1583435740308;
 Thu, 05 Mar 2020 11:15:40 -0800 (PST)
Date: Thu,  5 Mar 2020 11:15:38 -0800
In-Reply-To: <20200305190811.3009-1-ndesaulniers@google.com>
Message-Id: <20200305191538.6570-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200305190811.3009-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/tgl: Move and restrict Wa_1408615072
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: jose.souza@intel.com
Cc: intel-gfx@lists.freedesktop.org, matthew.d.roper@intel.com, 
	clang-built-linux@googlegroups.com, bot@kernelci.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=jC3W1Q7e;       spf=pass
 (google.com: domain of 33e9hxgwkapkoeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=33E9hXgwKAPkoeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com;
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

> Hello Jose,
> So this is triggering a very subtle bug in 2 separate CI systems:
> - KernelCI: https://storage.kernelci.org/next/master/next-20200305/x86_64/x86_64_defconfig/clang-9/build.log
> - our CI: https://travis-ci.com/ClangBuiltLinux/continuous-integration/jobs/293826383
> 
> commit 50148a2 ("drm/i915/tgl: Move and restrict Wa_1408615072")
> 
> for Clang builds.  It seems that Clang is inlining `wa_masked_en` into
> `rcs_engine_wa_init`, which has implications for `__builtin_constant_p`
> evaluation.
> 
> The relevant call chain looks like:
> 
> rcs_engine_wa_init (drivers/gpu/drm/i915/gt/intel_workarounds.c) ->
>   wa_masked_en (drivers/gpu/drm/i915/gt/intel_workarounds.c) ->
>     _MASKED_BIT_ENABLE (drivers/gpu/drm/i915/i915_reg.h) ->
>       _MASKED_FIELD (drivers/gpu/drm/i915/i915_reg.h)
> 
> So it looks like there's build time validation that the masks and values have
> their bottom 2 bytes unset (mask & 0xffff0000, little endian).  (There doesn't
> seem to be equivalent runtime checks that the masks & values obey this
> invariant when they're not "integer constant expressions").
> 
> This will break should GCC ever decide to inline `wa_masked_en` into
> `rcs_engine_wa_init`.
> 
> VSUNIT_CLKGATE_DIS_TGL is defined as `REG_BIT(19)` which evaluates to
> 0x00080000, which would fail the check against
> 0xffff0000.
> 
> Can you please validate that VSUNIT_CLKGATE_DIS_TGL has the correct value, or
> if the invariant that the bottom two bytes of values passed to
> `_MASKED_BIT_ENABLE` must be set?

(Sorry, didn't quite finish that sentence, I meant to say):

Can you please validate that VSUNIT_CLKGATE_DIS_TGL has the correct value, or
if the invariant that the bottom two bytes of values passed to
`_MASKED_BIT_ENABLE` must not be set should still hold, otherwise please either
revert or drop your patch if you cannot resolve quickly (otherwise these two CI
systems will be red).

> 
> I would expect one of those two to be incorrect.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/918

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200305191538.6570-1-ndesaulniers%40google.com.
