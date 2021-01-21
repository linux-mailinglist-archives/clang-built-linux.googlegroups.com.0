Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBXHOUWAAMGQE35A3SMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc37.google.com (mail-oo1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB862FEA7D
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 13:45:18 +0100 (CET)
Received: by mail-oo1-xc37.google.com with SMTP id i16sf974187oos.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 04:45:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611233117; cv=pass;
        d=google.com; s=arc-20160816;
        b=N/yjGVaHpvdJvTIXdWh356wdMWhaVv+yhM6UJsK7G9mYK3hVuApx/MMIg+gqfxYgjF
         rGZGTvnAcrDdu8xkxVvGOifDOUjTCiqGvXs5pZsaWlAYHFcM6zmmQgpILLlLB/iphgC4
         QJgIxrPevgVITKUcaxHxX1Y8dWQUhZ4exGhii/bEMfNcqKgaB/L/tNUub2gnX0f6/gXH
         eut77t0KPN87T4Tw06pDtVZcqOcaPZ8EcNVbo36nNmzJMmzIK1zwSFdSGKjZ3ASJRh9W
         h5YRSdT01nr+b4/S7rXLsUh3+xfJRUgzCrgO3oIuI+9YuxrQXbjawAU3okyt9KRbRaKq
         icQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Hxsi1SvWqCOBsNmDsn0gU0MixhU3vbjuA3PIwMVpejI=;
        b=B4YrpzHXBifotThmeyEz/HpyJ3BMZl0AAbc1aG8TSSnqmjH/RV87BiJ1fZOY+VA/Pf
         S9AlooTjq4e9lTlzyrDaAsSEaPnj/sIZKWM23hvjCABKbJnH9psxVKdu2dbfd5hQtnbv
         FFFGGJjt8cOCD3lOsnNBFWlJPG4xVB9ftEteGW7Lrutu36pkRlMZG80Zgipn+3/zJwBn
         qYf5sSB57j+/wC7V3jTvCeRRhrTnDdjB5OChxFjIa2Xq2w/N0ZVI/YtYzp/RSYL4OlR0
         pPx0TCo+zoI2+iS3V3d1IOb76Ju3N5v6DMxM7/trSUmvL6Ou5xpq39CtpTr4Rn+/l+Aa
         bpAA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=aTohbI62;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Hxsi1SvWqCOBsNmDsn0gU0MixhU3vbjuA3PIwMVpejI=;
        b=VKRGGiSJ6Goqm2Lf/7In9D4l11GVfi8IpOwTaFy0vRwliQg+29YQKWC7tHqa4tpZSf
         KNPePj+edHUBQTi0zSfJAc2xirhnbzokmGkK+AFYC6UqjOM5FH6ZK88YofXAUcDcNzLu
         9tNBw25/u5cDungfOXcVjSPDZxLEPjVNQsWwoiRHGdFmgqPU0QiB4U6ZUsBGCD0CHW2L
         Strj70g1c9DIdZl+P5H/tCDTo6+l7gQBiVyU+sVT8VRIsa8TyvWtqcer64Y9NZ7gNWmn
         mBgh0UFPs7CW1VsB2yaGNBrWbH6B71CtExggPlANmJ4cY5UHqAv0ofwjxBni3cC56Vu8
         iA9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Hxsi1SvWqCOBsNmDsn0gU0MixhU3vbjuA3PIwMVpejI=;
        b=U5i6yTf9BttbbWOqYcahEey3d7bXAG7KmbnGVIjftf9eY25f0x9Hh2b+Q/X8cHaYVC
         XbH9Nl52ciP6qSoOckD2np4S5JDVfAijzOf40OW0eqT9DC40IhgxQyzSkgPZKcjpqgin
         BlEg9cQ19gLlP5ylYTurYFqPSAsv540YGeeVAEEXfYM84ZX1OSIPV2y4jpP8YWQGzzPN
         BRG2Bk4ECHzyYbGW+4z5LuXs/oa5joX5kZNNW7aNDx6wJ+iu+1byP35JhosplntYH/UW
         BBKlWQZal7eRbx+HawNphwIKHKhFyYABi1M4uzYENnYaHYOyx33nQbW1paBCCBd3mai+
         GNFg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530FL/Pu32tubJAMpOoO1OBs3C8WnHcXwDU4P0yhdvk8i0/WCaaY
	u+EGW43L1G7pDeyFHsOi0NM=
X-Google-Smtp-Source: ABdhPJxFKmtAkgNuadjqdLwtgPkaWw1e+lRgMJt/H9h7GfSiwrdxH+8wymHjKI+S+7srp7ipV6/pfg==
X-Received: by 2002:aca:ecc8:: with SMTP id k191mr6096024oih.179.1611233117076;
        Thu, 21 Jan 2021 04:45:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:69c2:: with SMTP id v2ls504834oto.5.gmail; Thu, 21 Jan
 2021 04:45:16 -0800 (PST)
X-Received: by 2002:a05:6830:1081:: with SMTP id y1mr102896oto.73.1611233116629;
        Thu, 21 Jan 2021 04:45:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611233116; cv=none;
        d=google.com; s=arc-20160816;
        b=A3D0o5K8ycw85R0UTwgdB7s4IBAcINLrK5Wq1QZk4+dyvgl42mhjBa1NWAX7/+oRln
         tXxKXZNgrugDuEOJ0/EvJt57RQobBnJy4khIMWDBKDgZi9Wd65X5+JajERdTv64N5Jsc
         reJsArbC09PM/NJ9RF5Zkh2ifvMLDbyIx8Az0ja2sshpn30LDcZaxmWdIbVzfMzLstTO
         qvZWmNwYEvLKiqUAPXtHqg81PvPaNFGcCqwf1c3eW8PpZ779qvuwZqFojG3cVcxHjWbK
         +q+wbkeBdzd8b5I/PQuXOb0LVJ08wpkWV3Gs2XuP755aDpcrk9ce0ljwm9kCz4H6BPfi
         uVOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=KWDa10g+270fi2WAjHEZ3CK3xxHppXvOoOBMUJHhCZM=;
        b=R28ZZGgKsKA4f9U9VyeJx1tAUeV7H/nHUMpwnsCyrJmJYMRFZMcYfP4sajPPi+8QCi
         80GdKdYmXChqvBYsAsxLkT64YQTkPb3boAFiAnhp40KI9G4AvPQoiQunUtp+gJmg0H6I
         y9rTf3pY+EyJqbdFsbrdqxcbFej0BuO9MZxgFXuUqKFr9sfjYKWB1srJ8pIGYR4kozkh
         XV0/DRPRO58UtzJYeZmOM/sIJiyqKVJDOJvXlX4u4hJ+ob+8LU6CnRAW5VnBXt7gy+VM
         t9iv7RoKvhcd75E5gBVrexhWg4aLIATglJVObSlunlGZ8zJMNrAwuRuBK4EisxBfhqOx
         nwUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=aTohbI62;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k4si393639oib.1.2021.01.21.04.45.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Jan 2021 04:45:16 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 00F6D23A01;
	Thu, 21 Jan 2021 12:45:14 +0000 (UTC)
Date: Thu, 21 Jan 2021 13:45:12 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jian Cai <jiancai@google.com>
Cc: Sasha Levin <sashal@kernel.org>, "# 3.4.x" <stable@vger.kernel.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Borislav Petkov <bp@suse.de>,
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
	Alistair Delva <adelva@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Manoj Gupta <manojgupta@google.com>,
	Luis Lozano <llozano@google.com>
Subject: Re: 78762b0e79bc1dd01347be061abdf505202152c9 for linux-5.4y
Message-ID: <YAl3WKqH/xfGyAcu@kroah.com>
References: <CA+SOCLLdvphxVeH+SvaibixLxdwHd+sC-qc=JdLKQoTN-H0waQ@mail.gmail.com>
 <YAl3Afu4hXlhJQIv@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YAl3Afu4hXlhJQIv@kroah.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=aTohbI62;       spf=pass
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

On Thu, Jan 21, 2021 at 01:43:45PM +0100, Greg KH wrote:
> On Wed, Jan 20, 2021 at 03:28:10PM -0800, Jian Cai wrote:
> > Dear stable kernel maintainers,
> > 
> > Please consider applying the following patch for LLVM_IAS=1 support on
> > Chrome OS:
> > commit 6e7b64b9dd6d "elfcore: fix building with clang"
> > 
> > Please find in the attached a slightly changed patch due to missing
> > upstream commit 7a896028adcf. This patch would fix an issue similar to the
> > one fixed by another upstream patch (
> > https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/?h=linux-5.4.y&id=070bd3a8ac55)
> > that has been included in 5.4.
> 
> But 78762b0e79bc ("x86/asm/32: Add ENDs to some functions and relabel
> with SYM_CODE_*") is in the 5.4.90 kernel release, so are you sure this
> is still correct and will work properly?
> 
> And your subject is odd, as again, that commit is already in 5.4.90 :)

I've just queued up 6e7b64b9dd6d ("elfcore: fix building with clang") to
the 5.4.y queue directly, if it's incorrect, please let me know.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YAl3WKqH/xfGyAcu%40kroah.com.
