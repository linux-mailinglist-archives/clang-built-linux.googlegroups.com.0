Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBFOFUODAMGQE3FF2R2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 58DCA3A8778
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Jun 2021 19:25:43 +0200 (CEST)
Received: by mail-ot1-x339.google.com with SMTP id k11-20020a056830242bb0290400324955afsf9864542ots.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Jun 2021 10:25:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623777942; cv=pass;
        d=google.com; s=arc-20160816;
        b=Xvq3/crHR9n2zxzUPsiZRh3orgOci8jQda1MqMV3J0IUoDe7ltrhQrGjejAE4H/dYD
         DkMSr+4wnEnfDjPK0tbK/6H6opo11mCTWgIl3vB6LESlhkZX7uOeQVYxsJNO9O8/GKdp
         1Fr4OUrG0RnQh1oTRYgQFHYU/YiwgPqfBRw53oIvUsCBI2qrMg3t00ybDx2tcvCZYcTc
         Mr6/GE7sLghRW2mF9e6qDU/qFJZodkUoNR9Rjtr0SsF71p6splQp9FdmEaB/SJS4NJDd
         OIG+XGgaKdKrBWq3/zwRnVZvWTtOc6IJLBT/wyl8vGI2i14+s137+HO9ZxYNVlGJOC7K
         cRtw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=NpwCM+w6VFM4qluo/3Gqku6dk8o+VqBiw7VYCLpm7mI=;
        b=vqQlrruDKqr08I8mcE41pieLTG4igdR4N92PRQzoGsjqbzbkzyl4A+MIjvu3PFjunv
         RO5BmEOZgnvhvnzdTHN+DeajDAeq7th5ZLEgfTt33Nb9ZvyuAZleg5SIcZYjL4SjcL4S
         Uv16vz72mceZOqGKUwtj/vO5kfW7zjJTpUyZtJP18/W7bV+PGkXXcAq2SRnThuv9HL1g
         SEP5Z9Av/2fMrb/lRy0ra4oqnUrgdufFwjXTAHT/O0h2r62hh73L5OJndhXvnl65oVIq
         lZuZbCdgOkk52NFX/oNgtqdcAyUS6F9RMAWSyRyBNM1yobxzkrKyQ7Wji6IahtzO3INP
         psYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Y4qkUho5;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NpwCM+w6VFM4qluo/3Gqku6dk8o+VqBiw7VYCLpm7mI=;
        b=MDVGOZ3H5c3VZdVuuw/Y9UgK5JN1CVjhACzxscbMCIkf8tnZsm+zV9ywbL/6Q6mAP3
         CNvD5Ebsrbg7XnK552qL1xLGLheg1EnAtXyucd0pYjfkXiMS/Kjyqklr+AAa5t05Iecl
         Y1PY2EYZdB3EtNiR/ANEhKb7jgT1dFG4MPdtvaxtW76oZJ7g6s3n3v66leaZUu5kmAIk
         ySG7Ayey0XHHbQKl0zXg22MBIlZ3g0/Dug/TdMMRtOPyeO6yp0n0S+lCWqSQ6dGHz3x7
         hwRi48/O+rEya+X8c0wV6v2GFVKWUBtRGWYuFk0r404orhctfxnEtrjQI8St/TANkhsE
         OB9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NpwCM+w6VFM4qluo/3Gqku6dk8o+VqBiw7VYCLpm7mI=;
        b=UZTjRfi55Va6uzCydwcFYi65GBk7UJnXvEC0QM6p1Htf8MWmMlRu0ANbKG92sSl8o2
         GxURv3py5gLGw4pl78TdcA0D+UTNmNIM6a/NIBpoT1MHXpTfmDqJVyxr2vl19ZRtM5/F
         asAPv0yUL5SxkBEc57Wy9wlbDiubo/lpjEd6pqly1p1AH0mWOPKeHKNhzK38BLot8aDT
         VizilKpZuAJ5xVg1pjZxcIInzd9u8Aoz9ByXsLBydj3njUZecXefJep+edQnW/F/72xf
         r7H3R648FSCPniI7W6OuQsiQxTphLZKdDVZh/SkiSk16/8eETcPHiCnXpQW2Fk9PURiG
         hoig==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530qGVL+sLJS3EMW1DcCbmmFFYosPmfVriqkfVX1HmTJjSoiydgH
	TTc0hUtwViCO7Os4TCSXcJ0=
X-Google-Smtp-Source: ABdhPJwDozpyWJ45jhAbfYLdvCrG6XKLNkzrxQkbqpOl4FFVi2Oay2QheizdchNt7fab+/cxiAY/fA==
X-Received: by 2002:a4a:3904:: with SMTP id m4mr219304ooa.61.1623777941999;
        Tue, 15 Jun 2021 10:25:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:4d16:: with SMTP id n22ls7775994otf.11.gmail; Tue, 15
 Jun 2021 10:25:41 -0700 (PDT)
X-Received: by 2002:a9d:748b:: with SMTP id t11mr300726otk.35.1623777941677;
        Tue, 15 Jun 2021 10:25:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623777941; cv=none;
        d=google.com; s=arc-20160816;
        b=jYn7Bn529an3apM7TnQXiDEShwIa77D11BA0F3MkXpIxibeN71OTeCKi8GbB6eIh6o
         l8EQGpJRiIn40MK519+UkZXwrOC/jMlGF2Gk4jJjf7SyGqvbm881nBqpeuQzeh1cRqDl
         4V4N8jb209eFkTAXadGj3/jTSl6sVaDsSx3c05vPki8lFthEobf+EXIWhCIV+3DM2qa1
         eDBs0F3DX9bQACiY68XjllOpdW5nOFxrDSgf34HCFrwncUWPO3ZPS7jgyXsabOJdlj2o
         TlhfbqI9QaDItz9+5zU0bkCHEeR/E9z1gyYQB9TFMbE6SPv/3Yu3FG1YjY1FR8jxv3az
         8GAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=1xqKdYpZmwwE/q5BP48rk2uybPeoHi0VB/VCSt5P+ZI=;
        b=YKf32IeW3vyaEQpeZc5kEPKsMdpSZqhK/E2Y7FCD/mjn4FDKNaWifHaTZ427o2wz9X
         6xZq78c5KA4UYUPSD8KDsxmZKgpR7hV1XR8X3MHNaETvwVfKY91FTtI16uckHapBoC0v
         49g5womt5zSMSt+sNND2l6k8kfenwTRsAR+2PEflCfNIeSIND0/wAoHEGdqCE6CM/Tng
         0RKLvdolSpMHmTC77cqqRpIUH4+/Y8tTympAYsIaCBdJgEsLv8lMozl9kC/xqXbjyLot
         IgIwqEQMGgKu7UhY3wn2pU+J30WXuGI8P8cjnr5ZNMBLzLJKnG779yTzbR6XWnpxeO5P
         EG9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Y4qkUho5;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k18si381965otj.1.2021.06.15.10.25.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Jun 2021 10:25:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8C8CF61413;
	Tue, 15 Jun 2021 17:25:40 +0000 (UTC)
Date: Tue, 15 Jun 2021 10:25:37 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Brian Cain <bcain@codeaurora.org>,
	Andrew Morton <akpm@linux-foundation.org>
Cc: 'Nick Desaulniers' <ndesaulniers@google.com>,
	linux-hexagon@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 0/3] hexagon: Fix build error with CONFIG_STACKDEPOT and
 select CONFIG_ARCH_WANT_LD_ORPHAN_WARN
Message-ID: <YMjikYQsA9DmyRm8@MSI.localdomain>
References: <20210521011239.1332345-1-nathan@kernel.org>
 <0f3ac242-d187-57b5-e715-ea25933dbd52@kernel.org>
 <09a301d75899$daf244f0$90d6ced0$@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <09a301d75899$daf244f0$90d6ced0$@codeaurora.org>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Y4qkUho5;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Jun 03, 2021 at 11:59:43AM -0500, Brian Cain wrote:
> > -----Original Message-----
> > From: Nathan Chancellor <nathan@kernel.org>
> ...
> > On 5/20/2021 6:12 PM, Nathan Chancellor wrote:
> > > Hi all,
> ...
> > Brian, did you have any comments on this series? ARCH=hexagon defconfig
> > is currently broken in -next, it would be a real shame if this continued
> > to regress after you just got Hexagon building in mainline. These
> > patches seem like they would be worthy of a 5.13 pull request.
> 
> I have started the internal review process to get these queued up in my tree.  But I don't know if I would have it in time for 5.13.
> 
> > Otherwise, Andrew could pick them up with your ack and stick them in
> > front of "mm/slub: use stackdepot to save stack trace in objects" so
> > that there is no build regression.
> 
> Of course: I'll send my ack for the sake of keeping the build green.
> 
> -Brian

Andrew, is there any way you can pick this up so that the Hexagon build
can start being green? I explained the issue in the cover letter so that
you know where to stick this patch set in your stack. If you have any
more questions, please let me know.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YMjikYQsA9DmyRm8%40MSI.localdomain.
