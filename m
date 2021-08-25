Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJEZTOEQMGQEC7JZOLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53f.google.com (mail-ed1-x53f.google.com [IPv6:2a00:1450:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 365D43F7EDF
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 01:05:14 +0200 (CEST)
Received: by mail-ed1-x53f.google.com with SMTP id p2-20020a50c9420000b02903a12bbba1ebsf493175edh.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 16:05:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629932709; cv=pass;
        d=google.com; s=arc-20160816;
        b=jUHnrcIVEQ7iLt0S63g8jNjVvsVO8nSFIEajBMBUg5zzJKwWcKIirh8CHW8GCBnve6
         uCU7YKacX17Bgj4BV/mzWyx2nN4rZZs5pmHoDtAktT35EcD69UeAxUwFrr3iy2g9dHoL
         BNe8OOXA/gPU3sWTKSKNJr58/rqqyfTT17p5QfRnCeF8bEtrD4Gq8TLf5aCNuhoQlyn2
         p6BncqLi3Jnth2XQNKw4HnpKi6z2LWkeYN2y1Xu5SaaFeVWQkZCNzytC96oVXEhU98Pp
         l4pjstBlJjojyikixzV+FJR4I9KLGROh4SgKUKlRJtmkp9MZBmFRqjQwUTuRGP2fQE6Q
         ZEmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=IQ6JJrb10wgNbof4Mf1JLMpyIlCjYJYgW76sfmbRJPw=;
        b=LbVGwP9rKyR1TnX6zFpzzdfaOPsbmmJ6muqLP4+cBrxYyYRXh6ISbo5so6Vda5kSi1
         ttxrz9TWFrRFGXqt6fpfdfXHjVkAccnuqI4hRhXXQ099zQalG+4/BpjziMZvXBPzZO5Z
         zYDWlmuLdt1KLGlkCTyWt82dKqfcvXUioHda2lGfxlL0GRtbFjPqLIOzZUplQ3KpiiWM
         YL1t8zHjqtr5HxbUaF44TJGz9jCWKGNbbOf834d2zQOdEp8dqb2d6D7kZrcpDtYFZD2J
         MDEbtIl14tfrb8zeMiGYwSP2Jr2HMtHO7P0NcOGJ0hkX8UO+rxwyUaFGJ9QcVSRm0EU3
         dWtg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="g/m4ReYE";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IQ6JJrb10wgNbof4Mf1JLMpyIlCjYJYgW76sfmbRJPw=;
        b=skMu6ex6vj0x1jOP2rQKQrNjblMh52SPfv/v91Zpm1ZpbgSgwPZuXuU6wPgaSGgLZG
         CyUQWvpZuu+wXORD0RRFVVyCi0TQqYRn5P5GXdqTrKlcTVYNdMvkSbqUO+SFe7Iz/fmq
         YLL/vTYBLTgPSC/7z/YZD6ufz3EdmnlZvMgHem2er1KB8H9blM+08IXgwHNI3dyuL4/8
         E5RSOTavGPmwN6SaM/lMJr4qjTkJjvns1bEUsf4Dz4z5b16jVBjUYtrPnE9X43dI+aJc
         KP8hiJ3ho+59gde35mGPWJKYGzAe1iSqTl9JiYLvdpwnbyaDyNP7PxyDJAjR3O7qLSb0
         zgWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IQ6JJrb10wgNbof4Mf1JLMpyIlCjYJYgW76sfmbRJPw=;
        b=MKTD627A69UvoScH7RTKF/Pp0CgFclemqAnWToYAzsSK7U+Rw42HYCoYdNSzp1enB0
         13IVOhAQcPlmPoRx8ON4U3Ktpo1oLYozzieeQmHKJObrwbYLLK19uJFBpYb+jgDW/IX8
         3goc2Rf70xg7iGnYHcomcyrWm95to4treXpcFCg0NEiCtWxkiXyy3Xv0F53o2JxH3HXo
         6pF5JgISvLVpMgOE9jdBJbuvXmVQIcYtqT4DQKtwm+49M8tbxWLh9bkifRkKYZQ1FbLM
         q0pf9vVGYy6WAtbOhrAXwH6e4ao8qvwfzrolVKK0hH0BSErhDQFzARJGPrNBFpQbVB4J
         HM1g==
X-Gm-Message-State: AOAM5306oSfrB+f9OlZ6g7uptNAgDui/0//FeTCVUvi570PR66AwluSo
	s3AuLVKEul0o2G044fiHlDk=
X-Google-Smtp-Source: ABdhPJx1HXyZtX5lEWwO1D22Io6ucDZeW9SdH+z3F8ywH6pfnJv+MRpyrjZrU+2AAD9JmWUN5C69vA==
X-Received: by 2002:a17:906:12c6:: with SMTP id l6mr1070730ejb.373.1629932708925;
        Wed, 25 Aug 2021 16:05:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:7047:: with SMTP id r7ls1861835ejj.5.gmail; Wed, 25
 Aug 2021 16:05:08 -0700 (PDT)
X-Received: by 2002:a17:906:d04f:: with SMTP id bo15mr1025738ejb.309.1629932708023;
        Wed, 25 Aug 2021 16:05:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629932708; cv=none;
        d=google.com; s=arc-20160816;
        b=AxYIUtF8mBXCkXQQVomDXHknK2ABvco/xvj9NUMkcbgVDEku80xN4mNOz7pmFlE+Ow
         mOUjbTobwkg1wQWRihu8P5TvR9syp+dpCe0vYHCYRr7KKWNd/ReOfnqYRgoCCNmK+gyG
         hjWZJ+N/X60bwpc8KbgEptYG5yfRXrtKlI6JrFF/nIdQY0tcJ4ua+WYDPy55KWZkkvA1
         GXcCcNMD9K+y0+ioSJwJHqtAZrpZILqVUSKdgMER9y7vm5QCr1DJ/kyvWFC+CMx2fo+N
         6e6qnlaShgroyDQvAcFGaKHq4m/zYTpJ63O9MFxLCd0YY3kfn5NlN6XbA3YyvC/3qT0t
         USlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=5dYfTfFoEwQ2ICJl8SbDnguBvvNuF7k4gO0Z6GR4+UM=;
        b=C5EWtYt+unIru2B+uBSg0sJ17foh7XC+17F3EWHE5qC3zmAJ2/ZTSA+Uv8+WkJxo4m
         x/aZBpGSl4l8uU11dlAIw4nYY/4osLZYCJDtSw70Z4p6vVkhdJNjMocrhdSrswxn9P72
         +WZf0qbzQyku9b/rWnN3K4dRLfwglTuVYxlcg0/OAmz2h6Ac+h5ukOxmTyRPJuCWukk8
         ygRANYbmTOq1StZ4WANksBtaG6NIhMMc+7Xenr1G+5V0Sho/OxXaD/0VRDdSCoc2xdLw
         N7sGj+Ks1bqBtfrPxZrm3a2xLSmFMJsry2Qg5w2O28y6tYLMZNI4MuuMhW5ct800JCdu
         oY6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="g/m4ReYE";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com. [2a00:1450:4864:20::131])
        by gmr-mx.google.com with ESMTPS id x1si19982edr.0.2021.08.25.16.05.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Aug 2021 16:05:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131 as permitted sender) client-ip=2a00:1450:4864:20::131;
Received: by mail-lf1-x131.google.com with SMTP id g13so2244064lfj.12
        for <clang-built-linux@googlegroups.com>; Wed, 25 Aug 2021 16:05:07 -0700 (PDT)
X-Received: by 2002:a19:7117:: with SMTP id m23mr374169lfc.73.1629932707242;
 Wed, 25 Aug 2021 16:05:07 -0700 (PDT)
MIME-Version: 1.0
References: <202108241301.UdSncTEq-lkp@intel.com> <77ba5fc1-2bfa-0e9f-525c-dc260642c7ab@linux.intel.com>
In-Reply-To: <77ba5fc1-2bfa-0e9f-525c-dc260642c7ab@linux.intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 25 Aug 2021 16:04:56 -0700
Message-ID: <CAKwvOdm9-O=qcaexQ1+quRCXg6HZsABhDm=XQTfD841FL2m4Zg@mail.gmail.com>
Subject: Re: sound/soc/sof/intel/hda-dai.c:265:22: warning: Value stored to
 'sdev' during its initialization is never read [clang-analyzer-deadcode.DeadStores]
To: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Cc: kernel test robot <lkp@intel.com>, clang-built-linux@googlegroups.com, 
	kbuild-all@lists.01.org, linux-kernel@vger.kernel.org, 
	Takashi Iwai <tiwai@suse.de>, Kai Vehmanen <kai.vehmanen@linux.intel.com>, 
	Guennadi Liakhovetski <guennadi.liakhovetski@linux.intel.com>, Bard Liao <bard.liao@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="g/m4ReYE";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131
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

On Tue, Aug 24, 2021 at 9:53 AM Pierre-Louis Bossart
<pierre-louis.bossart@linux.intel.com> wrote:
>
> Thanks for the report, I am not sure it's a real issue?
> >>> sound/soc/sof/intel/hda-dai.c:265:22: warning: Value stored to 'sdev' during its initialization is never read [clang-analyzer-deadcode.DeadStores]
> >            struct snd_sof_dev *sdev =
> >                                ^~~~
> >    sound/soc/sof/intel/hda-dai.c:265:22: note: Value stored to 'sdev' during its initialization is never read
> >            struct snd_sof_dev *sdev =
> >                                ^~~~
> > fdd961e37e47f2 Keyon Jie         2019-04-12  259
> > fdd961e37e47f2 Keyon Jie         2019-04-12  260  static int hda_link_pcm_prepare(struct snd_pcm_substream *substream,
> > fdd961e37e47f2 Keyon Jie         2019-04-12  261                              struct snd_soc_dai *dai)
> > fdd961e37e47f2 Keyon Jie         2019-04-12  262  {
> > ed3baacd76baa0 Ranjani Sridharan 2019-04-30  263      struct hdac_ext_stream *link_dev =
> > ed3baacd76baa0 Ranjani Sridharan 2019-04-30  264                              snd_soc_dai_get_dma_data(dai, substream);
> > fdd961e37e47f2 Keyon Jie         2019-04-12 @265      struct snd_sof_dev *sdev =
> > fdd961e37e47f2 Keyon Jie         2019-04-12  266                              snd_soc_component_get_drvdata(dai->component);
> > 1205300af9dba3 Kuninori Morimoto 2020-07-20  267      struct snd_soc_pcm_runtime *rtd = asoc_substream_to_rtd(substream);
> > fdd961e37e47f2 Keyon Jie         2019-04-12  268      int stream = substream->stream;
> > fdd961e37e47f2 Keyon Jie         2019-04-12  269
> > a3ebccb52efdfb Kai Vehmanen      2019-07-22  270      if (link_dev->link_prepared)
> > fdd961e37e47f2 Keyon Jie         2019-04-12  271              return 0;
> > fdd961e37e47f2 Keyon Jie         2019-04-12  272
> > ed3baacd76baa0 Ranjani Sridharan 2019-04-30  273      dev_dbg(sdev->dev, "hda: prepare stream dir %d\n", substream->stream);
> > fdd961e37e47f2 Keyon Jie         2019-04-12  274
> > fdd961e37e47f2 Keyon Jie         2019-04-12  275      return hda_link_hw_params(substream, &rtd->dpcm[stream].hw_params,
> > fdd961e37e47f2 Keyon Jie         2019-04-12  276                                dai);
> > fdd961e37e47f2 Keyon Jie         2019-04-12  277  }
> > fdd961e37e47f2 Keyon Jie         2019-04-12  278
>
> The sdev variable is used in the dev_dbg() log, this looks legit to me?

Perhaps that depends on a config that was not set? The log does say
this is a randconfig build.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm9-O%3DqcaexQ1%2BquRCXg6HZsABhDm%3DXQTfD841FL2m4Zg%40mail.gmail.com.
