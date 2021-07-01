Return-Path: <clang-built-linux+bncBDOMDVMI5MBRBY7O66DAMGQE4A6X3DI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id EDBA13B954A
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Jul 2021 19:12:03 +0200 (CEST)
Received: by mail-wm1-x33b.google.com with SMTP id p3-20020a05600c3583b02901f55d71e34asf1307822wmq.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Jul 2021 10:12:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625159523; cv=pass;
        d=google.com; s=arc-20160816;
        b=qt1MUmpMCf1ko15jGfBw6AMNeh5K3bIHkWw/OXr+mcjR4fa0YzddbSGRyv9mCR+nfy
         8gXaDfs7uYFG6EYq4DW0GpM5so+jM7D0Dobe/X/KsPy4mIFtfZScDTkcJQcGJaUlUzyh
         u95bzf57Nufd2lsq8m32902WtF1Z1jkTNIb+pU93rn8EX2zL0+QYacrnMcm5q5MN+EIO
         pmOhFWtSLuk+k5ke14QmVVZY0vzrw3upaMOTE84uFbVtdTauKDZW8XjH2lrpG1Cs7chx
         dFPBEZhyqNOgkI7+P49KooxEZawyvRw80araC8IU3EFJLThBPB1NBrepamHlD5J2aK5C
         HhpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:subject:cc:to:from:message-id:date:sender
         :dkim-signature;
        bh=9ASQ/0Xgcp4hVDwM/BLERPskdWjrprnSNVqKxBQ7eTw=;
        b=Q+JD/ko2DvqHdQRPKk4bedntT2hMay6W3Zueu1YOf6C5RMIZuXiS2etdD4HhZsQ2dt
         iZlGBucwfmvYr8I39T7P3JkrM+kjAeFZztmKh1yCrFgqzKKvEUCpDzKnB1WM/iIiISv/
         9319NgJU1bb7SXSoUGjQu/iPF4pW4iqnLwCPujhgOUYuZ8hmZVX1PZcd5LYBx6AG7c6s
         2bj4YaHAoWq6ABV8gA8TYN0vs9bAAxlHXj4dXel550eRM545wi+W6OkGbwV+BbsePZDA
         JZ620ctJHzQSVIJTKGcIH+JvNsBgZQCAukv1CAaTi2ePfCurwaIaeGYcZ7iOIguyUhnz
         FJow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=Jzy8lKG3;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       spf=pass (google.com: domain of tiwai@suse.de designates 195.135.220.29 as permitted sender) smtp.mailfrom=tiwai@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:from:to:cc:subject:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9ASQ/0Xgcp4hVDwM/BLERPskdWjrprnSNVqKxBQ7eTw=;
        b=nVoi8bYaxRJz8m0lCqoAYX1j7Q6YYv2erTurLqz1ieGXvdoSLlkH8hpCo7HicWXIQ3
         OUb/CEcF10GajNQYeg/p9D0xAGxTDPmas7gvOeUUhRiy1b1+X9G3L5nlsD1GuFyev5na
         2lu+vkAIHK+bRUQgC9e9CERrF5X7Y1eqyf2uapOwqpK4EUobFwXVw6x1VfbSZ4OVg9hE
         v/VvKIjHn6LtFBG0aV+8CWBnkWXrgdLdyMSSzXR0u27kvYWpx8KLlZfxL9vAMp/ODH0c
         hKnOqCojtTifLDqu4jdLNt6C//T2grp0J8xQL54MK37KCCuR2d5kg32sWpnqBzHkL4eT
         qHgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:from:to:cc:subject
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9ASQ/0Xgcp4hVDwM/BLERPskdWjrprnSNVqKxBQ7eTw=;
        b=sVVpfu3Fu8yTE4jaJZ4Qc5rd6V8qungXbDnF+5zo2cKXSxxTpMiCGXtZwnsvKWy574
         8rKBf4YdATtnyTOh6FTsVEOx0ynB/1yxf8H2nOyPR9d1C5tirD6jZAJjRO50TWrdt7x3
         suEZWl5NKcccrZEnZbgJfNX01kIzaZ8H3+emwu5cgX1Im6giirW5jIT6+IPtW3wzzEL5
         r2pvN1ALdUMWRWQokeJZ+mFP9hIKaeHbGtgJL3YMo8zOWHnObzQeZ0im/uArX78kyYeW
         +1aOOwn/UMmEnhKY0nckoHacziETtSfXCGhczqhxxNzwk++U/zEfMPcgfUKoa0sA4qqV
         S3lg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Fm8JMnnKF66Ek3Z8cADMgHP/nKogCHAixR03+QETrfLywsJCm
	zGmExt/gIlNXUIaTmW7blQI=
X-Google-Smtp-Source: ABdhPJwp8kaXvyot7jpLSUrVSw7wag7jqVr7H07rdwyqV1y2o2Gp1EZ8R3RVdscXB24PT+9SW21THQ==
X-Received: by 2002:a05:6000:186:: with SMTP id p6mr856549wrx.360.1625159523701;
        Thu, 01 Jul 2021 10:12:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:228a:: with SMTP id 10ls739835wmf.1.gmail; Thu, 01
 Jul 2021 10:12:02 -0700 (PDT)
X-Received: by 2002:a1c:8097:: with SMTP id b145mr11791378wmd.54.1625159522871;
        Thu, 01 Jul 2021 10:12:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625159522; cv=none;
        d=google.com; s=arc-20160816;
        b=ccHvR/0APo7/Va0zIQ/G4Hwdq0ZUaBV9lH2L98WbufBjB+JVzgJooEMw7Zz4yhou45
         yQRkVaSTroUIBtvQHgIflW97GQvYeZzEYxT0ru6cFzRc2Aref3VJpOWpid8mg5Al/YpV
         Jo8wpApnka9FGKtObbl/JoTC7NLyGc67AHzXfZviQ+Z934SBDhDh3mdb4fMpWqfOCpuO
         eLuo5AKqfHyyZ/ZYPtXeVlrVMB7PKjIMWZdlxgvzcaVs33/exvFZsaccKCin7DcDXlPs
         pTzzX3V58G7E4bAusxf4k6Wgdk2vKXmNQxaf8p0aPnXJh1t+AcvUXJu6CiZIy0jDlPVq
         jBxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:in-reply-to:subject:cc:to:from
         :message-id:date:dkim-signature:dkim-signature;
        bh=3XpfyVHUOlWrv6SQQLovtw4OceYZ9xPFRnfZZ4hsEpA=;
        b=vacFSePn22HlzFY0M3sAsePL0dWL4pSIXT0ZXp87bAZmHBzCsOQfeGC3ngnki1UWUQ
         yZJ2cLQM7Wxh7+IJ3gcIzpFKUhkTXEM+plEmwtCKpkbPqfPcEr2mRahCwwcCoyg2XtHb
         QBCAm2nmDL3FN1qqMcSgZ1YP16mqt951/bxJN9xvcitgnXSNfd9JVEk/GsKYYxf2foqd
         +bHgqy7AXeyt20YeIezlFG2887+WUkNYAhrFumCTahbbipGHSK6xRV9tsksGI+Dudzv+
         j5Hc2Oix22y4WsAoCuZQW9sCTRatC7cp0TsW/RQF7nMI9wuMRyf2r/5aJwYN9fzZ7Sl1
         VKqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=Jzy8lKG3;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       spf=pass (google.com: domain of tiwai@suse.de designates 195.135.220.29 as permitted sender) smtp.mailfrom=tiwai@suse.de
Received: from smtp-out2.suse.de (smtp-out2.suse.de. [195.135.220.29])
        by gmr-mx.google.com with ESMTPS id o17si25165wrp.4.2021.07.01.10.12.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Jul 2021 10:12:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of tiwai@suse.de designates 195.135.220.29 as permitted sender) client-ip=195.135.220.29;
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
	by smtp-out2.suse.de (Postfix) with ESMTP id 8A0AF204FE;
	Thu,  1 Jul 2021 17:12:02 +0000 (UTC)
Received: from alsa1.suse.de (alsa1.suse.de [10.160.4.42])
	by relay2.suse.de (Postfix) with ESMTP id EBEF9A3B8F;
	Thu,  1 Jul 2021 17:12:01 +0000 (UTC)
Date: Thu, 01 Jul 2021 19:12:01 +0200
Message-ID: <s5hfswyhsbi.wl-tiwai@suse.de>
From: Takashi Iwai <tiwai@suse.de>
To: Nathan Chancellor <nathan@kernel.org>
Cc: "Geoffrey D. Bennett" <g@b4.vu>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	clang-built-linux@googlegroups.com,
	alsa-devel@alsa-project.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5] ALSA: usb-audio: scarlett2: Fix for loop increment in scarlett2_usb_get_config
In-Reply-To: <20210627051202.1888250-1-nathan@kernel.org>
References: <20210625202604.GB23780@m.b4.vu>
	<20210627051202.1888250-1-nathan@kernel.org>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI/1.14.6 (Maruoka)
 FLIM/1.14.9 (=?UTF-8?B?R29qxY0=?=) APEL/10.8 Emacs/25.3
 (x86_64-suse-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI 1.14.6 - "Maruoka")
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tiwai@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=Jzy8lKG3;       dkim=neutral
 (no key) header.i=@suse.de header.s=susede2_ed25519;       spf=pass
 (google.com: domain of tiwai@suse.de designates 195.135.220.29 as permitted
 sender) smtp.mailfrom=tiwai@suse.de
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

On Sun, 27 Jun 2021 07:12:03 +0200,
Nathan Chancellor wrote:
> 
> Clang warns:
> 
> sound/usb/mixer_scarlett_gen2.c:1189:32: warning: expression result
> unused [-Wunused-value]
>                         for (i = 0; i < count; i++, (u16 *)buf++)
>                                                     ^      ~~~~~
> 1 warning generated.
> 
> It appears the intention was to cast the void pointer to a u16 pointer
> so that the data could be iterated through like an array of u16 values.
> However, the cast happens after the increment because a cast is an
> rvalue, whereas the post-increment operator only works on lvalues, so
> the loop does not iterate as expected. This is not a bug in practice
> because count is not greater than one at the moment but this could
> change in the future so this should be fixed.
> 
> Replace the cast with a temporary variable of the proper type, which is
> less error prone and fixes the iteration. Do the same thing for the
> 'u8 *' below this if block.
> 
> Fixes: ac34df733d2d ("ALSA: usb-audio: scarlett2: Update get_config to do endian conversion")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1408
> Acked-by: Geoffrey D. Bennett <g@b4.vu>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---
> 
> v1 -> v2:
> 
> * Use temporary variables of proper type rather than casting, as
>   requested by Takashi.
> 
> * Mention that there is not a bug at the moment per Geoffrey's comment.
> 
> v2 -> v3:
> 
> * Restrict scope of buf_16 more, as requested by Geoffrey.
> 
> * Add Geoffrey's ack.
> 
> v3 -> v4:
> 
> * Fix stray newline added below
> 
>   if (config_item->size >= 8) {
> 
>   leftover from buf_16's declaration.
> 
> v4 -> v5 (or how many times does it take Nathan to get a patch right):
> 
> * Re-add note about no bug that was dropped in v3 by accident, as
>   noticed by Geoffrey. My apologies for the multiple revisions.

Thanks, applied now.


Takashi

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/s5hfswyhsbi.wl-tiwai%40suse.de.
