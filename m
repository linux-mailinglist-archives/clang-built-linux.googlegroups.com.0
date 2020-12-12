Return-Path: <clang-built-linux+bncBDULZYNR2QMRB4WI2P7AKGQEQNKW7VI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 378272D8757
	for <lists+clang-built-linux@lfdr.de>; Sat, 12 Dec 2020 16:40:35 +0100 (CET)
Received: by mail-wm1-x338.google.com with SMTP id f187sf4523199wme.3
        for <lists+clang-built-linux@lfdr.de>; Sat, 12 Dec 2020 07:40:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607787635; cv=pass;
        d=google.com; s=arc-20160816;
        b=hjpwooqTmgKvCaKmuoM3isS/5v4fTLtTTpxdcve/6fJ6kJZFzniM71rFc2TT4vWz/6
         mGEDW8INo6Ocpud7HtdV4hErG1UP0Df0fZ+IKOGMPsvaxG7P0DNTKponREbvHR6f/s+k
         /Z3OBnFE1CAWQHPufRt5AT44a0nJqUvwFeeEXcXyOLBG2bNP61TYmBWijo6qjqvJs/tB
         kHzS5EGrN/oyUbnKARqR3tEzxdPFVzfaIstCE10HFppgBWY5EC/lNffKBm6+Zdkhlx4L
         zsb1jqEzRqltHq5cIJ3eu7NhcsitGifCAtnHx7tz3SCgaoill8ETp2xUA5nVcv91Y/Ol
         2Ogw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=8iq/XMI0M47sOnaXTrEV+JtPyysuUdj37JrBfOGBJ8w=;
        b=RAM9BHdDxTFnCmwtXObdJIExoNqSuzUoAV+ZtoQd+4SCA+CJblb4xPsz/gLYv6jdOk
         1wSPKB3jhic8Vgms0J+mmpjnoNVtCfBcDk9UlCjUkVWwrgUlVwLmHbNQ3CE4xRCZCcan
         a0AHflbEDnMAeHo1nqqr5K29OrHBHyblQRgW4pkyvXiHx+fqXq4HWcHLHH12JP+nhdWr
         YP7Bo7KofjahTOSKYE38GgLRa7QcF4dVLIu1oWD7jaw6OtqqTjKueXjTu5K4mRD7YCe7
         Wu87dfgmPQ/5JNpc3+AJiO8d26Tk5kHMM3QyMM226L4QEt2w2ghU+COv0Vl3n7N7futI
         hLdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QMnE2e6N;
       spf=pass (google.com: domain of festevam@gmail.com designates 2a00:1450:4864:20::132 as permitted sender) smtp.mailfrom=festevam@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8iq/XMI0M47sOnaXTrEV+JtPyysuUdj37JrBfOGBJ8w=;
        b=R+mFvFF+wAQG5mlprd7L4s1MOtj/QL3DChS5Sq1hK0QbPjPpikCnYVyiYbiUWSoe77
         tPM43YgW3vJBybEwf9OlD222sM/EptFs2CqcoaHw/Ue7BtcH7dVfGVw1l6cs1ifcecWD
         gQB0ABPIclJiBuH8P1e2mlRsNGxfCHbFvbeMrsN0dLfpqbKASQb3wIBMQmIJckmNbX/N
         uGv3qm/bFEHiV1up1A0kFRsqKlerPm1dAXCWDIzZ4kyO8M+0QCMWWNwFpshSBYm6MKCS
         WItxilqf37TjAbMz0uA977BXb1XmQZLy7hyI6c+0VlqTkfbDd0ZO5MTsUTHP+CedTVBJ
         Pahg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8iq/XMI0M47sOnaXTrEV+JtPyysuUdj37JrBfOGBJ8w=;
        b=LaJRNDgXo1ILEk+EbTZh52Z92dSVLnO3nqs4LnfM+J7eQtYQZqSNOf0sgeKK7VK9Xx
         oGSUWXefv03qa4A2JeLddLxYeZgJNxHHEp1EU85cas0tBTeZLnzA7sGUmyofkaQ9gs7s
         Yyuc/0qG6FHJ2Y0Nea4D1HnceGywEqDz3Q2kxSB4GtTSts+zgLdSuDG6kLd1BSuWlh+S
         9ZLBgEoHOuWNYP1ambqastxq92gYl+wouxW8OAyjuiMvy9BwRGRTUHrne3FcqYQlJadR
         2tyoCHkXll+y1ghVaHwH9lg5p9NWEdQAM+Qe/KbKFLnhVb72LHcB976vDgcAQkMs65iN
         8Mkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8iq/XMI0M47sOnaXTrEV+JtPyysuUdj37JrBfOGBJ8w=;
        b=aPCogKxtxSb0XwU0xN/sXGjFGbaW5MGp0q2sKyC65tJSBZoxHSnu4dZHFFcqiByWT7
         VvpVHWQXXmunxn+PWeyxrj2jni+hDMj9h8gnaMX/cdfqp0V4SFx5OJ0vdBAoO7o/1MG+
         obmlXfGJzcUS2LAepCshKrQumnavkzS47KI+g1icFLU3zNIwgl/sMKZMP96KfA8WYuLJ
         gyk14gESkGv+Xz3/GMrp0nqyLbWMFiW2zLtAewXnry72NBSliCxhwqtH/j/D+Kh2uE9U
         H8VO2+KnVHQu2RFiVSh2NjvS3Cb2rm4E29SqQK1LJSDl65XVart6FXTGSddv7Tdypt3b
         9yEA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533p7+jl1TLRa6+BpWD/C011HJF2H7EFbnbo+XG0DtZ3eW7LNcaX
	QSv2k6dBzVwnbU4yru/P9b8=
X-Google-Smtp-Source: ABdhPJwP+zoKf3BfR1KljF484vyqzBoZdfZXq+IMy5iE8cWI77EapaGGj32sjnfP8YnarKF7hupnMw==
X-Received: by 2002:adf:9b98:: with SMTP id d24mr19800458wrc.240.1607787634867;
        Sat, 12 Dec 2020 07:40:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:5543:: with SMTP id g3ls7051791wrw.0.gmail; Sat, 12 Dec
 2020 07:40:34 -0800 (PST)
X-Received: by 2002:adf:ebc5:: with SMTP id v5mr19556016wrn.392.1607787634101;
        Sat, 12 Dec 2020 07:40:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607787634; cv=none;
        d=google.com; s=arc-20160816;
        b=uMzdpmP+bGzffDOFuXSOkXlqfy4VEPbF5jAoOKSFpt1+1dqpPDU9xCx9TPemlY+yQo
         xK+FfOwgZIvdwicoILEtN99GvxftOzgzqIJBAlinLvT4ZcX04wA3GxCrgbiVX78cJ1ri
         iqNOx3MRWCjCGTNt/DCMI2rW2Mx1/7j+hkQCUujrMOgtM95PsuFQB9taGFEIA+fr7AA4
         o4iC5jKbvaj/cCVukgkvrnejZbqsC+PqiCW7abjVQblb82e96gGFoZVZZm75E2OQ/luH
         oicw8xYvD2Pq+0MUqSWU47qqqLAeHiNIHDTKWrgmbZV0WnHfffGjQjAzrCWS0anmlTQE
         4nmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=OD9KwxKTMuuboae4UQkqkFVGnvzi23O6J0ZwMpP3sSQ=;
        b=aJiIAltxzhObWHIYsuIfGgarI+RDICwBVKQWNPg0aChqUqr0V/VQboIz2qABgdWS0h
         2X0hYbvOAnLG5jdML2VKeW7J0GF2qaaO+td9tMKTNTR9b8XFqx6tZKchyg9L8ZgtDTg5
         MBeMn5tOJe0qIAXnhDOLStOetHvFS2phVXNu6Ek80x1IX205bEcX/M+Z3Iu5ZTCKAJj6
         b/xwZb06FV9DzJs8+dUs7wYsw3LaADDDL1Vf5HJDBRrFx6WydGsIP0HSZCrQ9u07Ials
         apZLVBjmsbcBsaBfZIGdL2GPi5c/hxX3Dhx+tw2dy6horciFPuJUKYU4zRkUSv7E27Tw
         BkcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QMnE2e6N;
       spf=pass (google.com: domain of festevam@gmail.com designates 2a00:1450:4864:20::132 as permitted sender) smtp.mailfrom=festevam@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com. [2a00:1450:4864:20::132])
        by gmr-mx.google.com with ESMTPS id 10si473293wml.0.2020.12.12.07.40.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Dec 2020 07:40:34 -0800 (PST)
Received-SPF: pass (google.com: domain of festevam@gmail.com designates 2a00:1450:4864:20::132 as permitted sender) client-ip=2a00:1450:4864:20::132;
Received: by mail-lf1-x132.google.com with SMTP id o17so16194605lfg.4
        for <clang-built-linux@googlegroups.com>; Sat, 12 Dec 2020 07:40:34 -0800 (PST)
X-Received: by 2002:a2e:8750:: with SMTP id q16mr7317171ljj.53.1607787633585;
 Sat, 12 Dec 2020 07:40:33 -0800 (PST)
MIME-Version: 1.0
References: <202012112150.CCpStiwY-lkp@intel.com> <CAFqt6zb8O+yvwGAcv-n1mHJgWrCpOBL2XQZz4CTw_7NqDZ7VDg@mail.gmail.com>
In-Reply-To: <CAFqt6zb8O+yvwGAcv-n1mHJgWrCpOBL2XQZz4CTw_7NqDZ7VDg@mail.gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Sat, 12 Dec 2020 12:40:22 -0300
Message-ID: <CAOMZO5AE6sxRrZiLws5LJ3-iVpGFx+eK=8N38863g2hG-Jmn=w@mail.gmail.com>
Subject: Re: [linux-next:master 6953/13205] drivers/dma/imx-dma.c:1048:20:
 warning: cast to smaller integer type 'enum imx_dma_type' from 'const void
To: Souptick Joarder <jrdr.linux@gmail.com>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux@googlegroups.com, 
	Linux Memory Management List <linux-mm@kvack.org>, Vinod Koul <vkoul@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: festevam@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=QMnE2e6N;       spf=pass
 (google.com: domain of festevam@gmail.com designates 2a00:1450:4864:20::132
 as permitted sender) smtp.mailfrom=festevam@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Dec 11, 2020 at 11:54 AM Souptick Joarder <jrdr.linux@gmail.com> wrote:

> of_device_get_match_data() returns void * which is assigned to enum
> imx_dma_type type without extracting
> the value. Anything wrong with the previous assignment ?

The driver data is now passed via:
imxdma->devtype = (enum imx_dma_type)of_device_get_match_data(&pdev->dev);

There was nothing wrong with the previous assignment.

The original driver used to run on non-DT platforms. Now it only runs
on DT-platforms, which means we no longer need the platform data
structure.

Please note that this a W=1 clang warning. gcc does not complain about it.

Not sure how to make clang happy in this case.

The (enum ....)of_device_get_match_data() cast is widely used in the
kernel, so this is not specific usage in this driver.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAOMZO5AE6sxRrZiLws5LJ3-iVpGFx%2BeK%3D8N38863g2hG-Jmn%3Dw%40mail.gmail.com.
