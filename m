Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBKWUY7UQKGQEKRKUHII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E7706E86B
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 18:04:59 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id c12sf7090704ljj.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 09:04:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563552298; cv=pass;
        d=google.com; s=arc-20160816;
        b=iEaAifv8BKbDclW8Gm1ObHBH3+YRu/yKMe24OnaVRVuAidXZbBzsqfFmqIG5O8LdbB
         QcTSBHgZfsI9YzNVgLdRu3MTuCYlyBPBLnKivFtHue4r+YCMydBi4FxsVxgGmFQp9oAi
         0d6ITkW7xdadNbxu2vwOqD9jEdLnfWkRFUqKpXQTCMXGUSbOx+mK+jFZcXvlC0whBOO9
         YvArgMaDIgaDvWYas78m4j3rRtQ8p/kTd0w3sVxiSjB+dIcwnPiPgrfFi66dZxkmSSFP
         IFg0KEleGvIIoTY6/u+r+x94z2HMS/7iTv+S+sSOfnvYxbMZUws5KHKcElU72PUCKfG0
         s2iA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=KOb1qt0kxYoY+YJZT42hjF7m0M0QcQ1q+AvHfZpY68M=;
        b=c0vpoqbA1QUSbUr05rEF4cbmedAebidWpyMsy1BdZhdjOmSoJin46+qty1sCH5z5kj
         g0TWPQlT2/Hdh1d0J7LtY9tGF8ib8cZy1vrrwDtr3xr1oBQyAz8Z8jw7yMXkOb1drBkr
         nQFXBoF3oISRuTk828I+YH1vX5pJYT50hbX53NhtPR9HTsAwNyaFHBNMy0yTIFxD77fh
         7ndMkpOYtIA2H61B+TKlliqRblMYrqmPhIhTnXz+zuUwaO8g8TgBZMw8lUvHzRYqwcey
         +tDp44SQ+enoGEoFmRrvGYIfAer2XvkXq1K2BMCtr2zaurCUyyaHqS9HyZ8BbWPdN+Gw
         TRow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qmoQqm+c;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KOb1qt0kxYoY+YJZT42hjF7m0M0QcQ1q+AvHfZpY68M=;
        b=Zr3+mKMd/NXUINKTPZqdFiZjy0N+sFtqcqEoxjUYWFNEDsRA2FEEFi/U5vkwhsg5HT
         eC+nksxYAEBl3/xlK56GdIcr/guhrj9/DUcvvA6YIU45Dr8QxXdnWl3SMS8ikfIFDwaW
         73pTiapX0rcheYTqts8unFYOB6R4SD3cdypcllcTAqiDgbR75CpN5m/F5Yw5+ok+kfJB
         eErDvIwJ9p+Ei3e6sJvGmsKqCG3H5MU24tBMJ3jrwUAb46fL1DU9wpJhQ40otflgDQNH
         yZMxUauTeiO5P3Qef4s+RrKS/LJWYCLjRWPPAmUWSbEPsnJi/Rq1pBXdp0pu9F+QBTil
         SxyQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KOb1qt0kxYoY+YJZT42hjF7m0M0QcQ1q+AvHfZpY68M=;
        b=oNA/5bIPSVrbcVKqLQd4EHsvcHrBEAeV3EyOtoBHIlEJR65S54rw5UcOt4axpgNXZh
         gy5I5JJoZBVPjFJrp0zUNgc+0qgJRQfnz2S97OuH8b6Old10mmZBYK1TivAQWhP6xDOJ
         PK0IrRISvUdLDtb6Q9mFBueY1+aour5aG4p93yV9D5e/S2+Re0qA4gdXceQa0ECTmBFc
         02tavpHDl/byhOQbvWGBf8/tFtOChYbf+1EU9IdDh3YRmIWWfTr6kDywTRr61PkOH0RT
         q0ANV6s10XhEXwNO9sQ/xs+woG3JSILAhYYWdP8CGcvqVlOGJS1oTvc28lAiVNvFZB5j
         j3GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KOb1qt0kxYoY+YJZT42hjF7m0M0QcQ1q+AvHfZpY68M=;
        b=GAsGiUYtbID2oq2DUkb9xwjnnvjvwW0pLOIntVMeoTXw2ICY7FwfOoTnKVloe9Po2P
         fFk7dIgr8rJAA/a8WNjemWjgN5Ty5nmDIHlHza+vDRZQfwp7kZPIk5sVBeeW8odMH1Zb
         Af9lWCTZC+hftGCYAet1qROCg7BghLIa9457VXNE+41nGIOH/csKsPpH+xTghjRtvKHb
         ZhuQuA8YsfyQFZVyl7I77VZ+KZ3G5rX16hYfGHsg84QwEYgSLVDOIQXggKJkqFMfadfB
         /6u/st1aZNWIlT2oOnzTL8Lwqo5WBYcIgP7Q9IOvNwIaOO5FePcV0GA7EXzmIv1mb1as
         TIag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXP0xAuhW5VhEkE5b1ThieCgySBUdBhQYiWJpXUq0bndrlcFyVs
	VURJbZVmYk6TZoKOs0Mu2yU=
X-Google-Smtp-Source: APXvYqyLiFge1uDk2J2xJmbZhG1HLT/gJU+VSo+1ASBlG7vvMQQIHm3kDYXaP4svmGGQD8KX1vy3rw==
X-Received: by 2002:a2e:89c8:: with SMTP id c8mr28459076ljk.70.1563552298736;
        Fri, 19 Jul 2019 09:04:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9445:: with SMTP id o5ls3754766ljh.9.gmail; Fri, 19 Jul
 2019 09:04:58 -0700 (PDT)
X-Received: by 2002:a2e:301a:: with SMTP id w26mr27287803ljw.76.1563552298285;
        Fri, 19 Jul 2019 09:04:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563552298; cv=none;
        d=google.com; s=arc-20160816;
        b=OE4zJjbmSuZNzvg93fQMS9ykgKHZJRw1LzwGLoXyGVipwR0PuuPBj/Fk2dB5DTuPC3
         LLEkp9HmjB4hhhgm/WRZkinEcwHMEgtAl2MaXZSWQkMkkhiQqKbEPpSdDhoG9/aIlnWE
         AjRka+KWZcTF3jSG7poSHjZOrEU/xdXQqRl/pMPSJjgfznUt0yvaGEO9WxP0TCZh7Dks
         Mv/umaGcAMQ7fYAy/NGSIlHfQp2syfsn+C1SZUBxx89kOQmJ7ozmjke6Eeqy8XBGo+mZ
         TecfT9CnPERtcL0HALY0SfTCQb3TxyQGkR2W2KsTSmVxwovYr5fSN6UjJ5MyK6zGbFxU
         fnDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=dFBxfHIIkZj/vVsiAN1B0GaZv4SmAdgmjXZzJQqEU9A=;
        b=P3nBHd0YDEo+sfsc+HYjm5vxOMA1wIPjTYBNkBfRenSfYM4nxOz/gRRelysfPTaxhp
         54Yakiji5N+WTIcGGv7cY0eOwhQgTVnSJAkpvHipFsTz/qEV+R9rCJiNfpGFDulpr1yk
         BcVI3+GoRexJ+O218lnJVtXpzF9fOCRnJq0QHNOouQrMYw7W0fFo3tZf9h0Cvoj5v5GH
         p1a7hNxiaDB3o6s6X/VoUpaBAiYWxGJ/DVodZFMV+jCmguQnNx7Ee9prqriEvWGfzMl1
         jzJO9Kjljk8vmr8IEVMGAtFYfhQXYo+TwQosYb//wbF/z0P2aSshSNIlpdUiTL9nryYn
         apsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qmoQqm+c;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id r27si1419994ljn.3.2019.07.19.09.04.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Jul 2019 09:04:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id n9so7706622wrr.4
        for <clang-built-linux@googlegroups.com>; Fri, 19 Jul 2019 09:04:58 -0700 (PDT)
X-Received: by 2002:adf:f005:: with SMTP id j5mr12593107wro.251.1563552297446;
        Fri, 19 Jul 2019 09:04:57 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id y24sm22398788wmi.10.2019.07.19.09.04.56
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Fri, 19 Jul 2019 09:04:56 -0700 (PDT)
Date: Fri, 19 Jul 2019 09:04:55 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] powerpc: slightly improve cache helpers
Message-ID: <20190719160455.GA12420@archlinux-threadripper>
References: <c6ff2faba7fbb56a7f5b5f08cd3453f89fc0aaf4.1557480165.git.christophe.leroy@c-s.fr>
 <45hnfp6SlLz9sP0@ozlabs.org>
 <20190708191416.GA21442@archlinux-threadripper>
 <a5864549-40c3-badd-8c41-d5b7bf3c4f3c@c-s.fr>
 <20190709064952.GA40851@archlinux-threadripper>
 <20190719032456.GA14108@archlinux-threadripper>
 <20190719152303.GA20882@gate.crashing.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190719152303.GA20882@gate.crashing.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=qmoQqm+c;       spf=pass
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

On Fri, Jul 19, 2019 at 10:23:03AM -0500, Segher Boessenkool wrote:
> On Thu, Jul 18, 2019 at 08:24:56PM -0700, Nathan Chancellor wrote:
> > On Mon, Jul 08, 2019 at 11:49:52PM -0700, Nathan Chancellor wrote:
> > > On Tue, Jul 09, 2019 at 07:04:43AM +0200, Christophe Leroy wrote:
> > > > Is that a Clang bug ?
> > > 
> > > No idea, it happens with clang-8 and clang-9 though (pretty sure there
> > > were fixes for PowerPC in clang-8 so something before it probably won't
> > > work but I haven't tried).
> > > 
> > > > 
> > > > Do you have a disassembly of the code both with and without this patch in
> > > > order to compare ?
> > > 
> > > I can give you whatever disassembly you want (or I can upload the raw
> > > files if that is easier).
> > 
> > What disassembly/files did you need to start taking a look at this? I
> > can upload/send whatever you need.
> 
> A before and after of *only this patch*.  And then look at what changed;
> it maybe be obvious what is the problem to you, as well, so look at it
> yourself first?
> 
> 
> Segher

Thanks, I will go ahead and disassemble the full kernel given that those
helpers are everywhere and see what I can find. I'll reach out again if
I can't come up with anything.

Thanks for the advice!
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190719160455.GA12420%40archlinux-threadripper.
