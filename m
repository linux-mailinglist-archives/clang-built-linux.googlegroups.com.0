Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBPNX3TVQKGQEU52K73A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 83482AE298
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 05:42:53 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id z23sf1616428ljj.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Sep 2019 20:42:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568086973; cv=pass;
        d=google.com; s=arc-20160816;
        b=WgyDieNHL1U7JZTIMBsH2gNQJUjfl78AFA8ZmQ9o8HGd+gfvn3S6bgx1JEUC38IeyF
         sX2bvShN8e1FfGoiEkOQlFu+cnoKIfgI6S6TcvLPBl3S6aP0zpAiCxa2cIF9a7vquLrw
         MZyAHSTZzNhXp1wv5qxsGmT4VZrPVHMIiedweQckIDBhoZeFlYQ3ENnYHCDaOBosa9DM
         wqxUS1Nvw0OF410scV+INCW07S6a/eCNKMNTDI9tdyMPcwfqiyWhd04bLs+EgOl0Lg3E
         djnB1kMXtYtI8P+5eVp/YAJGsWgedrIKS5+3dCoj3KBua2xFOqqUBpphlB8CFc/QKlR9
         NH0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=qpx6jUCb8o+37ubJi1FHtlMc6XfMwy0hLhRXDhnMw9U=;
        b=Y2iUNVqHE/PTUpQiNKB2S0S1AWsoU7hI64nwso0Uh9jBCRUdbeIWJp86R8IiIhJ4jC
         ozSTDfWjYcMGMaxeT+jLSiM2bGclWjJvpRAYb4m79beeOCb9itOOL/LtVlCBGgpXo1Az
         bZp3dBV8dUYE+twCi7kX7pPWw8wlriHClao4rhDgyRDvzaACqoLRvrusqwb976/AQDSV
         yW9oiYR9oCIxvBBEw1wD5VVmx9ZpTBWx0lS1h1xdMbsritkaPb2xXTmznxCNPOePSmwW
         ZeCgraRUVqnUSzAbzCyS69iY28JkUoQ9e6rFORnQTySs+mAgX9ts7+mDauRyE4O1QF4n
         Ix0Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CVQ3+cgx;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qpx6jUCb8o+37ubJi1FHtlMc6XfMwy0hLhRXDhnMw9U=;
        b=Bo//zkM7Age8XLELYkXPOLp5B0j/OdNbgFzwaXBigolAEyX0n+H5o4uYi1jzjZI1zj
         dfPum19o21MMA77jBAoaDtykXZ2Y7Ro3W9QTqITk+MgUISQMq74Psr3kcIhErN/GpxLS
         63PnMaCyH9LnK9/44MpOwT8PAh4O5Ta2ph1DxOpT1Vw4127wyJZn2CtuKilLe6M4EWpN
         5+kkzCrvb1+Ba91oHN+KeWVvZsfDpXVHvst9YdTBylUpK9cQm1iR3ETS7jJf1iTv4+QG
         u1SntDUYF44JEejt61QWkqJzj1J038bIkd8qYgGjzVR5eYQjZobjpkqW24jgxawMpfdp
         QBxg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qpx6jUCb8o+37ubJi1FHtlMc6XfMwy0hLhRXDhnMw9U=;
        b=B1LzUjROPbCHZn8OepWT+K2/6eeW612WUA6oJoo+yLpVc5sVRJiQkDwaNA5iqP1/GT
         dP3oAVRmvvvqhz9fNEQMC82sDkgf0kQcwj1DgMvlS38rlUe9so+c1IYIRdneBd0V17gT
         COGzTsbHbXCVNxnElbAJFtTPIS3u6hdqPjvKqF5n4p25dYl5BZ+yjSGLazlc4AsLyNjx
         f014Jhe9Iwhw4hYtqGyVcJVJ5bTKYuRS2KQSxKw+kQopaU7z0ZjTfUoVI+eHKtG1M9/g
         K/MsNT04HUqbFoKPf1aepI6RUKGFzAnLncY707U1w1bAtqhVO05/vk6REL7C0rJG+7I7
         9pQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qpx6jUCb8o+37ubJi1FHtlMc6XfMwy0hLhRXDhnMw9U=;
        b=RBrpM0RX9FRghgGsI/jN2Z87kmU1pDYLjmvGDaKLXQKjVWLvdrvyKOTT8g5LPsiaOv
         K1Rc9xVnpOY0RJw22gIl9yXnOboWuqzXT6+w8PV6VPyfM6l/4mKmGR4ME+oL5LHrr9Ph
         y9p47DhW+MyvL7H/HMEE4XINmzsl4SUqtAw/KxmIyRVPIg3fOfZ/tCWBPYOK9+xuh9Y2
         6Mkv70/emzDDH/xe/WYm4eIlUzkNecLcBwODp5FWVdomJKYeyP5tmzmqRVi5J/FFRRjr
         TIXBD/ErUdtpE/3YpUIUlSztzTO5+XiYkAuQa0fw8y+KbImkMM/h+tCzxzPfP/jY+vDG
         Jrpg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWz57Zj4yPMoFkDEqjS+Q5EzewNrTdrgiHg7snI2+ikU/T22GSl
	UrAw+mUxHZZZWlETMGkS5ws=
X-Google-Smtp-Source: APXvYqwQXj/UmVSOKfeJhrEZHOBu01kbbQmLvY0QrWvvYrR8fMwsaVECSeha9EGiFpS/9UN0imTqIA==
X-Received: by 2002:a2e:b0d2:: with SMTP id g18mr13378627ljl.91.1568086973057;
        Mon, 09 Sep 2019 20:42:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:54aa:: with SMTP id w10ls1548565lfk.10.gmail; Mon, 09
 Sep 2019 20:42:52 -0700 (PDT)
X-Received: by 2002:ac2:4a82:: with SMTP id l2mr18334161lfp.85.1568086972658;
        Mon, 09 Sep 2019 20:42:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568086972; cv=none;
        d=google.com; s=arc-20160816;
        b=Ehzwilwe+wkgFUfJskY/n0gC1E8+XZlprCJDeR0MHrl41CzWHS7b11mrSBvOLJdKfX
         KvkExMUREcj8VK4T7WoSGBUt7KsayiOjPESVhb9V8htKurXoEz13bBEtNIVeUoKNypse
         DtQpOwIxnCh84L98rPQSXV2/oicldvcIrZmt1APQwSY3HKh3kkr/l93hOAqCm8npwnvV
         vy1SmrU7cRP+A/6+yKpLIMUIzrwUUS7UEn9ZoQWDWGxOOMZptVXuRYw/qDyNJmYvNkYf
         qvMNthFC3ujPBEtkWWZIcv+W+sP8Cq3zChNDCv4EFWahIRoSnAIdlbxb5XPUXf6P1uEh
         vevg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=I9JwKIwr+KcLef+7d1/5gjR3bCqIxL34IZ86LTorCns=;
        b=NR/pIuQPDc2NM+17+gw28a8vVYzISEp1fVVd029nWvTIZRbf4FMV1BHPAIUoqNGUTZ
         LPadm9hLbiKuvX1o9q/X9behFxOqvPLhX3Px4dfQdaaE8izX6hSoyDg+RTdF8f5+6MDs
         RPzw0DAo3ap4IYuTS8Ilq2IWeQlqe29SRBoyc0hz29PXfgJMxAf3t7NEs9ew8gzbaYyv
         Ya1bTccqjcs0fxNg25270WW82NHdUyPRlsiO2AgSzekzgm4vENInew6igb96NIAxceK9
         rxJWawB6oRq31mZTD5WtPpz7MiLtNv9yXkpxqO2GKDGyfaRiQlDoNpBeUSl39o+v8vzb
         hJcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CVQ3+cgx;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id c8si1005581lfm.4.2019.09.09.20.42.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Sep 2019 20:42:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id q14so17028466wrm.9
        for <clang-built-linux@googlegroups.com>; Mon, 09 Sep 2019 20:42:52 -0700 (PDT)
X-Received: by 2002:adf:ef12:: with SMTP id e18mr22693738wro.65.1568086971953;
        Mon, 09 Sep 2019 20:42:51 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id 74sm1437257wma.15.2019.09.09.20.42.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Sep 2019 20:42:51 -0700 (PDT)
Date: Mon, 9 Sep 2019 20:42:49 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Andrew Murray <andrew.murray@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] arm64: fix unreachable code issue with cmpxchg
Message-ID: <20190910034249.GA1673@archlinux-threadripper>
References: <20190909202153.144970-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190909202153.144970-1-arnd@arndb.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=CVQ3+cgx;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Sep 09, 2019 at 10:21:35PM +0200, Arnd Bergmann wrote:
> On arm64 build with clang, sometimes the __cmpxchg_mb is not inlined
> when CONFIG_OPTIMIZE_INLINING is set.
> Clang then fails a compile-time assertion, because it cannot tell at
> compile time what the size of the argument is:
> 
> mm/memcontrol.o: In function `__cmpxchg_mb':
> memcontrol.c:(.text+0x1a4c): undefined reference to `__compiletime_assert_175'
> memcontrol.c:(.text+0x1a4c): relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol `__compiletime_assert_175'
> 
> Mark all of the cmpxchg() style functions as __always_inline to
> ensure that the compiler can see the result.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190910034249.GA1673%40archlinux-threadripper.
