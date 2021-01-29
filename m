Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBHGJZ6AAMGQEWA5RUQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93b.google.com (mail-ua1-x93b.google.com [IPv6:2607:f8b0:4864:20::93b])
	by mail.lfdr.de (Postfix) with ESMTPS id C87113087D8
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 11:34:05 +0100 (CET)
Received: by mail-ua1-x93b.google.com with SMTP id o24sf2123923uap.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 02:34:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611916444; cv=pass;
        d=google.com; s=arc-20160816;
        b=we753WN06TZhhe1rOVKW4cAsiyNSFXTUuDKJ2I+joZRdsvzUwBkNPewC3FTQqOknMJ
         bHK/RvH1PXXt1eAvPP8gcYiA5VfRpv/j6Wi5YD02EY9Tc1SYElyFWpSvjQQAIWG0DKtv
         L9Cq+El2+rx1j781rCsOW2DWV84kwOJAI1ybpRYm0FAS9Ki/uvIy4xkFgpMovjfRPMml
         0OKGNsvgv6BxiE7C436hgyEA+/47WaQa4XD/cS5sMjM61OJFm9VMXevtoDwEOr6dRzg3
         sx38ilk36tx/Qut7itWa7Ujw3aJYCoptEwnFVuxqQdDRUozHs9UcOYlC+cUU6M686gk9
         orhw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Kphau/g7WVYwEwil8htrH0fucoodQtc5wAz15Ce5Fmo=;
        b=KhmdlF4/LWdebeC3VxTdMXtgD/lwcVO/rY2unZCOzixbgaeCN7IUU7AJP4iLMQ2vVR
         Do9j6AsjaOcDMpOowc1hS8enWpVcKrbWt6+WUjuox8DWlZ8/mEQGgwZmMf+g5AjFAWHv
         V0aOQRFneUpc1wG3UB+GK/vLQjIPdgWUMtMwjyZm2kKzLsIGjZuWOooQZw5KBb+fnxi6
         CKqsB0k4ychEffFRJPIqDg6HWk1oID/jbPS/yJoJgFtlgwYhaYG+LCvORUxggzppkdN0
         NRmpyOfaz8lEj+HN+ja98bV1AX4M6mangAzag+skaWgyx5BuNFr+Pg8XP3XPdQdGZEfl
         3fZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=Z67w47t5;
       spf=pass (google.com: domain of srs0=1ppz=ha=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=1PPZ=HA=linuxfoundation.org=gregkh@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Kphau/g7WVYwEwil8htrH0fucoodQtc5wAz15Ce5Fmo=;
        b=PDfrJfMa68Qo+bODA0tJKYM5o4evCVFmNsKLP6wTKdrTCFZ9QKMs+I6lgTgjPWeixh
         TEtAs9hrwQE3aVC9LUL5eTGzyrxLnhBXajhAcORnLL6Sf1VVb8IeWuMgpajkx67C1GZc
         paGIFz3H9ai8lj6IBHeP+gCr7I8a++0B0LAhcWlRW5fEuSdxllAo7nD0ZlxP9xm2qixD
         z8JdWLMRksP/rczkPWbNEDBWvFmqQiN4bz1yparLeCHGs2nPBlZ9gcBzqKMzERjGkGmH
         DPkEED/HDCDkEHwZItoULsRddUu+4a50UEuyL4KJ72qljhZ0GFy0PLhfGUPbmidhdWdV
         ri5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Kphau/g7WVYwEwil8htrH0fucoodQtc5wAz15Ce5Fmo=;
        b=YdvGL8ZsjcirVzAUVjqa14l/qFosB4y8ouJxRcrcmZDvLFkUl2u5HeFKzHf6VXfPI3
         Yhw3GKU4rf7S4rCd+QAK7nsuiWJkxCBxdGg8NHIEq5YE3J/nHL79a+wF3VZFzCCuYgiW
         zV+sWRkSDxjBl5p5QPaOES+McR69bORkHcy+poQEYyDSEbmKR3Km3d8VIlZhek1DuPwm
         CURh8+wf7Q9wXo3iDlQAqWuq7Qtdaz7KqAimIsHsyTBHvJTkj+sehDHHagQynrr+++at
         DJ5IY5l4YwoJxhUQ5uqtXnngkY59r+HkqyLU8EqK1f7CW8E9QuFPqJTjqUVn6xjd8ecb
         9w8A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5309lpHEJifw6OrUCVOaS2xQzllJ+MRDAgSjq4E4UT3e51D3E+tL
	H4rQlheKyPc6tR0cl8gxCwc=
X-Google-Smtp-Source: ABdhPJz5xC9mrVkDUcs2itGAWF0vNnyG6vyBzK18SNg/HIdBQLWiHRFz6dK44/LmQ2KF5OsQqdxrfw==
X-Received: by 2002:a67:f996:: with SMTP id b22mr2636148vsq.46.1611916444755;
        Fri, 29 Jan 2021 02:34:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:119:: with SMTP id z25ls1076810vsq.6.gmail; Fri, 29
 Jan 2021 02:34:04 -0800 (PST)
X-Received: by 2002:a05:6102:310d:: with SMTP id e13mr2074076vsh.13.1611916444326;
        Fri, 29 Jan 2021 02:34:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611916444; cv=none;
        d=google.com; s=arc-20160816;
        b=KNs2CSlEQ5oQNaHRBYswLWTq2vaza6T0f4iwNJLBq/L7P0qvvztOngBMvhewcozr9+
         9PhYdwngl12zdrOJOXgpSKqObQeRN3Q1SJnSDo+fbSW8oAY1mQG3+DkDRZQy0+4En0LA
         bD+2276iy5xZIiUEftCQsx3U9dRlcrhTGsEuQZUmTJhHFfaT7zpuUjghY8OAkZQBBOcc
         N1JOLaIS0eT3tVfVeUpScnK5EjIci0D3o50aJzlmFnk/EBNl102OjKs5mIP0Kw/OZrSE
         qJFcSLUI5HN9MPjCYERvJTc0sOspFwkYKwV/vZIjleIQwN7trsTRAIdtjD6SYPxeNLpQ
         wR8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ttlQSI6KcG3NQDqv2fZExWB0M6fWV5oV/DOmgas8I1M=;
        b=lc2MumATh+FVgAYu9ljo7hiXN4Ewn6Zm7amf1DQrdgWobNvbbkulz853kHyRJU+8sf
         6KAznqnoXS+0m3B3Bufhlda5tMaSas5MtBxKUtr2P73b3vVadSr0QDIX/H9cSJIwDd0o
         srL6dkgKU0MDEeVUBW9chZBb/OornLL1jHPiA4KQDGH5pEqpwFThvrgzT90ptl09aI5D
         Cy9LjFbjO68JIJk+S+8cwThQ1QR9Rsn4qTM0yz8U8KzQa8ICZEGDNJdTsQEUetpCCLS/
         kQgFHLaWD2VCEsbtHtpv7i/23i4gWi5AHU4ubWlmJdT/liDTvlxE6O881YrcIejAKDXN
         MDdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=Z67w47t5;
       spf=pass (google.com: domain of srs0=1ppz=ha=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=1PPZ=HA=linuxfoundation.org=gregkh@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y127si411242vsc.0.2021.01.29.02.34.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Jan 2021 02:34:04 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=1ppz=ha=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9F7FC64E7B;
	Fri, 29 Jan 2021 10:34:02 +0000 (UTC)
Date: Fri, 29 Jan 2021 11:34:00 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Sasha Levin <sashal@kernel.org>, stable@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: Backport of 09e43968db40 to 4.14, 4.9, and 4.4
Message-ID: <YBPkmGfkZdoEBnLt@kroah.com>
References: <20210126205743.GA2093914@ubuntu-m3-large-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210126205743.GA2093914@ubuntu-m3-large-x86>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=Z67w47t5;       spf=pass
 (google.com: domain of srs0=1ppz=ha=linuxfoundation.org=gregkh@kernel.org
 designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=1PPZ=HA=linuxfoundation.org=gregkh@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Tue, Jan 26, 2021 at 01:57:43PM -0700, Nathan Chancellor wrote:
> Hi Greg and Sasha,
> 
> Please find attached backports of 09e43968db40 ("x86/boot/compressed:
> Disable relocation relaxation"), targeting 4.14, 4.9, and 4.4. This
> fixes an observed boot failure in our CI:
> 
> https://github.com/ClangBuiltLinux/continuous-integration2/runs/1766193534

All now queued up, thanks!

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YBPkmGfkZdoEBnLt%40kroah.com.
