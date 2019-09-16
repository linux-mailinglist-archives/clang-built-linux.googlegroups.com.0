Return-Path: <clang-built-linux+bncBDYJPJO25UGBBIVG77VQKGQEX5B323I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 95173B403D
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 20:23:31 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id z13sf452317pfr.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 11:23:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568658210; cv=pass;
        d=google.com; s=arc-20160816;
        b=uJd3xTV/E3nnVwEBfTzq+h0U0kDfBQ+kNFdI0U92hmI4J0neNSyXosOpsAo3x2+kRN
         3w4/jOK+NLua193X1Aj80vvm7XDXupfR7CvmU6QsS3PN2aJG98hxeSJT6NOGC/KfpK+D
         5SkFsmVbm+Eujop7iZ778q3ev12H5oXk9oF7c8eS7iXvHrG6l+XUaeZoGalmxpOASmRA
         ChaEsJUjQ59hgRkMz3WFO9r5FW271ERmXjtvXi+0JssH+Z80Ob2L86v1d336ABGJi/HN
         cQwTTfbEQF6Zg+SV7kB2OsTOfmYx6Fzknbs1atm5dOcsZ5UecyRkdPmxpCKm+cup4F/6
         xfFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=dUqdvY63vyeLI9NwGeNWWTra1BrRt7BYDO4KpI5/z18=;
        b=oVtD7y54dOYoPrK4y+7VjnX9a46dvArO7OKMHSOAy2sSrJ58g/XcR/GzvTMmvL5Yr8
         5TqpQ3bL7SmZnzNf2S15tS0rDntgI7X1ablEegoLC9umkIu8BjJ5HnCEovGcxssNm/uk
         kS5ylGi5Vgsl73C7ZKvd1pHGPlnr/sBOne6jMqD9V2gYiAn2aP5phyQs0NyDUfQDledq
         kI26QYOHgsSsZ2+wjsEFjOH+JMddlu0/WHXAOvJQwq2Imt8/lvNI+cqOLE4T2vuBDcrH
         mkl1KuB9TatY7BHMB2Vhlj8DoBvGu0CDzArdka0ZtO4UznHK9n4m7ubuqle8gLgiT2Wu
         cR0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="QdNq/fhy";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dUqdvY63vyeLI9NwGeNWWTra1BrRt7BYDO4KpI5/z18=;
        b=s+RqOizUseUKg+r/AgAvY/hRVQfdl4Qi/to+mHdkDys3FG1A8hNWr1huLxnKdl0ULV
         ER4nXxibElVG44P/MXzMmotCgpaGuz8r12tY8lRSTA4CjU1NdaFmx5OaKvr7ztFTcmnS
         xKVdebdOLa2797EWD1+J2++vC6xgouq1KYn1WTu8svn0DejFmKUaVaj/SBXN3UK6+jqD
         NAtckT7277mPgEmB+jsDjYXhXQR3f7MnElyT8rk0Ytra2giPSogvFK1phjGCwwUaBvIL
         rdArfhl3pb9RoEs5IYAmEQFL7dfff5C/DOLd2zCQWsaoooO5M8u4SKmBUOeHTAL0itEW
         S0fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dUqdvY63vyeLI9NwGeNWWTra1BrRt7BYDO4KpI5/z18=;
        b=MOok2D/IR0+Z8IjOIgkYD7nvuri2a3R65ak7nU5XXtj6g8H6aFz382/GUhVSjlgGo+
         qICak4rw8+JvBWXrbC9SjrAWugFs7vLWmgPnhvFsRu+TEveN8EBUXGiH8TMsXliI5E+8
         +7JVsvZlGpqSGQ9snS6JJKhWXwzEnmvh+x5nY5GjYErauXV72j48dHl5xswen5v9Lgoa
         EoKUKM5oPJNN8RbHr6JEPxzKw4nTj9sECPUl86lCcb6Io+UjCLlvUOK1KhnXrhkDi7ta
         vDJ78QE+hR5qCJ15rr+yckk+F3B2s6VuvVcBxACA4wFDxrgxQOWsxIGJzz6ueJO9Ctfa
         ByTg==
X-Gm-Message-State: APjAAAVaZJ52O/PbnjQzsRrnhXloq7sX6TPbpqmt8T+mfRn/cM7sz0jP
	mOcstNz5GdlEvd1awEuw2mA=
X-Google-Smtp-Source: APXvYqwigPmahE33rDC3+ENskq2GPsw1MI0auzLYsHhkeG3womCWzIoGZqMobelWItQ5iHoDZIFUSA==
X-Received: by 2002:a17:902:426:: with SMTP id 35mr1215253ple.192.1568658210077;
        Mon, 16 Sep 2019 11:23:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b60a:: with SMTP id b10ls135545pls.6.gmail; Mon, 16
 Sep 2019 11:23:29 -0700 (PDT)
X-Received: by 2002:a17:902:142:: with SMTP id 60mr1161489plb.155.1568658209772;
        Mon, 16 Sep 2019 11:23:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568658209; cv=none;
        d=google.com; s=arc-20160816;
        b=skTvCYR430LxaHA7IHamPlHeqqYYqP9MrQskT8PW1dlrpUu9gWTVhs+YQR6BD4Nuel
         2iV0qYDTmSxX2V8EOkbCvHN9SEM26eOZEHUznGmG9DjkmHaeUYb+7yY7iLpIGbEBcgwn
         /j5nFj1ZEKSWFC4bxmSuTUW3oepBjXct1a08xZyaIR+gTS8ATKkruaUHZuzSWmmtMEFw
         ttB9wVYSlA8IfYqAlIhdQzD9Og+c8vXPFeW/9nkSvfIeEMtMPsApF8Bcq4w2aQOQYEef
         DdCbQVJ33G6ev0pPyRTV7lEkY2D6IonE0+PxmJfiUHy1gqL3xdJDaU6SIkiN0lBdo0CD
         M9Pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=WMYGCUi8i134V7+ZPEsyqmKV5eMYB/wkGpGpllrk5Vs=;
        b=mGpH4YhUXS0MqG+En6FBQOviXeaK9WkfVSjK8U9vEyZ9VSvRxAujJpCFhGGIgFQQNR
         BJRnEbSDfoHbwyTkJNuP3cXElOWD574kZSkb0SfxZuFAPeTeEbxlM96aqK5kRPMPQoXT
         maQl1u+/7uoCPelsXZbNcK5Bzhy41It7kHnmngh0VN5VxbK5gSHKvDo2JISmRdCPc9OU
         1CRboqGdqpDJ40V78Z0xFn1AwKLsIRxHz4b+S5+i1bADlN8Zmce2pfE+R63NsEpjbAoy
         SnRgbAIYmFIV3wCMUfMZd5KpeDzlLkm+p5vt/VfVUMuLfCB21zWIxHbfae5+f1pF1RZr
         2SdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="QdNq/fhy";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id i4si5380pjw.2.2019.09.16.11.23.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Sep 2019 11:23:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id k1so252833pls.11
        for <clang-built-linux@googlegroups.com>; Mon, 16 Sep 2019 11:23:29 -0700 (PDT)
X-Received: by 2002:a17:902:8484:: with SMTP id c4mr1128265plo.223.1568658208993;
 Mon, 16 Sep 2019 11:23:28 -0700 (PDT)
MIME-Version: 1.0
References: <201909162331.KWpT2l4E%lkp@intel.com>
In-Reply-To: <201909162331.KWpT2l4E%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 16 Sep 2019 11:23:18 -0700
Message-ID: <CAKwvOdmya1-aOZKtDFAybdy-jNATt233w8isZj5VffXUbgKwtw@mail.gmail.com>
Subject: Re: [ribalda:unit-size-v5 9/9] drivers/media/v4l2-core/v4l2-ctrls.c:1559:10:
 error: passing 'struct v4l2_area' to parameter of incompatible type 'void *'
To: kbuild test robot <lkp@intel.com>, ribalda@kernel.org
Cc: kbuild@01.org, clang-built-linux <clang-built-linux@googlegroups.com>, kbuild-all@01.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="QdNq/fhy";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
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

Hi Ricardo,
Below is a report from 0day bot building w/ Clang. Can you please take
a look?  (sorry if this has already been reported to you).

On Mon, Sep 16, 2019 at 8:15 AM kbuild test robot <lkp@intel.com> wrote:
>
> CC: kbuild-all@01.org
> TO: Ricardo Ribalda Delgado <ribalda@kernel.org>
>
> tree:   https://github.com/ribalda/linux unit-size-v5
> head:   46878da5132517748c49a762490bcacea078d5a5
> commit: 46878da5132517748c49a762490bcacea078d5a5 [9/9] wip
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout 46878da5132517748c49a762490bcacea078d5a5
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
> >> drivers/media/v4l2-core/v4l2-ctrls.c:1559:10: error: passing 'struct v4l2_area' to parameter of incompatible type 'void *'
>                    memcpy(ptr.p_area[idx], ctrl->p_def.p_area, ctrl->elem_size);
>                           ^~~~~~~~~~~~~~~
>    arch/arm64/include/asm/string.h:35:27: note: passing argument to parameter here
>    extern void *memcpy(void *, const void *, __kernel_size_t);
>                              ^
> >> drivers/media/v4l2-core/v4l2-ctrls.c:2533:17: error: cannot assign to non-static data member 'p_def' with const-qualified type 'const union v4l2_ctrl_ptr'
>                    ctrl->p_def.p = data + tot_ctrl_size;
>                    ~~~~~~~~~~~~~ ^
>    include/media/v4l2-ctrls.h:259:28: note: non-static data member 'p_def' declared const here
>            const union v4l2_ctrl_ptr p_def;
>            ~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~
> >> drivers/media/v4l2-core/v4l2-ctrls.c:2535:11: error: passing 'const union v4l2_ctrl_ptr' to parameter of incompatible type 'void *'
>                            memcpy(ctrl->p_def, p_def, elem_size);
>                                   ^~~~~~~~~~~
>    arch/arm64/include/asm/string.h:35:27: note: passing argument to parameter here
>    extern void *memcpy(void *, const void *, __kernel_size_t);
>                              ^
>    3 errors generated.
>
> vim +1559 drivers/media/v4l2-core/v4l2-ctrls.c
>
>   1534
>   1535  static void std_init_compound(const struct v4l2_ctrl *ctrl, u32 idx,
>   1536                                union v4l2_ctrl_ptr ptr)
>   1537  {
>   1538          struct v4l2_ctrl_mpeg2_slice_params *p_mpeg2_slice_params;
>   1539          void *p = ptr.p + idx * ctrl->elem_size;
>   1540
>   1541          memset(p, 0, ctrl->elem_size);
>   1542
>   1543          /*
>   1544           * The cast is needed to get rid of a gcc warning complaining that
>   1545           * V4L2_CTRL_TYPE_MPEG2_SLICE_PARAMS is not part of the
>   1546           * v4l2_ctrl_type enum.
>   1547           */
>   1548          switch ((u32)ctrl->type) {
>   1549          case V4L2_CTRL_TYPE_MPEG2_SLICE_PARAMS:
>   1550                  p_mpeg2_slice_params = p;
>   1551                  /* 4:2:0 */
>   1552                  p_mpeg2_slice_params->sequence.chroma_format = 1;
>   1553                  /* interlaced top field */
>   1554                  p_mpeg2_slice_params->picture.picture_structure = 1;
>   1555                  p_mpeg2_slice_params->picture.picture_coding_type =
>   1556                                          V4L2_MPEG2_PICTURE_CODING_TYPE_I;
>   1557                  break;
>   1558          case V4L2_CTRL_TYPE_AREA:
> > 1559                  memcpy(ptr.p_area[idx], ctrl->p_def.p_area, ctrl->elem_size);
>   1560                  break;
>   1561          }
>   1562  }
>   1563
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmya1-aOZKtDFAybdy-jNATt233w8isZj5VffXUbgKwtw%40mail.gmail.com.
