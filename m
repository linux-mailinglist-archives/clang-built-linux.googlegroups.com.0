Return-Path: <clang-built-linux+bncBDFIFCVS5QKRBI7E77VQKGQED75666A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3c.google.com (mail-vs1-xe3c.google.com [IPv6:2607:f8b0:4864:20::e3c])
	by mail.lfdr.de (Postfix) with ESMTPS id D3CC5B41F5
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 22:35:48 +0200 (CEST)
Received: by mail-vs1-xe3c.google.com with SMTP id z10sf298324vsq.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 13:35:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568666147; cv=pass;
        d=google.com; s=arc-20160816;
        b=suvY7gtgwJJ0kA4L6V8SPr0bD3H3GvDroPRHrJBa94uMyi0Cv/vK+b0I91zAbVZYTG
         YXup4rEQqd5drAcBkdrykkB12+9STH1QmTPEc3kf2dDkR4c2NKjnLijEcwyz81f7SQsb
         YlUpQ+VhXjWH7u5iRnoExHS7Lu3o9f0O22suVOiip3VaumtkJeAJtsurlhmNMA/lbEPo
         kDySnJJleZrN4LsI7jmMWbaTb9tjwK03QDHZdq9Ac24MEoydpjSKnpD4OXe2oSbxveov
         INBOb2PWHW6fvFamYae9NMMaR+vIabJt3fFdRPsu1NWVggO+fILUkj76PiXoqHdmIMjH
         J9xQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=xYWFIxRF9nyOsSbZwW4KL0Oc0OICu+7tUbYMLdJppKY=;
        b=jEiAl2+VtLh69d7l91MLiLeGfQd4pXjc/wsL5jeIssMXqdtghRat9NmeXxfUurSogJ
         FQ+1dXSrZN1eHFWdVieLvqPprav/C9UHaBNHUQxGDKHlq1mdsbjKGiscKYaKemRBfxX1
         2ps6BwhbVkD29oKb9ZZv7OfLZo+6pubHEVP90I7j2H/fnRQ0XTcWk4Bn9ZVISuOLeDX+
         peKAVqyx7Z4eRVM2tA9SDBYUsgGhlEzxS2iNoQS10wickBRxtIfcXezPw2zE6Dmltq9E
         C0RvWup8/1BKFLLEzhYrqdJ0waE0QX8X0DiRXkqrAIksZVfiuw06v/g2/uiZ2b45TmPF
         VzgQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jcline@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=jcline@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xYWFIxRF9nyOsSbZwW4KL0Oc0OICu+7tUbYMLdJppKY=;
        b=Zh16r38nQMq6nK6KxYAMkN7WGgGygs++00qVXEUrM8t6KBM5NyvysJgCpDL6iPxiKq
         33I5GAR0Us6CNXYSnZ1swWn3ZkpE4XQewC68+8ahaj65UcoNMu9HZaPEJyKK0HZqIaMl
         VCUn2RntF9uBUu7KDR+DbZhHT7q98YJDfEd1uNFF6DYuFz1fgshnv6davhZQp2Fz5Xpn
         ertU2gBxsa63GqkQKG2gmbi46ZOECuVMb1d3A2TeyCgJvJD0niwa+i89Pfj+SvEZQeiL
         ZNMhVsqO3Eh9dE1/i5BQfloNEnUZ/gQNpqPDyZT/bX6PPTLyU/kiJ3toAABAuNwXrQq3
         wVYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xYWFIxRF9nyOsSbZwW4KL0Oc0OICu+7tUbYMLdJppKY=;
        b=XcOU9WgaiX7XRR7c6WbuhkJ/TItGqKfFQyn9LWf/IgtKtxC0U6O31unIu8LD/ToN6U
         AzbsgKV3n/NxiUBjKpIQ915tExvDrp3hizo9+q9VjwJquoPLmyIYsvZGhs489qKezAWH
         k/84g2v4JP3VJzuiOCQyqcKrr7pzvR6D5aLMS5uoua+fG54Vu1MjzwSQ/WAUiVj/l+JR
         qXqdvCvH/t+iNvDCsf+ziWI+QvQKZsY7o9HiQoAjiM60zIJKck03+JcxdZpGZin2grjW
         VkhrxtQjThdEaUlWJFj/uIzn2hYzhzHLmNQexk715P3aijC854y/YKGsVVtrP3v3pwVF
         R5gA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVU9Qf6m02kEbrv9D3GeQ3iT3mIiq/5AG+wxR86qz+NUb/YKOJv
	4Oow0d8OjdIEnvHWMjN5uXk=
X-Google-Smtp-Source: APXvYqxSf6S8HB2aeVYa6IL3+1PDqWRQXksUd8iJQOVWVg6+89ZSt/hpCmwAU25L3eR5NwWkY3xMhQ==
X-Received: by 2002:a1f:4805:: with SMTP id v5mr79885vka.28.1568666147681;
        Mon, 16 Sep 2019 13:35:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f64b:: with SMTP id u11ls104685vso.12.gmail; Mon, 16 Sep
 2019 13:35:47 -0700 (PDT)
X-Received: by 2002:a67:1a41:: with SMTP id a62mr1167627vsa.54.1568666147387;
        Mon, 16 Sep 2019 13:35:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568666147; cv=none;
        d=google.com; s=arc-20160816;
        b=qtej1kL8PJlWjinzy3nptfUWV0OjOKWaL0HDpap/tO/1WrzkWNlcAZjMEVzuVSg63j
         r2E7Xxui/9NrK4iPGIurvsFP2R6iq9HoYzLDEVOFB4mp9dBhnl8XLydHYdkS9HG7ej5F
         nul5HTZXiYLYtdrztPUY7awKldig0b4Jj2IO+O1s9aAWzbLn1VaMgctC9sECa/WjwPI7
         O7dxuZY3qhtgyRedMhAm+cQPdqOGrFCOQKOmVbfOnfXXEw8J5a1XEJpBy68G/ov0ZjbA
         Zm0fvTCU191YeZpiD7JjiGk8prSkf4b4ldKnpyoRPfV4Uxij7N7Usq2f/aF8mkJ1eyyH
         PjVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=xBTdXU0qMJTvH13btf8WoqUkiVQT4XwZPfUBWKosGnY=;
        b=nqxoE2c32Co+h+2JnyclhxivYFB/cUXRf2GFdYuIbseacsZB0sBN/M+gvHZYG5LRrm
         h6XeQUVVn04Se9AhqYz5is75C2HSFs01r/J9+eO+AyyE6Df3KImdKHd9Tj/N5bbXU9Bw
         OI7/v3RyZMtB0mQrCb+lp0JC0s200O0W69YI2Ko9K6punx+6BK1KgHlLQI1jDsnspxWt
         RLm5GydsP3xCkLj9ambnSxdvcg0/lO969WrwnohoOcc/aBbrtz0p/eWsG1fprGle2R5J
         1ECQDIQ2InM//AFQ5zxtB2JRd6+wtC4oE2EC9tBJ94eYZ2s9l7xsg5iNGHZLL4k496Eq
         OqMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jcline@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=jcline@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from mx1.redhat.com (mx1.redhat.com. [209.132.183.28])
        by gmr-mx.google.com with ESMTPS id r72si11919vke.5.2019.09.16.13.35.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Sep 2019 13:35:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of jcline@redhat.com designates 209.132.183.28 as permitted sender) client-ip=209.132.183.28;
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 0ECA53082132;
	Mon, 16 Sep 2019 20:35:46 +0000 (UTC)
Received: from laptop.jcline.org (ovpn-122-82.rdu2.redhat.com [10.10.122.82])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BD7BE60600;
	Mon, 16 Sep 2019 20:35:45 +0000 (UTC)
Received: from laptop.jcline.org (localhost [IPv6:::1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by laptop.jcline.org (Postfix) with ESMTPS id 03DE27045B1C;
	Mon, 16 Sep 2019 16:35:45 -0400 (EDT)
Date: Mon, 16 Sep 2019 16:35:43 -0400
From: Jeremy Cline <jcline@redhat.com>
To: Josh Boyer <jwboyer@fedoraproject.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	kernel-team@fedoraproject.org, kbuild test robot <lkp@intel.com>,
	kbuild@01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	kbuild-all@01.org
Subject: Re: [jwboyer-fedora:rawhide 46/63]
 drivers/gpu/drm/i915/display/intel_display.c:12985:17: warning: incompatible
 integer to pointer conversion passing 'int' to parameter of type 'const char
 *'
Message-ID: <20190916203543.GA25496@laptop.jcline.org>
References: <201909141549.jA6j3hkx%lkp@intel.com>
 <CAKwvOd=YVs1Grzcy_gUgO9_C5XkLdb1aCP+GYj1K97g-hu+aCA@mail.gmail.com>
 <CA+5PVA7NmdkBS_wKYdK7XA5w1m4dRoFwZzKo1qKR1bNjDFmSwQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+5PVA7NmdkBS_wKYdK7XA5w1m4dRoFwZzKo1qKR1bNjDFmSwQ@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.42]); Mon, 16 Sep 2019 20:35:46 +0000 (UTC)
X-Original-Sender: jcline@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jcline@redhat.com designates 209.132.183.28 as
 permitted sender) smtp.mailfrom=jcline@redhat.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=redhat.com
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

On Mon, Sep 16, 2019 at 02:34:21PM -0400, Josh Boyer wrote:
> On Mon, Sep 16, 2019 at 2:28 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > Hi Josh,
> > Below is a bugreport from 0day bot compiling w/ Clang. Can you please
> > take a look? Sorry if this has already been reported.
> 
> The tree is under my name, but only for historical reasons.  It's
> really a representation of the Fedora kernel, so I've copied that team
> to take a look.

Thanks for the pointer. We'd been carrying a patch in this area for many
years which can be replaced with upstream functionality so I've dropped
it.

- Jeremy

> 
> josh
> 
> > On Sat, Sep 14, 2019 at 12:23 AM kbuild test robot <lkp@intel.com> wrote:
> > >
> > > CC: kbuild-all@01.org
> > > BCC: philip.li@intel.com
> > > TO: Josh Boyer <jwboyer@fedoraproject.org>
> > >
> > > tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/jwboyer/fedora.git rawhide
> > > head:   1581c155f78e7dce8af56fa074d6dd78a8c7f8d8
> > > commit: 906a121fa9b829991204b31d176177a4753de48a [46/63] drm/i915: hush check crtc state
> > > config: x86_64-rhel-7.6 (attached as .config)
> > > compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> > > reproduce:
> > >         git checkout 906a121fa9b829991204b31d176177a4753de48a
> > >         # save the attached .config to linux build tree
> > >         make ARCH=x86_64
> > >
> > > If you fix the issue, kindly add following tag
> > > Reported-by: kbuild test robot <lkp@intel.com>
> > >
> > > All warnings (new ones prefixed by >>):
> > >
> > > >> drivers/gpu/drm/i915/display/intel_display.c:12985:17: warning: incompatible integer to pointer conversion passing 'int' to parameter of type 'const char *' [-Wint-conversion]
> > >                    DRM_DEBUG_KMS(1, "pipe state doesn't match!\n");
> > >                                  ^
> > >    include/drm/drm_print.h:366:22: note: expanded from macro 'DRM_DEBUG_KMS'
> > >            drm_dbg(DRM_UT_KMS, fmt, ##__VA_ARGS__)
> > >                                ^~~
> > >    include/drm/drm_print.h:283:49: note: passing argument to parameter 'format' here
> > >    void drm_dbg(unsigned int category, const char *format, ...);
> > >                                                    ^
> > >    1 warning generated.
> > >
> > > vim +12985 drivers/gpu/drm/i915/display/intel_display.c
> > >
> > >  12923
> > >  12924  static void
> > >  12925  verify_crtc_state(struct drm_crtc *crtc,
> > >  12926                    struct drm_crtc_state *old_crtc_state,
> > >  12927                    struct drm_crtc_state *new_crtc_state)
> > >  12928  {
> > >  12929          struct drm_device *dev = crtc->dev;
> > >  12930          struct drm_i915_private *dev_priv = to_i915(dev);
> > >  12931          struct intel_encoder *encoder;
> > >  12932          struct intel_crtc *intel_crtc = to_intel_crtc(crtc);
> > >  12933          struct intel_crtc_state *pipe_config, *sw_config;
> > >  12934          struct drm_atomic_state *old_state;
> > >  12935          bool active;
> > >  12936
> > >  12937          old_state = old_crtc_state->state;
> > >  12938          __drm_atomic_helper_crtc_destroy_state(old_crtc_state);
> > >  12939          pipe_config = to_intel_crtc_state(old_crtc_state);
> > >  12940          memset(pipe_config, 0, sizeof(*pipe_config));
> > >  12941          pipe_config->base.crtc = crtc;
> > >  12942          pipe_config->base.state = old_state;
> > >  12943
> > >  12944          DRM_DEBUG_KMS("[CRTC:%d:%s]\n", crtc->base.id, crtc->name);
> > >  12945
> > >  12946          active = dev_priv->display.get_pipe_config(intel_crtc, pipe_config);
> > >  12947
> > >  12948          /* we keep both pipes enabled on 830 */
> > >  12949          if (IS_I830(dev_priv))
> > >  12950                  active = new_crtc_state->active;
> > >  12951
> > >  12952          I915_STATE_WARN(new_crtc_state->active != active,
> > >  12953               "crtc active state doesn't match with hw state "
> > >  12954               "(expected %i, found %i)\n", new_crtc_state->active, active);
> > >  12955
> > >  12956          I915_STATE_WARN(intel_crtc->active != new_crtc_state->active,
> > >  12957               "transitional active state does not match atomic hw state "
> > >  12958               "(expected %i, found %i)\n", new_crtc_state->active, intel_crtc->active);
> > >  12959
> > >  12960          for_each_encoder_on_crtc(dev, crtc, encoder) {
> > >  12961                  enum pipe pipe;
> > >  12962
> > >  12963                  active = encoder->get_hw_state(encoder, &pipe);
> > >  12964                  I915_STATE_WARN(active != new_crtc_state->active,
> > >  12965                          "[ENCODER:%i] active %i with crtc active %i\n",
> > >  12966                          encoder->base.base.id, active, new_crtc_state->active);
> > >  12967
> > >  12968                  I915_STATE_WARN(active && intel_crtc->pipe != pipe,
> > >  12969                                  "Encoder connected to wrong pipe %c\n",
> > >  12970                                  pipe_name(pipe));
> > >  12971
> > >  12972                  if (active)
> > >  12973                          encoder->get_config(encoder, pipe_config);
> > >  12974          }
> > >  12975
> > >  12976          intel_crtc_compute_pixel_rate(pipe_config);
> > >  12977
> > >  12978          if (!new_crtc_state->active)
> > >  12979                  return;
> > >  12980
> > >  12981          intel_pipe_config_sanity_check(dev_priv, pipe_config);
> > >  12982
> > >  12983          sw_config = to_intel_crtc_state(new_crtc_state);
> > >  12984          if (!intel_pipe_config_compare(sw_config, pipe_config, false)) {
> > >  12985                  DRM_DEBUG_KMS(1, "pipe state doesn't match!\n");
> > >  12986                  intel_dump_pipe_config(pipe_config, NULL, "[hw state]");
> > >  12987                  intel_dump_pipe_config(sw_config, NULL, "[sw state]");
> > >  12988          }
> > >  12989  }
> > >  12990
> > >
> > > ---
> > > 0-DAY kernel test infrastructure                Open Source Technology Center
> > > https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> >
> >
> >
> > --
> > Thanks,
> > ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190916203543.GA25496%40laptop.jcline.org.
