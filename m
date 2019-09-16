Return-Path: <clang-built-linux+bncBDE65JU6VQHBBONL77VQKGQE7C4P2ZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id BC47BB4069
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 20:34:34 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id w13sf343094plq.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 11:34:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568658873; cv=pass;
        d=google.com; s=arc-20160816;
        b=JpGByCIL/M6lBGuQ+tJUliq6k3tx26OHFz2cS4e5ndB+gUGScSYwQ+HEGkF1yP59g9
         5AE1s7+SUjFm/enNIjuvBTK/aILiwCviv0LwzNAvjmFZ4nuSd5emRp9lSvS8t9LI+1TO
         2y7h2mNWw4a1ZwrR+wF+mHgtpbStI0n73mxFhUBYgGqkhwFHKfg3c2UR0MSiP527anLa
         x1EQhio+mXraBWHDfed8qFph/S83ERcuKr2+C9YHAdx12ii+umW+p8vCTMxYYYHnSBV0
         ykvwdPJ47HDuAeo4X/pkhN9mB9IYh6CKFY+WGLRzcy+QmTou6Hios3HBY+9jGhFsQ+KB
         FmXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=0Lsc2yXm5GpFU5tpNXdLNWf+k9cyaQpPV0XHBQYOJoo=;
        b=ZmaJM6ux5TaDVfv6yaaRRFpyuFjdGbU6Oj2+oeicA+Y5tqcqUxHOC8OEpwNx97RUnp
         J1d3qxkc+ubZkHu7cAUBRT8MY6ZAAX/MbjpOG038H6v9MX74Z3scekRh+0u0Yp2mbWZ8
         DaeWpTG26CEpzi/BrigIKvB4Bnhs2cU4XQxbLhibIzp687LZg/fAjig2BJH+kvyaZzmX
         We6ISX+GlAp4CI9dib96XO53rRW2eeJFjzOlFo0YXDxiRnGs9qS0C0WQZ6QquTZV5pkC
         vfVhWNv9oSHn2oKXXV1mYt5xymT3IilhWMJu5J5jCyRVaB1Eoc2qeKRDeequIG4t7j08
         IEpQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jwboyer@gmail.com designates 209.85.160.196 as permitted sender) smtp.mailfrom=jwboyer@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0Lsc2yXm5GpFU5tpNXdLNWf+k9cyaQpPV0XHBQYOJoo=;
        b=l+NUQhUOS4igrR5kW28EgIp2U+uSrnHHj78/6FZm08atnl9ipz4L04kYPlwkF/KbNe
         20gqwkBPy2biSfQR6PdJnGTTyG/s5lEZbPBC8gTpIaO7eFAlBnP6wc4tLHMN1IVe0lRe
         YlrQlbmv9B9ATVhLo6cp4R3Wu4y2NFkAhHOmWTZhUZLz4fxDhL5Mo7RfeMw4MU2JgzD7
         5uvR0KO1C2vX25wG7PH5U617lJNtC7kpVKA6Rq1vMDu/46IDhVt+7nSZcY+UQ2nZsd44
         56hK1c4G5i3vPijPC5FBSXcTI0B00Wy75y7tuUPjZKTYtLBqED4mxY+2NnyKBzu7tN4q
         LHug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0Lsc2yXm5GpFU5tpNXdLNWf+k9cyaQpPV0XHBQYOJoo=;
        b=Mcp9GQwhhfDDanBrNmtEBlDItAYW+fFTnMW91ZvPPQ+1vL1F8d0FphSLyHU63XbihI
         zRJhLvnba5YQZlsnGyxBlSd4/qqebKW2/Jhv7P25/eWpVxYIA4OWOzaDPOK/h++nLAmD
         fJaGY1QA96DgcGYOsv5WrDaLR8uh0ryv6wIfutQGlC1VZAqTFEvmUN36K6x2Rg2P7Les
         5FjaF8UKfRTJd2YOlbzJMRbC9NqwhCTgWu6zlC0LqZlBAOdwHh090sVadBXsKvBMqzi1
         /urBxXqpWM5bX5OScmFcwMdHgADOnQAICKI3ksFvM24poWMXy1S8moLVQ2cKsZ3xRv0h
         5CNw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV92QOQm8DgWj/Lm6i/8/eJsAAU4NJ3LZbDy6iPuwT6+TwnFJc+
	4twxxn5O3gTmRfVcKH2NC1E=
X-Google-Smtp-Source: APXvYqxEqWyIjHvwpMb4b0TyKeFJ2dnRRfOYcjSIGIjXc6vO/4Bq4AoU9NKbI4sO6s+opUN3a2cKEQ==
X-Received: by 2002:a17:90a:356d:: with SMTP id q100mr606964pjb.53.1568658873437;
        Mon, 16 Sep 2019 11:34:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:644a:: with SMTP id y71ls94130pfb.9.gmail; Mon, 16 Sep
 2019 11:34:33 -0700 (PDT)
X-Received: by 2002:a63:de12:: with SMTP id f18mr198895pgg.453.1568658873012;
        Mon, 16 Sep 2019 11:34:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568658873; cv=none;
        d=google.com; s=arc-20160816;
        b=U+UVMYDbgnxQtx34x6tJaBB6hmKZ5BfGpuHqmWnqDdi+j7SgAUUJcJBmvX68jXK4oT
         YzlvJ+knmOL1wNoKyGkgmdcIYJAQ4phwSmxUhSKcGQtAl1+BVG1hF4a0AdklY++QY893
         73yHOptBt0RAF8stFtuzWiRJOzaD1md0UHiCzlAwfP1ulJW0x0vfh4beWAnw+8Elnak4
         V8kPXhCmsa6PMnBvvwJJf59AUiRXhr0912wdH0ONhWA7PGOubOoUKjMiRJTVd3fq03ux
         RrmgdrWnFMq9K7UAYklF/2s/PDkBiwPAYc3+wfYoAUwu3SmKlLqWamSfLBxxTJKfnkmV
         9ssw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=EzvlC0aQWxRuxfShfZJQf/qCEzMwlEXj1g1xRYyzZaU=;
        b=bFVD8tJA6rXPrRUlLddal2uUVUFoHLUa6vy/yYG5cT6jqm0+6EOknhPyTydYk6Bhzu
         8ROkNXyiMC3+i14Cb94mUqpWCOE4u4vvdaV7CyLeQ7V+MzAdK1wnvXyyuSLlpJdHH1Lf
         5848Ct8dZjt6cfKiEEosyZPTW9MoomBzZksiwOO5/t34CXc7rddP4sUD9SeRJac1usyJ
         95WpnnSHYHqAHbk8Te2NJGEUsh5mFUyjrm8ifkHmUgBwBKfLpS6spEISXfpiK7UJu3CJ
         tRWpLPr/R0E9R0zO6QdIqIbb6TUPhzgAbJ6JdcyvK6NeOqqW8VPm1jU+JM8rC5FuwnCI
         JW3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jwboyer@gmail.com designates 209.85.160.196 as permitted sender) smtp.mailfrom=jwboyer@gmail.com
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com. [209.85.160.196])
        by gmr-mx.google.com with ESMTPS id s28si10720pgo.0.2019.09.16.11.34.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Sep 2019 11:34:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of jwboyer@gmail.com designates 209.85.160.196 as permitted sender) client-ip=209.85.160.196;
Received: by mail-qt1-f196.google.com with SMTP id x5so1054008qtr.7
        for <clang-built-linux@googlegroups.com>; Mon, 16 Sep 2019 11:34:32 -0700 (PDT)
X-Received: by 2002:ac8:7310:: with SMTP id x16mr1057186qto.382.1568658872162;
 Mon, 16 Sep 2019 11:34:32 -0700 (PDT)
MIME-Version: 1.0
References: <201909141549.jA6j3hkx%lkp@intel.com> <CAKwvOd=YVs1Grzcy_gUgO9_C5XkLdb1aCP+GYj1K97g-hu+aCA@mail.gmail.com>
In-Reply-To: <CAKwvOd=YVs1Grzcy_gUgO9_C5XkLdb1aCP+GYj1K97g-hu+aCA@mail.gmail.com>
From: Josh Boyer <jwboyer@fedoraproject.org>
Date: Mon, 16 Sep 2019 14:34:21 -0400
Message-ID: <CA+5PVA7NmdkBS_wKYdK7XA5w1m4dRoFwZzKo1qKR1bNjDFmSwQ@mail.gmail.com>
Subject: Re: [jwboyer-fedora:rawhide 46/63] drivers/gpu/drm/i915/display/intel_display.c:12985:17:
 warning: incompatible integer to pointer conversion passing 'int' to
 parameter of type 'const char *'
To: Nick Desaulniers <ndesaulniers@google.com>, kernel-team@fedoraproject.org
Cc: kbuild test robot <lkp@intel.com>, kbuild@01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild-all@01.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jwboyer@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jwboyer@gmail.com designates 209.85.160.196 as
 permitted sender) smtp.mailfrom=jwboyer@gmail.com
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

On Mon, Sep 16, 2019 at 2:28 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Hi Josh,
> Below is a bugreport from 0day bot compiling w/ Clang. Can you please
> take a look? Sorry if this has already been reported.

The tree is under my name, but only for historical reasons.  It's
really a representation of the Fedora kernel, so I've copied that team
to take a look.

josh

> On Sat, Sep 14, 2019 at 12:23 AM kbuild test robot <lkp@intel.com> wrote:
> >
> > CC: kbuild-all@01.org
> > BCC: philip.li@intel.com
> > TO: Josh Boyer <jwboyer@fedoraproject.org>
> >
> > tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/jwboyer/fedora.git rawhide
> > head:   1581c155f78e7dce8af56fa074d6dd78a8c7f8d8
> > commit: 906a121fa9b829991204b31d176177a4753de48a [46/63] drm/i915: hush check crtc state
> > config: x86_64-rhel-7.6 (attached as .config)
> > compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> > reproduce:
> >         git checkout 906a121fa9b829991204b31d176177a4753de48a
> >         # save the attached .config to linux build tree
> >         make ARCH=x86_64
> >
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> > >> drivers/gpu/drm/i915/display/intel_display.c:12985:17: warning: incompatible integer to pointer conversion passing 'int' to parameter of type 'const char *' [-Wint-conversion]
> >                    DRM_DEBUG_KMS(1, "pipe state doesn't match!\n");
> >                                  ^
> >    include/drm/drm_print.h:366:22: note: expanded from macro 'DRM_DEBUG_KMS'
> >            drm_dbg(DRM_UT_KMS, fmt, ##__VA_ARGS__)
> >                                ^~~
> >    include/drm/drm_print.h:283:49: note: passing argument to parameter 'format' here
> >    void drm_dbg(unsigned int category, const char *format, ...);
> >                                                    ^
> >    1 warning generated.
> >
> > vim +12985 drivers/gpu/drm/i915/display/intel_display.c
> >
> >  12923
> >  12924  static void
> >  12925  verify_crtc_state(struct drm_crtc *crtc,
> >  12926                    struct drm_crtc_state *old_crtc_state,
> >  12927                    struct drm_crtc_state *new_crtc_state)
> >  12928  {
> >  12929          struct drm_device *dev = crtc->dev;
> >  12930          struct drm_i915_private *dev_priv = to_i915(dev);
> >  12931          struct intel_encoder *encoder;
> >  12932          struct intel_crtc *intel_crtc = to_intel_crtc(crtc);
> >  12933          struct intel_crtc_state *pipe_config, *sw_config;
> >  12934          struct drm_atomic_state *old_state;
> >  12935          bool active;
> >  12936
> >  12937          old_state = old_crtc_state->state;
> >  12938          __drm_atomic_helper_crtc_destroy_state(old_crtc_state);
> >  12939          pipe_config = to_intel_crtc_state(old_crtc_state);
> >  12940          memset(pipe_config, 0, sizeof(*pipe_config));
> >  12941          pipe_config->base.crtc = crtc;
> >  12942          pipe_config->base.state = old_state;
> >  12943
> >  12944          DRM_DEBUG_KMS("[CRTC:%d:%s]\n", crtc->base.id, crtc->name);
> >  12945
> >  12946          active = dev_priv->display.get_pipe_config(intel_crtc, pipe_config);
> >  12947
> >  12948          /* we keep both pipes enabled on 830 */
> >  12949          if (IS_I830(dev_priv))
> >  12950                  active = new_crtc_state->active;
> >  12951
> >  12952          I915_STATE_WARN(new_crtc_state->active != active,
> >  12953               "crtc active state doesn't match with hw state "
> >  12954               "(expected %i, found %i)\n", new_crtc_state->active, active);
> >  12955
> >  12956          I915_STATE_WARN(intel_crtc->active != new_crtc_state->active,
> >  12957               "transitional active state does not match atomic hw state "
> >  12958               "(expected %i, found %i)\n", new_crtc_state->active, intel_crtc->active);
> >  12959
> >  12960          for_each_encoder_on_crtc(dev, crtc, encoder) {
> >  12961                  enum pipe pipe;
> >  12962
> >  12963                  active = encoder->get_hw_state(encoder, &pipe);
> >  12964                  I915_STATE_WARN(active != new_crtc_state->active,
> >  12965                          "[ENCODER:%i] active %i with crtc active %i\n",
> >  12966                          encoder->base.base.id, active, new_crtc_state->active);
> >  12967
> >  12968                  I915_STATE_WARN(active && intel_crtc->pipe != pipe,
> >  12969                                  "Encoder connected to wrong pipe %c\n",
> >  12970                                  pipe_name(pipe));
> >  12971
> >  12972                  if (active)
> >  12973                          encoder->get_config(encoder, pipe_config);
> >  12974          }
> >  12975
> >  12976          intel_crtc_compute_pixel_rate(pipe_config);
> >  12977
> >  12978          if (!new_crtc_state->active)
> >  12979                  return;
> >  12980
> >  12981          intel_pipe_config_sanity_check(dev_priv, pipe_config);
> >  12982
> >  12983          sw_config = to_intel_crtc_state(new_crtc_state);
> >  12984          if (!intel_pipe_config_compare(sw_config, pipe_config, false)) {
> >  12985                  DRM_DEBUG_KMS(1, "pipe state doesn't match!\n");
> >  12986                  intel_dump_pipe_config(pipe_config, NULL, "[hw state]");
> >  12987                  intel_dump_pipe_config(sw_config, NULL, "[sw state]");
> >  12988          }
> >  12989  }
> >  12990
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
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2B5PVA7NmdkBS_wKYdK7XA5w1m4dRoFwZzKo1qKR1bNjDFmSwQ%40mail.gmail.com.
