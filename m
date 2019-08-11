Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBPURX3VAKGQER7KTX3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D00E88F2E
	for <lists+clang-built-linux@lfdr.de>; Sun, 11 Aug 2019 05:17:19 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id o13sf334658wrx.20
        for <lists+clang-built-linux@lfdr.de>; Sat, 10 Aug 2019 20:17:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565493439; cv=pass;
        d=google.com; s=arc-20160816;
        b=PI5j4XxkK5WGuj2RG5uBZnrGwlHHfvNvbU7Y/BWL2EYBDuMG83hRtQJafzieUQfgjC
         bROf/y3eMBBWCZJB5Z8sfhy1ckxtaiNrIZZDey/br7YsBdyBQ/UgLKmClNSkduFVGwdB
         9K8xEJp9hs/WNEd78u3MHYAxJG+bjzRwTKn1vEKK1zHLf1nqfwN9PmkP7/XII4ZghiPv
         FXCPuQWxIBD2bBgKFwH3/qIqTp2hrUC/RSPU3zwkuHSVSJmxvXJSECejo3ehuXkCVkY2
         zzEsh7x0Ve1QQHTV6UPHkneIFA4NRe91jizcC5jDK7Vfjyo9X7TaFC7Gcz3AFnuUOefr
         OJ9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=TneSqoZnsU6HKVch9DwboZiQotljLEG2lYwqNSpPEs0=;
        b=S/lp4wyzyp9WTzA4ifLXgnRD9FOQI4ySPd19nQgQ/bEegDyJHB5/cb/TZW3Udkdm0a
         iOAeSekG4TKxLtD2YHrDo3cELfKn9OTjlfuyZmS8KTZ3ot7GZkprp4iVEJuXptK4wMXA
         K/iYVa2tlOZMOiV3HxcoeODtj5AnQ5jk2CXBS7F8R4xBdOEwBnxq1Qo1mC3dvK1/A694
         d6FJg8g7psRyHmlq+bv3M58fkNfLPKg04x3f4S+p3fVw1EfNacajNillWXDVazRC3XDk
         ASih64fgPBHsSzeKHEF6DO0nlMLoj/fL3BThXkmo8/XvJpuyhT8GO6MVpALDsM23U2/l
         dO7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=B7bLl+eK;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TneSqoZnsU6HKVch9DwboZiQotljLEG2lYwqNSpPEs0=;
        b=HkFFwKXS7kHsA3Fxlhm42o09gVhai/eHP1TN04oUToWclUoiuqpkSR7uYdikLegrDU
         HYGQRKrk2NU+gLI26AH+RkxtvuO3JckJlkE3DVf+dRFAPW3Aub6+tOmw6643T/AnXMzl
         zktw4OzsD5gBbi46eWAdW4uf3iz/M8ZmH0Ak6Oyz0hFx4omqXf1csADMORBCouJ8F3Bl
         V4OTw39OD5cnCXkH/KFGHXfmDCNZ+Lm8Bf8Klli+U9kHVlmUGyI4MjzG3GsLYDO3zkcs
         rLd+GEbDgdhK6WAVm8hl5Kh9gk1uL0COLryVp1+ftXWNSdMLD1ZNXHk3uinNle8OQnKn
         rmHw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TneSqoZnsU6HKVch9DwboZiQotljLEG2lYwqNSpPEs0=;
        b=YcpXz4HvchFdKJyRE9Tk4yf0XS7a5NMU0UOSQ6w93B+Gfj5hXwVjhX5u0yGYvqzpXo
         4vyj5CJQs/a26tvoyPNANs92kYpq/o3SGv6HWnWbZRVtq+2tLXJaZqnjbU5OTd//j58K
         9nSsz5NQ+RS3sHjnUGrQcIVDoakVkzRp5bncBfQGYYY2m7AYA4JxMDeYvezpeFqKl3Zf
         JXi5HUM0Z88cNZ3X3nHiwV6ofHdDoM1NO2suVclSw+hUCE1Ogr+0GxFzbJchcdpHtXa0
         aZFFA7FWsKtMREC9gVxl2PNLMSDjSVhhhPo7db36DCbzUsXohmt3gsvdI7ZMKKu2dZTU
         MHzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TneSqoZnsU6HKVch9DwboZiQotljLEG2lYwqNSpPEs0=;
        b=lX9eqAo1xKayq1ejP74/0+GTAFNot24Cdutdz5Goaq/H3Y4U9Vpb6Eij4ND7teYk1l
         EN1C8DHwlymwJXRMaC+4Di+IS3GybncRQHcCsI/NvQhYQibpN6L+P64Rp0y8GBLlfE7v
         z2E0t8Wl+gnu6DwuZVrC8/VoTDoVkY49BX1WZrEAPsC0EPyWTDUlXpQ8KdvJ5wv73zzy
         l3+PdMChWAjB0nyBQ9bOrJCTemM/VGNg6yYNYM177csUA2Aa9/P8YaIw5HEIEpdXnKLj
         lf6GiHwPgipTZqoPAQdUA4kmrsjCWucz/jj0SpGb7b7LvqQJQlZuIR5CfB3UN5wRZ4Bj
         fO1Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUBweXy4KJXElQ6/ocAp3aLDKQQLc13vC6EQ1WJFT+KfSu2749y
	t/h8rFE86JLgwIXGW1c956E=
X-Google-Smtp-Source: APXvYqwdqLYp3UwGQvMz7j43BFk5qctYFNotXpKp891LtAE6oypqZEPCcj7CDib/pXM1ZjOp/AR6Vw==
X-Received: by 2002:a05:600c:40f:: with SMTP id q15mr4146350wmb.88.1565493438984;
        Sat, 10 Aug 2019 20:17:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6942:: with SMTP id r2ls679788wrw.3.gmail; Sat, 10 Aug
 2019 20:17:18 -0700 (PDT)
X-Received: by 2002:a5d:4d81:: with SMTP id b1mr34752467wru.27.1565493438494;
        Sat, 10 Aug 2019 20:17:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565493438; cv=none;
        d=google.com; s=arc-20160816;
        b=fnYiEjbd1CjHaU10PS94PmW822S54AhdGZaPvVh4KgBeyqMU8qmF9hepe2UbSHvrR8
         shdu3X0eauEDFQYVr2bgVyhvY4926Z8LEMITa2Jkb4RpP38L2CwRyIiaWp75G8L/t7rS
         bSvaF+U2LfP7G0lLdgjE+FuaJMSSpH495dDK8po61ZLbtxGnt1WtMo9NeTM6Geh3/IU4
         XkHk00+CtZJwaJV/e01D1pY7YZkKDlGRS3C5Z3Qcwni5gBoIyNnQhl8Dr/wzagDic6wp
         rRNTgBRPkbVVwuIZkBgLAPLMw2+0CD8BCIaFGc/BisKhxMRtRB5W2JBC0FlvvlTNdI+w
         /9wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=CJTRgRoQys59T83fv2iqLib5QcQAZ/wqe7J9GPlE24g=;
        b=xQQYWxNAHQ6ANVn54LsriF2IKRs/mQwqLRCb0KMtL39BSZrT9i60PjtUkD74CCyKJv
         HZ1Ktq0n6Pwg/josegYnGZsH02kv8BiRmOfqAxhYX2nFs8TajgrUvORXTmOc+XGDdFph
         zdio6E0BLTejyzSs32lD6J9QjDt/e1D2V9dSAl1LeeuHmMDnr//DYQNDaeytlLaof5fw
         Tv25zqK7tprwCH25Rc7eupCJmkV9y6o66Y7V2CKs5TNj6cutSO+SvUDrSBG+IhKZpkrI
         e/822qL5VZgHcY4q8H7Db/RljglgtxUE+yZm394WrcpSN93UHUN0k/TyTPSoezSeGrs8
         sbHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=B7bLl+eK;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id p4si315447wme.2.2019.08.10.20.17.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Aug 2019 20:17:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id v19so8929754wmj.5
        for <clang-built-linux@googlegroups.com>; Sat, 10 Aug 2019 20:17:18 -0700 (PDT)
X-Received: by 2002:a05:600c:21ca:: with SMTP id x10mr12149120wmj.112.1565493437886;
        Sat, 10 Aug 2019 20:17:17 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id l3sm17489437wrb.41.2019.08.10.20.17.16
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Sat, 10 Aug 2019 20:17:17 -0700 (PDT)
Date: Sat, 10 Aug 2019 20:17:15 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Joe Perches <joe@perches.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
	"Gustavo A. R. Silva" <gustavo@embeddedor.com>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] Makefile: Convert -Wimplicit-fallthrough=3 to just
 -Wimplicit-fallthrough for clang
Message-ID: <20190811031715.GA22334@archlinux-threadripper>
References: <c0005a09c89c20093ac699c97e7420331ec46b01.camel@perches.com>
 <9c7a79b4d21aea52464d00c8fa4e4b92638560b6.camel@perches.com>
 <CAHk-=wiL7jqYNfYrNikgBw3byY+Zn37-8D8yR=WUu0x=_2BpZA@mail.gmail.com>
 <6a5f470c1375289908c37632572c4aa60d6486fa.camel@perches.com>
 <20190811020442.GA22736@archlinux-threadripper>
 <871efd6113ee2f6491410409511b871b7637f9e3.camel@perches.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <871efd6113ee2f6491410409511b871b7637f9e3.camel@perches.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=B7bLl+eK;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Sat, Aug 10, 2019 at 08:06:05PM -0700, Joe Perches wrote:
> On Sat, 2019-08-10 at 19:04 -0700, Nathan Chancellor wrote:
> > On a tangential note, how are you planning on doing the fallthrough
> > comment to attribute conversion? The reason I ask is clang does not
> > support the comment annotations, meaning that when Nathan Huckleberry's
> > patch is applied to clang (which has been accepted [1]), we are going
> > to get slammed by the warnings. I just ran an x86 defconfig build at
> > 296d05cb0d3c with his patch applied and I see 27673 instances of this
> > warning... (mostly coming from some header files so nothing crazy but it
> > will be super noisy).
> > 
> > If you have something to share like a script or patch, I'd be happy to
> > test it locally.
> > 
> > [1]: https://reviews.llvm.org/D64838
> 
> Something like this patch:
> 
> https://lore.kernel.org/patchwork/patch/1108577/
> 
> Maybe use:
> 
> #define fallthrough [[fallthrough]]
> 
> if the compiler supports that notation
> 

That patch as it stands will work with D64838, as it is adding support
for the GNU fallthrough attribute.

However, I assume that all of the /* fall through */ comments will need
to be converted to the attribute macro, was that going to be done with
Coccinelle or something else?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190811031715.GA22334%40archlinux-threadripper.
