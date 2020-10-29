Return-Path: <clang-built-linux+bncBC6JD5V23ENBB4NQ5T6AKGQE4EICXQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id DB6A829F541
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Oct 2020 20:30:57 +0100 (CET)
Received: by mail-lj1-x238.google.com with SMTP id r17sf1668767lji.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Oct 2020 12:30:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603999857; cv=pass;
        d=google.com; s=arc-20160816;
        b=Hn4GcxE+SIBO8TCJqKSX6WWzuNzyRxdCaiuZs3OMWpZHGgbwISjLjA8jYDQu4bD3K3
         rXoydDzpYqBDeFcz2bkuTEd6KPuakZ9GwPazhsxrH+OlZIT7Dkcik20eM6naLIw8i5fi
         Bwkex0IinFEkMXSfD6RSVUUB3n68/6JwKD3ldLV0LtzKw7neV7iVT74IKe3ADtXYIUcu
         jbBOGT+36hSVjKftbp9oSF5L8xyzOU6QL0UwaDOvHkB5EHKfIvzufhqHZr30U3UMbECy
         bz7vLExMiA6DFZQleyEpYi9DBfLdBjHNk8qTHr/NWr5VoMO9j+aPi9PEQeZin+NEKWdp
         0T4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=I0nMl9ak6mfQsXozelcxClcWehz0Vqs1wmfEtB3JFpM=;
        b=I6Gzf8YUsnlhqbyiW8Z4FooIB0WKACrw2GOSeym4SMehKleIVWrTrt/NO7fMDvXR0R
         W4P/n2KWghBTN3XdxUpC92zhQblnz71a0r6FQ8OHDN8ccbutCAQPLa1yuTn0C8Qs6JmJ
         3ecdVf8w9LXeE6oVOhd/y1GbzDiOyEBXqXH6gD+hl28+lLd7QvifLjfrhDNb0xPESTfp
         jYkWqINmFvwo4Xxuo/wMrZ8PNxZQ3V6pb6l9YekvyyXfB+lGeuKeOps6RthgMsta95PY
         kAHkEzVPr6lHuV/dKygDJ+jF8p2q/vxrNKIy6HhHsdGTFQZWZRsHKJ+Gipwr0jdCJOFT
         Aayw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.218.66 as permitted sender) smtp.mailfrom=k.kozlowski.k@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=I0nMl9ak6mfQsXozelcxClcWehz0Vqs1wmfEtB3JFpM=;
        b=ciHg42yb2yarSKpYz/Ym8ev/lrzA60pGDSXvQDE+LwWME09v1ceT27+ufIzfdb/TiA
         eq+2lzLdTAkj8OuGXNW3vtQ5Sv06s/6Me/M7FDhCSOXyHgJO+XwJsO1C5EyYSc/LUC9V
         qo5xmquG3toqDURa9K3FSO3n1ykejfADBUviSEDONBUd7zuGix+qQuju4U9og48mwXai
         iGSa/41ffCsqe1/HrzS5ZvBUUzWPW0L7JbmW4/8fnCLcbIy4FUTURwSgXqUzocVVLsF+
         5vrIxAv548zyWQRGqKsMZ73gBub5HxOJtfQ+zuVGUQgjH1mIEQoUvvCYVraWFMpih1P9
         DC8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=I0nMl9ak6mfQsXozelcxClcWehz0Vqs1wmfEtB3JFpM=;
        b=iW2bjYV5zo4G4rcgFoMxg9NEdYLWWYvoHzFFCsoJ3Rjsc41ClhY3N2v1GRzOZ+00wU
         Gmjz5K/SYQscMsjptSgDJ1veDwkbMPbu44QeO0rHulmHJfOSvOSIPAAPlt6HfaXU0RHT
         kTy31MEeC0JgrTMpSFm1KhfYznKr/dUfqcjicRHPZsYodAZbr3o3VcI00Qw9Cp2HNiI6
         dQc8vvBdByDRkRZ+LgUDymLgiJ/wnVkyDcmkTCUfEPMp7yBDHHvFy3GvR3cjNloNzGv0
         yE05Tvp0nBzwzHless8Rrr6Br/XnoDeJSTJV9o6x+p200O/wV/dgpcO0F+CtabavmR4o
         seOQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531IeAhRgbrLic7NbO3UlnKhg8KrqciKkspFN7XPxVpjDxPCeFpU
	iGvuz71pmWSk3iXOIREQFdE=
X-Google-Smtp-Source: ABdhPJwLSGRBeG7ISWMZAUhoKcmYgfsMIj+tL8jIIZZ1NxgssCDzRJFzYiYFbwfhkjgRAcTVZ6DZDg==
X-Received: by 2002:a2e:351a:: with SMTP id z26mr2594824ljz.3.1603999857266;
        Thu, 29 Oct 2020 12:30:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:890b:: with SMTP id d11ls757061lji.6.gmail; Thu, 29 Oct
 2020 12:30:56 -0700 (PDT)
X-Received: by 2002:a2e:8e37:: with SMTP id r23mr2756641ljk.344.1603999856030;
        Thu, 29 Oct 2020 12:30:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603999856; cv=none;
        d=google.com; s=arc-20160816;
        b=VOWtq7S+DyicpIRpzFBCyfdzZK03piA3zpkyCA4o9zCHPRCsl9OCpgAvpuZNNEp6Jg
         8XJFvpIVMjdq0HCFG0iy0UIarhFNMuOi0JHu0b+rnLfjj4mp4MZO+3d1TdoCV4vDQfbo
         lV6fRsPGUqJOoAaiuMoFPrJ69y9MIJCK2NB5UhQhVNMAaJH+XrC/fVe60HCxIL0987G+
         1xo6mxYTAY7eZFwWQK2xhMTlnPIHaCH18BE3ZykMT3YEGq59DMjLbKCe/KnwxUYRVpX3
         JXrJX1VMeRf15UT1QFxpxpEphOLjBidqBULzoZgQuRvi8wgLdifcd3chi3GjM0m9ig6c
         lhMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=e7iXBkBeWuYCmAyEZmBvatrszkr45mNBgjzcYPbsRFI=;
        b=qG0rMswShu99d/PWIuYGWbYPStW08o/zVevGT1PU4Who7WkpdenCcNhtZNTdrePR3j
         B8tnCGOQXSZotKtkNEgyF0VM3C4aLINzt7vN/MQN8JjpyPB67CTVOdJE8awZGssKP/k3
         9W//dnUWVwCNwPlUi5EYEKAoISuGGNEdh97SCP4W/frVi5fo83F4YJ/c5ixPDcUUtVFi
         EhEYWXMlMh3BAL49r/AEOQgN0bsVhhuYQx6T8g/6MB42IWs0LuJ7dbVvI5paE623vTSV
         XKJvJXzlpRhpXVCpgWZTjVbaepad9qy4QraaDl2vVVDtbBoPSwq4OFSeRZyZKiBqv75s
         TrzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.218.66 as permitted sender) smtp.mailfrom=k.kozlowski.k@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com. [209.85.218.66])
        by gmr-mx.google.com with ESMTPS id k63si96555lfd.0.2020.10.29.12.30.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Oct 2020 12:30:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.218.66 as permitted sender) client-ip=209.85.218.66;
Received: by mail-ej1-f66.google.com with SMTP id dk16so4799260ejb.12
        for <clang-built-linux@googlegroups.com>; Thu, 29 Oct 2020 12:30:55 -0700 (PDT)
X-Received: by 2002:a17:906:f185:: with SMTP id gs5mr5533989ejb.107.1603999855456;
        Thu, 29 Oct 2020 12:30:55 -0700 (PDT)
Received: from kozik-lap (adsl-84-226-167-205.adslplus.ch. [84.226.167.205])
        by smtp.googlemail.com with ESMTPSA id b13sm2049393edk.22.2020.10.29.12.30.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2020 12:30:54 -0700 (PDT)
Date: Thu, 29 Oct 2020 20:30:52 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	LKML <linux-kernel@vger.kernel.org>,
	kernel test robot <lkp@intel.com>
Subject: Re: ld.lld: error: undefined symbol: amba_driver_register
Message-ID: <20201029193052.GA389163@kozik-lap>
References: <202010291249.MFjbb8tv-lkp@intel.com>
 <CAKwvOdk82WZnCh9G8CidN9tJ6qiMaHYdN-e+Ad5kRa6C87Vfxg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdk82WZnCh9G8CidN9tJ6qiMaHYdN-e+Ad5kRa6C87Vfxg@mail.gmail.com>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.218.66 as
 permitted sender) smtp.mailfrom=k.kozlowski.k@gmail.com;       dmarc=fail
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Oct 29, 2020 at 12:28:54PM -0700, Nick Desaulniers wrote:
> On Wed, Oct 28, 2020 at 9:57 PM kernel test robot <lkp@intel.com> wrote:
> >
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> > head:   23859ae44402f4d935b9ee548135dd1e65e2cbf4
> > commit: ea0c0ad6b6eb36726088991d97a55b99cae456d0 memory: Enable compile testing for most of the drivers
> > date:   2 months ago
> > config: arm-randconfig-r024-20201028 (attached as .config)
> 
> ^ Note, this was a randconfig, so the preprocessor guards on CONFIGs
> might be wrong.

The report looks correct. It's possible to craft ARM config without
ARM_AMBA which would cause this issue. I have a fix ready.

Best regards,
Krzysztof

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201029193052.GA389163%40kozik-lap.
