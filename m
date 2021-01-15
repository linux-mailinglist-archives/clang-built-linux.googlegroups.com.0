Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBGWJQWAAMGQEAMOAVGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 697042F75BC
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 10:47:07 +0100 (CET)
Received: by mail-pg1-x53c.google.com with SMTP id 26sf5893967pgl.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 01:47:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610704026; cv=pass;
        d=google.com; s=arc-20160816;
        b=y8Gd6hj+IFjQMqiTvkFKVFUKIbVe2OAvpgudlR+b/yJInQpA4QXuMaSnfxtdxql+Cr
         RmJXQGhVR7amiFcobH2eFI7a7iCOctZ/banyNAHOfTASq07pZy5Vhcc2Xy3G64D9nka3
         tTN5ux+v79y2lUSjjoaqwvmBvc+VMkyTRVaZ+JoheplIkY9RM/uwTUqzTrwurNQZC+JR
         j3WGItA4P+c8D+FvBeHVaSG9Xa3qYwyNiZcRPOztBMZAF/mvJZ8M0SVhLIbcMd0tNg60
         g/bqO4AcJDyB+Uz+L5kv2W477KWln80HZoS43wA7TsClb4aWRNdQinBzc2IRGxuAFvMM
         f/rQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=wbkwJ+vbiY67ZtxJktrjaSyrPtxoj4/wkwUiJf/s7yU=;
        b=gRDOg84T3c88H9sHJvvHstWSj680ITGcU7mU8IDUvRkP2gsHHOoXvFfE6uVqYoDzQh
         CmwzVx+EABht2F72dnXHNXN0Y/fNqClImVt9x63zqFBgvnxarsKrSMsJk9ixYsZU+twt
         E5PKyKGoFViY2PoFlEUpypaxXtDrV7LXY9E+N6k2FgEWqUL3Zp25Ur9p1gddQvDOb4p0
         9tk7Bpb6/VBn9cqoygOwvk9eK/gIH15rVeiVQ4hzo4RQ/2nnxylaKQsyvydKPGF6fSCb
         h5j2ta02ZTpvjTSJioywLVi6H/ZpdVkz7ddPzbM+g0vyHqcPpgmYTYYLwXxyUqcuMUuB
         ZGaA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=qF5l4jRt;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wbkwJ+vbiY67ZtxJktrjaSyrPtxoj4/wkwUiJf/s7yU=;
        b=ey22UyRZcWQb0p3wIsdpbwr1jcL5fhlStKZNXnCm6XoyrIErgZfZD1+iD7OQxSmsjA
         b/3CkJ0EMXUer4Asa2QwYJ4+H285n7TRxXfH5cG4TgBnEeNDotwymcs6dEvZjllNZAY0
         vtC8vqRh+6hb0pXZlE1aWFunOrBFkFqy7nKwfX0tjVQusubBTNjMa2ZnGZiAOSqgEMkb
         iv+74ftB+eLFXtt4MUjCdhH/eOyg8SN9ftRZUW5MJj0QKtD7DqQvxt0+wuw4G45dqCzw
         Aa1YpesWiQHMuvCIyLBhHd3D2cLgly+hioSnl4BzphwS/SfhdJp4iLJ8tejhUdYqgKe9
         nXrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wbkwJ+vbiY67ZtxJktrjaSyrPtxoj4/wkwUiJf/s7yU=;
        b=W3PFOT5UOph1m8poL6WAxggJRDthDis6nVsQvA3JodvAoyQi3vixQ8X7DHLhn5weAJ
         75tyD+3PScSeRNV0FaUBVf3G/IAh1XOqsAEks42/OAeenRkEmseskNjlWVOtLP7txULd
         FtCnAtRZUOtyw87hcn4b1a94GX9gWovJkNlGVPuY2SfUjO0NU7WVtmWE2/wWZXBxm3Nk
         MxQq/dJdinFrD1y+Xto8CiFAN7uUsjf6ED2TcPRLsXHsShvJ6NsH/Y7A2E/4NpPol6wQ
         DM/gM3764edVchrpVWKEupMlEIO6sLzH5QV0XcxBjJNq4h+QPvKIF8eX6TE4QZ8BmZD+
         5gZg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5302drvqEmjMQCMFqyVd0T182jD3QPp1eGv8XG8YzSC0NEQuj3SN
	CWrJeLSdOYv4PeTHNOF82dk=
X-Google-Smtp-Source: ABdhPJyAImKLgKQzCdtRtj/Aa8bsakg/XowR49qvjGrA5q75CYtWM9/3gZe63WdbrtokXCiXiVwFZg==
X-Received: by 2002:a17:90a:c288:: with SMTP id f8mr9677592pjt.106.1610704026166;
        Fri, 15 Jan 2021 01:47:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:52d1:: with SMTP id g200ls3356363pfb.8.gmail; Fri, 15
 Jan 2021 01:47:05 -0800 (PST)
X-Received: by 2002:a63:1707:: with SMTP id x7mr11763342pgl.266.1610704025555;
        Fri, 15 Jan 2021 01:47:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610704025; cv=none;
        d=google.com; s=arc-20160816;
        b=dREyjs5JUyHOU7EGkTWDagWKRqqjP37WB9bjfNmfmbOsXJmn0PNXMkZqiquJbQPBkf
         i7hzOm9spWVYd4qBeE7nRFS2dZ2d0mNbPwID9TUmOcg6znF9gPHL1zAfSg5ANFidNGAk
         95LvYGiVhS9ryyzl7zKogRLhEOakEIjZNgdYLWQ2RpUzQpG5LyJJ+1LtlRMou7/fY3Gj
         AI2LLnVMXWjSsdzFEp/Mzd//WwJB8btoumQwPlQ38CKY3LUjQLYQNIwt4P+aCkuXFk7m
         rXVdHT2PnadpL5o08jRc/BwdxzbOn2LhQIWn4odpTaco3zQB7YlNRlYctekb/J85ezyX
         q9GA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=47jtra3IPYaCXs5k+2g2eAq4zhxYH9NpJN/wxbUgY28=;
        b=rAfxvaTQiKszlmHujPyiuzOIsTH13mI/tlKN4Sw8dSORK7vRqrbpu1pqA5/18x3trH
         8sBlyHvvgSkVi78sh0gIOqat+BaPQwkiIuG8UPaWkJEFrNhISBy53bpMkoZ8cmv4vKz0
         Y19nr8SDb7bcDK4B4phQSQ0dRzSiI3Jr2t5KjAqrYQ/oYZX52L1xcL8+mOCFuxflYoj4
         OG+I3BlMq9jalsNH2epiHSZwjUf2I7b5g/bXVzQgPcqk4vqHzg82ngyDVoIbKD+ilmHJ
         NAFIpFkn7R8qS+boIkL/IsQPka8IU3IWJrUWNAZzd1iWr3BLUv5g1Zjt6Hk1NFbchKRb
         EnHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=qF5l4jRt;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d2si557786pfr.4.2021.01.15.01.47.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Jan 2021 01:47:05 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8C587235F7;
	Fri, 15 Jan 2021 09:47:04 +0000 (UTC)
Date: Fri, 15 Jan 2021 10:47:02 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Sasha Levin <sashal@kernel.org>, stable@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: Backports of eff8728fe69880d3f7983bec3fb6cea4c306261f for 4.4 to
 5.4
Message-ID: <YAFkluSq3mYYuB8z@kroah.com>
References: <20210113185758.GA571703@ubuntu-m3-large-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210113185758.GA571703@ubuntu-m3-large-x86>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=qF5l4jRt;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Wed, Jan 13, 2021 at 11:57:58AM -0700, Nathan Chancellor wrote:
> Hi Greg and Sasha,
> 
> Please apply the attached backports of commit
> eff8728fe698 ("vmlinux.lds.h: Add PGO and AutoFDO input sections") to
> 4.4 through 5.4. I tried to make the file names obvious. This fixes a
> boot failure on ARCH=arm with LLVM 12.

All now queued up, thanks.

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YAFkluSq3mYYuB8z%40kroah.com.
