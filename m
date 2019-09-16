Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXFI77VQKGQEJ53DV5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id 78953B404B
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 20:28:45 +0200 (CEST)
Received: by mail-qt1-x83f.google.com with SMTP id m20sf1103059qtq.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 11:28:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568658524; cv=pass;
        d=google.com; s=arc-20160816;
        b=UolbSF4WIuBlb8Q4aIsAXmKeMAvXQvf/c9Se81/rUEUiLzlbBBcJm5+iVCGXhOviiQ
         rkjkPJpEqqUJ7PrCSbkFeUkKzz6Kp4w2Sk9caQBchCUq3dasrC6dvZcsOXFm3p7qJu1R
         KsqGRsy8TQ+Xdbtgbsg7SJ56OdwCXBdXIS2tGQb6/XWi4jdn9YjLgx+bsSD68pe1MBx/
         4u4578iU7caqo3BkyrBrKeVsw4a/DYfNF4eITgsysTyKzB2BGBQemETryI5LJaOA8Q2h
         WGTJOKdOM5Yp1lQ0NB8bOch8OX0z6ELMr/ZNIkMthckJEnd67eeFD5KXiLXiBHUMU2OI
         3j/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=0iSLS4aKE1ez7KBtgvFj9boS7rPPHuCBnZyISmrWgtY=;
        b=h/rdlu4hq99CKbsRfSzz1WYcxumh2V6eBJPHzajSfY6p2xP6LSwStMBwe+UZxzKI79
         YBS0Va5bB1bkh6f8UuSN25p9SdlXBc7O6lXFLTWjUezTe+2fnETrH3EAdPqAfBxD8SHG
         4CqqW98dWAYXIGCoQsdTWPEbajnAJbeVAQ3HC+uLmWEcI/HSdh4rYlWzYlOnWxbnUD5n
         3SjPWVSvYiHYSBH/7Xdb2O1HH2K+O9UNeGi+X2cSCJnrCCyQo9JUZcO0vchi+oCGYyEG
         IiW7nd0XHiHnRSC3RnwMU8t5315ghpw82VcdleaWEEcB97RrPXOaGdp+RJSvHuolPqul
         uLzA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Q8sB3aMD;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0iSLS4aKE1ez7KBtgvFj9boS7rPPHuCBnZyISmrWgtY=;
        b=rUBAByDgprKdjpOC0rtJF4uJcfocf77D39jxXMkKqC+GKbi8xR9EEhL5HUbN+tNoFR
         R25wujv27oOsOT1wrTw7PDJEvQwfo/GUYDhFFmttQIH2C0L0cuQa1wOtHLF1UMsL+6g1
         7klQVV87DDULZ+d3rIAZpMT0nFJc2wyuN3RHRVUZ2nNUJfiQo+fVF7DP3ONhUFq4Ec0e
         50x+KW12ihhIQXn5ryiYKO9/oaP30T2xDeiZIQ5a7UubgnbWEGn3GzPkgx5/zJ5TpeBV
         1W10y6KT+HTYCYmdWy8140NOnrto8r5rPTkD2a7flrP5vQm6lHYsXZOWsPG5iZmRfQO4
         Vu5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0iSLS4aKE1ez7KBtgvFj9boS7rPPHuCBnZyISmrWgtY=;
        b=NHGBSkmYfv+b9EsxsqGEf1NYoydAxiVcd6vllAQoaku+WyJsPHIVTF+FxzqPgOeuCY
         1cMKJLIRM/uRNONC4vz+piu3g+5e5ZfXoNTAr5SkKWAELkSf7Tz76QAlIF/jT9oj2jbi
         IUa0c731+Jjftkjsv9JgKMccC7BpSafXd8sW1Cep05L6kDSuuRoLN4DaM6Y5qTv4nfZP
         WBWHuzKoZ8nFsoqBI+uHGhyCQYKxXXn5GETlAIfe5y6wuAyNSBgll2J8vmCDjRQxQ65i
         O7kynBU0BvqzbJool6xCQKVrqN3lrPF3LiwZ9kzLPP819YNnXffY3nWWF2+DzTlagPV+
         ktzQ==
X-Gm-Message-State: APjAAAVaU6Wghnb40QLha6yYLf/DcTVtW5M2g59FtV8iHoRTqU50qIH0
	sjlKBpGSm73Cmtd2NAEtA2c=
X-Google-Smtp-Source: APXvYqxd5hpFsOyrjQ+L++lKKovBKYvsmks5ZNgtr9NGYNpo/9elt84c8rtza8A8PBTaedHaGtL3TQ==
X-Received: by 2002:a37:9ac5:: with SMTP id c188mr1406022qke.342.1568658524057;
        Mon, 16 Sep 2019 11:28:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:e948:: with SMTP id n8ls77052qvo.5.gmail; Mon, 16 Sep
 2019 11:28:43 -0700 (PDT)
X-Received: by 2002:a0c:fca4:: with SMTP id h4mr1382968qvq.236.1568658523712;
        Mon, 16 Sep 2019 11:28:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568658523; cv=none;
        d=google.com; s=arc-20160816;
        b=K1PeAORrVx9XxIVQyY02GIOcOqYdlPHhjvkPgwGam97c7ZVlgesxdCcjafd44Z9TaD
         d8Tqk/SG8yYippb/augtFD/A15i2yroJsGsIroIQkLR0Edjzb8gsMkpv6gslHzEZO6+6
         MjG5xmJFkS2xDgOn7Vk5QpfCC0JQlutBdSzRb12gDglvYREVAT/OGhs/XksLOIfVUs/m
         YaS1cfmJ/Udyi3dJV2zVxRc2FH1WIFpHKkUt7J8HjURVoyXiH8r9Eyy/ZpsKpuUsqlRX
         UhBU8v0ud/h0x2gg9e3ikGodp/O6ZLDmqCp4vuBCrbsimpcBZNKm+8ZpDMqnhdalvYMw
         SzRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=YkXB5krbEKA+AsDBztFB1DLMDMIMyCQfl8qRJOaGBt8=;
        b=uK40LpRh5fljlyt/JnQQd4vvBNbDXf9wu65MuWeiVsKDSdOU05aoskh2N4EOoD5aco
         snwrrnHd82841QbIONumEllpBdgn/Rq6DhWkSma5ddu1uu3q99rwSj/L9/Wb/IgDXOOX
         TWBxPQlOCXe2DtaI75bUbJ7yG51W/WHOPzAskja0f42NfH5rXouKhprjG5PSYvG2KlcB
         eHzschhQcZiVavNMitmpqfd233tmt2KUkX5Y1HoUjMFwr2cIMeAeYlUYEkklGd0nIC3P
         8OW5w9XHTRSNfouFaVyZwZ2Lz9aoavGJOGEY1Y2tLrrz2kGhrwCP2mGLJRpkhRRfJFO7
         Z01A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Q8sB3aMD;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id o13si63041qkj.4.2019.09.16.11.28.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Sep 2019 11:28:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id bd8so272459plb.6
        for <clang-built-linux@googlegroups.com>; Mon, 16 Sep 2019 11:28:43 -0700 (PDT)
X-Received: by 2002:a17:902:bb87:: with SMTP id m7mr1147757pls.179.1568658522427;
 Mon, 16 Sep 2019 11:28:42 -0700 (PDT)
MIME-Version: 1.0
References: <201909141549.jA6j3hkx%lkp@intel.com>
In-Reply-To: <201909141549.jA6j3hkx%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 16 Sep 2019 11:28:31 -0700
Message-ID: <CAKwvOd=YVs1Grzcy_gUgO9_C5XkLdb1aCP+GYj1K97g-hu+aCA@mail.gmail.com>
Subject: Re: [jwboyer-fedora:rawhide 46/63] drivers/gpu/drm/i915/display/intel_display.c:12985:17:
 warning: incompatible integer to pointer conversion passing 'int' to
 parameter of type 'const char *'
To: kbuild test robot <lkp@intel.com>, jwboyer@fedoraproject.org
Cc: kbuild@01.org, clang-built-linux <clang-built-linux@googlegroups.com>, kbuild-all@01.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Q8sB3aMD;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642
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

Hi Josh,
Below is a bugreport from 0day bot compiling w/ Clang. Can you please
take a look? Sorry if this has already been reported.

On Sat, Sep 14, 2019 at 12:23 AM kbuild test robot <lkp@intel.com> wrote:
>
> CC: kbuild-all@01.org
> BCC: philip.li@intel.com
> TO: Josh Boyer <jwboyer@fedoraproject.org>
>
> tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/jwboyer/fedora.git rawhide
> head:   1581c155f78e7dce8af56fa074d6dd78a8c7f8d8
> commit: 906a121fa9b829991204b31d176177a4753de48a [46/63] drm/i915: hush check crtc state
> config: x86_64-rhel-7.6 (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         git checkout 906a121fa9b829991204b31d176177a4753de48a
>         # save the attached .config to linux build tree
>         make ARCH=x86_64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> drivers/gpu/drm/i915/display/intel_display.c:12985:17: warning: incompatible integer to pointer conversion passing 'int' to parameter of type 'const char *' [-Wint-conversion]
>                    DRM_DEBUG_KMS(1, "pipe state doesn't match!\n");
>                                  ^
>    include/drm/drm_print.h:366:22: note: expanded from macro 'DRM_DEBUG_KMS'
>            drm_dbg(DRM_UT_KMS, fmt, ##__VA_ARGS__)
>                                ^~~
>    include/drm/drm_print.h:283:49: note: passing argument to parameter 'format' here
>    void drm_dbg(unsigned int category, const char *format, ...);
>                                                    ^
>    1 warning generated.
>
> vim +12985 drivers/gpu/drm/i915/display/intel_display.c
>
>  12923
>  12924  static void
>  12925  verify_crtc_state(struct drm_crtc *crtc,
>  12926                    struct drm_crtc_state *old_crtc_state,
>  12927                    struct drm_crtc_state *new_crtc_state)
>  12928  {
>  12929          struct drm_device *dev = crtc->dev;
>  12930          struct drm_i915_private *dev_priv = to_i915(dev);
>  12931          struct intel_encoder *encoder;
>  12932          struct intel_crtc *intel_crtc = to_intel_crtc(crtc);
>  12933          struct intel_crtc_state *pipe_config, *sw_config;
>  12934          struct drm_atomic_state *old_state;
>  12935          bool active;
>  12936
>  12937          old_state = old_crtc_state->state;
>  12938          __drm_atomic_helper_crtc_destroy_state(old_crtc_state);
>  12939          pipe_config = to_intel_crtc_state(old_crtc_state);
>  12940          memset(pipe_config, 0, sizeof(*pipe_config));
>  12941          pipe_config->base.crtc = crtc;
>  12942          pipe_config->base.state = old_state;
>  12943
>  12944          DRM_DEBUG_KMS("[CRTC:%d:%s]\n", crtc->base.id, crtc->name);
>  12945
>  12946          active = dev_priv->display.get_pipe_config(intel_crtc, pipe_config);
>  12947
>  12948          /* we keep both pipes enabled on 830 */
>  12949          if (IS_I830(dev_priv))
>  12950                  active = new_crtc_state->active;
>  12951
>  12952          I915_STATE_WARN(new_crtc_state->active != active,
>  12953               "crtc active state doesn't match with hw state "
>  12954               "(expected %i, found %i)\n", new_crtc_state->active, active);
>  12955
>  12956          I915_STATE_WARN(intel_crtc->active != new_crtc_state->active,
>  12957               "transitional active state does not match atomic hw state "
>  12958               "(expected %i, found %i)\n", new_crtc_state->active, intel_crtc->active);
>  12959
>  12960          for_each_encoder_on_crtc(dev, crtc, encoder) {
>  12961                  enum pipe pipe;
>  12962
>  12963                  active = encoder->get_hw_state(encoder, &pipe);
>  12964                  I915_STATE_WARN(active != new_crtc_state->active,
>  12965                          "[ENCODER:%i] active %i with crtc active %i\n",
>  12966                          encoder->base.base.id, active, new_crtc_state->active);
>  12967
>  12968                  I915_STATE_WARN(active && intel_crtc->pipe != pipe,
>  12969                                  "Encoder connected to wrong pipe %c\n",
>  12970                                  pipe_name(pipe));
>  12971
>  12972                  if (active)
>  12973                          encoder->get_config(encoder, pipe_config);
>  12974          }
>  12975
>  12976          intel_crtc_compute_pixel_rate(pipe_config);
>  12977
>  12978          if (!new_crtc_state->active)
>  12979                  return;
>  12980
>  12981          intel_pipe_config_sanity_check(dev_priv, pipe_config);
>  12982
>  12983          sw_config = to_intel_crtc_state(new_crtc_state);
>  12984          if (!intel_pipe_config_compare(sw_config, pipe_config, false)) {
>  12985                  DRM_DEBUG_KMS(1, "pipe state doesn't match!\n");
>  12986                  intel_dump_pipe_config(pipe_config, NULL, "[hw state]");
>  12987                  intel_dump_pipe_config(sw_config, NULL, "[sw state]");
>  12988          }
>  12989  }
>  12990
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DYVs1Grzcy_gUgO9_C5XkLdb1aCP%2BGYj1K97g-hu%2BaCA%40mail.gmail.com.
