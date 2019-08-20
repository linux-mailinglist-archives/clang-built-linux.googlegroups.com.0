Return-Path: <clang-built-linux+bncBCQMFSVRS4ORBI5X57VAKGQEJNOR5FI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 43E7195D85
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 13:38:12 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id f28sf6956898qtg.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 04:38:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566301091; cv=pass;
        d=google.com; s=arc-20160816;
        b=nCF0u1p75ZQ4ubhx4PaMb6hE5Zzo/YyN48QzmkoGKkhOZpATlGofnoXOl7VWijBL/J
         BWBqj1sYVUu2GGWHvk9DZ69buSQ/MVIWxCIBdMZO6Ahx4tQ2eJsykejqXia3ArPpxI18
         mGOIyRh9pnDmcJFvjOsF0E/NcWTDRnadFxbsDDOLzB/NQ0O6y0C2/K86XiYArB3u5AEx
         H93IUtLuO/nYbvUto50/pWMy0Ab4gzPVqntrqjrye/z56yvQf+4hNN/J98Ei3yaubF/h
         wFtTGU6OiJMACfI71h37OUg0Z8PQfSxcd+oiRLb9uuiPx/g3aqu9vRMTGhcz8wSmdG90
         toHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=n+S8W6wO+BM1K40y15GChNy0ocu0hnAqDpOyT77lyug=;
        b=hsv3np5jij8QnFKYMpaalCSJ9lGuoJFF6NcIPuDTI7gY6XbMa92sCv8V6bIXhygGJU
         gH9aSnVHJ5hYGzL8XWlDXAvjzw7eBquYYADFpUzXGfl9Ascp1aIesYJiJViK3fYoX57N
         uaNF8J2srZtRsDrn1ZQ773d4hKiVDOV+craP3PHvuT48H++Ogi1E/2fhc6q93LOi4LiH
         Mvuw2rLXmYuLqxmA8aMA24b615nqHYwWF2S3TJ03phhPJF5nDgnz6Z658YHWMiNF/gdD
         hP2O/xM97NYJ2Vu+gqoL0RNT9ZjTa2rM0o5Q8+ihBtft/7HSqZk3acbSgXzKpYg4eTgv
         BmCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=zF8X7uV6;
       spf=pass (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=vkoul@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=n+S8W6wO+BM1K40y15GChNy0ocu0hnAqDpOyT77lyug=;
        b=QGXXhBBrEEZ78at3i1gxspZGG/iWjulUln9aUo6UE9g48DNef4PedbF/DGKjtCKkHC
         AGNf4Sgtr6sKXuTvxkYHZ9yv1t+shEOp+jGrQ8aZBfLC7CqAPfRV+sUzpKop8lq3zFJ8
         JseIcQg9vjxvUP7NzHYxUrAVSPD5jSIdi7LC63f4Q1UpfHAd0nZ5yuQzFY6UgK6aGQvm
         NJPLEYTHer94w4Zt6C2HcZrjH/V7Pj66xGpRrYZ1S6ShjN5rpPYTfVpuUDOvCSo+3bNf
         u34Pr7vjhb9PqzvlxShrlHevjZK/PBhGHR2+CByDhxQEKP/9LlctdKO9gMj99yd/gN4j
         HB8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=n+S8W6wO+BM1K40y15GChNy0ocu0hnAqDpOyT77lyug=;
        b=h/6GIPyk8nzPoEiFsSNy3vqWWARtBdsSSslmFUq/FiPR6763gHgjsDwitouJsyXzFO
         D4sX4UrVkRWXg4y+0PiN/aPmmDgdZhSFLmvsRcwV354ypiLvjx0FoSwWPEHvKnz/ylua
         azdTxqqd1rfjM7zZoL7L/LcE6mGc60MYSc+PkETuehefWQpw/fVCCTfGC5KHrNoi6qUt
         lYlNlhLw9dDKgiZIw/57z/0Kihn05q+nmbDyduHzvZEdqLPS+U+s5GsuAhdwgNCnTwgz
         Xn1SiM9aaqOPbIMggHeJ4GmoS3iZSLbGoOKrJGG+nwlZ3qOoE6eYdZlSfvwa/F7sP9S+
         6sLA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXDyYJHdcPyjUGtxx/s9p2njh0M2JpouXRhPdrVVveEpa3W6bot
	0DUTeS2ZG4U+1silN017rRU=
X-Google-Smtp-Source: APXvYqwxVOYErtZtRdZDWiWimnHf2PplqYbxjxCX8Ne5lpLn5UKBC2Q2SWwfxdRiP2Jux7z4B6rwWw==
X-Received: by 2002:aed:2b01:: with SMTP id p1mr25905934qtd.33.1566301091139;
        Tue, 20 Aug 2019 04:38:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:95d0:: with SMTP id t16ls2823471qvt.16.gmail; Tue, 20
 Aug 2019 04:38:10 -0700 (PDT)
X-Received: by 2002:ad4:448c:: with SMTP id m12mr14238201qvt.196.1566301090871;
        Tue, 20 Aug 2019 04:38:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566301090; cv=none;
        d=google.com; s=arc-20160816;
        b=OCm36/MJSb9F6LafmujV1AzAJO4MTodhdm0CgDQc0SOCLzuIJnIFt9MOf3mRdVLWBM
         1nENrG3F+hax0HcCZYIgHzSX9/9vOYYaYtDhn0z0356Xg3xIKPn5xk0o2cF9jozwUkQh
         d6mMSMspadR2EP6ooeRDbdSA6zAPxfds2+qc3X+3jZztOTiSAuzKIo/g+bGdCAc3OWQi
         tUsCUqcMBaHX54WQDDbDTAZnY4gRFNwatL7wxkiYTXnAdmNr7iqCftY4yKq6/sNvr4cQ
         MLJs0/4ZnXUFZeHADI9VHlNG7GliTq2DiTqiG2mljyJ0JYtoFCPXJNLjixiJ739cQFiQ
         kGbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=C6RVcGG2awuYYinf2KFDVHd7z0o4g0NDE0hUw4WSPZY=;
        b=u95sRFWiS9ziu5bHzUvFhz2B9bhVqREPDIAtbCfY9sv6ENGRpFkR+NUoxPU4v/63p0
         2Yo7tPmisJ2fgruGocjzLPjHccFGR6zD29T+21qz3CExPMikEUzDg5OmQLeVb+C+2mLU
         4PC30HMBXPn4Wb46pHREDKpwKhSg7ghzMia49zklRvGFk5xBOVrJ5c6MihFhTp9Js6eU
         jvjseRlrz5grEBC0nz06dOEVaOm6sE/k9W6mnk8mXZnWT0Jx6znV3DShftkrDvZYZv1L
         fgkjGNOVBAcb13UVfuHPClKG0y3jUrgwD5neO4kXk2NTdXLv1TYMd22LF2ILQHrngacO
         00uw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=zF8X7uV6;
       spf=pass (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=vkoul@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v18si938410qkj.3.2019.08.20.04.38.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Aug 2019 04:38:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (unknown [106.201.62.126])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id CEC2620C01;
	Tue, 20 Aug 2019 11:38:08 +0000 (UTC)
Date: Tue, 20 Aug 2019 17:06:57 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Nathan Huckleberry <nhuck@google.com>
Cc: dan.j.williams@intel.com, dmaengine@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] dmaengine: mv_xor_v2: Fix -Wshift-negative-value
Message-ID: <20190820113657.GV12733@vkoul-mobl.Dlink>
References: <CAKwvOdkAJcOCGvveBYaDD2kf4vx7m=b+Nxyn3_n=9aCBapzDcw@mail.gmail.com>
 <20190813173448.109859-1-nhuck@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190813173448.109859-1-nhuck@google.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Original-Sender: vkoul@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=zF8X7uV6;       spf=pass
 (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=vkoul@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On 13-08-19, 10:34, Nathan Huckleberry wrote:
> Clang produces the following warning
> 
> drivers/dma/mv_xor_v2.c:264:40: warning: shifting a negative signed value
> 	is undefined [-Wshift-negative-value]
>         reg &= (~MV_XOR_V2_DMA_IMSG_THRD_MASK <<
> 	MV_XOR_V2_DMA_IMSG_THRD_SHIFT);
>                 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^
> drivers/dma/mv_xor_v2.c:271:46: warning: shifting a negative signed value
> 	is undefined [-Wshift-negative-value]
>         reg &= (~MV_XOR_V2_DMA_IMSG_TIMER_THRD_MASK <<
>                 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^
> 
> Upon further investigation MV_XOR_V2_DMA_IMSG_THRD_SHIFT and
> MV_XOR_V2_DMA_IMSG_TIMER_THRD_SHIFT are both 0. Since shifting by 0 does
> nothing, these variables can be removed.

Applied, thanks

-- 
~Vinod

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190820113657.GV12733%40vkoul-mobl.Dlink.
